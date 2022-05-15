; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $083", ROMX[$4000], BANK[$83]

    add e                                         ; $4000: $83
    inc de                                        ; $4001: $13
    nop                                           ; $4002: $00
    dec d                                         ; $4003: $15
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    ld e, $ed                                     ; $4006: $1e $ed
    db $ed                                        ; $4008: $ed
    db $ed                                        ; $4009: $ed
    db $ed                                        ; $400a: $ed
    db $ed                                        ; $400b: $ed
    db $ed                                        ; $400c: $ed
    db $ed                                        ; $400d: $ed
    db $ed                                        ; $400e: $ed
    db $ed                                        ; $400f: $ed
    db $ed                                        ; $4010: $ed
    db $ed                                        ; $4011: $ed
    db $ed                                        ; $4012: $ed
    db $ed                                        ; $4013: $ed
    db $ed                                        ; $4014: $ed
    db $ed                                        ; $4015: $ed
    db $ed                                        ; $4016: $ed
    add b                                         ; $4017: $80
    add b                                         ; $4018: $80
    add b                                         ; $4019: $80
    add b                                         ; $401a: $80
    add b                                         ; $401b: $80
    add b                                         ; $401c: $80
    add b                                         ; $401d: $80
    add b                                         ; $401e: $80
    add b                                         ; $401f: $80
    add b                                         ; $4020: $80
    add b                                         ; $4021: $80
    add b                                         ; $4022: $80
    add b                                         ; $4023: $80
    add b                                         ; $4024: $80
    add b                                         ; $4025: $80
    add b                                         ; $4026: $80
    db $ed                                        ; $4027: $ed
    db $ed                                        ; $4028: $ed
    db $ed                                        ; $4029: $ed
    db $ed                                        ; $402a: $ed
    db $ed                                        ; $402b: $ed
    db $ed                                        ; $402c: $ed
    db $ed                                        ; $402d: $ed
    xor $ed                                       ; $402e: $ee $ed
    db $ed                                        ; $4030: $ed
    db $ed                                        ; $4031: $ed
    rst $28                                       ; $4032: $ef
    db $ed                                        ; $4033: $ed
    db $ed                                        ; $4034: $ed
    db $ed                                        ; $4035: $ed
    ldh a, [$80]                                  ; $4036: $f0 $80
    add b                                         ; $4038: $80
    add b                                         ; $4039: $80
    add b                                         ; $403a: $80
    add b                                         ; $403b: $80
    add b                                         ; $403c: $80
    add b                                         ; $403d: $80
    add b                                         ; $403e: $80
    add b                                         ; $403f: $80
    add b                                         ; $4040: $80
    add b                                         ; $4041: $80
    add b                                         ; $4042: $80
    add b                                         ; $4043: $80
    add b                                         ; $4044: $80
    add b                                         ; $4045: $80
    add b                                         ; $4046: $80
    db $ed                                        ; $4047: $ed
    db $ed                                        ; $4048: $ed
    db $ed                                        ; $4049: $ed
    db $ed                                        ; $404a: $ed
    db $ed                                        ; $404b: $ed
    db $ed                                        ; $404c: $ed
    db $ed                                        ; $404d: $ed
    xor $ed                                       ; $404e: $ee $ed
    db $ed                                        ; $4050: $ed
    db $ed                                        ; $4051: $ed
    rst $28                                       ; $4052: $ef
    db $ed                                        ; $4053: $ed
    db $ed                                        ; $4054: $ed
    db $ed                                        ; $4055: $ed
    rst $28                                       ; $4056: $ef
    add b                                         ; $4057: $80
    add b                                         ; $4058: $80
    add b                                         ; $4059: $80
    add b                                         ; $405a: $80
    add b                                         ; $405b: $80
    add b                                         ; $405c: $80
    add b                                         ; $405d: $80
    add b                                         ; $405e: $80
    add b                                         ; $405f: $80
    add b                                         ; $4060: $80
    add b                                         ; $4061: $80
    add b                                         ; $4062: $80
    add b                                         ; $4063: $80
    add b                                         ; $4064: $80
    add b                                         ; $4065: $80
    add b                                         ; $4066: $80
    db $ed                                        ; $4067: $ed
    db $ed                                        ; $4068: $ed
    db $ed                                        ; $4069: $ed
    db $ed                                        ; $406a: $ed
    pop af                                        ; $406b: $f1
    pop af                                        ; $406c: $f1
    pop af                                        ; $406d: $f1
    pop af                                        ; $406e: $f1
    db $ed                                        ; $406f: $ed
    db $ed                                        ; $4070: $ed
    db $ed                                        ; $4071: $ed
    db $ed                                        ; $4072: $ed
    db $ed                                        ; $4073: $ed
    ld a, [c]                                     ; $4074: $f2
    di                                            ; $4075: $f3
    di                                            ; $4076: $f3
    nop                                           ; $4077: $00
    nop                                           ; $4078: $00
    nop                                           ; $4079: $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    ld [bc], a                                    ; $407f: $02
    ld [bc], a                                    ; $4080: $02
    ld [bc], a                                    ; $4081: $02
    ld [bc], a                                    ; $4082: $02
    ld [bc], a                                    ; $4083: $02
    ld [bc], a                                    ; $4084: $02
    ld [bc], a                                    ; $4085: $02
    ld [bc], a                                    ; $4086: $02
    db $ed                                        ; $4087: $ed
    db $ed                                        ; $4088: $ed
    db $ed                                        ; $4089: $ed
    db $ed                                        ; $408a: $ed
    pop af                                        ; $408b: $f1
    pop af                                        ; $408c: $f1
    pop af                                        ; $408d: $f1
    pop af                                        ; $408e: $f1
    db $ed                                        ; $408f: $ed
    db $ed                                        ; $4090: $ed
    db $ed                                        ; $4091: $ed
    db $ed                                        ; $4092: $ed
    di                                            ; $4093: $f3
    di                                            ; $4094: $f3
    di                                            ; $4095: $f3
    di                                            ; $4096: $f3
    nop                                           ; $4097: $00
    nop                                           ; $4098: $00
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    nop                                           ; $409c: $00
    nop                                           ; $409d: $00
    nop                                           ; $409e: $00
    ld [bc], a                                    ; $409f: $02
    ld [bc], a                                    ; $40a0: $02
    ld [bc], a                                    ; $40a1: $02
    ld [bc], a                                    ; $40a2: $02
    ld [bc], a                                    ; $40a3: $02
    ld [bc], a                                    ; $40a4: $02
    ld [bc], a                                    ; $40a5: $02
    ld [bc], a                                    ; $40a6: $02
    db $ed                                        ; $40a7: $ed
    db $ed                                        ; $40a8: $ed
    db $ed                                        ; $40a9: $ed
    db $ed                                        ; $40aa: $ed
    db $ed                                        ; $40ab: $ed
    db $ed                                        ; $40ac: $ed
    db $ed                                        ; $40ad: $ed
    db $ed                                        ; $40ae: $ed
    db $ed                                        ; $40af: $ed
    db $ed                                        ; $40b0: $ed
    db $ed                                        ; $40b1: $ed
    db $ed                                        ; $40b2: $ed
    db $ed                                        ; $40b3: $ed
    xor $f1                                       ; $40b4: $ee $f1
    pop af                                        ; $40b6: $f1
    add b                                         ; $40b7: $80
    add b                                         ; $40b8: $80
    add b                                         ; $40b9: $80
    add b                                         ; $40ba: $80
    add b                                         ; $40bb: $80
    add b                                         ; $40bc: $80
    add b                                         ; $40bd: $80
    add b                                         ; $40be: $80
    add b                                         ; $40bf: $80
    add b                                         ; $40c0: $80
    add b                                         ; $40c1: $80
    add b                                         ; $40c2: $80
    add b                                         ; $40c3: $80
    add b                                         ; $40c4: $80
    add b                                         ; $40c5: $80
    add b                                         ; $40c6: $80
    db $ed                                        ; $40c7: $ed
    db $ed                                        ; $40c8: $ed
    db $ed                                        ; $40c9: $ed
    rst $28                                       ; $40ca: $ef
    db $ed                                        ; $40cb: $ed
    db $ed                                        ; $40cc: $ed
    db $ed                                        ; $40cd: $ed
    rst $28                                       ; $40ce: $ef
    db $ed                                        ; $40cf: $ed
    db $ed                                        ; $40d0: $ed
    db $ed                                        ; $40d1: $ed
    rst $28                                       ; $40d2: $ef
    pop af                                        ; $40d3: $f1
    pop af                                        ; $40d4: $f1
    pop af                                        ; $40d5: $f1
    db $f4                                        ; $40d6: $f4
    add b                                         ; $40d7: $80
    add b                                         ; $40d8: $80
    add b                                         ; $40d9: $80
    add b                                         ; $40da: $80
    add b                                         ; $40db: $80
    add b                                         ; $40dc: $80
    add b                                         ; $40dd: $80
    add b                                         ; $40de: $80
    add b                                         ; $40df: $80
    add b                                         ; $40e0: $80
    add b                                         ; $40e1: $80
    add b                                         ; $40e2: $80
    add b                                         ; $40e3: $80
    add b                                         ; $40e4: $80
    add b                                         ; $40e5: $80
    add b                                         ; $40e6: $80
    db $ed                                        ; $40e7: $ed
    push af                                       ; $40e8: $f5
    or $f7                                        ; $40e9: $f6 $f7
    db $ed                                        ; $40eb: $ed
    push af                                       ; $40ec: $f5
    ld hl, sp-$07                                 ; $40ed: $f8 $f9
    ld a, [$fcfb]                                 ; $40ef: $fa $fb $fc
    db $fd                                        ; $40f2: $fd
    cp $ff                                        ; $40f3: $fe $ff
    nop                                           ; $40f5: $00
    ld bc, $0202                                  ; $40f6: $01 $02 $02
    ld b, $06                                     ; $40f9: $06 $06
    ld [bc], a                                    ; $40fb: $02
    ld [bc], a                                    ; $40fc: $02
    ld b, $06                                     ; $40fd: $06 $06
    ld [bc], a                                    ; $40ff: $02
    ld [bc], a                                    ; $4100: $02
    ld b, $06                                     ; $4101: $06 $06
    ld [bc], a                                    ; $4103: $02
    ld [bc], a                                    ; $4104: $02
    ld b, $06                                     ; $4105: $06 $06
    ld [bc], a                                    ; $4107: $02
    inc bc                                        ; $4108: $03
    inc b                                         ; $4109: $04
    dec b                                         ; $410a: $05
    ld b, $07                                     ; $410b: $06 $07
    ld [$0a09], sp                                ; $410d: $08 $09 $0a
    dec bc                                        ; $4110: $0b
    inc c                                         ; $4111: $0c
    dec c                                         ; $4112: $0d
    ld c, $0f                                     ; $4113: $0e $0f
    db $10                                        ; $4115: $10
    ld de, $0606                                  ; $4116: $11 $06 $06
    ld b, $06                                     ; $4119: $06 $06
    ld b, $06                                     ; $411b: $06 $06
    ld b, $06                                     ; $411d: $06 $06
    ld b, $06                                     ; $411f: $06 $06
    ld b, $06                                     ; $4121: $06 $06
    ld b, $06                                     ; $4123: $06 $06
    ld b, $06                                     ; $4125: $06 $06
    db $ed                                        ; $4127: $ed
    rst $28                                       ; $4128: $ef
    ld [de], a                                    ; $4129: $12
    inc de                                        ; $412a: $13
    db $ed                                        ; $412b: $ed
    rst $28                                       ; $412c: $ef
    inc d                                         ; $412d: $14
    dec d                                         ; $412e: $15
    db $ed                                        ; $412f: $ed
    rst $28                                       ; $4130: $ef
    ld d, $17                                     ; $4131: $16 $17
    db $ed                                        ; $4133: $ed
    rst $28                                       ; $4134: $ef
    jr jr_083_4150                                ; $4135: $18 $19

    add b                                         ; $4137: $80
    add b                                         ; $4138: $80
    inc b                                         ; $4139: $04
    inc b                                         ; $413a: $04
    add b                                         ; $413b: $80
    add b                                         ; $413c: $80
    inc b                                         ; $413d: $04
    inc b                                         ; $413e: $04
    add b                                         ; $413f: $80
    add b                                         ; $4140: $80
    inc b                                         ; $4141: $04
    inc b                                         ; $4142: $04
    add b                                         ; $4143: $80
    add b                                         ; $4144: $80
    inc b                                         ; $4145: $04
    inc b                                         ; $4146: $04
    ld a, [de]                                    ; $4147: $1a
    dec de                                        ; $4148: $1b
    inc e                                         ; $4149: $1c
    dec e                                         ; $414a: $1d
    ld e, $1f                                     ; $414b: $1e $1f
    jr nz, jr_083_4170                            ; $414d: $20 $21

    ld [hl+], a                                   ; $414f: $22

jr_083_4150:
    inc hl                                        ; $4150: $23
    inc h                                         ; $4151: $24
    dec h                                         ; $4152: $25
    ld h, $27                                     ; $4153: $26 $27
    jr z, jr_083_4180                             ; $4155: $28 $29

    inc b                                         ; $4157: $04
    inc b                                         ; $4158: $04
    inc b                                         ; $4159: $04
    inc b                                         ; $415a: $04
    inc b                                         ; $415b: $04
    inc b                                         ; $415c: $04
    inc b                                         ; $415d: $04
    inc b                                         ; $415e: $04
    inc b                                         ; $415f: $04
    inc b                                         ; $4160: $04
    inc b                                         ; $4161: $04
    inc b                                         ; $4162: $04
    inc b                                         ; $4163: $04
    inc b                                         ; $4164: $04
    inc b                                         ; $4165: $04
    inc b                                         ; $4166: $04
    ld a, [hl+]                                   ; $4167: $2a
    dec hl                                        ; $4168: $2b
    inc l                                         ; $4169: $2c
    dec l                                         ; $416a: $2d
    ld l, $2f                                     ; $416b: $2e $2f
    jr nc, jr_083_41a0                            ; $416d: $30 $31

    ld [hl-], a                                   ; $416f: $32

jr_083_4170:
    inc sp                                        ; $4170: $33
    inc [hl]                                      ; $4171: $34
    dec [hl]                                      ; $4172: $35
    ld [hl], $ed                                  ; $4173: $36 $ed
    scf                                           ; $4175: $37
    jr c, @+$04                                   ; $4176: $38 $02

    ld [bc], a                                    ; $4178: $02
    ld b, $06                                     ; $4179: $06 $06
    ld [bc], a                                    ; $417b: $02
    ld [bc], a                                    ; $417c: $02
    inc bc                                        ; $417d: $03
    inc bc                                        ; $417e: $03
    ld [bc], a                                    ; $417f: $02

jr_083_4180:
    ld [bc], a                                    ; $4180: $02
    inc bc                                        ; $4181: $03
    ld [bc], a                                    ; $4182: $02
    ld [bc], a                                    ; $4183: $02
    ld [bc], a                                    ; $4184: $02
    inc bc                                        ; $4185: $03
    ld [bc], a                                    ; $4186: $02
    add hl, sp                                    ; $4187: $39
    ld a, [hl-]                                   ; $4188: $3a
    dec sp                                        ; $4189: $3b
    inc a                                         ; $418a: $3c
    dec a                                         ; $418b: $3d
    ld a, $3f                                     ; $418c: $3e $3f
    ld b, b                                       ; $418e: $40
    ld b, c                                       ; $418f: $41
    ld b, d                                       ; $4190: $42
    ld b, e                                       ; $4191: $43
    ld b, h                                       ; $4192: $44
    ld b, l                                       ; $4193: $45
    ld b, [hl]                                    ; $4194: $46
    ld b, a                                       ; $4195: $47
    ld c, b                                       ; $4196: $48
    ld b, $06                                     ; $4197: $06 $06
    ld b, $06                                     ; $4199: $06 $06
    inc bc                                        ; $419b: $03
    inc bc                                        ; $419c: $03
    inc bc                                        ; $419d: $03
    inc bc                                        ; $419e: $03
    ld [bc], a                                    ; $419f: $02

jr_083_41a0:
    ld [bc], a                                    ; $41a0: $02
    dec b                                         ; $41a1: $05
    ld [bc], a                                    ; $41a2: $02
    ld [bc], a                                    ; $41a3: $02
    ld [bc], a                                    ; $41a4: $02
    ld [bc], a                                    ; $41a5: $02
    dec b                                         ; $41a6: $05
    db $ed                                        ; $41a7: $ed
    rst $28                                       ; $41a8: $ef
    ld c, c                                       ; $41a9: $49
    ld c, d                                       ; $41aa: $4a
    pop af                                        ; $41ab: $f1
    db $f4                                        ; $41ac: $f4
    ld c, e                                       ; $41ad: $4b
    ld c, h                                       ; $41ae: $4c
    inc e                                         ; $41af: $1c
    dec e                                         ; $41b0: $1d
    ld c, l                                       ; $41b1: $4d
    ld c, [hl]                                    ; $41b2: $4e
    jr nz, jr_083_41d6                            ; $41b3: $20 $21

    jr nc, jr_083_41e8                            ; $41b5: $30 $31

    add b                                         ; $41b7: $80
    add b                                         ; $41b8: $80
    inc b                                         ; $41b9: $04
    inc b                                         ; $41ba: $04
    add b                                         ; $41bb: $80
    add b                                         ; $41bc: $80
    inc bc                                        ; $41bd: $03
    inc bc                                        ; $41be: $03
    inc b                                         ; $41bf: $04
    inc b                                         ; $41c0: $04
    inc bc                                        ; $41c1: $03
    ld [bc], a                                    ; $41c2: $02
    inc b                                         ; $41c3: $04
    inc b                                         ; $41c4: $04
    inc bc                                        ; $41c5: $03
    ld [bc], a                                    ; $41c6: $02
    ld c, a                                       ; $41c7: $4f
    ld d, b                                       ; $41c8: $50
    ld d, c                                       ; $41c9: $51
    ld d, d                                       ; $41ca: $52
    ld d, e                                       ; $41cb: $53
    ld d, h                                       ; $41cc: $54
    ld d, l                                       ; $41cd: $55
    ld d, [hl]                                    ; $41ce: $56
    ld d, a                                       ; $41cf: $57
    ld e, b                                       ; $41d0: $58
    ld e, c                                       ; $41d1: $59
    ld e, d                                       ; $41d2: $5a
    dec a                                         ; $41d3: $3d
    ld a, $3f                                     ; $41d4: $3e $3f

jr_083_41d6:
    ld b, b                                       ; $41d6: $40
    inc b                                         ; $41d7: $04
    inc b                                         ; $41d8: $04
    inc b                                         ; $41d9: $04
    inc b                                         ; $41da: $04
    inc bc                                        ; $41db: $03
    inc bc                                        ; $41dc: $03
    inc bc                                        ; $41dd: $03
    inc bc                                        ; $41de: $03
    ld [bc], a                                    ; $41df: $02
    ld [bc], a                                    ; $41e0: $02
    ld [bc], a                                    ; $41e1: $02
    ld [bc], a                                    ; $41e2: $02
    dec b                                         ; $41e3: $05
    dec b                                         ; $41e4: $05
    ld [bc], a                                    ; $41e5: $02
    ld [bc], a                                    ; $41e6: $02
    ld e, e                                       ; $41e7: $5b

jr_083_41e8:
    ld e, h                                       ; $41e8: $5c
    ld e, l                                       ; $41e9: $5d
    ld e, [hl]                                    ; $41ea: $5e
    ld e, a                                       ; $41eb: $5f
    ld h, b                                       ; $41ec: $60
    ld c, e                                       ; $41ed: $4b
    ld c, h                                       ; $41ee: $4c
    ld h, c                                       ; $41ef: $61
    ld h, d                                       ; $41f0: $62
    ld c, l                                       ; $41f1: $4d
    ld c, [hl]                                    ; $41f2: $4e
    ld h, e                                       ; $41f3: $63
    ld h, h                                       ; $41f4: $64
    jr nc, jr_083_4228                            ; $41f5: $30 $31

    inc bc                                        ; $41f7: $03
    inc bc                                        ; $41f8: $03
    inc bc                                        ; $41f9: $03
    ld [bc], a                                    ; $41fa: $02
    inc bc                                        ; $41fb: $03
    ld [bc], a                                    ; $41fc: $02
    ld [bc], a                                    ; $41fd: $02
    ld [bc], a                                    ; $41fe: $02
    ld [bc], a                                    ; $41ff: $02
    ld [bc], a                                    ; $4200: $02
    dec b                                         ; $4201: $05
    dec b                                         ; $4202: $05
    ld [bc], a                                    ; $4203: $02
    dec b                                         ; $4204: $05
    dec b                                         ; $4205: $05
    ld [bc], a                                    ; $4206: $02
    ld h, l                                       ; $4207: $65
    ld h, [hl]                                    ; $4208: $66
    ld h, a                                       ; $4209: $67
    ld l, b                                       ; $420a: $68
    ld d, e                                       ; $420b: $53
    ld d, h                                       ; $420c: $54
    ld d, l                                       ; $420d: $55
    ld d, [hl]                                    ; $420e: $56
    ld d, a                                       ; $420f: $57
    ld e, b                                       ; $4210: $58
    ld e, c                                       ; $4211: $59
    ld e, d                                       ; $4212: $5a
    dec a                                         ; $4213: $3d
    ld a, $3f                                     ; $4214: $3e $3f
    ld b, b                                       ; $4216: $40
    ld [bc], a                                    ; $4217: $02
    dec b                                         ; $4218: $05
    dec b                                         ; $4219: $05
    dec b                                         ; $421a: $05
    ld [bc], a                                    ; $421b: $02
    dec b                                         ; $421c: $05
    dec b                                         ; $421d: $05
    ld [bc], a                                    ; $421e: $02
    ld [bc], a                                    ; $421f: $02
    ld [bc], a                                    ; $4220: $02
    ld [bc], a                                    ; $4221: $02
    ld [bc], a                                    ; $4222: $02
    ld [bc], a                                    ; $4223: $02
    dec b                                         ; $4224: $05
    dec b                                         ; $4225: $05
    ld [bc], a                                    ; $4226: $02
    ld l, c                                       ; $4227: $69

jr_083_4228:
    ld l, d                                       ; $4228: $6a
    or $f7                                        ; $4229: $f6 $f7
    ld l, e                                       ; $422b: $6b
    ld l, h                                       ; $422c: $6c
    ld hl, sp-$07                                 ; $422d: $f8 $f9
    ld l, l                                       ; $422f: $6d
    ld l, [hl]                                    ; $4230: $6e
    db $fc                                        ; $4231: $fc
    db $fd                                        ; $4232: $fd
    ld l, a                                       ; $4233: $6f
    ld [hl], b                                    ; $4234: $70
    nop                                           ; $4235: $00
    ld bc, $0606                                  ; $4236: $01 $06 $06
    ld b, $06                                     ; $4239: $06 $06
    ld b, $06                                     ; $423b: $06 $06
    ld b, $06                                     ; $423d: $06 $06
    ld b, $06                                     ; $423f: $06 $06
    ld b, $06                                     ; $4241: $06 $06
    ld b, $06                                     ; $4243: $06 $06
    ld b, $06                                     ; $4245: $06 $06
    ld [hl], c                                    ; $4247: $71
    ld [hl], d                                    ; $4248: $72
    inc l                                         ; $4249: $2c
    dec l                                         ; $424a: $2d
    ld h, e                                       ; $424b: $63
    ld h, h                                       ; $424c: $64
    jr nc, jr_083_4280                            ; $424d: $30 $31

    ld [hl], e                                    ; $424f: $73
    ld [hl], h                                    ; $4250: $74
    inc [hl]                                      ; $4251: $34
    dec [hl]                                      ; $4252: $35
    ld [hl], l                                    ; $4253: $75
    halt                                          ; $4254: $76
    scf                                           ; $4255: $37
    jr c, jr_083_425e                             ; $4256: $38 $06

    ld b, $06                                     ; $4258: $06 $06
    ld b, $03                                     ; $425a: $06 $03
    inc bc                                        ; $425c: $03
    inc bc                                        ; $425d: $03

jr_083_425e:
    inc bc                                        ; $425e: $03
    ld [bc], a                                    ; $425f: $02
    ld [bc], a                                    ; $4260: $02
    ld [bc], a                                    ; $4261: $02
    dec b                                         ; $4262: $05
    ld [bc], a                                    ; $4263: $02
    dec b                                         ; $4264: $05
    ld [bc], a                                    ; $4265: $02
    ld [bc], a                                    ; $4266: $02
    add hl, sp                                    ; $4267: $39
    ld a, [hl-]                                   ; $4268: $3a
    dec sp                                        ; $4269: $3b
    inc a                                         ; $426a: $3c
    dec a                                         ; $426b: $3d
    ld a, $3f                                     ; $426c: $3e $3f
    ld b, b                                       ; $426e: $40
    ld b, c                                       ; $426f: $41
    ld b, d                                       ; $4270: $42
    ld b, e                                       ; $4271: $43
    ld b, h                                       ; $4272: $44
    ld b, l                                       ; $4273: $45
    ld b, [hl]                                    ; $4274: $46
    ld b, a                                       ; $4275: $47
    ld c, b                                       ; $4276: $48
    ld b, $06                                     ; $4277: $06 $06
    ld b, $06                                     ; $4279: $06 $06
    inc bc                                        ; $427b: $03
    inc bc                                        ; $427c: $03
    inc bc                                        ; $427d: $03
    inc bc                                        ; $427e: $03
    dec b                                         ; $427f: $05

jr_083_4280:
    ld [bc], a                                    ; $4280: $02
    ld [bc], a                                    ; $4281: $02
    dec b                                         ; $4282: $05
    ld [bc], a                                    ; $4283: $02
    ld [bc], a                                    ; $4284: $02
    ld [bc], a                                    ; $4285: $02
    ld [bc], a                                    ; $4286: $02
    ld [hl], c                                    ; $4287: $71
    ld [hl], d                                    ; $4288: $72
    inc l                                         ; $4289: $2c
    dec l                                         ; $428a: $2d
    ld h, e                                       ; $428b: $63
    ld h, h                                       ; $428c: $64
    jr nc, jr_083_42c0                            ; $428d: $30 $31

    ld [hl], e                                    ; $428f: $73
    ld [hl], h                                    ; $4290: $74
    inc [hl]                                      ; $4291: $34
    dec [hl]                                      ; $4292: $35
    ld [hl], l                                    ; $4293: $75
    halt                                          ; $4294: $76
    scf                                           ; $4295: $37
    jr c, jr_083_429e                             ; $4296: $38 $06

    ld b, $06                                     ; $4298: $06 $06
    ld b, $03                                     ; $429a: $06 $03
    inc bc                                        ; $429c: $03
    inc bc                                        ; $429d: $03

jr_083_429e:
    inc bc                                        ; $429e: $03
    dec b                                         ; $429f: $05
    ld [bc], a                                    ; $42a0: $02
    ld [bc], a                                    ; $42a1: $02
    ld [bc], a                                    ; $42a2: $02
    ld [bc], a                                    ; $42a3: $02
    ld [bc], a                                    ; $42a4: $02
    ld [bc], a                                    ; $42a5: $02
    dec b                                         ; $42a6: $05
    add hl, sp                                    ; $42a7: $39
    ld a, [hl-]                                   ; $42a8: $3a
    dec sp                                        ; $42a9: $3b
    inc a                                         ; $42aa: $3c
    dec a                                         ; $42ab: $3d
    ld a, $3f                                     ; $42ac: $3e $3f
    ld b, b                                       ; $42ae: $40
    ld b, c                                       ; $42af: $41
    ld b, d                                       ; $42b0: $42
    ld b, e                                       ; $42b1: $43
    ld b, h                                       ; $42b2: $44
    ld b, l                                       ; $42b3: $45
    ld b, [hl]                                    ; $42b4: $46
    ld b, a                                       ; $42b5: $47
    ld c, b                                       ; $42b6: $48
    ld b, $06                                     ; $42b7: $06 $06
    ld b, $06                                     ; $42b9: $06 $06
    inc bc                                        ; $42bb: $03
    inc bc                                        ; $42bc: $03
    inc bc                                        ; $42bd: $03
    inc bc                                        ; $42be: $03
    dec b                                         ; $42bf: $05

jr_083_42c0:
    ld [bc], a                                    ; $42c0: $02
    ld [bc], a                                    ; $42c1: $02
    inc bc                                        ; $42c2: $03
    ld [bc], a                                    ; $42c3: $02
    dec b                                         ; $42c4: $05
    ld [bc], a                                    ; $42c5: $02
    inc bc                                        ; $42c6: $03
    ld e, e                                       ; $42c7: $5b
    ld e, h                                       ; $42c8: $5c
    ld e, l                                       ; $42c9: $5d
    ld e, [hl]                                    ; $42ca: $5e
    ld e, a                                       ; $42cb: $5f
    ld h, b                                       ; $42cc: $60
    ld c, e                                       ; $42cd: $4b
    ld c, h                                       ; $42ce: $4c
    ld h, c                                       ; $42cf: $61
    ld h, d                                       ; $42d0: $62
    ld c, l                                       ; $42d1: $4d
    ld c, [hl]                                    ; $42d2: $4e
    ld h, e                                       ; $42d3: $63
    ld [hl], a                                    ; $42d4: $77
    ld a, b                                       ; $42d5: $78
    ld a, c                                       ; $42d6: $79
    ld [bc], a                                    ; $42d7: $02
    ld [bc], a                                    ; $42d8: $02
    dec b                                         ; $42d9: $05
    ld [bc], a                                    ; $42da: $02
    ld [bc], a                                    ; $42db: $02
    ld [bc], a                                    ; $42dc: $02
    ld [bc], a                                    ; $42dd: $02
    ld [bc], a                                    ; $42de: $02
    ld [bc], a                                    ; $42df: $02
    dec b                                         ; $42e0: $05
    ld [bc], a                                    ; $42e1: $02
    dec b                                         ; $42e2: $05
    ld [bc], a                                    ; $42e3: $02
    rlca                                          ; $42e4: $07
    rlca                                          ; $42e5: $07
    rlca                                          ; $42e6: $07
    ld h, l                                       ; $42e7: $65
    ld h, [hl]                                    ; $42e8: $66
    ld h, a                                       ; $42e9: $67
    ld l, b                                       ; $42ea: $68
    ld d, e                                       ; $42eb: $53
    ld d, h                                       ; $42ec: $54
    ld d, l                                       ; $42ed: $55
    ld d, [hl]                                    ; $42ee: $56
    ld d, a                                       ; $42ef: $57
    ld e, b                                       ; $42f0: $58
    ld e, c                                       ; $42f1: $59
    ld e, d                                       ; $42f2: $5a
    ld a, d                                       ; $42f3: $7a
    ld a, c                                       ; $42f4: $79
    ld a, b                                       ; $42f5: $78
    ld [hl], a                                    ; $42f6: $77
    ld [bc], a                                    ; $42f7: $02
    ld [bc], a                                    ; $42f8: $02
    ld [bc], a                                    ; $42f9: $02
    dec b                                         ; $42fa: $05
    dec b                                         ; $42fb: $05
    dec b                                         ; $42fc: $05
    dec b                                         ; $42fd: $05
    ld [bc], a                                    ; $42fe: $02
    ld [bc], a                                    ; $42ff: $02
    ld [bc], a                                    ; $4300: $02
    ld [bc], a                                    ; $4301: $02
    ld [bc], a                                    ; $4302: $02
    rlca                                          ; $4303: $07
    daa                                           ; $4304: $27
    daa                                           ; $4305: $27
    daa                                           ; $4306: $27
    ld e, e                                       ; $4307: $5b
    ld e, h                                       ; $4308: $5c
    ld e, l                                       ; $4309: $5d
    ld e, [hl]                                    ; $430a: $5e
    ld e, a                                       ; $430b: $5f
    ld h, b                                       ; $430c: $60
    ld c, e                                       ; $430d: $4b
    ld c, h                                       ; $430e: $4c
    ld h, c                                       ; $430f: $61
    ld h, d                                       ; $4310: $62
    ld c, l                                       ; $4311: $4d
    ld c, [hl]                                    ; $4312: $4e
    ld h, e                                       ; $4313: $63
    ld h, h                                       ; $4314: $64
    jr nc, jr_083_4348                            ; $4315: $30 $31

    dec b                                         ; $4317: $05
    dec b                                         ; $4318: $05
    dec b                                         ; $4319: $05
    ld [bc], a                                    ; $431a: $02
    ld [bc], a                                    ; $431b: $02
    ld [bc], a                                    ; $431c: $02
    dec b                                         ; $431d: $05
    ld [bc], a                                    ; $431e: $02
    dec b                                         ; $431f: $05
    ld [bc], a                                    ; $4320: $02
    ld [bc], a                                    ; $4321: $02
    dec b                                         ; $4322: $05
    ld [bc], a                                    ; $4323: $02
    ld [bc], a                                    ; $4324: $02
    ld [bc], a                                    ; $4325: $02
    dec b                                         ; $4326: $05
    ld h, l                                       ; $4327: $65
    ld h, [hl]                                    ; $4328: $66
    ld h, a                                       ; $4329: $67
    ld l, b                                       ; $432a: $68
    ld d, e                                       ; $432b: $53
    ld d, h                                       ; $432c: $54
    ld d, l                                       ; $432d: $55
    ld d, [hl]                                    ; $432e: $56
    ld d, a                                       ; $432f: $57
    ld e, b                                       ; $4330: $58
    ld e, c                                       ; $4331: $59
    ld e, d                                       ; $4332: $5a
    dec a                                         ; $4333: $3d
    ld a, $3f                                     ; $4334: $3e $3f
    ld b, b                                       ; $4336: $40
    ld [bc], a                                    ; $4337: $02
    dec b                                         ; $4338: $05
    ld [bc], a                                    ; $4339: $02
    inc bc                                        ; $433a: $03
    ld [bc], a                                    ; $433b: $02
    ld [bc], a                                    ; $433c: $02
    ld [bc], a                                    ; $433d: $02
    dec b                                         ; $433e: $05
    ld [bc], a                                    ; $433f: $02
    ld [bc], a                                    ; $4340: $02
    ld [bc], a                                    ; $4341: $02

Call_083_4342:
    ld [bc], a                                    ; $4342: $02
    dec b                                         ; $4343: $05
    dec b                                         ; $4344: $05
    ld [bc], a                                    ; $4345: $02
    ld [bc], a                                    ; $4346: $02
    db $ed                                        ; $4347: $ed

jr_083_4348:
    db $ed                                        ; $4348: $ed
    db $ed                                        ; $4349: $ed
    db $ed                                        ; $434a: $ed
    pop af                                        ; $434b: $f1
    pop af                                        ; $434c: $f1
    ld a, e                                       ; $434d: $7b
    db $ed                                        ; $434e: $ed
    db $ed                                        ; $434f: $ed
    db $ed                                        ; $4350: $ed
    rst $28                                       ; $4351: $ef
    db $ed                                        ; $4352: $ed
    ld a, [c]                                     ; $4353: $f2
    db $ed                                        ; $4354: $ed
    rst $28                                       ; $4355: $ef
    db $ed                                        ; $4356: $ed
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    add b                                         ; $4359: $80
    add b                                         ; $435a: $80
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    add b                                         ; $435d: $80
    add b                                         ; $435e: $80
    ld [bc], a                                    ; $435f: $02
    ld [bc], a                                    ; $4360: $02
    add b                                         ; $4361: $80
    add b                                         ; $4362: $80
    ld [hl+], a                                   ; $4363: $22
    ld [bc], a                                    ; $4364: $02
    add b                                         ; $4365: $80
    add b                                         ; $4366: $80
    push af                                       ; $4367: $f5
    db $ed                                        ; $4368: $ed
    rst $28                                       ; $4369: $ef
    db $ed                                        ; $436a: $ed
    push af                                       ; $436b: $f5
    db $ed                                        ; $436c: $ed
    rst $28                                       ; $436d: $ef
    db $ed                                        ; $436e: $ed
    ei                                            ; $436f: $fb
    ld a, [$edef]                                 ; $4370: $fa $ef $ed
    cp $ff                                        ; $4373: $fe $ff
    ld a, h                                       ; $4375: $7c
    pop af                                        ; $4376: $f1
    ld [hl+], a                                   ; $4377: $22
    ld [bc], a                                    ; $4378: $02
    add b                                         ; $4379: $80
    add b                                         ; $437a: $80
    ld [hl+], a                                   ; $437b: $22
    ld [bc], a                                    ; $437c: $02
    add b                                         ; $437d: $80
    add b                                         ; $437e: $80
    ld [hl+], a                                   ; $437f: $22
    ld [hl+], a                                   ; $4380: $22
    add b                                         ; $4381: $80
    add b                                         ; $4382: $80
    ld [bc], a                                    ; $4383: $02
    ld [bc], a                                    ; $4384: $02
    add b                                         ; $4385: $80
    add b                                         ; $4386: $80
    db $ed                                        ; $4387: $ed
    db $ed                                        ; $4388: $ed
    db $ed                                        ; $4389: $ed
    db $ed                                        ; $438a: $ed
    db $ed                                        ; $438b: $ed
    db $ed                                        ; $438c: $ed
    db $ed                                        ; $438d: $ed
    db $ed                                        ; $438e: $ed
    db $ed                                        ; $438f: $ed
    db $ed                                        ; $4390: $ed
    db $ed                                        ; $4391: $ed
    db $ed                                        ; $4392: $ed
    pop af                                        ; $4393: $f1
    pop af                                        ; $4394: $f1
    pop af                                        ; $4395: $f1
    pop af                                        ; $4396: $f1
    add b                                         ; $4397: $80
    add b                                         ; $4398: $80
    add b                                         ; $4399: $80
    add b                                         ; $439a: $80
    add b                                         ; $439b: $80
    add b                                         ; $439c: $80
    add b                                         ; $439d: $80
    add b                                         ; $439e: $80
    add b                                         ; $439f: $80
    add b                                         ; $43a0: $80
    add b                                         ; $43a1: $80
    add b                                         ; $43a2: $80
    add b                                         ; $43a3: $80
    add b                                         ; $43a4: $80
    add b                                         ; $43a5: $80
    add b                                         ; $43a6: $80
    db $ed                                        ; $43a7: $ed
    db $ed                                        ; $43a8: $ed
    db $ed                                        ; $43a9: $ed
    db $ed                                        ; $43aa: $ed
    db $ed                                        ; $43ab: $ed
    db $ed                                        ; $43ac: $ed
    db $ed                                        ; $43ad: $ed
    db $ed                                        ; $43ae: $ed
    db $ed                                        ; $43af: $ed
    db $ed                                        ; $43b0: $ed
    db $ed                                        ; $43b1: $ed
    db $ed                                        ; $43b2: $ed
    pop af                                        ; $43b3: $f1
    pop af                                        ; $43b4: $f1
    ld a, e                                       ; $43b5: $7b
    db $ed                                        ; $43b6: $ed
    add b                                         ; $43b7: $80
    add b                                         ; $43b8: $80
    add b                                         ; $43b9: $80
    add b                                         ; $43ba: $80
    add b                                         ; $43bb: $80
    add b                                         ; $43bc: $80
    add b                                         ; $43bd: $80
    add b                                         ; $43be: $80
    add b                                         ; $43bf: $80
    add b                                         ; $43c0: $80
    add b                                         ; $43c1: $80
    add b                                         ; $43c2: $80
    add b                                         ; $43c3: $80
    add b                                         ; $43c4: $80
    add b                                         ; $43c5: $80
    add b                                         ; $43c6: $80
    ld a, [hl+]                                   ; $43c7: $2a
    dec hl                                        ; $43c8: $2b
    ld a, l                                       ; $43c9: $7d
    ld a, [hl]                                    ; $43ca: $7e
    ld l, $2f                                     ; $43cb: $2e $2f
    ld a, a                                       ; $43cd: $7f
    add b                                         ; $43ce: $80
    ld [hl-], a                                   ; $43cf: $32
    inc sp                                        ; $43d0: $33
    add c                                         ; $43d1: $81
    or $36                                        ; $43d2: $f6 $36
    db $ed                                        ; $43d4: $ed
    add d                                         ; $43d5: $82
    ld hl, sp+$02                                 ; $43d6: $f8 $02
    ld [bc], a                                    ; $43d8: $02
    inc b                                         ; $43d9: $04
    ld [bc], a                                    ; $43da: $02
    ld [bc], a                                    ; $43db: $02
    ld [bc], a                                    ; $43dc: $02
    inc b                                         ; $43dd: $04
    ld a, [bc]                                    ; $43de: $0a
    ld [bc], a                                    ; $43df: $02
    ld [bc], a                                    ; $43e0: $02
    inc c                                         ; $43e1: $0c
    ld b, $02                                     ; $43e2: $06 $02
    ld [bc], a                                    ; $43e4: $02
    inc c                                         ; $43e5: $0c
    ld b, $ed                                     ; $43e6: $06 $ed
    db $ed                                        ; $43e8: $ed
    db $ed                                        ; $43e9: $ed
    db $ed                                        ; $43ea: $ed
    di                                            ; $43eb: $f3
    di                                            ; $43ec: $f3
    di                                            ; $43ed: $f3
    di                                            ; $43ee: $f3
    rst $30                                       ; $43ef: $f7
    ld [bc], a                                    ; $43f0: $02
    inc bc                                        ; $43f1: $03
    inc b                                         ; $43f2: $04
    ld sp, hl                                     ; $43f3: $f9
    ld b, $07                                     ; $43f4: $06 $07
    ld [$0202], sp                                ; $43f6: $08 $02 $02
    ld [bc], a                                    ; $43f9: $02
    ld [bc], a                                    ; $43fa: $02
    ld [bc], a                                    ; $43fb: $02
    ld [bc], a                                    ; $43fc: $02
    ld [bc], a                                    ; $43fd: $02
    ld [bc], a                                    ; $43fe: $02
    ld b, $06                                     ; $43ff: $06 $06
    ld b, $06                                     ; $4401: $06 $06
    ld b, $06                                     ; $4403: $06 $06
    ld b, $06                                     ; $4405: $06 $06
    db $ed                                        ; $4407: $ed
    db $ed                                        ; $4408: $ed
    rst $28                                       ; $4409: $ef
    db $ed                                        ; $440a: $ed
    ld a, [c]                                     ; $440b: $f2
    db $ed                                        ; $440c: $ed
    rst $28                                       ; $440d: $ef
    db $ed                                        ; $440e: $ed
    push af                                       ; $440f: $f5
    db $ed                                        ; $4410: $ed
    rst $28                                       ; $4411: $ef
    db $ed                                        ; $4412: $ed
    push af                                       ; $4413: $f5
    db $ed                                        ; $4414: $ed
    rst $28                                       ; $4415: $ef
    db $ed                                        ; $4416: $ed
    add d                                         ; $4417: $82
    add d                                         ; $4418: $82
    add b                                         ; $4419: $80
    add b                                         ; $441a: $80
    and d                                         ; $441b: $a2
    add d                                         ; $441c: $82
    add b                                         ; $441d: $80
    add b                                         ; $441e: $80
    and d                                         ; $441f: $a2
    add d                                         ; $4420: $82
    add b                                         ; $4421: $80
    add b                                         ; $4422: $80
    and d                                         ; $4423: $a2
    add d                                         ; $4424: $82
    add b                                         ; $4425: $80
    add b                                         ; $4426: $80
    ld e, e                                       ; $4427: $5b
    ld e, h                                       ; $4428: $5c
    add e                                         ; $4429: $83
    db $fc                                        ; $442a: $fc
    ld e, a                                       ; $442b: $5f
    ld h, b                                       ; $442c: $60
    ld c, e                                       ; $442d: $4b
    nop                                           ; $442e: $00
    ld h, c                                       ; $442f: $61
    ld h, d                                       ; $4430: $62
    ld c, l                                       ; $4431: $4d
    inc l                                         ; $4432: $2c
    ld h, e                                       ; $4433: $63
    ld h, h                                       ; $4434: $64
    jr nc, jr_083_4468                            ; $4435: $30 $31

    inc bc                                        ; $4437: $03
    inc bc                                        ; $4438: $03
    inc c                                         ; $4439: $0c
    ld b, $02                                     ; $443a: $06 $02
    inc bc                                        ; $443c: $03
    inc bc                                        ; $443d: $03
    ld b, $05                                     ; $443e: $06 $05
    ld [bc], a                                    ; $4440: $02
    inc bc                                        ; $4441: $03
    ld b, $02                                     ; $4442: $06 $02
    dec b                                         ; $4444: $05
    inc bc                                        ; $4445: $03
    inc bc                                        ; $4446: $03
    db $fd                                        ; $4447: $fd
    ld a, [bc]                                    ; $4448: $0a
    dec bc                                        ; $4449: $0b
    inc c                                         ; $444a: $0c
    ld bc, $0f0e                                  ; $444b: $01 $0e $0f
    db $10                                        ; $444e: $10
    dec l                                         ; $444f: $2d
    add hl, sp                                    ; $4450: $39
    ld a, [hl-]                                   ; $4451: $3a
    dec sp                                        ; $4452: $3b
    dec a                                         ; $4453: $3d
    ld a, $3f                                     ; $4454: $3e $3f
    ld b, b                                       ; $4456: $40
    ld b, $06                                     ; $4457: $06 $06
    ld b, $06                                     ; $4459: $06 $06
    ld b, $06                                     ; $445b: $06 $06
    ld b, $06                                     ; $445d: $06 $06
    ld b, $06                                     ; $445f: $06 $06
    ld b, $06                                     ; $4461: $06 $06
    inc bc                                        ; $4463: $03
    inc bc                                        ; $4464: $03
    inc bc                                        ; $4465: $03
    inc bc                                        ; $4466: $03
    push af                                       ; $4467: $f5

jr_083_4468:
    db $ed                                        ; $4468: $ed
    rst $28                                       ; $4469: $ef
    db $ed                                        ; $446a: $ed
    push af                                       ; $446b: $f5
    db $ed                                        ; $446c: $ed
    rst $28                                       ; $446d: $ef
    db $ed                                        ; $446e: $ed
    push af                                       ; $446f: $f5
    db $ed                                        ; $4470: $ed
    rst $28                                       ; $4471: $ef
    db $ed                                        ; $4472: $ed
    push af                                       ; $4473: $f5
    db $ed                                        ; $4474: $ed
    rst $28                                       ; $4475: $ef
    db $ed                                        ; $4476: $ed
    and d                                         ; $4477: $a2
    add d                                         ; $4478: $82
    add b                                         ; $4479: $80
    add b                                         ; $447a: $80
    and d                                         ; $447b: $a2
    add d                                         ; $447c: $82
    add b                                         ; $447d: $80
    add b                                         ; $447e: $80
    and d                                         ; $447f: $a2
    add d                                         ; $4480: $82
    add b                                         ; $4481: $80
    add b                                         ; $4482: $80
    and d                                         ; $4483: $a2
    add d                                         ; $4484: $82
    add b                                         ; $4485: $80
    add b                                         ; $4486: $80
    db $ed                                        ; $4487: $ed
    db $ed                                        ; $4488: $ed
    db $ed                                        ; $4489: $ed
    ldh a, [$ed]                                  ; $448a: $f0 $ed
    db $ed                                        ; $448c: $ed
    db $ed                                        ; $448d: $ed
    ldh a, [$ed]                                  ; $448e: $f0 $ed
    db $ed                                        ; $4490: $ed
    db $ed                                        ; $4491: $ed
    ldh a, [$ed]                                  ; $4492: $f0 $ed
    db $ed                                        ; $4494: $ed
    add h                                         ; $4495: $84
    ldh a, [$80]                                  ; $4496: $f0 $80
    add b                                         ; $4498: $80
    add b                                         ; $4499: $80
    add b                                         ; $449a: $80
    add b                                         ; $449b: $80
    add b                                         ; $449c: $80
    add b                                         ; $449d: $80
    add b                                         ; $449e: $80
    add b                                         ; $449f: $80
    add b                                         ; $44a0: $80
    add b                                         ; $44a1: $80
    add b                                         ; $44a2: $80
    add b                                         ; $44a3: $80
    add b                                         ; $44a4: $80
    adc b                                         ; $44a5: $88
    add b                                         ; $44a6: $80
    db $ed                                        ; $44a7: $ed
    db $ed                                        ; $44a8: $ed
    add h                                         ; $44a9: $84
    rst $28                                       ; $44aa: $ef
    db $ed                                        ; $44ab: $ed
    db $ed                                        ; $44ac: $ed
    add h                                         ; $44ad: $84
    ld a, h                                       ; $44ae: $7c
    db $ed                                        ; $44af: $ed
    db $ed                                        ; $44b0: $ed
    db $ed                                        ; $44b1: $ed
    db $ed                                        ; $44b2: $ed
    db $ed                                        ; $44b3: $ed
    db $ed                                        ; $44b4: $ed
    db $ed                                        ; $44b5: $ed
    db $ed                                        ; $44b6: $ed
    add b                                         ; $44b7: $80
    add b                                         ; $44b8: $80
    adc b                                         ; $44b9: $88
    add b                                         ; $44ba: $80
    add b                                         ; $44bb: $80
    add b                                         ; $44bc: $80
    adc b                                         ; $44bd: $88
    add b                                         ; $44be: $80
    add b                                         ; $44bf: $80
    add b                                         ; $44c0: $80
    add b                                         ; $44c1: $80
    add b                                         ; $44c2: $80
    add b                                         ; $44c3: $80
    add b                                         ; $44c4: $80
    add b                                         ; $44c5: $80
    add b                                         ; $44c6: $80
    inc h                                         ; $44c7: $24
    dec h                                         ; $44c8: $25
    inc [hl]                                      ; $44c9: $34
    dec [hl]                                      ; $44ca: $35
    jr z, jr_083_44f6                             ; $44cb: $28 $29

    scf                                           ; $44cd: $37
    jr c, jr_083_4521                             ; $44ce: $38 $51

    ld d, d                                       ; $44d0: $52
    ld e, l                                       ; $44d1: $5d
    ld e, [hl]                                    ; $44d2: $5e
    ld e, a                                       ; $44d3: $5f
    ld h, b                                       ; $44d4: $60
    ld c, e                                       ; $44d5: $4b
    ld c, h                                       ; $44d6: $4c
    inc b                                         ; $44d7: $04
    inc b                                         ; $44d8: $04
    inc bc                                        ; $44d9: $03
    ld [bc], a                                    ; $44da: $02
    inc b                                         ; $44db: $04
    inc b                                         ; $44dc: $04
    inc bc                                        ; $44dd: $03
    dec b                                         ; $44de: $05
    inc b                                         ; $44df: $04
    inc b                                         ; $44e0: $04
    inc bc                                        ; $44e1: $03
    ld [bc], a                                    ; $44e2: $02
    inc bc                                        ; $44e3: $03
    inc bc                                        ; $44e4: $03
    inc bc                                        ; $44e5: $03
    ld [bc], a                                    ; $44e6: $02
    ld b, c                                       ; $44e7: $41
    ld b, d                                       ; $44e8: $42
    ld b, e                                       ; $44e9: $43
    ld b, h                                       ; $44ea: $44
    ld b, l                                       ; $44eb: $45
    ld b, [hl]                                    ; $44ec: $46
    ld b, a                                       ; $44ed: $47
    ld c, b                                       ; $44ee: $48
    ld h, l                                       ; $44ef: $65
    ld h, [hl]                                    ; $44f0: $66
    ld h, a                                       ; $44f1: $67
    ld l, b                                       ; $44f2: $68
    ld d, e                                       ; $44f3: $53
    ld d, h                                       ; $44f4: $54
    ld d, l                                       ; $44f5: $55

jr_083_44f6:
    ld d, [hl]                                    ; $44f6: $56
    ld [bc], a                                    ; $44f7: $02
    ld [bc], a                                    ; $44f8: $02
    ld [bc], a                                    ; $44f9: $02
    dec b                                         ; $44fa: $05
    dec b                                         ; $44fb: $05
    ld [bc], a                                    ; $44fc: $02
    dec b                                         ; $44fd: $05
    dec b                                         ; $44fe: $05
    ld [bc], a                                    ; $44ff: $02
    dec b                                         ; $4500: $05
    ld [bc], a                                    ; $4501: $02
    ld [bc], a                                    ; $4502: $02
    ld [bc], a                                    ; $4503: $02
    ld [bc], a                                    ; $4504: $02
    ld [bc], a                                    ; $4505: $02
    ld [bc], a                                    ; $4506: $02
    ld [hl], e                                    ; $4507: $73
    ld [hl], h                                    ; $4508: $74
    inc [hl]                                      ; $4509: $34
    dec [hl]                                      ; $450a: $35
    ld [hl], l                                    ; $450b: $75
    halt                                          ; $450c: $76
    scf                                           ; $450d: $37
    jr c, jr_083_456b                             ; $450e: $38 $5b

    ld e, h                                       ; $4510: $5c
    ld e, l                                       ; $4511: $5d
    ld e, [hl]                                    ; $4512: $5e
    ld e, a                                       ; $4513: $5f
    ld h, b                                       ; $4514: $60
    ld c, e                                       ; $4515: $4b
    ld c, h                                       ; $4516: $4c
    dec b                                         ; $4517: $05
    dec b                                         ; $4518: $05
    ld [bc], a                                    ; $4519: $02
    ld [bc], a                                    ; $451a: $02
    ld [bc], a                                    ; $451b: $02
    ld [bc], a                                    ; $451c: $02
    ld [bc], a                                    ; $451d: $02
    dec b                                         ; $451e: $05
    dec b                                         ; $451f: $05
    ld [bc], a                                    ; $4520: $02

jr_083_4521:
    dec b                                         ; $4521: $05
    ld [bc], a                                    ; $4522: $02
    ld [bc], a                                    ; $4523: $02
    dec b                                         ; $4524: $05
    ld [bc], a                                    ; $4525: $02
    dec b                                         ; $4526: $05
    ld b, c                                       ; $4527: $41
    ld b, d                                       ; $4528: $42
    ld b, e                                       ; $4529: $43
    ld b, h                                       ; $452a: $44
    ld b, l                                       ; $452b: $45
    ld b, [hl]                                    ; $452c: $46
    ld b, a                                       ; $452d: $47
    ld c, b                                       ; $452e: $48
    ld h, l                                       ; $452f: $65
    ld h, [hl]                                    ; $4530: $66
    ld h, a                                       ; $4531: $67
    ld l, b                                       ; $4532: $68
    ld d, e                                       ; $4533: $53
    ld d, h                                       ; $4534: $54
    ld d, l                                       ; $4535: $55
    ld d, [hl]                                    ; $4536: $56
    ld [bc], a                                    ; $4537: $02
    ld [bc], a                                    ; $4538: $02
    ld [bc], a                                    ; $4539: $02
    ld [bc], a                                    ; $453a: $02
    ld [bc], a                                    ; $453b: $02
    ld [bc], a                                    ; $453c: $02
    ld [bc], a                                    ; $453d: $02
    dec b                                         ; $453e: $05
    dec b                                         ; $453f: $05
    dec b                                         ; $4540: $05
    ld [bc], a                                    ; $4541: $02
    ld [bc], a                                    ; $4542: $02
    dec b                                         ; $4543: $05
    ld [bc], a                                    ; $4544: $02
    dec b                                         ; $4545: $05
    ld [bc], a                                    ; $4546: $02
    ld h, c                                       ; $4547: $61
    ld h, d                                       ; $4548: $62
    ld c, l                                       ; $4549: $4d
    ld c, [hl]                                    ; $454a: $4e
    pop af                                        ; $454b: $f1
    add l                                         ; $454c: $85
    jr nc, jr_083_4580                            ; $454d: $30 $31

    db $ed                                        ; $454f: $ed
    rst $28                                       ; $4550: $ef
    inc [hl]                                      ; $4551: $34
    dec [hl]                                      ; $4552: $35
    db $ed                                        ; $4553: $ed
    rst $28                                       ; $4554: $ef
    scf                                           ; $4555: $37
    jr c, jr_083_455b                             ; $4556: $38 $03

    ld [bc], a                                    ; $4558: $02
    ld [bc], a                                    ; $4559: $02
    dec b                                         ; $455a: $05

jr_083_455b:
    add b                                         ; $455b: $80
    adc b                                         ; $455c: $88
    ld [bc], a                                    ; $455d: $02
    ld [bc], a                                    ; $455e: $02
    add b                                         ; $455f: $80
    add b                                         ; $4560: $80
    ld [bc], a                                    ; $4561: $02
    ld [bc], a                                    ; $4562: $02
    add b                                         ; $4563: $80
    add b                                         ; $4564: $80
    inc bc                                        ; $4565: $03
    ld [bc], a                                    ; $4566: $02
    ld d, a                                       ; $4567: $57
    ld e, b                                       ; $4568: $58
    ld e, c                                       ; $4569: $59
    ld e, d                                       ; $456a: $5a

jr_083_456b:
    dec a                                         ; $456b: $3d
    ld a, $3f                                     ; $456c: $3e $3f
    ld b, b                                       ; $456e: $40
    ld b, c                                       ; $456f: $41
    ld b, d                                       ; $4570: $42
    ld b, e                                       ; $4571: $43
    ld b, h                                       ; $4572: $44
    ld b, l                                       ; $4573: $45
    ld b, [hl]                                    ; $4574: $46
    ld b, a                                       ; $4575: $47
    ld c, b                                       ; $4576: $48
    dec b                                         ; $4577: $05
    ld [bc], a                                    ; $4578: $02
    dec b                                         ; $4579: $05
    dec b                                         ; $457a: $05
    ld [bc], a                                    ; $457b: $02
    ld [bc], a                                    ; $457c: $02
    ld [bc], a                                    ; $457d: $02
    dec b                                         ; $457e: $05
    dec b                                         ; $457f: $05

jr_083_4580:
    dec b                                         ; $4580: $05
    ld [bc], a                                    ; $4581: $02
    dec b                                         ; $4582: $05
    ld [bc], a                                    ; $4583: $02
    ld [bc], a                                    ; $4584: $02
    ld [bc], a                                    ; $4585: $02
    ld [bc], a                                    ; $4586: $02
    ld h, c                                       ; $4587: $61
    ld h, d                                       ; $4588: $62
    ld c, l                                       ; $4589: $4d
    ld c, [hl]                                    ; $458a: $4e
    ld h, e                                       ; $458b: $63
    ld h, h                                       ; $458c: $64
    jr nc, jr_083_45c0                            ; $458d: $30 $31

    ld [hl], e                                    ; $458f: $73
    ld [hl], h                                    ; $4590: $74
    inc [hl]                                      ; $4591: $34
    dec [hl]                                      ; $4592: $35
    ld [hl], l                                    ; $4593: $75
    halt                                          ; $4594: $76
    scf                                           ; $4595: $37
    jr c, jr_083_459d                             ; $4596: $38 $05

    dec b                                         ; $4598: $05
    ld [bc], a                                    ; $4599: $02
    ld [bc], a                                    ; $459a: $02
    dec b                                         ; $459b: $05
    ld [bc], a                                    ; $459c: $02

jr_083_459d:
    ld [bc], a                                    ; $459d: $02
    dec b                                         ; $459e: $05
    ld [bc], a                                    ; $459f: $02
    ld [bc], a                                    ; $45a0: $02
    ld [bc], a                                    ; $45a1: $02
    ld [bc], a                                    ; $45a2: $02
    dec b                                         ; $45a3: $05
    dec b                                         ; $45a4: $05
    dec b                                         ; $45a5: $05
    dec b                                         ; $45a6: $05
    ld d, a                                       ; $45a7: $57
    ld e, b                                       ; $45a8: $58
    ld e, c                                       ; $45a9: $59
    ld e, d                                       ; $45aa: $5a
    dec a                                         ; $45ab: $3d
    ld a, $3f                                     ; $45ac: $3e $3f
    ld b, b                                       ; $45ae: $40
    ld b, c                                       ; $45af: $41
    ld b, d                                       ; $45b0: $42
    ld b, e                                       ; $45b1: $43
    ld b, h                                       ; $45b2: $44
    ld b, l                                       ; $45b3: $45
    ld b, [hl]                                    ; $45b4: $46
    ld b, a                                       ; $45b5: $47
    ld c, b                                       ; $45b6: $48
    ld [bc], a                                    ; $45b7: $02
    ld [bc], a                                    ; $45b8: $02
    ld [bc], a                                    ; $45b9: $02
    ld [bc], a                                    ; $45ba: $02
    ld [bc], a                                    ; $45bb: $02
    ld [bc], a                                    ; $45bc: $02
    dec b                                         ; $45bd: $05
    dec b                                         ; $45be: $05
    ld [bc], a                                    ; $45bf: $02

jr_083_45c0:
    dec b                                         ; $45c0: $05
    dec b                                         ; $45c1: $05
    ld [bc], a                                    ; $45c2: $02
    ld [bc], a                                    ; $45c3: $02
    ld [bc], a                                    ; $45c4: $02
    ld [bc], a                                    ; $45c5: $02
    dec b                                         ; $45c6: $05
    db $ed                                        ; $45c7: $ed
    rst $28                                       ; $45c8: $ef
    ld e, l                                       ; $45c9: $5d
    ld e, [hl]                                    ; $45ca: $5e
    db $ed                                        ; $45cb: $ed
    rst $28                                       ; $45cc: $ef
    ld c, e                                       ; $45cd: $4b
    ld c, h                                       ; $45ce: $4c
    db $ed                                        ; $45cf: $ed
    rst $28                                       ; $45d0: $ef
    ld c, l                                       ; $45d1: $4d
    ld c, [hl]                                    ; $45d2: $4e
    db $ed                                        ; $45d3: $ed
    rst $28                                       ; $45d4: $ef
    jr nc, jr_083_4608                            ; $45d5: $30 $31

    add b                                         ; $45d7: $80
    add b                                         ; $45d8: $80
    inc bc                                        ; $45d9: $03
    dec b                                         ; $45da: $05
    add b                                         ; $45db: $80
    add b                                         ; $45dc: $80
    inc bc                                        ; $45dd: $03
    dec b                                         ; $45de: $05
    add b                                         ; $45df: $80
    add b                                         ; $45e0: $80
    inc bc                                        ; $45e1: $03
    dec b                                         ; $45e2: $05
    add b                                         ; $45e3: $80
    add b                                         ; $45e4: $80
    inc bc                                        ; $45e5: $03
    ld [bc], a                                    ; $45e6: $02
    ld h, l                                       ; $45e7: $65
    ld h, [hl]                                    ; $45e8: $66
    ld h, a                                       ; $45e9: $67
    ld l, b                                       ; $45ea: $68
    ld d, e                                       ; $45eb: $53
    ld d, h                                       ; $45ec: $54
    ld d, l                                       ; $45ed: $55
    ld d, [hl]                                    ; $45ee: $56
    ld d, a                                       ; $45ef: $57
    ld e, b                                       ; $45f0: $58
    ld e, c                                       ; $45f1: $59
    ld e, d                                       ; $45f2: $5a
    dec a                                         ; $45f3: $3d
    ld a, $3f                                     ; $45f4: $3e $3f
    ld b, b                                       ; $45f6: $40
    ld [bc], a                                    ; $45f7: $02
    ld [bc], a                                    ; $45f8: $02
    ld [bc], a                                    ; $45f9: $02
    ld [bc], a                                    ; $45fa: $02
    dec b                                         ; $45fb: $05
    dec b                                         ; $45fc: $05
    dec b                                         ; $45fd: $05
    dec b                                         ; $45fe: $05
    ld [bc], a                                    ; $45ff: $02
    ld [bc], a                                    ; $4600: $02
    dec b                                         ; $4601: $05
    dec b                                         ; $4602: $05
    dec b                                         ; $4603: $05
    dec b                                         ; $4604: $05
    ld [bc], a                                    ; $4605: $02
    ld [bc], a                                    ; $4606: $02
    ld e, e                                       ; $4607: $5b

jr_083_4608:
    ld e, h                                       ; $4608: $5c
    ld e, l                                       ; $4609: $5d
    ld e, [hl]                                    ; $460a: $5e
    ld e, a                                       ; $460b: $5f
    ld h, b                                       ; $460c: $60
    ld c, e                                       ; $460d: $4b
    ld c, h                                       ; $460e: $4c
    ld h, c                                       ; $460f: $61
    ld h, d                                       ; $4610: $62
    ld c, l                                       ; $4611: $4d
    ld c, [hl]                                    ; $4612: $4e
    ld h, e                                       ; $4613: $63
    ld h, h                                       ; $4614: $64
    jr nc, jr_083_4648                            ; $4615: $30 $31

    dec b                                         ; $4617: $05
    ld [bc], a                                    ; $4618: $02
    dec b                                         ; $4619: $05
    ld [bc], a                                    ; $461a: $02
    dec b                                         ; $461b: $05
    ld [bc], a                                    ; $461c: $02
    ld [bc], a                                    ; $461d: $02
    dec b                                         ; $461e: $05
    dec b                                         ; $461f: $05
    dec b                                         ; $4620: $05
    ld [bc], a                                    ; $4621: $02
    ld [bc], a                                    ; $4622: $02
    ld [bc], a                                    ; $4623: $02
    ld [bc], a                                    ; $4624: $02

jr_083_4625:
    ld [bc], a                                    ; $4625: $02
    dec b                                         ; $4626: $05
    ld h, l                                       ; $4627: $65
    ld h, [hl]                                    ; $4628: $66
    add [hl]                                      ; $4629: $86
    ld l, b                                       ; $462a: $68
    ld d, e                                       ; $462b: $53
    ld d, h                                       ; $462c: $54
    add a                                         ; $462d: $87
    adc b                                         ; $462e: $88
    ld d, a                                       ; $462f: $57
    ld e, b                                       ; $4630: $58
    adc c                                         ; $4631: $89
    adc d                                         ; $4632: $8a
    dec a                                         ; $4633: $3d
    ld a, $8b                                     ; $4634: $3e $8b
    adc h                                         ; $4636: $8c
    dec b                                         ; $4637: $05
    ld [bc], a                                    ; $4638: $02
    rrca                                          ; $4639: $0f
    ld [bc], a                                    ; $463a: $02
    dec b                                         ; $463b: $05
    inc bc                                        ; $463c: $03
    rrca                                          ; $463d: $0f
    rrca                                          ; $463e: $0f
    ld [bc], a                                    ; $463f: $02
    inc bc                                        ; $4640: $03
    rrca                                          ; $4641: $0f
    rrca                                          ; $4642: $0f
    dec b                                         ; $4643: $05
    inc bc                                        ; $4644: $03
    rrca                                          ; $4645: $0f
    rrca                                          ; $4646: $0f
    db $ed                                        ; $4647: $ed

jr_083_4648:
    rst $28                                       ; $4648: $ef
    inc [hl]                                      ; $4649: $34
    dec [hl]                                      ; $464a: $35
    db $ed                                        ; $464b: $ed
    rst $28                                       ; $464c: $ef
    adc l                                         ; $464d: $8d
    adc [hl]                                      ; $464e: $8e
    db $ed                                        ; $464f: $ed
    rst $28                                       ; $4650: $ef
    adc a                                         ; $4651: $8f
    sub b                                         ; $4652: $90
    db $ed                                        ; $4653: $ed
    rst $28                                       ; $4654: $ef
    sub c                                         ; $4655: $91
    adc [hl]                                      ; $4656: $8e
    add b                                         ; $4657: $80
    add b                                         ; $4658: $80
    inc bc                                        ; $4659: $03
    ld [bc], a                                    ; $465a: $02
    add b                                         ; $465b: $80
    add b                                         ; $465c: $80
    add hl, bc                                    ; $465d: $09
    add hl, bc                                    ; $465e: $09
    add b                                         ; $465f: $80
    add b                                         ; $4660: $80
    add hl, bc                                    ; $4661: $09
    add hl, bc                                    ; $4662: $09
    add b                                         ; $4663: $80
    add b                                         ; $4664: $80
    add hl, bc                                    ; $4665: $09
    add hl, bc                                    ; $4666: $09
    ld b, c                                       ; $4667: $41
    ld b, d                                       ; $4668: $42
    ld b, e                                       ; $4669: $43
    sub d                                         ; $466a: $92
    sub b                                         ; $466b: $90
    sub c                                         ; $466c: $91
    adc a                                         ; $466d: $8f
    sub e                                         ; $466e: $93
    sub c                                         ; $466f: $91
    adc a                                         ; $4670: $8f
    adc l                                         ; $4671: $8d
    sub e                                         ; $4672: $93
    sub b                                         ; $4673: $90
    sub c                                         ; $4674: $91
    adc a                                         ; $4675: $8f
    sub e                                         ; $4676: $93
    ld [bc], a                                    ; $4677: $02
    ld [bc], a                                    ; $4678: $02
    ld [bc], a                                    ; $4679: $02
    ld a, [bc]                                    ; $467a: $0a
    add hl, bc                                    ; $467b: $09
    add hl, bc                                    ; $467c: $09
    add hl, bc                                    ; $467d: $09
    add hl, bc                                    ; $467e: $09
    add hl, bc                                    ; $467f: $09
    add hl, bc                                    ; $4680: $09
    add hl, bc                                    ; $4681: $09
    add hl, bc                                    ; $4682: $09
    add hl, bc                                    ; $4683: $09
    add hl, bc                                    ; $4684: $09
    add hl, bc                                    ; $4685: $09
    add hl, bc                                    ; $4686: $09
    sub h                                         ; $4687: $94
    ld [hl], h                                    ; $4688: $74
    inc [hl]                                      ; $4689: $34
    dec [hl]                                      ; $468a: $35
    sub l                                         ; $468b: $95
    halt                                          ; $468c: $76
    scf                                           ; $468d: $37
    jr c, jr_083_4625                             ; $468e: $38 $95

    ld e, h                                       ; $4690: $5c
    ld e, l                                       ; $4691: $5d
    ld e, [hl]                                    ; $4692: $5e
    sub l                                         ; $4693: $95
    ld h, b                                       ; $4694: $60
    ld c, e                                       ; $4695: $4b
    ld c, h                                       ; $4696: $4c
    add hl, bc                                    ; $4697: $09
    ld [bc], a                                    ; $4698: $02
    dec b                                         ; $4699: $05
    dec b                                         ; $469a: $05
    add hl, bc                                    ; $469b: $09
    inc bc                                        ; $469c: $03
    dec b                                         ; $469d: $05
    ld [bc], a                                    ; $469e: $02
    add hl, bc                                    ; $469f: $09
    inc bc                                        ; $46a0: $03
    ld [bc], a                                    ; $46a1: $02
    dec b                                         ; $46a2: $05
    add hl, bc                                    ; $46a3: $09
    inc bc                                        ; $46a4: $03
    ld [bc], a                                    ; $46a5: $02
    dec b                                         ; $46a6: $05
    ld b, c                                       ; $46a7: $41
    ld b, d                                       ; $46a8: $42
    sub [hl]                                      ; $46a9: $96
    sub a                                         ; $46aa: $97
    ld b, l                                       ; $46ab: $45
    ld b, [hl]                                    ; $46ac: $46
    sbc b                                         ; $46ad: $98
    sbc c                                         ; $46ae: $99
    ld h, l                                       ; $46af: $65
    ld h, [hl]                                    ; $46b0: $66
    sbc d                                         ; $46b1: $9a
    sbc e                                         ; $46b2: $9b
    ld d, e                                       ; $46b3: $53
    ld d, h                                       ; $46b4: $54
    ld d, l                                       ; $46b5: $55
    ld d, [hl]                                    ; $46b6: $56
    ld [bc], a                                    ; $46b7: $02
    inc bc                                        ; $46b8: $03
    rrca                                          ; $46b9: $0f
    rrca                                          ; $46ba: $0f
    ld [bc], a                                    ; $46bb: $02
    inc bc                                        ; $46bc: $03
    rrca                                          ; $46bd: $0f
    rrca                                          ; $46be: $0f
    ld [bc], a                                    ; $46bf: $02
    inc bc                                        ; $46c0: $03
    rrca                                          ; $46c1: $0f
    rrca                                          ; $46c2: $0f
    ld [bc], a                                    ; $46c3: $02
    inc bc                                        ; $46c4: $03
    inc bc                                        ; $46c5: $03
    inc bc                                        ; $46c6: $03
    ld [hl], e                                    ; $46c7: $73
    sbc h                                         ; $46c8: $9c
    sbc l                                         ; $46c9: $9d
    sbc [hl]                                      ; $46ca: $9e
    ld [hl], l                                    ; $46cb: $75
    sbc a                                         ; $46cc: $9f
    and b                                         ; $46cd: $a0
    and c                                         ; $46ce: $a1
    ld e, e                                       ; $46cf: $5b
    ld e, h                                       ; $46d0: $5c
    ld e, l                                       ; $46d1: $5d
    ld e, [hl]                                    ; $46d2: $5e
    ld e, a                                       ; $46d3: $5f
    and d                                         ; $46d4: $a2
    and e                                         ; $46d5: $a3
    and h                                         ; $46d6: $a4
    inc bc                                        ; $46d7: $03
    rrca                                          ; $46d8: $0f
    rrca                                          ; $46d9: $0f
    rrca                                          ; $46da: $0f
    inc bc                                        ; $46db: $03
    rrca                                          ; $46dc: $0f
    rrca                                          ; $46dd: $0f
    rrca                                          ; $46de: $0f
    inc bc                                        ; $46df: $03
    inc bc                                        ; $46e0: $03
    inc bc                                        ; $46e1: $03
    inc bc                                        ; $46e2: $03
    ld [bc], a                                    ; $46e3: $02
    rrca                                          ; $46e4: $0f
    rrca                                          ; $46e5: $0f
    rrca                                          ; $46e6: $0f
    and l                                         ; $46e7: $a5
    and [hl]                                      ; $46e8: $a6
    sbc l                                         ; $46e9: $9d
    sbc h                                         ; $46ea: $9c
    and b                                         ; $46eb: $a0
    and c                                         ; $46ec: $a1
    and b                                         ; $46ed: $a0
    sbc a                                         ; $46ee: $9f
    ld h, l                                       ; $46ef: $65
    ld h, [hl]                                    ; $46f0: $66
    ld h, a                                       ; $46f1: $67
    ld l, b                                       ; $46f2: $68
    and a                                         ; $46f3: $a7
    and h                                         ; $46f4: $a4
    and e                                         ; $46f5: $a3
    and d                                         ; $46f6: $a2
    rrca                                          ; $46f7: $0f
    rrca                                          ; $46f8: $0f
    cpl                                           ; $46f9: $2f
    cpl                                           ; $46fa: $2f
    rrca                                          ; $46fb: $0f
    cpl                                           ; $46fc: $2f
    rrca                                          ; $46fd: $0f
    cpl                                           ; $46fe: $2f
    inc bc                                        ; $46ff: $03
    inc bc                                        ; $4700: $03
    inc bc                                        ; $4701: $03
    inc bc                                        ; $4702: $03
    rrca                                          ; $4703: $0f
    cpl                                           ; $4704: $2f
    cpl                                           ; $4705: $2f
    cpl                                           ; $4706: $2f
    ld [hl], e                                    ; $4707: $73
    ld [hl], h                                    ; $4708: $74
    inc [hl]                                      ; $4709: $34
    dec [hl]                                      ; $470a: $35
    ld [hl], l                                    ; $470b: $75
    halt                                          ; $470c: $76
    scf                                           ; $470d: $37
    jr c, jr_083_476b                             ; $470e: $38 $5b

    ld e, h                                       ; $4710: $5c
    ld e, l                                       ; $4711: $5d
    ld e, [hl]                                    ; $4712: $5e
    ld e, a                                       ; $4713: $5f
    ld h, b                                       ; $4714: $60
    ld c, e                                       ; $4715: $4b
    ld c, h                                       ; $4716: $4c
    dec b                                         ; $4717: $05
    ld [bc], a                                    ; $4718: $02
    ld [bc], a                                    ; $4719: $02
    ld [bc], a                                    ; $471a: $02
    ld [bc], a                                    ; $471b: $02
    dec b                                         ; $471c: $05
    ld [bc], a                                    ; $471d: $02
    ld [bc], a                                    ; $471e: $02
    dec b                                         ; $471f: $05
    ld [bc], a                                    ; $4720: $02
    ld [bc], a                                    ; $4721: $02
    dec b                                         ; $4722: $05
    ld [bc], a                                    ; $4723: $02
    ld [bc], a                                    ; $4724: $02
    dec b                                         ; $4725: $05
    dec b                                         ; $4726: $05
    ld b, c                                       ; $4727: $41
    ld b, d                                       ; $4728: $42
    ld b, e                                       ; $4729: $43
    ld b, h                                       ; $472a: $44
    ld b, l                                       ; $472b: $45
    ld b, [hl]                                    ; $472c: $46
    ld b, a                                       ; $472d: $47
    ld c, b                                       ; $472e: $48
    ld h, l                                       ; $472f: $65
    ld h, [hl]                                    ; $4730: $66
    ld h, a                                       ; $4731: $67
    ld l, b                                       ; $4732: $68
    ld d, e                                       ; $4733: $53
    ld d, h                                       ; $4734: $54
    ld d, l                                       ; $4735: $55
    ld d, [hl]                                    ; $4736: $56
    ld [bc], a                                    ; $4737: $02
    ld [bc], a                                    ; $4738: $02
    ld [bc], a                                    ; $4739: $02
    ld [bc], a                                    ; $473a: $02
    dec b                                         ; $473b: $05
    ld [bc], a                                    ; $473c: $02
    dec b                                         ; $473d: $05
    ld [bc], a                                    ; $473e: $02
    ld [bc], a                                    ; $473f: $02
    dec b                                         ; $4740: $05
    ld [bc], a                                    ; $4741: $02
    ld [bc], a                                    ; $4742: $02
    ld [bc], a                                    ; $4743: $02
    ld [bc], a                                    ; $4744: $02
    dec b                                         ; $4745: $05

Jump_083_4746:
    ld [bc], a                                    ; $4746: $02
    ld h, c                                       ; $4747: $61
    xor b                                         ; $4748: $a8
    xor c                                         ; $4749: $a9
    xor d                                         ; $474a: $aa
    ld h, e                                       ; $474b: $63
    xor e                                         ; $474c: $ab
    xor h                                         ; $474d: $ac
    xor l                                         ; $474e: $ad
    ld [hl], e                                    ; $474f: $73
    xor [hl]                                      ; $4750: $ae
    xor a                                         ; $4751: $af
    or b                                          ; $4752: $b0
    ld [hl], l                                    ; $4753: $75
    halt                                          ; $4754: $76
    scf                                           ; $4755: $37
    jr c, jr_083_475b                             ; $4756: $38 $03

    rrca                                          ; $4758: $0f
    rrca                                          ; $4759: $0f
    rrca                                          ; $475a: $0f

jr_083_475b:
    inc bc                                        ; $475b: $03
    rrca                                          ; $475c: $0f
    rrca                                          ; $475d: $0f
    rrca                                          ; $475e: $0f
    inc bc                                        ; $475f: $03
    rrca                                          ; $4760: $0f
    rrca                                          ; $4761: $0f
    rrca                                          ; $4762: $0f
    inc bc                                        ; $4763: $03
    inc bc                                        ; $4764: $03
    inc bc                                        ; $4765: $03
    inc bc                                        ; $4766: $03
    or c                                          ; $4767: $b1
    xor d                                         ; $4768: $aa
    xor c                                         ; $4769: $a9
    xor b                                         ; $476a: $a8

jr_083_476b:
    or d                                          ; $476b: $b2
    xor l                                         ; $476c: $ad
    xor h                                         ; $476d: $ac
    xor e                                         ; $476e: $ab
    or e                                          ; $476f: $b3
    or b                                          ; $4770: $b0
    xor a                                         ; $4771: $af
    xor [hl]                                      ; $4772: $ae
    ld b, l                                       ; $4773: $45
    ld b, [hl]                                    ; $4774: $46
    ld b, a                                       ; $4775: $47
    ld c, b                                       ; $4776: $48
    rrca                                          ; $4777: $0f
    cpl                                           ; $4778: $2f
    cpl                                           ; $4779: $2f
    cpl                                           ; $477a: $2f
    rrca                                          ; $477b: $0f
    cpl                                           ; $477c: $2f
    cpl                                           ; $477d: $2f
    cpl                                           ; $477e: $2f
    rrca                                          ; $477f: $0f
    cpl                                           ; $4780: $2f
    cpl                                           ; $4781: $2f
    cpl                                           ; $4782: $2f
    inc bc                                        ; $4783: $03
    inc bc                                        ; $4784: $03
    inc bc                                        ; $4785: $03
    inc bc                                        ; $4786: $03
    ld h, c                                       ; $4787: $61
    ld h, d                                       ; $4788: $62
    ld c, l                                       ; $4789: $4d
    ld c, [hl]                                    ; $478a: $4e
    ld h, e                                       ; $478b: $63
    ld h, h                                       ; $478c: $64
    jr nc, jr_083_47c0                            ; $478d: $30 $31

    ld [hl], e                                    ; $478f: $73
    ld [hl], h                                    ; $4790: $74
    inc [hl]                                      ; $4791: $34
    dec [hl]                                      ; $4792: $35
    ld [hl], l                                    ; $4793: $75
    halt                                          ; $4794: $76
    scf                                           ; $4795: $37
    jr c, jr_083_479d                             ; $4796: $38 $05

    ld [bc], a                                    ; $4798: $02
    ld [bc], a                                    ; $4799: $02
    ld [bc], a                                    ; $479a: $02
    ld [bc], a                                    ; $479b: $02
    dec b                                         ; $479c: $05

jr_083_479d:
    ld [bc], a                                    ; $479d: $02
    dec b                                         ; $479e: $05
    ld [bc], a                                    ; $479f: $02
    dec b                                         ; $47a0: $05
    ld [bc], a                                    ; $47a1: $02
    ld [bc], a                                    ; $47a2: $02
    ld [bc], a                                    ; $47a3: $02
    dec b                                         ; $47a4: $05
    dec b                                         ; $47a5: $05
    dec b                                         ; $47a6: $05
    ld d, a                                       ; $47a7: $57
    ld e, b                                       ; $47a8: $58
    ld e, c                                       ; $47a9: $59
    ld e, d                                       ; $47aa: $5a
    dec a                                         ; $47ab: $3d
    ld a, $3f                                     ; $47ac: $3e $3f
    ld b, b                                       ; $47ae: $40
    ld b, c                                       ; $47af: $41
    ld b, d                                       ; $47b0: $42
    ld b, e                                       ; $47b1: $43
    ld b, h                                       ; $47b2: $44
    ld b, l                                       ; $47b3: $45
    ld b, [hl]                                    ; $47b4: $46
    ld b, a                                       ; $47b5: $47
    ld c, b                                       ; $47b6: $48
    ld [bc], a                                    ; $47b7: $02
    ld [bc], a                                    ; $47b8: $02
    ld [bc], a                                    ; $47b9: $02
    ld [bc], a                                    ; $47ba: $02
    dec b                                         ; $47bb: $05
    ld [bc], a                                    ; $47bc: $02
    ld [bc], a                                    ; $47bd: $02
    dec b                                         ; $47be: $05
    dec b                                         ; $47bf: $05

jr_083_47c0:
    ld [bc], a                                    ; $47c0: $02
    ld [bc], a                                    ; $47c1: $02
    ld [bc], a                                    ; $47c2: $02
    ld [bc], a                                    ; $47c3: $02
    ld [bc], a                                    ; $47c4: $02
    ld [bc], a                                    ; $47c5: $02
    ld [bc], a                                    ; $47c6: $02
    ld e, e                                       ; $47c7: $5b
    ld e, h                                       ; $47c8: $5c
    ld e, l                                       ; $47c9: $5d
    ld e, [hl]                                    ; $47ca: $5e
    or h                                          ; $47cb: $b4
    ld h, b                                       ; $47cc: $60
    ld c, e                                       ; $47cd: $4b
    ld c, h                                       ; $47ce: $4c
    or l                                          ; $47cf: $b5
    ld h, d                                       ; $47d0: $62
    ld c, l                                       ; $47d1: $4d
    ld c, [hl]                                    ; $47d2: $4e
    or [hl]                                       ; $47d3: $b6
    ld h, h                                       ; $47d4: $64
    jr nc, jr_083_4808                            ; $47d5: $30 $31

    dec b                                         ; $47d7: $05
    ld [bc], a                                    ; $47d8: $02
    dec b                                         ; $47d9: $05
    ld [bc], a                                    ; $47da: $02
    rrca                                          ; $47db: $0f
    ld [bc], a                                    ; $47dc: $02
    ld [bc], a                                    ; $47dd: $02
    dec b                                         ; $47de: $05
    rrca                                          ; $47df: $0f
    ld [bc], a                                    ; $47e0: $02
    ld [bc], a                                    ; $47e1: $02
    ld [bc], a                                    ; $47e2: $02
    rrca                                          ; $47e3: $0f
    dec b                                         ; $47e4: $05
    dec b                                         ; $47e5: $05
    ld [bc], a                                    ; $47e6: $02
    ld h, l                                       ; $47e7: $65
    ld h, [hl]                                    ; $47e8: $66
    ld h, a                                       ; $47e9: $67
    ld l, b                                       ; $47ea: $68
    ld d, e                                       ; $47eb: $53
    ld d, h                                       ; $47ec: $54
    ld d, l                                       ; $47ed: $55
    ld d, [hl]                                    ; $47ee: $56
    ld d, a                                       ; $47ef: $57
    ld e, b                                       ; $47f0: $58
    ld e, c                                       ; $47f1: $59
    ld e, d                                       ; $47f2: $5a
    dec a                                         ; $47f3: $3d
    ld a, $3f                                     ; $47f4: $3e $3f
    ld b, b                                       ; $47f6: $40
    ld [bc], a                                    ; $47f7: $02
    dec b                                         ; $47f8: $05
    ld [bc], a                                    ; $47f9: $02
    ld [bc], a                                    ; $47fa: $02
    ld [bc], a                                    ; $47fb: $02
    ld [bc], a                                    ; $47fc: $02
    dec b                                         ; $47fd: $05
    ld [bc], a                                    ; $47fe: $02
    dec b                                         ; $47ff: $05
    dec b                                         ; $4800: $05
    ld [bc], a                                    ; $4801: $02
    inc bc                                        ; $4802: $03
    dec b                                         ; $4803: $05
    dec b                                         ; $4804: $05
    ld [bc], a                                    ; $4805: $02
    inc bc                                        ; $4806: $03
    ld e, e                                       ; $4807: $5b

jr_083_4808:
    ld e, h                                       ; $4808: $5c

jr_083_4809:
    add [hl]                                      ; $4809: $86
    ld e, [hl]                                    ; $480a: $5e
    or h                                          ; $480b: $b4
    adc b                                         ; $480c: $88
    add a                                         ; $480d: $87
    ld c, h                                       ; $480e: $4c
    or l                                          ; $480f: $b5
    adc d                                         ; $4810: $8a
    adc c                                         ; $4811: $89
    ld c, [hl]                                    ; $4812: $4e
    or [hl]                                       ; $4813: $b6
    adc h                                         ; $4814: $8c
    adc e                                         ; $4815: $8b
    ld sp, $0205                                  ; $4816: $31 $05 $02
    cpl                                           ; $4819: $2f
    ld [bc], a                                    ; $481a: $02
    cpl                                           ; $481b: $2f
    cpl                                           ; $481c: $2f
    cpl                                           ; $481d: $2f
    ld [bc], a                                    ; $481e: $02
    cpl                                           ; $481f: $2f
    cpl                                           ; $4820: $2f
    cpl                                           ; $4821: $2f
    ld [bc], a                                    ; $4822: $02
    cpl                                           ; $4823: $2f
    cpl                                           ; $4824: $2f
    cpl                                           ; $4825: $2f
    dec b                                         ; $4826: $05
    ld h, l                                       ; $4827: $65
    ld h, [hl]                                    ; $4828: $66
    ld h, a                                       ; $4829: $67
    ld l, b                                       ; $482a: $68
    ld d, e                                       ; $482b: $53
    ld d, h                                       ; $482c: $54
    ld d, l                                       ; $482d: $55
    ld d, [hl]                                    ; $482e: $56
    ld d, a                                       ; $482f: $57
    ld e, b                                       ; $4830: $58
    ld e, c                                       ; $4831: $59
    ld e, d                                       ; $4832: $5a
    dec a                                         ; $4833: $3d
    ld a, $3f                                     ; $4834: $3e $3f
    ld b, b                                       ; $4836: $40
    ld [bc], a                                    ; $4837: $02
    ld [bc], a                                    ; $4838: $02
    ld [bc], a                                    ; $4839: $02
    ld [bc], a                                    ; $483a: $02
    ld [bc], a                                    ; $483b: $02
    ld [bc], a                                    ; $483c: $02
    dec b                                         ; $483d: $05
    ld [bc], a                                    ; $483e: $02
    dec b                                         ; $483f: $05
    ld [bc], a                                    ; $4840: $02
    dec b                                         ; $4841: $05
    dec b                                         ; $4842: $05
    dec b                                         ; $4843: $05
    ld [bc], a                                    ; $4844: $02
    ld [bc], a                                    ; $4845: $02
    dec b                                         ; $4846: $05
    or a                                          ; $4847: $b7
    ld [hl], h                                    ; $4848: $74

jr_083_4849:
    inc [hl]                                      ; $4849: $34
    dec [hl]                                      ; $484a: $35
    cp b                                          ; $484b: $b8
    halt                                          ; $484c: $76
    scf                                           ; $484d: $37
    jr c, jr_083_4809                             ; $484e: $38 $b9

    ld e, h                                       ; $4850: $5c
    ld e, l                                       ; $4851: $5d
    ld e, [hl]                                    ; $4852: $5e
    ld e, a                                       ; $4853: $5f
    ld h, b                                       ; $4854: $60
    ld c, e                                       ; $4855: $4b
    ld c, h                                       ; $4856: $4c
    rrca                                          ; $4857: $0f
    dec b                                         ; $4858: $05
    ld [bc], a                                    ; $4859: $02
    dec b                                         ; $485a: $05
    rrca                                          ; $485b: $0f
    ld [bc], a                                    ; $485c: $02
    dec b                                         ; $485d: $05
    dec b                                         ; $485e: $05
    rrca                                          ; $485f: $0f
    ld [bc], a                                    ; $4860: $02
    ld [bc], a                                    ; $4861: $02
    ld [bc], a                                    ; $4862: $02
    inc bc                                        ; $4863: $03
    dec b                                         ; $4864: $05
    dec b                                         ; $4865: $05
    dec b                                         ; $4866: $05
    ld b, c                                       ; $4867: $41
    ld b, d                                       ; $4868: $42
    ld b, e                                       ; $4869: $43
    ld b, h                                       ; $486a: $44
    ld b, l                                       ; $486b: $45
    ld b, [hl]                                    ; $486c: $46
    ld b, a                                       ; $486d: $47
    ld c, b                                       ; $486e: $48
    ld h, l                                       ; $486f: $65
    ld h, [hl]                                    ; $4870: $66
    ld h, a                                       ; $4871: $67
    ld l, b                                       ; $4872: $68
    ld d, e                                       ; $4873: $53
    ld d, h                                       ; $4874: $54
    ld d, l                                       ; $4875: $55
    ld d, [hl]                                    ; $4876: $56
    dec b                                         ; $4877: $05
    ld [bc], a                                    ; $4878: $02
    ld [bc], a                                    ; $4879: $02
    inc bc                                        ; $487a: $03
    ld [bc], a                                    ; $487b: $02
    ld [bc], a                                    ; $487c: $02
    dec b                                         ; $487d: $05
    inc bc                                        ; $487e: $03
    ld [bc], a                                    ; $487f: $02
    ld [bc], a                                    ; $4880: $02
    dec b                                         ; $4881: $05
    inc bc                                        ; $4882: $03
    dec b                                         ; $4883: $05
    dec b                                         ; $4884: $05
    ld [bc], a                                    ; $4885: $02
    inc bc                                        ; $4886: $03
    or a                                          ; $4887: $b7
    sub a                                         ; $4888: $97
    sub [hl]                                      ; $4889: $96
    dec [hl]                                      ; $488a: $35
    cp b                                          ; $488b: $b8
    sbc c                                         ; $488c: $99
    sbc b                                         ; $488d: $98
    jr c, jr_083_4849                             ; $488e: $38 $b9

    sbc e                                         ; $4890: $9b
    sbc d                                         ; $4891: $9a
    ld e, [hl]                                    ; $4892: $5e
    ld e, a                                       ; $4893: $5f
    ld h, b                                       ; $4894: $60
    ld c, e                                       ; $4895: $4b
    ld c, h                                       ; $4896: $4c
    cpl                                           ; $4897: $2f
    cpl                                           ; $4898: $2f
    cpl                                           ; $4899: $2f
    ld [bc], a                                    ; $489a: $02
    cpl                                           ; $489b: $2f
    cpl                                           ; $489c: $2f
    cpl                                           ; $489d: $2f
    dec b                                         ; $489e: $05
    cpl                                           ; $489f: $2f
    cpl                                           ; $48a0: $2f
    cpl                                           ; $48a1: $2f
    ld [bc], a                                    ; $48a2: $02
    inc bc                                        ; $48a3: $03
    inc bc                                        ; $48a4: $03
    inc bc                                        ; $48a5: $03
    ld [bc], a                                    ; $48a6: $02
    ld b, c                                       ; $48a7: $41
    ld b, d                                       ; $48a8: $42
    ld b, e                                       ; $48a9: $43
    ld b, h                                       ; $48aa: $44
    ld b, l                                       ; $48ab: $45
    ld b, [hl]                                    ; $48ac: $46
    ld b, a                                       ; $48ad: $47
    ld c, b                                       ; $48ae: $48
    ld h, l                                       ; $48af: $65
    ld h, [hl]                                    ; $48b0: $66
    ld h, a                                       ; $48b1: $67
    ld l, b                                       ; $48b2: $68
    ld d, e                                       ; $48b3: $53
    ld d, h                                       ; $48b4: $54
    ld d, l                                       ; $48b5: $55
    ld d, [hl]                                    ; $48b6: $56
    ld [bc], a                                    ; $48b7: $02
    ld [bc], a                                    ; $48b8: $02
    ld [bc], a                                    ; $48b9: $02
    dec b                                         ; $48ba: $05
    ld [bc], a                                    ; $48bb: $02
    ld [bc], a                                    ; $48bc: $02
    dec b                                         ; $48bd: $05
    dec b                                         ; $48be: $05
    dec b                                         ; $48bf: $05
    dec b                                         ; $48c0: $05
    ld [bc], a                                    ; $48c1: $02
    ld [bc], a                                    ; $48c2: $02
    ld [bc], a                                    ; $48c3: $02

Call_083_48c4:
    ld [bc], a                                    ; $48c4: $02
    ld [bc], a                                    ; $48c5: $02
    dec b                                         ; $48c6: $05
    ld [hl], e                                    ; $48c7: $73
    ld [hl], h                                    ; $48c8: $74
    inc [hl]                                      ; $48c9: $34
    dec [hl]                                      ; $48ca: $35
    ld [hl], l                                    ; $48cb: $75
    halt                                          ; $48cc: $76
    scf                                           ; $48cd: $37
    jr c, jr_083_492b                             ; $48ce: $38 $5b

    ld e, h                                       ; $48d0: $5c
    ld e, l                                       ; $48d1: $5d
    ld e, [hl]                                    ; $48d2: $5e
    ld e, a                                       ; $48d3: $5f
    ld h, b                                       ; $48d4: $60
    ld c, e                                       ; $48d5: $4b
    ld c, h                                       ; $48d6: $4c
    ld [bc], a                                    ; $48d7: $02
    dec b                                         ; $48d8: $05
    ld [bc], a                                    ; $48d9: $02
    ld [bc], a                                    ; $48da: $02
    dec b                                         ; $48db: $05
    dec b                                         ; $48dc: $05
    ld [bc], a                                    ; $48dd: $02
    ld [bc], a                                    ; $48de: $02
    ld [bc], a                                    ; $48df: $02
    ld [bc], a                                    ; $48e0: $02
    ld [bc], a                                    ; $48e1: $02
    dec b                                         ; $48e2: $05
    dec b                                         ; $48e3: $05
    dec b                                         ; $48e4: $05
    ld [bc], a                                    ; $48e5: $02
    ld [bc], a                                    ; $48e6: $02
    ld b, c                                       ; $48e7: $41
    ld b, d                                       ; $48e8: $42
    ld b, e                                       ; $48e9: $43
    ld b, h                                       ; $48ea: $44
    ld b, l                                       ; $48eb: $45
    ld b, [hl]                                    ; $48ec: $46
    ld b, a                                       ; $48ed: $47
    ld c, b                                       ; $48ee: $48
    ld h, l                                       ; $48ef: $65
    ld h, [hl]                                    ; $48f0: $66
    ld h, a                                       ; $48f1: $67
    ld l, b                                       ; $48f2: $68
    ld d, e                                       ; $48f3: $53
    ld d, h                                       ; $48f4: $54
    ld d, l                                       ; $48f5: $55
    ld d, [hl]                                    ; $48f6: $56
    ld [bc], a                                    ; $48f7: $02
    dec b                                         ; $48f8: $05
    ld [bc], a                                    ; $48f9: $02
    inc bc                                        ; $48fa: $03
    ld [bc], a                                    ; $48fb: $02
    ld [bc], a                                    ; $48fc: $02
    dec b                                         ; $48fd: $05
    inc bc                                        ; $48fe: $03
    dec b                                         ; $48ff: $05
    ld [bc], a                                    ; $4900: $02
    dec b                                         ; $4901: $05
    inc bc                                        ; $4902: $03
    ld [bc], a                                    ; $4903: $02
    ld [bc], a                                    ; $4904: $02
    ld [bc], a                                    ; $4905: $02
    inc bc                                        ; $4906: $03
    ld h, c                                       ; $4907: $61
    ld h, d                                       ; $4908: $62
    ld c, l                                       ; $4909: $4d
    ld c, [hl]                                    ; $490a: $4e
    ld h, e                                       ; $490b: $63
    ld h, h                                       ; $490c: $64
    jr nc, jr_083_4940                            ; $490d: $30 $31

    ld [hl], e                                    ; $490f: $73
    ld [hl], h                                    ; $4910: $74
    inc [hl]                                      ; $4911: $34
    dec [hl]                                      ; $4912: $35
    ld [hl], l                                    ; $4913: $75
    halt                                          ; $4914: $76
    scf                                           ; $4915: $37
    jr c, jr_083_491a                             ; $4916: $38 $02

    ld [bc], a                                    ; $4918: $02
    ld [bc], a                                    ; $4919: $02

jr_083_491a:
    dec b                                         ; $491a: $05
    dec b                                         ; $491b: $05
    dec b                                         ; $491c: $05
    ld [bc], a                                    ; $491d: $02
    ld [bc], a                                    ; $491e: $02
    ld [bc], a                                    ; $491f: $02
    ld [bc], a                                    ; $4920: $02
    ld [bc], a                                    ; $4921: $02
    ld [bc], a                                    ; $4922: $02
    dec b                                         ; $4923: $05
    ld [bc], a                                    ; $4924: $02
    ld [bc], a                                    ; $4925: $02
    dec b                                         ; $4926: $05
    ld d, a                                       ; $4927: $57
    ld e, b                                       ; $4928: $58
    ld e, c                                       ; $4929: $59
    ld e, d                                       ; $492a: $5a

jr_083_492b:
    dec a                                         ; $492b: $3d
    ld a, $3f                                     ; $492c: $3e $3f
    ld b, b                                       ; $492e: $40
    ld b, c                                       ; $492f: $41
    ld b, d                                       ; $4930: $42
    ld b, e                                       ; $4931: $43
    ld b, h                                       ; $4932: $44
    ld b, l                                       ; $4933: $45
    ld b, [hl]                                    ; $4934: $46
    ld b, a                                       ; $4935: $47
    ld c, b                                       ; $4936: $48
    dec b                                         ; $4937: $05
    ld [bc], a                                    ; $4938: $02
    ld [bc], a                                    ; $4939: $02
    inc bc                                        ; $493a: $03
    ld [bc], a                                    ; $493b: $02
    ld [bc], a                                    ; $493c: $02
    ld [bc], a                                    ; $493d: $02
    inc bc                                        ; $493e: $03
    ld [bc], a                                    ; $493f: $02

jr_083_4940:
    ld [bc], a                                    ; $4940: $02
    ld [bc], a                                    ; $4941: $02
    inc bc                                        ; $4942: $03
    ld [bc], a                                    ; $4943: $02
    ld [bc], a                                    ; $4944: $02
    ld [bc], a                                    ; $4945: $02
    inc bc                                        ; $4946: $03
    ld e, e                                       ; $4947: $5b
    ld e, h                                       ; $4948: $5c
    ld e, l                                       ; $4949: $5d
    ld e, [hl]                                    ; $494a: $5e
    ld e, a                                       ; $494b: $5f
    ld h, b                                       ; $494c: $60
    ld c, e                                       ; $494d: $4b
    ld c, h                                       ; $494e: $4c
    ld h, c                                       ; $494f: $61
    ld h, d                                       ; $4950: $62
    ld c, l                                       ; $4951: $4d
    ld c, [hl]                                    ; $4952: $4e
    ld h, e                                       ; $4953: $63
    ld h, h                                       ; $4954: $64
    jr nc, jr_083_4988                            ; $4955: $30 $31

    ld [bc], a                                    ; $4957: $02
    dec b                                         ; $4958: $05
    dec b                                         ; $4959: $05
    ld [bc], a                                    ; $495a: $02
    ld [bc], a                                    ; $495b: $02
    ld [bc], a                                    ; $495c: $02
    ld [bc], a                                    ; $495d: $02
    ld [bc], a                                    ; $495e: $02
    ld [bc], a                                    ; $495f: $02
    ld [bc], a                                    ; $4960: $02
    ld [bc], a                                    ; $4961: $02
    dec b                                         ; $4962: $05
    ld [bc], a                                    ; $4963: $02
    dec b                                         ; $4964: $05
    dec b                                         ; $4965: $05
    dec b                                         ; $4966: $05
    ld h, l                                       ; $4967: $65
    ld h, [hl]                                    ; $4968: $66
    ld h, a                                       ; $4969: $67
    ld l, b                                       ; $496a: $68
    ld d, e                                       ; $496b: $53
    ld d, h                                       ; $496c: $54
    ld d, l                                       ; $496d: $55
    ld d, [hl]                                    ; $496e: $56
    ld d, a                                       ; $496f: $57
    ld e, b                                       ; $4970: $58
    ld e, c                                       ; $4971: $59
    ld e, d                                       ; $4972: $5a
    dec a                                         ; $4973: $3d
    ld a, $3f                                     ; $4974: $3e $3f
    ld b, b                                       ; $4976: $40
    ld [bc], a                                    ; $4977: $02
    ld [bc], a                                    ; $4978: $02
    ld [bc], a                                    ; $4979: $02
    inc bc                                        ; $497a: $03
    dec b                                         ; $497b: $05
    dec b                                         ; $497c: $05
    dec b                                         ; $497d: $05
    inc bc                                        ; $497e: $03
    dec b                                         ; $497f: $05
    dec b                                         ; $4980: $05
    ld [bc], a                                    ; $4981: $02
    inc bc                                        ; $4982: $03
    ld [bc], a                                    ; $4983: $02
    ld [bc], a                                    ; $4984: $02
    ld [bc], a                                    ; $4985: $02
    inc bc                                        ; $4986: $03
    ld [hl], e                                    ; $4987: $73

jr_083_4988:
    ld [hl], h                                    ; $4988: $74
    inc [hl]                                      ; $4989: $34
    dec [hl]                                      ; $498a: $35
    ld [hl], l                                    ; $498b: $75
    halt                                          ; $498c: $76
    scf                                           ; $498d: $37
    cp d                                          ; $498e: $ba
    ld e, e                                       ; $498f: $5b
    ld e, h                                       ; $4990: $5c
    xor $f1                                       ; $4991: $ee $f1
    ld e, a                                       ; $4993: $5f
    ld h, b                                       ; $4994: $60
    rst $28                                       ; $4995: $ef
    db $ed                                        ; $4996: $ed
    ld [bc], a                                    ; $4997: $02
    ld [bc], a                                    ; $4998: $02
    ld [bc], a                                    ; $4999: $02
    ld [bc], a                                    ; $499a: $02
    ld [bc], a                                    ; $499b: $02
    ld [bc], a                                    ; $499c: $02
    dec b                                         ; $499d: $05
    adc d                                         ; $499e: $8a
    ld [bc], a                                    ; $499f: $02
    ld [bc], a                                    ; $49a0: $02
    add b                                         ; $49a1: $80
    add b                                         ; $49a2: $80
    dec b                                         ; $49a3: $05
    ld [bc], a                                    ; $49a4: $02
    add b                                         ; $49a5: $80
    add b                                         ; $49a6: $80
    ld b, c                                       ; $49a7: $41
    ld b, d                                       ; $49a8: $42
    ld b, e                                       ; $49a9: $43
    ld b, h                                       ; $49aa: $44
    cp e                                          ; $49ab: $bb
    cp e                                          ; $49ac: $bb
    cp e                                          ; $49ad: $bb
    cp e                                          ; $49ae: $bb
    pop af                                        ; $49af: $f1
    pop af                                        ; $49b0: $f1
    pop af                                        ; $49b1: $f1
    pop af                                        ; $49b2: $f1
    db $ed                                        ; $49b3: $ed
    db $ed                                        ; $49b4: $ed
    db $ed                                        ; $49b5: $ed
    db $ed                                        ; $49b6: $ed
    dec b                                         ; $49b7: $05
    ld [bc], a                                    ; $49b8: $02
    ld [bc], a                                    ; $49b9: $02
    inc bc                                        ; $49ba: $03
    adc d                                         ; $49bb: $8a
    adc d                                         ; $49bc: $8a
    adc d                                         ; $49bd: $8a
    adc d                                         ; $49be: $8a
    add b                                         ; $49bf: $80
    add b                                         ; $49c0: $80
    add b                                         ; $49c1: $80
    add b                                         ; $49c2: $80
    add b                                         ; $49c3: $80
    add b                                         ; $49c4: $80
    add b                                         ; $49c5: $80
    add b                                         ; $49c6: $80
    push af                                       ; $49c7: $f5
    db $ed                                        ; $49c8: $ed
    rst $28                                       ; $49c9: $ef
    db $ed                                        ; $49ca: $ed
    cp h                                          ; $49cb: $bc
    db $ed                                        ; $49cc: $ed
    rst $28                                       ; $49cd: $ef
    db $ed                                        ; $49ce: $ed
    pop af                                        ; $49cf: $f1
    pop af                                        ; $49d0: $f1
    db $f4                                        ; $49d1: $f4
    db $ed                                        ; $49d2: $ed
    db $ed                                        ; $49d3: $ed
    db $ed                                        ; $49d4: $ed
    db $ed                                        ; $49d5: $ed
    db $ed                                        ; $49d6: $ed
    and d                                         ; $49d7: $a2
    add d                                         ; $49d8: $82
    add b                                         ; $49d9: $80
    add b                                         ; $49da: $80
    adc d                                         ; $49db: $8a
    add d                                         ; $49dc: $82
    add b                                         ; $49dd: $80
    add b                                         ; $49de: $80
    add b                                         ; $49df: $80
    add b                                         ; $49e0: $80
    add b                                         ; $49e1: $80
    add b                                         ; $49e2: $80
    add b                                         ; $49e3: $80
    add b                                         ; $49e4: $80
    add b                                         ; $49e5: $80
    add b                                         ; $49e6: $80
    db $ed                                        ; $49e7: $ed
    db $ed                                        ; $49e8: $ed
    db $ed                                        ; $49e9: $ed
    db $ed                                        ; $49ea: $ed
    db $ed                                        ; $49eb: $ed
    db $ed                                        ; $49ec: $ed
    db $ed                                        ; $49ed: $ed
    db $ed                                        ; $49ee: $ed
    db $ed                                        ; $49ef: $ed
    db $ed                                        ; $49f0: $ed
    db $ed                                        ; $49f1: $ed
    db $ed                                        ; $49f2: $ed
    db $ed                                        ; $49f3: $ed
    db $ed                                        ; $49f4: $ed
    db $ed                                        ; $49f5: $ed
    xor $80                                       ; $49f6: $ee $80
    add b                                         ; $49f8: $80
    add b                                         ; $49f9: $80
    add b                                         ; $49fa: $80
    add b                                         ; $49fb: $80
    add b                                         ; $49fc: $80
    add b                                         ; $49fd: $80
    add b                                         ; $49fe: $80
    add b                                         ; $49ff: $80
    add b                                         ; $4a00: $80
    add b                                         ; $4a01: $80
    add b                                         ; $4a02: $80
    add b                                         ; $4a03: $80
    add b                                         ; $4a04: $80
    add b                                         ; $4a05: $80
    add b                                         ; $4a06: $80
    db $ed                                        ; $4a07: $ed
    db $ed                                        ; $4a08: $ed
    db $ed                                        ; $4a09: $ed
    rst $28                                       ; $4a0a: $ef
    db $ed                                        ; $4a0b: $ed
    db $ed                                        ; $4a0c: $ed
    db $ed                                        ; $4a0d: $ed
    ldh a, [$ed]                                  ; $4a0e: $f0 $ed
    db $ed                                        ; $4a10: $ed
    db $ed                                        ; $4a11: $ed
    ldh a, [$ed]                                  ; $4a12: $f0 $ed
    db $ed                                        ; $4a14: $ed
    db $ed                                        ; $4a15: $ed
    ldh a, [$80]                                  ; $4a16: $f0 $80
    add b                                         ; $4a18: $80
    add b                                         ; $4a19: $80
    add b                                         ; $4a1a: $80
    add b                                         ; $4a1b: $80
    add b                                         ; $4a1c: $80
    add b                                         ; $4a1d: $80
    add b                                         ; $4a1e: $80
    add b                                         ; $4a1f: $80
    add b                                         ; $4a20: $80
    add b                                         ; $4a21: $80
    add b                                         ; $4a22: $80
    add b                                         ; $4a23: $80
    add b                                         ; $4a24: $80
    add b                                         ; $4a25: $80
    add b                                         ; $4a26: $80
    db $ed                                        ; $4a27: $ed
    db $ed                                        ; $4a28: $ed
    db $ed                                        ; $4a29: $ed
    ldh a, [$ed]                                  ; $4a2a: $f0 $ed
    db $ed                                        ; $4a2c: $ed
    add h                                         ; $4a2d: $84
    ldh a, [$ed]                                  ; $4a2e: $f0 $ed
    db $ed                                        ; $4a30: $ed
    add h                                         ; $4a31: $84
    rst $28                                       ; $4a32: $ef
    db $ed                                        ; $4a33: $ed
    db $ed                                        ; $4a34: $ed
    add h                                         ; $4a35: $84
    ld a, h                                       ; $4a36: $7c
    add b                                         ; $4a37: $80
    add b                                         ; $4a38: $80
    add b                                         ; $4a39: $80
    add b                                         ; $4a3a: $80
    add b                                         ; $4a3b: $80
    add b                                         ; $4a3c: $80
    adc b                                         ; $4a3d: $88
    add b                                         ; $4a3e: $80
    add b                                         ; $4a3f: $80
    add b                                         ; $4a40: $80
    adc b                                         ; $4a41: $88
    add b                                         ; $4a42: $80
    add b                                         ; $4a43: $80
    add b                                         ; $4a44: $80
    adc b                                         ; $4a45: $88
    add b                                         ; $4a46: $80
    db $ed                                        ; $4a47: $ed
    rst $28                                       ; $4a48: $ef
    cp l                                          ; $4a49: $bd
    cp [hl]                                       ; $4a4a: $be
    db $ed                                        ; $4a4b: $ed
    rst $28                                       ; $4a4c: $ef
    cp a                                          ; $4a4d: $bf
    ret nz                                        ; $4a4e: $c0

    db $ed                                        ; $4a4f: $ed
    rst $28                                       ; $4a50: $ef
    pop bc                                        ; $4a51: $c1
    jp nz, $f4f1                                  ; $4a52: $c2 $f1 $f4

    db $ed                                        ; $4a55: $ed
    db $ed                                        ; $4a56: $ed
    add b                                         ; $4a57: $80
    add b                                         ; $4a58: $80
    add hl, bc                                    ; $4a59: $09
    add hl, bc                                    ; $4a5a: $09
    add b                                         ; $4a5b: $80
    add b                                         ; $4a5c: $80
    add hl, bc                                    ; $4a5d: $09
    add hl, bc                                    ; $4a5e: $09
    add b                                         ; $4a5f: $80
    add b                                         ; $4a60: $80
    add hl, bc                                    ; $4a61: $09
    add hl, bc                                    ; $4a62: $09
    add b                                         ; $4a63: $80
    add b                                         ; $4a64: $80
    ld bc, $c301                                  ; $4a65: $01 $01 $c3
    call nz, $c6c5                                ; $4a68: $c4 $c5 $c6
    cp a                                          ; $4a6b: $bf
    ret nz                                        ; $4a6c: $c0

    rst $00                                       ; $4a6d: $c7
    ret z                                         ; $4a6e: $c8

    pop bc                                        ; $4a6f: $c1
    jp nz, $c9c1                                  ; $4a70: $c2 $c1 $c9

    db $ed                                        ; $4a73: $ed
    db $ed                                        ; $4a74: $ed
    db $ed                                        ; $4a75: $ed
    db $ed                                        ; $4a76: $ed
    add hl, bc                                    ; $4a77: $09
    add hl, bc                                    ; $4a78: $09
    add hl, bc                                    ; $4a79: $09
    add hl, bc                                    ; $4a7a: $09
    add hl, bc                                    ; $4a7b: $09
    add hl, bc                                    ; $4a7c: $09
    add hl, bc                                    ; $4a7d: $09
    add hl, bc                                    ; $4a7e: $09
    add hl, bc                                    ; $4a7f: $09
    add hl, bc                                    ; $4a80: $09
    add hl, bc                                    ; $4a81: $09
    add hl, bc                                    ; $4a82: $09
    ld bc, $0101                                  ; $4a83: $01 $01 $01
    ld bc, $6295                                  ; $4a86: $01 $95 $62
    ld c, l                                       ; $4a89: $4d
    ld c, [hl]                                    ; $4a8a: $4e
    sub l                                         ; $4a8b: $95
    ld h, h                                       ; $4a8c: $64
    jr nc, jr_083_4ac0                            ; $4a8d: $30 $31

    sub l                                         ; $4a8f: $95
    ld [hl], h                                    ; $4a90: $74
    inc [hl]                                      ; $4a91: $34
    dec [hl]                                      ; $4a92: $35
    sub l                                         ; $4a93: $95
    halt                                          ; $4a94: $76
    scf                                           ; $4a95: $37
    jr c, jr_083_4aa1                             ; $4a96: $38 $09

    inc bc                                        ; $4a98: $03
    ld [bc], a                                    ; $4a99: $02
    dec b                                         ; $4a9a: $05
    add hl, bc                                    ; $4a9b: $09
    inc bc                                        ; $4a9c: $03
    ld [bc], a                                    ; $4a9d: $02
    ld [bc], a                                    ; $4a9e: $02
    add hl, bc                                    ; $4a9f: $09
    inc bc                                        ; $4aa0: $03

jr_083_4aa1:
    dec b                                         ; $4aa1: $05
    dec b                                         ; $4aa2: $05
    add hl, bc                                    ; $4aa3: $09
    inc bc                                        ; $4aa4: $03
    ld [bc], a                                    ; $4aa5: $02
    ld [bc], a                                    ; $4aa6: $02
    ld d, a                                       ; $4aa7: $57
    ld e, b                                       ; $4aa8: $58
    ld e, c                                       ; $4aa9: $59
    ld e, d                                       ; $4aaa: $5a
    dec a                                         ; $4aab: $3d
    ld a, $3f                                     ; $4aac: $3e $3f
    ld b, b                                       ; $4aae: $40
    ld b, c                                       ; $4aaf: $41
    ld b, d                                       ; $4ab0: $42
    ld b, e                                       ; $4ab1: $43
    ld b, h                                       ; $4ab2: $44
    ld b, l                                       ; $4ab3: $45
    ld b, [hl]                                    ; $4ab4: $46
    ld b, a                                       ; $4ab5: $47
    ld c, b                                       ; $4ab6: $48
    ld [bc], a                                    ; $4ab7: $02
    dec b                                         ; $4ab8: $05
    ld [bc], a                                    ; $4ab9: $02
    ld [bc], a                                    ; $4aba: $02
    dec b                                         ; $4abb: $05
    ld [bc], a                                    ; $4abc: $02
    ld [bc], a                                    ; $4abd: $02
    ld [bc], a                                    ; $4abe: $02
    ld [bc], a                                    ; $4abf: $02

jr_083_4ac0:
    ld [bc], a                                    ; $4ac0: $02
    ld [bc], a                                    ; $4ac1: $02
    dec b                                         ; $4ac2: $05
    ld [bc], a                                    ; $4ac3: $02
    dec b                                         ; $4ac4: $05
    dec b                                         ; $4ac5: $05
    ld [bc], a                                    ; $4ac6: $02
    inc e                                         ; $4ac7: $1c
    dec e                                         ; $4ac8: $1d
    jp z, Jump_000_20ca                           ; $4ac9: $ca $ca $20

    ld hl, $cccb                                  ; $4acc: $21 $cb $cc
    inc h                                         ; $4acf: $24
    dec h                                         ; $4ad0: $25
    ld c, l                                       ; $4ad1: $4d
    ld c, [hl]                                    ; $4ad2: $4e
    jr z, jr_083_4afe                             ; $4ad3: $28 $29

    jr nc, @+$33                                  ; $4ad5: $30 $31

    inc b                                         ; $4ad7: $04
    inc b                                         ; $4ad8: $04
    add hl, bc                                    ; $4ad9: $09
    add hl, bc                                    ; $4ada: $09
    inc b                                         ; $4adb: $04
    inc b                                         ; $4adc: $04
    add hl, bc                                    ; $4add: $09
    add hl, bc                                    ; $4ade: $09
    inc b                                         ; $4adf: $04
    inc b                                         ; $4ae0: $04
    inc bc                                        ; $4ae1: $03
    inc bc                                        ; $4ae2: $03
    inc b                                         ; $4ae3: $04
    inc b                                         ; $4ae4: $04
    inc bc                                        ; $4ae5: $03
    dec b                                         ; $4ae6: $05
    jp z, $caca                                   ; $4ae7: $ca $ca $ca

    jp z, $cdcb                                   ; $4aea: $ca $cb $cd

    set 1, l                                      ; $4aed: $cb $cd
    ld d, a                                       ; $4aef: $57
    ld e, b                                       ; $4af0: $58
    ld e, c                                       ; $4af1: $59
    ld e, d                                       ; $4af2: $5a
    dec a                                         ; $4af3: $3d
    ld a, $3f                                     ; $4af4: $3e $3f
    ld b, b                                       ; $4af6: $40
    add hl, bc                                    ; $4af7: $09
    add hl, bc                                    ; $4af8: $09
    add hl, bc                                    ; $4af9: $09
    add hl, bc                                    ; $4afa: $09
    add hl, bc                                    ; $4afb: $09
    add hl, bc                                    ; $4afc: $09
    add hl, bc                                    ; $4afd: $09

jr_083_4afe:
    add hl, bc                                    ; $4afe: $09
    inc bc                                        ; $4aff: $03
    inc bc                                        ; $4b00: $03
    inc bc                                        ; $4b01: $03
    inc bc                                        ; $4b02: $03
    dec b                                         ; $4b03: $05
    ld [bc], a                                    ; $4b04: $02
    ld [bc], a                                    ; $4b05: $02
    ld [bc], a                                    ; $4b06: $02
    adc $5c                                       ; $4b07: $ce $5c
    ld e, l                                       ; $4b09: $5d
    ld e, [hl]                                    ; $4b0a: $5e
    rst $08                                       ; $4b0b: $cf
    ld h, b                                       ; $4b0c: $60
    ld c, e                                       ; $4b0d: $4b
    ld c, h                                       ; $4b0e: $4c
    ld h, c                                       ; $4b0f: $61
    ld h, d                                       ; $4b10: $62
    ld c, l                                       ; $4b11: $4d
    ld c, [hl]                                    ; $4b12: $4e
    ld h, e                                       ; $4b13: $63
    ld h, h                                       ; $4b14: $64
    jr nc, jr_083_4b48                            ; $4b15: $30 $31

    add hl, bc                                    ; $4b17: $09
    inc bc                                        ; $4b18: $03
    ld [bc], a                                    ; $4b19: $02
    ld [bc], a                                    ; $4b1a: $02
    add hl, bc                                    ; $4b1b: $09
    inc bc                                        ; $4b1c: $03
    ld [bc], a                                    ; $4b1d: $02
    dec b                                         ; $4b1e: $05
    inc bc                                        ; $4b1f: $03
    inc bc                                        ; $4b20: $03
    ld [bc], a                                    ; $4b21: $02
    ld [bc], a                                    ; $4b22: $02
    dec b                                         ; $4b23: $05
    ld [bc], a                                    ; $4b24: $02
    ld [bc], a                                    ; $4b25: $02
    ld [bc], a                                    ; $4b26: $02
    ld h, l                                       ; $4b27: $65
    ld h, [hl]                                    ; $4b28: $66
    ld h, a                                       ; $4b29: $67
    ld l, b                                       ; $4b2a: $68
    ld d, e                                       ; $4b2b: $53
    ld d, h                                       ; $4b2c: $54
    ld d, l                                       ; $4b2d: $55
    ld d, [hl]                                    ; $4b2e: $56
    ld d, a                                       ; $4b2f: $57
    ld e, b                                       ; $4b30: $58
    ld e, c                                       ; $4b31: $59
    ld e, d                                       ; $4b32: $5a
    dec a                                         ; $4b33: $3d
    ld a, $3f                                     ; $4b34: $3e $3f
    ld b, b                                       ; $4b36: $40
    ld [bc], a                                    ; $4b37: $02
    ld [bc], a                                    ; $4b38: $02
    ld [bc], a                                    ; $4b39: $02
    dec b                                         ; $4b3a: $05
    dec b                                         ; $4b3b: $05
    ld [bc], a                                    ; $4b3c: $02
    ld [bc], a                                    ; $4b3d: $02
    ld [bc], a                                    ; $4b3e: $02
    ld [bc], a                                    ; $4b3f: $02
    ld [bc], a                                    ; $4b40: $02
    ld [bc], a                                    ; $4b41: $02
    ld [bc], a                                    ; $4b42: $02
    ld [bc], a                                    ; $4b43: $02
    ld [bc], a                                    ; $4b44: $02
    ld [bc], a                                    ; $4b45: $02
    dec b                                         ; $4b46: $05
    ld d, c                                       ; $4b47: $51

jr_083_4b48:
    ld d, d                                       ; $4b48: $52
    inc [hl]                                      ; $4b49: $34
    dec [hl]                                      ; $4b4a: $35
    ld e, a                                       ; $4b4b: $5f
    ld h, b                                       ; $4b4c: $60
    scf                                           ; $4b4d: $37
    jr c, jr_083_4bb1                             ; $4b4e: $38 $61

    ld h, d                                       ; $4b50: $62
    ld e, l                                       ; $4b51: $5d
    ld e, [hl]                                    ; $4b52: $5e
    pop af                                        ; $4b53: $f1
    add l                                         ; $4b54: $85
    ld c, e                                       ; $4b55: $4b
    ld c, h                                       ; $4b56: $4c
    inc b                                         ; $4b57: $04

jr_083_4b58:
    inc b                                         ; $4b58: $04
    inc bc                                        ; $4b59: $03
    dec b                                         ; $4b5a: $05
    inc bc                                        ; $4b5b: $03
    inc bc                                        ; $4b5c: $03
    inc bc                                        ; $4b5d: $03
    ld [bc], a                                    ; $4b5e: $02
    inc bc                                        ; $4b5f: $03
    ld [bc], a                                    ; $4b60: $02
    ld [bc], a                                    ; $4b61: $02
    ld [bc], a                                    ; $4b62: $02
    add b                                         ; $4b63: $80
    adc b                                         ; $4b64: $88
    ld [bc], a                                    ; $4b65: $02
    dec b                                         ; $4b66: $05
    ld b, c                                       ; $4b67: $41
    ld b, d                                       ; $4b68: $42
    ld b, e                                       ; $4b69: $43
    ld b, h                                       ; $4b6a: $44
    ld b, l                                       ; $4b6b: $45
    ld b, [hl]                                    ; $4b6c: $46
    ld b, a                                       ; $4b6d: $47
    ld c, b                                       ; $4b6e: $48
    ld h, l                                       ; $4b6f: $65
    ld h, [hl]                                    ; $4b70: $66
    ld h, a                                       ; $4b71: $67
    ld l, b                                       ; $4b72: $68
    ld d, e                                       ; $4b73: $53
    ld d, h                                       ; $4b74: $54
    ld d, l                                       ; $4b75: $55
    ld d, [hl]                                    ; $4b76: $56
    ld [bc], a                                    ; $4b77: $02
    ld [bc], a                                    ; $4b78: $02
    dec b                                         ; $4b79: $05
    dec b                                         ; $4b7a: $05
    ld [bc], a                                    ; $4b7b: $02
    ld [bc], a                                    ; $4b7c: $02
    dec b                                         ; $4b7d: $05
    ld [bc], a                                    ; $4b7e: $02
    ld [bc], a                                    ; $4b7f: $02
    ld [bc], a                                    ; $4b80: $02
    ld [bc], a                                    ; $4b81: $02
    dec b                                         ; $4b82: $05
    dec b                                         ; $4b83: $05
    dec b                                         ; $4b84: $05
    ld [bc], a                                    ; $4b85: $02
    ld [bc], a                                    ; $4b86: $02
    ld [hl], e                                    ; $4b87: $73
    ld [hl], h                                    ; $4b88: $74
    inc [hl]                                      ; $4b89: $34
    dec [hl]                                      ; $4b8a: $35
    ld [hl], l                                    ; $4b8b: $75
    halt                                          ; $4b8c: $76
    scf                                           ; $4b8d: $37
    jr c, jr_083_4beb                             ; $4b8e: $38 $5b

    ld e, h                                       ; $4b90: $5c
    ld e, l                                       ; $4b91: $5d
    ld e, [hl]                                    ; $4b92: $5e
    ld e, a                                       ; $4b93: $5f
    ld h, b                                       ; $4b94: $60
    ld c, e                                       ; $4b95: $4b
    ld c, h                                       ; $4b96: $4c
    ld [bc], a                                    ; $4b97: $02
    ld [bc], a                                    ; $4b98: $02
    ld [bc], a                                    ; $4b99: $02
    dec b                                         ; $4b9a: $05
    dec b                                         ; $4b9b: $05
    ld [bc], a                                    ; $4b9c: $02
    ld [bc], a                                    ; $4b9d: $02
    ld [bc], a                                    ; $4b9e: $02
    dec b                                         ; $4b9f: $05
    ld [bc], a                                    ; $4ba0: $02
    ld [bc], a                                    ; $4ba1: $02
    dec b                                         ; $4ba2: $05
    ld [bc], a                                    ; $4ba3: $02
    dec b                                         ; $4ba4: $05
    ld [bc], a                                    ; $4ba5: $02
    ld [bc], a                                    ; $4ba6: $02
    ld b, c                                       ; $4ba7: $41
    ld b, d                                       ; $4ba8: $42
    ld b, e                                       ; $4ba9: $43
    ld b, h                                       ; $4baa: $44
    ld b, l                                       ; $4bab: $45
    ld b, [hl]                                    ; $4bac: $46
    ld b, a                                       ; $4bad: $47
    ld c, b                                       ; $4bae: $48
    ld h, l                                       ; $4baf: $65
    ld h, [hl]                                    ; $4bb0: $66

jr_083_4bb1:
    ld h, a                                       ; $4bb1: $67
    ld l, b                                       ; $4bb2: $68
    ld d, e                                       ; $4bb3: $53
    ld d, h                                       ; $4bb4: $54
    ld d, l                                       ; $4bb5: $55
    ld d, [hl]                                    ; $4bb6: $56
    dec b                                         ; $4bb7: $05
    dec b                                         ; $4bb8: $05
    dec b                                         ; $4bb9: $05
    ld [bc], a                                    ; $4bba: $02
    ld [bc], a                                    ; $4bbb: $02
    dec b                                         ; $4bbc: $05
    ld [bc], a                                    ; $4bbd: $02
    ld [bc], a                                    ; $4bbe: $02
    dec b                                         ; $4bbf: $05
    ld [bc], a                                    ; $4bc0: $02
    ld [bc], a                                    ; $4bc1: $02
    ld [bc], a                                    ; $4bc2: $02
    ld [bc], a                                    ; $4bc3: $02
    ld [bc], a                                    ; $4bc4: $02
    ld [bc], a                                    ; $4bc5: $02
    dec b                                         ; $4bc6: $05
    db $ed                                        ; $4bc7: $ed
    rst $28                                       ; $4bc8: $ef
    ld c, l                                       ; $4bc9: $4d
    ld c, [hl]                                    ; $4bca: $4e
    db $ed                                        ; $4bcb: $ed
    rst $28                                       ; $4bcc: $ef
    jr nc, jr_083_4c00                            ; $4bcd: $30 $31

    db $ed                                        ; $4bcf: $ed
    rst $28                                       ; $4bd0: $ef
    inc [hl]                                      ; $4bd1: $34
    dec [hl]                                      ; $4bd2: $35
    db $ed                                        ; $4bd3: $ed
    rst $28                                       ; $4bd4: $ef
    scf                                           ; $4bd5: $37
    jr c, jr_083_4b58                             ; $4bd6: $38 $80

    add b                                         ; $4bd8: $80
    ld [bc], a                                    ; $4bd9: $02
    ld [bc], a                                    ; $4bda: $02
    add b                                         ; $4bdb: $80
    add b                                         ; $4bdc: $80
    inc bc                                        ; $4bdd: $03
    ld [bc], a                                    ; $4bde: $02
    add b                                         ; $4bdf: $80
    add b                                         ; $4be0: $80
    inc bc                                        ; $4be1: $03
    ld [bc], a                                    ; $4be2: $02
    add b                                         ; $4be3: $80
    add b                                         ; $4be4: $80
    inc bc                                        ; $4be5: $03
    ld [bc], a                                    ; $4be6: $02
    ld d, a                                       ; $4be7: $57
    ld e, b                                       ; $4be8: $58
    ld e, c                                       ; $4be9: $59
    ld e, d                                       ; $4bea: $5a

jr_083_4beb:
    dec a                                         ; $4beb: $3d
    ld a, $3f                                     ; $4bec: $3e $3f
    ld b, b                                       ; $4bee: $40
    ld b, c                                       ; $4bef: $41
    ld b, d                                       ; $4bf0: $42
    ld b, e                                       ; $4bf1: $43
    ld b, h                                       ; $4bf2: $44
    ld b, l                                       ; $4bf3: $45
    ld b, [hl]                                    ; $4bf4: $46
    ld b, a                                       ; $4bf5: $47
    ld c, b                                       ; $4bf6: $48
    ld [bc], a                                    ; $4bf7: $02
    dec b                                         ; $4bf8: $05
    dec b                                         ; $4bf9: $05
    ld [bc], a                                    ; $4bfa: $02
    ld [bc], a                                    ; $4bfb: $02
    ld [bc], a                                    ; $4bfc: $02
    dec b                                         ; $4bfd: $05
    ld [bc], a                                    ; $4bfe: $02
    ld [bc], a                                    ; $4bff: $02

jr_083_4c00:
    ld [bc], a                                    ; $4c00: $02
    ld [bc], a                                    ; $4c01: $02
    ld [bc], a                                    ; $4c02: $02
    ld [bc], a                                    ; $4c03: $02
    dec b                                         ; $4c04: $05
    ld [bc], a                                    ; $4c05: $02
    dec b                                         ; $4c06: $05
    ld h, c                                       ; $4c07: $61
    ld h, d                                       ; $4c08: $62
    ld c, l                                       ; $4c09: $4d
    ld c, [hl]                                    ; $4c0a: $4e
    ld h, e                                       ; $4c0b: $63
    ld h, h                                       ; $4c0c: $64
    jr nc, jr_083_4c40                            ; $4c0d: $30 $31

    ld [hl], e                                    ; $4c0f: $73
    ld [hl], h                                    ; $4c10: $74
    inc [hl]                                      ; $4c11: $34
    dec [hl]                                      ; $4c12: $35
    ld [hl], l                                    ; $4c13: $75
    halt                                          ; $4c14: $76
    scf                                           ; $4c15: $37
    jr c, jr_083_4c1d                             ; $4c16: $38 $05

    dec b                                         ; $4c18: $05
    dec b                                         ; $4c19: $05
    dec b                                         ; $4c1a: $05
    ld [bc], a                                    ; $4c1b: $02
    ld [bc], a                                    ; $4c1c: $02

jr_083_4c1d:
    dec b                                         ; $4c1d: $05
    dec b                                         ; $4c1e: $05
    dec b                                         ; $4c1f: $05
    ld [bc], a                                    ; $4c20: $02
    ld [bc], a                                    ; $4c21: $02
    ld [bc], a                                    ; $4c22: $02
    ld [bc], a                                    ; $4c23: $02
    dec b                                         ; $4c24: $05
    ld [bc], a                                    ; $4c25: $02
    dec b                                         ; $4c26: $05
    ld d, a                                       ; $4c27: $57
    ld e, b                                       ; $4c28: $58
    ld e, c                                       ; $4c29: $59
    ld e, d                                       ; $4c2a: $5a
    dec a                                         ; $4c2b: $3d
    ld a, $3f                                     ; $4c2c: $3e $3f
    ld b, b                                       ; $4c2e: $40
    ld b, c                                       ; $4c2f: $41
    ld b, d                                       ; $4c30: $42
    ld b, e                                       ; $4c31: $43
    ld b, h                                       ; $4c32: $44
    ld b, l                                       ; $4c33: $45
    ld b, [hl]                                    ; $4c34: $46
    ld b, a                                       ; $4c35: $47
    ret nc                                        ; $4c36: $d0

    dec b                                         ; $4c37: $05
    dec b                                         ; $4c38: $05
    ld [bc], a                                    ; $4c39: $02
    dec b                                         ; $4c3a: $05
    ld [bc], a                                    ; $4c3b: $02
    ld [bc], a                                    ; $4c3c: $02
    ld [bc], a                                    ; $4c3d: $02
    ld [bc], a                                    ; $4c3e: $02
    dec b                                         ; $4c3f: $05

jr_083_4c40:
    dec b                                         ; $4c40: $05
    ld [bc], a                                    ; $4c41: $02
    inc bc                                        ; $4c42: $03
    ld [bc], a                                    ; $4c43: $02
    ld [bc], a                                    ; $4c44: $02
    inc bc                                        ; $4c45: $03
    add hl, bc                                    ; $4c46: $09
    ld h, c                                       ; $4c47: $61
    ld h, d                                       ; $4c48: $62
    ld c, l                                       ; $4c49: $4d
    ld c, [hl]                                    ; $4c4a: $4e
    ld h, e                                       ; $4c4b: $63
    ld h, h                                       ; $4c4c: $64
    jr nc, jr_083_4c80                            ; $4c4d: $30 $31

    ld [hl], e                                    ; $4c4f: $73
    ld [hl], h                                    ; $4c50: $74
    inc [hl]                                      ; $4c51: $34
    dec [hl]                                      ; $4c52: $35
    ld [hl], l                                    ; $4c53: $75
    halt                                          ; $4c54: $76
    scf                                           ; $4c55: $37
    jr c, jr_083_4c5a                             ; $4c56: $38 $02

    ld [bc], a                                    ; $4c58: $02
    ld [bc], a                                    ; $4c59: $02

jr_083_4c5a:
    ld [bc], a                                    ; $4c5a: $02
    ld [bc], a                                    ; $4c5b: $02
    dec b                                         ; $4c5c: $05
    dec b                                         ; $4c5d: $05
    ld [bc], a                                    ; $4c5e: $02
    ld [bc], a                                    ; $4c5f: $02
    dec b                                         ; $4c60: $05
    ld [bc], a                                    ; $4c61: $02
    ld [bc], a                                    ; $4c62: $02
    dec b                                         ; $4c63: $05
    dec b                                         ; $4c64: $05
    ld [bc], a                                    ; $4c65: $02
    dec b                                         ; $4c66: $05
    ld d, a                                       ; $4c67: $57
    ld e, b                                       ; $4c68: $58
    ld e, c                                       ; $4c69: $59
    ld e, d                                       ; $4c6a: $5a
    dec a                                         ; $4c6b: $3d
    ld a, $3f                                     ; $4c6c: $3e $3f
    ld b, b                                       ; $4c6e: $40
    ld b, c                                       ; $4c6f: $41
    ld b, d                                       ; $4c70: $42
    ld b, e                                       ; $4c71: $43
    ld b, h                                       ; $4c72: $44
    ld b, l                                       ; $4c73: $45
    ld b, [hl]                                    ; $4c74: $46
    ld b, a                                       ; $4c75: $47
    ld c, b                                       ; $4c76: $48
    ld [bc], a                                    ; $4c77: $02
    ld [bc], a                                    ; $4c78: $02
    dec b                                         ; $4c79: $05
    ld [bc], a                                    ; $4c7a: $02
    ld [bc], a                                    ; $4c7b: $02
    ld [bc], a                                    ; $4c7c: $02
    ld [bc], a                                    ; $4c7d: $02
    dec b                                         ; $4c7e: $05
    dec b                                         ; $4c7f: $05

jr_083_4c80:
    dec b                                         ; $4c80: $05
    ld [bc], a                                    ; $4c81: $02
    ld [bc], a                                    ; $4c82: $02
    dec b                                         ; $4c83: $05
    ld [bc], a                                    ; $4c84: $02
    ld [bc], a                                    ; $4c85: $02
    ld [bc], a                                    ; $4c86: $02
    ld h, c                                       ; $4c87: $61
    ld h, d                                       ; $4c88: $62
    ld c, l                                       ; $4c89: $4d
    ld c, [hl]                                    ; $4c8a: $4e
    ld h, e                                       ; $4c8b: $63
    ld h, h                                       ; $4c8c: $64
    jr nc, jr_083_4cc0                            ; $4c8d: $30 $31

    ld [hl], e                                    ; $4c8f: $73
    ld [hl], h                                    ; $4c90: $74
    inc [hl]                                      ; $4c91: $34
    dec [hl]                                      ; $4c92: $35
    ld [hl], l                                    ; $4c93: $75
    halt                                          ; $4c94: $76
    scf                                           ; $4c95: $37
    jr c, jr_083_4c9a                             ; $4c96: $38 $02

    ld [bc], a                                    ; $4c98: $02
    ld [bc], a                                    ; $4c99: $02

jr_083_4c9a:
    dec b                                         ; $4c9a: $05
    dec b                                         ; $4c9b: $05
    ld [bc], a                                    ; $4c9c: $02
    dec b                                         ; $4c9d: $05
    ld [bc], a                                    ; $4c9e: $02
    dec b                                         ; $4c9f: $05
    ld [bc], a                                    ; $4ca0: $02
    dec b                                         ; $4ca1: $05
    ld [bc], a                                    ; $4ca2: $02
    dec b                                         ; $4ca3: $05
    ld [bc], a                                    ; $4ca4: $02
    ld [bc], a                                    ; $4ca5: $02
    ld [bc], a                                    ; $4ca6: $02
    ld d, a                                       ; $4ca7: $57
    ld e, b                                       ; $4ca8: $58
    ld e, c                                       ; $4ca9: $59
    ld e, d                                       ; $4caa: $5a
    dec a                                         ; $4cab: $3d
    ld a, $3f                                     ; $4cac: $3e $3f
    ld b, b                                       ; $4cae: $40
    ld b, c                                       ; $4caf: $41
    ld b, d                                       ; $4cb0: $42
    ld b, e                                       ; $4cb1: $43
    ld b, h                                       ; $4cb2: $44
    ld b, l                                       ; $4cb3: $45
    ld b, [hl]                                    ; $4cb4: $46
    ld b, a                                       ; $4cb5: $47
    ld c, b                                       ; $4cb6: $48
    dec b                                         ; $4cb7: $05
    dec b                                         ; $4cb8: $05
    ld [bc], a                                    ; $4cb9: $02
    ld [bc], a                                    ; $4cba: $02
    dec b                                         ; $4cbb: $05
    dec b                                         ; $4cbc: $05
    ld [bc], a                                    ; $4cbd: $02
    ld [bc], a                                    ; $4cbe: $02
    dec b                                         ; $4cbf: $05

jr_083_4cc0:
    ld [bc], a                                    ; $4cc0: $02
    ld [bc], a                                    ; $4cc1: $02
    ld [bc], a                                    ; $4cc2: $02
    dec b                                         ; $4cc3: $05
    dec b                                         ; $4cc4: $05
    dec b                                         ; $4cc5: $05
    dec b                                         ; $4cc6: $05
    ld e, e                                       ; $4cc7: $5b
    ld e, h                                       ; $4cc8: $5c
    ld e, l                                       ; $4cc9: $5d
    ld e, [hl]                                    ; $4cca: $5e
    ld e, a                                       ; $4ccb: $5f
    ld h, b                                       ; $4ccc: $60
    ld c, e                                       ; $4ccd: $4b
    ld c, h                                       ; $4cce: $4c
    ld h, c                                       ; $4ccf: $61
    ld h, d                                       ; $4cd0: $62
    ld c, l                                       ; $4cd1: $4d
    ld c, [hl]                                    ; $4cd2: $4e
    ld h, e                                       ; $4cd3: $63
    ld h, h                                       ; $4cd4: $64
    jr nc, jr_083_4d08                            ; $4cd5: $30 $31

    dec b                                         ; $4cd7: $05
    ld [bc], a                                    ; $4cd8: $02
    dec b                                         ; $4cd9: $05
    ld [bc], a                                    ; $4cda: $02
    ld [bc], a                                    ; $4cdb: $02
    dec b                                         ; $4cdc: $05
    ld [bc], a                                    ; $4cdd: $02
    dec b                                         ; $4cde: $05
    ld [bc], a                                    ; $4cdf: $02
    ld [bc], a                                    ; $4ce0: $02
    dec b                                         ; $4ce1: $05
    ld [bc], a                                    ; $4ce2: $02
    ld [bc], a                                    ; $4ce3: $02
    ld [bc], a                                    ; $4ce4: $02
    dec b                                         ; $4ce5: $05
    ld [bc], a                                    ; $4ce6: $02
    ld h, l                                       ; $4ce7: $65
    ld h, [hl]                                    ; $4ce8: $66
    ld h, a                                       ; $4ce9: $67
    ld l, b                                       ; $4cea: $68
    ld d, e                                       ; $4ceb: $53
    ld d, h                                       ; $4cec: $54
    ld d, l                                       ; $4ced: $55
    ld d, [hl]                                    ; $4cee: $56
    ld d, a                                       ; $4cef: $57
    ld e, b                                       ; $4cf0: $58
    ld e, c                                       ; $4cf1: $59
    ld e, d                                       ; $4cf2: $5a
    dec a                                         ; $4cf3: $3d
    ld a, $3f                                     ; $4cf4: $3e $3f
    ld b, b                                       ; $4cf6: $40
    ld [bc], a                                    ; $4cf7: $02
    ld [bc], a                                    ; $4cf8: $02
    dec b                                         ; $4cf9: $05
    ld [bc], a                                    ; $4cfa: $02
    ld [bc], a                                    ; $4cfb: $02
    ld [bc], a                                    ; $4cfc: $02
    dec b                                         ; $4cfd: $05
    dec b                                         ; $4cfe: $05
    ld [bc], a                                    ; $4cff: $02
    dec b                                         ; $4d00: $05
    ld [bc], a                                    ; $4d01: $02
    dec b                                         ; $4d02: $05
    ld [bc], a                                    ; $4d03: $02
    dec b                                         ; $4d04: $05
    ld [bc], a                                    ; $4d05: $02
    ld [bc], a                                    ; $4d06: $02
    ld e, e                                       ; $4d07: $5b

jr_083_4d08:
    ld e, h                                       ; $4d08: $5c
    ld e, l                                       ; $4d09: $5d
    ld e, [hl]                                    ; $4d0a: $5e
    ld e, a                                       ; $4d0b: $5f
    ld h, b                                       ; $4d0c: $60
    ld c, e                                       ; $4d0d: $4b
    ld c, h                                       ; $4d0e: $4c
    ld h, c                                       ; $4d0f: $61
    ld h, d                                       ; $4d10: $62
    ld c, l                                       ; $4d11: $4d
    ld c, [hl]                                    ; $4d12: $4e
    ld h, e                                       ; $4d13: $63
    ld h, h                                       ; $4d14: $64
    jr nc, jr_083_4d48                            ; $4d15: $30 $31

    ld [bc], a                                    ; $4d17: $02
    ld [bc], a                                    ; $4d18: $02
    dec b                                         ; $4d19: $05
    ld [bc], a                                    ; $4d1a: $02
    dec b                                         ; $4d1b: $05
    ld [bc], a                                    ; $4d1c: $02
    ld [bc], a                                    ; $4d1d: $02
    ld [bc], a                                    ; $4d1e: $02
    ld [bc], a                                    ; $4d1f: $02
    ld [bc], a                                    ; $4d20: $02
    ld [bc], a                                    ; $4d21: $02
    ld [bc], a                                    ; $4d22: $02
    ld [bc], a                                    ; $4d23: $02
    dec b                                         ; $4d24: $05
    dec b                                         ; $4d25: $05
    ld [bc], a                                    ; $4d26: $02
    ld h, l                                       ; $4d27: $65
    ld h, [hl]                                    ; $4d28: $66
    ld h, a                                       ; $4d29: $67
    ld l, b                                       ; $4d2a: $68
    ld d, e                                       ; $4d2b: $53
    ld d, h                                       ; $4d2c: $54
    ld d, l                                       ; $4d2d: $55
    ld d, [hl]                                    ; $4d2e: $56
    ld d, a                                       ; $4d2f: $57
    ld e, b                                       ; $4d30: $58
    ld e, c                                       ; $4d31: $59
    ld e, d                                       ; $4d32: $5a
    dec a                                         ; $4d33: $3d
    ld a, $3f                                     ; $4d34: $3e $3f
    ld b, b                                       ; $4d36: $40
    dec b                                         ; $4d37: $05
    dec b                                         ; $4d38: $05
    dec b                                         ; $4d39: $05
    dec b                                         ; $4d3a: $05
    ld [bc], a                                    ; $4d3b: $02
    dec b                                         ; $4d3c: $05
    ld [bc], a                                    ; $4d3d: $02
    ld [bc], a                                    ; $4d3e: $02
    dec b                                         ; $4d3f: $05
    ld [bc], a                                    ; $4d40: $02
    ld [bc], a                                    ; $4d41: $02
    ld [bc], a                                    ; $4d42: $02
    ld [bc], a                                    ; $4d43: $02
    ld [bc], a                                    ; $4d44: $02
    ld [bc], a                                    ; $4d45: $02
    dec b                                         ; $4d46: $05
    ld [hl], e                                    ; $4d47: $73

jr_083_4d48:
    ld [hl], h                                    ; $4d48: $74
    inc [hl]                                      ; $4d49: $34
    dec [hl]                                      ; $4d4a: $35
    ld [hl], l                                    ; $4d4b: $75
    halt                                          ; $4d4c: $76
    scf                                           ; $4d4d: $37
    jr c, jr_083_4dab                             ; $4d4e: $38 $5b

    ld e, h                                       ; $4d50: $5c
    ld e, l                                       ; $4d51: $5d
    ld e, [hl]                                    ; $4d52: $5e
    ld e, a                                       ; $4d53: $5f
    ld h, b                                       ; $4d54: $60
    ld c, e                                       ; $4d55: $4b
    ld c, h                                       ; $4d56: $4c
    dec b                                         ; $4d57: $05
    ld [bc], a                                    ; $4d58: $02
    ld [bc], a                                    ; $4d59: $02
    ld [bc], a                                    ; $4d5a: $02
    ld [bc], a                                    ; $4d5b: $02
    ld [bc], a                                    ; $4d5c: $02
    dec b                                         ; $4d5d: $05
    dec b                                         ; $4d5e: $05
    dec b                                         ; $4d5f: $05
    dec b                                         ; $4d60: $05
    dec b                                         ; $4d61: $05
    ld [bc], a                                    ; $4d62: $02
    dec b                                         ; $4d63: $05
    dec b                                         ; $4d64: $05
    ld [bc], a                                    ; $4d65: $02
    ld [bc], a                                    ; $4d66: $02
    ld b, c                                       ; $4d67: $41
    ld b, d                                       ; $4d68: $42
    ld b, e                                       ; $4d69: $43
    ld b, h                                       ; $4d6a: $44
    ld b, l                                       ; $4d6b: $45
    ld b, [hl]                                    ; $4d6c: $46
    ld b, a                                       ; $4d6d: $47
    ld c, b                                       ; $4d6e: $48
    ld h, l                                       ; $4d6f: $65
    ld h, [hl]                                    ; $4d70: $66
    ld h, a                                       ; $4d71: $67
    ld l, b                                       ; $4d72: $68
    ld d, e                                       ; $4d73: $53
    ld d, h                                       ; $4d74: $54
    ld d, l                                       ; $4d75: $55
    ld d, [hl]                                    ; $4d76: $56
    dec b                                         ; $4d77: $05
    ld [bc], a                                    ; $4d78: $02
    ld [bc], a                                    ; $4d79: $02
    ld [bc], a                                    ; $4d7a: $02
    ld [bc], a                                    ; $4d7b: $02
    ld [bc], a                                    ; $4d7c: $02
    ld [bc], a                                    ; $4d7d: $02
    dec b                                         ; $4d7e: $05
    ld [bc], a                                    ; $4d7f: $02
    dec b                                         ; $4d80: $05
    dec b                                         ; $4d81: $05
    ld [bc], a                                    ; $4d82: $02
    ld [bc], a                                    ; $4d83: $02
    ld [bc], a                                    ; $4d84: $02
    ld [bc], a                                    ; $4d85: $02
    ld [bc], a                                    ; $4d86: $02
    ld [hl], e                                    ; $4d87: $73
    ld [hl], h                                    ; $4d88: $74
    inc [hl]                                      ; $4d89: $34
    dec [hl]                                      ; $4d8a: $35
    ld [hl], l                                    ; $4d8b: $75
    halt                                          ; $4d8c: $76
    scf                                           ; $4d8d: $37
    jr c, jr_083_4deb                             ; $4d8e: $38 $5b

    ld e, h                                       ; $4d90: $5c
    ld e, l                                       ; $4d91: $5d
    ld e, [hl]                                    ; $4d92: $5e
    ld e, a                                       ; $4d93: $5f
    ld h, b                                       ; $4d94: $60
    ld c, e                                       ; $4d95: $4b
    ld c, h                                       ; $4d96: $4c
    ld [bc], a                                    ; $4d97: $02
    dec b                                         ; $4d98: $05
    ld [bc], a                                    ; $4d99: $02
    ld [bc], a                                    ; $4d9a: $02
    ld [bc], a                                    ; $4d9b: $02
    ld [bc], a                                    ; $4d9c: $02
    ld [bc], a                                    ; $4d9d: $02
    dec b                                         ; $4d9e: $05
    dec b                                         ; $4d9f: $05
    ld [bc], a                                    ; $4da0: $02
    ld [bc], a                                    ; $4da1: $02
    dec b                                         ; $4da2: $05
    ld [bc], a                                    ; $4da3: $02
    dec b                                         ; $4da4: $05
    ld [bc], a                                    ; $4da5: $02
    dec b                                         ; $4da6: $05
    ld b, c                                       ; $4da7: $41
    ld b, d                                       ; $4da8: $42
    ld b, e                                       ; $4da9: $43
    ld b, h                                       ; $4daa: $44

jr_083_4dab:
    ld b, l                                       ; $4dab: $45
    ld b, [hl]                                    ; $4dac: $46
    ld b, a                                       ; $4dad: $47
    ld c, b                                       ; $4dae: $48
    ld h, l                                       ; $4daf: $65
    ld h, [hl]                                    ; $4db0: $66
    ld h, a                                       ; $4db1: $67
    ld l, b                                       ; $4db2: $68
    ld d, e                                       ; $4db3: $53
    ld d, h                                       ; $4db4: $54
    ld d, l                                       ; $4db5: $55
    ld d, [hl]                                    ; $4db6: $56
    dec b                                         ; $4db7: $05
    dec b                                         ; $4db8: $05
    ld [bc], a                                    ; $4db9: $02
    ld [bc], a                                    ; $4dba: $02
    dec b                                         ; $4dbb: $05
    ld [bc], a                                    ; $4dbc: $02
    ld [bc], a                                    ; $4dbd: $02
    ld [bc], a                                    ; $4dbe: $02
    ld [bc], a                                    ; $4dbf: $02
    ld [bc], a                                    ; $4dc0: $02
    dec b                                         ; $4dc1: $05
    dec b                                         ; $4dc2: $05
    ld [bc], a                                    ; $4dc3: $02
    dec b                                         ; $4dc4: $05
    ld [bc], a                                    ; $4dc5: $02
    dec b                                         ; $4dc6: $05
    ld h, c                                       ; $4dc7: $61
    ld h, d                                       ; $4dc8: $62
    ld c, l                                       ; $4dc9: $4d
    ld c, [hl]                                    ; $4dca: $4e
    ld h, e                                       ; $4dcb: $63
    pop de                                        ; $4dcc: $d1
    jp nc, $d4d3                                  ; $4dcd: $d2 $d3 $d4

    push de                                       ; $4dd0: $d5
    sub $d7                                       ; $4dd1: $d6 $d7
    ret c                                         ; $4dd3: $d8

    reti                                          ; $4dd4: $d9


    jp c, Jump_000_02db                           ; $4dd5: $da $db $02

    ld [bc], a                                    ; $4dd8: $02
    ld [bc], a                                    ; $4dd9: $02
    ld [bc], a                                    ; $4dda: $02
    inc bc                                        ; $4ddb: $03
    add hl, bc                                    ; $4ddc: $09
    add hl, bc                                    ; $4ddd: $09
    add hl, bc                                    ; $4dde: $09
    add hl, bc                                    ; $4ddf: $09
    add hl, bc                                    ; $4de0: $09
    add hl, bc                                    ; $4de1: $09
    add hl, bc                                    ; $4de2: $09
    add hl, bc                                    ; $4de3: $09
    add hl, bc                                    ; $4de4: $09
    add hl, bc                                    ; $4de5: $09
    add hl, bc                                    ; $4de6: $09
    ld d, a                                       ; $4de7: $57
    ld e, b                                       ; $4de8: $58
    ld e, c                                       ; $4de9: $59
    ld e, d                                       ; $4dea: $5a

jr_083_4deb:
    dec a                                         ; $4deb: $3d
    ld a, $3f                                     ; $4dec: $3e $3f
    ld b, b                                       ; $4dee: $40
    call c, Call_083_4342                         ; $4def: $dc $42 $43
    ld b, h                                       ; $4df2: $44
    db $dd                                        ; $4df3: $dd
    sbc $47                                       ; $4df4: $de $47
    ld c, b                                       ; $4df6: $48
    ld [bc], a                                    ; $4df7: $02
    dec b                                         ; $4df8: $05
    dec b                                         ; $4df9: $05
    ld [bc], a                                    ; $4dfa: $02
    dec b                                         ; $4dfb: $05
    dec b                                         ; $4dfc: $05
    dec b                                         ; $4dfd: $05
    dec b                                         ; $4dfe: $05
    add hl, bc                                    ; $4dff: $09
    ld [bc], a                                    ; $4e00: $02
    ld [bc], a                                    ; $4e01: $02
    dec b                                         ; $4e02: $05
    add hl, bc                                    ; $4e03: $09
    add hl, bc                                    ; $4e04: $09
    ld [bc], a                                    ; $4e05: $02
    ld [bc], a                                    ; $4e06: $02
    ld h, c                                       ; $4e07: $61
    ld h, d                                       ; $4e08: $62
    ld c, l                                       ; $4e09: $4d
    ld c, [hl]                                    ; $4e0a: $4e
    ld h, e                                       ; $4e0b: $63
    ld h, h                                       ; $4e0c: $64
    jr nc, jr_083_4e40                            ; $4e0d: $30 $31

    ld [hl], e                                    ; $4e0f: $73
    ld [hl], h                                    ; $4e10: $74
    inc [hl]                                      ; $4e11: $34
    dec [hl]                                      ; $4e12: $35
    ld [hl], l                                    ; $4e13: $75
    halt                                          ; $4e14: $76
    scf                                           ; $4e15: $37
    jr c, jr_083_4e1a                             ; $4e16: $38 $02

    ld [bc], a                                    ; $4e18: $02
    ld [bc], a                                    ; $4e19: $02

jr_083_4e1a:
    dec b                                         ; $4e1a: $05
    ld [bc], a                                    ; $4e1b: $02
    ld [bc], a                                    ; $4e1c: $02
    ld [bc], a                                    ; $4e1d: $02
    ld [bc], a                                    ; $4e1e: $02
    dec b                                         ; $4e1f: $05
    ld [bc], a                                    ; $4e20: $02
    dec b                                         ; $4e21: $05
    ld [bc], a                                    ; $4e22: $02
    ld [bc], a                                    ; $4e23: $02
    dec b                                         ; $4e24: $05
    dec b                                         ; $4e25: $05
    ld [bc], a                                    ; $4e26: $02
    ld d, a                                       ; $4e27: $57
    ld e, b                                       ; $4e28: $58
    ld e, c                                       ; $4e29: $59
    ld e, d                                       ; $4e2a: $5a
    dec a                                         ; $4e2b: $3d
    ld a, $3f                                     ; $4e2c: $3e $3f
    ld b, b                                       ; $4e2e: $40
    ld b, c                                       ; $4e2f: $41
    ld b, d                                       ; $4e30: $42
    ld b, e                                       ; $4e31: $43
    ld b, h                                       ; $4e32: $44
    ld b, l                                       ; $4e33: $45
    ld b, [hl]                                    ; $4e34: $46
    ld b, a                                       ; $4e35: $47
    ld c, b                                       ; $4e36: $48
    dec b                                         ; $4e37: $05
    dec b                                         ; $4e38: $05
    dec b                                         ; $4e39: $05
    dec b                                         ; $4e3a: $05
    ld [bc], a                                    ; $4e3b: $02
    ld [bc], a                                    ; $4e3c: $02
    dec b                                         ; $4e3d: $05
    ld [bc], a                                    ; $4e3e: $02
    ld [bc], a                                    ; $4e3f: $02

jr_083_4e40:
    ld [bc], a                                    ; $4e40: $02
    ld [bc], a                                    ; $4e41: $02
    dec b                                         ; $4e42: $05
    ld [bc], a                                    ; $4e43: $02
    dec b                                         ; $4e44: $05
    ld [bc], a                                    ; $4e45: $02
    ld [bc], a                                    ; $4e46: $02
    ld h, c                                       ; $4e47: $61
    ld h, d                                       ; $4e48: $62
    ld a, h                                       ; $4e49: $7c
    pop af                                        ; $4e4a: $f1
    ld h, e                                       ; $4e4b: $63
    ld h, h                                       ; $4e4c: $64
    ld a, l                                       ; $4e4d: $7d
    ld [de], a                                    ; $4e4e: $12
    ld [hl], e                                    ; $4e4f: $73
    ld [hl], h                                    ; $4e50: $74
    ld a, a                                       ; $4e51: $7f
    inc d                                         ; $4e52: $14
    ld [hl], l                                    ; $4e53: $75
    halt                                          ; $4e54: $76
    add c                                         ; $4e55: $81
    ld d, $02                                     ; $4e56: $16 $02
    inc bc                                        ; $4e58: $03
    add b                                         ; $4e59: $80
    add b                                         ; $4e5a: $80
    dec b                                         ; $4e5b: $05
    inc bc                                        ; $4e5c: $03
    inc b                                         ; $4e5d: $04
    inc b                                         ; $4e5e: $04
    ld [bc], a                                    ; $4e5f: $02
    inc bc                                        ; $4e60: $03
    inc b                                         ; $4e61: $04
    inc b                                         ; $4e62: $04
    dec b                                         ; $4e63: $05
    inc bc                                        ; $4e64: $03
    inc c                                         ; $4e65: $0c
    inc b                                         ; $4e66: $04
    ld a, e                                       ; $4e67: $7b
    db $ed                                        ; $4e68: $ed
    db $ed                                        ; $4e69: $ed
    db $ed                                        ; $4e6a: $ed
    rst $28                                       ; $4e6b: $ef
    db $ed                                        ; $4e6c: $ed
    db $ed                                        ; $4e6d: $ed
    db $ed                                        ; $4e6e: $ed
    ldh a, [$ed]                                  ; $4e6f: $f0 $ed
    db $ed                                        ; $4e71: $ed
    db $ed                                        ; $4e72: $ed
    ldh a, [$ed]                                  ; $4e73: $f0 $ed
    db $ed                                        ; $4e75: $ed
    db $ed                                        ; $4e76: $ed
    add b                                         ; $4e77: $80
    add b                                         ; $4e78: $80
    add b                                         ; $4e79: $80
    add b                                         ; $4e7a: $80
    add b                                         ; $4e7b: $80
    add b                                         ; $4e7c: $80
    add b                                         ; $4e7d: $80
    add b                                         ; $4e7e: $80
    add b                                         ; $4e7f: $80
    add b                                         ; $4e80: $80
    add b                                         ; $4e81: $80
    add b                                         ; $4e82: $80
    add b                                         ; $4e83: $80
    add b                                         ; $4e84: $80
    add b                                         ; $4e85: $80
    add b                                         ; $4e86: $80
    db $ed                                        ; $4e87: $ed
    db $ed                                        ; $4e88: $ed
    db $ed                                        ; $4e89: $ed
    db $ed                                        ; $4e8a: $ed
    db $ed                                        ; $4e8b: $ed
    db $ed                                        ; $4e8c: $ed
    xor $f1                                       ; $4e8d: $ee $f1
    db $ed                                        ; $4e8f: $ed
    db $ed                                        ; $4e90: $ed
    rst $28                                       ; $4e91: $ef
    dec de                                        ; $4e92: $1b
    db $ed                                        ; $4e93: $ed
    db $ed                                        ; $4e94: $ed
    rst $28                                       ; $4e95: $ef
    rra                                           ; $4e96: $1f
    add b                                         ; $4e97: $80
    add b                                         ; $4e98: $80
    add b                                         ; $4e99: $80
    add b                                         ; $4e9a: $80
    add b                                         ; $4e9b: $80
    add b                                         ; $4e9c: $80
    add b                                         ; $4e9d: $80
    add b                                         ; $4e9e: $80
    add b                                         ; $4e9f: $80
    add b                                         ; $4ea0: $80
    add b                                         ; $4ea1: $80
    inc b                                         ; $4ea2: $04
    add b                                         ; $4ea3: $80
    add b                                         ; $4ea4: $80
    add b                                         ; $4ea5: $80
    inc b                                         ; $4ea6: $04
    ld e, e                                       ; $4ea7: $5b
    ld e, h                                       ; $4ea8: $5c
    add d                                         ; $4ea9: $82
    jr jr_083_4f0b                                ; $4eaa: $18 $5f

    ld h, b                                       ; $4eac: $60
    add e                                         ; $4ead: $83
    ld c, c                                       ; $4eae: $49
    ld h, c                                       ; $4eaf: $61
    ld h, d                                       ; $4eb0: $62
    inc [hl]                                      ; $4eb1: $34
    dec [hl]                                      ; $4eb2: $35
    ld h, e                                       ; $4eb3: $63
    ld h, h                                       ; $4eb4: $64
    scf                                           ; $4eb5: $37
    jr c, jr_083_4ebd                             ; $4eb6: $38 $05

    inc bc                                        ; $4eb8: $03
    inc c                                         ; $4eb9: $0c
    inc b                                         ; $4eba: $04
    ld [bc], a                                    ; $4ebb: $02
    inc bc                                        ; $4ebc: $03

jr_083_4ebd:
    inc c                                         ; $4ebd: $0c
    inc b                                         ; $4ebe: $04
    ld [bc], a                                    ; $4ebf: $02
    inc bc                                        ; $4ec0: $03
    inc bc                                        ; $4ec1: $03
    inc bc                                        ; $4ec2: $03
    dec b                                         ; $4ec3: $05
    ld [bc], a                                    ; $4ec4: $02
    ld [bc], a                                    ; $4ec5: $02
    inc bc                                        ; $4ec6: $03
    ldh a, [$ed]                                  ; $4ec7: $f0 $ed
    db $ed                                        ; $4ec9: $ed
    db $ed                                        ; $4eca: $ed
    ldh a, [$ed]                                  ; $4ecb: $f0 $ed
    db $ed                                        ; $4ecd: $ed
    db $ed                                        ; $4ece: $ed
    ldh a, [$84]                                  ; $4ecf: $f0 $84
    db $ed                                        ; $4ed1: $ed
    db $ed                                        ; $4ed2: $ed
    rst $28                                       ; $4ed3: $ef
    add h                                         ; $4ed4: $84
    db $ed                                        ; $4ed5: $ed
    db $ed                                        ; $4ed6: $ed
    add b                                         ; $4ed7: $80
    add b                                         ; $4ed8: $80
    add b                                         ; $4ed9: $80
    add b                                         ; $4eda: $80
    add b                                         ; $4edb: $80
    add b                                         ; $4edc: $80
    add b                                         ; $4edd: $80
    add b                                         ; $4ede: $80
    add b                                         ; $4edf: $80
    xor b                                         ; $4ee0: $a8
    add b                                         ; $4ee1: $80
    add b                                         ; $4ee2: $80
    add b                                         ; $4ee3: $80
    xor b                                         ; $4ee4: $a8
    add b                                         ; $4ee5: $80
    add b                                         ; $4ee6: $80
    db $ed                                        ; $4ee7: $ed
    db $ed                                        ; $4ee8: $ed
    rst $28                                       ; $4ee9: $ef
    inc hl                                        ; $4eea: $23
    db $ed                                        ; $4eeb: $ed
    db $ed                                        ; $4eec: $ed
    rst $28                                       ; $4eed: $ef
    daa                                           ; $4eee: $27
    db $ed                                        ; $4eef: $ed
    db $ed                                        ; $4ef0: $ed
    rst $28                                       ; $4ef1: $ef
    ld d, b                                       ; $4ef2: $50
    db $ed                                        ; $4ef3: $ed
    db $ed                                        ; $4ef4: $ed
    rst $28                                       ; $4ef5: $ef
    ld b, b                                       ; $4ef6: $40
    add b                                         ; $4ef7: $80
    add b                                         ; $4ef8: $80
    add b                                         ; $4ef9: $80
    inc b                                         ; $4efa: $04
    add b                                         ; $4efb: $80
    add b                                         ; $4efc: $80
    add b                                         ; $4efd: $80
    inc b                                         ; $4efe: $04
    add b                                         ; $4eff: $80
    add b                                         ; $4f00: $80
    add b                                         ; $4f01: $80
    inc b                                         ; $4f02: $04
    add b                                         ; $4f03: $80
    add b                                         ; $4f04: $80
    add b                                         ; $4f05: $80
    inc bc                                        ; $4f06: $03
    ld [hl], e                                    ; $4f07: $73
    ld [hl], h                                    ; $4f08: $74
    xor $f1                                       ; $4f09: $ee $f1

jr_083_4f0b:
    ld [hl], l                                    ; $4f0b: $75
    halt                                          ; $4f0c: $76
    rst $28                                       ; $4f0d: $ef
    db $ed                                        ; $4f0e: $ed
    ld e, e                                       ; $4f0f: $5b
    ld e, h                                       ; $4f10: $5c
    ld a, h                                       ; $4f11: $7c
    pop af                                        ; $4f12: $f1
    ld e, a                                       ; $4f13: $5f
    ld h, b                                       ; $4f14: $60
    ld a, l                                       ; $4f15: $7d
    ld [de], a                                    ; $4f16: $12
    ld [bc], a                                    ; $4f17: $02
    ld [bc], a                                    ; $4f18: $02
    add b                                         ; $4f19: $80
    add b                                         ; $4f1a: $80
    ld [bc], a                                    ; $4f1b: $02
    ld [bc], a                                    ; $4f1c: $02
    add b                                         ; $4f1d: $80
    add b                                         ; $4f1e: $80
    ld [bc], a                                    ; $4f1f: $02
    inc bc                                        ; $4f20: $03
    add b                                         ; $4f21: $80
    add b                                         ; $4f22: $80
    ld [bc], a                                    ; $4f23: $02
    inc bc                                        ; $4f24: $03
    inc b                                         ; $4f25: $04
    inc b                                         ; $4f26: $04
    db $f4                                        ; $4f27: $f4
    add h                                         ; $4f28: $84
    db $ed                                        ; $4f29: $ed
    db $ed                                        ; $4f2a: $ed
    db $ed                                        ; $4f2b: $ed
    db $ed                                        ; $4f2c: $ed
    db $ed                                        ; $4f2d: $ed
    db $ed                                        ; $4f2e: $ed
    pop af                                        ; $4f2f: $f1
    pop af                                        ; $4f30: $f1
    pop af                                        ; $4f31: $f1
    pop af                                        ; $4f32: $f1
    inc de                                        ; $4f33: $13
    ld a, [de]                                    ; $4f34: $1a
    dec de                                        ; $4f35: $1b
    inc e                                         ; $4f36: $1c
    add b                                         ; $4f37: $80
    xor b                                         ; $4f38: $a8
    add b                                         ; $4f39: $80
    add b                                         ; $4f3a: $80
    add b                                         ; $4f3b: $80
    add b                                         ; $4f3c: $80
    add b                                         ; $4f3d: $80
    add b                                         ; $4f3e: $80
    add b                                         ; $4f3f: $80
    add b                                         ; $4f40: $80
    add b                                         ; $4f41: $80
    add b                                         ; $4f42: $80
    inc b                                         ; $4f43: $04
    inc b                                         ; $4f44: $04
    inc b                                         ; $4f45: $04
    inc b                                         ; $4f46: $04
    db $ed                                        ; $4f47: $ed
    db $ed                                        ; $4f48: $ed
    db $ed                                        ; $4f49: $ed
    db $ed                                        ; $4f4a: $ed
    db $ed                                        ; $4f4b: $ed
    db $ed                                        ; $4f4c: $ed
    db $ed                                        ; $4f4d: $ed
    db $ed                                        ; $4f4e: $ed
    pop af                                        ; $4f4f: $f1
    pop af                                        ; $4f50: $f1
    pop af                                        ; $4f51: $f1
    pop af                                        ; $4f52: $f1
    rst $18                                       ; $4f53: $df
    ld [de], a                                    ; $4f54: $12
    inc de                                        ; $4f55: $13
    ld a, [de]                                    ; $4f56: $1a
    add b                                         ; $4f57: $80
    add b                                         ; $4f58: $80
    add b                                         ; $4f59: $80
    add b                                         ; $4f5a: $80
    add b                                         ; $4f5b: $80
    add b                                         ; $4f5c: $80
    add b                                         ; $4f5d: $80
    add b                                         ; $4f5e: $80
    add b                                         ; $4f5f: $80
    add b                                         ; $4f60: $80
    add b                                         ; $4f61: $80
    add b                                         ; $4f62: $80
    inc c                                         ; $4f63: $0c
    inc b                                         ; $4f64: $04
    inc b                                         ; $4f65: $04
    inc b                                         ; $4f66: $04
    db $ed                                        ; $4f67: $ed
    db $ed                                        ; $4f68: $ed
    rst $28                                       ; $4f69: $ef
    ld b, h                                       ; $4f6a: $44
    db $ed                                        ; $4f6b: $ed
    db $ed                                        ; $4f6c: $ed
    rst $28                                       ; $4f6d: $ef
    ld c, b                                       ; $4f6e: $48
    pop af                                        ; $4f6f: $f1
    pop af                                        ; $4f70: $f1
    db $f4                                        ; $4f71: $f4
    ld l, b                                       ; $4f72: $68
    dec de                                        ; $4f73: $1b
    inc e                                         ; $4f74: $1c
    dec e                                         ; $4f75: $1d
    ld d, [hl]                                    ; $4f76: $56
    add b                                         ; $4f77: $80
    add b                                         ; $4f78: $80
    add b                                         ; $4f79: $80
    inc bc                                        ; $4f7a: $03
    add b                                         ; $4f7b: $80
    add b                                         ; $4f7c: $80
    add b                                         ; $4f7d: $80
    inc bc                                        ; $4f7e: $03
    add b                                         ; $4f7f: $80
    add b                                         ; $4f80: $80
    add b                                         ; $4f81: $80
    inc bc                                        ; $4f82: $03
    inc b                                         ; $4f83: $04
    inc b                                         ; $4f84: $04
    inc b                                         ; $4f85: $04
    inc bc                                        ; $4f86: $03
    ld h, c                                       ; $4f87: $61
    ld h, d                                       ; $4f88: $62
    ld a, a                                       ; $4f89: $7f
    inc d                                         ; $4f8a: $14
    ld h, e                                       ; $4f8b: $63
    ld h, h                                       ; $4f8c: $64
    add c                                         ; $4f8d: $81
    ld d, $73                                     ; $4f8e: $16 $73
    ld [hl], h                                    ; $4f90: $74
    add d                                         ; $4f91: $82
    jr jr_083_5009                                ; $4f92: $18 $75

    halt                                          ; $4f94: $76
    add e                                         ; $4f95: $83
    ld c, c                                       ; $4f96: $49
    ld [bc], a                                    ; $4f97: $02
    inc bc                                        ; $4f98: $03
    inc b                                         ; $4f99: $04
    inc b                                         ; $4f9a: $04
    dec b                                         ; $4f9b: $05
    inc bc                                        ; $4f9c: $03
    inc c                                         ; $4f9d: $0c
    inc b                                         ; $4f9e: $04
    dec b                                         ; $4f9f: $05
    inc bc                                        ; $4fa0: $03
    inc c                                         ; $4fa1: $0c
    inc b                                         ; $4fa2: $04
    ld [bc], a                                    ; $4fa3: $02
    inc bc                                        ; $4fa4: $03
    inc c                                         ; $4fa5: $0c
    inc b                                         ; $4fa6: $04
    dec d                                         ; $4fa7: $15
    ld e, $1f                                     ; $4fa8: $1e $1f
    jr nz, jr_083_4fc3                            ; $4faa: $20 $17

    ld [hl+], a                                   ; $4fac: $22
    inc hl                                        ; $4fad: $23
    inc h                                         ; $4fae: $24
    add hl, de                                    ; $4faf: $19
    ld h, $27                                     ; $4fb0: $26 $27
    jr z, jr_083_4ffe                             ; $4fb2: $28 $4a

    ld c, a                                       ; $4fb4: $4f
    ld d, b                                       ; $4fb5: $50
    ld d, c                                       ; $4fb6: $51
    inc b                                         ; $4fb7: $04
    inc b                                         ; $4fb8: $04
    inc b                                         ; $4fb9: $04
    inc b                                         ; $4fba: $04
    inc b                                         ; $4fbb: $04
    inc b                                         ; $4fbc: $04
    inc b                                         ; $4fbd: $04
    inc b                                         ; $4fbe: $04
    inc b                                         ; $4fbf: $04
    inc b                                         ; $4fc0: $04
    inc b                                         ; $4fc1: $04
    inc b                                         ; $4fc2: $04

jr_083_4fc3:
    inc b                                         ; $4fc3: $04
    inc b                                         ; $4fc4: $04
    inc b                                         ; $4fc5: $04
    inc b                                         ; $4fc6: $04
    ldh [rNR14], a                                ; $4fc7: $e0 $14
    dec d                                         ; $4fc9: $15
    ld e, $e1                                     ; $4fca: $1e $e1
    ld d, $17                                     ; $4fcc: $16 $17
    ld [hl+], a                                   ; $4fce: $22
    ld [c], a                                     ; $4fcf: $e2
    jr jr_083_4feb                                ; $4fd0: $18 $19

    ld h, $e3                                     ; $4fd2: $26 $e3
    ld c, c                                       ; $4fd4: $49
    ld c, d                                       ; $4fd5: $4a
    ld c, a                                       ; $4fd6: $4f
    inc c                                         ; $4fd7: $0c
    inc b                                         ; $4fd8: $04
    inc b                                         ; $4fd9: $04
    inc b                                         ; $4fda: $04
    inc c                                         ; $4fdb: $0c
    inc b                                         ; $4fdc: $04
    inc b                                         ; $4fdd: $04
    inc b                                         ; $4fde: $04
    inc c                                         ; $4fdf: $0c
    inc b                                         ; $4fe0: $04
    inc b                                         ; $4fe1: $04
    inc b                                         ; $4fe2: $04
    inc c                                         ; $4fe3: $0c
    inc b                                         ; $4fe4: $04
    inc b                                         ; $4fe5: $04
    inc b                                         ; $4fe6: $04
    rra                                           ; $4fe7: $1f
    jr nz, jr_083_500b                            ; $4fe8: $20 $21

    ld e, d                                       ; $4fea: $5a

jr_083_4feb:
    inc hl                                        ; $4feb: $23
    inc h                                         ; $4fec: $24
    dec h                                         ; $4fed: $25
    ld b, b                                       ; $4fee: $40
    daa                                           ; $4fef: $27
    jr z, jr_083_501b                             ; $4ff0: $28 $29

    ld b, h                                       ; $4ff2: $44
    ld d, b                                       ; $4ff3: $50
    ld d, c                                       ; $4ff4: $51

jr_083_4ff5:
    ld d, d                                       ; $4ff5: $52
    ld c, b                                       ; $4ff6: $48
    inc b                                         ; $4ff7: $04
    inc b                                         ; $4ff8: $04
    inc b                                         ; $4ff9: $04
    inc bc                                        ; $4ffa: $03
    inc b                                         ; $4ffb: $04
    inc b                                         ; $4ffc: $04
    inc b                                         ; $4ffd: $04

jr_083_4ffe:
    inc bc                                        ; $4ffe: $03
    inc b                                         ; $4fff: $04
    inc b                                         ; $5000: $04
    inc b                                         ; $5001: $04
    inc bc                                        ; $5002: $03
    inc b                                         ; $5003: $04
    inc b                                         ; $5004: $04
    inc b                                         ; $5005: $04
    inc bc                                        ; $5006: $03
    db $ed                                        ; $5007: $ed
    db $ed                                        ; $5008: $ed

jr_083_5009:
    db $ed                                        ; $5009: $ed
    db $ed                                        ; $500a: $ed

jr_083_500b:
    pop af                                        ; $500b: $f1
    pop af                                        ; $500c: $f1
    pop af                                        ; $500d: $f1
    pop af                                        ; $500e: $f1
    inc e                                         ; $500f: $1c
    rst $18                                       ; $5010: $df
    ld [de], a                                    ; $5011: $12
    inc de                                        ; $5012: $13
    jr nz, jr_083_4ff5                            ; $5013: $20 $e0

    inc d                                         ; $5015: $14
    dec d                                         ; $5016: $15

jr_083_5017:
    add b                                         ; $5017: $80
    add b                                         ; $5018: $80
    add b                                         ; $5019: $80
    add b                                         ; $501a: $80

jr_083_501b:
    add b                                         ; $501b: $80
    add b                                         ; $501c: $80
    add b                                         ; $501d: $80
    add b                                         ; $501e: $80
    inc b                                         ; $501f: $04
    inc c                                         ; $5020: $0c
    inc b                                         ; $5021: $04
    inc b                                         ; $5022: $04
    inc b                                         ; $5023: $04
    inc c                                         ; $5024: $0c
    inc b                                         ; $5025: $04
    inc b                                         ; $5026: $04
    db $ed                                        ; $5027: $ed
    db $ed                                        ; $5028: $ed
    db $ed                                        ; $5029: $ed
    db $ed                                        ; $502a: $ed
    pop af                                        ; $502b: $f1
    pop af                                        ; $502c: $f1
    pop af                                        ; $502d: $f1
    pop af                                        ; $502e: $f1
    ld a, [de]                                    ; $502f: $1a
    dec de                                        ; $5030: $1b
    inc e                                         ; $5031: $1c
    rst $18                                       ; $5032: $df
    ld e, $1f                                     ; $5033: $1e $1f
    jr nz, jr_083_5017                            ; $5035: $20 $e0

    add b                                         ; $5037: $80
    add b                                         ; $5038: $80
    add b                                         ; $5039: $80
    add b                                         ; $503a: $80
    add b                                         ; $503b: $80
    add b                                         ; $503c: $80
    add b                                         ; $503d: $80
    add b                                         ; $503e: $80
    inc b                                         ; $503f: $04
    inc b                                         ; $5040: $04
    inc b                                         ; $5041: $04
    inc c                                         ; $5042: $0c
    inc b                                         ; $5043: $04
    inc b                                         ; $5044: $04
    inc b                                         ; $5045: $04
    inc c                                         ; $5046: $0c
    db $ed                                        ; $5047: $ed
    db $ed                                        ; $5048: $ed
    db $ed                                        ; $5049: $ed
    db $ed                                        ; $504a: $ed
    ld a, e                                       ; $504b: $7b
    db $ed                                        ; $504c: $ed
    db $ed                                        ; $504d: $ed
    db $ed                                        ; $504e: $ed

jr_083_504f:
    rst $28                                       ; $504f: $ef
    db $ed                                        ; $5050: $ed
    db $ed                                        ; $5051: $ed
    db $ed                                        ; $5052: $ed
    ldh a, [$ed]                                  ; $5053: $f0 $ed
    db $ed                                        ; $5055: $ed
    db $ed                                        ; $5056: $ed
    add b                                         ; $5057: $80
    add b                                         ; $5058: $80
    add b                                         ; $5059: $80
    add b                                         ; $505a: $80
    add b                                         ; $505b: $80
    add b                                         ; $505c: $80
    add b                                         ; $505d: $80
    add b                                         ; $505e: $80
    add b                                         ; $505f: $80
    add b                                         ; $5060: $80
    add b                                         ; $5061: $80
    add b                                         ; $5062: $80
    add b                                         ; $5063: $80
    add b                                         ; $5064: $80
    add b                                         ; $5065: $80
    add b                                         ; $5066: $80
    inc h                                         ; $5067: $24
    pop hl                                        ; $5068: $e1
    ld d, $17                                     ; $5069: $16 $17
    jr z, jr_083_504f                             ; $506b: $28 $e2

    jr jr_083_5088                                ; $506d: $18 $19

    ld d, c                                       ; $506f: $51
    db $e3                                        ; $5070: $e3

jr_083_5071:
    ld c, c                                       ; $5071: $49
    ld c, d                                       ; $5072: $4a
    ld h, e                                       ; $5073: $63
    ld h, h                                       ; $5074: $64
    jr nc, @+$33                                  ; $5075: $30 $31

    inc b                                         ; $5077: $04
    inc c                                         ; $5078: $0c
    inc b                                         ; $5079: $04
    inc b                                         ; $507a: $04
    inc b                                         ; $507b: $04
    inc c                                         ; $507c: $0c
    inc b                                         ; $507d: $04
    inc b                                         ; $507e: $04
    inc b                                         ; $507f: $04
    inc c                                         ; $5080: $0c
    inc b                                         ; $5081: $04
    inc b                                         ; $5082: $04
    inc bc                                        ; $5083: $03
    inc bc                                        ; $5084: $03
    inc bc                                        ; $5085: $03
    inc bc                                        ; $5086: $03
    ld [hl+], a                                   ; $5087: $22

jr_083_5088:
    inc hl                                        ; $5088: $23
    inc h                                         ; $5089: $24
    pop hl                                        ; $508a: $e1
    ld h, $27                                     ; $508b: $26 $27
    jr z, jr_083_5071                             ; $508d: $28 $e2

    ld c, a                                       ; $508f: $4f
    ld d, b                                       ; $5090: $50
    ld d, c                                       ; $5091: $51
    db $e3                                        ; $5092: $e3
    dec a                                         ; $5093: $3d
    ld a, $3f                                     ; $5094: $3e $3f
    ld b, b                                       ; $5096: $40
    inc b                                         ; $5097: $04
    inc b                                         ; $5098: $04
    inc b                                         ; $5099: $04
    inc c                                         ; $509a: $0c
    inc b                                         ; $509b: $04
    inc b                                         ; $509c: $04
    inc b                                         ; $509d: $04
    inc c                                         ; $509e: $0c
    inc b                                         ; $509f: $04
    inc b                                         ; $50a0: $04
    inc b                                         ; $50a1: $04
    inc c                                         ; $50a2: $0c
    inc bc                                        ; $50a3: $03
    inc bc                                        ; $50a4: $03
    inc bc                                        ; $50a5: $03
    inc bc                                        ; $50a6: $03
    ldh a, [$ed]                                  ; $50a7: $f0 $ed
    db $ed                                        ; $50a9: $ed
    db $ed                                        ; $50aa: $ed
    ldh a, [$ed]                                  ; $50ab: $f0 $ed
    db $ed                                        ; $50ad: $ed
    db $ed                                        ; $50ae: $ed
    ldh a, [$ed]                                  ; $50af: $f0 $ed
    db $ed                                        ; $50b1: $ed
    db $ed                                        ; $50b2: $ed
    ldh a, [$84]                                  ; $50b3: $f0 $84
    db $ed                                        ; $50b5: $ed
    db $ed                                        ; $50b6: $ed
    add b                                         ; $50b7: $80
    add b                                         ; $50b8: $80
    add b                                         ; $50b9: $80
    add b                                         ; $50ba: $80
    add b                                         ; $50bb: $80
    add b                                         ; $50bc: $80
    add b                                         ; $50bd: $80
    add b                                         ; $50be: $80
    add b                                         ; $50bf: $80
    add b                                         ; $50c0: $80
    add b                                         ; $50c1: $80
    add b                                         ; $50c2: $80
    add b                                         ; $50c3: $80
    xor b                                         ; $50c4: $a8
    add b                                         ; $50c5: $80
    add b                                         ; $50c6: $80
    ld [hl], e                                    ; $50c7: $73
    ld [hl], h                                    ; $50c8: $74
    inc [hl]                                      ; $50c9: $34
    dec [hl]                                      ; $50ca: $35
    ld [hl], l                                    ; $50cb: $75
    halt                                          ; $50cc: $76
    scf                                           ; $50cd: $37
    jr c, jr_083_512b                             ; $50ce: $38 $5b

    ld e, h                                       ; $50d0: $5c
    ld e, l                                       ; $50d1: $5d
    ld e, [hl]                                    ; $50d2: $5e
    ld e, a                                       ; $50d3: $5f
    ld h, b                                       ; $50d4: $60
    ld c, e                                       ; $50d5: $4b
    ld c, h                                       ; $50d6: $4c
    ld [bc], a                                    ; $50d7: $02
    ld [bc], a                                    ; $50d8: $02
    dec b                                         ; $50d9: $05
    dec b                                         ; $50da: $05
    dec b                                         ; $50db: $05
    ld [bc], a                                    ; $50dc: $02
    ld [bc], a                                    ; $50dd: $02
    ld [bc], a                                    ; $50de: $02
    ld [bc], a                                    ; $50df: $02
    dec b                                         ; $50e0: $05
    dec b                                         ; $50e1: $05
    ld [bc], a                                    ; $50e2: $02
    dec b                                         ; $50e3: $05
    dec b                                         ; $50e4: $05
    dec b                                         ; $50e5: $05
    inc bc                                        ; $50e6: $03
    ld b, c                                       ; $50e7: $41
    ld b, d                                       ; $50e8: $42
    ld b, e                                       ; $50e9: $43
    ld b, h                                       ; $50ea: $44
    xor $f1                                       ; $50eb: $ee $f1
    pop af                                        ; $50ed: $f1
    pop af                                        ; $50ee: $f1
    rst $28                                       ; $50ef: $ef
    db $ed                                        ; $50f0: $ed
    db $ed                                        ; $50f1: $ed
    db $ed                                        ; $50f2: $ed
    rst $28                                       ; $50f3: $ef
    db $ed                                        ; $50f4: $ed
    db $ed                                        ; $50f5: $ed
    db $ed                                        ; $50f6: $ed
    ld [bc], a                                    ; $50f7: $02
    dec b                                         ; $50f8: $05
    ld [bc], a                                    ; $50f9: $02
    inc bc                                        ; $50fa: $03
    add b                                         ; $50fb: $80
    add b                                         ; $50fc: $80
    add b                                         ; $50fd: $80
    add b                                         ; $50fe: $80
    add b                                         ; $50ff: $80
    add b                                         ; $5100: $80
    add b                                         ; $5101: $80
    add b                                         ; $5102: $80
    add b                                         ; $5103: $80
    add b                                         ; $5104: $80
    add b                                         ; $5105: $80
    add b                                         ; $5106: $80
    rst $28                                       ; $5107: $ef
    add h                                         ; $5108: $84
    db $ed                                        ; $5109: $ed
    db $ed                                        ; $510a: $ed
    db $f4                                        ; $510b: $f4
    add h                                         ; $510c: $84
    db $ed                                        ; $510d: $ed
    db $ed                                        ; $510e: $ed
    db $ed                                        ; $510f: $ed
    db $ed                                        ; $5110: $ed
    db $ed                                        ; $5111: $ed
    db $ed                                        ; $5112: $ed
    db $ed                                        ; $5113: $ed
    db $ed                                        ; $5114: $ed
    db $ed                                        ; $5115: $ed
    db $ed                                        ; $5116: $ed
    add b                                         ; $5117: $80
    xor b                                         ; $5118: $a8
    add b                                         ; $5119: $80
    add b                                         ; $511a: $80
    add b                                         ; $511b: $80
    xor b                                         ; $511c: $a8
    add b                                         ; $511d: $80
    add b                                         ; $511e: $80
    add b                                         ; $511f: $80
    add b                                         ; $5120: $80
    add b                                         ; $5121: $80
    add b                                         ; $5122: $80
    add b                                         ; $5123: $80
    add b                                         ; $5124: $80
    add b                                         ; $5125: $80
    add b                                         ; $5126: $80
    ld h, c                                       ; $5127: $61
    ld h, d                                       ; $5128: $62
    ld c, l                                       ; $5129: $4d
    ld c, [hl]                                    ; $512a: $4e

jr_083_512b:
    ld h, e                                       ; $512b: $63
    ld h, h                                       ; $512c: $64
    jr nc, jr_083_5160                            ; $512d: $30 $31

    ld [hl], e                                    ; $512f: $73
    ld [hl], h                                    ; $5130: $74
    inc [hl]                                      ; $5131: $34
    dec [hl]                                      ; $5132: $35
    ld [hl], l                                    ; $5133: $75
    halt                                          ; $5134: $76
    scf                                           ; $5135: $37
    jr c, jr_083_513a                             ; $5136: $38 $02

    ld [bc], a                                    ; $5138: $02
    ld [bc], a                                    ; $5139: $02

jr_083_513a:
    inc bc                                        ; $513a: $03
    ld [bc], a                                    ; $513b: $02
    ld [bc], a                                    ; $513c: $02
    ld [bc], a                                    ; $513d: $02
    inc bc                                        ; $513e: $03
    ld [bc], a                                    ; $513f: $02
    dec b                                         ; $5140: $05
    dec b                                         ; $5141: $05
    inc bc                                        ; $5142: $03
    ld [bc], a                                    ; $5143: $02
    ld [bc], a                                    ; $5144: $02
    ld [bc], a                                    ; $5145: $02
    inc bc                                        ; $5146: $03
    rst $28                                       ; $5147: $ef
    db $ed                                        ; $5148: $ed
    db $ed                                        ; $5149: $ed
    db $ed                                        ; $514a: $ed
    rst $28                                       ; $514b: $ef
    db $ed                                        ; $514c: $ed
    db $ed                                        ; $514d: $ed
    db $ed                                        ; $514e: $ed
    rst $28                                       ; $514f: $ef
    db $ed                                        ; $5150: $ed
    db $ed                                        ; $5151: $ed
    db $ed                                        ; $5152: $ed
    rst $28                                       ; $5153: $ef
    db $ed                                        ; $5154: $ed
    db $ed                                        ; $5155: $ed
    db $ed                                        ; $5156: $ed
    add b                                         ; $5157: $80
    add b                                         ; $5158: $80
    add b                                         ; $5159: $80
    add b                                         ; $515a: $80
    add b                                         ; $515b: $80
    add b                                         ; $515c: $80
    add b                                         ; $515d: $80
    add b                                         ; $515e: $80
    add b                                         ; $515f: $80

jr_083_5160:
    add b                                         ; $5160: $80
    add b                                         ; $5161: $80
    add b                                         ; $5162: $80
    add b                                         ; $5163: $80
    add b                                         ; $5164: $80
    add b                                         ; $5165: $80
    add b                                         ; $5166: $80
    db $ed                                        ; $5167: $ed
    db $ed                                        ; $5168: $ed
    db $ed                                        ; $5169: $ed
    xor $ed                                       ; $516a: $ee $ed
    db $ed                                        ; $516c: $ed
    db $ed                                        ; $516d: $ed
    rst $28                                       ; $516e: $ef
    db $ed                                        ; $516f: $ed
    db $ed                                        ; $5170: $ed
    db $ed                                        ; $5171: $ed
    rst $28                                       ; $5172: $ef

jr_083_5173:
    db $ed                                        ; $5173: $ed
    db $ed                                        ; $5174: $ed
    db $ed                                        ; $5175: $ed
    rst $28                                       ; $5176: $ef
    add b                                         ; $5177: $80
    add b                                         ; $5178: $80
    add b                                         ; $5179: $80
    add b                                         ; $517a: $80
    add b                                         ; $517b: $80
    add b                                         ; $517c: $80
    add b                                         ; $517d: $80
    add b                                         ; $517e: $80
    add b                                         ; $517f: $80
    add b                                         ; $5180: $80
    add b                                         ; $5181: $80
    add b                                         ; $5182: $80
    add b                                         ; $5183: $80
    add b                                         ; $5184: $80
    add b                                         ; $5185: $80
    add b                                         ; $5186: $80
    pop af                                        ; $5187: $f1
    pop af                                        ; $5188: $f1
    pop af                                        ; $5189: $f1
    pop af                                        ; $518a: $f1
    ld a, [de]                                    ; $518b: $1a
    dec de                                        ; $518c: $1b
    inc e                                         ; $518d: $1c
    rst $18                                       ; $518e: $df
    ld e, $1f                                     ; $518f: $1e $1f
    jr nz, jr_083_5173                            ; $5191: $20 $e0

    ld [hl+], a                                   ; $5193: $22
    inc hl                                        ; $5194: $23
    inc h                                         ; $5195: $24
    pop hl                                        ; $5196: $e1
    add b                                         ; $5197: $80
    add b                                         ; $5198: $80
    add b                                         ; $5199: $80
    add b                                         ; $519a: $80
    inc b                                         ; $519b: $04
    inc b                                         ; $519c: $04
    inc b                                         ; $519d: $04
    inc c                                         ; $519e: $0c
    inc b                                         ; $519f: $04
    inc b                                         ; $51a0: $04
    inc b                                         ; $51a1: $04
    inc c                                         ; $51a2: $0c
    inc b                                         ; $51a3: $04
    inc b                                         ; $51a4: $04
    inc b                                         ; $51a5: $04
    inc c                                         ; $51a6: $0c
    pop af                                        ; $51a7: $f1
    pop af                                        ; $51a8: $f1
    pop af                                        ; $51a9: $f1
    pop af                                        ; $51aa: $f1
    ld [de], a                                    ; $51ab: $12
    inc de                                        ; $51ac: $13
    ld a, [de]                                    ; $51ad: $1a
    dec de                                        ; $51ae: $1b
    inc d                                         ; $51af: $14
    dec d                                         ; $51b0: $15
    ld e, $1f                                     ; $51b1: $1e $1f
    ld d, $17                                     ; $51b3: $16 $17
    ld [hl+], a                                   ; $51b5: $22
    inc hl                                        ; $51b6: $23
    add b                                         ; $51b7: $80
    add b                                         ; $51b8: $80
    add b                                         ; $51b9: $80
    add b                                         ; $51ba: $80
    inc b                                         ; $51bb: $04
    inc b                                         ; $51bc: $04
    inc b                                         ; $51bd: $04
    inc b                                         ; $51be: $04
    inc b                                         ; $51bf: $04
    inc b                                         ; $51c0: $04
    inc b                                         ; $51c1: $04
    inc b                                         ; $51c2: $04
    inc b                                         ; $51c3: $04
    inc b                                         ; $51c4: $04
    inc b                                         ; $51c5: $04
    inc b                                         ; $51c6: $04
    db $ed                                        ; $51c7: $ed
    db $ed                                        ; $51c8: $ed
    db $ed                                        ; $51c9: $ed
    rst $28                                       ; $51ca: $ef
    db $ed                                        ; $51cb: $ed
    db $ed                                        ; $51cc: $ed

jr_083_51cd:
    db $ed                                        ; $51cd: $ed
    rst $28                                       ; $51ce: $ef
    db $ed                                        ; $51cf: $ed
    db $ed                                        ; $51d0: $ed
    db $ed                                        ; $51d1: $ed
    rst $28                                       ; $51d2: $ef
    db $ed                                        ; $51d3: $ed
    db $ed                                        ; $51d4: $ed
    db $ed                                        ; $51d5: $ed
    rst $28                                       ; $51d6: $ef
    add b                                         ; $51d7: $80
    add b                                         ; $51d8: $80
    add b                                         ; $51d9: $80
    add b                                         ; $51da: $80
    add b                                         ; $51db: $80
    add b                                         ; $51dc: $80
    add b                                         ; $51dd: $80
    add b                                         ; $51de: $80
    add b                                         ; $51df: $80
    add b                                         ; $51e0: $80
    add b                                         ; $51e1: $80
    add b                                         ; $51e2: $80
    add b                                         ; $51e3: $80
    add b                                         ; $51e4: $80
    add b                                         ; $51e5: $80
    add b                                         ; $51e6: $80
    ld h, $27                                     ; $51e7: $26 $27
    jr z, jr_083_51cd                             ; $51e9: $28 $e2

    ld c, a                                       ; $51eb: $4f
    ld d, b                                       ; $51ec: $50
    ld d, c                                       ; $51ed: $51
    db $e3                                        ; $51ee: $e3
    ld e, e                                       ; $51ef: $5b
    ld e, h                                       ; $51f0: $5c
    ld e, l                                       ; $51f1: $5d
    ld e, [hl]                                    ; $51f2: $5e
    ld e, a                                       ; $51f3: $5f
    ld h, b                                       ; $51f4: $60
    ld c, e                                       ; $51f5: $4b
    ld c, h                                       ; $51f6: $4c
    inc b                                         ; $51f7: $04
    inc b                                         ; $51f8: $04
    inc b                                         ; $51f9: $04
    inc c                                         ; $51fa: $0c
    inc b                                         ; $51fb: $04
    inc b                                         ; $51fc: $04
    inc b                                         ; $51fd: $04
    inc c                                         ; $51fe: $0c
    inc bc                                        ; $51ff: $03
    inc bc                                        ; $5200: $03
    inc bc                                        ; $5201: $03
    inc bc                                        ; $5202: $03
    inc bc                                        ; $5203: $03
    ld [bc], a                                    ; $5204: $02
    ld [bc], a                                    ; $5205: $02
    ld [bc], a                                    ; $5206: $02
    jr jr_083_5222                                ; $5207: $18 $19

    ld h, $27                                     ; $5209: $26 $27
    ld c, c                                       ; $520b: $49
    ld c, d                                       ; $520c: $4a
    ld c, a                                       ; $520d: $4f
    ld d, b                                       ; $520e: $50
    ld h, l                                       ; $520f: $65
    ld h, [hl]                                    ; $5210: $66
    ld h, a                                       ; $5211: $67
    ld l, b                                       ; $5212: $68
    ld d, e                                       ; $5213: $53
    ld d, h                                       ; $5214: $54
    ld d, l                                       ; $5215: $55
    ld d, [hl]                                    ; $5216: $56
    inc b                                         ; $5217: $04
    inc b                                         ; $5218: $04
    inc b                                         ; $5219: $04
    inc b                                         ; $521a: $04
    inc b                                         ; $521b: $04
    inc b                                         ; $521c: $04
    inc b                                         ; $521d: $04
    inc b                                         ; $521e: $04
    inc bc                                        ; $521f: $03
    inc bc                                        ; $5220: $03
    inc bc                                        ; $5221: $03

jr_083_5222:
    inc bc                                        ; $5222: $03
    dec b                                         ; $5223: $05
    dec b                                         ; $5224: $05
    ld [bc], a                                    ; $5225: $02
    ld [bc], a                                    ; $5226: $02
    ld h, c                                       ; $5227: $61
    ld h, d                                       ; $5228: $62
    ld c, l                                       ; $5229: $4d
    ld c, [hl]                                    ; $522a: $4e
    ld h, e                                       ; $522b: $63
    ld h, h                                       ; $522c: $64
    jr nc, jr_083_5260                            ; $522d: $30 $31

    ld [hl], e                                    ; $522f: $73
    ld [hl], h                                    ; $5230: $74
    inc [hl]                                      ; $5231: $34
    dec [hl]                                      ; $5232: $35
    ld [hl], l                                    ; $5233: $75
    halt                                          ; $5234: $76
    scf                                           ; $5235: $37
    jr c, jr_083_523b                             ; $5236: $38 $03

    ld [bc], a                                    ; $5238: $02
    dec b                                         ; $5239: $05
    ld [bc], a                                    ; $523a: $02

jr_083_523b:
    inc bc                                        ; $523b: $03
    dec b                                         ; $523c: $05
    ld [bc], a                                    ; $523d: $02
    dec b                                         ; $523e: $05
    inc bc                                        ; $523f: $03
    ld [bc], a                                    ; $5240: $02
    dec b                                         ; $5241: $05
    ld [bc], a                                    ; $5242: $02
    inc bc                                        ; $5243: $03
    ld [bc], a                                    ; $5244: $02
    dec b                                         ; $5245: $05
    dec b                                         ; $5246: $05
    ld d, a                                       ; $5247: $57
    xor $f1                                       ; $5248: $ee $f1
    pop af                                        ; $524a: $f1
    dec a                                         ; $524b: $3d
    rst $28                                       ; $524c: $ef
    db $ed                                        ; $524d: $ed
    db $ed                                        ; $524e: $ed
    ld b, c                                       ; $524f: $41
    rst $28                                       ; $5250: $ef
    db $ed                                        ; $5251: $ed
    db $ed                                        ; $5252: $ed
    ld b, l                                       ; $5253: $45
    rst $28                                       ; $5254: $ef
    db $ed                                        ; $5255: $ed
    db $ed                                        ; $5256: $ed
    ld [bc], a                                    ; $5257: $02
    add b                                         ; $5258: $80
    add b                                         ; $5259: $80
    add b                                         ; $525a: $80
    ld [bc], a                                    ; $525b: $02
    add b                                         ; $525c: $80
    add b                                         ; $525d: $80
    add b                                         ; $525e: $80
    inc bc                                        ; $525f: $03

jr_083_5260:
    add b                                         ; $5260: $80
    add b                                         ; $5261: $80
    add b                                         ; $5262: $80
    inc bc                                        ; $5263: $03
    add b                                         ; $5264: $80
    add b                                         ; $5265: $80
    add b                                         ; $5266: $80
    db $ed                                        ; $5267: $ed
    db $ed                                        ; $5268: $ed
    xor $f1                                       ; $5269: $ee $f1
    db $ed                                        ; $526b: $ed
    db $ed                                        ; $526c: $ed
    rst $28                                       ; $526d: $ef
    inc de                                        ; $526e: $13
    db $ed                                        ; $526f: $ed
    db $ed                                        ; $5270: $ed
    ldh a, [$15]                                  ; $5271: $f0 $15
    db $ed                                        ; $5273: $ed
    db $ed                                        ; $5274: $ed
    ldh a, [rNR22]                                ; $5275: $f0 $17
    add b                                         ; $5277: $80
    add b                                         ; $5278: $80
    add b                                         ; $5279: $80
    add b                                         ; $527a: $80
    add b                                         ; $527b: $80
    add b                                         ; $527c: $80
    add b                                         ; $527d: $80
    inc b                                         ; $527e: $04
    add b                                         ; $527f: $80
    add b                                         ; $5280: $80
    add b                                         ; $5281: $80
    inc b                                         ; $5282: $04
    add b                                         ; $5283: $80
    add b                                         ; $5284: $80
    add b                                         ; $5285: $80
    inc b                                         ; $5286: $04
    pop af                                        ; $5287: $f1
    pop af                                        ; $5288: $f1
    pop af                                        ; $5289: $f1
    db $f4                                        ; $528a: $f4
    ld a, [de]                                    ; $528b: $1a
    dec de                                        ; $528c: $1b
    inc e                                         ; $528d: $1c
    dec e                                         ; $528e: $1d
    ld e, $1f                                     ; $528f: $1e $1f
    jr nz, jr_083_52b4                            ; $5291: $20 $21

    ld [hl+], a                                   ; $5293: $22
    inc hl                                        ; $5294: $23
    inc h                                         ; $5295: $24
    dec h                                         ; $5296: $25
    add b                                         ; $5297: $80
    add b                                         ; $5298: $80
    add b                                         ; $5299: $80
    add b                                         ; $529a: $80
    inc b                                         ; $529b: $04
    inc b                                         ; $529c: $04
    inc b                                         ; $529d: $04
    inc b                                         ; $529e: $04
    inc b                                         ; $529f: $04
    inc b                                         ; $52a0: $04
    inc b                                         ; $52a1: $04
    inc b                                         ; $52a2: $04
    inc b                                         ; $52a3: $04
    inc b                                         ; $52a4: $04
    inc b                                         ; $52a5: $04
    inc b                                         ; $52a6: $04
    ld e, e                                       ; $52a7: $5b
    ld e, h                                       ; $52a8: $5c
    ld e, l                                       ; $52a9: $5d
    ld e, [hl]                                    ; $52aa: $5e
    ld e, a                                       ; $52ab: $5f
    ld h, b                                       ; $52ac: $60
    ld c, e                                       ; $52ad: $4b
    ld c, h                                       ; $52ae: $4c
    ld h, c                                       ; $52af: $61
    ld h, d                                       ; $52b0: $62
    ld c, l                                       ; $52b1: $4d
    ld c, [hl]                                    ; $52b2: $4e
    ld h, e                                       ; $52b3: $63

jr_083_52b4:
    ld h, h                                       ; $52b4: $64
    jr nc, jr_083_52e8                            ; $52b5: $30 $31

    inc bc                                        ; $52b7: $03
    dec b                                         ; $52b8: $05
    ld [bc], a                                    ; $52b9: $02
    ld [bc], a                                    ; $52ba: $02
    inc bc                                        ; $52bb: $03
    dec b                                         ; $52bc: $05
    dec b                                         ; $52bd: $05
    ld [bc], a                                    ; $52be: $02
    inc bc                                        ; $52bf: $03
    ld [bc], a                                    ; $52c0: $02
    dec b                                         ; $52c1: $05
    dec b                                         ; $52c2: $05
    inc bc                                        ; $52c3: $03
    dec b                                         ; $52c4: $05
    ld [bc], a                                    ; $52c5: $02
    ld [bc], a                                    ; $52c6: $02
    ld h, l                                       ; $52c7: $65
    rst $28                                       ; $52c8: $ef
    db $ed                                        ; $52c9: $ed
    db $ed                                        ; $52ca: $ed
    ld d, e                                       ; $52cb: $53
    rst $28                                       ; $52cc: $ef
    db $ed                                        ; $52cd: $ed
    db $ed                                        ; $52ce: $ed
    ld d, a                                       ; $52cf: $57
    rst $28                                       ; $52d0: $ef
    db $ed                                        ; $52d1: $ed
    db $ed                                        ; $52d2: $ed
    dec a                                         ; $52d3: $3d
    rst $28                                       ; $52d4: $ef
    db $ed                                        ; $52d5: $ed
    db $ed                                        ; $52d6: $ed
    inc bc                                        ; $52d7: $03
    add b                                         ; $52d8: $80
    add b                                         ; $52d9: $80
    add b                                         ; $52da: $80
    inc bc                                        ; $52db: $03
    add b                                         ; $52dc: $80
    add b                                         ; $52dd: $80
    add b                                         ; $52de: $80
    inc bc                                        ; $52df: $03
    add b                                         ; $52e0: $80
    add b                                         ; $52e1: $80
    add b                                         ; $52e2: $80
    inc bc                                        ; $52e3: $03
    add b                                         ; $52e4: $80
    add b                                         ; $52e5: $80
    add b                                         ; $52e6: $80
    pop af                                        ; $52e7: $f1

jr_083_52e8:
    db $f4                                        ; $52e8: $f4
    ld e, l                                       ; $52e9: $5d
    ld e, [hl]                                    ; $52ea: $5e
    inc e                                         ; $52eb: $1c
    dec e                                         ; $52ec: $1d
    ld c, e                                       ; $52ed: $4b
    ld c, h                                       ; $52ee: $4c
    jr nz, jr_083_5312                            ; $52ef: $20 $21

    ld c, l                                       ; $52f1: $4d
    ld c, [hl]                                    ; $52f2: $4e
    inc h                                         ; $52f3: $24
    dec h                                         ; $52f4: $25
    jr nc, jr_083_5328                            ; $52f5: $30 $31

    add b                                         ; $52f7: $80
    add b                                         ; $52f8: $80
    inc bc                                        ; $52f9: $03
    dec b                                         ; $52fa: $05
    inc b                                         ; $52fb: $04
    inc b                                         ; $52fc: $04
    inc bc                                        ; $52fd: $03
    dec b                                         ; $52fe: $05
    inc b                                         ; $52ff: $04
    inc b                                         ; $5300: $04
    inc bc                                        ; $5301: $03
    ld [bc], a                                    ; $5302: $02
    inc b                                         ; $5303: $04
    inc b                                         ; $5304: $04
    inc bc                                        ; $5305: $03
    ld [bc], a                                    ; $5306: $02
    ld h, l                                       ; $5307: $65
    ld h, [hl]                                    ; $5308: $66
    ld h, a                                       ; $5309: $67
    ld l, b                                       ; $530a: $68
    ld d, e                                       ; $530b: $53
    ld d, h                                       ; $530c: $54
    ld d, l                                       ; $530d: $55
    ld d, [hl]                                    ; $530e: $56
    ld d, a                                       ; $530f: $57
    ld e, b                                       ; $5310: $58
    ld e, c                                       ; $5311: $59

jr_083_5312:
    ld e, d                                       ; $5312: $5a
    dec a                                         ; $5313: $3d
    ld a, $3f                                     ; $5314: $3e $3f
    ld b, b                                       ; $5316: $40
    ld [bc], a                                    ; $5317: $02
    dec b                                         ; $5318: $05
    ld [bc], a                                    ; $5319: $02
    ld [bc], a                                    ; $531a: $02
    dec b                                         ; $531b: $05
    dec b                                         ; $531c: $05
    ld [bc], a                                    ; $531d: $02
    ld [bc], a                                    ; $531e: $02
    ld [bc], a                                    ; $531f: $02
    dec b                                         ; $5320: $05
    dec b                                         ; $5321: $05
    ld [bc], a                                    ; $5322: $02
    ld [bc], a                                    ; $5323: $02
    ld [bc], a                                    ; $5324: $02
    ld [bc], a                                    ; $5325: $02
    dec b                                         ; $5326: $05
    ld e, e                                       ; $5327: $5b

jr_083_5328:
    ld e, h                                       ; $5328: $5c
    ld e, l                                       ; $5329: $5d
    ld e, [hl]                                    ; $532a: $5e
    ld e, a                                       ; $532b: $5f
    ld h, b                                       ; $532c: $60
    ld c, e                                       ; $532d: $4b
    ld c, h                                       ; $532e: $4c
    ld h, c                                       ; $532f: $61
    ld h, d                                       ; $5330: $62
    ld c, l                                       ; $5331: $4d
    ld c, [hl]                                    ; $5332: $4e
    ld h, e                                       ; $5333: $63
    ld h, h                                       ; $5334: $64
    jr nc, @+$33                                  ; $5335: $30 $31

    dec b                                         ; $5337: $05
    ld [bc], a                                    ; $5338: $02
    ld [bc], a                                    ; $5339: $02
    ld [bc], a                                    ; $533a: $02
    ld [bc], a                                    ; $533b: $02
    ld [bc], a                                    ; $533c: $02
    dec b                                         ; $533d: $05
    ld [bc], a                                    ; $533e: $02
    ld [bc], a                                    ; $533f: $02
    dec b                                         ; $5340: $05
    dec b                                         ; $5341: $05
    dec b                                         ; $5342: $05
    dec b                                         ; $5343: $05
    dec b                                         ; $5344: $05
    dec b                                         ; $5345: $05
    ld [bc], a                                    ; $5346: $02
    ld h, l                                       ; $5347: $65
    ld h, [hl]                                    ; $5348: $66
    ld h, a                                       ; $5349: $67
    db $e4                                        ; $534a: $e4
    ld d, e                                       ; $534b: $53
    ld d, h                                       ; $534c: $54
    ld d, l                                       ; $534d: $55
    push hl                                       ; $534e: $e5
    ld d, a                                       ; $534f: $57
    ld e, b                                       ; $5350: $58
    ld e, c                                       ; $5351: $59
    and $3d                                       ; $5352: $e6 $3d
    ld a, $3f                                     ; $5354: $3e $3f
    ld b, b                                       ; $5356: $40
    ld [bc], a                                    ; $5357: $02
    ld [bc], a                                    ; $5358: $02
    inc bc                                        ; $5359: $03
    add hl, bc                                    ; $535a: $09
    ld [bc], a                                    ; $535b: $02
    ld [bc], a                                    ; $535c: $02
    inc bc                                        ; $535d: $03
    add hl, bc                                    ; $535e: $09
    ld [bc], a                                    ; $535f: $02
    ld [bc], a                                    ; $5360: $02
    inc bc                                        ; $5361: $03
    add hl, bc                                    ; $5362: $09
    dec b                                         ; $5363: $05
    dec b                                         ; $5364: $05
    inc bc                                        ; $5365: $03
    inc bc                                        ; $5366: $03
    jr z, jr_083_5392                             ; $5367: $28 $29

    inc [hl]                                      ; $5369: $34
    dec [hl]                                      ; $536a: $35
    ld d, c                                       ; $536b: $51
    ld d, d                                       ; $536c: $52
    scf                                           ; $536d: $37
    jr c, jr_083_53cb                             ; $536e: $38 $5b

    ld e, h                                       ; $5370: $5c
    ld e, l                                       ; $5371: $5d
    ld e, [hl]                                    ; $5372: $5e
    ld e, a                                       ; $5373: $5f
    ld h, b                                       ; $5374: $60
    ld c, e                                       ; $5375: $4b
    ld c, h                                       ; $5376: $4c
    inc b                                         ; $5377: $04

jr_083_5378:
    inc b                                         ; $5378: $04
    inc bc                                        ; $5379: $03
    dec b                                         ; $537a: $05
    inc b                                         ; $537b: $04
    inc b                                         ; $537c: $04
    inc bc                                        ; $537d: $03
    ld [bc], a                                    ; $537e: $02
    inc bc                                        ; $537f: $03
    inc bc                                        ; $5380: $03
    inc bc                                        ; $5381: $03
    ld [bc], a                                    ; $5382: $02
    ld [bc], a                                    ; $5383: $02
    dec b                                         ; $5384: $05
    ld [bc], a                                    ; $5385: $02
    dec b                                         ; $5386: $05
    ld b, c                                       ; $5387: $41
    ld b, d                                       ; $5388: $42
    ld b, e                                       ; $5389: $43
    ld b, h                                       ; $538a: $44
    ld b, l                                       ; $538b: $45
    ld b, [hl]                                    ; $538c: $46
    ld b, a                                       ; $538d: $47
    ld c, b                                       ; $538e: $48
    ld h, l                                       ; $538f: $65
    ld h, [hl]                                    ; $5390: $66
    ld h, a                                       ; $5391: $67

jr_083_5392:
    ld l, b                                       ; $5392: $68
    ld d, e                                       ; $5393: $53
    ld d, h                                       ; $5394: $54
    ld d, l                                       ; $5395: $55
    ld d, [hl]                                    ; $5396: $56
    ld [bc], a                                    ; $5397: $02
    ld [bc], a                                    ; $5398: $02
    ld [bc], a                                    ; $5399: $02
    ld [bc], a                                    ; $539a: $02
    ld [bc], a                                    ; $539b: $02
    ld [bc], a                                    ; $539c: $02
    ld [bc], a                                    ; $539d: $02
    dec b                                         ; $539e: $05
    dec b                                         ; $539f: $05
    ld [bc], a                                    ; $53a0: $02
    ld [bc], a                                    ; $53a1: $02
    dec b                                         ; $53a2: $05
    ld [bc], a                                    ; $53a3: $02
    ld [bc], a                                    ; $53a4: $02
    dec b                                         ; $53a5: $05
    ld [bc], a                                    ; $53a6: $02
    ld [hl], e                                    ; $53a7: $73
    ld [hl], h                                    ; $53a8: $74
    inc [hl]                                      ; $53a9: $34
    dec [hl]                                      ; $53aa: $35
    ld [hl], l                                    ; $53ab: $75
    halt                                          ; $53ac: $76
    scf                                           ; $53ad: $37
    jr c, jr_083_540b                             ; $53ae: $38 $5b

    ld e, h                                       ; $53b0: $5c
    ld e, l                                       ; $53b1: $5d
    ld e, [hl]                                    ; $53b2: $5e
    ld e, a                                       ; $53b3: $5f
    ld h, b                                       ; $53b4: $60
    ld c, e                                       ; $53b5: $4b
    ld c, h                                       ; $53b6: $4c
    dec b                                         ; $53b7: $05
    dec b                                         ; $53b8: $05
    ld [bc], a                                    ; $53b9: $02
    dec b                                         ; $53ba: $05
    ld [bc], a                                    ; $53bb: $02
    ld [bc], a                                    ; $53bc: $02
    ld [bc], a                                    ; $53bd: $02
    dec b                                         ; $53be: $05
    dec b                                         ; $53bf: $05
    ld [bc], a                                    ; $53c0: $02
    ld [bc], a                                    ; $53c1: $02
    ld [bc], a                                    ; $53c2: $02
    ld [bc], a                                    ; $53c3: $02
    dec b                                         ; $53c4: $05
    dec b                                         ; $53c5: $05
    dec b                                         ; $53c6: $05
    ld b, c                                       ; $53c7: $41
    ld b, d                                       ; $53c8: $42
    ld b, e                                       ; $53c9: $43
    ld b, h                                       ; $53ca: $44

jr_083_53cb:
    ld b, l                                       ; $53cb: $45
    ld b, [hl]                                    ; $53cc: $46
    ld b, a                                       ; $53cd: $47
    ld c, b                                       ; $53ce: $48
    ld h, l                                       ; $53cf: $65
    ld h, [hl]                                    ; $53d0: $66
    ld h, a                                       ; $53d1: $67
    ld l, b                                       ; $53d2: $68
    ld d, e                                       ; $53d3: $53
    ld d, h                                       ; $53d4: $54
    ld d, l                                       ; $53d5: $55
    ld d, [hl]                                    ; $53d6: $56
    ld [bc], a                                    ; $53d7: $02
    ld [bc], a                                    ; $53d8: $02
    ld [bc], a                                    ; $53d9: $02
    inc bc                                        ; $53da: $03
    ld [bc], a                                    ; $53db: $02
    ld [bc], a                                    ; $53dc: $02
    ld [bc], a                                    ; $53dd: $02
    ld [bc], a                                    ; $53de: $02
    ld [bc], a                                    ; $53df: $02
    dec b                                         ; $53e0: $05
    dec b                                         ; $53e1: $05
    dec b                                         ; $53e2: $05
    dec b                                         ; $53e3: $05
    dec b                                         ; $53e4: $05
    ld [bc], a                                    ; $53e5: $02
    ld [bc], a                                    ; $53e6: $02
    pop af                                        ; $53e7: $f1
    add l                                         ; $53e8: $85
    ld c, l                                       ; $53e9: $4d
    ld c, [hl]                                    ; $53ea: $4e
    db $ed                                        ; $53eb: $ed
    rst $28                                       ; $53ec: $ef
    jr nc, jr_083_5420                            ; $53ed: $30 $31

    db $ed                                        ; $53ef: $ed
    rst $28                                       ; $53f0: $ef
    inc [hl]                                      ; $53f1: $34
    dec [hl]                                      ; $53f2: $35
    db $ed                                        ; $53f3: $ed
    rst $28                                       ; $53f4: $ef
    scf                                           ; $53f5: $37
    jr c, jr_083_5378                             ; $53f6: $38 $80

    adc b                                         ; $53f8: $88
    ld [bc], a                                    ; $53f9: $02
    dec b                                         ; $53fa: $05
    add b                                         ; $53fb: $80
    add b                                         ; $53fc: $80
    ld [bc], a                                    ; $53fd: $02
    ld [bc], a                                    ; $53fe: $02
    add b                                         ; $53ff: $80
    add b                                         ; $5400: $80
    inc bc                                        ; $5401: $03
    ld [bc], a                                    ; $5402: $02
    add b                                         ; $5403: $80
    add b                                         ; $5404: $80
    inc bc                                        ; $5405: $03
    ld [bc], a                                    ; $5406: $02
    ld d, a                                       ; $5407: $57
    ld e, b                                       ; $5408: $58
    ld e, c                                       ; $5409: $59
    ld e, d                                       ; $540a: $5a

jr_083_540b:
    dec a                                         ; $540b: $3d
    ld a, $3f                                     ; $540c: $3e $3f
    ld b, b                                       ; $540e: $40
    ld b, c                                       ; $540f: $41
    ld b, d                                       ; $5410: $42
    ld b, e                                       ; $5411: $43
    ld b, h                                       ; $5412: $44
    ld b, l                                       ; $5413: $45
    ld b, [hl]                                    ; $5414: $46
    ld b, a                                       ; $5415: $47
    ld c, b                                       ; $5416: $48
    dec b                                         ; $5417: $05
    ld [bc], a                                    ; $5418: $02
    ld [bc], a                                    ; $5419: $02
    dec b                                         ; $541a: $05
    dec b                                         ; $541b: $05
    ld [bc], a                                    ; $541c: $02
    ld [bc], a                                    ; $541d: $02
    ld [bc], a                                    ; $541e: $02
    dec b                                         ; $541f: $05

jr_083_5420:
    dec b                                         ; $5420: $05
    dec b                                         ; $5421: $05
    dec b                                         ; $5422: $05
    ld [bc], a                                    ; $5423: $02
    dec b                                         ; $5424: $05
    ld [bc], a                                    ; $5425: $02
    ld [bc], a                                    ; $5426: $02
    ld h, c                                       ; $5427: $61
    ld h, d                                       ; $5428: $62
    ld c, l                                       ; $5429: $4d
    ld c, [hl]                                    ; $542a: $4e
    ld h, e                                       ; $542b: $63
    ld h, h                                       ; $542c: $64
    jr nc, jr_083_5460                            ; $542d: $30 $31

    ld [hl], e                                    ; $542f: $73
    ld [hl], h                                    ; $5430: $74
    inc [hl]                                      ; $5431: $34
    dec [hl]                                      ; $5432: $35
    ld [hl], l                                    ; $5433: $75
    halt                                          ; $5434: $76
    scf                                           ; $5435: $37
    jr c, jr_083_543a                             ; $5436: $38 $02

    ld [bc], a                                    ; $5438: $02
    dec b                                         ; $5439: $05

jr_083_543a:
    dec b                                         ; $543a: $05
    dec b                                         ; $543b: $05
    dec b                                         ; $543c: $05
    dec b                                         ; $543d: $05
    dec b                                         ; $543e: $05
    ld [bc], a                                    ; $543f: $02
    ld [bc], a                                    ; $5440: $02
    ld [bc], a                                    ; $5441: $02
    dec b                                         ; $5442: $05
    ld [bc], a                                    ; $5443: $02
    dec b                                         ; $5444: $05
    ld [bc], a                                    ; $5445: $02
    ld [bc], a                                    ; $5446: $02
    ld d, a                                       ; $5447: $57
    ld e, b                                       ; $5448: $58
    ld e, c                                       ; $5449: $59
    ld e, d                                       ; $544a: $5a
    dec a                                         ; $544b: $3d
    ld a, $3f                                     ; $544c: $3e $3f
    ld b, b                                       ; $544e: $40
    ld b, c                                       ; $544f: $41
    ld b, d                                       ; $5450: $42
    ld b, e                                       ; $5451: $43
    ld b, h                                       ; $5452: $44
    ld b, l                                       ; $5453: $45
    ld b, [hl]                                    ; $5454: $46
    ld b, a                                       ; $5455: $47
    ld c, b                                       ; $5456: $48
    dec b                                         ; $5457: $05
    dec b                                         ; $5458: $05
    dec b                                         ; $5459: $05
    ld [bc], a                                    ; $545a: $02
    ld [bc], a                                    ; $545b: $02
    ld [bc], a                                    ; $545c: $02
    dec b                                         ; $545d: $05
    dec b                                         ; $545e: $05
    dec b                                         ; $545f: $05

jr_083_5460:
    ld [bc], a                                    ; $5460: $02
    dec b                                         ; $5461: $05
    ld [bc], a                                    ; $5462: $02
    ld [bc], a                                    ; $5463: $02
    dec b                                         ; $5464: $05
    ld [bc], a                                    ; $5465: $02
    ld [bc], a                                    ; $5466: $02
    db $ed                                        ; $5467: $ed
    rst $28                                       ; $5468: $ef
    ld e, l                                       ; $5469: $5d
    ld e, [hl]                                    ; $546a: $5e
    db $ed                                        ; $546b: $ed
    rst $28                                       ; $546c: $ef
    ld c, e                                       ; $546d: $4b
    ld c, h                                       ; $546e: $4c
    db $ed                                        ; $546f: $ed
    rst $28                                       ; $5470: $ef
    ld c, l                                       ; $5471: $4d
    ld c, [hl]                                    ; $5472: $4e
    db $ed                                        ; $5473: $ed
    rst $28                                       ; $5474: $ef
    rst $20                                       ; $5475: $e7
    add sp, -$80                                  ; $5476: $e8 $80
    add b                                         ; $5478: $80
    inc bc                                        ; $5479: $03
    dec b                                         ; $547a: $05
    add b                                         ; $547b: $80
    add b                                         ; $547c: $80
    inc bc                                        ; $547d: $03
    dec b                                         ; $547e: $05
    add b                                         ; $547f: $80
    add b                                         ; $5480: $80
    inc bc                                        ; $5481: $03
    ld [bc], a                                    ; $5482: $02
    add b                                         ; $5483: $80
    add b                                         ; $5484: $80
    add hl, bc                                    ; $5485: $09
    add hl, bc                                    ; $5486: $09
    ld h, l                                       ; $5487: $65
    ld h, [hl]                                    ; $5488: $66
    ld h, a                                       ; $5489: $67
    ld l, b                                       ; $548a: $68
    ld d, e                                       ; $548b: $53
    ld d, h                                       ; $548c: $54
    ld d, l                                       ; $548d: $55
    ld d, [hl]                                    ; $548e: $56
    ld d, a                                       ; $548f: $57
    ld e, b                                       ; $5490: $58
    ld e, c                                       ; $5491: $59
    ld e, d                                       ; $5492: $5a
    jp hl                                         ; $5493: $e9


    ld [$eceb], a                                 ; $5494: $ea $eb $ec
    ld [bc], a                                    ; $5497: $02
    ld [bc], a                                    ; $5498: $02
    ld [bc], a                                    ; $5499: $02
    dec b                                         ; $549a: $05
    dec b                                         ; $549b: $05
    ld [bc], a                                    ; $549c: $02
    ld [bc], a                                    ; $549d: $02
    ld [bc], a                                    ; $549e: $02
    ld [bc], a                                    ; $549f: $02
    dec b                                         ; $54a0: $05
    ld [bc], a                                    ; $54a1: $02
    ld [bc], a                                    ; $54a2: $02
    add hl, bc                                    ; $54a3: $09
    add hl, bc                                    ; $54a4: $09
    add hl, bc                                    ; $54a5: $09
    add hl, bc                                    ; $54a6: $09
    ld e, e                                       ; $54a7: $5b
    ld e, h                                       ; $54a8: $5c
    ld e, l                                       ; $54a9: $5d
    ld e, [hl]                                    ; $54aa: $5e
    ld e, a                                       ; $54ab: $5f
    ld h, b                                       ; $54ac: $60
    ld c, e                                       ; $54ad: $4b
    ld c, h                                       ; $54ae: $4c
    sub h                                         ; $54af: $94
    ld h, d                                       ; $54b0: $62
    ld c, l                                       ; $54b1: $4d
    ld c, [hl]                                    ; $54b2: $4e
    sub l                                         ; $54b3: $95
    ld h, h                                       ; $54b4: $64
    jr nc, jr_083_54e8                            ; $54b5: $30 $31

    dec b                                         ; $54b7: $05
    dec b                                         ; $54b8: $05
    ld [bc], a                                    ; $54b9: $02
    dec b                                         ; $54ba: $05
    ld [bc], a                                    ; $54bb: $02
    ld [bc], a                                    ; $54bc: $02
    dec b                                         ; $54bd: $05
    dec b                                         ; $54be: $05
    add hl, bc                                    ; $54bf: $09
    ld [bc], a                                    ; $54c0: $02
    ld [bc], a                                    ; $54c1: $02
    dec b                                         ; $54c2: $05
    add hl, bc                                    ; $54c3: $09
    inc bc                                        ; $54c4: $03
    ld [bc], a                                    ; $54c5: $02
    dec b                                         ; $54c6: $05
    ld h, l                                       ; $54c7: $65
    ld h, [hl]                                    ; $54c8: $66
    ld h, a                                       ; $54c9: $67
    ld l, b                                       ; $54ca: $68
    ld d, e                                       ; $54cb: $53
    ld d, h                                       ; $54cc: $54
    ld d, l                                       ; $54cd: $55
    ld d, [hl]                                    ; $54ce: $56
    ld d, a                                       ; $54cf: $57
    ld e, b                                       ; $54d0: $58
    ld e, c                                       ; $54d1: $59
    ld e, d                                       ; $54d2: $5a
    dec a                                         ; $54d3: $3d
    ld a, $3f                                     ; $54d4: $3e $3f
    ld b, b                                       ; $54d6: $40
    ld [bc], a                                    ; $54d7: $02
    ld [bc], a                                    ; $54d8: $02
    dec b                                         ; $54d9: $05
    dec b                                         ; $54da: $05
    ld [bc], a                                    ; $54db: $02
    dec b                                         ; $54dc: $05
    ld [bc], a                                    ; $54dd: $02
    ld [bc], a                                    ; $54de: $02
    dec b                                         ; $54df: $05
    ld [bc], a                                    ; $54e0: $02
    ld [bc], a                                    ; $54e1: $02
    ld [bc], a                                    ; $54e2: $02
    ld [bc], a                                    ; $54e3: $02
    dec b                                         ; $54e4: $05
    dec b                                         ; $54e5: $05
    ld [bc], a                                    ; $54e6: $02
    db $ed                                        ; $54e7: $ed

jr_083_54e8:
    xor $ef                                       ; $54e8: $ee $ef
    ldh a, [$f1]                                  ; $54ea: $f0 $f1
    ld a, [c]                                     ; $54ec: $f2
    di                                            ; $54ed: $f3
    db $f4                                        ; $54ee: $f4
    push af                                       ; $54ef: $f5
    or $f7                                        ; $54f0: $f6 $f7
    ld hl, sp-$07                                 ; $54f2: $f8 $f9
    ld a, [$fcfb]                                 ; $54f4: $fa $fb $fc
    add hl, bc                                    ; $54f7: $09
    add hl, bc                                    ; $54f8: $09
    add hl, bc                                    ; $54f9: $09
    add hl, bc                                    ; $54fa: $09
    add hl, bc                                    ; $54fb: $09
    add hl, bc                                    ; $54fc: $09
    add hl, bc                                    ; $54fd: $09
    add hl, bc                                    ; $54fe: $09
    add hl, bc                                    ; $54ff: $09
    add hl, bc                                    ; $5500: $09
    add hl, bc                                    ; $5501: $09
    add hl, bc                                    ; $5502: $09
    add hl, bc                                    ; $5503: $09
    add hl, bc                                    ; $5504: $09
    add hl, bc                                    ; $5505: $09
    add hl, bc                                    ; $5506: $09
    db $fd                                        ; $5507: $fd
    cp $67                                        ; $5508: $fe $67
    ld l, b                                       ; $550a: $68
    rst $38                                       ; $550b: $ff
    nop                                           ; $550c: $00
    ld d, l                                       ; $550d: $55
    ld d, [hl]                                    ; $550e: $56
    ld bc, $5902                                  ; $550f: $01 $02 $59
    ld e, d                                       ; $5512: $5a
    inc bc                                        ; $5513: $03
    ld a, $3f                                     ; $5514: $3e $3f
    ld b, b                                       ; $5516: $40
    add hl, bc                                    ; $5517: $09
    add hl, bc                                    ; $5518: $09
    dec b                                         ; $5519: $05
    dec b                                         ; $551a: $05
    add hl, bc                                    ; $551b: $09
    add hl, bc                                    ; $551c: $09
    dec b                                         ; $551d: $05
    ld [bc], a                                    ; $551e: $02
    add hl, bc                                    ; $551f: $09
    add hl, bc                                    ; $5520: $09
    ld [bc], a                                    ; $5521: $02
    ld [bc], a                                    ; $5522: $02
    add hl, bc                                    ; $5523: $09
    inc bc                                        ; $5524: $03
    ld [bc], a                                    ; $5525: $02
    ld [bc], a                                    ; $5526: $02
    ld e, e                                       ; $5527: $5b
    ld e, h                                       ; $5528: $5c
    ld e, l                                       ; $5529: $5d
    ld e, [hl]                                    ; $552a: $5e
    ld e, a                                       ; $552b: $5f
    ld h, b                                       ; $552c: $60
    ld c, e                                       ; $552d: $4b
    ld c, h                                       ; $552e: $4c
    ld h, c                                       ; $552f: $61
    ld h, d                                       ; $5530: $62
    ld c, l                                       ; $5531: $4d
    ld c, [hl]                                    ; $5532: $4e
    ld h, e                                       ; $5533: $63
    ld h, h                                       ; $5534: $64
    jr nc, jr_083_5568                            ; $5535: $30 $31

    dec b                                         ; $5537: $05
    ld [bc], a                                    ; $5538: $02
    ld [bc], a                                    ; $5539: $02
    dec b                                         ; $553a: $05
    ld [bc], a                                    ; $553b: $02
    dec b                                         ; $553c: $05
    ld [bc], a                                    ; $553d: $02
    ld [bc], a                                    ; $553e: $02
    dec b                                         ; $553f: $05
    dec b                                         ; $5540: $05
    ld [bc], a                                    ; $5541: $02
    ld [bc], a                                    ; $5542: $02
    ld [bc], a                                    ; $5543: $02
    ld [bc], a                                    ; $5544: $02
    dec b                                         ; $5545: $05
    dec b                                         ; $5546: $05
    ld h, l                                       ; $5547: $65
    ld h, [hl]                                    ; $5548: $66
    ld h, a                                       ; $5549: $67
    ld l, b                                       ; $554a: $68
    ld d, e                                       ; $554b: $53
    ld d, h                                       ; $554c: $54
    ld d, l                                       ; $554d: $55
    ld d, [hl]                                    ; $554e: $56
    ld d, a                                       ; $554f: $57
    ld e, b                                       ; $5550: $58
    ld e, c                                       ; $5551: $59
    ld e, d                                       ; $5552: $5a
    dec a                                         ; $5553: $3d
    ld a, $3f                                     ; $5554: $3e $3f
    ld b, b                                       ; $5556: $40
    ld [bc], a                                    ; $5557: $02
    ld [bc], a                                    ; $5558: $02
    ld [bc], a                                    ; $5559: $02
    ld [bc], a                                    ; $555a: $02
    ld [bc], a                                    ; $555b: $02
    ld [bc], a                                    ; $555c: $02
    dec b                                         ; $555d: $05
    dec b                                         ; $555e: $05
    dec b                                         ; $555f: $05
    ld [bc], a                                    ; $5560: $02
    ld [bc], a                                    ; $5561: $02
    ld [bc], a                                    ; $5562: $02
    ld [bc], a                                    ; $5563: $02
    ld [bc], a                                    ; $5564: $02
    ld [bc], a                                    ; $5565: $02
    dec b                                         ; $5566: $05
    ld [hl], e                                    ; $5567: $73

jr_083_5568:
    inc b                                         ; $5568: $04
    dec b                                         ; $5569: $05
    ld b, $75                                     ; $556a: $06 $75
    halt                                          ; $556c: $76
    scf                                           ; $556d: $37
    jr c, jr_083_55cb                             ; $556e: $38 $5b

    ld e, h                                       ; $5570: $5c
    ld e, l                                       ; $5571: $5d
    ld e, [hl]                                    ; $5572: $5e
    ld e, a                                       ; $5573: $5f
    ld h, b                                       ; $5574: $60
    ld c, e                                       ; $5575: $4b
    ld c, h                                       ; $5576: $4c
    inc bc                                        ; $5577: $03
    add hl, bc                                    ; $5578: $09
    add hl, bc                                    ; $5579: $09
    add hl, bc                                    ; $557a: $09
    inc bc                                        ; $557b: $03
    inc bc                                        ; $557c: $03
    inc bc                                        ; $557d: $03
    inc bc                                        ; $557e: $03
    dec b                                         ; $557f: $05
    ld [bc], a                                    ; $5580: $02
    ld [bc], a                                    ; $5581: $02
    ld [bc], a                                    ; $5582: $02
    ld [bc], a                                    ; $5583: $02
    dec b                                         ; $5584: $05
    dec b                                         ; $5585: $05
    ld [bc], a                                    ; $5586: $02
    ld b, c                                       ; $5587: $41
    ld b, d                                       ; $5588: $42
    ld b, e                                       ; $5589: $43
    ld b, h                                       ; $558a: $44
    ld b, l                                       ; $558b: $45
    ld b, [hl]                                    ; $558c: $46
    ld b, a                                       ; $558d: $47
    ld c, b                                       ; $558e: $48
    ld h, l                                       ; $558f: $65
    ld h, [hl]                                    ; $5590: $66
    ld h, a                                       ; $5591: $67
    ld l, b                                       ; $5592: $68
    ld d, e                                       ; $5593: $53
    ld d, h                                       ; $5594: $54
    ld d, l                                       ; $5595: $55
    ld d, [hl]                                    ; $5596: $56
    inc bc                                        ; $5597: $03
    ld [bc], a                                    ; $5598: $02
    ld [bc], a                                    ; $5599: $02
    ld [bc], a                                    ; $559a: $02
    ld [bc], a                                    ; $559b: $02
    ld [bc], a                                    ; $559c: $02
    ld [bc], a                                    ; $559d: $02
    dec b                                         ; $559e: $05
    ld [bc], a                                    ; $559f: $02
    ld [bc], a                                    ; $55a0: $02
    dec b                                         ; $55a1: $05
    ld [bc], a                                    ; $55a2: $02
    ld [bc], a                                    ; $55a3: $02
    dec b                                         ; $55a4: $05
    ld [bc], a                                    ; $55a5: $02
    ld [bc], a                                    ; $55a6: $02
    ld [hl], e                                    ; $55a7: $73
    ld [hl], h                                    ; $55a8: $74
    inc [hl]                                      ; $55a9: $34
    dec [hl]                                      ; $55aa: $35
    ld [hl], l                                    ; $55ab: $75
    halt                                          ; $55ac: $76
    scf                                           ; $55ad: $37
    jr c, jr_083_560b                             ; $55ae: $38 $5b

    ld e, h                                       ; $55b0: $5c
    ld e, l                                       ; $55b1: $5d
    ld e, [hl]                                    ; $55b2: $5e
    ld e, a                                       ; $55b3: $5f
    ld h, b                                       ; $55b4: $60
    ld c, e                                       ; $55b5: $4b
    ld c, h                                       ; $55b6: $4c
    ld [bc], a                                    ; $55b7: $02
    dec b                                         ; $55b8: $05
    ld [bc], a                                    ; $55b9: $02
    ld [bc], a                                    ; $55ba: $02
    ld [bc], a                                    ; $55bb: $02
    dec b                                         ; $55bc: $05
    ld [bc], a                                    ; $55bd: $02
    ld [bc], a                                    ; $55be: $02
    ld [bc], a                                    ; $55bf: $02
    dec b                                         ; $55c0: $05
    ld [bc], a                                    ; $55c1: $02
    ld [bc], a                                    ; $55c2: $02
    dec b                                         ; $55c3: $05
    dec b                                         ; $55c4: $05
    dec b                                         ; $55c5: $05
    ld [bc], a                                    ; $55c6: $02
    ld b, c                                       ; $55c7: $41
    ld b, d                                       ; $55c8: $42
    ld b, e                                       ; $55c9: $43
    ld b, h                                       ; $55ca: $44

jr_083_55cb:
    ld b, l                                       ; $55cb: $45
    ld b, [hl]                                    ; $55cc: $46
    ld b, a                                       ; $55cd: $47
    ld c, b                                       ; $55ce: $48
    ld h, l                                       ; $55cf: $65
    ld h, [hl]                                    ; $55d0: $66
    ld h, a                                       ; $55d1: $67
    ld l, b                                       ; $55d2: $68
    ld d, e                                       ; $55d3: $53
    ld e, d                                       ; $55d4: $5a
    rlca                                          ; $55d5: $07
    ld [$0505], sp                                ; $55d6: $08 $05 $05
    ld [bc], a                                    ; $55d9: $02
    ld [bc], a                                    ; $55da: $02
    dec b                                         ; $55db: $05
    ld [bc], a                                    ; $55dc: $02
    ld [bc], a                                    ; $55dd: $02
    ld [bc], a                                    ; $55de: $02
    ld [bc], a                                    ; $55df: $02
    ld [bc], a                                    ; $55e0: $02
    ld [bc], a                                    ; $55e1: $02
    ld [bc], a                                    ; $55e2: $02
    dec b                                         ; $55e3: $05
    ld [bc], a                                    ; $55e4: $02
    ld a, [bc]                                    ; $55e5: $0a
    ld a, [bc]                                    ; $55e6: $0a
    ld h, c                                       ; $55e7: $61
    ld h, d                                       ; $55e8: $62
    ld c, l                                       ; $55e9: $4d
    ld c, [hl]                                    ; $55ea: $4e
    ld h, e                                       ; $55eb: $63
    ld h, h                                       ; $55ec: $64
    jr nc, jr_083_5620                            ; $55ed: $30 $31

    ld [hl], e                                    ; $55ef: $73
    ld [hl], h                                    ; $55f0: $74
    inc [hl]                                      ; $55f1: $34
    dec [hl]                                      ; $55f2: $35
    ld [hl], l                                    ; $55f3: $75
    halt                                          ; $55f4: $76
    scf                                           ; $55f5: $37
    jr c, jr_083_55fd                             ; $55f6: $38 $05

    ld [bc], a                                    ; $55f8: $02
    dec b                                         ; $55f9: $05
    ld [bc], a                                    ; $55fa: $02
    dec b                                         ; $55fb: $05
    ld [bc], a                                    ; $55fc: $02

jr_083_55fd:
    dec b                                         ; $55fd: $05
    ld [bc], a                                    ; $55fe: $02
    dec b                                         ; $55ff: $05
    ld [bc], a                                    ; $5600: $02
    ld [bc], a                                    ; $5601: $02
    dec b                                         ; $5602: $05
    ld [bc], a                                    ; $5603: $02
    dec b                                         ; $5604: $05
    dec b                                         ; $5605: $05
    ld [bc], a                                    ; $5606: $02
    ld d, a                                       ; $5607: $57
    ld e, b                                       ; $5608: $58
    ld e, c                                       ; $5609: $59
    ld e, d                                       ; $560a: $5a

jr_083_560b:
    dec a                                         ; $560b: $3d
    ld a, $3f                                     ; $560c: $3e $3f
    ld b, b                                       ; $560e: $40
    ld b, c                                       ; $560f: $41
    ld b, d                                       ; $5610: $42
    ld b, e                                       ; $5611: $43
    ld b, h                                       ; $5612: $44
    ld b, l                                       ; $5613: $45
    ld b, [hl]                                    ; $5614: $46
    ld b, a                                       ; $5615: $47
    ld c, b                                       ; $5616: $48
    dec b                                         ; $5617: $05
    ld [bc], a                                    ; $5618: $02
    ld [bc], a                                    ; $5619: $02
    dec b                                         ; $561a: $05
    ld [bc], a                                    ; $561b: $02
    ld [bc], a                                    ; $561c: $02
    ld [bc], a                                    ; $561d: $02
    dec b                                         ; $561e: $05
    dec b                                         ; $561f: $05

jr_083_5620:
    ld [bc], a                                    ; $5620: $02
    dec b                                         ; $5621: $05
    ld [bc], a                                    ; $5622: $02
    dec b                                         ; $5623: $05
    dec b                                         ; $5624: $05
    ld [bc], a                                    ; $5625: $02
    dec b                                         ; $5626: $05
    ld h, c                                       ; $5627: $61
    ld h, d                                       ; $5628: $62
    ld c, l                                       ; $5629: $4d
    ld c, [hl]                                    ; $562a: $4e
    ld h, e                                       ; $562b: $63
    ld h, h                                       ; $562c: $64
    jr nc, jr_083_5660                            ; $562d: $30 $31

    ld [hl], e                                    ; $562f: $73
    ld [hl], h                                    ; $5630: $74
    inc [hl]                                      ; $5631: $34
    dec [hl]                                      ; $5632: $35
    ld [hl], l                                    ; $5633: $75
    halt                                          ; $5634: $76
    scf                                           ; $5635: $37
    jr c, jr_083_563a                             ; $5636: $38 $02

    ld [bc], a                                    ; $5638: $02
    dec b                                         ; $5639: $05

jr_083_563a:
    dec b                                         ; $563a: $05
    dec b                                         ; $563b: $05
    ld [bc], a                                    ; $563c: $02
    dec b                                         ; $563d: $05
    ld [bc], a                                    ; $563e: $02
    ld [bc], a                                    ; $563f: $02
    ld [bc], a                                    ; $5640: $02
    dec b                                         ; $5641: $05
    ld [bc], a                                    ; $5642: $02
    dec b                                         ; $5643: $05
    ld [bc], a                                    ; $5644: $02
    ld [bc], a                                    ; $5645: $02
    dec b                                         ; $5646: $05
    ld d, a                                       ; $5647: $57
    add hl, bc                                    ; $5648: $09
    ld a, [bc]                                    ; $5649: $0a
    dec bc                                        ; $564a: $0b
    dec a                                         ; $564b: $3d
    inc c                                         ; $564c: $0c
    dec c                                         ; $564d: $0d
    ld c, $41                                     ; $564e: $0e $41
    rrca                                          ; $5650: $0f
    db $10                                        ; $5651: $10
    ld de, $1245                                  ; $5652: $11 $45 $12
    inc de                                        ; $5655: $13
    inc d                                         ; $5656: $14
    dec b                                         ; $5657: $05
    ld a, [bc]                                    ; $5658: $0a
    add hl, bc                                    ; $5659: $09
    add hl, bc                                    ; $565a: $09
    ld [bc], a                                    ; $565b: $02
    ld a, [bc]                                    ; $565c: $0a
    add hl, bc                                    ; $565d: $09
    add hl, bc                                    ; $565e: $09
    ld [bc], a                                    ; $565f: $02

jr_083_5660:
    ld a, [bc]                                    ; $5660: $0a
    add hl, bc                                    ; $5661: $09
    add hl, bc                                    ; $5662: $09
    ld [bc], a                                    ; $5663: $02
    ld a, [bc]                                    ; $5664: $0a
    add hl, bc                                    ; $5665: $09
    add hl, bc                                    ; $5666: $09
    ld e, e                                       ; $5667: $5b
    ld e, h                                       ; $5668: $5c
    ld e, l                                       ; $5669: $5d
    ld e, [hl]                                    ; $566a: $5e
    ld e, a                                       ; $566b: $5f
    ld h, b                                       ; $566c: $60
    ld c, e                                       ; $566d: $4b
    ld c, h                                       ; $566e: $4c
    ld h, c                                       ; $566f: $61
    ld h, d                                       ; $5670: $62
    ld c, l                                       ; $5671: $4d
    ld c, [hl]                                    ; $5672: $4e
    ld h, e                                       ; $5673: $63
    ld h, h                                       ; $5674: $64
    jr nc, jr_083_56a8                            ; $5675: $30 $31

    ld [bc], a                                    ; $5677: $02
    dec b                                         ; $5678: $05
    ld [bc], a                                    ; $5679: $02
    ld [bc], a                                    ; $567a: $02
    ld [bc], a                                    ; $567b: $02
    dec b                                         ; $567c: $05
    ld [bc], a                                    ; $567d: $02
    ld [bc], a                                    ; $567e: $02
    ld [bc], a                                    ; $567f: $02
    dec b                                         ; $5680: $05
    ld [bc], a                                    ; $5681: $02
    ld [bc], a                                    ; $5682: $02
    dec b                                         ; $5683: $05
    dec b                                         ; $5684: $05
    dec b                                         ; $5685: $05
    dec b                                         ; $5686: $05
    ld h, l                                       ; $5687: $65
    ld h, [hl]                                    ; $5688: $66
    ld h, a                                       ; $5689: $67
    ld l, b                                       ; $568a: $68
    ld d, e                                       ; $568b: $53
    ld d, h                                       ; $568c: $54
    ld d, l                                       ; $568d: $55
    ld d, [hl]                                    ; $568e: $56
    ld d, a                                       ; $568f: $57
    ld e, b                                       ; $5690: $58
    ld e, c                                       ; $5691: $59
    ld e, d                                       ; $5692: $5a
    dec a                                         ; $5693: $3d
    ld a, $3f                                     ; $5694: $3e $3f
    ld b, b                                       ; $5696: $40
    ld [bc], a                                    ; $5697: $02
    dec b                                         ; $5698: $05
    dec b                                         ; $5699: $05
    dec b                                         ; $569a: $05
    ld [bc], a                                    ; $569b: $02
    ld [bc], a                                    ; $569c: $02
    ld [bc], a                                    ; $569d: $02
    ld [bc], a                                    ; $569e: $02
    ld [bc], a                                    ; $569f: $02
    ld [bc], a                                    ; $56a0: $02
    ld [bc], a                                    ; $56a1: $02
    ld [bc], a                                    ; $56a2: $02
    dec b                                         ; $56a3: $05
    dec b                                         ; $56a4: $05
    ld [bc], a                                    ; $56a5: $02
    ld [bc], a                                    ; $56a6: $02
    ld e, e                                       ; $56a7: $5b

jr_083_56a8:
    ld e, h                                       ; $56a8: $5c
    ld e, l                                       ; $56a9: $5d
    ld e, [hl]                                    ; $56aa: $5e
    ld e, a                                       ; $56ab: $5f
    ld h, b                                       ; $56ac: $60
    ld c, e                                       ; $56ad: $4b
    ld c, h                                       ; $56ae: $4c
    ld h, c                                       ; $56af: $61
    ld h, d                                       ; $56b0: $62
    ld c, l                                       ; $56b1: $4d
    ld c, [hl]                                    ; $56b2: $4e
    ld h, e                                       ; $56b3: $63
    ld h, h                                       ; $56b4: $64
    jr nc, jr_083_56e8                            ; $56b5: $30 $31

    dec b                                         ; $56b7: $05
    ld [bc], a                                    ; $56b8: $02
    ld [bc], a                                    ; $56b9: $02
    ld [bc], a                                    ; $56ba: $02
    ld [bc], a                                    ; $56bb: $02
    dec b                                         ; $56bc: $05
    ld [bc], a                                    ; $56bd: $02
    ld [bc], a                                    ; $56be: $02
    dec b                                         ; $56bf: $05
    ld [bc], a                                    ; $56c0: $02
    dec b                                         ; $56c1: $05
    dec b                                         ; $56c2: $05
    ld [bc], a                                    ; $56c3: $02
    ld [bc], a                                    ; $56c4: $02
    ld [bc], a                                    ; $56c5: $02
    dec b                                         ; $56c6: $05
    ld h, l                                       ; $56c7: $65
    dec d                                         ; $56c8: $15
    inc de                                        ; $56c9: $13
    inc d                                         ; $56ca: $14
    ld d, e                                       ; $56cb: $53
    ld d, $17                                     ; $56cc: $16 $17
    jr jr_083_5727                                ; $56ce: $18 $57

    ld b, b                                       ; $56d0: $40
    add hl, de                                    ; $56d1: $19
    ld a, [de]                                    ; $56d2: $1a
    dec a                                         ; $56d3: $3d
    ld a, $3f                                     ; $56d4: $3e $3f
    ld b, b                                       ; $56d6: $40
    ld [bc], a                                    ; $56d7: $02
    ld a, [bc]                                    ; $56d8: $0a
    add hl, bc                                    ; $56d9: $09
    add hl, bc                                    ; $56da: $09
    ld [bc], a                                    ; $56db: $02
    ld a, [bc]                                    ; $56dc: $0a
    add hl, bc                                    ; $56dd: $09
    add hl, bc                                    ; $56de: $09
    ld [bc], a                                    ; $56df: $02
    ld [bc], a                                    ; $56e0: $02
    ld a, [bc]                                    ; $56e1: $0a
    ld a, [bc]                                    ; $56e2: $0a
    dec b                                         ; $56e3: $05
    ld [bc], a                                    ; $56e4: $02
    ld [bc], a                                    ; $56e5: $02
    ld [bc], a                                    ; $56e6: $02
    ld e, e                                       ; $56e7: $5b

jr_083_56e8:
    ld e, h                                       ; $56e8: $5c
    ld e, l                                       ; $56e9: $5d
    ld e, [hl]                                    ; $56ea: $5e
    ld e, a                                       ; $56eb: $5f
    ld h, b                                       ; $56ec: $60
    ld c, e                                       ; $56ed: $4b
    ld c, h                                       ; $56ee: $4c
    ld h, c                                       ; $56ef: $61
    ld h, d                                       ; $56f0: $62
    xor $f1                                       ; $56f1: $ee $f1
    ld h, e                                       ; $56f3: $63
    ld h, h                                       ; $56f4: $64
    rst $28                                       ; $56f5: $ef
    db $ed                                        ; $56f6: $ed
    dec b                                         ; $56f7: $05
    inc bc                                        ; $56f8: $03
    inc bc                                        ; $56f9: $03
    inc bc                                        ; $56fa: $03
    ld [bc], a                                    ; $56fb: $02
    ld [bc], a                                    ; $56fc: $02
    dec b                                         ; $56fd: $05
    dec b                                         ; $56fe: $05
    ld [bc], a                                    ; $56ff: $02
    dec b                                         ; $5700: $05
    add b                                         ; $5701: $80
    add b                                         ; $5702: $80
    dec b                                         ; $5703: $05
    ld [bc], a                                    ; $5704: $02
    add b                                         ; $5705: $80
    add b                                         ; $5706: $80
    ld h, l                                       ; $5707: $65
    ld h, [hl]                                    ; $5708: $66
    ld h, a                                       ; $5709: $67
    ld l, b                                       ; $570a: $68
    ld d, e                                       ; $570b: $53
    ld d, h                                       ; $570c: $54
    ld d, l                                       ; $570d: $55
    ld d, [hl]                                    ; $570e: $56
    pop af                                        ; $570f: $f1
    pop af                                        ; $5710: $f1
    pop af                                        ; $5711: $f1
    pop af                                        ; $5712: $f1
    db $ed                                        ; $5713: $ed
    db $ed                                        ; $5714: $ed
    db $ed                                        ; $5715: $ed
    db $ed                                        ; $5716: $ed
    inc bc                                        ; $5717: $03
    inc bc                                        ; $5718: $03
    inc bc                                        ; $5719: $03
    inc bc                                        ; $571a: $03
    dec b                                         ; $571b: $05
    dec b                                         ; $571c: $05
    dec b                                         ; $571d: $05
    dec b                                         ; $571e: $05
    add b                                         ; $571f: $80
    add b                                         ; $5720: $80
    add b                                         ; $5721: $80
    add b                                         ; $5722: $80
    add b                                         ; $5723: $80
    add b                                         ; $5724: $80
    add b                                         ; $5725: $80
    add b                                         ; $5726: $80

jr_083_5727:
    ld e, e                                       ; $5727: $5b
    ld e, h                                       ; $5728: $5c
    ld e, l                                       ; $5729: $5d
    ld e, [hl]                                    ; $572a: $5e
    ld e, a                                       ; $572b: $5f
    ld h, b                                       ; $572c: $60
    ld c, e                                       ; $572d: $4b
    ld c, h                                       ; $572e: $4c
    pop af                                        ; $572f: $f1
    pop af                                        ; $5730: $f1
    pop af                                        ; $5731: $f1
    pop af                                        ; $5732: $f1
    db $ed                                        ; $5733: $ed
    db $ed                                        ; $5734: $ed
    db $ed                                        ; $5735: $ed
    db $ed                                        ; $5736: $ed
    inc bc                                        ; $5737: $03
    inc bc                                        ; $5738: $03
    inc bc                                        ; $5739: $03
    inc bc                                        ; $573a: $03
    ld [bc], a                                    ; $573b: $02
    ld [bc], a                                    ; $573c: $02
    ld [bc], a                                    ; $573d: $02
    ld [bc], a                                    ; $573e: $02
    add b                                         ; $573f: $80
    add b                                         ; $5740: $80
    add b                                         ; $5741: $80
    add b                                         ; $5742: $80
    add b                                         ; $5743: $80
    add b                                         ; $5744: $80
    add b                                         ; $5745: $80
    add b                                         ; $5746: $80
    ld h, l                                       ; $5747: $65
    ld h, [hl]                                    ; $5748: $66
    ld h, a                                       ; $5749: $67
    ld l, b                                       ; $574a: $68
    ld d, e                                       ; $574b: $53
    ld d, h                                       ; $574c: $54
    ld d, l                                       ; $574d: $55
    ld d, [hl]                                    ; $574e: $56
    pop af                                        ; $574f: $f1
    pop af                                        ; $5750: $f1
    pop af                                        ; $5751: $f1
    pop af                                        ; $5752: $f1
    db $ed                                        ; $5753: $ed
    db $ed                                        ; $5754: $ed
    db $ed                                        ; $5755: $ed
    db $ed                                        ; $5756: $ed
    inc bc                                        ; $5757: $03
    inc bc                                        ; $5758: $03
    inc bc                                        ; $5759: $03
    inc bc                                        ; $575a: $03
    dec b                                         ; $575b: $05
    ld [bc], a                                    ; $575c: $02
    dec b                                         ; $575d: $05
    ld [bc], a                                    ; $575e: $02
    add b                                         ; $575f: $80
    add b                                         ; $5760: $80
    add b                                         ; $5761: $80
    add b                                         ; $5762: $80
    add b                                         ; $5763: $80
    add b                                         ; $5764: $80
    add b                                         ; $5765: $80
    add b                                         ; $5766: $80
    ld [hl], e                                    ; $5767: $73
    ld [hl], h                                    ; $5768: $74
    rst $28                                       ; $5769: $ef
    db $ed                                        ; $576a: $ed
    ld [hl], l                                    ; $576b: $75
    halt                                          ; $576c: $76
    rst $28                                       ; $576d: $ef
    db $ed                                        ; $576e: $ed
    ld e, e                                       ; $576f: $5b
    ld e, h                                       ; $5770: $5c
    rst $28                                       ; $5771: $ef
    db $ed                                        ; $5772: $ed
    ld e, a                                       ; $5773: $5f
    ld h, b                                       ; $5774: $60
    rst $28                                       ; $5775: $ef
    db $ed                                        ; $5776: $ed
    ld [bc], a                                    ; $5777: $02
    inc bc                                        ; $5778: $03
    add b                                         ; $5779: $80
    add b                                         ; $577a: $80
    ld [bc], a                                    ; $577b: $02
    inc bc                                        ; $577c: $03
    add b                                         ; $577d: $80
    add b                                         ; $577e: $80
    ld [bc], a                                    ; $577f: $02
    inc bc                                        ; $5780: $03
    add b                                         ; $5781: $80
    add b                                         ; $5782: $80
    dec b                                         ; $5783: $05
    inc bc                                        ; $5784: $03
    add b                                         ; $5785: $80
    add b                                         ; $5786: $80
    add hl, bc                                    ; $5787: $09
    ld h, d                                       ; $5788: $62
    rst $28                                       ; $5789: $ef
    db $ed                                        ; $578a: $ed
    inc c                                         ; $578b: $0c
    ld h, h                                       ; $578c: $64
    rst $28                                       ; $578d: $ef
    db $ed                                        ; $578e: $ed
    rrca                                          ; $578f: $0f
    ld [hl], h                                    ; $5790: $74
    rst $28                                       ; $5791: $ef
    db $ed                                        ; $5792: $ed
    ld [de], a                                    ; $5793: $12
    halt                                          ; $5794: $76
    rst $28                                       ; $5795: $ef
    db $ed                                        ; $5796: $ed
    ld a, [bc]                                    ; $5797: $0a
    inc bc                                        ; $5798: $03
    add b                                         ; $5799: $80
    add b                                         ; $579a: $80
    ld a, [bc]                                    ; $579b: $0a
    inc bc                                        ; $579c: $03
    add b                                         ; $579d: $80
    add b                                         ; $579e: $80
    ld a, [bc]                                    ; $579f: $0a
    inc bc                                        ; $57a0: $03
    add b                                         ; $57a1: $80
    add b                                         ; $57a2: $80
    ld a, [bc]                                    ; $57a3: $0a
    inc bc                                        ; $57a4: $03
    add b                                         ; $57a5: $80
    add b                                         ; $57a6: $80
    dec d                                         ; $57a7: $15
    ld e, h                                       ; $57a8: $5c
    rst $28                                       ; $57a9: $ef
    db $ed                                        ; $57aa: $ed
    ld d, $60                                     ; $57ab: $16 $60
    rst $28                                       ; $57ad: $ef
    db $ed                                        ; $57ae: $ed
    ld h, c                                       ; $57af: $61
    ld h, d                                       ; $57b0: $62
    rst $28                                       ; $57b1: $ef
    db $ed                                        ; $57b2: $ed
    ld h, e                                       ; $57b3: $63
    ld h, h                                       ; $57b4: $64
    ld a, h                                       ; $57b5: $7c
    pop af                                        ; $57b6: $f1
    ld a, [bc]                                    ; $57b7: $0a
    inc bc                                        ; $57b8: $03
    add b                                         ; $57b9: $80
    add b                                         ; $57ba: $80
    ld a, [bc]                                    ; $57bb: $0a
    inc bc                                        ; $57bc: $03
    add b                                         ; $57bd: $80
    add b                                         ; $57be: $80
    ld [bc], a                                    ; $57bf: $02
    inc bc                                        ; $57c0: $03
    add b                                         ; $57c1: $80
    add b                                         ; $57c2: $80
    dec b                                         ; $57c3: $05
    inc bc                                        ; $57c4: $03
    add b                                         ; $57c5: $80
    add b                                         ; $57c6: $80
    db $ed                                        ; $57c7: $ed
    db $ed                                        ; $57c8: $ed
    db $ed                                        ; $57c9: $ed
    db $ed                                        ; $57ca: $ed
    db $ed                                        ; $57cb: $ed
    db $ed                                        ; $57cc: $ed
    db $ed                                        ; $57cd: $ed
    db $ed                                        ; $57ce: $ed
    db $ed                                        ; $57cf: $ed
    db $ed                                        ; $57d0: $ed
    db $ed                                        ; $57d1: $ed
    db $ed                                        ; $57d2: $ed
    ld a, e                                       ; $57d3: $7b
    db $ed                                        ; $57d4: $ed
    db $ed                                        ; $57d5: $ed
    db $ed                                        ; $57d6: $ed
    add b                                         ; $57d7: $80
    add b                                         ; $57d8: $80
    add b                                         ; $57d9: $80
    add b                                         ; $57da: $80
    add b                                         ; $57db: $80
    add b                                         ; $57dc: $80
    add b                                         ; $57dd: $80
    add b                                         ; $57de: $80
    add b                                         ; $57df: $80
    add b                                         ; $57e0: $80
    add b                                         ; $57e1: $80
    add b                                         ; $57e2: $80
    add b                                         ; $57e3: $80
    add b                                         ; $57e4: $80
    add b                                         ; $57e5: $80
    add b                                         ; $57e6: $80
    ld e, e                                       ; $57e7: $5b
    ld e, h                                       ; $57e8: $5c
    ld e, l                                       ; $57e9: $5d
    ld e, [hl]                                    ; $57ea: $5e
    ld e, a                                       ; $57eb: $5f
    ld h, b                                       ; $57ec: $60
    ld c, e                                       ; $57ed: $4b
    ld c, h                                       ; $57ee: $4c
    pop af                                        ; $57ef: $f1
    pop af                                        ; $57f0: $f1
    pop af                                        ; $57f1: $f1
    pop af                                        ; $57f2: $f1
    db $ed                                        ; $57f3: $ed
    db $ed                                        ; $57f4: $ed
    db $ed                                        ; $57f5: $ed
    db $ed                                        ; $57f6: $ed
    dec b                                         ; $57f7: $05
    dec b                                         ; $57f8: $05
    dec b                                         ; $57f9: $05
    inc bc                                        ; $57fa: $03
    dec b                                         ; $57fb: $05
    dec b                                         ; $57fc: $05
    ld [bc], a                                    ; $57fd: $02
    inc bc                                        ; $57fe: $03
    add b                                         ; $57ff: $80
    add b                                         ; $5800: $80
    add b                                         ; $5801: $80
    add b                                         ; $5802: $80
    add b                                         ; $5803: $80
    add b                                         ; $5804: $80
    add b                                         ; $5805: $80
    add b                                         ; $5806: $80
    rst $28                                       ; $5807: $ef
    db $ed                                        ; $5808: $ed
    db $ed                                        ; $5809: $ed
    db $ed                                        ; $580a: $ed
    rst $28                                       ; $580b: $ef
    db $ed                                        ; $580c: $ed
    db $ed                                        ; $580d: $ed
    db $ed                                        ; $580e: $ed
    db $f4                                        ; $580f: $f4
    db $ed                                        ; $5810: $ed
    db $ed                                        ; $5811: $ed
    db $ed                                        ; $5812: $ed
    db $ed                                        ; $5813: $ed
    db $ed                                        ; $5814: $ed
    db $ed                                        ; $5815: $ed
    db $ed                                        ; $5816: $ed
    add b                                         ; $5817: $80
    add b                                         ; $5818: $80
    add b                                         ; $5819: $80
    add b                                         ; $581a: $80
    add b                                         ; $581b: $80
    add b                                         ; $581c: $80
    add b                                         ; $581d: $80
    add b                                         ; $581e: $80
    add b                                         ; $581f: $80
    add b                                         ; $5820: $80
    add b                                         ; $5821: $80
    add b                                         ; $5822: $80
    add b                                         ; $5823: $80
    add b                                         ; $5824: $80
    add b                                         ; $5825: $80
    add b                                         ; $5826: $80
    db $ed                                        ; $5827: $ed
    db $ed                                        ; $5828: $ed
    ldh a, [rNR24]                                ; $5829: $f0 $19
    db $ed                                        ; $582b: $ed
    db $ed                                        ; $582c: $ed
    ldh a, [rWY]                                  ; $582d: $f0 $4a
    db $ed                                        ; $582f: $ed
    add h                                         ; $5830: $84
    ldh a, [$5e]                                  ; $5831: $f0 $5e
    db $ed                                        ; $5833: $ed
    add h                                         ; $5834: $84
    rst $28                                       ; $5835: $ef
    ld c, h                                       ; $5836: $4c
    add b                                         ; $5837: $80
    add b                                         ; $5838: $80
    add b                                         ; $5839: $80
    inc b                                         ; $583a: $04
    add b                                         ; $583b: $80
    add b                                         ; $583c: $80
    add b                                         ; $583d: $80
    inc b                                         ; $583e: $04
    add b                                         ; $583f: $80
    adc b                                         ; $5840: $88
    add b                                         ; $5841: $80
    inc bc                                        ; $5842: $03
    add b                                         ; $5843: $80
    adc b                                         ; $5844: $88
    add b                                         ; $5845: $80
    inc bc                                        ; $5846: $03
    ld h, $27                                     ; $5847: $26 $27
    jr z, jr_083_5874                             ; $5849: $28 $29

    ld c, a                                       ; $584b: $4f
    ld d, b                                       ; $584c: $50
    ld d, c                                       ; $584d: $51
    ld d, d                                       ; $584e: $52
    ld h, l                                       ; $584f: $65
    ld h, [hl]                                    ; $5850: $66
    ld h, a                                       ; $5851: $67
    ld l, b                                       ; $5852: $68
    ld d, e                                       ; $5853: $53
    ld d, h                                       ; $5854: $54
    ld d, l                                       ; $5855: $55
    ld d, [hl]                                    ; $5856: $56
    inc b                                         ; $5857: $04
    inc b                                         ; $5858: $04
    inc b                                         ; $5859: $04
    inc b                                         ; $585a: $04
    inc b                                         ; $585b: $04
    inc b                                         ; $585c: $04
    inc b                                         ; $585d: $04
    inc b                                         ; $585e: $04
    inc bc                                        ; $585f: $03
    inc bc                                        ; $5860: $03
    inc bc                                        ; $5861: $03
    inc bc                                        ; $5862: $03
    ld [bc], a                                    ; $5863: $02
    dec b                                         ; $5864: $05
    dec b                                         ; $5865: $05
    dec b                                         ; $5866: $05
    ld [hl], e                                    ; $5867: $73
    ld [hl], h                                    ; $5868: $74
    inc [hl]                                      ; $5869: $34
    dec [hl]                                      ; $586a: $35
    ld [hl], l                                    ; $586b: $75
    halt                                          ; $586c: $76
    scf                                           ; $586d: $37
    jr c, jr_083_58cb                             ; $586e: $38 $5b

    ld e, h                                       ; $5870: $5c
    ld e, l                                       ; $5871: $5d
    ld e, [hl]                                    ; $5872: $5e
    ld e, a                                       ; $5873: $5f

jr_083_5874:
    ld h, b                                       ; $5874: $60
    ld c, e                                       ; $5875: $4b
    ld c, h                                       ; $5876: $4c
    inc bc                                        ; $5877: $03
    ld [bc], a                                    ; $5878: $02
    dec b                                         ; $5879: $05
    ld [bc], a                                    ; $587a: $02
    inc bc                                        ; $587b: $03
    ld [bc], a                                    ; $587c: $02
    ld [bc], a                                    ; $587d: $02
    dec b                                         ; $587e: $05
    inc bc                                        ; $587f: $03
    dec b                                         ; $5880: $05
    dec b                                         ; $5881: $05
    ld [bc], a                                    ; $5882: $02
    ld [bc], a                                    ; $5883: $02
    ld [bc], a                                    ; $5884: $02
    dec b                                         ; $5885: $05
    ld [bc], a                                    ; $5886: $02
    ld b, c                                       ; $5887: $41
    rst $28                                       ; $5888: $ef
    db $ed                                        ; $5889: $ed
    db $ed                                        ; $588a: $ed
    ld b, l                                       ; $588b: $45
    rst $28                                       ; $588c: $ef
    db $ed                                        ; $588d: $ed
    db $ed                                        ; $588e: $ed
    ld h, l                                       ; $588f: $65
    rst $28                                       ; $5890: $ef
    db $ed                                        ; $5891: $ed
    db $ed                                        ; $5892: $ed
    ld d, e                                       ; $5893: $53
    rst $28                                       ; $5894: $ef
    db $ed                                        ; $5895: $ed
    db $ed                                        ; $5896: $ed
    inc bc                                        ; $5897: $03
    add b                                         ; $5898: $80
    add b                                         ; $5899: $80
    add b                                         ; $589a: $80
    inc bc                                        ; $589b: $03
    add b                                         ; $589c: $80
    add b                                         ; $589d: $80
    add b                                         ; $589e: $80
    inc bc                                        ; $589f: $03
    add b                                         ; $58a0: $80
    add b                                         ; $58a1: $80
    add b                                         ; $58a2: $80
    inc bc                                        ; $58a3: $03
    add b                                         ; $58a4: $80
    add b                                         ; $58a5: $80
    add b                                         ; $58a6: $80
    db $ed                                        ; $58a7: $ed
    add h                                         ; $58a8: $84
    ld a, h                                       ; $58a9: $7c
    pop af                                        ; $58aa: $f1
    db $ed                                        ; $58ab: $ed
    db $ed                                        ; $58ac: $ed
    db $ed                                        ; $58ad: $ed
    db $ed                                        ; $58ae: $ed
    db $ed                                        ; $58af: $ed
    db $ed                                        ; $58b0: $ed
    db $ed                                        ; $58b1: $ed
    db $ed                                        ; $58b2: $ed
    db $ed                                        ; $58b3: $ed
    db $ed                                        ; $58b4: $ed
    db $ed                                        ; $58b5: $ed
    db $ed                                        ; $58b6: $ed
    add b                                         ; $58b7: $80
    adc b                                         ; $58b8: $88
    add b                                         ; $58b9: $80
    add b                                         ; $58ba: $80
    add b                                         ; $58bb: $80
    add b                                         ; $58bc: $80
    add b                                         ; $58bd: $80
    add b                                         ; $58be: $80
    add b                                         ; $58bf: $80
    add b                                         ; $58c0: $80
    add b                                         ; $58c1: $80
    add b                                         ; $58c2: $80
    add b                                         ; $58c3: $80
    add b                                         ; $58c4: $80
    add b                                         ; $58c5: $80
    add b                                         ; $58c6: $80
    pop af                                        ; $58c7: $f1
    pop af                                        ; $58c8: $f1
    pop af                                        ; $58c9: $f1
    pop af                                        ; $58ca: $f1

jr_083_58cb:
    db $ed                                        ; $58cb: $ed
    db $ed                                        ; $58cc: $ed
    db $ed                                        ; $58cd: $ed
    db $ed                                        ; $58ce: $ed
    db $ed                                        ; $58cf: $ed
    db $ed                                        ; $58d0: $ed
    db $ed                                        ; $58d1: $ed
    db $ed                                        ; $58d2: $ed
    db $ed                                        ; $58d3: $ed
    db $ed                                        ; $58d4: $ed
    db $ed                                        ; $58d5: $ed
    db $ed                                        ; $58d6: $ed
    add b                                         ; $58d7: $80
    add b                                         ; $58d8: $80
    add b                                         ; $58d9: $80
    add b                                         ; $58da: $80
    add b                                         ; $58db: $80
    add b                                         ; $58dc: $80
    add b                                         ; $58dd: $80
    add b                                         ; $58de: $80
    add b                                         ; $58df: $80
    add b                                         ; $58e0: $80
    add b                                         ; $58e1: $80
    add b                                         ; $58e2: $80
    add b                                         ; $58e3: $80
    add b                                         ; $58e4: $80

jr_083_58e5:
    add b                                         ; $58e5: $80
    add b                                         ; $58e6: $80
    pop af                                        ; $58e7: $f1
    db $f4                                        ; $58e8: $f4
    db $ed                                        ; $58e9: $ed
    db $ed                                        ; $58ea: $ed
    db $ed                                        ; $58eb: $ed
    db $ed                                        ; $58ec: $ed
    db $ed                                        ; $58ed: $ed
    db $ed                                        ; $58ee: $ed
    db $ed                                        ; $58ef: $ed
    db $ed                                        ; $58f0: $ed
    db $ed                                        ; $58f1: $ed
    db $ed                                        ; $58f2: $ed
    db $ed                                        ; $58f3: $ed
    db $ed                                        ; $58f4: $ed
    db $ed                                        ; $58f5: $ed
    db $ed                                        ; $58f6: $ed
    add b                                         ; $58f7: $80
    add b                                         ; $58f8: $80
    add b                                         ; $58f9: $80
    add b                                         ; $58fa: $80
    add b                                         ; $58fb: $80
    add b                                         ; $58fc: $80
    add b                                         ; $58fd: $80
    add b                                         ; $58fe: $80
    add b                                         ; $58ff: $80
    add b                                         ; $5900: $80

jr_083_5901:
    add b                                         ; $5901: $80
    add b                                         ; $5902: $80
    add b                                         ; $5903: $80
    add b                                         ; $5904: $80
    add b                                         ; $5905: $80
    add b                                         ; $5906: $80
    db $ed                                        ; $5907: $ed
    rst $28                                       ; $5908: $ef
    dec de                                        ; $5909: $1b
    inc e                                         ; $590a: $1c
    db $ed                                        ; $590b: $ed
    rst $28                                       ; $590c: $ef
    dec e                                         ; $590d: $1d
    ld e, $ed                                     ; $590e: $1e $ed
    rst $28                                       ; $5910: $ef
    rra                                           ; $5911: $1f
    jr nz, jr_083_5901                            ; $5912: $20 $ed

    rst $28                                       ; $5914: $ef
    ld hl, $8022                                  ; $5915: $21 $22 $80
    add b                                         ; $5918: $80
    add hl, bc                                    ; $5919: $09
    add hl, bc                                    ; $591a: $09
    add b                                         ; $591b: $80
    add b                                         ; $591c: $80
    add hl, bc                                    ; $591d: $09
    add hl, bc                                    ; $591e: $09
    add b                                         ; $591f: $80
    add b                                         ; $5920: $80
    add hl, bc                                    ; $5921: $09
    add hl, bc                                    ; $5922: $09
    add b                                         ; $5923: $80
    add b                                         ; $5924: $80
    add hl, bc                                    ; $5925: $09
    add hl, bc                                    ; $5926: $09
    inc hl                                        ; $5927: $23
    inc h                                         ; $5928: $24
    dec h                                         ; $5929: $25
    ld h, $1d                                     ; $592a: $26 $1d
    daa                                           ; $592c: $27
    dec e                                         ; $592d: $1d
    jr z, jr_083_5959                             ; $592e: $28 $29

    ld a, [hl+]                                   ; $5930: $2a
    dec hl                                        ; $5931: $2b
    inc l                                         ; $5932: $2c
    dec l                                         ; $5933: $2d
    ld l, $2f                                     ; $5934: $2e $2f
    jr nc, jr_083_5941                            ; $5936: $30 $09

    add hl, bc                                    ; $5938: $09
    add hl, bc                                    ; $5939: $09
    add hl, bc                                    ; $593a: $09
    add hl, bc                                    ; $593b: $09
    add hl, bc                                    ; $593c: $09
    add hl, bc                                    ; $593d: $09
    add hl, bc                                    ; $593e: $09
    add hl, bc                                    ; $593f: $09
    add hl, bc                                    ; $5940: $09

jr_083_5941:
    add hl, bc                                    ; $5941: $09
    add hl, bc                                    ; $5942: $09
    add hl, bc                                    ; $5943: $09
    add hl, bc                                    ; $5944: $09
    add hl, bc                                    ; $5945: $09
    add hl, bc                                    ; $5946: $09
    sub l                                         ; $5947: $95
    ld [hl], h                                    ; $5948: $74
    inc [hl]                                      ; $5949: $34
    dec [hl]                                      ; $594a: $35
    sub l                                         ; $594b: $95
    halt                                          ; $594c: $76
    scf                                           ; $594d: $37
    jr c, jr_083_58e5                             ; $594e: $38 $95

    ld e, h                                       ; $5950: $5c
    ld e, l                                       ; $5951: $5d
    ld e, [hl]                                    ; $5952: $5e
    sub l                                         ; $5953: $95
    ld h, b                                       ; $5954: $60
    ld c, e                                       ; $5955: $4b
    ld c, h                                       ; $5956: $4c
    add hl, bc                                    ; $5957: $09
    inc bc                                        ; $5958: $03

jr_083_5959:
    dec b                                         ; $5959: $05
    ld [bc], a                                    ; $595a: $02
    add hl, bc                                    ; $595b: $09
    inc bc                                        ; $595c: $03
    ld [bc], a                                    ; $595d: $02
    ld [bc], a                                    ; $595e: $02
    add hl, bc                                    ; $595f: $09
    inc bc                                        ; $5960: $03
    ld [bc], a                                    ; $5961: $02
    dec b                                         ; $5962: $05
    add hl, bc                                    ; $5963: $09
    inc bc                                        ; $5964: $03
    ld [bc], a                                    ; $5965: $02
    ld [bc], a                                    ; $5966: $02
    ld b, c                                       ; $5967: $41
    ld b, d                                       ; $5968: $42
    ld b, e                                       ; $5969: $43
    ld b, h                                       ; $596a: $44
    ld b, l                                       ; $596b: $45
    ld b, [hl]                                    ; $596c: $46
    ld b, a                                       ; $596d: $47
    ld c, b                                       ; $596e: $48
    ld h, l                                       ; $596f: $65
    ld h, [hl]                                    ; $5970: $66
    ld h, a                                       ; $5971: $67
    ld l, b                                       ; $5972: $68
    ld d, e                                       ; $5973: $53
    ld d, h                                       ; $5974: $54
    ld d, l                                       ; $5975: $55
    ld d, [hl]                                    ; $5976: $56
    dec b                                         ; $5977: $05
    dec b                                         ; $5978: $05
    dec b                                         ; $5979: $05
    dec b                                         ; $597a: $05
    ld [bc], a                                    ; $597b: $02
    dec b                                         ; $597c: $05
    ld [bc], a                                    ; $597d: $02
    dec b                                         ; $597e: $05
    ld [bc], a                                    ; $597f: $02
    ld [bc], a                                    ; $5980: $02
    dec b                                         ; $5981: $05
    ld [bc], a                                    ; $5982: $02
    ld [bc], a                                    ; $5983: $02
    dec b                                         ; $5984: $05
    dec b                                         ; $5985: $05
    ld [bc], a                                    ; $5986: $02
    db $ed                                        ; $5987: $ed
    rst $28                                       ; $5988: $ef
    rst $20                                       ; $5989: $e7
    add sp, -$13                                  ; $598a: $e8 $ed
    rst $28                                       ; $598c: $ef
    ld sp, $ed32                                  ; $598d: $31 $32 $ed
    inc sp                                        ; $5990: $33
    pop af                                        ; $5991: $f1
    pop af                                        ; $5992: $f1
    db $ed                                        ; $5993: $ed
    rst $28                                       ; $5994: $ef
    rst $18                                       ; $5995: $df
    ld [de], a                                    ; $5996: $12
    add b                                         ; $5997: $80
    add b                                         ; $5998: $80
    add hl, bc                                    ; $5999: $09
    add hl, bc                                    ; $599a: $09
    add b                                         ; $599b: $80
    add b                                         ; $599c: $80
    add hl, bc                                    ; $599d: $09
    add hl, bc                                    ; $599e: $09
    add b                                         ; $599f: $80
    adc b                                         ; $59a0: $88
    add b                                         ; $59a1: $80
    add b                                         ; $59a2: $80
    add b                                         ; $59a3: $80
    add b                                         ; $59a4: $80
    inc c                                         ; $59a5: $0c
    inc b                                         ; $59a6: $04
    rst $20                                       ; $59a7: $e7
    ld [$ece7], a                                 ; $59a8: $ea $e7 $ec
    ld sp, $3134                                  ; $59ab: $31 $34 $31
    dec [hl]                                      ; $59ae: $35
    pop af                                        ; $59af: $f1
    pop af                                        ; $59b0: $f1
    pop af                                        ; $59b1: $f1
    pop af                                        ; $59b2: $f1
    inc de                                        ; $59b3: $13
    ld a, [de]                                    ; $59b4: $1a
    dec de                                        ; $59b5: $1b
    inc e                                         ; $59b6: $1c
    add hl, bc                                    ; $59b7: $09
    add hl, bc                                    ; $59b8: $09
    add hl, bc                                    ; $59b9: $09
    add hl, bc                                    ; $59ba: $09
    add hl, bc                                    ; $59bb: $09
    add hl, bc                                    ; $59bc: $09
    add hl, bc                                    ; $59bd: $09
    add hl, bc                                    ; $59be: $09
    add b                                         ; $59bf: $80
    add b                                         ; $59c0: $80
    add b                                         ; $59c1: $80
    add b                                         ; $59c2: $80
    inc b                                         ; $59c3: $04
    inc b                                         ; $59c4: $04
    inc b                                         ; $59c5: $04
    inc b                                         ; $59c6: $04
    sub l                                         ; $59c7: $95
    ld h, d                                       ; $59c8: $62
    ld c, l                                       ; $59c9: $4d
    ld c, [hl]                                    ; $59ca: $4e
    sub l                                         ; $59cb: $95
    ld h, h                                       ; $59cc: $64
    jr nc, jr_083_5a00                            ; $59cd: $30 $31

    ld [hl], $74                                  ; $59cf: $36 $74
    inc [hl]                                      ; $59d1: $34
    dec [hl]                                      ; $59d2: $35
    dec e                                         ; $59d3: $1d
    halt                                          ; $59d4: $76
    scf                                           ; $59d5: $37
    jr c, @+$0b                                   ; $59d6: $38 $09

    inc bc                                        ; $59d8: $03
    dec b                                         ; $59d9: $05
    ld [bc], a                                    ; $59da: $02
    add hl, bc                                    ; $59db: $09
    inc bc                                        ; $59dc: $03
    dec b                                         ; $59dd: $05
    ld [bc], a                                    ; $59de: $02
    ld [$0203], sp                                ; $59df: $08 $03 $02
    ld [bc], a                                    ; $59e2: $02
    inc b                                         ; $59e3: $04
    inc bc                                        ; $59e4: $03
    ld [bc], a                                    ; $59e5: $02
    ld [bc], a                                    ; $59e6: $02
    ld d, a                                       ; $59e7: $57
    ld e, b                                       ; $59e8: $58
    ld e, c                                       ; $59e9: $59
    ld e, d                                       ; $59ea: $5a
    dec a                                         ; $59eb: $3d
    ld a, $3f                                     ; $59ec: $3e $3f
    ld b, b                                       ; $59ee: $40
    ld b, c                                       ; $59ef: $41
    ld b, d                                       ; $59f0: $42
    ld b, e                                       ; $59f1: $43
    ld b, h                                       ; $59f2: $44
    ld b, l                                       ; $59f3: $45
    ld b, [hl]                                    ; $59f4: $46
    ld b, a                                       ; $59f5: $47
    ld c, b                                       ; $59f6: $48
    ld [bc], a                                    ; $59f7: $02
    ld [bc], a                                    ; $59f8: $02
    ld [bc], a                                    ; $59f9: $02
    ld [bc], a                                    ; $59fa: $02
    ld [bc], a                                    ; $59fb: $02
    ld [bc], a                                    ; $59fc: $02
    ld [bc], a                                    ; $59fd: $02
    ld [bc], a                                    ; $59fe: $02
    dec b                                         ; $59ff: $05

jr_083_5a00:
    ld [bc], a                                    ; $5a00: $02

jr_083_5a01:
    ld [bc], a                                    ; $5a01: $02
    ld [bc], a                                    ; $5a02: $02
    ld [bc], a                                    ; $5a03: $02
    ld [bc], a                                    ; $5a04: $02
    dec b                                         ; $5a05: $05
    dec b                                         ; $5a06: $05
    db $ed                                        ; $5a07: $ed
    rst $28                                       ; $5a08: $ef
    ldh [rNR14], a                                ; $5a09: $e0 $14
    db $ed                                        ; $5a0b: $ed
    rst $28                                       ; $5a0c: $ef
    pop hl                                        ; $5a0d: $e1
    ld d, $ed                                     ; $5a0e: $16 $ed
    rst $28                                       ; $5a10: $ef
    ld [c], a                                     ; $5a11: $e2
    jr jr_083_5a01                                ; $5a12: $18 $ed

    rst $28                                       ; $5a14: $ef
    db $e3                                        ; $5a15: $e3
    ld c, c                                       ; $5a16: $49
    add b                                         ; $5a17: $80
    add b                                         ; $5a18: $80
    inc c                                         ; $5a19: $0c
    inc b                                         ; $5a1a: $04
    add b                                         ; $5a1b: $80
    add b                                         ; $5a1c: $80
    inc c                                         ; $5a1d: $0c
    inc b                                         ; $5a1e: $04
    add b                                         ; $5a1f: $80
    add b                                         ; $5a20: $80
    inc c                                         ; $5a21: $0c
    inc b                                         ; $5a22: $04
    add b                                         ; $5a23: $80
    add b                                         ; $5a24: $80
    inc c                                         ; $5a25: $0c
    inc b                                         ; $5a26: $04
    dec d                                         ; $5a27: $15
    ld e, $1f                                     ; $5a28: $1e $1f
    jr nz, jr_083_5a43                            ; $5a2a: $20 $17

    ld [hl+], a                                   ; $5a2c: $22
    inc hl                                        ; $5a2d: $23
    inc h                                         ; $5a2e: $24
    add hl, de                                    ; $5a2f: $19
    ld h, $27                                     ; $5a30: $26 $27
    jr z, jr_083_5a7e                             ; $5a32: $28 $4a

    scf                                           ; $5a34: $37
    jr c, jr_083_5a88                             ; $5a35: $38 $51

    inc b                                         ; $5a37: $04
    inc b                                         ; $5a38: $04
    inc b                                         ; $5a39: $04
    inc b                                         ; $5a3a: $04
    inc b                                         ; $5a3b: $04
    inc b                                         ; $5a3c: $04
    inc b                                         ; $5a3d: $04
    inc b                                         ; $5a3e: $04
    inc b                                         ; $5a3f: $04
    inc b                                         ; $5a40: $04
    inc b                                         ; $5a41: $04
    inc b                                         ; $5a42: $04

jr_083_5a43:
    inc b                                         ; $5a43: $04
    add hl, bc                                    ; $5a44: $09
    add hl, bc                                    ; $5a45: $09
    inc b                                         ; $5a46: $04
    ld hl, $5d5c                                  ; $5a47: $21 $5c $5d
    ld e, [hl]                                    ; $5a4a: $5e
    dec h                                         ; $5a4b: $25
    ld h, b                                       ; $5a4c: $60
    ld c, e                                       ; $5a4d: $4b
    ld c, h                                       ; $5a4e: $4c
    add hl, hl                                    ; $5a4f: $29
    ld h, d                                       ; $5a50: $62
    ld c, l                                       ; $5a51: $4d
    ld c, [hl]                                    ; $5a52: $4e
    ld d, d                                       ; $5a53: $52
    ld h, h                                       ; $5a54: $64
    jr nc, jr_083_5a88                            ; $5a55: $30 $31

    inc b                                         ; $5a57: $04
    inc bc                                        ; $5a58: $03
    dec b                                         ; $5a59: $05
    ld [bc], a                                    ; $5a5a: $02
    inc b                                         ; $5a5b: $04
    inc bc                                        ; $5a5c: $03
    dec b                                         ; $5a5d: $05
    ld [bc], a                                    ; $5a5e: $02
    inc b                                         ; $5a5f: $04
    inc bc                                        ; $5a60: $03
    dec b                                         ; $5a61: $05
    dec b                                         ; $5a62: $05
    inc b                                         ; $5a63: $04
    inc bc                                        ; $5a64: $03
    ld [bc], a                                    ; $5a65: $02
    ld [bc], a                                    ; $5a66: $02
    ld h, l                                       ; $5a67: $65
    ld h, [hl]                                    ; $5a68: $66
    ld h, a                                       ; $5a69: $67
    ld l, b                                       ; $5a6a: $68
    ld d, e                                       ; $5a6b: $53
    ld d, h                                       ; $5a6c: $54
    ld d, l                                       ; $5a6d: $55
    ld d, [hl]                                    ; $5a6e: $56
    ld d, a                                       ; $5a6f: $57
    ld e, b                                       ; $5a70: $58
    ld e, c                                       ; $5a71: $59
    ld e, d                                       ; $5a72: $5a
    dec a                                         ; $5a73: $3d
    ld a, $3f                                     ; $5a74: $3e $3f
    ld b, b                                       ; $5a76: $40
    ld [bc], a                                    ; $5a77: $02
    dec b                                         ; $5a78: $05
    ld [bc], a                                    ; $5a79: $02
    dec b                                         ; $5a7a: $05
    dec b                                         ; $5a7b: $05
    ld [bc], a                                    ; $5a7c: $02

jr_083_5a7d:
    dec b                                         ; $5a7d: $05

jr_083_5a7e:
    dec b                                         ; $5a7e: $05
    dec b                                         ; $5a7f: $05
    ld [bc], a                                    ; $5a80: $02
    ld [bc], a                                    ; $5a81: $02
    dec b                                         ; $5a82: $05
    dec b                                         ; $5a83: $05
    ld [bc], a                                    ; $5a84: $02
    ld [bc], a                                    ; $5a85: $02
    dec b                                         ; $5a86: $05
    db $ed                                        ; $5a87: $ed

jr_083_5a88:
    rst $28                                       ; $5a88: $ef
    inc [hl]                                      ; $5a89: $34
    dec [hl]                                      ; $5a8a: $35
    db $ed                                        ; $5a8b: $ed
    rst $28                                       ; $5a8c: $ef
    scf                                           ; $5a8d: $37
    jr c, jr_083_5a7d                             ; $5a8e: $38 $ed

    ld a, h                                       ; $5a90: $7c
    pop af                                        ; $5a91: $f1
    pop af                                        ; $5a92: $f1
    db $ed                                        ; $5a93: $ed
    db $ed                                        ; $5a94: $ed
    db $ed                                        ; $5a95: $ed
    db $ed                                        ; $5a96: $ed
    add b                                         ; $5a97: $80
    add b                                         ; $5a98: $80
    inc bc                                        ; $5a99: $03
    inc bc                                        ; $5a9a: $03
    add b                                         ; $5a9b: $80
    add b                                         ; $5a9c: $80
    inc bc                                        ; $5a9d: $03
    ld [bc], a                                    ; $5a9e: $02
    add b                                         ; $5a9f: $80
    add b                                         ; $5aa0: $80
    add b                                         ; $5aa1: $80
    add b                                         ; $5aa2: $80
    add b                                         ; $5aa3: $80
    add b                                         ; $5aa4: $80
    add b                                         ; $5aa5: $80
    add b                                         ; $5aa6: $80
    ld b, c                                       ; $5aa7: $41
    add hl, sp                                    ; $5aa8: $39
    ld a, [hl-]                                   ; $5aa9: $3a
    ld b, h                                       ; $5aaa: $44
    ld b, l                                       ; $5aab: $45
    ld b, [hl]                                    ; $5aac: $46
    ld b, a                                       ; $5aad: $47
    ld c, b                                       ; $5aae: $48
    pop af                                        ; $5aaf: $f1
    pop af                                        ; $5ab0: $f1
    pop af                                        ; $5ab1: $f1
    pop af                                        ; $5ab2: $f1
    db $ed                                        ; $5ab3: $ed
    db $ed                                        ; $5ab4: $ed
    db $ed                                        ; $5ab5: $ed
    db $ed                                        ; $5ab6: $ed
    inc bc                                        ; $5ab7: $03
    add hl, bc                                    ; $5ab8: $09
    add hl, bc                                    ; $5ab9: $09
    inc bc                                        ; $5aba: $03
    inc bc                                        ; $5abb: $03
    inc bc                                        ; $5abc: $03
    inc bc                                        ; $5abd: $03
    inc bc                                        ; $5abe: $03
    add b                                         ; $5abf: $80
    add b                                         ; $5ac0: $80

jr_083_5ac1:
    add b                                         ; $5ac1: $80
    add b                                         ; $5ac2: $80
    add b                                         ; $5ac3: $80
    add b                                         ; $5ac4: $80
    add b                                         ; $5ac5: $80
    add b                                         ; $5ac6: $80
    ld [hl], e                                    ; $5ac7: $73
    ld [hl], h                                    ; $5ac8: $74
    inc [hl]                                      ; $5ac9: $34
    dec [hl]                                      ; $5aca: $35
    ld [hl], l                                    ; $5acb: $75
    halt                                          ; $5acc: $76
    scf                                           ; $5acd: $37
    jr c, jr_083_5ac1                             ; $5ace: $38 $f1

    pop af                                        ; $5ad0: $f1
    pop af                                        ; $5ad1: $f1
    pop af                                        ; $5ad2: $f1
    db $ed                                        ; $5ad3: $ed
    db $ed                                        ; $5ad4: $ed
    db $ed                                        ; $5ad5: $ed
    db $ed                                        ; $5ad6: $ed
    inc bc                                        ; $5ad7: $03
    inc bc                                        ; $5ad8: $03
    ld [bc], a                                    ; $5ad9: $02
    ld [bc], a                                    ; $5ada: $02
    ld [bc], a                                    ; $5adb: $02
    ld [bc], a                                    ; $5adc: $02
    dec b                                         ; $5add: $05
    dec b                                         ; $5ade: $05
    add b                                         ; $5adf: $80
    add b                                         ; $5ae0: $80
    add b                                         ; $5ae1: $80
    add b                                         ; $5ae2: $80
    add b                                         ; $5ae3: $80
    add b                                         ; $5ae4: $80
    add b                                         ; $5ae5: $80
    add b                                         ; $5ae6: $80
    ld b, c                                       ; $5ae7: $41
    ld b, d                                       ; $5ae8: $42
    ld b, e                                       ; $5ae9: $43
    ld b, h                                       ; $5aea: $44
    ld b, l                                       ; $5aeb: $45
    ld b, [hl]                                    ; $5aec: $46
    ld b, a                                       ; $5aed: $47
    ld c, b                                       ; $5aee: $48
    pop af                                        ; $5aef: $f1
    pop af                                        ; $5af0: $f1
    ld a, e                                       ; $5af1: $7b
    ld l, b                                       ; $5af2: $68
    db $ed                                        ; $5af3: $ed
    db $ed                                        ; $5af4: $ed
    rst $28                                       ; $5af5: $ef
    ld d, [hl]                                    ; $5af6: $56
    ld [bc], a                                    ; $5af7: $02
    ld [bc], a                                    ; $5af8: $02
    ld [bc], a                                    ; $5af9: $02
    ld [bc], a                                    ; $5afa: $02
    ld [bc], a                                    ; $5afb: $02
    dec b                                         ; $5afc: $05
    dec b                                         ; $5afd: $05
    dec b                                         ; $5afe: $05
    add b                                         ; $5aff: $80
    add b                                         ; $5b00: $80
    add b                                         ; $5b01: $80
    ld [bc], a                                    ; $5b02: $02
    add b                                         ; $5b03: $80
    add b                                         ; $5b04: $80
    add b                                         ; $5b05: $80
    ld [bc], a                                    ; $5b06: $02
    ld [hl], e                                    ; $5b07: $73
    ld [hl], h                                    ; $5b08: $74
    inc [hl]                                      ; $5b09: $34
    dec [hl]                                      ; $5b0a: $35
    ld [hl], l                                    ; $5b0b: $75
    halt                                          ; $5b0c: $76
    scf                                           ; $5b0d: $37
    jr c, jr_083_5b6b                             ; $5b0e: $38 $5b

    ld e, h                                       ; $5b10: $5c
    ld e, l                                       ; $5b11: $5d
    ld e, [hl]                                    ; $5b12: $5e
    ld e, a                                       ; $5b13: $5f
    ld h, b                                       ; $5b14: $60
    ld c, e                                       ; $5b15: $4b
    ld c, h                                       ; $5b16: $4c
    dec b                                         ; $5b17: $05
    dec b                                         ; $5b18: $05
    dec b                                         ; $5b19: $05
    ld [bc], a                                    ; $5b1a: $02
    dec b                                         ; $5b1b: $05
    ld [bc], a                                    ; $5b1c: $02
    dec b                                         ; $5b1d: $05
    dec b                                         ; $5b1e: $05
    dec b                                         ; $5b1f: $05
    ld [bc], a                                    ; $5b20: $02
    ld [bc], a                                    ; $5b21: $02
    ld [bc], a                                    ; $5b22: $02
    dec b                                         ; $5b23: $05
    dec b                                         ; $5b24: $05
    dec b                                         ; $5b25: $05
    ld [bc], a                                    ; $5b26: $02
    ld b, c                                       ; $5b27: $41
    ld b, d                                       ; $5b28: $42
    ld b, e                                       ; $5b29: $43
    ld b, h                                       ; $5b2a: $44
    ld b, l                                       ; $5b2b: $45
    ld b, [hl]                                    ; $5b2c: $46
    ld b, a                                       ; $5b2d: $47
    ld c, b                                       ; $5b2e: $48
    ld h, l                                       ; $5b2f: $65
    ld h, [hl]                                    ; $5b30: $66
    ld h, a                                       ; $5b31: $67
    ld l, b                                       ; $5b32: $68
    ld d, e                                       ; $5b33: $53
    ld d, h                                       ; $5b34: $54
    ld d, l                                       ; $5b35: $55
    ld d, [hl]                                    ; $5b36: $56
    dec b                                         ; $5b37: $05
    dec b                                         ; $5b38: $05
    ld [bc], a                                    ; $5b39: $02
    ld [bc], a                                    ; $5b3a: $02
    dec b                                         ; $5b3b: $05
    dec b                                         ; $5b3c: $05
    ld [bc], a                                    ; $5b3d: $02
    ld [bc], a                                    ; $5b3e: $02
    dec b                                         ; $5b3f: $05
    ld [bc], a                                    ; $5b40: $02
    ld [bc], a                                    ; $5b41: $02
    dec b                                         ; $5b42: $05
    ld [bc], a                                    ; $5b43: $02
    dec b                                         ; $5b44: $05
    ld [bc], a                                    ; $5b45: $02
    ld [bc], a                                    ; $5b46: $02
    ld [hl], e                                    ; $5b47: $73
    ld [hl], h                                    ; $5b48: $74
    inc [hl]                                      ; $5b49: $34
    dec [hl]                                      ; $5b4a: $35
    ld [hl], l                                    ; $5b4b: $75
    halt                                          ; $5b4c: $76
    scf                                           ; $5b4d: $37
    jr c, jr_083_5bab                             ; $5b4e: $38 $5b

    ld e, h                                       ; $5b50: $5c
    ld e, l                                       ; $5b51: $5d
    ld e, [hl]                                    ; $5b52: $5e
    ld e, a                                       ; $5b53: $5f
    ld h, b                                       ; $5b54: $60
    ld c, e                                       ; $5b55: $4b
    ld c, h                                       ; $5b56: $4c
    ld [bc], a                                    ; $5b57: $02
    ld [bc], a                                    ; $5b58: $02
    ld [bc], a                                    ; $5b59: $02
    dec b                                         ; $5b5a: $05
    ld [bc], a                                    ; $5b5b: $02
    ld [bc], a                                    ; $5b5c: $02
    ld [bc], a                                    ; $5b5d: $02
    ld [bc], a                                    ; $5b5e: $02
    ld [bc], a                                    ; $5b5f: $02
    dec b                                         ; $5b60: $05
    ld [bc], a                                    ; $5b61: $02
    ld [bc], a                                    ; $5b62: $02
    dec b                                         ; $5b63: $05
    dec b                                         ; $5b64: $05
    ld [bc], a                                    ; $5b65: $02
    ld [bc], a                                    ; $5b66: $02
    ld b, c                                       ; $5b67: $41
    ld b, d                                       ; $5b68: $42
    ld b, e                                       ; $5b69: $43
    ld b, h                                       ; $5b6a: $44

jr_083_5b6b:
    ld b, l                                       ; $5b6b: $45
    ld b, [hl]                                    ; $5b6c: $46
    ld b, a                                       ; $5b6d: $47
    ld c, b                                       ; $5b6e: $48
    ld h, l                                       ; $5b6f: $65
    ld h, [hl]                                    ; $5b70: $66
    ld h, a                                       ; $5b71: $67
    ld l, b                                       ; $5b72: $68
    ld d, e                                       ; $5b73: $53
    ld d, h                                       ; $5b74: $54
    ld d, l                                       ; $5b75: $55
    ld d, [hl]                                    ; $5b76: $56
    dec b                                         ; $5b77: $05
    ld [bc], a                                    ; $5b78: $02
    dec b                                         ; $5b79: $05
    dec b                                         ; $5b7a: $05
    dec b                                         ; $5b7b: $05
    ld [bc], a                                    ; $5b7c: $02
    dec b                                         ; $5b7d: $05
    ld [bc], a                                    ; $5b7e: $02
    dec b                                         ; $5b7f: $05
    ld [bc], a                                    ; $5b80: $02
    ld [bc], a                                    ; $5b81: $02
    ld [bc], a                                    ; $5b82: $02
    ld [bc], a                                    ; $5b83: $02
    ld [bc], a                                    ; $5b84: $02
    dec b                                         ; $5b85: $05
    ld [bc], a                                    ; $5b86: $02
    ld h, c                                       ; $5b87: $61
    ld h, d                                       ; $5b88: $62
    ld c, l                                       ; $5b89: $4d
    ld c, [hl]                                    ; $5b8a: $4e
    ld h, e                                       ; $5b8b: $63
    ld h, h                                       ; $5b8c: $64
    jr nc, jr_083_5bc0                            ; $5b8d: $30 $31

    ld [hl], e                                    ; $5b8f: $73
    ld [hl], h                                    ; $5b90: $74
    inc [hl]                                      ; $5b91: $34
    dec [hl]                                      ; $5b92: $35
    ld [hl], l                                    ; $5b93: $75
    halt                                          ; $5b94: $76
    scf                                           ; $5b95: $37
    jr c, jr_083_5b9a                             ; $5b96: $38 $02

    dec b                                         ; $5b98: $05
    dec b                                         ; $5b99: $05

jr_083_5b9a:
    dec b                                         ; $5b9a: $05
    ld [bc], a                                    ; $5b9b: $02
    dec b                                         ; $5b9c: $05
    dec b                                         ; $5b9d: $05
    ld [bc], a                                    ; $5b9e: $02
    dec b                                         ; $5b9f: $05
    ld [bc], a                                    ; $5ba0: $02
    ld [bc], a                                    ; $5ba1: $02
    dec b                                         ; $5ba2: $05
    ld [bc], a                                    ; $5ba3: $02
    ld [bc], a                                    ; $5ba4: $02
    ld [bc], a                                    ; $5ba5: $02
    dec b                                         ; $5ba6: $05
    ld d, a                                       ; $5ba7: $57
    ld e, b                                       ; $5ba8: $58
    ld e, c                                       ; $5ba9: $59
    ld e, d                                       ; $5baa: $5a

jr_083_5bab:
    dec a                                         ; $5bab: $3d
    ld a, $3f                                     ; $5bac: $3e $3f
    ld b, b                                       ; $5bae: $40
    ld b, c                                       ; $5baf: $41
    ld b, d                                       ; $5bb0: $42
    ld b, e                                       ; $5bb1: $43
    ld b, h                                       ; $5bb2: $44
    ld b, l                                       ; $5bb3: $45
    ld b, [hl]                                    ; $5bb4: $46
    ld b, a                                       ; $5bb5: $47
    ld c, b                                       ; $5bb6: $48
    ld [bc], a                                    ; $5bb7: $02
    ld [bc], a                                    ; $5bb8: $02
    ld [bc], a                                    ; $5bb9: $02
    dec b                                         ; $5bba: $05
    ld [bc], a                                    ; $5bbb: $02
    ld [bc], a                                    ; $5bbc: $02
    dec b                                         ; $5bbd: $05
    ld [bc], a                                    ; $5bbe: $02
    dec b                                         ; $5bbf: $05

jr_083_5bc0:
    dec b                                         ; $5bc0: $05
    ld [bc], a                                    ; $5bc1: $02
    ld [bc], a                                    ; $5bc2: $02
    ld [bc], a                                    ; $5bc3: $02
    ld [bc], a                                    ; $5bc4: $02
    ld [bc], a                                    ; $5bc5: $02
    dec b                                         ; $5bc6: $05
    ld h, c                                       ; $5bc7: $61
    ld h, d                                       ; $5bc8: $62
    ld c, l                                       ; $5bc9: $4d
    ld c, [hl]                                    ; $5bca: $4e
    ld h, e                                       ; $5bcb: $63
    ld h, h                                       ; $5bcc: $64
    jr nc, jr_083_5c00                            ; $5bcd: $30 $31

    ld [hl], e                                    ; $5bcf: $73
    ld [hl], h                                    ; $5bd0: $74
    inc [hl]                                      ; $5bd1: $34
    dec [hl]                                      ; $5bd2: $35
    ld [hl], l                                    ; $5bd3: $75
    halt                                          ; $5bd4: $76
    scf                                           ; $5bd5: $37
    jr c, jr_083_5bda                             ; $5bd6: $38 $02

    ld [bc], a                                    ; $5bd8: $02
    ld [bc], a                                    ; $5bd9: $02

jr_083_5bda:
    ld [bc], a                                    ; $5bda: $02
    ld [bc], a                                    ; $5bdb: $02
    ld [bc], a                                    ; $5bdc: $02
    ld [bc], a                                    ; $5bdd: $02
    ld [bc], a                                    ; $5bde: $02
    dec b                                         ; $5bdf: $05
    ld [bc], a                                    ; $5be0: $02
    dec b                                         ; $5be1: $05
    dec b                                         ; $5be2: $05
    ld [bc], a                                    ; $5be3: $02
    ld [bc], a                                    ; $5be4: $02
    dec b                                         ; $5be5: $05
    ld [bc], a                                    ; $5be6: $02
    ld d, a                                       ; $5be7: $57
    ld e, b                                       ; $5be8: $58
    ld e, c                                       ; $5be9: $59
    ld e, d                                       ; $5bea: $5a
    dec a                                         ; $5beb: $3d
    ld a, $3f                                     ; $5bec: $3e $3f
    ld b, b                                       ; $5bee: $40
    ld b, c                                       ; $5bef: $41
    ld b, d                                       ; $5bf0: $42
    ld b, e                                       ; $5bf1: $43
    ld b, h                                       ; $5bf2: $44
    ld b, l                                       ; $5bf3: $45
    ld b, [hl]                                    ; $5bf4: $46
    ld b, a                                       ; $5bf5: $47
    ld c, b                                       ; $5bf6: $48
    ld [bc], a                                    ; $5bf7: $02
    ld [bc], a                                    ; $5bf8: $02
    dec b                                         ; $5bf9: $05
    dec b                                         ; $5bfa: $05
    dec b                                         ; $5bfb: $05
    ld [bc], a                                    ; $5bfc: $02
    ld [bc], a                                    ; $5bfd: $02
    ld [bc], a                                    ; $5bfe: $02
    ld [bc], a                                    ; $5bff: $02

jr_083_5c00:
    ld [bc], a                                    ; $5c00: $02
    ld [bc], a                                    ; $5c01: $02
    ld [bc], a                                    ; $5c02: $02
    ld [bc], a                                    ; $5c03: $02
    ld [bc], a                                    ; $5c04: $02
    dec b                                         ; $5c05: $05
    dec b                                         ; $5c06: $05
    ld e, e                                       ; $5c07: $5b
    ld e, h                                       ; $5c08: $5c
    ld e, l                                       ; $5c09: $5d
    ld e, [hl]                                    ; $5c0a: $5e
    ld e, a                                       ; $5c0b: $5f
    ld h, b                                       ; $5c0c: $60
    ld c, e                                       ; $5c0d: $4b
    ld c, h                                       ; $5c0e: $4c
    ld h, c                                       ; $5c0f: $61
    ld h, d                                       ; $5c10: $62
    ld c, l                                       ; $5c11: $4d
    ld c, [hl]                                    ; $5c12: $4e
    ld h, e                                       ; $5c13: $63
    ld h, h                                       ; $5c14: $64
    jr nc, jr_083_5c48                            ; $5c15: $30 $31

    ld [bc], a                                    ; $5c17: $02
    dec b                                         ; $5c18: $05
    dec b                                         ; $5c19: $05
    ld [bc], a                                    ; $5c1a: $02
    dec b                                         ; $5c1b: $05
    ld [bc], a                                    ; $5c1c: $02
    ld [bc], a                                    ; $5c1d: $02
    dec b                                         ; $5c1e: $05
    ld [bc], a                                    ; $5c1f: $02
    dec b                                         ; $5c20: $05
    ld [bc], a                                    ; $5c21: $02
    ld [bc], a                                    ; $5c22: $02
    ld [bc], a                                    ; $5c23: $02
    dec b                                         ; $5c24: $05
    dec b                                         ; $5c25: $05
    dec b                                         ; $5c26: $05
    ld h, l                                       ; $5c27: $65
    ld h, [hl]                                    ; $5c28: $66
    ld h, a                                       ; $5c29: $67
    ld l, b                                       ; $5c2a: $68
    ld d, e                                       ; $5c2b: $53
    ld d, h                                       ; $5c2c: $54
    ld d, l                                       ; $5c2d: $55
    ld d, [hl]                                    ; $5c2e: $56
    ld d, a                                       ; $5c2f: $57
    ld e, b                                       ; $5c30: $58
    ld e, c                                       ; $5c31: $59
    ld e, d                                       ; $5c32: $5a
    dec a                                         ; $5c33: $3d
    ld a, $3f                                     ; $5c34: $3e $3f
    ld b, b                                       ; $5c36: $40
    dec b                                         ; $5c37: $05
    dec b                                         ; $5c38: $05
    ld [bc], a                                    ; $5c39: $02
    ld [bc], a                                    ; $5c3a: $02
    dec b                                         ; $5c3b: $05
    ld [bc], a                                    ; $5c3c: $02
    ld [bc], a                                    ; $5c3d: $02
    dec b                                         ; $5c3e: $05
    dec b                                         ; $5c3f: $05
    dec b                                         ; $5c40: $05
    dec b                                         ; $5c41: $05
    ld [bc], a                                    ; $5c42: $02
    ld [bc], a                                    ; $5c43: $02
    ld [bc], a                                    ; $5c44: $02
    ld [bc], a                                    ; $5c45: $02
    ld [bc], a                                    ; $5c46: $02
    ld e, e                                       ; $5c47: $5b

jr_083_5c48:
    ld e, h                                       ; $5c48: $5c
    ld e, l                                       ; $5c49: $5d
    ld e, [hl]                                    ; $5c4a: $5e
    ld e, a                                       ; $5c4b: $5f
    ld h, b                                       ; $5c4c: $60
    ld c, e                                       ; $5c4d: $4b
    ld c, h                                       ; $5c4e: $4c
    ld h, c                                       ; $5c4f: $61
    ld h, d                                       ; $5c50: $62
    ld c, l                                       ; $5c51: $4d
    ld c, [hl]                                    ; $5c52: $4e
    ld h, e                                       ; $5c53: $63
    ld h, h                                       ; $5c54: $64
    jr nc, jr_083_5c88                            ; $5c55: $30 $31

    ld [bc], a                                    ; $5c57: $02
    ld [bc], a                                    ; $5c58: $02
    ld [bc], a                                    ; $5c59: $02
    ld [bc], a                                    ; $5c5a: $02
    ld [bc], a                                    ; $5c5b: $02
    dec b                                         ; $5c5c: $05
    ld [bc], a                                    ; $5c5d: $02
    ld [bc], a                                    ; $5c5e: $02
    dec b                                         ; $5c5f: $05
    ld [bc], a                                    ; $5c60: $02
    dec b                                         ; $5c61: $05
    ld [bc], a                                    ; $5c62: $02
    ld [bc], a                                    ; $5c63: $02
    ld [bc], a                                    ; $5c64: $02
    ld [bc], a                                    ; $5c65: $02
    dec b                                         ; $5c66: $05
    ld h, l                                       ; $5c67: $65
    ld h, [hl]                                    ; $5c68: $66
    ld h, a                                       ; $5c69: $67
    ld l, b                                       ; $5c6a: $68
    ld d, e                                       ; $5c6b: $53
    ld d, h                                       ; $5c6c: $54
    ld d, l                                       ; $5c6d: $55
    ld d, [hl]                                    ; $5c6e: $56
    ld d, a                                       ; $5c6f: $57
    ld e, b                                       ; $5c70: $58
    ld e, c                                       ; $5c71: $59
    ld e, d                                       ; $5c72: $5a
    dec a                                         ; $5c73: $3d
    ld a, $3f                                     ; $5c74: $3e $3f
    ld b, b                                       ; $5c76: $40
    dec b                                         ; $5c77: $05
    ld [bc], a                                    ; $5c78: $02
    dec b                                         ; $5c79: $05
    ld [bc], a                                    ; $5c7a: $02
    ld [bc], a                                    ; $5c7b: $02
    dec b                                         ; $5c7c: $05
    ld [bc], a                                    ; $5c7d: $02
    ld [bc], a                                    ; $5c7e: $02
    ld [bc], a                                    ; $5c7f: $02
    ld [bc], a                                    ; $5c80: $02
    ld [bc], a                                    ; $5c81: $02
    ld [bc], a                                    ; $5c82: $02
    dec b                                         ; $5c83: $05
    ld [bc], a                                    ; $5c84: $02
    ld [bc], a                                    ; $5c85: $02
    dec b                                         ; $5c86: $05
    ld [hl], e                                    ; $5c87: $73

jr_083_5c88:
    ld [hl], h                                    ; $5c88: $74
    inc [hl]                                      ; $5c89: $34
    dec [hl]                                      ; $5c8a: $35
    ld [hl], l                                    ; $5c8b: $75
    halt                                          ; $5c8c: $76
    scf                                           ; $5c8d: $37
    jr c, jr_083_5ceb                             ; $5c8e: $38 $5b

    ld e, h                                       ; $5c90: $5c
    ld e, l                                       ; $5c91: $5d
    ld e, [hl]                                    ; $5c92: $5e
    ld e, a                                       ; $5c93: $5f
    ld h, b                                       ; $5c94: $60
    ld c, e                                       ; $5c95: $4b
    ld c, h                                       ; $5c96: $4c
    dec b                                         ; $5c97: $05
    ld [bc], a                                    ; $5c98: $02
    ld [bc], a                                    ; $5c99: $02
    dec b                                         ; $5c9a: $05
    ld [bc], a                                    ; $5c9b: $02
    ld [bc], a                                    ; $5c9c: $02
    dec b                                         ; $5c9d: $05
    dec b                                         ; $5c9e: $05
    ld [bc], a                                    ; $5c9f: $02
    dec b                                         ; $5ca0: $05
    ld [bc], a                                    ; $5ca1: $02
    ld [bc], a                                    ; $5ca2: $02
    dec b                                         ; $5ca3: $05
    ld [bc], a                                    ; $5ca4: $02
    ld [bc], a                                    ; $5ca5: $02
    dec b                                         ; $5ca6: $05
    ld b, c                                       ; $5ca7: $41
    ld b, d                                       ; $5ca8: $42
    ld b, e                                       ; $5ca9: $43
    ld b, h                                       ; $5caa: $44
    ld b, l                                       ; $5cab: $45
    ld b, [hl]                                    ; $5cac: $46
    ld b, a                                       ; $5cad: $47
    ld c, b                                       ; $5cae: $48
    ld h, l                                       ; $5caf: $65
    xor $f1                                       ; $5cb0: $ee $f1
    pop af                                        ; $5cb2: $f1
    ld d, e                                       ; $5cb3: $53
    rst $28                                       ; $5cb4: $ef
    db $ed                                        ; $5cb5: $ed
    db $ed                                        ; $5cb6: $ed
    ld [bc], a                                    ; $5cb7: $02
    ld [bc], a                                    ; $5cb8: $02
    ld [bc], a                                    ; $5cb9: $02
    dec b                                         ; $5cba: $05
    dec b                                         ; $5cbb: $05
    ld [bc], a                                    ; $5cbc: $02
    dec b                                         ; $5cbd: $05
    dec b                                         ; $5cbe: $05
    ld [bc], a                                    ; $5cbf: $02
    add b                                         ; $5cc0: $80

jr_083_5cc1:
    add b                                         ; $5cc1: $80
    add b                                         ; $5cc2: $80
    ld [bc], a                                    ; $5cc3: $02
    add b                                         ; $5cc4: $80
    add b                                         ; $5cc5: $80
    add b                                         ; $5cc6: $80
    ld [hl], e                                    ; $5cc7: $73
    ld [hl], h                                    ; $5cc8: $74
    inc [hl]                                      ; $5cc9: $34
    dec [hl]                                      ; $5cca: $35
    ld [hl], l                                    ; $5ccb: $75
    halt                                          ; $5ccc: $76
    scf                                           ; $5ccd: $37
    jr c, jr_083_5cc1                             ; $5cce: $38 $f1

    pop af                                        ; $5cd0: $f1
    pop af                                        ; $5cd1: $f1
    pop af                                        ; $5cd2: $f1
    db $ed                                        ; $5cd3: $ed
    db $ed                                        ; $5cd4: $ed
    db $ed                                        ; $5cd5: $ed
    db $ed                                        ; $5cd6: $ed
    dec b                                         ; $5cd7: $05
    dec b                                         ; $5cd8: $05
    dec b                                         ; $5cd9: $05
    dec b                                         ; $5cda: $05
    dec b                                         ; $5cdb: $05
    dec b                                         ; $5cdc: $05
    ld [bc], a                                    ; $5cdd: $02
    ld [bc], a                                    ; $5cde: $02
    add b                                         ; $5cdf: $80
    add b                                         ; $5ce0: $80
    add b                                         ; $5ce1: $80
    add b                                         ; $5ce2: $80
    add b                                         ; $5ce3: $80
    add b                                         ; $5ce4: $80
    add b                                         ; $5ce5: $80
    add b                                         ; $5ce6: $80
    ld b, c                                       ; $5ce7: $41
    ld b, d                                       ; $5ce8: $42
    ld b, e                                       ; $5ce9: $43
    ld b, h                                       ; $5cea: $44

jr_083_5ceb:
    ld b, l                                       ; $5ceb: $45
    ld b, [hl]                                    ; $5cec: $46
    ld b, a                                       ; $5ced: $47
    ld c, b                                       ; $5cee: $48
    pop af                                        ; $5cef: $f1
    pop af                                        ; $5cf0: $f1
    pop af                                        ; $5cf1: $f1
    pop af                                        ; $5cf2: $f1
    db $ed                                        ; $5cf3: $ed
    db $ed                                        ; $5cf4: $ed
    db $ed                                        ; $5cf5: $ed
    db $ed                                        ; $5cf6: $ed
    dec b                                         ; $5cf7: $05
    ld [bc], a                                    ; $5cf8: $02
    ld [bc], a                                    ; $5cf9: $02
    dec b                                         ; $5cfa: $05
    dec b                                         ; $5cfb: $05
    ld [bc], a                                    ; $5cfc: $02
    dec b                                         ; $5cfd: $05
    dec b                                         ; $5cfe: $05
    add b                                         ; $5cff: $80
    add b                                         ; $5d00: $80
    add b                                         ; $5d01: $80
    add b                                         ; $5d02: $80
    add b                                         ; $5d03: $80
    add b                                         ; $5d04: $80
    add b                                         ; $5d05: $80
    add b                                         ; $5d06: $80
    ld [hl], e                                    ; $5d07: $73
    ld [hl], h                                    ; $5d08: $74
    ld a, l                                       ; $5d09: $7d
    ld [de], a                                    ; $5d0a: $12
    ld [hl], l                                    ; $5d0b: $75
    halt                                          ; $5d0c: $76
    ld a, a                                       ; $5d0d: $7f
    inc d                                         ; $5d0e: $14
    ld e, e                                       ; $5d0f: $5b
    ld e, h                                       ; $5d10: $5c
    add c                                         ; $5d11: $81
    ld d, $5f                                     ; $5d12: $16 $5f
    ld h, b                                       ; $5d14: $60
    add d                                         ; $5d15: $82
    jr jr_083_5d1a                                ; $5d16: $18 $02

    inc bc                                        ; $5d18: $03
    inc b                                         ; $5d19: $04

jr_083_5d1a:
    inc b                                         ; $5d1a: $04
    ld [bc], a                                    ; $5d1b: $02
    inc bc                                        ; $5d1c: $03
    inc b                                         ; $5d1d: $04
    inc b                                         ; $5d1e: $04
    ld [bc], a                                    ; $5d1f: $02
    inc bc                                        ; $5d20: $03
    inc c                                         ; $5d21: $0c
    inc b                                         ; $5d22: $04
    ld [bc], a                                    ; $5d23: $02
    inc bc                                        ; $5d24: $03
    inc c                                         ; $5d25: $0c
    inc b                                         ; $5d26: $04
    rst $28                                       ; $5d27: $ef
    db $ed                                        ; $5d28: $ed
    db $ed                                        ; $5d29: $ed
    db $ed                                        ; $5d2a: $ed
    ldh a, [$ed]                                  ; $5d2b: $f0 $ed
    db $ed                                        ; $5d2d: $ed
    db $ed                                        ; $5d2e: $ed
    ldh a, [$ed]                                  ; $5d2f: $f0 $ed
    db $ed                                        ; $5d31: $ed
    db $ed                                        ; $5d32: $ed
    ldh a, [$ed]                                  ; $5d33: $f0 $ed
    db $ed                                        ; $5d35: $ed
    db $ed                                        ; $5d36: $ed
    add b                                         ; $5d37: $80
    add b                                         ; $5d38: $80
    add b                                         ; $5d39: $80
    add b                                         ; $5d3a: $80
    add b                                         ; $5d3b: $80
    add b                                         ; $5d3c: $80
    add b                                         ; $5d3d: $80
    add b                                         ; $5d3e: $80
    add b                                         ; $5d3f: $80
    add b                                         ; $5d40: $80
    add b                                         ; $5d41: $80
    add b                                         ; $5d42: $80
    add b                                         ; $5d43: $80
    add b                                         ; $5d44: $80
    add b                                         ; $5d45: $80
    add b                                         ; $5d46: $80
    ld h, c                                       ; $5d47: $61
    ld h, d                                       ; $5d48: $62
    add e                                         ; $5d49: $83
    ld c, c                                       ; $5d4a: $49
    ld h, e                                       ; $5d4b: $63
    ld h, h                                       ; $5d4c: $64
    inc [hl]                                      ; $5d4d: $34
    dec [hl]                                      ; $5d4e: $35
    ld [hl], e                                    ; $5d4f: $73
    ld [hl], h                                    ; $5d50: $74
    scf                                           ; $5d51: $37
    jr c, jr_083_5dc9                             ; $5d52: $38 $75

    halt                                          ; $5d54: $76
    xor $f1                                       ; $5d55: $ee $f1
    dec b                                         ; $5d57: $05
    inc bc                                        ; $5d58: $03
    inc c                                         ; $5d59: $0c
    inc b                                         ; $5d5a: $04
    ld [bc], a                                    ; $5d5b: $02
    inc bc                                        ; $5d5c: $03
    inc bc                                        ; $5d5d: $03
    inc bc                                        ; $5d5e: $03
    ld [bc], a                                    ; $5d5f: $02
    dec b                                         ; $5d60: $05
    ld [bc], a                                    ; $5d61: $02
    inc bc                                        ; $5d62: $03
    dec b                                         ; $5d63: $05
    ld [bc], a                                    ; $5d64: $02
    add b                                         ; $5d65: $80
    add b                                         ; $5d66: $80
    ldh a, [$ed]                                  ; $5d67: $f0 $ed
    db $ed                                        ; $5d69: $ed
    db $ed                                        ; $5d6a: $ed
    ldh a, [$84]                                  ; $5d6b: $f0 $84
    db $ed                                        ; $5d6d: $ed
    db $ed                                        ; $5d6e: $ed
    rst $28                                       ; $5d6f: $ef
    add h                                         ; $5d70: $84
    db $ed                                        ; $5d71: $ed
    db $ed                                        ; $5d72: $ed
    db $f4                                        ; $5d73: $f4
    add h                                         ; $5d74: $84
    db $ed                                        ; $5d75: $ed
    db $ed                                        ; $5d76: $ed
    add b                                         ; $5d77: $80
    add b                                         ; $5d78: $80
    add b                                         ; $5d79: $80
    add b                                         ; $5d7a: $80
    add b                                         ; $5d7b: $80
    xor b                                         ; $5d7c: $a8
    add b                                         ; $5d7d: $80
    add b                                         ; $5d7e: $80
    add b                                         ; $5d7f: $80
    xor b                                         ; $5d80: $a8
    add b                                         ; $5d81: $80
    add b                                         ; $5d82: $80
    add b                                         ; $5d83: $80
    xor b                                         ; $5d84: $a8
    add b                                         ; $5d85: $80
    add b                                         ; $5d86: $80
    ld e, e                                       ; $5d87: $5b
    ld e, h                                       ; $5d88: $5c
    rst $28                                       ; $5d89: $ef
    db $ed                                        ; $5d8a: $ed
    ld e, a                                       ; $5d8b: $5f
    ld h, b                                       ; $5d8c: $60
    rst $28                                       ; $5d8d: $ef
    db $ed                                        ; $5d8e: $ed
    ld h, c                                       ; $5d8f: $61
    ld h, d                                       ; $5d90: $62
    rst $28                                       ; $5d91: $ef
    db $ed                                        ; $5d92: $ed
    ld h, e                                       ; $5d93: $63
    ld h, h                                       ; $5d94: $64
    rst $28                                       ; $5d95: $ef
    db $ed                                        ; $5d96: $ed
    ld [bc], a                                    ; $5d97: $02
    ld [bc], a                                    ; $5d98: $02
    add b                                         ; $5d99: $80
    add b                                         ; $5d9a: $80
    ld [bc], a                                    ; $5d9b: $02
    inc bc                                        ; $5d9c: $03
    add b                                         ; $5d9d: $80
    add b                                         ; $5d9e: $80
    ld [bc], a                                    ; $5d9f: $02
    inc bc                                        ; $5da0: $03
    add b                                         ; $5da1: $80
    add b                                         ; $5da2: $80
    ld [bc], a                                    ; $5da3: $02
    inc bc                                        ; $5da4: $03
    add b                                         ; $5da5: $80
    add b                                         ; $5da6: $80
    ld [hl], e                                    ; $5da7: $73
    ld [hl], h                                    ; $5da8: $74
    rst $28                                       ; $5da9: $ef
    db $ed                                        ; $5daa: $ed
    ld [hl], l                                    ; $5dab: $75
    halt                                          ; $5dac: $76
    rst $28                                       ; $5dad: $ef
    db $ed                                        ; $5dae: $ed
    pop af                                        ; $5daf: $f1
    pop af                                        ; $5db0: $f1
    db $f4                                        ; $5db1: $f4
    db $ed                                        ; $5db2: $ed
    db $ed                                        ; $5db3: $ed
    db $ed                                        ; $5db4: $ed
    db $ed                                        ; $5db5: $ed
    db $ed                                        ; $5db6: $ed
    ld [bc], a                                    ; $5db7: $02
    inc bc                                        ; $5db8: $03
    add b                                         ; $5db9: $80
    add b                                         ; $5dba: $80
    ld [bc], a                                    ; $5dbb: $02
    inc bc                                        ; $5dbc: $03
    add b                                         ; $5dbd: $80
    add b                                         ; $5dbe: $80
    add b                                         ; $5dbf: $80
    add b                                         ; $5dc0: $80
    add b                                         ; $5dc1: $80
    add b                                         ; $5dc2: $80
    add b                                         ; $5dc3: $80
    add b                                         ; $5dc4: $80
    add b                                         ; $5dc5: $80
    add b                                         ; $5dc6: $80
    db $ed                                        ; $5dc7: $ed
    db $ed                                        ; $5dc8: $ed

jr_083_5dc9:
    ld a, h                                       ; $5dc9: $7c
    pop af                                        ; $5dca: $f1
    db $ed                                        ; $5dcb: $ed
    db $ed                                        ; $5dcc: $ed
    db $ed                                        ; $5dcd: $ed
    db $ed                                        ; $5dce: $ed
    db $ed                                        ; $5dcf: $ed
    db $ed                                        ; $5dd0: $ed
    db $ed                                        ; $5dd1: $ed
    db $ed                                        ; $5dd2: $ed
    db $ed                                        ; $5dd3: $ed
    db $ed                                        ; $5dd4: $ed
    db $ed                                        ; $5dd5: $ed
    db $ed                                        ; $5dd6: $ed
    add b                                         ; $5dd7: $80
    add b                                         ; $5dd8: $80
    add b                                         ; $5dd9: $80
    add b                                         ; $5dda: $80
    add b                                         ; $5ddb: $80
    add b                                         ; $5ddc: $80
    add b                                         ; $5ddd: $80
    add b                                         ; $5dde: $80
    add b                                         ; $5ddf: $80
    add b                                         ; $5de0: $80
    add b                                         ; $5de1: $80
    add b                                         ; $5de2: $80
    add b                                         ; $5de3: $80
    add b                                         ; $5de4: $80
    add b                                         ; $5de5: $80
    add b                                         ; $5de6: $80
    dec sp                                        ; $5de7: $3b
    dec sp                                        ; $5de8: $3b
    dec sp                                        ; $5de9: $3b
    dec sp                                        ; $5dea: $3b
    inc a                                         ; $5deb: $3c
    inc a                                         ; $5dec: $3c
    inc a                                         ; $5ded: $3c
    inc a                                         ; $5dee: $3c
    db $ed                                        ; $5def: $ed
    db $ed                                        ; $5df0: $ed
    db $ed                                        ; $5df1: $ed
    db $ed                                        ; $5df2: $ed
    db $ed                                        ; $5df3: $ed
    db $ed                                        ; $5df4: $ed
    db $ed                                        ; $5df5: $ed
    db $ed                                        ; $5df6: $ed
    adc b                                         ; $5df7: $88
    adc b                                         ; $5df8: $88
    adc b                                         ; $5df9: $88
    adc b                                         ; $5dfa: $88
    adc b                                         ; $5dfb: $88
    adc b                                         ; $5dfc: $88
    adc b                                         ; $5dfd: $88
    adc b                                         ; $5dfe: $88
    add b                                         ; $5dff: $80
    add b                                         ; $5e00: $80
    add b                                         ; $5e01: $80
    add b                                         ; $5e02: $80
    add b                                         ; $5e03: $80
    add b                                         ; $5e04: $80
    add b                                         ; $5e05: $80
    add b                                         ; $5e06: $80
    inc c                                         ; $5e07: $0c
    nop                                           ; $5e08: $00
    inc de                                        ; $5e09: $13
    nop                                           ; $5e0a: $00
    ldh [rNR10], a                                ; $5e0b: $e0 $10
    db $ed                                        ; $5e0d: $ed
    db $ed                                        ; $5e0e: $ed
    db $ed                                        ; $5e0f: $ed
    db $ed                                        ; $5e10: $ed
    db $ed                                        ; $5e11: $ed
    db $ed                                        ; $5e12: $ed
    db $ed                                        ; $5e13: $ed
    db $ed                                        ; $5e14: $ed
    db $ed                                        ; $5e15: $ed
    db $ed                                        ; $5e16: $ed
    db $ed                                        ; $5e17: $ed
    db $ed                                        ; $5e18: $ed
    db $ed                                        ; $5e19: $ed
    db $ed                                        ; $5e1a: $ed
    db $ed                                        ; $5e1b: $ed
    db $ed                                        ; $5e1c: $ed
    add b                                         ; $5e1d: $80
    add b                                         ; $5e1e: $80
    add b                                         ; $5e1f: $80
    add b                                         ; $5e20: $80
    add b                                         ; $5e21: $80
    add b                                         ; $5e22: $80
    add b                                         ; $5e23: $80
    add b                                         ; $5e24: $80
    add b                                         ; $5e25: $80
    add b                                         ; $5e26: $80
    add b                                         ; $5e27: $80
    add b                                         ; $5e28: $80
    add b                                         ; $5e29: $80
    add b                                         ; $5e2a: $80
    add b                                         ; $5e2b: $80
    add b                                         ; $5e2c: $80
    db $ed                                        ; $5e2d: $ed
    db $ed                                        ; $5e2e: $ed
    db $ed                                        ; $5e2f: $ed
    xor $ed                                       ; $5e30: $ee $ed
    db $ed                                        ; $5e32: $ed
    db $ed                                        ; $5e33: $ed
    xor $ed                                       ; $5e34: $ee $ed
    db $ed                                        ; $5e36: $ed
    db $ed                                        ; $5e37: $ed
    xor $ed                                       ; $5e38: $ee $ed
    db $ed                                        ; $5e3a: $ed
    db $ed                                        ; $5e3b: $ed
    xor $80                                       ; $5e3c: $ee $80
    add b                                         ; $5e3e: $80
    add b                                         ; $5e3f: $80
    add b                                         ; $5e40: $80
    add b                                         ; $5e41: $80
    add b                                         ; $5e42: $80
    add b                                         ; $5e43: $80
    add b                                         ; $5e44: $80
    add b                                         ; $5e45: $80
    add b                                         ; $5e46: $80
    add b                                         ; $5e47: $80
    add b                                         ; $5e48: $80
    add b                                         ; $5e49: $80
    add b                                         ; $5e4a: $80
    add b                                         ; $5e4b: $80
    add b                                         ; $5e4c: $80
    rst $28                                       ; $5e4d: $ef
    ldh a, [$f1]                                  ; $5e4e: $f0 $f1
    ld a, [c]                                     ; $5e50: $f2
    di                                            ; $5e51: $f3
    db $f4                                        ; $5e52: $f4
    push af                                       ; $5e53: $f5
    or $f0                                        ; $5e54: $f6 $f0
    rst $30                                       ; $5e56: $f7
    rst $30                                       ; $5e57: $f7
    pop af                                        ; $5e58: $f1
    ld hl, sp-$07                                 ; $5e59: $f8 $f9
    or $fa                                        ; $5e5b: $f6 $fa
    inc b                                         ; $5e5d: $04
    inc b                                         ; $5e5e: $04
    inc b                                         ; $5e5f: $04
    inc b                                         ; $5e60: $04
    inc b                                         ; $5e61: $04
    inc b                                         ; $5e62: $04
    inc b                                         ; $5e63: $04
    inc b                                         ; $5e64: $04
    inc b                                         ; $5e65: $04
    inc b                                         ; $5e66: $04
    inc b                                         ; $5e67: $04
    inc b                                         ; $5e68: $04
    inc b                                         ; $5e69: $04
    inc b                                         ; $5e6a: $04
    inc b                                         ; $5e6b: $04
    inc b                                         ; $5e6c: $04
    ei                                            ; $5e6d: $fb
    db $fc                                        ; $5e6e: $fc
    db $fd                                        ; $5e6f: $fd
    cp $fa                                        ; $5e70: $fe $fa
    db $f4                                        ; $5e72: $f4
    push af                                       ; $5e73: $f5
    rst $38                                       ; $5e74: $ff
    ld a, [c]                                     ; $5e75: $f2
    ei                                            ; $5e76: $fb
    db $fc                                        ; $5e77: $fc
    nop                                           ; $5e78: $00
    db $f4                                        ; $5e79: $f4
    push af                                       ; $5e7a: $f5
    ld hl, sp-$07                                 ; $5e7b: $f8 $f9
    inc b                                         ; $5e7d: $04
    inc b                                         ; $5e7e: $04
    inc b                                         ; $5e7f: $04
    inc b                                         ; $5e80: $04
    inc b                                         ; $5e81: $04
    inc b                                         ; $5e82: $04
    inc b                                         ; $5e83: $04
    inc b                                         ; $5e84: $04
    inc b                                         ; $5e85: $04
    inc b                                         ; $5e86: $04
    inc b                                         ; $5e87: $04
    inc b                                         ; $5e88: $04
    inc b                                         ; $5e89: $04
    inc b                                         ; $5e8a: $04
    inc b                                         ; $5e8b: $04
    inc b                                         ; $5e8c: $04
    db $fd                                        ; $5e8d: $fd
    cp $f1                                        ; $5e8e: $fe $f1
    ld a, [c]                                     ; $5e90: $f2
    ld bc, $0302                                  ; $5e91: $01 $02 $03
    inc b                                         ; $5e94: $04
    dec b                                         ; $5e95: $05
    ld b, $07                                     ; $5e96: $06 $07
    ld [$0a09], sp                                ; $5e98: $08 $09 $0a
    dec bc                                        ; $5e9b: $0b
    inc c                                         ; $5e9c: $0c
    inc b                                         ; $5e9d: $04
    inc b                                         ; $5e9e: $04
    inc b                                         ; $5e9f: $04
    inc b                                         ; $5ea0: $04
    inc bc                                        ; $5ea1: $03
    inc bc                                        ; $5ea2: $03
    inc bc                                        ; $5ea3: $03
    inc bc                                        ; $5ea4: $03
    inc bc                                        ; $5ea5: $03
    ld [bc], a                                    ; $5ea6: $02
    ld [bc], a                                    ; $5ea7: $02
    ld [bc], a                                    ; $5ea8: $02
    inc bc                                        ; $5ea9: $03
    ld [bc], a                                    ; $5eaa: $02
    ld [bc], a                                    ; $5eab: $02
    ld [bc], a                                    ; $5eac: $02
    ei                                            ; $5ead: $fb
    db $fc                                        ; $5eae: $fc
    db $fd                                        ; $5eaf: $fd
    cp $0d                                        ; $5eb0: $fe $0d
    ld c, $0f                                     ; $5eb2: $0e $0f
    ld bc, $1110                                  ; $5eb4: $01 $10 $11
    ld [de], a                                    ; $5eb7: $12
    dec b                                         ; $5eb8: $05
    inc de                                        ; $5eb9: $13
    inc d                                         ; $5eba: $14
    dec d                                         ; $5ebb: $15
    add hl, bc                                    ; $5ebc: $09
    inc b                                         ; $5ebd: $04
    inc b                                         ; $5ebe: $04

jr_083_5ebf:
    inc b                                         ; $5ebf: $04
    inc b                                         ; $5ec0: $04
    inc bc                                        ; $5ec1: $03
    inc bc                                        ; $5ec2: $03
    inc bc                                        ; $5ec3: $03
    inc bc                                        ; $5ec4: $03
    ld [bc], a                                    ; $5ec5: $02
    ld [bc], a                                    ; $5ec6: $02
    ld [bc], a                                    ; $5ec7: $02
    ld [bc], a                                    ; $5ec8: $02
    ld [bc], a                                    ; $5ec9: $02
    ld [bc], a                                    ; $5eca: $02
    ld [bc], a                                    ; $5ecb: $02
    ld [bc], a                                    ; $5ecc: $02
    db $ed                                        ; $5ecd: $ed
    ld d, $17                                     ; $5ece: $16 $17
    jr jr_083_5ebf                                ; $5ed0: $18 $ed

    xor $19                                       ; $5ed2: $ee $19
    ld a, [de]                                    ; $5ed4: $1a
    db $ed                                        ; $5ed5: $ed
    dec de                                        ; $5ed6: $1b
    inc e                                         ; $5ed7: $1c
    dec e                                         ; $5ed8: $1d
    db $ed                                        ; $5ed9: $ed
    dec de                                        ; $5eda: $1b
    ld e, $1f                                     ; $5edb: $1e $1f
    add b                                         ; $5edd: $80
    add b                                         ; $5ede: $80
    add b                                         ; $5edf: $80
    add b                                         ; $5ee0: $80
    add b                                         ; $5ee1: $80
    add b                                         ; $5ee2: $80
    ld h, $26                                     ; $5ee3: $26 $26
    add b                                         ; $5ee5: $80
    add b                                         ; $5ee6: $80
    ld h, $26                                     ; $5ee7: $26 $26
    add b                                         ; $5ee9: $80
    add b                                         ; $5eea: $80
    ld h, $26                                     ; $5eeb: $26 $26
    jr nz, jr_083_5f10                            ; $5eed: $20 $21

    ld [hl+], a                                   ; $5eef: $22
    inc hl                                        ; $5ef0: $23
    inc h                                         ; $5ef1: $24
    dec h                                         ; $5ef2: $25
    ld h, $27                                     ; $5ef3: $26 $27
    ld bc, $0302                                  ; $5ef5: $01 $02 $03
    inc b                                         ; $5ef8: $04
    dec b                                         ; $5ef9: $05
    ld b, $07                                     ; $5efa: $06 $07
    ld [$0203], sp                                ; $5efc: $08 $03 $02
    ld [bc], a                                    ; $5eff: $02
    ld [bc], a                                    ; $5f00: $02
    inc bc                                        ; $5f01: $03
    ld [bc], a                                    ; $5f02: $02
    ld [bc], a                                    ; $5f03: $02
    ld [bc], a                                    ; $5f04: $02
    inc bc                                        ; $5f05: $03
    ld [bc], a                                    ; $5f06: $02
    ld [bc], a                                    ; $5f07: $02
    ld [bc], a                                    ; $5f08: $02
    inc bc                                        ; $5f09: $03
    ld [bc], a                                    ; $5f0a: $02
    ld [bc], a                                    ; $5f0b: $02
    ld [bc], a                                    ; $5f0c: $02
    jr z, jr_083_5f38                             ; $5f0d: $28 $29

    ld a, [hl+]                                   ; $5f0f: $2a

jr_083_5f10:
    jr nz, jr_083_5f3d                            ; $5f10: $20 $2b

    inc l                                         ; $5f12: $2c
    dec l                                         ; $5f13: $2d
    inc h                                         ; $5f14: $24
    dec c                                         ; $5f15: $0d
    ld c, $0f                                     ; $5f16: $0e $0f
    ld bc, $1110                                  ; $5f18: $01 $10 $11
    ld [de], a                                    ; $5f1b: $12
    dec b                                         ; $5f1c: $05
    ld [bc], a                                    ; $5f1d: $02
    ld [bc], a                                    ; $5f1e: $02
    ld [bc], a                                    ; $5f1f: $02
    ld [bc], a                                    ; $5f20: $02
    ld [bc], a                                    ; $5f21: $02
    ld [bc], a                                    ; $5f22: $02
    ld [bc], a                                    ; $5f23: $02
    ld [bc], a                                    ; $5f24: $02
    ld [bc], a                                    ; $5f25: $02
    ld [bc], a                                    ; $5f26: $02
    ld [bc], a                                    ; $5f27: $02
    ld [bc], a                                    ; $5f28: $02
    ld [bc], a                                    ; $5f29: $02
    ld [bc], a                                    ; $5f2a: $02
    ld [bc], a                                    ; $5f2b: $02
    ld [bc], a                                    ; $5f2c: $02
    db $ed                                        ; $5f2d: $ed
    dec de                                        ; $5f2e: $1b
    ld l, $2f                                     ; $5f2f: $2e $2f
    db $ed                                        ; $5f31: $ed
    dec de                                        ; $5f32: $1b
    jr nc, jr_083_5f66                            ; $5f33: $30 $31

    ld [hl-], a                                   ; $5f35: $32
    dec de                                        ; $5f36: $1b
    inc l                                         ; $5f37: $2c

jr_083_5f38:
    dec d                                         ; $5f38: $15
    ld [hl-], a                                   ; $5f39: $32
    xor $0e                                       ; $5f3a: $ee $0e
    ld a, [hl+]                                   ; $5f3c: $2a

jr_083_5f3d:
    add b                                         ; $5f3d: $80
    add b                                         ; $5f3e: $80
    ld h, $26                                     ; $5f3f: $26 $26
    add b                                         ; $5f41: $80
    add b                                         ; $5f42: $80
    ld h, $26                                     ; $5f43: $26 $26
    and b                                         ; $5f45: $a0
    add b                                         ; $5f46: $80
    inc bc                                        ; $5f47: $03
    inc bc                                        ; $5f48: $03
    and b                                         ; $5f49: $a0
    add b                                         ; $5f4a: $80
    inc bc                                        ; $5f4b: $03
    ld [bc], a                                    ; $5f4c: $02
    add hl, bc                                    ; $5f4d: $09
    ld a, [bc]                                    ; $5f4e: $0a
    dec bc                                        ; $5f4f: $0b
    inc c                                         ; $5f50: $0c
    jr nz, jr_083_5f74                            ; $5f51: $20 $21

    ld [hl+], a                                   ; $5f53: $22
    inc hl                                        ; $5f54: $23
    inc h                                         ; $5f55: $24
    dec h                                         ; $5f56: $25
    ld h, $27                                     ; $5f57: $26 $27
    ld bc, $0302                                  ; $5f59: $01 $02 $03
    inc b                                         ; $5f5c: $04
    inc bc                                        ; $5f5d: $03
    ld [bc], a                                    ; $5f5e: $02
    ld [bc], a                                    ; $5f5f: $02
    ld [bc], a                                    ; $5f60: $02
    inc bc                                        ; $5f61: $03
    ld [bc], a                                    ; $5f62: $02
    ld [bc], a                                    ; $5f63: $02
    ld [bc], a                                    ; $5f64: $02
    inc bc                                        ; $5f65: $03

jr_083_5f66:
    ld [bc], a                                    ; $5f66: $02
    ld [bc], a                                    ; $5f67: $02
    ld [bc], a                                    ; $5f68: $02
    ld [bc], a                                    ; $5f69: $02
    ld [bc], a                                    ; $5f6a: $02
    ld [bc], a                                    ; $5f6b: $02
    ld [bc], a                                    ; $5f6c: $02
    inc de                                        ; $5f6d: $13
    inc d                                         ; $5f6e: $14
    dec d                                         ; $5f6f: $15
    add hl, bc                                    ; $5f70: $09
    jr z, @+$2b                                   ; $5f71: $28 $29

    ld a, [hl+]                                   ; $5f73: $2a

jr_083_5f74:
    jr nz, jr_083_5fa1                            ; $5f74: $20 $2b

    inc l                                         ; $5f76: $2c
    dec l                                         ; $5f77: $2d
    inc h                                         ; $5f78: $24
    dec c                                         ; $5f79: $0d
    ld c, $0f                                     ; $5f7a: $0e $0f
    ld bc, $0202                                  ; $5f7c: $01 $02 $02
    ld [bc], a                                    ; $5f7f: $02
    ld [bc], a                                    ; $5f80: $02
    ld [bc], a                                    ; $5f81: $02
    ld [bc], a                                    ; $5f82: $02
    ld [bc], a                                    ; $5f83: $02
    ld [bc], a                                    ; $5f84: $02
    ld [bc], a                                    ; $5f85: $02
    ld [bc], a                                    ; $5f86: $02
    ld [bc], a                                    ; $5f87: $02
    ld [bc], a                                    ; $5f88: $02
    ld [bc], a                                    ; $5f89: $02
    ld [bc], a                                    ; $5f8a: $02
    ld [bc], a                                    ; $5f8b: $02
    ld [bc], a                                    ; $5f8c: $02
    rst $30                                       ; $5f8d: $f7
    pop af                                        ; $5f8e: $f1
    ld a, [c]                                     ; $5f8f: $f2
    ei                                            ; $5f90: $fb
    di                                            ; $5f91: $f3
    rst $38                                       ; $5f92: $ff
    di                                            ; $5f93: $f3
    inc sp                                        ; $5f94: $33
    ldh a, [rP1]                                  ; $5f95: $f0 $00
    ldh a, [$f7]                                  ; $5f97: $f0 $f7
    inc sp                                        ; $5f99: $33
    inc sp                                        ; $5f9a: $33
    ld hl, sp-$07                                 ; $5f9b: $f8 $f9
    inc b                                         ; $5f9d: $04
    inc b                                         ; $5f9e: $04
    inc b                                         ; $5f9f: $04
    inc b                                         ; $5fa0: $04

jr_083_5fa1:
    inc b                                         ; $5fa1: $04
    inc b                                         ; $5fa2: $04
    inc b                                         ; $5fa3: $04
    inc b                                         ; $5fa4: $04
    inc b                                         ; $5fa5: $04
    inc b                                         ; $5fa6: $04
    inc b                                         ; $5fa7: $04
    inc b                                         ; $5fa8: $04
    inc b                                         ; $5fa9: $04
    inc b                                         ; $5faa: $04
    inc b                                         ; $5fab: $04
    inc b                                         ; $5fac: $04
    db $fc                                        ; $5fad: $fc
    pop af                                        ; $5fae: $f1
    ld a, [c]                                     ; $5faf: $f2
    ei                                            ; $5fb0: $fb
    inc sp                                        ; $5fb1: $33
    inc sp                                        ; $5fb2: $33
    db $f4                                        ; $5fb3: $f4
    push af                                       ; $5fb4: $f5
    rst $30                                       ; $5fb5: $f7
    rst $30                                       ; $5fb6: $f7
    ei                                            ; $5fb7: $fb
    db $fc                                        ; $5fb8: $fc
    or $fa                                        ; $5fb9: $f6 $fa
    db $f4                                        ; $5fbb: $f4
    push af                                       ; $5fbc: $f5
    inc b                                         ; $5fbd: $04
    inc b                                         ; $5fbe: $04
    inc b                                         ; $5fbf: $04
    inc b                                         ; $5fc0: $04
    inc b                                         ; $5fc1: $04
    inc b                                         ; $5fc2: $04
    inc b                                         ; $5fc3: $04
    inc b                                         ; $5fc4: $04
    inc b                                         ; $5fc5: $04
    inc b                                         ; $5fc6: $04
    inc b                                         ; $5fc7: $04
    inc b                                         ; $5fc8: $04
    inc b                                         ; $5fc9: $04
    inc b                                         ; $5fca: $04
    inc b                                         ; $5fcb: $04
    inc b                                         ; $5fcc: $04
    db $fc                                        ; $5fcd: $fc
    db $fd                                        ; $5fce: $fd
    cp $f7                                        ; $5fcf: $fe $f7
    ld hl, sp-$07                                 ; $5fd1: $f8 $f9
    di                                            ; $5fd3: $f3
    rst $38                                       ; $5fd4: $ff
    db $fd                                        ; $5fd5: $fd
    cp $f0                                        ; $5fd6: $fe $f0
    nop                                           ; $5fd8: $00
    or $fa                                        ; $5fd9: $f6 $fa
    db $f4                                        ; $5fdb: $f4
    push af                                       ; $5fdc: $f5
    inc b                                         ; $5fdd: $04
    inc b                                         ; $5fde: $04
    inc b                                         ; $5fdf: $04
    inc b                                         ; $5fe0: $04
    inc b                                         ; $5fe1: $04
    inc b                                         ; $5fe2: $04
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
    rst $30                                       ; $5fed: $f7
    nop                                           ; $5fee: $00
    ldh a, [$f1]                                  ; $5fef: $f0 $f1
    di                                            ; $5ff1: $f3
    or $fa                                        ; $5ff2: $f6 $fa
    db $f4                                        ; $5ff4: $f4
    ldh a, [$f1]                                  ; $5ff5: $f0 $f1
    ld a, [c]                                     ; $5ff7: $f2
    ei                                            ; $5ff8: $fb
    rst $38                                       ; $5ff9: $ff
    di                                            ; $5ffa: $f3
    rst $38                                       ; $5ffb: $ff
    di                                            ; $5ffc: $f3
    inc b                                         ; $5ffd: $04
    inc b                                         ; $5ffe: $04
    inc b                                         ; $5fff: $04
    inc b                                         ; $6000: $04
    inc b                                         ; $6001: $04
    inc b                                         ; $6002: $04
    inc b                                         ; $6003: $04
    inc b                                         ; $6004: $04
    inc b                                         ; $6005: $04
    inc b                                         ; $6006: $04
    inc b                                         ; $6007: $04
    inc b                                         ; $6008: $04
    inc b                                         ; $6009: $04
    inc b                                         ; $600a: $04
    inc b                                         ; $600b: $04
    inc b                                         ; $600c: $04
    rst $30                                       ; $600d: $f7
    rst $30                                       ; $600e: $f7
    db $fd                                        ; $600f: $fd
    cp $02                                        ; $6010: $fe $02
    dec bc                                        ; $6012: $0b
    inc b                                         ; $6013: $04
    dec c                                         ; $6014: $0d
    ld b, $22                                     ; $6015: $06 $22
    ld [$0a10], sp                                ; $6017: $08 $10 $0a
    ld h, $0c                                     ; $601a: $26 $0c
    inc de                                        ; $601c: $13
    inc b                                         ; $601d: $04
    inc b                                         ; $601e: $04
    inc b                                         ; $601f: $04
    inc b                                         ; $6020: $04
    inc bc                                        ; $6021: $03
    inc bc                                        ; $6022: $03
    inc bc                                        ; $6023: $03
    inc bc                                        ; $6024: $03
    ld [bc], a                                    ; $6025: $02
    ld [bc], a                                    ; $6026: $02
    ld [bc], a                                    ; $6027: $02
    ld [bc], a                                    ; $6028: $02
    ld [bc], a                                    ; $6029: $02
    ld [bc], a                                    ; $602a: $02
    ld [bc], a                                    ; $602b: $02
    ld [bc], a                                    ; $602c: $02
    pop af                                        ; $602d: $f1
    ld a, [c]                                     ; $602e: $f2
    ei                                            ; $602f: $fb
    db $fc                                        ; $6030: $fc
    ld c, $2a                                     ; $6031: $0e $2a
    ld bc, $1102                                  ; $6033: $01 $02 $11
    dec l                                         ; $6036: $2d
    dec b                                         ; $6037: $05
    ld b, $14                                     ; $6038: $06 $14
    rrca                                          ; $603a: $0f
    add hl, bc                                    ; $603b: $09
    ld a, [bc]                                    ; $603c: $0a
    inc b                                         ; $603d: $04
    inc b                                         ; $603e: $04
    inc b                                         ; $603f: $04
    inc b                                         ; $6040: $04
    inc bc                                        ; $6041: $03
    inc bc                                        ; $6042: $03
    inc bc                                        ; $6043: $03
    inc bc                                        ; $6044: $03
    ld [bc], a                                    ; $6045: $02
    ld [bc], a                                    ; $6046: $02
    ld [bc], a                                    ; $6047: $02
    ld [bc], a                                    ; $6048: $02
    ld [bc], a                                    ; $6049: $02
    ld [bc], a                                    ; $604a: $02
    ld [bc], a                                    ; $604b: $02
    ld [bc], a                                    ; $604c: $02
    pop af                                        ; $604d: $f1
    ld a, [c]                                     ; $604e: $f2
    ei                                            ; $604f: $fb
    db $fc                                        ; $6050: $fc
    inc bc                                        ; $6051: $03
    inc b                                         ; $6052: $04
    dec c                                         ; $6053: $0d
    ld c, $07                                     ; $6054: $0e $07
    ld [$1110], sp                                ; $6056: $08 $10 $11
    dec bc                                        ; $6059: $0b
    inc c                                         ; $605a: $0c
    inc de                                        ; $605b: $13
    inc d                                         ; $605c: $14
    inc b                                         ; $605d: $04
    inc b                                         ; $605e: $04
    inc b                                         ; $605f: $04
    inc b                                         ; $6060: $04
    inc bc                                        ; $6061: $03
    inc bc                                        ; $6062: $03
    inc bc                                        ; $6063: $03
    inc bc                                        ; $6064: $03
    ld [bc], a                                    ; $6065: $02
    ld [bc], a                                    ; $6066: $02
    ld [bc], a                                    ; $6067: $02
    ld [bc], a                                    ; $6068: $02
    ld [bc], a                                    ; $6069: $02
    ld [bc], a                                    ; $606a: $02
    ld [bc], a                                    ; $606b: $02
    ld [bc], a                                    ; $606c: $02
    nop                                           ; $606d: $00
    ldh a, [rP1]                                  ; $606e: $f0 $00
    ldh a, [rIF]                                  ; $6070: $f0 $0f
    ld bc, $0b02                                  ; $6072: $01 $02 $0b
    ld [de], a                                    ; $6075: $12
    dec b                                         ; $6076: $05
    ld b, $22                                     ; $6077: $06 $22
    dec d                                         ; $6079: $15
    add hl, bc                                    ; $607a: $09
    ld a, [bc]                                    ; $607b: $0a
    ld h, $04                                     ; $607c: $26 $04
    inc b                                         ; $607e: $04
    inc b                                         ; $607f: $04
    inc b                                         ; $6080: $04
    inc bc                                        ; $6081: $03
    inc bc                                        ; $6082: $03
    ld [bc], a                                    ; $6083: $02
    inc bc                                        ; $6084: $03
    ld [bc], a                                    ; $6085: $02
    ld [bc], a                                    ; $6086: $02
    ld [bc], a                                    ; $6087: $02
    ld [bc], a                                    ; $6088: $02
    ld [bc], a                                    ; $6089: $02
    ld [bc], a                                    ; $608a: $02
    ld [bc], a                                    ; $608b: $02
    ld [bc], a                                    ; $608c: $02
    ld hl, $2303                                  ; $608d: $21 $03 $23
    jr z, jr_083_60b7                             ; $6090: $28 $25

    rlca                                          ; $6092: $07
    daa                                           ; $6093: $27
    dec hl                                        ; $6094: $2b
    ld [bc], a                                    ; $6095: $02
    dec bc                                        ; $6096: $0b
    inc b                                         ; $6097: $04
    dec c                                         ; $6098: $0d
    ld b, $22                                     ; $6099: $06 $22
    ld [$0210], sp                                ; $609b: $08 $10 $02
    ld [bc], a                                    ; $609e: $02
    ld [bc], a                                    ; $609f: $02
    ld [bc], a                                    ; $60a0: $02
    ld [bc], a                                    ; $60a1: $02
    ld [bc], a                                    ; $60a2: $02
    ld [bc], a                                    ; $60a3: $02
    ld [bc], a                                    ; $60a4: $02
    ld [bc], a                                    ; $60a5: $02
    ld [bc], a                                    ; $60a6: $02
    ld [bc], a                                    ; $60a7: $02
    ld [bc], a                                    ; $60a8: $02
    ld [bc], a                                    ; $60a9: $02
    ld [bc], a                                    ; $60aa: $02
    ld [bc], a                                    ; $60ab: $02
    ld [bc], a                                    ; $60ac: $02
    add hl, hl                                    ; $60ad: $29
    ld [de], a                                    ; $60ae: $12
    jr nz, @+$23                                  ; $60af: $20 $21

    inc l                                         ; $60b1: $2c
    dec d                                         ; $60b2: $15
    inc h                                         ; $60b3: $24
    dec h                                         ; $60b4: $25
    ld c, $2a                                     ; $60b5: $0e $2a

jr_083_60b7:
    inc [hl]                                      ; $60b7: $34
    dec [hl]                                      ; $60b8: $35
    ld de, $362d                                  ; $60b9: $11 $2d $36
    scf                                           ; $60bc: $37
    ld [bc], a                                    ; $60bd: $02
    ld [bc], a                                    ; $60be: $02
    ld [bc], a                                    ; $60bf: $02
    ld [bc], a                                    ; $60c0: $02
    ld [bc], a                                    ; $60c1: $02
    ld [bc], a                                    ; $60c2: $02
    ld [bc], a                                    ; $60c3: $02
    ld [bc], a                                    ; $60c4: $02
    ld [bc], a                                    ; $60c5: $02
    ld [bc], a                                    ; $60c6: $02
    ld [bc], a                                    ; $60c7: $02
    ld [bc], a                                    ; $60c8: $02
    ld [bc], a                                    ; $60c9: $02
    ld [bc], a                                    ; $60ca: $02
    add [hl]                                      ; $60cb: $86
    add [hl]                                      ; $60cc: $86
    ld [hl+], a                                   ; $60cd: $22
    inc hl                                        ; $60ce: $23
    jr z, jr_083_60fa                             ; $60cf: $28 $29

    ld h, $27                                     ; $60d1: $26 $27
    dec hl                                        ; $60d3: $2b
    inc l                                         ; $60d4: $2c
    jr c, jr_083_6110                             ; $60d5: $38 $39

    dec c                                         ; $60d7: $0d
    ld c, $3a                                     ; $60d8: $0e $3a
    ld [hl], $10                                  ; $60da: $36 $10
    ld de, $0202                                  ; $60dc: $11 $02 $02
    ld [bc], a                                    ; $60df: $02
    ld [bc], a                                    ; $60e0: $02
    ld [bc], a                                    ; $60e1: $02
    ld [bc], a                                    ; $60e2: $02
    ld [bc], a                                    ; $60e3: $02
    ld [bc], a                                    ; $60e4: $02
    ld [bc], a                                    ; $60e5: $02
    ld [bc], a                                    ; $60e6: $02
    ld [bc], a                                    ; $60e7: $02
    ld [bc], a                                    ; $60e8: $02
    add [hl]                                      ; $60e9: $86
    and [hl]                                      ; $60ea: $a6
    ld [bc], a                                    ; $60eb: $02
    ld [bc], a                                    ; $60ec: $02
    ld a, [hl+]                                   ; $60ed: $2a
    jr nz, jr_083_6111                            ; $60ee: $20 $21

    inc bc                                        ; $60f0: $03
    dec l                                         ; $60f1: $2d
    inc h                                         ; $60f2: $24
    dec h                                         ; $60f3: $25
    rlca                                          ; $60f4: $07
    rrca                                          ; $60f5: $0f
    ld bc, $0b02                                  ; $60f6: $01 $02 $0b
    ld [de], a                                    ; $60f9: $12

jr_083_60fa:
    dec b                                         ; $60fa: $05
    ld b, $22                                     ; $60fb: $06 $22
    ld [bc], a                                    ; $60fd: $02
    ld [bc], a                                    ; $60fe: $02
    ld [bc], a                                    ; $60ff: $02
    ld [bc], a                                    ; $6100: $02
    ld [bc], a                                    ; $6101: $02
    ld [bc], a                                    ; $6102: $02
    ld [bc], a                                    ; $6103: $02
    ld [bc], a                                    ; $6104: $02
    ld [bc], a                                    ; $6105: $02
    ld [bc], a                                    ; $6106: $02
    ld [bc], a                                    ; $6107: $02
    ld [bc], a                                    ; $6108: $02
    ld [bc], a                                    ; $6109: $02
    ld [bc], a                                    ; $610a: $02
    ld [bc], a                                    ; $610b: $02
    ld [bc], a                                    ; $610c: $02
    ld a, [bc]                                    ; $610d: $0a
    ld h, $0c                                     ; $610e: $26 $0c

jr_083_6110:
    inc de                                        ; $6110: $13

jr_083_6111:
    ld hl, $2303                                  ; $6111: $21 $03 $23
    jr z, jr_083_613b                             ; $6114: $28 $25

    rlca                                          ; $6116: $07
    daa                                           ; $6117: $27
    dec hl                                        ; $6118: $2b
    ld [bc], a                                    ; $6119: $02
    dec bc                                        ; $611a: $0b
    inc b                                         ; $611b: $04
    dec c                                         ; $611c: $0d
    ld [bc], a                                    ; $611d: $02
    ld [bc], a                                    ; $611e: $02
    ld [bc], a                                    ; $611f: $02
    ld [bc], a                                    ; $6120: $02
    ld [bc], a                                    ; $6121: $02
    ld [bc], a                                    ; $6122: $02
    ld [bc], a                                    ; $6123: $02
    ld [bc], a                                    ; $6124: $02
    ld [bc], a                                    ; $6125: $02
    ld [bc], a                                    ; $6126: $02
    ld [bc], a                                    ; $6127: $02
    ld [bc], a                                    ; $6128: $02
    ld [bc], a                                    ; $6129: $02
    ld [bc], a                                    ; $612a: $02
    ld [bc], a                                    ; $612b: $02
    ld [bc], a                                    ; $612c: $02
    inc d                                         ; $612d: $14
    rrca                                          ; $612e: $0f
    dec sp                                        ; $612f: $3b
    inc a                                         ; $6130: $3c
    add hl, hl                                    ; $6131: $29
    ld [de], a                                    ; $6132: $12
    dec a                                         ; $6133: $3d
    ld a, $2c                                     ; $6134: $3e $2c
    dec d                                         ; $6136: $15
    ccf                                           ; $6137: $3f
    ld b, b                                       ; $6138: $40
    ld c, $2a                                     ; $6139: $0e $2a

jr_083_613b:
    ld b, c                                       ; $613b: $41
    ld b, d                                       ; $613c: $42
    ld [bc], a                                    ; $613d: $02
    ld [bc], a                                    ; $613e: $02
    add [hl]                                      ; $613f: $86
    add [hl]                                      ; $6140: $86
    ld [bc], a                                    ; $6141: $02
    ld [bc], a                                    ; $6142: $02
    add [hl]                                      ; $6143: $86
    add [hl]                                      ; $6144: $86
    ld [bc], a                                    ; $6145: $02
    ld [bc], a                                    ; $6146: $02
    add [hl]                                      ; $6147: $86
    add [hl]                                      ; $6148: $86
    ld [bc], a                                    ; $6149: $02
    inc bc                                        ; $614a: $03
    ld b, $06                                     ; $614b: $06 $06
    ld b, e                                       ; $614d: $43
    dec sp                                        ; $614e: $3b
    inc de                                        ; $614f: $13
    inc d                                         ; $6150: $14
    ld b, h                                       ; $6151: $44
    ld b, l                                       ; $6152: $45
    jr z, jr_083_617e                             ; $6153: $28 $29

    ld b, [hl]                                    ; $6155: $46
    ld b, a                                       ; $6156: $47
    dec hl                                        ; $6157: $2b
    inc l                                         ; $6158: $2c
    ld c, b                                       ; $6159: $48
    ld c, c                                       ; $615a: $49
    dec c                                         ; $615b: $0d
    ld c, $86                                     ; $615c: $0e $86
    and [hl]                                      ; $615e: $a6
    ld [bc], a                                    ; $615f: $02
    ld [bc], a                                    ; $6160: $02
    add [hl]                                      ; $6161: $86
    add [hl]                                      ; $6162: $86
    ld [bc], a                                    ; $6163: $02
    ld [bc], a                                    ; $6164: $02
    add [hl]                                      ; $6165: $86
    add [hl]                                      ; $6166: $86
    ld [bc], a                                    ; $6167: $02
    ld [bc], a                                    ; $6168: $02
    ld b, $06                                     ; $6169: $06 $06
    inc bc                                        ; $616b: $03
    ld [bc], a                                    ; $616c: $02
    dec d                                         ; $616d: $15
    add hl, bc                                    ; $616e: $09
    ld a, [bc]                                    ; $616f: $0a
    ld h, $2a                                     ; $6170: $26 $2a
    jr nz, jr_083_6195                            ; $6172: $20 $21

    inc bc                                        ; $6174: $03
    dec l                                         ; $6175: $2d
    inc h                                         ; $6176: $24
    dec h                                         ; $6177: $25
    rlca                                          ; $6178: $07
    rrca                                          ; $6179: $0f
    ld bc, $0b02                                  ; $617a: $01 $02 $0b
    ld [bc], a                                    ; $617d: $02

jr_083_617e:
    ld [bc], a                                    ; $617e: $02
    ld [bc], a                                    ; $617f: $02
    ld [bc], a                                    ; $6180: $02
    ld [bc], a                                    ; $6181: $02
    ld [bc], a                                    ; $6182: $02
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
    ld a, [c]                                     ; $618d: $f2
    ei                                            ; $618e: $fb
    db $fc                                        ; $618f: $fc
    rst $30                                       ; $6190: $f7
    push af                                       ; $6191: $f5
    ld hl, sp-$07                                 ; $6192: $f8 $f9
    inc sp                                        ; $6194: $33

jr_083_6195:
    db $fc                                        ; $6195: $fc
    db $fd                                        ; $6196: $fd
    cp $f7                                        ; $6197: $fe $f7
    inc sp                                        ; $6199: $33
    inc sp                                        ; $619a: $33
    inc sp                                        ; $619b: $33
    db $f4                                        ; $619c: $f4
    inc b                                         ; $619d: $04
    inc b                                         ; $619e: $04
    inc b                                         ; $619f: $04
    inc b                                         ; $61a0: $04
    inc b                                         ; $61a1: $04
    inc b                                         ; $61a2: $04
    inc b                                         ; $61a3: $04
    inc b                                         ; $61a4: $04
    inc b                                         ; $61a5: $04
    inc b                                         ; $61a6: $04
    inc b                                         ; $61a7: $04
    inc b                                         ; $61a8: $04
    inc b                                         ; $61a9: $04
    inc b                                         ; $61aa: $04
    inc b                                         ; $61ab: $04
    inc b                                         ; $61ac: $04
    ei                                            ; $61ad: $fb
    db $fc                                        ; $61ae: $fc
    db $fd                                        ; $61af: $fd
    cp $33                                        ; $61b0: $fe $33
    ld hl, sp-$07                                 ; $61b2: $f8 $f9
    di                                            ; $61b4: $f3
    rst $30                                       ; $61b5: $f7
    db $fd                                        ; $61b6: $fd
    cp $f0                                        ; $61b7: $fe $f0
    push af                                       ; $61b9: $f5
    ld hl, sp-$07                                 ; $61ba: $f8 $f9
    inc sp                                        ; $61bc: $33
    inc b                                         ; $61bd: $04
    inc b                                         ; $61be: $04
    inc b                                         ; $61bf: $04
    inc b                                         ; $61c0: $04
    inc b                                         ; $61c1: $04
    inc b                                         ; $61c2: $04
    inc b                                         ; $61c3: $04
    inc b                                         ; $61c4: $04
    inc b                                         ; $61c5: $04
    inc b                                         ; $61c6: $04
    inc b                                         ; $61c7: $04
    inc b                                         ; $61c8: $04
    inc b                                         ; $61c9: $04
    inc b                                         ; $61ca: $04
    inc b                                         ; $61cb: $04
    inc b                                         ; $61cc: $04
    xor $ed                                       ; $61cd: $ee $ed
    db $ed                                        ; $61cf: $ed
    db $ed                                        ; $61d0: $ed
    xor $ed                                       ; $61d1: $ee $ed
    db $ed                                        ; $61d3: $ed
    db $ed                                        ; $61d4: $ed
    xor $ed                                       ; $61d5: $ee $ed
    db $ed                                        ; $61d7: $ed
    db $ed                                        ; $61d8: $ed
    xor $ed                                       ; $61d9: $ee $ed
    db $ed                                        ; $61db: $ed
    db $ed                                        ; $61dc: $ed
    add b                                         ; $61dd: $80
    add b                                         ; $61de: $80
    add b                                         ; $61df: $80
    add b                                         ; $61e0: $80
    add b                                         ; $61e1: $80
    add b                                         ; $61e2: $80
    add b                                         ; $61e3: $80
    add b                                         ; $61e4: $80
    add b                                         ; $61e5: $80
    add b                                         ; $61e6: $80
    add b                                         ; $61e7: $80
    add b                                         ; $61e8: $80
    add b                                         ; $61e9: $80
    add b                                         ; $61ea: $80
    add b                                         ; $61eb: $80
    add b                                         ; $61ec: $80
    rst $30                                       ; $61ed: $f7
    rst $30                                       ; $61ee: $f7
    rst $30                                       ; $61ef: $f7
    ei                                            ; $61f0: $fb
    inc b                                         ; $61f1: $04
    dec c                                         ; $61f2: $0d
    ld c, $2a                                     ; $61f3: $0e $2a
    ld [$1110], sp                                ; $61f5: $08 $10 $11
    dec l                                         ; $61f8: $2d
    inc c                                         ; $61f9: $0c
    inc de                                        ; $61fa: $13
    inc d                                         ; $61fb: $14
    rrca                                          ; $61fc: $0f
    inc b                                         ; $61fd: $04
    inc b                                         ; $61fe: $04
    inc b                                         ; $61ff: $04
    inc b                                         ; $6200: $04
    ld [bc], a                                    ; $6201: $02
    inc bc                                        ; $6202: $03
    inc bc                                        ; $6203: $03
    inc bc                                        ; $6204: $03
    ld [bc], a                                    ; $6205: $02
    ld [bc], a                                    ; $6206: $02
    ld [bc], a                                    ; $6207: $02
    ld [bc], a                                    ; $6208: $02
    ld [bc], a                                    ; $6209: $02
    ld [bc], a                                    ; $620a: $02
    ld [bc], a                                    ; $620b: $02
    ld [bc], a                                    ; $620c: $02
    db $fc                                        ; $620d: $fc
    db $fd                                        ; $620e: $fd
    cp $f7                                        ; $620f: $fe $f7
    ld bc, $0302                                  ; $6211: $01 $02 $03
    inc b                                         ; $6214: $04
    dec b                                         ; $6215: $05
    ld b, $07                                     ; $6216: $06 $07
    ld [$0a09], sp                                ; $6218: $08 $09 $0a
    dec bc                                        ; $621b: $0b
    inc c                                         ; $621c: $0c
    inc b                                         ; $621d: $04
    inc b                                         ; $621e: $04
    inc b                                         ; $621f: $04
    inc b                                         ; $6220: $04
    inc bc                                        ; $6221: $03
    inc bc                                        ; $6222: $03
    inc bc                                        ; $6223: $03
    inc bc                                        ; $6224: $03
    ld [bc], a                                    ; $6225: $02
    ld [bc], a                                    ; $6226: $02
    ld [bc], a                                    ; $6227: $02
    inc bc                                        ; $6228: $03
    ld [bc], a                                    ; $6229: $02
    ld [bc], a                                    ; $622a: $02
    ld [bc], a                                    ; $622b: $02
    inc bc                                        ; $622c: $03
    ld c, d                                       ; $622d: $4a
    rla                                           ; $622e: $17
    ld c, e                                       ; $622f: $4b
    db $ed                                        ; $6230: $ed
    ld a, [de]                                    ; $6231: $1a
    add hl, de                                    ; $6232: $19
    xor $ed                                       ; $6233: $ee $ed
    dec e                                         ; $6235: $1d
    inc e                                         ; $6236: $1c
    dec de                                        ; $6237: $1b
    db $ed                                        ; $6238: $ed
    rra                                           ; $6239: $1f
    ld e, $1b                                     ; $623a: $1e $1b
    db $ed                                        ; $623c: $ed
    add b                                         ; $623d: $80
    add b                                         ; $623e: $80
    add b                                         ; $623f: $80
    add b                                         ; $6240: $80
    ld b, $06                                     ; $6241: $06 $06
    add b                                         ; $6243: $80
    add b                                         ; $6244: $80
    ld b, $06                                     ; $6245: $06 $06
    add b                                         ; $6247: $80
    add b                                         ; $6248: $80
    ld b, $06                                     ; $6249: $06 $06
    add b                                         ; $624b: $80
    add b                                         ; $624c: $80
    inc hl                                        ; $624d: $23
    jr z, jr_083_6279                             ; $624e: $28 $29

    ld [de], a                                    ; $6250: $12
    daa                                           ; $6251: $27
    dec hl                                        ; $6252: $2b
    inc l                                         ; $6253: $2c
    dec d                                         ; $6254: $15
    inc b                                         ; $6255: $04
    dec c                                         ; $6256: $0d
    ld c, $2a                                     ; $6257: $0e $2a
    ld [$1110], sp                                ; $6259: $08 $10 $11
    dec l                                         ; $625c: $2d
    ld [bc], a                                    ; $625d: $02
    ld [bc], a                                    ; $625e: $02
    ld [bc], a                                    ; $625f: $02
    ld [bc], a                                    ; $6260: $02
    ld [bc], a                                    ; $6261: $02
    ld [bc], a                                    ; $6262: $02
    ld [bc], a                                    ; $6263: $02
    ld [bc], a                                    ; $6264: $02
    ld [bc], a                                    ; $6265: $02
    ld [bc], a                                    ; $6266: $02
    ld [bc], a                                    ; $6267: $02
    ld [bc], a                                    ; $6268: $02
    ld [bc], a                                    ; $6269: $02
    ld [bc], a                                    ; $626a: $02
    ld [bc], a                                    ; $626b: $02
    ld [bc], a                                    ; $626c: $02
    jr nz, jr_083_6290                            ; $626d: $20 $21

    ld [hl+], a                                   ; $626f: $22
    inc hl                                        ; $6270: $23
    inc h                                         ; $6271: $24
    dec h                                         ; $6272: $25
    ld h, $27                                     ; $6273: $26 $27
    ld bc, $0302                                  ; $6275: $01 $02 $03
    inc b                                         ; $6278: $04

jr_083_6279:
    dec b                                         ; $6279: $05
    ld b, $07                                     ; $627a: $06 $07
    ld [$0202], sp                                ; $627c: $08 $02 $02
    ld [bc], a                                    ; $627f: $02
    inc bc                                        ; $6280: $03
    ld [bc], a                                    ; $6281: $02
    ld [bc], a                                    ; $6282: $02
    ld [bc], a                                    ; $6283: $02
    inc bc                                        ; $6284: $03
    ld [bc], a                                    ; $6285: $02
    ld [bc], a                                    ; $6286: $02
    ld [bc], a                                    ; $6287: $02
    inc bc                                        ; $6288: $03
    ld [bc], a                                    ; $6289: $02
    ld [bc], a                                    ; $628a: $02
    ld [bc], a                                    ; $628b: $02
    ld [bc], a                                    ; $628c: $02
    cpl                                           ; $628d: $2f
    ld l, $1b                                     ; $628e: $2e $1b

jr_083_6290:
    db $ed                                        ; $6290: $ed
    ld sp, $1b30                                  ; $6291: $31 $30 $1b
    db $ed                                        ; $6294: $ed
    dec c                                         ; $6295: $0d
    ld c, $1b                                     ; $6296: $0e $1b
    ld [hl-], a                                   ; $6298: $32
    db $10                                        ; $6299: $10
    ld de, $32ee                                  ; $629a: $11 $ee $32
    ld b, $06                                     ; $629d: $06 $06
    add b                                         ; $629f: $80
    add b                                         ; $62a0: $80
    ld b, $06                                     ; $62a1: $06 $06
    add b                                         ; $62a3: $80
    add b                                         ; $62a4: $80
    inc bc                                        ; $62a5: $03
    inc bc                                        ; $62a6: $03
    add b                                         ; $62a7: $80
    add b                                         ; $62a8: $80
    ld [bc], a                                    ; $62a9: $02
    inc bc                                        ; $62aa: $03
    add b                                         ; $62ab: $80
    add b                                         ; $62ac: $80
    inc c                                         ; $62ad: $0c
    inc de                                        ; $62ae: $13
    inc d                                         ; $62af: $14
    rrca                                          ; $62b0: $0f
    inc hl                                        ; $62b1: $23
    jr z, jr_083_62dd                             ; $62b2: $28 $29

    ld [de], a                                    ; $62b4: $12
    daa                                           ; $62b5: $27
    dec hl                                        ; $62b6: $2b
    inc l                                         ; $62b7: $2c
    dec d                                         ; $62b8: $15
    inc b                                         ; $62b9: $04
    dec c                                         ; $62ba: $0d
    ld c, $2a                                     ; $62bb: $0e $2a
    ld [bc], a                                    ; $62bd: $02
    ld [bc], a                                    ; $62be: $02
    ld [bc], a                                    ; $62bf: $02
    ld [bc], a                                    ; $62c0: $02
    ld [bc], a                                    ; $62c1: $02
    ld [bc], a                                    ; $62c2: $02
    ld [bc], a                                    ; $62c3: $02
    ld [bc], a                                    ; $62c4: $02
    ld [bc], a                                    ; $62c5: $02
    ld [bc], a                                    ; $62c6: $02
    ld [bc], a                                    ; $62c7: $02
    ld [bc], a                                    ; $62c8: $02
    ld [bc], a                                    ; $62c9: $02
    ld [bc], a                                    ; $62ca: $02
    ld [bc], a                                    ; $62cb: $02
    ld [bc], a                                    ; $62cc: $02
    add hl, bc                                    ; $62cd: $09
    ld a, [bc]                                    ; $62ce: $0a
    dec bc                                        ; $62cf: $0b
    inc c                                         ; $62d0: $0c
    jr nz, jr_083_62f4                            ; $62d1: $20 $21

    ld [hl+], a                                   ; $62d3: $22
    inc hl                                        ; $62d4: $23
    inc h                                         ; $62d5: $24
    dec h                                         ; $62d6: $25
    ld h, $27                                     ; $62d7: $26 $27
    ld bc, $0302                                  ; $62d9: $01 $02 $03
    inc b                                         ; $62dc: $04

jr_083_62dd:
    ld [bc], a                                    ; $62dd: $02
    ld [bc], a                                    ; $62de: $02
    ld [bc], a                                    ; $62df: $02
    ld [bc], a                                    ; $62e0: $02
    ld [bc], a                                    ; $62e1: $02
    ld [bc], a                                    ; $62e2: $02
    ld [bc], a                                    ; $62e3: $02
    ld [bc], a                                    ; $62e4: $02
    ld [bc], a                                    ; $62e5: $02
    ld [bc], a                                    ; $62e6: $02
    ld [bc], a                                    ; $62e7: $02
    inc bc                                        ; $62e8: $03
    ld [bc], a                                    ; $62e9: $02
    ld [bc], a                                    ; $62ea: $02
    ld [bc], a                                    ; $62eb: $02
    inc bc                                        ; $62ec: $03
    ld d, $17                                     ; $62ed: $16 $17
    jr jr_083_6323                                ; $62ef: $18 $32

    xor $ed                                       ; $62f1: $ee $ed
    db $ed                                        ; $62f3: $ed

jr_083_62f4:
    db $ed                                        ; $62f4: $ed
    xor $ed                                       ; $62f5: $ee $ed
    db $ed                                        ; $62f7: $ed
    db $ed                                        ; $62f8: $ed
    xor $ed                                       ; $62f9: $ee $ed
    db $ed                                        ; $62fb: $ed
    db $ed                                        ; $62fc: $ed
    add b                                         ; $62fd: $80
    add b                                         ; $62fe: $80
    add b                                         ; $62ff: $80
    add b                                         ; $6300: $80
    add b                                         ; $6301: $80
    add b                                         ; $6302: $80
    add b                                         ; $6303: $80
    add b                                         ; $6304: $80
    add b                                         ; $6305: $80
    add b                                         ; $6306: $80
    add b                                         ; $6307: $80
    add b                                         ; $6308: $80
    add b                                         ; $6309: $80
    add b                                         ; $630a: $80
    add b                                         ; $630b: $80
    add b                                         ; $630c: $80
    ld [hl-], a                                   ; $630d: $32
    ld c, d                                       ; $630e: $4a
    rla                                           ; $630f: $17
    ld c, h                                       ; $6310: $4c
    db $ed                                        ; $6311: $ed
    db $ed                                        ; $6312: $ed
    db $ed                                        ; $6313: $ed
    xor $ed                                       ; $6314: $ee $ed
    db $ed                                        ; $6316: $ed
    db $ed                                        ; $6317: $ed
    xor $ed                                       ; $6318: $ee $ed
    db $ed                                        ; $631a: $ed
    db $ed                                        ; $631b: $ed
    xor $a0                                       ; $631c: $ee $a0
    add b                                         ; $631e: $80
    add b                                         ; $631f: $80
    add b                                         ; $6320: $80
    add b                                         ; $6321: $80
    add b                                         ; $6322: $80

jr_083_6323:
    add b                                         ; $6323: $80
    add b                                         ; $6324: $80
    add b                                         ; $6325: $80
    add b                                         ; $6326: $80
    add b                                         ; $6327: $80
    add b                                         ; $6328: $80
    add b                                         ; $6329: $80
    add b                                         ; $632a: $80
    add b                                         ; $632b: $80
    add b                                         ; $632c: $80
    dec b                                         ; $632d: $05
    ld b, $07                                     ; $632e: $06 $07
    ld [$0a09], sp                                ; $6330: $08 $09 $0a
    dec bc                                        ; $6333: $0b
    inc c                                         ; $6334: $0c
    jr nz, jr_083_6358                            ; $6335: $20 $21

    ld [hl+], a                                   ; $6337: $22
    inc hl                                        ; $6338: $23
    inc h                                         ; $6339: $24
    dec h                                         ; $633a: $25
    ld h, $27                                     ; $633b: $26 $27
    ld [bc], a                                    ; $633d: $02
    ld [bc], a                                    ; $633e: $02
    ld [bc], a                                    ; $633f: $02
    ld [bc], a                                    ; $6340: $02
    ld [bc], a                                    ; $6341: $02
    ld [bc], a                                    ; $6342: $02
    ld [bc], a                                    ; $6343: $02
    ld [bc], a                                    ; $6344: $02
    inc bc                                        ; $6345: $03
    ld [bc], a                                    ; $6346: $02
    ld [bc], a                                    ; $6347: $02
    ld [bc], a                                    ; $6348: $02
    inc bc                                        ; $6349: $03
    ld [bc], a                                    ; $634a: $02
    ld [bc], a                                    ; $634b: $02
    ld [bc], a                                    ; $634c: $02
    db $10                                        ; $634d: $10
    ld de, $0512                                  ; $634e: $11 $12 $05
    inc de                                        ; $6351: $13
    inc d                                         ; $6352: $14
    dec d                                         ; $6353: $15
    add hl, bc                                    ; $6354: $09
    jr z, jr_083_6380                             ; $6355: $28 $29

    ld a, [hl+]                                   ; $6357: $2a

jr_083_6358:
    jr nz, jr_083_6385                            ; $6358: $20 $2b

    inc l                                         ; $635a: $2c
    dec l                                         ; $635b: $2d
    inc h                                         ; $635c: $24
    ld [bc], a                                    ; $635d: $02
    ld [bc], a                                    ; $635e: $02
    ld [bc], a                                    ; $635f: $02
    ld [bc], a                                    ; $6360: $02
    ld [bc], a                                    ; $6361: $02
    ld [bc], a                                    ; $6362: $02
    ld [bc], a                                    ; $6363: $02
    ld [bc], a                                    ; $6364: $02
    ld [bc], a                                    ; $6365: $02
    ld [bc], a                                    ; $6366: $02
    ld [bc], a                                    ; $6367: $02
    ld [bc], a                                    ; $6368: $02
    ld [bc], a                                    ; $6369: $02
    ld [bc], a                                    ; $636a: $02
    ld [bc], a                                    ; $636b: $02
    ld [bc], a                                    ; $636c: $02
    ld bc, $0302                                  ; $636d: $01 $02 $03
    inc b                                         ; $6370: $04
    dec b                                         ; $6371: $05
    ld b, $07                                     ; $6372: $06 $07
    ld [$0a09], sp                                ; $6374: $08 $09 $0a
    dec bc                                        ; $6377: $0b
    inc c                                         ; $6378: $0c
    jr nz, jr_083_639c                            ; $6379: $20 $21

    ld [hl+], a                                   ; $637b: $22
    inc hl                                        ; $637c: $23
    inc bc                                        ; $637d: $03
    ld [bc], a                                    ; $637e: $02
    ld [bc], a                                    ; $637f: $02

jr_083_6380:
    ld [bc], a                                    ; $6380: $02
    inc bc                                        ; $6381: $03
    ld [bc], a                                    ; $6382: $02
    ld [bc], a                                    ; $6383: $02
    ld [bc], a                                    ; $6384: $02

jr_083_6385:
    inc bc                                        ; $6385: $03
    ld [bc], a                                    ; $6386: $02
    ld [bc], a                                    ; $6387: $02
    ld [bc], a                                    ; $6388: $02
    inc bc                                        ; $6389: $03
    ld [bc], a                                    ; $638a: $02
    ld [bc], a                                    ; $638b: $02
    ld [bc], a                                    ; $638c: $02
    dec c                                         ; $638d: $0d
    ld c, $0f                                     ; $638e: $0e $0f
    ld bc, $1110                                  ; $6390: $01 $10 $11
    ld [de], a                                    ; $6393: $12
    dec b                                         ; $6394: $05
    inc de                                        ; $6395: $13
    inc d                                         ; $6396: $14
    dec d                                         ; $6397: $15
    add hl, bc                                    ; $6398: $09
    jr z, jr_083_63c4                             ; $6399: $28 $29

    ld a, [hl+]                                   ; $639b: $2a

jr_083_639c:
    jr nz, jr_083_63a0                            ; $639c: $20 $02

    ld [bc], a                                    ; $639e: $02
    ld [bc], a                                    ; $639f: $02

jr_083_63a0:
    ld [bc], a                                    ; $63a0: $02
    ld [bc], a                                    ; $63a1: $02
    ld [bc], a                                    ; $63a2: $02
    ld [bc], a                                    ; $63a3: $02
    ld [bc], a                                    ; $63a4: $02
    ld [bc], a                                    ; $63a5: $02
    ld [bc], a                                    ; $63a6: $02
    ld [bc], a                                    ; $63a7: $02
    ld [bc], a                                    ; $63a8: $02
    ld [bc], a                                    ; $63a9: $02
    ld [bc], a                                    ; $63aa: $02
    ld [bc], a                                    ; $63ab: $02
    ld [bc], a                                    ; $63ac: $02
    inc h                                         ; $63ad: $24
    dec h                                         ; $63ae: $25
    ld h, $27                                     ; $63af: $26 $27
    ld bc, $0302                                  ; $63b1: $01 $02 $03
    inc b                                         ; $63b4: $04
    dec b                                         ; $63b5: $05
    ld b, $07                                     ; $63b6: $06 $07
    ld [$0a09], sp                                ; $63b8: $08 $09 $0a
    dec bc                                        ; $63bb: $0b
    inc c                                         ; $63bc: $0c
    inc bc                                        ; $63bd: $03
    ld [bc], a                                    ; $63be: $02
    ld [bc], a                                    ; $63bf: $02
    ld [bc], a                                    ; $63c0: $02
    inc bc                                        ; $63c1: $03
    ld [bc], a                                    ; $63c2: $02
    ld [bc], a                                    ; $63c3: $02

jr_083_63c4:
    ld [bc], a                                    ; $63c4: $02
    inc bc                                        ; $63c5: $03
    ld [bc], a                                    ; $63c6: $02
    ld [bc], a                                    ; $63c7: $02
    ld [bc], a                                    ; $63c8: $02
    inc bc                                        ; $63c9: $03
    ld [bc], a                                    ; $63ca: $02
    ld [bc], a                                    ; $63cb: $02
    ld [bc], a                                    ; $63cc: $02
    dec hl                                        ; $63cd: $2b
    inc l                                         ; $63ce: $2c
    dec l                                         ; $63cf: $2d
    inc h                                         ; $63d0: $24
    dec c                                         ; $63d1: $0d
    ld c, $0f                                     ; $63d2: $0e $0f
    ld bc, $1110                                  ; $63d4: $01 $10 $11
    ld [de], a                                    ; $63d7: $12
    dec b                                         ; $63d8: $05
    inc de                                        ; $63d9: $13
    inc d                                         ; $63da: $14
    dec d                                         ; $63db: $15
    add hl, bc                                    ; $63dc: $09
    ld [bc], a                                    ; $63dd: $02
    ld [bc], a                                    ; $63de: $02
    ld [bc], a                                    ; $63df: $02
    ld [bc], a                                    ; $63e0: $02
    ld [bc], a                                    ; $63e1: $02
    ld [bc], a                                    ; $63e2: $02
    ld [bc], a                                    ; $63e3: $02
    ld [bc], a                                    ; $63e4: $02
    ld [bc], a                                    ; $63e5: $02
    ld [bc], a                                    ; $63e6: $02
    ld [bc], a                                    ; $63e7: $02
    ld [bc], a                                    ; $63e8: $02
    ld [bc], a                                    ; $63e9: $02
    ld [bc], a                                    ; $63ea: $02
    ld [bc], a                                    ; $63eb: $02
    ld [bc], a                                    ; $63ec: $02
    jr nz, jr_083_643c                            ; $63ed: $20 $4d

    ld c, [hl]                                    ; $63ef: $4e
    ld c, a                                       ; $63f0: $4f
    inc h                                         ; $63f1: $24
    ld d, b                                       ; $63f2: $50
    ld d, c                                       ; $63f3: $51
    ld d, d                                       ; $63f4: $52
    ld bc, $5453                                  ; $63f5: $01 $53 $54
    ld d, l                                       ; $63f8: $55
    dec b                                         ; $63f9: $05
    ld d, [hl]                                    ; $63fa: $56
    ld d, a                                       ; $63fb: $57
    ld e, b                                       ; $63fc: $58
    inc bc                                        ; $63fd: $03
    add [hl]                                      ; $63fe: $86
    add [hl]                                      ; $63ff: $86
    add [hl]                                      ; $6400: $86
    inc bc                                        ; $6401: $03
    add [hl]                                      ; $6402: $86
    add [hl]                                      ; $6403: $86
    add [hl]                                      ; $6404: $86
    inc bc                                        ; $6405: $03
    add [hl]                                      ; $6406: $86
    add [hl]                                      ; $6407: $86
    add [hl]                                      ; $6408: $86
    inc bc                                        ; $6409: $03
    add [hl]                                      ; $640a: $86
    add [hl]                                      ; $640b: $86
    add [hl]                                      ; $640c: $86
    ld e, c                                       ; $640d: $59
    add hl, hl                                    ; $640e: $29
    ld a, [hl+]                                   ; $640f: $2a
    jr nz, jr_083_646c                            ; $6410: $20 $5a

    inc l                                         ; $6412: $2c
    dec l                                         ; $6413: $2d
    inc h                                         ; $6414: $24
    ld e, e                                       ; $6415: $5b
    ld c, $0f                                     ; $6416: $0e $0f
    ld bc, $1156                                  ; $6418: $01 $56 $11
    ld [de], a                                    ; $641b: $12
    dec b                                         ; $641c: $05
    add [hl]                                      ; $641d: $86
    ld [bc], a                                    ; $641e: $02
    ld [bc], a                                    ; $641f: $02
    ld [bc], a                                    ; $6420: $02
    add [hl]                                      ; $6421: $86
    ld [bc], a                                    ; $6422: $02
    ld [bc], a                                    ; $6423: $02
    ld [bc], a                                    ; $6424: $02
    add [hl]                                      ; $6425: $86
    ld [bc], a                                    ; $6426: $02
    ld [bc], a                                    ; $6427: $02
    ld [bc], a                                    ; $6428: $02
    and [hl]                                      ; $6429: $a6
    ld [bc], a                                    ; $642a: $02
    ld [bc], a                                    ; $642b: $02
    ld [bc], a                                    ; $642c: $02
    ld b, $22                                     ; $642d: $06 $22
    ld [$0a10], sp                                ; $642f: $08 $10 $0a
    ld h, $0c                                     ; $6432: $26 $0c
    inc de                                        ; $6434: $13
    ld hl, $2303                                  ; $6435: $21 $03 $23
    jr z, jr_083_645f                             ; $6438: $28 $25

    rlca                                          ; $643a: $07
    daa                                           ; $643b: $27

jr_083_643c:
    dec hl                                        ; $643c: $2b
    ld [bc], a                                    ; $643d: $02
    ld [bc], a                                    ; $643e: $02
    ld [bc], a                                    ; $643f: $02
    ld [bc], a                                    ; $6440: $02
    ld [bc], a                                    ; $6441: $02
    ld [bc], a                                    ; $6442: $02
    ld [bc], a                                    ; $6443: $02
    ld [bc], a                                    ; $6444: $02
    ld [bc], a                                    ; $6445: $02
    ld [bc], a                                    ; $6446: $02
    ld [bc], a                                    ; $6447: $02
    ld [bc], a                                    ; $6448: $02
    ld [bc], a                                    ; $6449: $02
    ld [bc], a                                    ; $644a: $02
    ld [bc], a                                    ; $644b: $02
    ld [bc], a                                    ; $644c: $02
    ld de, $5c2d                                  ; $644d: $11 $2d $5c
    ld e, l                                       ; $6450: $5d
    inc d                                         ; $6451: $14
    rrca                                          ; $6452: $0f
    ld e, [hl]                                    ; $6453: $5e
    ld e, a                                       ; $6454: $5f
    add hl, hl                                    ; $6455: $29
    ld [de], a                                    ; $6456: $12
    jr nz, @+$23                                  ; $6457: $20 $21

    inc l                                         ; $6459: $2c
    dec d                                         ; $645a: $15
    inc h                                         ; $645b: $24
    dec h                                         ; $645c: $25
    ld [bc], a                                    ; $645d: $02
    inc bc                                        ; $645e: $03

jr_083_645f:
    ld b, $06                                     ; $645f: $06 $06
    ld [bc], a                                    ; $6461: $02
    inc bc                                        ; $6462: $03
    ld b, $06                                     ; $6463: $06 $06
    ld [bc], a                                    ; $6465: $02
    inc bc                                        ; $6466: $03
    inc bc                                        ; $6467: $03
    inc bc                                        ; $6468: $03
    ld [bc], a                                    ; $6469: $02
    ld [bc], a                                    ; $646a: $02
    ld [bc], a                                    ; $646b: $02

jr_083_646c:
    ld [bc], a                                    ; $646c: $02
    ld h, b                                       ; $646d: $60
    ld h, c                                       ; $646e: $61
    db $10                                        ; $646f: $10
    ld de, $6362                                  ; $6470: $11 $62 $63
    inc de                                        ; $6473: $13
    inc d                                         ; $6474: $14
    ld [hl+], a                                   ; $6475: $22
    inc hl                                        ; $6476: $23
    jr z, jr_083_64a2                             ; $6477: $28 $29

    ld h, $27                                     ; $6479: $26 $27
    dec hl                                        ; $647b: $2b
    inc l                                         ; $647c: $2c
    ld b, $06                                     ; $647d: $06 $06
    inc bc                                        ; $647f: $03
    ld [bc], a                                    ; $6480: $02
    ld b, $06                                     ; $6481: $06 $06
    inc bc                                        ; $6483: $03
    ld [bc], a                                    ; $6484: $02
    inc bc                                        ; $6485: $03
    inc bc                                        ; $6486: $03
    inc bc                                        ; $6487: $03
    ld [bc], a                                    ; $6488: $02
    ld [bc], a                                    ; $6489: $02
    ld [bc], a                                    ; $648a: $02
    ld [bc], a                                    ; $648b: $02
    ld [bc], a                                    ; $648c: $02
    ld [de], a                                    ; $648d: $12
    dec b                                         ; $648e: $05
    ld b, $22                                     ; $648f: $06 $22
    dec d                                         ; $6491: $15
    add hl, bc                                    ; $6492: $09
    ld a, [bc]                                    ; $6493: $0a
    ld h, $2a                                     ; $6494: $26 $2a
    jr nz, jr_083_64b9                            ; $6496: $20 $21

    inc bc                                        ; $6498: $03
    dec l                                         ; $6499: $2d
    inc h                                         ; $649a: $24
    dec h                                         ; $649b: $25
    rlca                                          ; $649c: $07
    ld [bc], a                                    ; $649d: $02
    ld [bc], a                                    ; $649e: $02
    ld [bc], a                                    ; $649f: $02
    ld [bc], a                                    ; $64a0: $02
    ld [bc], a                                    ; $64a1: $02

jr_083_64a2:
    ld [bc], a                                    ; $64a2: $02
    ld [bc], a                                    ; $64a3: $02
    ld [bc], a                                    ; $64a4: $02
    ld [bc], a                                    ; $64a5: $02
    ld [bc], a                                    ; $64a6: $02
    ld [bc], a                                    ; $64a7: $02
    ld [bc], a                                    ; $64a8: $02
    ld [bc], a                                    ; $64a9: $02
    ld [bc], a                                    ; $64aa: $02
    ld [bc], a                                    ; $64ab: $02
    ld [bc], a                                    ; $64ac: $02
    ld [bc], a                                    ; $64ad: $02
    dec bc                                        ; $64ae: $0b
    inc b                                         ; $64af: $04
    dec c                                         ; $64b0: $0d
    ld b, $22                                     ; $64b1: $06 $22
    ld [$0a10], sp                                ; $64b3: $08 $10 $0a
    ld h, $0c                                     ; $64b6: $26 $0c
    inc de                                        ; $64b8: $13

jr_083_64b9:
    ld hl, $2303                                  ; $64b9: $21 $03 $23
    jr z, jr_083_64c0                             ; $64bc: $28 $02

    ld [bc], a                                    ; $64be: $02
    ld [bc], a                                    ; $64bf: $02

jr_083_64c0:
    ld [bc], a                                    ; $64c0: $02
    ld [bc], a                                    ; $64c1: $02
    ld [bc], a                                    ; $64c2: $02
    ld [bc], a                                    ; $64c3: $02
    ld [bc], a                                    ; $64c4: $02
    ld [bc], a                                    ; $64c5: $02
    ld [bc], a                                    ; $64c6: $02
    ld [bc], a                                    ; $64c7: $02
    ld [bc], a                                    ; $64c8: $02
    ld [bc], a                                    ; $64c9: $02
    ld [bc], a                                    ; $64ca: $02
    ld [bc], a                                    ; $64cb: $02
    ld [bc], a                                    ; $64cc: $02
    ld c, $2a                                     ; $64cd: $0e $2a
    ld bc, $1102                                  ; $64cf: $01 $02 $11
    dec l                                         ; $64d2: $2d
    dec b                                         ; $64d3: $05
    ld b, $14                                     ; $64d4: $06 $14
    rrca                                          ; $64d6: $0f
    add hl, bc                                    ; $64d7: $09
    ld a, [bc]                                    ; $64d8: $0a
    add hl, hl                                    ; $64d9: $29
    ld h, h                                       ; $64da: $64
    ld h, l                                       ; $64db: $65
    ld h, [hl]                                    ; $64dc: $66
    ld [bc], a                                    ; $64dd: $02
    ld [bc], a                                    ; $64de: $02
    ld [bc], a                                    ; $64df: $02
    ld [bc], a                                    ; $64e0: $02
    ld [bc], a                                    ; $64e1: $02
    ld [bc], a                                    ; $64e2: $02
    ld [bc], a                                    ; $64e3: $02
    ld [bc], a                                    ; $64e4: $02
    ld [bc], a                                    ; $64e5: $02
    ld [bc], a                                    ; $64e6: $02
    ld [bc], a                                    ; $64e7: $02
    ld [bc], a                                    ; $64e8: $02
    ld [bc], a                                    ; $64e9: $02
    add a                                         ; $64ea: $87
    add a                                         ; $64eb: $87
    add a                                         ; $64ec: $87
    inc bc                                        ; $64ed: $03
    inc b                                         ; $64ee: $04
    dec c                                         ; $64ef: $0d
    ld c, $07                                     ; $64f0: $0e $07
    ld [$1110], sp                                ; $64f2: $08 $10 $11
    dec bc                                        ; $64f5: $0b
    inc c                                         ; $64f6: $0c
    inc de                                        ; $64f7: $13
    inc d                                         ; $64f8: $14
    ld h, a                                       ; $64f9: $67
    ld l, b                                       ; $64fa: $68
    ld l, c                                       ; $64fb: $69
    add hl, hl                                    ; $64fc: $29
    ld [bc], a                                    ; $64fd: $02
    ld [bc], a                                    ; $64fe: $02
    ld [bc], a                                    ; $64ff: $02
    ld [bc], a                                    ; $6500: $02
    ld [bc], a                                    ; $6501: $02
    ld [bc], a                                    ; $6502: $02
    ld [bc], a                                    ; $6503: $02
    ld [bc], a                                    ; $6504: $02
    ld [bc], a                                    ; $6505: $02
    ld [bc], a                                    ; $6506: $02
    ld [bc], a                                    ; $6507: $02
    ld [bc], a                                    ; $6508: $02
    add a                                         ; $6509: $87
    add a                                         ; $650a: $87
    add a                                         ; $650b: $87
    ld [bc], a                                    ; $650c: $02
    rrca                                          ; $650d: $0f
    ld bc, $0b02                                  ; $650e: $01 $02 $0b
    ld [de], a                                    ; $6511: $12
    dec b                                         ; $6512: $05
    ld b, $22                                     ; $6513: $06 $22
    dec d                                         ; $6515: $15
    add hl, bc                                    ; $6516: $09
    ld a, [bc]                                    ; $6517: $0a
    ld h, $2a                                     ; $6518: $26 $2a
    jr nz, jr_083_653d                            ; $651a: $20 $21

    inc bc                                        ; $651c: $03
    ld [bc], a                                    ; $651d: $02
    ld [bc], a                                    ; $651e: $02
    ld [bc], a                                    ; $651f: $02
    ld [bc], a                                    ; $6520: $02
    ld [bc], a                                    ; $6521: $02
    ld [bc], a                                    ; $6522: $02
    ld [bc], a                                    ; $6523: $02
    ld [bc], a                                    ; $6524: $02
    ld [bc], a                                    ; $6525: $02
    ld [bc], a                                    ; $6526: $02
    ld [bc], a                                    ; $6527: $02
    ld [bc], a                                    ; $6528: $02
    ld [bc], a                                    ; $6529: $02
    ld [bc], a                                    ; $652a: $02
    ld [bc], a                                    ; $652b: $02
    ld [bc], a                                    ; $652c: $02
    dec h                                         ; $652d: $25
    rlca                                          ; $652e: $07
    daa                                           ; $652f: $27
    dec hl                                        ; $6530: $2b
    ld [bc], a                                    ; $6531: $02
    dec bc                                        ; $6532: $0b
    inc b                                         ; $6533: $04
    dec c                                         ; $6534: $0d
    ld b, $22                                     ; $6535: $06 $22
    ld [$0a10], sp                                ; $6537: $08 $10 $0a
    ld h, $0c                                     ; $653a: $26 $0c
    inc de                                        ; $653c: $13

jr_083_653d:
    ld [bc], a                                    ; $653d: $02
    ld [bc], a                                    ; $653e: $02
    ld [bc], a                                    ; $653f: $02
    ld [bc], a                                    ; $6540: $02
    ld [bc], a                                    ; $6541: $02
    ld [bc], a                                    ; $6542: $02
    ld [bc], a                                    ; $6543: $02
    ld [bc], a                                    ; $6544: $02
    ld [bc], a                                    ; $6545: $02
    ld [bc], a                                    ; $6546: $02
    ld [bc], a                                    ; $6547: $02
    inc bc                                        ; $6548: $03
    ld [bc], a                                    ; $6549: $02
    ld [bc], a                                    ; $654a: $02
    ld [bc], a                                    ; $654b: $02
    inc bc                                        ; $654c: $03
    inc l                                         ; $654d: $2c
    ld l, d                                       ; $654e: $6a
    ld l, e                                       ; $654f: $6b
    ld l, h                                       ; $6550: $6c
    ld l, l                                       ; $6551: $6d
    ld l, [hl]                                    ; $6552: $6e
    ld l, a                                       ; $6553: $6f
    ld [hl], b                                    ; $6554: $70
    ld [hl], c                                    ; $6555: $71
    ld [hl], d                                    ; $6556: $72
    ld [hl], e                                    ; $6557: $73
    ld [hl], h                                    ; $6558: $74
    ld [hl], l                                    ; $6559: $75
    halt                                          ; $655a: $76
    ld [hl], a                                    ; $655b: $77
    ld a, b                                       ; $655c: $78
    ld [bc], a                                    ; $655d: $02
    add a                                         ; $655e: $87
    add a                                         ; $655f: $87
    add a                                         ; $6560: $87
    rlca                                          ; $6561: $07
    rlca                                          ; $6562: $07
    rlca                                          ; $6563: $07
    rlca                                          ; $6564: $07
    rlca                                          ; $6565: $07
    rlca                                          ; $6566: $07
    rlca                                          ; $6567: $07
    rlca                                          ; $6568: $07
    rlca                                          ; $6569: $07
    rlca                                          ; $656a: $07
    rlca                                          ; $656b: $07
    rlca                                          ; $656c: $07
    ld a, c                                       ; $656d: $79
    ld a, d                                       ; $656e: $7a
    ld a, e                                       ; $656f: $7b
    inc l                                         ; $6570: $2c
    ld a, h                                       ; $6571: $7c
    ld a, l                                       ; $6572: $7d
    ld a, [hl]                                    ; $6573: $7e
    ld l, l                                       ; $6574: $6d
    ld a, a                                       ; $6575: $7f
    add b                                         ; $6576: $80
    add c                                         ; $6577: $81
    ld [hl], c                                    ; $6578: $71
    add d                                         ; $6579: $82
    add e                                         ; $657a: $83
    add h                                         ; $657b: $84
    ld [hl], l                                    ; $657c: $75
    add a                                         ; $657d: $87
    add a                                         ; $657e: $87
    add a                                         ; $657f: $87
    ld [bc], a                                    ; $6580: $02
    rlca                                          ; $6581: $07
    rlca                                          ; $6582: $07
    rlca                                          ; $6583: $07
    daa                                           ; $6584: $27
    rlca                                          ; $6585: $07
    rrca                                          ; $6586: $0f
    rrca                                          ; $6587: $0f
    daa                                           ; $6588: $27
    rrca                                          ; $6589: $0f
    rrca                                          ; $658a: $0f
    rrca                                          ; $658b: $0f
    daa                                           ; $658c: $27
    dec l                                         ; $658d: $2d
    inc h                                         ; $658e: $24
    dec h                                         ; $658f: $25
    rlca                                          ; $6590: $07
    rrca                                          ; $6591: $0f
    ld bc, $0b02                                  ; $6592: $01 $02 $0b
    ld [de], a                                    ; $6595: $12
    dec b                                         ; $6596: $05
    ld b, $22                                     ; $6597: $06 $22
    dec d                                         ; $6599: $15
    add hl, bc                                    ; $659a: $09
    ld a, [bc]                                    ; $659b: $0a
    ld h, $02                                     ; $659c: $26 $02
    ld [bc], a                                    ; $659e: $02
    ld [bc], a                                    ; $659f: $02
    ld [bc], a                                    ; $65a0: $02
    ld [bc], a                                    ; $65a1: $02
    ld [bc], a                                    ; $65a2: $02
    ld [bc], a                                    ; $65a3: $02
    ld [bc], a                                    ; $65a4: $02
    inc bc                                        ; $65a5: $03
    ld [bc], a                                    ; $65a6: $02
    ld [bc], a                                    ; $65a7: $02
    ld [bc], a                                    ; $65a8: $02
    inc bc                                        ; $65a9: $03
    ld [bc], a                                    ; $65aa: $02
    ld [bc], a                                    ; $65ab: $02
    ld [bc], a                                    ; $65ac: $02
    ld hl, $2303                                  ; $65ad: $21 $03 $23
    jr z, jr_083_65d7                             ; $65b0: $28 $25

    rlca                                          ; $65b2: $07
    daa                                           ; $65b3: $27
    dec hl                                        ; $65b4: $2b
    ld [bc], a                                    ; $65b5: $02
    dec bc                                        ; $65b6: $0b
    inc b                                         ; $65b7: $04
    dec c                                         ; $65b8: $0d
    ld b, $22                                     ; $65b9: $06 $22
    ld [$0210], sp                                ; $65bb: $08 $10 $02
    ld [bc], a                                    ; $65be: $02
    ld [bc], a                                    ; $65bf: $02
    inc bc                                        ; $65c0: $03
    ld [bc], a                                    ; $65c1: $02
    ld [bc], a                                    ; $65c2: $02
    ld [bc], a                                    ; $65c3: $02
    ld [bc], a                                    ; $65c4: $02
    ld [bc], a                                    ; $65c5: $02
    ld [bc], a                                    ; $65c6: $02
    ld [bc], a                                    ; $65c7: $02
    ld [bc], a                                    ; $65c8: $02
    ld [bc], a                                    ; $65c9: $02
    ld [bc], a                                    ; $65ca: $02
    ld [bc], a                                    ; $65cb: $02
    inc bc                                        ; $65cc: $03
    add hl, hl                                    ; $65cd: $29
    add l                                         ; $65ce: $85
    add [hl]                                      ; $65cf: $86
    ld a, a                                       ; $65d0: $7f
    inc l                                         ; $65d1: $2c
    add a                                         ; $65d2: $87
    adc b                                         ; $65d3: $88
    adc c                                         ; $65d4: $89
    ld l, l                                       ; $65d5: $6d
    adc d                                         ; $65d6: $8a

jr_083_65d7:
    adc e                                         ; $65d7: $8b
    adc h                                         ; $65d8: $8c
    ld [hl], c                                    ; $65d9: $71
    adc l                                         ; $65da: $8d
    adc [hl]                                      ; $65db: $8e
    adc a                                         ; $65dc: $8f
    inc bc                                        ; $65dd: $03
    rrca                                          ; $65de: $0f
    rrca                                          ; $65df: $0f
    rlca                                          ; $65e0: $07
    inc bc                                        ; $65e1: $03
    rrca                                          ; $65e2: $0f
    rrca                                          ; $65e3: $0f
    rrca                                          ; $65e4: $0f
    rlca                                          ; $65e5: $07
    rrca                                          ; $65e6: $0f
    rrca                                          ; $65e7: $0f
    rrca                                          ; $65e8: $0f
    rlca                                          ; $65e9: $07
    rrca                                          ; $65ea: $0f
    rrca                                          ; $65eb: $0f
    rrca                                          ; $65ec: $0f
    sub b                                         ; $65ed: $90
    sub c                                         ; $65ee: $91
    sub d                                         ; $65ef: $92
    add hl, hl                                    ; $65f0: $29
    sub e                                         ; $65f1: $93
    sub h                                         ; $65f2: $94
    sub l                                         ; $65f3: $95
    ld l, l                                       ; $65f4: $6d
    sub [hl]                                      ; $65f5: $96
    sub a                                         ; $65f6: $97
    sbc b                                         ; $65f7: $98
    ld [hl], c                                    ; $65f8: $71
    adc a                                         ; $65f9: $8f
    sbc c                                         ; $65fa: $99
    sbc d                                         ; $65fb: $9a
    ld [hl], l                                    ; $65fc: $75
    rrca                                          ; $65fd: $0f
    rrca                                          ; $65fe: $0f
    rrca                                          ; $65ff: $0f
    inc bc                                        ; $6600: $03
    rrca                                          ; $6601: $0f
    rrca                                          ; $6602: $0f
    rrca                                          ; $6603: $0f
    daa                                           ; $6604: $27
    rrca                                          ; $6605: $0f
    rrca                                          ; $6606: $0f
    rrca                                          ; $6607: $0f
    daa                                           ; $6608: $27
    rrca                                          ; $6609: $0f
    rrca                                          ; $660a: $0f
    rrca                                          ; $660b: $0f
    daa                                           ; $660c: $27
    ld a, [hl+]                                   ; $660d: $2a
    jr nz, jr_083_6631                            ; $660e: $20 $21

    inc bc                                        ; $6610: $03
    dec l                                         ; $6611: $2d
    inc h                                         ; $6612: $24
    dec h                                         ; $6613: $25
    rlca                                          ; $6614: $07
    rrca                                          ; $6615: $0f
    ld bc, $0b02                                  ; $6616: $01 $02 $0b
    ld [de], a                                    ; $6619: $12
    dec b                                         ; $661a: $05
    ld b, $22                                     ; $661b: $06 $22
    inc bc                                        ; $661d: $03
    ld [bc], a                                    ; $661e: $02
    ld [bc], a                                    ; $661f: $02
    ld [bc], a                                    ; $6620: $02
    ld [bc], a                                    ; $6621: $02
    ld [bc], a                                    ; $6622: $02
    ld [bc], a                                    ; $6623: $02
    ld [bc], a                                    ; $6624: $02
    inc bc                                        ; $6625: $03
    ld [bc], a                                    ; $6626: $02
    ld [bc], a                                    ; $6627: $02
    ld [bc], a                                    ; $6628: $02
    inc bc                                        ; $6629: $03
    ld [bc], a                                    ; $662a: $02
    ld [bc], a                                    ; $662b: $02
    ld [bc], a                                    ; $662c: $02
    ld [$1110], sp                                ; $662d: $08 $10 $11
    dec l                                         ; $6630: $2d

jr_083_6631:
    inc c                                         ; $6631: $0c
    inc de                                        ; $6632: $13
    inc d                                         ; $6633: $14
    rrca                                          ; $6634: $0f
    inc hl                                        ; $6635: $23
    jr z, jr_083_6661                             ; $6636: $28 $29

    ld [de], a                                    ; $6638: $12
    daa                                           ; $6639: $27
    dec hl                                        ; $663a: $2b
    inc l                                         ; $663b: $2c
    dec d                                         ; $663c: $15
    ld [bc], a                                    ; $663d: $02
    ld [bc], a                                    ; $663e: $02
    ld [bc], a                                    ; $663f: $02
    ld [bc], a                                    ; $6640: $02
    ld [bc], a                                    ; $6641: $02
    ld [bc], a                                    ; $6642: $02
    ld [bc], a                                    ; $6643: $02
    ld [bc], a                                    ; $6644: $02
    ld [bc], a                                    ; $6645: $02
    ld [bc], a                                    ; $6646: $02
    ld [bc], a                                    ; $6647: $02
    ld [bc], a                                    ; $6648: $02
    ld [bc], a                                    ; $6649: $02
    ld [bc], a                                    ; $664a: $02
    ld [bc], a                                    ; $664b: $02
    ld [bc], a                                    ; $664c: $02
    dec b                                         ; $664d: $05
    ld b, $07                                     ; $664e: $06 $07
    ld [$0a09], sp                                ; $6650: $08 $09 $0a
    dec bc                                        ; $6653: $0b
    inc c                                         ; $6654: $0c
    jr nz, jr_083_6678                            ; $6655: $20 $21

    ld [hl+], a                                   ; $6657: $22
    inc hl                                        ; $6658: $23
    inc h                                         ; $6659: $24
    dec h                                         ; $665a: $25
    ld h, $27                                     ; $665b: $26 $27
    ld [bc], a                                    ; $665d: $02
    ld [bc], a                                    ; $665e: $02
    ld [bc], a                                    ; $665f: $02
    inc bc                                        ; $6660: $03

jr_083_6661:
    ld [bc], a                                    ; $6661: $02
    ld [bc], a                                    ; $6662: $02
    ld [bc], a                                    ; $6663: $02
    inc bc                                        ; $6664: $03
    ld [bc], a                                    ; $6665: $02
    ld [bc], a                                    ; $6666: $02
    ld [bc], a                                    ; $6667: $02
    inc bc                                        ; $6668: $03
    ld [bc], a                                    ; $6669: $02
    ld [bc], a                                    ; $666a: $02
    ld [bc], a                                    ; $666b: $02
    inc bc                                        ; $666c: $03
    inc b                                         ; $666d: $04
    dec c                                         ; $666e: $0d
    ld c, $2a                                     ; $666f: $0e $2a
    ld [$1110], sp                                ; $6671: $08 $10 $11
    dec l                                         ; $6674: $2d
    inc c                                         ; $6675: $0c
    inc de                                        ; $6676: $13
    inc d                                         ; $6677: $14

jr_083_6678:
    rrca                                          ; $6678: $0f
    inc hl                                        ; $6679: $23
    jr z, jr_083_66a5                             ; $667a: $28 $29

    ld [de], a                                    ; $667c: $12
    ld [bc], a                                    ; $667d: $02
    ld [bc], a                                    ; $667e: $02
    ld [bc], a                                    ; $667f: $02
    ld [bc], a                                    ; $6680: $02
    ld [bc], a                                    ; $6681: $02
    ld [bc], a                                    ; $6682: $02
    ld [bc], a                                    ; $6683: $02
    ld [bc], a                                    ; $6684: $02
    ld [bc], a                                    ; $6685: $02
    ld [bc], a                                    ; $6686: $02
    ld [bc], a                                    ; $6687: $02
    ld [bc], a                                    ; $6688: $02
    ld [bc], a                                    ; $6689: $02
    ld [bc], a                                    ; $668a: $02
    ld [bc], a                                    ; $668b: $02
    ld [bc], a                                    ; $668c: $02
    ld bc, $0302                                  ; $668d: $01 $02 $03
    inc b                                         ; $6690: $04
    dec b                                         ; $6691: $05
    ld b, $07                                     ; $6692: $06 $07
    ld [$0a09], sp                                ; $6694: $08 $09 $0a
    dec bc                                        ; $6697: $0b
    inc c                                         ; $6698: $0c
    jr nz, jr_083_66bc                            ; $6699: $20 $21

    ld [hl+], a                                   ; $669b: $22
    inc hl                                        ; $669c: $23
    ld [bc], a                                    ; $669d: $02
    ld [bc], a                                    ; $669e: $02
    ld [bc], a                                    ; $669f: $02
    inc bc                                        ; $66a0: $03
    ld [bc], a                                    ; $66a1: $02
    ld [bc], a                                    ; $66a2: $02
    ld [bc], a                                    ; $66a3: $02
    inc bc                                        ; $66a4: $03

jr_083_66a5:
    ld [bc], a                                    ; $66a5: $02
    ld [bc], a                                    ; $66a6: $02
    ld [bc], a                                    ; $66a7: $02
    inc bc                                        ; $66a8: $03
    ld [bc], a                                    ; $66a9: $02
    ld [bc], a                                    ; $66aa: $02
    ld [bc], a                                    ; $66ab: $02
    inc bc                                        ; $66ac: $03
    xor $ed                                       ; $66ad: $ee $ed
    db $ed                                        ; $66af: $ed
    db $ed                                        ; $66b0: $ed
    ld c, d                                       ; $66b1: $4a
    rla                                           ; $66b2: $17
    ld c, e                                       ; $66b3: $4b
    db $ed                                        ; $66b4: $ed
    ld a, [de]                                    ; $66b5: $1a
    add hl, de                                    ; $66b6: $19
    xor $ed                                       ; $66b7: $ee $ed
    dec e                                         ; $66b9: $1d
    inc e                                         ; $66ba: $1c
    dec de                                        ; $66bb: $1b

jr_083_66bc:
    db $ed                                        ; $66bc: $ed
    add b                                         ; $66bd: $80
    add b                                         ; $66be: $80
    add b                                         ; $66bf: $80
    add b                                         ; $66c0: $80
    add b                                         ; $66c1: $80
    add b                                         ; $66c2: $80
    add b                                         ; $66c3: $80
    add b                                         ; $66c4: $80
    ld b, $06                                     ; $66c5: $06 $06
    add b                                         ; $66c7: $80
    add b                                         ; $66c8: $80
    ld b, $06                                     ; $66c9: $06 $06
    add b                                         ; $66cb: $80
    add b                                         ; $66cc: $80
    daa                                           ; $66cd: $27
    dec hl                                        ; $66ce: $2b
    inc l                                         ; $66cf: $2c
    dec d                                         ; $66d0: $15
    inc b                                         ; $66d1: $04
    dec c                                         ; $66d2: $0d
    ld c, $2a                                     ; $66d3: $0e $2a
    ld [$1110], sp                                ; $66d5: $08 $10 $11
    dec l                                         ; $66d8: $2d
    inc c                                         ; $66d9: $0c
    inc de                                        ; $66da: $13
    inc d                                         ; $66db: $14
    rrca                                          ; $66dc: $0f
    ld [bc], a                                    ; $66dd: $02
    ld [bc], a                                    ; $66de: $02
    ld [bc], a                                    ; $66df: $02
    ld [bc], a                                    ; $66e0: $02
    ld [bc], a                                    ; $66e1: $02
    ld [bc], a                                    ; $66e2: $02
    ld [bc], a                                    ; $66e3: $02
    ld [bc], a                                    ; $66e4: $02
    ld [bc], a                                    ; $66e5: $02
    ld [bc], a                                    ; $66e6: $02
    ld [bc], a                                    ; $66e7: $02
    ld [bc], a                                    ; $66e8: $02
    ld [bc], a                                    ; $66e9: $02
    ld [bc], a                                    ; $66ea: $02
    ld [bc], a                                    ; $66eb: $02
    ld [bc], a                                    ; $66ec: $02
    inc h                                         ; $66ed: $24
    dec h                                         ; $66ee: $25
    ld h, $27                                     ; $66ef: $26 $27
    ld bc, $0302                                  ; $66f1: $01 $02 $03
    inc b                                         ; $66f4: $04
    dec b                                         ; $66f5: $05
    ld b, $07                                     ; $66f6: $06 $07
    ld [$0a09], sp                                ; $66f8: $08 $09 $0a
    dec bc                                        ; $66fb: $0b
    inc c                                         ; $66fc: $0c
    ld [bc], a                                    ; $66fd: $02
    ld [bc], a                                    ; $66fe: $02
    ld [bc], a                                    ; $66ff: $02
    inc bc                                        ; $6700: $03
    ld [bc], a                                    ; $6701: $02
    ld [bc], a                                    ; $6702: $02
    ld [bc], a                                    ; $6703: $02
    inc bc                                        ; $6704: $03
    ld [bc], a                                    ; $6705: $02
    ld [bc], a                                    ; $6706: $02
    ld [bc], a                                    ; $6707: $02
    inc bc                                        ; $6708: $03
    ld [bc], a                                    ; $6709: $02
    ld [bc], a                                    ; $670a: $02
    ld [bc], a                                    ; $670b: $02
    inc bc                                        ; $670c: $03
    rra                                           ; $670d: $1f
    ld e, $1b                                     ; $670e: $1e $1b
    db $ed                                        ; $6710: $ed

jr_083_6711:
    cpl                                           ; $6711: $2f
    ld l, $1b                                     ; $6712: $2e $1b
    db $ed                                        ; $6714: $ed
    ld sp, $1b30                                  ; $6715: $31 $30 $1b
    db $ed                                        ; $6718: $ed
    inc de                                        ; $6719: $13
    inc d                                         ; $671a: $14
    dec de                                        ; $671b: $1b
    ld [hl-], a                                   ; $671c: $32
    ld b, $06                                     ; $671d: $06 $06
    add b                                         ; $671f: $80
    add b                                         ; $6720: $80
    ld b, $06                                     ; $6721: $06 $06
    add b                                         ; $6723: $80
    add b                                         ; $6724: $80
    ld b, $06                                     ; $6725: $06 $06
    add b                                         ; $6727: $80
    add b                                         ; $6728: $80
    inc bc                                        ; $6729: $03
    inc bc                                        ; $672a: $03
    add b                                         ; $672b: $80
    add b                                         ; $672c: $80
    jr nz, @+$23                                  ; $672d: $20 $21

    ld [hl+], a                                   ; $672f: $22
    inc hl                                        ; $6730: $23
    inc h                                         ; $6731: $24
    dec h                                         ; $6732: $25
    ld h, $27                                     ; $6733: $26 $27
    ld bc, $0302                                  ; $6735: $01 $02 $03
    inc b                                         ; $6738: $04
    dec b                                         ; $6739: $05
    ld b, $07                                     ; $673a: $06 $07
    ld [$0202], sp                                ; $673c: $08 $02 $02
    ld [bc], a                                    ; $673f: $02
    ld [bc], a                                    ; $6740: $02
    ld [bc], a                                    ; $6741: $02
    ld [bc], a                                    ; $6742: $02
    ld [bc], a                                    ; $6743: $02
    ld [bc], a                                    ; $6744: $02
    ld [bc], a                                    ; $6745: $02
    ld [bc], a                                    ; $6746: $02
    ld [bc], a                                    ; $6747: $02
    ld [bc], a                                    ; $6748: $02
    ld [bc], a                                    ; $6749: $02
    ld [bc], a                                    ; $674a: $02
    ld [bc], a                                    ; $674b: $02
    inc bc                                        ; $674c: $03
    jr z, jr_083_6778                             ; $674d: $28 $29

    xor $32                                       ; $674f: $ee $32
    ld d, $17                                     ; $6751: $16 $17
    jr @+$34                                      ; $6753: $18 $32

    xor $ed                                       ; $6755: $ee $ed
    db $ed                                        ; $6757: $ed
    db $ed                                        ; $6758: $ed
    xor $ed                                       ; $6759: $ee $ed
    db $ed                                        ; $675b: $ed
    db $ed                                        ; $675c: $ed
    ld [bc], a                                    ; $675d: $02
    inc bc                                        ; $675e: $03
    add b                                         ; $675f: $80
    add b                                         ; $6760: $80
    add b                                         ; $6761: $80
    add b                                         ; $6762: $80
    add b                                         ; $6763: $80
    add b                                         ; $6764: $80
    add b                                         ; $6765: $80
    add b                                         ; $6766: $80
    add b                                         ; $6767: $80
    add b                                         ; $6768: $80
    add b                                         ; $6769: $80
    add b                                         ; $676a: $80
    add b                                         ; $676b: $80
    add b                                         ; $676c: $80
    add hl, bc                                    ; $676d: $09
    sbc e                                         ; $676e: $9b
    sbc h                                         ; $676f: $9c
    sbc l                                         ; $6770: $9d
    jr nz, jr_083_6711                            ; $6771: $20 $9e

    sbc a                                         ; $6773: $9f
    and b                                         ; $6774: $a0
    inc h                                         ; $6775: $24
    and c                                         ; $6776: $a1
    and d                                         ; $6777: $a2

jr_083_6778:
    and e                                         ; $6778: $a3
    ld bc, $a5a4                                  ; $6779: $01 $a4 $a5
    and l                                         ; $677c: $a5
    inc bc                                        ; $677d: $03
    ld c, $0e                                     ; $677e: $0e $0e
    ld c, $03                                     ; $6780: $0e $03
    ld c, $0e                                     ; $6782: $0e $0e
    ld c, $03                                     ; $6784: $0e $03
    ld c, $0e                                     ; $6786: $0e $0e
    ld c, $03                                     ; $6788: $0e $03
    ld c, $0e                                     ; $678a: $0e $0e
    ld l, $9b                                     ; $678c: $2e $9b
    inc d                                         ; $678e: $14
    dec d                                         ; $678f: $15
    add hl, bc                                    ; $6790: $09
    sbc [hl]                                      ; $6791: $9e
    add hl, hl                                    ; $6792: $29
    ld a, [hl+]                                   ; $6793: $2a
    jr nz, @-$5d                                  ; $6794: $20 $a1

    inc l                                         ; $6796: $2c
    dec l                                         ; $6797: $2d
    inc h                                         ; $6798: $24
    and h                                         ; $6799: $a4
    ld c, $0f                                     ; $679a: $0e $0f
    ld bc, $022e                                  ; $679c: $01 $2e $02
    ld [bc], a                                    ; $679f: $02
    ld [bc], a                                    ; $67a0: $02
    ld l, $03                                     ; $67a1: $2e $03

jr_083_67a3:
    ld [bc], a                                    ; $67a3: $02
    ld [bc], a                                    ; $67a4: $02
    ld l, $03                                     ; $67a5: $2e $03
    ld [bc], a                                    ; $67a7: $02
    ld [bc], a                                    ; $67a8: $02
    ld l, $03                                     ; $67a9: $2e $03
    ld [bc], a                                    ; $67ab: $02
    ld [bc], a                                    ; $67ac: $02
    db $ed                                        ; $67ad: $ed
    db $ed                                        ; $67ae: $ed
    db $ed                                        ; $67af: $ed
    xor $ed                                       ; $67b0: $ee $ed
    ld d, $17                                     ; $67b2: $16 $17
    jr jr_083_67a3                                ; $67b4: $18 $ed

    xor $19                                       ; $67b6: $ee $19
    ld a, [de]                                    ; $67b8: $1a
    db $ed                                        ; $67b9: $ed
    dec de                                        ; $67ba: $1b
    inc e                                         ; $67bb: $1c
    dec e                                         ; $67bc: $1d
    add b                                         ; $67bd: $80
    add b                                         ; $67be: $80
    add b                                         ; $67bf: $80
    add b                                         ; $67c0: $80
    add b                                         ; $67c1: $80
    add b                                         ; $67c2: $80
    add b                                         ; $67c3: $80
    add b                                         ; $67c4: $80
    add b                                         ; $67c5: $80
    add b                                         ; $67c6: $80
    ld h, $26                                     ; $67c7: $26 $26
    add b                                         ; $67c9: $80
    add b                                         ; $67ca: $80
    ld h, $26                                     ; $67cb: $26 $26
    dec b                                         ; $67cd: $05
    ld b, $07                                     ; $67ce: $06 $07
    ld [$0a09], sp                                ; $67d0: $08 $09 $0a
    dec bc                                        ; $67d3: $0b
    inc c                                         ; $67d4: $0c
    jr nz, jr_083_67f8                            ; $67d5: $20 $21

    ld [hl+], a                                   ; $67d7: $22
    inc hl                                        ; $67d8: $23
    inc h                                         ; $67d9: $24
    dec h                                         ; $67da: $25
    ld h, $27                                     ; $67db: $26 $27
    inc bc                                        ; $67dd: $03
    inc bc                                        ; $67de: $03
    inc bc                                        ; $67df: $03
    inc bc                                        ; $67e0: $03
    inc bc                                        ; $67e1: $03
    ld [bc], a                                    ; $67e2: $02
    ld [bc], a                                    ; $67e3: $02
    ld [bc], a                                    ; $67e4: $02
    inc bc                                        ; $67e5: $03
    ld [bc], a                                    ; $67e6: $02
    ld [bc], a                                    ; $67e7: $02
    ld [bc], a                                    ; $67e8: $02
    inc bc                                        ; $67e9: $03
    ld [bc], a                                    ; $67ea: $02
    ld [bc], a                                    ; $67eb: $02
    ld [bc], a                                    ; $67ec: $02
    db $10                                        ; $67ed: $10
    ld de, $0512                                  ; $67ee: $11 $12 $05
    inc de                                        ; $67f1: $13
    inc d                                         ; $67f2: $14
    dec d                                         ; $67f3: $15
    add hl, bc                                    ; $67f4: $09
    jr z, @+$2b                                   ; $67f5: $28 $29

    ld a, [hl+]                                   ; $67f7: $2a

jr_083_67f8:
    jr nz, jr_083_6825                            ; $67f8: $20 $2b

    inc l                                         ; $67fa: $2c
    dec l                                         ; $67fb: $2d
    inc h                                         ; $67fc: $24
    inc bc                                        ; $67fd: $03
    inc bc                                        ; $67fe: $03
    ld [bc], a                                    ; $67ff: $02
    ld [bc], a                                    ; $6800: $02
    ld [bc], a                                    ; $6801: $02
    ld [bc], a                                    ; $6802: $02
    ld [bc], a                                    ; $6803: $02
    ld [bc], a                                    ; $6804: $02
    ld [bc], a                                    ; $6805: $02
    ld [bc], a                                    ; $6806: $02
    ld [bc], a                                    ; $6807: $02
    ld [bc], a                                    ; $6808: $02
    ld [bc], a                                    ; $6809: $02
    ld [bc], a                                    ; $680a: $02
    ld [bc], a                                    ; $680b: $02
    ld [bc], a                                    ; $680c: $02
    db $ed                                        ; $680d: $ed
    dec de                                        ; $680e: $1b
    ld e, $1f                                     ; $680f: $1e $1f
    db $ed                                        ; $6811: $ed
    dec de                                        ; $6812: $1b
    ld l, $2f                                     ; $6813: $2e $2f
    db $ed                                        ; $6815: $ed
    dec de                                        ; $6816: $1b
    jr nc, jr_083_684a                            ; $6817: $30 $31

    ld [hl-], a                                   ; $6819: $32
    dec de                                        ; $681a: $1b
    add hl, hl                                    ; $681b: $29
    ld [de], a                                    ; $681c: $12
    add b                                         ; $681d: $80
    add b                                         ; $681e: $80
    ld h, $26                                     ; $681f: $26 $26
    add b                                         ; $6821: $80
    add b                                         ; $6822: $80
    ld h, $26                                     ; $6823: $26 $26

jr_083_6825:
    add b                                         ; $6825: $80
    add b                                         ; $6826: $80
    ld h, $26                                     ; $6827: $26 $26
    and b                                         ; $6829: $a0
    add b                                         ; $682a: $80
    inc bc                                        ; $682b: $03
    inc bc                                        ; $682c: $03
    ld [hl-], a                                   ; $682d: $32
    xor $2c                                       ; $682e: $ee $2c
    dec d                                         ; $6830: $15
    ld [hl-], a                                   ; $6831: $32
    ld c, d                                       ; $6832: $4a
    rla                                           ; $6833: $17
    ld c, h                                       ; $6834: $4c
    db $ed                                        ; $6835: $ed
    db $ed                                        ; $6836: $ed
    db $ed                                        ; $6837: $ed
    xor $ed                                       ; $6838: $ee $ed
    db $ed                                        ; $683a: $ed
    db $ed                                        ; $683b: $ed
    xor $a0                                       ; $683c: $ee $a0
    add b                                         ; $683e: $80
    inc bc                                        ; $683f: $03
    ld [bc], a                                    ; $6840: $02
    and b                                         ; $6841: $a0
    add b                                         ; $6842: $80
    add b                                         ; $6843: $80
    add b                                         ; $6844: $80
    add b                                         ; $6845: $80
    add b                                         ; $6846: $80
    add b                                         ; $6847: $80
    add b                                         ; $6848: $80
    add b                                         ; $6849: $80

jr_083_684a:
    add b                                         ; $684a: $80
    add b                                         ; $684b: $80
    add b                                         ; $684c: $80
    inc h                                         ; $684d: $24
    dec h                                         ; $684e: $25
    ld h, $27                                     ; $684f: $26 $27
    ld bc, $0302                                  ; $6851: $01 $02 $03
    inc b                                         ; $6854: $04
    dec b                                         ; $6855: $05
    ld b, $07                                     ; $6856: $06 $07
    ld [$0a09], sp                                ; $6858: $08 $09 $0a
    dec bc                                        ; $685b: $0b
    inc c                                         ; $685c: $0c
    ld [bc], a                                    ; $685d: $02
    ld [bc], a                                    ; $685e: $02
    ld [bc], a                                    ; $685f: $02
    ld [bc], a                                    ; $6860: $02
    ld [bc], a                                    ; $6861: $02
    ld [bc], a                                    ; $6862: $02
    ld [bc], a                                    ; $6863: $02
    ld [bc], a                                    ; $6864: $02
    ld [bc], a                                    ; $6865: $02
    ld [bc], a                                    ; $6866: $02
    ld [bc], a                                    ; $6867: $02
    ld [bc], a                                    ; $6868: $02
    inc bc                                        ; $6869: $03
    ld [bc], a                                    ; $686a: $02
    ld [bc], a                                    ; $686b: $02
    ld [bc], a                                    ; $686c: $02
    ld a, [bc]                                    ; $686d: $0a
    ld h, $0c                                     ; $686e: $26 $0c
    inc de                                        ; $6870: $13
    ld hl, $2303                                  ; $6871: $21 $03 $23
    jr z, jr_083_689b                             ; $6874: $28 $25

    rlca                                          ; $6876: $07
    daa                                           ; $6877: $27
    dec hl                                        ; $6878: $2b
    ld [bc], a                                    ; $6879: $02
    dec bc                                        ; $687a: $0b
    inc b                                         ; $687b: $04
    dec c                                         ; $687c: $0d
    ld [bc], a                                    ; $687d: $02
    ld [bc], a                                    ; $687e: $02
    ld [bc], a                                    ; $687f: $02
    inc bc                                        ; $6880: $03
    ld [bc], a                                    ; $6881: $02
    ld [bc], a                                    ; $6882: $02
    ld [bc], a                                    ; $6883: $02
    inc bc                                        ; $6884: $03
    ld [bc], a                                    ; $6885: $02
    ld [bc], a                                    ; $6886: $02
    ld [bc], a                                    ; $6887: $02
    ld [bc], a                                    ; $6888: $02
    ld [bc], a                                    ; $6889: $02
    ld [bc], a                                    ; $688a: $02
    ld [bc], a                                    ; $688b: $02
    ld [bc], a                                    ; $688c: $02
    ld [hl], l                                    ; $688d: $75
    and [hl]                                      ; $688e: $a6
    and a                                         ; $688f: $a7
    xor b                                         ; $6890: $a8
    add hl, hl                                    ; $6891: $29
    xor c                                         ; $6892: $a9
    xor d                                         ; $6893: $aa
    xor e                                         ; $6894: $ab
    inc l                                         ; $6895: $2c
    dec d                                         ; $6896: $15
    inc h                                         ; $6897: $24
    dec h                                         ; $6898: $25
    ld c, $2a                                     ; $6899: $0e $2a

jr_083_689b:
    ld bc, $0702                                  ; $689b: $01 $02 $07
    rrca                                          ; $689e: $0f
    rrca                                          ; $689f: $0f
    rrca                                          ; $68a0: $0f
    inc bc                                        ; $68a1: $03
    rrca                                          ; $68a2: $0f
    rrca                                          ; $68a3: $0f
    rrca                                          ; $68a4: $0f
    inc bc                                        ; $68a5: $03
    inc bc                                        ; $68a6: $03
    inc bc                                        ; $68a7: $03
    inc bc                                        ; $68a8: $03
    ld [bc], a                                    ; $68a9: $02
    ld [bc], a                                    ; $68aa: $02
    ld [bc], a                                    ; $68ab: $02
    ld [bc], a                                    ; $68ac: $02
    xor h                                         ; $68ad: $ac
    xor l                                         ; $68ae: $ad
    xor [hl]                                      ; $68af: $ae
    inc d                                         ; $68b0: $14
    xor a                                         ; $68b1: $af
    or b                                          ; $68b2: $b0
    or c                                          ; $68b3: $b1
    add hl, hl                                    ; $68b4: $29
    ld h, $27                                     ; $68b5: $26 $27
    dec hl                                        ; $68b7: $2b
    inc l                                         ; $68b8: $2c
    inc bc                                        ; $68b9: $03
    inc b                                         ; $68ba: $04
    dec c                                         ; $68bb: $0d
    ld c, $0f                                     ; $68bc: $0e $0f
    rrca                                          ; $68be: $0f
    rrca                                          ; $68bf: $0f
    inc bc                                        ; $68c0: $03
    rrca                                          ; $68c1: $0f
    rrca                                          ; $68c2: $0f
    rrca                                          ; $68c3: $0f
    inc bc                                        ; $68c4: $03
    inc bc                                        ; $68c5: $03
    inc bc                                        ; $68c6: $03
    inc bc                                        ; $68c7: $03
    inc bc                                        ; $68c8: $03
    ld [bc], a                                    ; $68c9: $02
    ld [bc], a                                    ; $68ca: $02
    ld [bc], a                                    ; $68cb: $02
    ld [bc], a                                    ; $68cc: $02
    dec d                                         ; $68cd: $15
    add hl, bc                                    ; $68ce: $09
    ld a, [bc]                                    ; $68cf: $0a
    ld h, $2a                                     ; $68d0: $26 $2a
    jr nz, jr_083_68f5                            ; $68d2: $20 $21

    inc bc                                        ; $68d4: $03
    dec l                                         ; $68d5: $2d
    inc h                                         ; $68d6: $24
    dec h                                         ; $68d7: $25
    rlca                                          ; $68d8: $07
    rrca                                          ; $68d9: $0f
    ld bc, $0b02                                  ; $68da: $01 $02 $0b
    inc bc                                        ; $68dd: $03
    ld [bc], a                                    ; $68de: $02
    ld [bc], a                                    ; $68df: $02
    ld [bc], a                                    ; $68e0: $02
    ld [bc], a                                    ; $68e1: $02
    ld [bc], a                                    ; $68e2: $02
    ld [bc], a                                    ; $68e3: $02
    ld [bc], a                                    ; $68e4: $02
    ld [bc], a                                    ; $68e5: $02
    ld [bc], a                                    ; $68e6: $02
    ld [bc], a                                    ; $68e7: $02
    ld [bc], a                                    ; $68e8: $02
    ld [bc], a                                    ; $68e9: $02
    ld [bc], a                                    ; $68ea: $02
    ld [bc], a                                    ; $68eb: $02
    ld [bc], a                                    ; $68ec: $02
    ld de, $052d                                  ; $68ed: $11 $2d $05
    ld b, $14                                     ; $68f0: $06 $14
    rrca                                          ; $68f2: $0f
    add hl, bc                                    ; $68f3: $09
    ld a, [bc]                                    ; $68f4: $0a

jr_083_68f5:
    add hl, hl                                    ; $68f5: $29
    ld [de], a                                    ; $68f6: $12
    jr nz, @+$23                                  ; $68f7: $20 $21

    inc l                                         ; $68f9: $2c
    dec d                                         ; $68fa: $15
    inc h                                         ; $68fb: $24
    dec h                                         ; $68fc: $25
    ld [bc], a                                    ; $68fd: $02
    ld [bc], a                                    ; $68fe: $02
    ld [bc], a                                    ; $68ff: $02
    ld [bc], a                                    ; $6900: $02
    ld [bc], a                                    ; $6901: $02
    ld [bc], a                                    ; $6902: $02
    ld [bc], a                                    ; $6903: $02
    ld [bc], a                                    ; $6904: $02
    ld [bc], a                                    ; $6905: $02
    ld [bc], a                                    ; $6906: $02
    ld [bc], a                                    ; $6907: $02
    ld [bc], a                                    ; $6908: $02
    ld [bc], a                                    ; $6909: $02
    ld [bc], a                                    ; $690a: $02
    ld [bc], a                                    ; $690b: $02
    ld [bc], a                                    ; $690c: $02
    rlca                                          ; $690d: $07
    ld [$1110], sp                                ; $690e: $08 $10 $11
    dec bc                                        ; $6911: $0b
    inc c                                         ; $6912: $0c
    inc de                                        ; $6913: $13
    inc d                                         ; $6914: $14
    ld [hl+], a                                   ; $6915: $22
    inc hl                                        ; $6916: $23
    jr z, jr_083_6942                             ; $6917: $28 $29

Jump_083_6919:
    ld h, $27                                     ; $6919: $26 $27
    dec hl                                        ; $691b: $2b
    inc l                                         ; $691c: $2c
    ld [bc], a                                    ; $691d: $02
    ld [bc], a                                    ; $691e: $02
    ld [bc], a                                    ; $691f: $02
    ld [bc], a                                    ; $6920: $02
    ld [bc], a                                    ; $6921: $02
    ld [bc], a                                    ; $6922: $02
    ld [bc], a                                    ; $6923: $02
    ld [bc], a                                    ; $6924: $02
    ld [bc], a                                    ; $6925: $02
    ld [bc], a                                    ; $6926: $02
    ld [bc], a                                    ; $6927: $02
    ld [bc], a                                    ; $6928: $02
    ld [bc], a                                    ; $6929: $02
    ld [bc], a                                    ; $692a: $02
    ld [bc], a                                    ; $692b: $02
    ld [bc], a                                    ; $692c: $02
    ld c, $2a                                     ; $692d: $0e $2a
    ld bc, $1102                                  ; $692f: $01 $02 $11
    dec l                                         ; $6932: $2d
    dec b                                         ; $6933: $05
    ld b, $14                                     ; $6934: $06 $14
    rrca                                          ; $6936: $0f
    add hl, bc                                    ; $6937: $09
    ld a, [bc]                                    ; $6938: $0a
    add hl, hl                                    ; $6939: $29
    ld [de], a                                    ; $693a: $12
    jr nz, jr_083_695e                            ; $693b: $20 $21

    ld [bc], a                                    ; $693d: $02
    ld [bc], a                                    ; $693e: $02
    ld [bc], a                                    ; $693f: $02
    ld [bc], a                                    ; $6940: $02
    ld [bc], a                                    ; $6941: $02

jr_083_6942:
    ld [bc], a                                    ; $6942: $02
    ld [bc], a                                    ; $6943: $02
    ld [bc], a                                    ; $6944: $02
    ld [bc], a                                    ; $6945: $02
    ld [bc], a                                    ; $6946: $02
    ld [bc], a                                    ; $6947: $02
    ld [bc], a                                    ; $6948: $02
    ld [bc], a                                    ; $6949: $02
    ld [bc], a                                    ; $694a: $02
    ld [bc], a                                    ; $694b: $02
    ld [bc], a                                    ; $694c: $02
    inc bc                                        ; $694d: $03
    inc b                                         ; $694e: $04
    dec c                                         ; $694f: $0d
    ld c, $07                                     ; $6950: $0e $07
    ld [$1110], sp                                ; $6952: $08 $10 $11
    dec bc                                        ; $6955: $0b
    inc c                                         ; $6956: $0c
    inc de                                        ; $6957: $13
    inc d                                         ; $6958: $14
    ld [hl+], a                                   ; $6959: $22
    inc hl                                        ; $695a: $23
    jr z, jr_083_6986                             ; $695b: $28 $29

    ld [bc], a                                    ; $695d: $02

jr_083_695e:
    ld [bc], a                                    ; $695e: $02
    ld [bc], a                                    ; $695f: $02
    ld [bc], a                                    ; $6960: $02
    ld [bc], a                                    ; $6961: $02
    ld [bc], a                                    ; $6962: $02
    ld [bc], a                                    ; $6963: $02
    ld [bc], a                                    ; $6964: $02
    ld [bc], a                                    ; $6965: $02
    ld [bc], a                                    ; $6966: $02
    ld [bc], a                                    ; $6967: $02
    ld [bc], a                                    ; $6968: $02
    ld [bc], a                                    ; $6969: $02
    ld [bc], a                                    ; $696a: $02
    ld [bc], a                                    ; $696b: $02
    ld [bc], a                                    ; $696c: $02
    dec h                                         ; $696d: $25
    rlca                                          ; $696e: $07
    daa                                           ; $696f: $27
    dec hl                                        ; $6970: $2b
    ld [bc], a                                    ; $6971: $02
    dec bc                                        ; $6972: $0b
    inc b                                         ; $6973: $04
    dec c                                         ; $6974: $0d
    ld b, $22                                     ; $6975: $06 $22
    ld [$0a10], sp                                ; $6977: $08 $10 $0a
    ld h, $0c                                     ; $697a: $26 $0c
    inc de                                        ; $697c: $13
    ld [bc], a                                    ; $697d: $02
    ld [bc], a                                    ; $697e: $02
    ld [bc], a                                    ; $697f: $02
    ld [bc], a                                    ; $6980: $02
    ld [bc], a                                    ; $6981: $02
    ld [bc], a                                    ; $6982: $02
    ld [bc], a                                    ; $6983: $02
    ld [bc], a                                    ; $6984: $02
    ld [bc], a                                    ; $6985: $02

jr_083_6986:
    ld [bc], a                                    ; $6986: $02
    ld [bc], a                                    ; $6987: $02
    ld [bc], a                                    ; $6988: $02
    ld [bc], a                                    ; $6989: $02
    ld [bc], a                                    ; $698a: $02
    ld [bc], a                                    ; $698b: $02
    ld [bc], a                                    ; $698c: $02
    inc l                                         ; $698d: $2c
    dec d                                         ; $698e: $15
    inc h                                         ; $698f: $24
    dec h                                         ; $6990: $25
    ld c, $b2                                     ; $6991: $0e $b2
    or e                                          ; $6993: $b3
    or h                                          ; $6994: $b4
    ld de, $b6b5                                  ; $6995: $11 $b5 $b6
    or a                                          ; $6998: $b7
    inc d                                         ; $6999: $14
    cp b                                          ; $699a: $b8
    cp c                                          ; $699b: $b9
    cp d                                          ; $699c: $ba
    ld [bc], a                                    ; $699d: $02
    ld [bc], a                                    ; $699e: $02
    ld [bc], a                                    ; $699f: $02
    ld [bc], a                                    ; $69a0: $02
    ld [bc], a                                    ; $69a1: $02
    dec c                                         ; $69a2: $0d
    dec c                                         ; $69a3: $0d
    dec c                                         ; $69a4: $0d
    inc bc                                        ; $69a5: $03
    dec c                                         ; $69a6: $0d
    dec c                                         ; $69a7: $0d
    dec c                                         ; $69a8: $0d
    inc bc                                        ; $69a9: $03
    dec c                                         ; $69aa: $0d
    dec c                                         ; $69ab: $0d
    dec c                                         ; $69ac: $0d
    ld h, $27                                     ; $69ad: $26 $27
    dec hl                                        ; $69af: $2b
    inc l                                         ; $69b0: $2c
    cp e                                          ; $69b1: $bb
    cp h                                          ; $69b2: $bc
    cp l                                          ; $69b3: $bd
    ld c, $be                                     ; $69b4: $0e $be
    cp a                                          ; $69b6: $bf
    ret nz                                        ; $69b7: $c0

    ld de, $c2c1                                  ; $69b8: $11 $c1 $c2
    jp Jump_000_0214                              ; $69bb: $c3 $14 $02


    ld [bc], a                                    ; $69be: $02
    ld [bc], a                                    ; $69bf: $02
    ld [bc], a                                    ; $69c0: $02
    dec c                                         ; $69c1: $0d
    dec c                                         ; $69c2: $0d
    dec c                                         ; $69c3: $0d
    ld [bc], a                                    ; $69c4: $02
    dec c                                         ; $69c5: $0d
    dec c                                         ; $69c6: $0d
    dec c                                         ; $69c7: $0d
    inc bc                                        ; $69c8: $03
    dec c                                         ; $69c9: $0d
    dec c                                         ; $69ca: $0d
    dec c                                         ; $69cb: $0d
    inc bc                                        ; $69cc: $03
    dec l                                         ; $69cd: $2d
    inc h                                         ; $69ce: $24
    dec h                                         ; $69cf: $25
    rlca                                          ; $69d0: $07
    rrca                                          ; $69d1: $0f
    ld bc, $0b02                                  ; $69d2: $01 $02 $0b
    ld [de], a                                    ; $69d5: $12
    dec b                                         ; $69d6: $05
    ld b, $22                                     ; $69d7: $06 $22
    dec d                                         ; $69d9: $15
    add hl, bc                                    ; $69da: $09
    ld a, [bc]                                    ; $69db: $0a
    ld h, $02                                     ; $69dc: $26 $02
    ld [bc], a                                    ; $69de: $02
    ld [bc], a                                    ; $69df: $02
    ld [bc], a                                    ; $69e0: $02
    ld [bc], a                                    ; $69e1: $02
    ld [bc], a                                    ; $69e2: $02
    ld [bc], a                                    ; $69e3: $02
    ld [bc], a                                    ; $69e4: $02
    ld [bc], a                                    ; $69e5: $02
    ld [bc], a                                    ; $69e6: $02
    ld [bc], a                                    ; $69e7: $02
    ld [bc], a                                    ; $69e8: $02
    ld [bc], a                                    ; $69e9: $02
    ld [bc], a                                    ; $69ea: $02
    ld [bc], a                                    ; $69eb: $02
    ld [bc], a                                    ; $69ec: $02
    add hl, bc                                    ; $69ed: $09
    ld a, [bc]                                    ; $69ee: $0a
    dec bc                                        ; $69ef: $0b
    inc c                                         ; $69f0: $0c
    jr nz, jr_083_6a14                            ; $69f1: $20 $21

    ld [hl+], a                                   ; $69f3: $22
    inc hl                                        ; $69f4: $23
    inc h                                         ; $69f5: $24
    dec h                                         ; $69f6: $25
    ld h, $27                                     ; $69f7: $26 $27
    ld bc, $0302                                  ; $69f9: $01 $02 $03
    inc b                                         ; $69fc: $04
    ld [bc], a                                    ; $69fd: $02
    ld [bc], a                                    ; $69fe: $02
    ld [bc], a                                    ; $69ff: $02
    inc bc                                        ; $6a00: $03
    ld [bc], a                                    ; $6a01: $02
    ld [bc], a                                    ; $6a02: $02
    ld [bc], a                                    ; $6a03: $02
    inc bc                                        ; $6a04: $03
    ld [bc], a                                    ; $6a05: $02
    ld [bc], a                                    ; $6a06: $02
    ld [bc], a                                    ; $6a07: $02
    inc bc                                        ; $6a08: $03
    ld [bc], a                                    ; $6a09: $02
    ld [bc], a                                    ; $6a0a: $02
    ld [bc], a                                    ; $6a0b: $02
    inc bc                                        ; $6a0c: $03
    ld bc, $0302                                  ; $6a0d: $01 $02 $03
    inc b                                         ; $6a10: $04
    dec b                                         ; $6a11: $05
    ld b, $07                                     ; $6a12: $06 $07

jr_083_6a14:
    ld [$0a09], sp                                ; $6a14: $08 $09 $0a
    dec bc                                        ; $6a17: $0b
    inc c                                         ; $6a18: $0c
    jr nz, @+$23                                  ; $6a19: $20 $21

    ld [hl+], a                                   ; $6a1b: $22
    inc hl                                        ; $6a1c: $23
    ld [bc], a                                    ; $6a1d: $02
    ld [bc], a                                    ; $6a1e: $02
    ld [bc], a                                    ; $6a1f: $02
    inc bc                                        ; $6a20: $03
    ld [bc], a                                    ; $6a21: $02
    ld [bc], a                                    ; $6a22: $02
    ld [bc], a                                    ; $6a23: $02
    inc bc                                        ; $6a24: $03
    ld [bc], a                                    ; $6a25: $02
    ld [bc], a                                    ; $6a26: $02
    ld [bc], a                                    ; $6a27: $02
    inc bc                                        ; $6a28: $03
    ld [bc], a                                    ; $6a29: $02
    ld [bc], a                                    ; $6a2a: $02
    ld [bc], a                                    ; $6a2b: $02
    ld [bc], a                                    ; $6a2c: $02
    cpl                                           ; $6a2d: $2f
    ld l, $1b                                     ; $6a2e: $2e $1b
    db $ed                                        ; $6a30: $ed
    ld sp, $1b30                                  ; $6a31: $31 $30 $1b
    db $ed                                        ; $6a34: $ed
    inc de                                        ; $6a35: $13
    inc d                                         ; $6a36: $14
    dec de                                        ; $6a37: $1b
    ld [hl-], a                                   ; $6a38: $32
    jr z, jr_083_6a64                             ; $6a39: $28 $29

    xor $32                                       ; $6a3b: $ee $32
    ld b, $06                                     ; $6a3d: $06 $06
    add b                                         ; $6a3f: $80
    add b                                         ; $6a40: $80
    ld b, $06                                     ; $6a41: $06 $06
    add b                                         ; $6a43: $80
    add b                                         ; $6a44: $80
    inc bc                                        ; $6a45: $03
    inc bc                                        ; $6a46: $03
    add b                                         ; $6a47: $80
    add b                                         ; $6a48: $80
    ld [bc], a                                    ; $6a49: $02
    inc bc                                        ; $6a4a: $03
    add b                                         ; $6a4b: $80
    add b                                         ; $6a4c: $80
    inc h                                         ; $6a4d: $24
    dec h                                         ; $6a4e: $25
    ld h, $27                                     ; $6a4f: $26 $27
    ld bc, $0302                                  ; $6a51: $01 $02 $03
    inc b                                         ; $6a54: $04
    dec b                                         ; $6a55: $05
    ld b, $07                                     ; $6a56: $06 $07
    ld [$0a09], sp                                ; $6a58: $08 $09 $0a

jr_083_6a5b:
    dec bc                                        ; $6a5b: $0b
    inc c                                         ; $6a5c: $0c
    ld [bc], a                                    ; $6a5d: $02
    ld [bc], a                                    ; $6a5e: $02
    ld [bc], a                                    ; $6a5f: $02
    ld [bc], a                                    ; $6a60: $02
    ld [bc], a                                    ; $6a61: $02
    ld [bc], a                                    ; $6a62: $02
    ld [bc], a                                    ; $6a63: $02

jr_083_6a64:
    ld [bc], a                                    ; $6a64: $02
    ld [bc], a                                    ; $6a65: $02
    ld [bc], a                                    ; $6a66: $02
    ld [bc], a                                    ; $6a67: $02
    inc bc                                        ; $6a68: $03
    ld [bc], a                                    ; $6a69: $02
    ld [bc], a                                    ; $6a6a: $02
    ld [bc], a                                    ; $6a6b: $02
    inc bc                                        ; $6a6c: $03
    add hl, bc                                    ; $6a6d: $09
    ld a, [bc]                                    ; $6a6e: $0a
    dec bc                                        ; $6a6f: $0b
    inc c                                         ; $6a70: $0c
    call nz, $c4c4                                ; $6a71: $c4 $c4 $c4
    call nz, $c6c5                                ; $6a74: $c4 $c5 $c6
    push bc                                       ; $6a77: $c5
    add $ed                                       ; $6a78: $c6 $ed
    db $ed                                        ; $6a7a: $ed
    db $ed                                        ; $6a7b: $ed
    db $ed                                        ; $6a7c: $ed
    inc bc                                        ; $6a7d: $03
    ld [bc], a                                    ; $6a7e: $02
    ld [bc], a                                    ; $6a7f: $02
    ld [bc], a                                    ; $6a80: $02
    add hl, bc                                    ; $6a81: $09
    add hl, bc                                    ; $6a82: $09
    add hl, bc                                    ; $6a83: $09
    add hl, bc                                    ; $6a84: $09
    add hl, bc                                    ; $6a85: $09
    add hl, bc                                    ; $6a86: $09
    add hl, bc                                    ; $6a87: $09
    add hl, bc                                    ; $6a88: $09
    ld bc, $0101                                  ; $6a89: $01 $01 $01
    ld bc, $1413                                  ; $6a8c: $01 $13 $14
    dec d                                         ; $6a8f: $15
    add hl, bc                                    ; $6a90: $09
    call nz, $c7c4                                ; $6a91: $c4 $c4 $c7
    jr nz, jr_083_6a5b                            ; $6a94: $20 $c5

    add $c8                                       ; $6a96: $c6 $c8
    inc h                                         ; $6a98: $24
    db $ed                                        ; $6a99: $ed
    db $ed                                        ; $6a9a: $ed
    ret z                                         ; $6a9b: $c8

    ld bc, $0202                                  ; $6a9c: $01 $02 $02
    ld [bc], a                                    ; $6a9f: $02
    ld [bc], a                                    ; $6aa0: $02
    add hl, bc                                    ; $6aa1: $09
    add hl, bc                                    ; $6aa2: $09
    add hl, bc                                    ; $6aa3: $09
    ld [bc], a                                    ; $6aa4: $02
    add hl, bc                                    ; $6aa5: $09
    add hl, bc                                    ; $6aa6: $09
    add hl, bc                                    ; $6aa7: $09
    inc bc                                        ; $6aa8: $03

jr_083_6aa9:
    ld bc, $0901                                  ; $6aa9: $01 $01 $09
    inc bc                                        ; $6aac: $03
    db $ed                                        ; $6aad: $ed
    db $ed                                        ; $6aae: $ed
    db $ed                                        ; $6aaf: $ed
    db $ed                                        ; $6ab0: $ed
    db $ed                                        ; $6ab1: $ed
    db $ed                                        ; $6ab2: $ed
    db $ed                                        ; $6ab3: $ed
    db $ed                                        ; $6ab4: $ed
    ret                                           ; $6ab5: $c9


    jp z, $cacb                                   ; $6ab6: $ca $cb $ca

    call z, $cccd                                 ; $6ab9: $cc $cd $cc
    call $0101                                    ; $6abc: $cd $01 $01
    ld bc, $0101                                  ; $6abf: $01 $01 $01
    ld bc, $0101                                  ; $6ac2: $01 $01 $01
    add hl, bc                                    ; $6ac5: $09
    add hl, bc                                    ; $6ac6: $09
    add hl, bc                                    ; $6ac7: $09
    add hl, bc                                    ; $6ac8: $09
    add hl, bc                                    ; $6ac9: $09
    add hl, bc                                    ; $6aca: $09
    add hl, bc                                    ; $6acb: $09
    add hl, bc                                    ; $6acc: $09
    db $ed                                        ; $6acd: $ed
    db $ed                                        ; $6ace: $ed
    ret z                                         ; $6acf: $c8

    dec b                                         ; $6ad0: $05
    db $ed                                        ; $6ad1: $ed
    db $ed                                        ; $6ad2: $ed
    ret z                                         ; $6ad3: $c8

    add hl, bc                                    ; $6ad4: $09
    set 1, [hl]                                   ; $6ad5: $cb $ce
    ret z                                         ; $6ad7: $c8

    jr nz, jr_083_6aa9                            ; $6ad8: $20 $cf

    ret nc                                        ; $6ada: $d0

    ret z                                         ; $6adb: $c8

    inc h                                         ; $6adc: $24
    ld bc, $0901                                  ; $6add: $01 $01 $09
    inc bc                                        ; $6ae0: $03
    ld bc, $0901                                  ; $6ae1: $01 $01 $09
    inc bc                                        ; $6ae4: $03
    add hl, bc                                    ; $6ae5: $09
    add hl, bc                                    ; $6ae6: $09
    add hl, bc                                    ; $6ae7: $09
    inc bc                                        ; $6ae8: $03
    add hl, bc                                    ; $6ae9: $09
    add hl, bc                                    ; $6aea: $09
    add hl, bc                                    ; $6aeb: $09
    inc bc                                        ; $6aec: $03
    pop de                                        ; $6aed: $d1
    jp nc, $d4d3                                  ; $6aee: $d2 $d3 $d4

    push de                                       ; $6af1: $d5
    sub $d7                                       ; $6af2: $d6 $d7
    ret c                                         ; $6af4: $d8

    reti                                          ; $6af5: $d9


    jp c, $dcdb                                   ; $6af6: $da $db $dc

    db $dd                                        ; $6af9: $dd
    sbc $dd                                       ; $6afa: $de $dd
    rst $18                                       ; $6afc: $df
    add hl, bc                                    ; $6afd: $09
    add hl, bc                                    ; $6afe: $09
    add hl, bc                                    ; $6aff: $09
    add hl, bc                                    ; $6b00: $09
    add hl, bc                                    ; $6b01: $09
    add hl, bc                                    ; $6b02: $09
    add hl, bc                                    ; $6b03: $09
    add hl, bc                                    ; $6b04: $09
    add hl, bc                                    ; $6b05: $09
    add hl, bc                                    ; $6b06: $09
    add hl, bc                                    ; $6b07: $09
    add hl, bc                                    ; $6b08: $09
    add hl, bc                                    ; $6b09: $09
    add hl, bc                                    ; $6b0a: $09
    add hl, bc                                    ; $6b0b: $09
    add hl, bc                                    ; $6b0c: $09
    ldh [$e1], a                                  ; $6b0d: $e0 $e1
    ret z                                         ; $6b0f: $c8

    ld bc, $e3e2                                  ; $6b10: $01 $e2 $e3
    ret z                                         ; $6b13: $c8

    dec b                                         ; $6b14: $05
    db $e4                                        ; $6b15: $e4
    push hl                                       ; $6b16: $e5
    ret z                                         ; $6b17: $c8

    add hl, bc                                    ; $6b18: $09
    db $dd                                        ; $6b19: $dd
    and $c8                                       ; $6b1a: $e6 $c8
    jr nz, jr_083_6b27                            ; $6b1c: $20 $09

    add hl, bc                                    ; $6b1e: $09
    add hl, bc                                    ; $6b1f: $09
    inc bc                                        ; $6b20: $03
    add hl, bc                                    ; $6b21: $09
    add hl, bc                                    ; $6b22: $09
    add hl, bc                                    ; $6b23: $09
    inc bc                                        ; $6b24: $03
    add hl, bc                                    ; $6b25: $09
    add hl, bc                                    ; $6b26: $09

jr_083_6b27:
    add hl, bc                                    ; $6b27: $09
    inc bc                                        ; $6b28: $03
    add hl, bc                                    ; $6b29: $09
    add hl, bc                                    ; $6b2a: $09
    add hl, bc                                    ; $6b2b: $09
    inc bc                                        ; $6b2c: $03
    add hl, hl                                    ; $6b2d: $29
    rst $20                                       ; $6b2e: $e7
    add sp, -$17                                  ; $6b2f: $e8 $e9
    inc l                                         ; $6b31: $2c
    ld [$eceb], a                                 ; $6b32: $ea $eb $ec
    ld c, $ed                                     ; $6b35: $0e $ed
    xor $ef                                       ; $6b37: $ee $ef
    ld de, $f1f0                                  ; $6b39: $11 $f0 $f1
    ld a, [c]                                     ; $6b3c: $f2
    inc bc                                        ; $6b3d: $03
    dec c                                         ; $6b3e: $0d
    dec c                                         ; $6b3f: $0d
    dec c                                         ; $6b40: $0d
    inc bc                                        ; $6b41: $03
    dec c                                         ; $6b42: $0d
    dec c                                         ; $6b43: $0d
    dec c                                         ; $6b44: $0d
    inc bc                                        ; $6b45: $03
    dec c                                         ; $6b46: $0d
    dec c                                         ; $6b47: $0d
    dec c                                         ; $6b48: $0d
    inc bc                                        ; $6b49: $03
    dec c                                         ; $6b4a: $0d
    dec c                                         ; $6b4b: $0d
    dec c                                         ; $6b4c: $0d
    di                                            ; $6b4d: $f3
    add sp, -$0c                                  ; $6b4e: $e8 $f4
    add hl, hl                                    ; $6b50: $29
    push af                                       ; $6b51: $f5
    or $f7                                        ; $6b52: $f6 $f7
    inc l                                         ; $6b54: $2c
    ld hl, sp-$07                                 ; $6b55: $f8 $f9
    ld a, [$fb0e]                                 ; $6b57: $fa $0e $fb
    db $fc                                        ; $6b5a: $fc
    db $fd                                        ; $6b5b: $fd
    ld de, $2d0d                                  ; $6b5c: $11 $0d $2d
    dec c                                         ; $6b5f: $0d
    inc bc                                        ; $6b60: $03
    dec c                                         ; $6b61: $0d
    dec c                                         ; $6b62: $0d
    dec c                                         ; $6b63: $0d
    inc bc                                        ; $6b64: $03
    dec c                                         ; $6b65: $0d
    dec c                                         ; $6b66: $0d
    dec c                                         ; $6b67: $0d
    inc bc                                        ; $6b68: $03
    dec c                                         ; $6b69: $0d
    dec c                                         ; $6b6a: $0d
    dec c                                         ; $6b6b: $0d
    inc bc                                        ; $6b6c: $03
    inc d                                         ; $6b6d: $14
    cp $ff                                        ; $6b6e: $fe $ff
    nop                                           ; $6b70: $00
    add hl, hl                                    ; $6b71: $29
    ld bc, $0302                                  ; $6b72: $01 $02 $03
    inc l                                         ; $6b75: $2c
    inc b                                         ; $6b76: $04
    dec b                                         ; $6b77: $05
    ld b, $0e                                     ; $6b78: $06 $0e
    ld a, [hl+]                                   ; $6b7a: $2a
    ld bc, $0302                                  ; $6b7b: $01 $02 $03
    dec c                                         ; $6b7e: $0d
    dec c                                         ; $6b7f: $0d
    dec c                                         ; $6b80: $0d
    inc bc                                        ; $6b81: $03
    dec c                                         ; $6b82: $0d
    dec c                                         ; $6b83: $0d
    dec c                                         ; $6b84: $0d
    inc bc                                        ; $6b85: $03
    dec c                                         ; $6b86: $0d
    dec c                                         ; $6b87: $0d
    dec c                                         ; $6b88: $0d
    inc bc                                        ; $6b89: $03
    inc bc                                        ; $6b8a: $03
    inc bc                                        ; $6b8b: $03
    inc bc                                        ; $6b8c: $03
    rlca                                          ; $6b8d: $07
    ld [$1409], sp                                ; $6b8e: $08 $09 $14
    ld a, [bc]                                    ; $6b91: $0a
    dec bc                                        ; $6b92: $0b
    inc c                                         ; $6b93: $0c
    add hl, hl                                    ; $6b94: $29
    dec c                                         ; $6b95: $0d
    ld c, $0f                                     ; $6b96: $0e $0f
    inc l                                         ; $6b98: $2c
    inc bc                                        ; $6b99: $03
    inc b                                         ; $6b9a: $04
    dec c                                         ; $6b9b: $0d
    ld c, $0d                                     ; $6b9c: $0e $0d
    dec c                                         ; $6b9e: $0d
    dec c                                         ; $6b9f: $0d
    inc bc                                        ; $6ba0: $03
    dec c                                         ; $6ba1: $0d
    dec c                                         ; $6ba2: $0d
    dec c                                         ; $6ba3: $0d
    inc bc                                        ; $6ba4: $03
    dec c                                         ; $6ba5: $0d
    dec c                                         ; $6ba6: $0d
    dec c                                         ; $6ba7: $0d
    inc bc                                        ; $6ba8: $03
    inc bc                                        ; $6ba9: $03
    inc bc                                        ; $6baa: $03
    inc bc                                        ; $6bab: $03
    inc bc                                        ; $6bac: $03
    jr nz, jr_083_6bd0                            ; $6bad: $20 $21

    ld [hl+], a                                   ; $6baf: $22
    inc hl                                        ; $6bb0: $23
    inc h                                         ; $6bb1: $24
    dec h                                         ; $6bb2: $25
    ld h, $27                                     ; $6bb3: $26 $27
    ld bc, $0302                                  ; $6bb5: $01 $02 $03
    inc b                                         ; $6bb8: $04
    dec b                                         ; $6bb9: $05
    ld b, $07                                     ; $6bba: $06 $07
    ld [$0202], sp                                ; $6bbc: $08 $02 $02
    ld [bc], a                                    ; $6bbf: $02
    inc bc                                        ; $6bc0: $03
    ld [bc], a                                    ; $6bc1: $02
    ld [bc], a                                    ; $6bc2: $02
    ld [bc], a                                    ; $6bc3: $02
    inc bc                                        ; $6bc4: $03
    ld [bc], a                                    ; $6bc5: $02
    ld [bc], a                                    ; $6bc6: $02
    ld [bc], a                                    ; $6bc7: $02
    inc bc                                        ; $6bc8: $03
    ld [bc], a                                    ; $6bc9: $02
    ld [bc], a                                    ; $6bca: $02
    ld [bc], a                                    ; $6bcb: $02
    inc bc                                        ; $6bcc: $03
    inc c                                         ; $6bcd: $0c
    inc de                                        ; $6bce: $13
    inc d                                         ; $6bcf: $14

jr_083_6bd0:
    rrca                                          ; $6bd0: $0f
    inc hl                                        ; $6bd1: $23
    jr z, jr_083_6bfd                             ; $6bd2: $28 $29

    ld [de], a                                    ; $6bd4: $12
    daa                                           ; $6bd5: $27
    dec hl                                        ; $6bd6: $2b
    inc l                                         ; $6bd7: $2c
    dec d                                         ; $6bd8: $15
    inc b                                         ; $6bd9: $04
    dec c                                         ; $6bda: $0d
    db $10                                        ; $6bdb: $10
    rla                                           ; $6bdc: $17
    ld [bc], a                                    ; $6bdd: $02
    ld [bc], a                                    ; $6bde: $02
    ld [bc], a                                    ; $6bdf: $02
    ld [bc], a                                    ; $6be0: $02
    ld [bc], a                                    ; $6be1: $02
    ld [bc], a                                    ; $6be2: $02
    ld [bc], a                                    ; $6be3: $02
    ld [bc], a                                    ; $6be4: $02
    ld [bc], a                                    ; $6be5: $02
    ld [bc], a                                    ; $6be6: $02
    ld [bc], a                                    ; $6be7: $02
    ld [bc], a                                    ; $6be8: $02
    ld [bc], a                                    ; $6be9: $02
    ld [bc], a                                    ; $6bea: $02
    adc b                                         ; $6beb: $88
    add b                                         ; $6bec: $80
    add hl, bc                                    ; $6bed: $09
    ld a, [bc]                                    ; $6bee: $0a
    dec bc                                        ; $6bef: $0b
    inc c                                         ; $6bf0: $0c
    jr nz, jr_083_6c14                            ; $6bf1: $20 $21

    ld [hl+], a                                   ; $6bf3: $22
    inc hl                                        ; $6bf4: $23
    inc h                                         ; $6bf5: $24
    dec h                                         ; $6bf6: $25
    ld h, $27                                     ; $6bf7: $26 $27
    rla                                           ; $6bf9: $17
    rla                                           ; $6bfa: $17
    rla                                           ; $6bfb: $17
    rla                                           ; $6bfc: $17

jr_083_6bfd:
    ld [bc], a                                    ; $6bfd: $02
    ld [bc], a                                    ; $6bfe: $02
    ld [bc], a                                    ; $6bff: $02
    inc bc                                        ; $6c00: $03
    ld [bc], a                                    ; $6c01: $02
    ld [bc], a                                    ; $6c02: $02
    ld [bc], a                                    ; $6c03: $02
    inc bc                                        ; $6c04: $03
    ld [bc], a                                    ; $6c05: $02
    ld [bc], a                                    ; $6c06: $02
    ld [bc], a                                    ; $6c07: $02
    inc bc                                        ; $6c08: $03
    add b                                         ; $6c09: $80
    add b                                         ; $6c0a: $80
    add b                                         ; $6c0b: $80
    add b                                         ; $6c0c: $80
    xor $ed                                       ; $6c0d: $ee $ed
    db $ed                                        ; $6c0f: $ed
    db $ed                                        ; $6c10: $ed
    xor $ed                                       ; $6c11: $ee $ed
    db $ed                                        ; $6c13: $ed

jr_083_6c14:
    db $ed                                        ; $6c14: $ed
    xor $ed                                       ; $6c15: $ee $ed
    db $ed                                        ; $6c17: $ed
    db $ed                                        ; $6c18: $ed
    ld de, $eded                                  ; $6c19: $11 $ed $ed
    db $ed                                        ; $6c1c: $ed
    add b                                         ; $6c1d: $80
    add b                                         ; $6c1e: $80
    add b                                         ; $6c1f: $80
    add b                                         ; $6c20: $80
    add b                                         ; $6c21: $80
    add b                                         ; $6c22: $80
    add b                                         ; $6c23: $80
    add b                                         ; $6c24: $80
    add b                                         ; $6c25: $80
    add b                                         ; $6c26: $80
    add b                                         ; $6c27: $80
    add b                                         ; $6c28: $80
    adc b                                         ; $6c29: $88
    add b                                         ; $6c2a: $80
    add b                                         ; $6c2b: $80
    add b                                         ; $6c2c: $80
    ld [$ed10], sp                                ; $6c2d: $08 $10 $ed
    db $ed                                        ; $6c30: $ed
    inc c                                         ; $6c31: $0c
    inc de                                        ; $6c32: $13
    ld [de], a                                    ; $6c33: $12
    inc de                                        ; $6c34: $13
    inc hl                                        ; $6c35: $23
    jr z, jr_083_6c4a                             ; $6c36: $28 $12

    inc d                                         ; $6c38: $14
    daa                                           ; $6c39: $27
    dec hl                                        ; $6c3a: $2b
    ld [de], a                                    ; $6c3b: $12
    dec d                                         ; $6c3c: $15
    ld [bc], a                                    ; $6c3d: $02
    ld [bc], a                                    ; $6c3e: $02
    add c                                         ; $6c3f: $81
    add c                                         ; $6c40: $81
    ld [bc], a                                    ; $6c41: $02
    inc bc                                        ; $6c42: $03
    add hl, bc                                    ; $6c43: $09
    add hl, bc                                    ; $6c44: $09
    ld [bc], a                                    ; $6c45: $02
    inc bc                                        ; $6c46: $03
    add hl, bc                                    ; $6c47: $09
    add hl, bc                                    ; $6c48: $09
    ld [bc], a                                    ; $6c49: $02

jr_083_6c4a:
    inc bc                                        ; $6c4a: $03
    add hl, bc                                    ; $6c4b: $09
    add hl, bc                                    ; $6c4c: $09
    db $ed                                        ; $6c4d: $ed
    db $ed                                        ; $6c4e: $ed
    db $ed                                        ; $6c4f: $ed
    db $ed                                        ; $6c50: $ed
    ld d, $17                                     ; $6c51: $16 $17
    dec d                                         ; $6c53: $15
    inc d                                         ; $6c54: $14
    rla                                           ; $6c55: $17
    dec d                                         ; $6c56: $15
    inc d                                         ; $6c57: $14
    inc de                                        ; $6c58: $13
    ld d, $17                                     ; $6c59: $16 $17
    dec d                                         ; $6c5b: $15
    inc d                                         ; $6c5c: $14
    add c                                         ; $6c5d: $81
    add c                                         ; $6c5e: $81
    add c                                         ; $6c5f: $81
    add c                                         ; $6c60: $81
    add hl, bc                                    ; $6c61: $09
    add hl, bc                                    ; $6c62: $09
    add hl, bc                                    ; $6c63: $09
    add hl, bc                                    ; $6c64: $09
    add hl, bc                                    ; $6c65: $09
    add hl, bc                                    ; $6c66: $09
    add hl, bc                                    ; $6c67: $09
    add hl, bc                                    ; $6c68: $09
    add hl, bc                                    ; $6c69: $09
    add hl, bc                                    ; $6c6a: $09
    add hl, bc                                    ; $6c6b: $09
    add hl, bc                                    ; $6c6c: $09
    inc b                                         ; $6c6d: $04
    dec c                                         ; $6c6e: $0d
    ld [de], a                                    ; $6c6f: $12
    inc d                                         ; $6c70: $14
    ld [$1210], sp                                ; $6c71: $08 $10 $12
    inc d                                         ; $6c74: $14
    inc c                                         ; $6c75: $0c
    inc de                                        ; $6c76: $13
    ld [de], a                                    ; $6c77: $12
    dec d                                         ; $6c78: $15
    inc hl                                        ; $6c79: $23
    jr z, jr_083_6c8e                             ; $6c7a: $28 $12

    inc d                                         ; $6c7c: $14
    ld [bc], a                                    ; $6c7d: $02
    inc bc                                        ; $6c7e: $03
    add hl, bc                                    ; $6c7f: $09
    add hl, bc                                    ; $6c80: $09
    ld [bc], a                                    ; $6c81: $02
    inc bc                                        ; $6c82: $03
    add hl, bc                                    ; $6c83: $09
    add hl, bc                                    ; $6c84: $09
    ld [bc], a                                    ; $6c85: $02
    inc bc                                        ; $6c86: $03
    add hl, bc                                    ; $6c87: $09
    add hl, bc                                    ; $6c88: $09
    ld [bc], a                                    ; $6c89: $02
    inc bc                                        ; $6c8a: $03
    add hl, bc                                    ; $6c8b: $09
    add hl, bc                                    ; $6c8c: $09
    rla                                           ; $6c8d: $17

jr_083_6c8e:
    dec d                                         ; $6c8e: $15
    inc d                                         ; $6c8f: $14
    inc de                                        ; $6c90: $13
    rla                                           ; $6c91: $17
    dec d                                         ; $6c92: $15
    inc d                                         ; $6c93: $14
    inc de                                        ; $6c94: $13
    ld d, $17                                     ; $6c95: $16 $17
    dec d                                         ; $6c97: $15
    inc d                                         ; $6c98: $14
    rla                                           ; $6c99: $17
    dec d                                         ; $6c9a: $15
    inc d                                         ; $6c9b: $14
    inc de                                        ; $6c9c: $13
    add hl, bc                                    ; $6c9d: $09
    add hl, bc                                    ; $6c9e: $09
    add hl, bc                                    ; $6c9f: $09
    add hl, bc                                    ; $6ca0: $09
    add hl, bc                                    ; $6ca1: $09
    add hl, bc                                    ; $6ca2: $09
    add hl, bc                                    ; $6ca3: $09
    add hl, bc                                    ; $6ca4: $09
    add hl, bc                                    ; $6ca5: $09
    add hl, bc                                    ; $6ca6: $09
    add hl, bc                                    ; $6ca7: $09
    add hl, bc                                    ; $6ca8: $09
    add hl, bc                                    ; $6ca9: $09
    add hl, bc                                    ; $6caa: $09
    add hl, bc                                    ; $6cab: $09
    add hl, bc                                    ; $6cac: $09
    jr jr_083_6cc8                                ; $6cad: $18 $19

    jr jr_083_6ccb                                ; $6caf: $18 $1a

    dec de                                        ; $6cb1: $1b
    inc e                                         ; $6cb2: $1c
    dec e                                         ; $6cb3: $1d
    ld e, $1f                                     ; $6cb4: $1e $1f
    jr nz, jr_083_6cd9                            ; $6cb6: $20 $21

    ld [hl+], a                                   ; $6cb8: $22
    inc hl                                        ; $6cb9: $23
    ld hl, $2422                                  ; $6cba: $21 $22 $24
    add hl, bc                                    ; $6cbd: $09
    add hl, bc                                    ; $6cbe: $09
    add hl, bc                                    ; $6cbf: $09
    add hl, bc                                    ; $6cc0: $09
    add hl, bc                                    ; $6cc1: $09
    add hl, bc                                    ; $6cc2: $09
    add hl, bc                                    ; $6cc3: $09
    add hl, bc                                    ; $6cc4: $09
    add hl, bc                                    ; $6cc5: $09
    add hl, bc                                    ; $6cc6: $09
    add hl, bc                                    ; $6cc7: $09

jr_083_6cc8:
    add hl, bc                                    ; $6cc8: $09
    add hl, bc                                    ; $6cc9: $09
    add hl, bc                                    ; $6cca: $09

jr_083_6ccb:
    add hl, bc                                    ; $6ccb: $09
    add hl, bc                                    ; $6ccc: $09
    jr jr_083_6cf4                                ; $6ccd: $18 $25

    ld h, $c4                                     ; $6ccf: $26 $c4
    daa                                           ; $6cd1: $27
    jr z, jr_083_6cfd                             ; $6cd2: $28 $29

    ld a, [hl+]                                   ; $6cd4: $2a
    inc h                                         ; $6cd5: $24
    dec hl                                        ; $6cd6: $2b
    inc l                                         ; $6cd7: $2c
    dec l                                         ; $6cd8: $2d

jr_083_6cd9:
    ld l, $2f                                     ; $6cd9: $2e $2f
    jr nc, jr_083_6d0e                            ; $6cdb: $30 $31

    add hl, bc                                    ; $6cdd: $09
    add hl, bc                                    ; $6cde: $09
    add hl, bc                                    ; $6cdf: $09
    add hl, hl                                    ; $6ce0: $29
    add hl, bc                                    ; $6ce1: $09
    add hl, bc                                    ; $6ce2: $09
    add hl, bc                                    ; $6ce3: $09
    add hl, bc                                    ; $6ce4: $09
    add hl, bc                                    ; $6ce5: $09
    add hl, bc                                    ; $6ce6: $09
    add hl, bc                                    ; $6ce7: $09
    add hl, bc                                    ; $6ce8: $09
    add hl, bc                                    ; $6ce9: $09
    add hl, bc                                    ; $6cea: $09
    add hl, bc                                    ; $6ceb: $09
    add hl, bc                                    ; $6cec: $09
    db $ed                                        ; $6ced: $ed
    db $ed                                        ; $6cee: $ed
    db $ed                                        ; $6cef: $ed
    xor $ed                                       ; $6cf0: $ee $ed
    db $ed                                        ; $6cf2: $ed
    db $ed                                        ; $6cf3: $ed

jr_083_6cf4:
    xor $ed                                       ; $6cf4: $ee $ed
    db $ed                                        ; $6cf6: $ed
    db $ed                                        ; $6cf7: $ed
    ld c, d                                       ; $6cf8: $4a
    db $ed                                        ; $6cf9: $ed
    db $ed                                        ; $6cfa: $ed
    db $ed                                        ; $6cfb: $ed
    db $ed                                        ; $6cfc: $ed

jr_083_6cfd:
    add b                                         ; $6cfd: $80
    add b                                         ; $6cfe: $80
    add b                                         ; $6cff: $80
    add b                                         ; $6d00: $80
    add b                                         ; $6d01: $80
    add b                                         ; $6d02: $80
    add b                                         ; $6d03: $80
    add b                                         ; $6d04: $80
    add b                                         ; $6d05: $80
    add b                                         ; $6d06: $80
    add b                                         ; $6d07: $80
    add b                                         ; $6d08: $80
    add b                                         ; $6d09: $80
    add b                                         ; $6d0a: $80
    add b                                         ; $6d0b: $80
    add b                                         ; $6d0c: $80
    cpl                                           ; $6d0d: $2f

jr_083_6d0e:
    ld [hl-], a                                   ; $6d0e: $32
    inc sp                                        ; $6d0f: $33
    ld l, $34                                     ; $6d10: $2e $34
    dec [hl]                                      ; $6d12: $35
    ld [hl], $2f                                  ; $6d13: $36 $2f
    rla                                           ; $6d15: $17
    rla                                           ; $6d16: $17
    rla                                           ; $6d17: $17
    rla                                           ; $6d18: $17
    db $ed                                        ; $6d19: $ed
    db $ed                                        ; $6d1a: $ed
    db $ed                                        ; $6d1b: $ed
    db $ed                                        ; $6d1c: $ed
    add hl, bc                                    ; $6d1d: $09
    add hl, bc                                    ; $6d1e: $09
    add hl, bc                                    ; $6d1f: $09
    add hl, bc                                    ; $6d20: $09
    add hl, bc                                    ; $6d21: $09
    add hl, bc                                    ; $6d22: $09
    add hl, bc                                    ; $6d23: $09
    add hl, bc                                    ; $6d24: $09
    add b                                         ; $6d25: $80
    add b                                         ; $6d26: $80
    add b                                         ; $6d27: $80
    add b                                         ; $6d28: $80
    add b                                         ; $6d29: $80
    add b                                         ; $6d2a: $80
    add b                                         ; $6d2b: $80
    add b                                         ; $6d2c: $80
    ld hl, $3837                                  ; $6d2d: $21 $37 $38
    dec l                                         ; $6d30: $2d
    ld [hl-], a                                   ; $6d31: $32
    inc sp                                        ; $6d32: $33
    add hl, sp                                    ; $6d33: $39
    ld sp, $1717                                  ; $6d34: $31 $17 $17
    rla                                           ; $6d37: $17
    rla                                           ; $6d38: $17
    db $ed                                        ; $6d39: $ed
    db $ed                                        ; $6d3a: $ed
    db $ed                                        ; $6d3b: $ed
    db $ed                                        ; $6d3c: $ed
    add hl, bc                                    ; $6d3d: $09
    add hl, bc                                    ; $6d3e: $09
    add hl, bc                                    ; $6d3f: $09
    add hl, bc                                    ; $6d40: $09
    add hl, bc                                    ; $6d41: $09
    add hl, bc                                    ; $6d42: $09
    add hl, bc                                    ; $6d43: $09
    add hl, bc                                    ; $6d44: $09
    add b                                         ; $6d45: $80
    add b                                         ; $6d46: $80
    add b                                         ; $6d47: $80
    add b                                         ; $6d48: $80
    add b                                         ; $6d49: $80
    add b                                         ; $6d4a: $80
    add b                                         ; $6d4b: $80
    add b                                         ; $6d4c: $80
    call nz, $c4c4                                ; $6d4d: $c4 $c4 $c4
    ld a, [hl-]                                   ; $6d50: $3a
    dec sp                                        ; $6d51: $3b
    inc a                                         ; $6d52: $3c
    dec a                                         ; $6d53: $3d
    ld a, $3f                                     ; $6d54: $3e $3f
    ld b, b                                       ; $6d56: $40
    ld b, c                                       ; $6d57: $41
    ld b, d                                       ; $6d58: $42
    ld b, e                                       ; $6d59: $43
    ld b, h                                       ; $6d5a: $44
    ld b, l                                       ; $6d5b: $45
    ld b, [hl]                                    ; $6d5c: $46
    add hl, hl                                    ; $6d5d: $29
    add hl, hl                                    ; $6d5e: $29
    add hl, hl                                    ; $6d5f: $29
    add hl, bc                                    ; $6d60: $09
    add hl, bc                                    ; $6d61: $09
    add hl, bc                                    ; $6d62: $09
    add hl, bc                                    ; $6d63: $09
    add hl, bc                                    ; $6d64: $09
    add hl, bc                                    ; $6d65: $09
    add hl, bc                                    ; $6d66: $09
    add hl, bc                                    ; $6d67: $09
    add hl, bc                                    ; $6d68: $09
    add hl, bc                                    ; $6d69: $09
    add hl, bc                                    ; $6d6a: $09
    add hl, bc                                    ; $6d6b: $09
    add hl, bc                                    ; $6d6c: $09
    inc l                                         ; $6d6d: $2c
    dec d                                         ; $6d6e: $15
    inc h                                         ; $6d6f: $24
    dec h                                         ; $6d70: $25
    ld c, $2a                                     ; $6d71: $0e $2a
    ld bc, $1102                                  ; $6d73: $01 $02 $11
    dec l                                         ; $6d76: $2d
    dec b                                         ; $6d77: $05
    ld b, $14                                     ; $6d78: $06 $14
    rrca                                          ; $6d7a: $0f
    add hl, bc                                    ; $6d7b: $09
    ld a, [bc]                                    ; $6d7c: $0a
    ld [bc], a                                    ; $6d7d: $02
    ld [bc], a                                    ; $6d7e: $02
    ld [bc], a                                    ; $6d7f: $02
    ld [bc], a                                    ; $6d80: $02
    ld [bc], a                                    ; $6d81: $02
    ld [bc], a                                    ; $6d82: $02
    ld [bc], a                                    ; $6d83: $02
    ld [bc], a                                    ; $6d84: $02
    ld [bc], a                                    ; $6d85: $02
    ld [bc], a                                    ; $6d86: $02
    ld [bc], a                                    ; $6d87: $02
    ld [bc], a                                    ; $6d88: $02
    ld [bc], a                                    ; $6d89: $02
    ld [bc], a                                    ; $6d8a: $02
    ld [bc], a                                    ; $6d8b: $02
    ld [bc], a                                    ; $6d8c: $02
    ld h, $27                                     ; $6d8d: $26 $27
    dec hl                                        ; $6d8f: $2b
    inc l                                         ; $6d90: $2c
    inc bc                                        ; $6d91: $03
    inc b                                         ; $6d92: $04
    dec c                                         ; $6d93: $0d
    ld c, $07                                     ; $6d94: $0e $07
    ld [$1110], sp                                ; $6d96: $08 $10 $11
    dec bc                                        ; $6d99: $0b
    inc c                                         ; $6d9a: $0c
    inc de                                        ; $6d9b: $13
    inc d                                         ; $6d9c: $14
    ld [bc], a                                    ; $6d9d: $02
    ld [bc], a                                    ; $6d9e: $02
    ld [bc], a                                    ; $6d9f: $02
    ld [bc], a                                    ; $6da0: $02
    ld [bc], a                                    ; $6da1: $02
    ld [bc], a                                    ; $6da2: $02
    ld [bc], a                                    ; $6da3: $02
    ld [bc], a                                    ; $6da4: $02
    ld [bc], a                                    ; $6da5: $02
    ld [bc], a                                    ; $6da6: $02
    ld [bc], a                                    ; $6da7: $02
    ld [bc], a                                    ; $6da8: $02
    ld [bc], a                                    ; $6da9: $02
    ld [bc], a                                    ; $6daa: $02
    ld [bc], a                                    ; $6dab: $02
    ld [bc], a                                    ; $6dac: $02
    dec l                                         ; $6dad: $2d
    ld b, a                                       ; $6dae: $47
    call nz, Call_000_0fc4                        ; $6daf: $c4 $c4 $0f
    add hl, hl                                    ; $6db2: $29
    ld a, [hl+]                                   ; $6db3: $2a
    dec sp                                        ; $6db4: $3b
    ld [de], a                                    ; $6db5: $12
    dec b                                         ; $6db6: $05
    dec l                                         ; $6db7: $2d
    ccf                                           ; $6db8: $3f
    dec d                                         ; $6db9: $15
    add hl, bc                                    ; $6dba: $09
    ld sp, $0243                                  ; $6dbb: $31 $43 $02
    add hl, bc                                    ; $6dbe: $09
    add hl, hl                                    ; $6dbf: $29
    add hl, hl                                    ; $6dc0: $29
    ld [bc], a                                    ; $6dc1: $02
    add hl, bc                                    ; $6dc2: $09
    add hl, bc                                    ; $6dc3: $09
    add hl, bc                                    ; $6dc4: $09
    ld [bc], a                                    ; $6dc5: $02
    ld [bc], a                                    ; $6dc6: $02
    add hl, bc                                    ; $6dc7: $09
    add hl, bc                                    ; $6dc8: $09
    ld [bc], a                                    ; $6dc9: $02
    ld [bc], a                                    ; $6dca: $02
    add hl, bc                                    ; $6dcb: $09
    add hl, bc                                    ; $6dcc: $09
    ccf                                           ; $6dcd: $3f
    ld b, b                                       ; $6dce: $40
    ld b, c                                       ; $6dcf: $41
    ld b, d                                       ; $6dd0: $42
    ld b, e                                       ; $6dd1: $43
    ld b, h                                       ; $6dd2: $44
    ld b, l                                       ; $6dd3: $45
    ld b, [hl]                                    ; $6dd4: $46
    rla                                           ; $6dd5: $17
    rla                                           ; $6dd6: $17
    rla                                           ; $6dd7: $17
    rla                                           ; $6dd8: $17
    db $ed                                        ; $6dd9: $ed
    db $ed                                        ; $6dda: $ed
    db $ed                                        ; $6ddb: $ed
    db $ed                                        ; $6ddc: $ed
    add hl, bc                                    ; $6ddd: $09
    add hl, bc                                    ; $6dde: $09
    add hl, bc                                    ; $6ddf: $09
    add hl, bc                                    ; $6de0: $09
    add hl, bc                                    ; $6de1: $09
    add hl, bc                                    ; $6de2: $09
    add hl, bc                                    ; $6de3: $09
    add hl, bc                                    ; $6de4: $09
    add b                                         ; $6de5: $80
    add b                                         ; $6de6: $80
    add b                                         ; $6de7: $80
    add b                                         ; $6de8: $80
    add b                                         ; $6de9: $80
    add b                                         ; $6dea: $80
    add b                                         ; $6deb: $80
    add b                                         ; $6dec: $80
    add hl, hl                                    ; $6ded: $29
    ld [de], a                                    ; $6dee: $12
    jr nz, @+$23                                  ; $6def: $20 $21

    inc l                                         ; $6df1: $2c
    dec d                                         ; $6df2: $15
    inc h                                         ; $6df3: $24
    dec h                                         ; $6df4: $25
    rla                                           ; $6df5: $17
    rla                                           ; $6df6: $17
    rla                                           ; $6df7: $17
    rla                                           ; $6df8: $17
    db $ed                                        ; $6df9: $ed
    db $ed                                        ; $6dfa: $ed
    db $ed                                        ; $6dfb: $ed
    db $ed                                        ; $6dfc: $ed
    ld [bc], a                                    ; $6dfd: $02
    ld [bc], a                                    ; $6dfe: $02
    ld [bc], a                                    ; $6dff: $02
    ld [bc], a                                    ; $6e00: $02
    ld [bc], a                                    ; $6e01: $02
    ld [bc], a                                    ; $6e02: $02
    ld [bc], a                                    ; $6e03: $02
    ld [bc], a                                    ; $6e04: $02
    add b                                         ; $6e05: $80
    add b                                         ; $6e06: $80
    add b                                         ; $6e07: $80
    add b                                         ; $6e08: $80
    add b                                         ; $6e09: $80
    add b                                         ; $6e0a: $80
    add b                                         ; $6e0b: $80
    add b                                         ; $6e0c: $80
    ld [hl+], a                                   ; $6e0d: $22
    inc hl                                        ; $6e0e: $23
    jr z, jr_083_6e3a                             ; $6e0f: $28 $29

    ld h, $27                                     ; $6e11: $26 $27
    dec hl                                        ; $6e13: $2b
    inc l                                         ; $6e14: $2c
    rla                                           ; $6e15: $17
    rla                                           ; $6e16: $17
    rla                                           ; $6e17: $17
    rla                                           ; $6e18: $17
    db $ed                                        ; $6e19: $ed
    db $ed                                        ; $6e1a: $ed
    db $ed                                        ; $6e1b: $ed
    db $ed                                        ; $6e1c: $ed
    ld [bc], a                                    ; $6e1d: $02
    ld [bc], a                                    ; $6e1e: $02
    ld [bc], a                                    ; $6e1f: $02
    ld [bc], a                                    ; $6e20: $02
    ld [bc], a                                    ; $6e21: $02
    ld [bc], a                                    ; $6e22: $02
    ld [bc], a                                    ; $6e23: $02
    ld [bc], a                                    ; $6e24: $02
    add b                                         ; $6e25: $80
    add b                                         ; $6e26: $80
    add b                                         ; $6e27: $80
    add b                                         ; $6e28: $80
    add b                                         ; $6e29: $80
    add b                                         ; $6e2a: $80
    add b                                         ; $6e2b: $80
    add b                                         ; $6e2c: $80
    ld a, [hl+]                                   ; $6e2d: $2a
    jr nz, jr_083_6e61                            ; $6e2e: $20 $31

    ld b, e                                       ; $6e30: $43
    dec l                                         ; $6e31: $2d
    inc h                                         ; $6e32: $24
    dec l                                         ; $6e33: $2d
    ccf                                           ; $6e34: $3f
    rla                                           ; $6e35: $17
    rla                                           ; $6e36: $17
    rla                                           ; $6e37: $17
    rla                                           ; $6e38: $17
    db $ed                                        ; $6e39: $ed

jr_083_6e3a:
    db $ed                                        ; $6e3a: $ed
    db $ed                                        ; $6e3b: $ed
    db $ed                                        ; $6e3c: $ed
    ld [bc], a                                    ; $6e3d: $02
    ld [bc], a                                    ; $6e3e: $02
    add hl, bc                                    ; $6e3f: $09
    add hl, bc                                    ; $6e40: $09
    ld [bc], a                                    ; $6e41: $02
    ld [bc], a                                    ; $6e42: $02
    add hl, bc                                    ; $6e43: $09
    add hl, bc                                    ; $6e44: $09
    add b                                         ; $6e45: $80
    add b                                         ; $6e46: $80
    add b                                         ; $6e47: $80
    add b                                         ; $6e48: $80
    add b                                         ; $6e49: $80
    add b                                         ; $6e4a: $80
    add b                                         ; $6e4b: $80
    add b                                         ; $6e4c: $80
    call nz, Call_083_48c4                        ; $6e4d: $c4 $c4 $48
    ld c, c                                       ; $6e50: $49
    inc a                                         ; $6e51: $3c
    ld c, d                                       ; $6e52: $4a
    ld c, e                                       ; $6e53: $4b
    ld c, h                                       ; $6e54: $4c
    ld b, b                                       ; $6e55: $40
    ld c, l                                       ; $6e56: $4d
    rra                                           ; $6e57: $1f
    jr nz, jr_083_6e9e                            ; $6e58: $20 $44

    ld c, [hl]                                    ; $6e5a: $4e
    inc hl                                        ; $6e5b: $23
    ld hl, $2929                                  ; $6e5c: $21 $29 $29
    add hl, bc                                    ; $6e5f: $09
    add hl, bc                                    ; $6e60: $09

jr_083_6e61:
    add hl, bc                                    ; $6e61: $09
    add hl, bc                                    ; $6e62: $09
    add hl, bc                                    ; $6e63: $09
    add hl, bc                                    ; $6e64: $09
    add hl, bc                                    ; $6e65: $09
    add hl, bc                                    ; $6e66: $09
    add hl, bc                                    ; $6e67: $09
    add hl, bc                                    ; $6e68: $09
    add hl, bc                                    ; $6e69: $09
    add hl, bc                                    ; $6e6a: $09
    add hl, bc                                    ; $6e6b: $09
    add hl, bc                                    ; $6e6c: $09
    ld c, a                                       ; $6e6d: $4f
    ld d, b                                       ; $6e6e: $50
    ld d, c                                       ; $6e6f: $51
    ld d, d                                       ; $6e70: $52
    ld d, e                                       ; $6e71: $53
    ld d, h                                       ; $6e72: $54
    ld d, l                                       ; $6e73: $55
    ld d, [hl]                                    ; $6e74: $56
    ld hl, $2422                                  ; $6e75: $21 $22 $24
    ld d, e                                       ; $6e78: $53
    ld [hl+], a                                   ; $6e79: $22
    inc h                                         ; $6e7a: $24
    ld l, $57                                     ; $6e7b: $2e $57
    add hl, bc                                    ; $6e7d: $09
    add hl, bc                                    ; $6e7e: $09
    add hl, bc                                    ; $6e7f: $09
    add hl, bc                                    ; $6e80: $09
    add hl, bc                                    ; $6e81: $09
    add hl, bc                                    ; $6e82: $09
    add hl, bc                                    ; $6e83: $09
    add hl, bc                                    ; $6e84: $09
    add hl, bc                                    ; $6e85: $09
    add hl, bc                                    ; $6e86: $09
    add hl, bc                                    ; $6e87: $09
    add hl, bc                                    ; $6e88: $09
    add hl, bc                                    ; $6e89: $09
    add hl, bc                                    ; $6e8a: $09
    add hl, bc                                    ; $6e8b: $09
    add hl, bc                                    ; $6e8c: $09
    ld b, h                                       ; $6e8d: $44
    ld c, [hl]                                    ; $6e8e: $4e
    cpl                                           ; $6e8f: $2f
    ld [hl-], a                                   ; $6e90: $32
    ld b, b                                       ; $6e91: $40
    ld c, l                                       ; $6e92: $4d
    inc [hl]                                      ; $6e93: $34
    dec [hl]                                      ; $6e94: $35
    rla                                           ; $6e95: $17
    rla                                           ; $6e96: $17
    rla                                           ; $6e97: $17
    rla                                           ; $6e98: $17
    db $ed                                        ; $6e99: $ed
    db $ed                                        ; $6e9a: $ed
    db $ed                                        ; $6e9b: $ed
    db $ed                                        ; $6e9c: $ed
    add hl, bc                                    ; $6e9d: $09

jr_083_6e9e:
    add hl, bc                                    ; $6e9e: $09
    add hl, bc                                    ; $6e9f: $09
    add hl, bc                                    ; $6ea0: $09
    add hl, bc                                    ; $6ea1: $09
    add hl, bc                                    ; $6ea2: $09
    add hl, bc                                    ; $6ea3: $09
    add hl, bc                                    ; $6ea4: $09
    add b                                         ; $6ea5: $80
    add b                                         ; $6ea6: $80
    add b                                         ; $6ea7: $80
    add b                                         ; $6ea8: $80
    add b                                         ; $6ea9: $80
    add b                                         ; $6eaa: $80
    add b                                         ; $6eab: $80
    add b                                         ; $6eac: $80
    inc sp                                        ; $6ead: $33
    ld l, $21                                     ; $6eae: $2e $21
    ld e, b                                       ; $6eb0: $58
    ld [hl], $2f                                  ; $6eb1: $36 $2f
    ld [hl-], a                                   ; $6eb3: $32
    ld e, c                                       ; $6eb4: $59
    rla                                           ; $6eb5: $17
    rla                                           ; $6eb6: $17
    rla                                           ; $6eb7: $17
    rla                                           ; $6eb8: $17
    db $ed                                        ; $6eb9: $ed
    db $ed                                        ; $6eba: $ed
    db $ed                                        ; $6ebb: $ed
    db $ed                                        ; $6ebc: $ed
    add hl, bc                                    ; $6ebd: $09
    add hl, bc                                    ; $6ebe: $09
    add hl, bc                                    ; $6ebf: $09
    add hl, bc                                    ; $6ec0: $09
    add hl, bc                                    ; $6ec1: $09
    add hl, bc                                    ; $6ec2: $09
    add hl, bc                                    ; $6ec3: $09

jr_083_6ec4:
    add hl, bc                                    ; $6ec4: $09
    add b                                         ; $6ec5: $80
    add b                                         ; $6ec6: $80
    add b                                         ; $6ec7: $80
    add b                                         ; $6ec8: $80
    add b                                         ; $6ec9: $80
    add b                                         ; $6eca: $80
    add b                                         ; $6ecb: $80
    add b                                         ; $6ecc: $80
    xor $ed                                       ; $6ecd: $ee $ed
    db $ed                                        ; $6ecf: $ed
    db $ed                                        ; $6ed0: $ed
    xor $ed                                       ; $6ed1: $ee $ed
    db $ed                                        ; $6ed3: $ed
    db $ed                                        ; $6ed4: $ed
    jr jr_083_6ec4                                ; $6ed5: $18 $ed

    db $ed                                        ; $6ed7: $ed
    db $ed                                        ; $6ed8: $ed
    db $ed                                        ; $6ed9: $ed
    db $ed                                        ; $6eda: $ed
    db $ed                                        ; $6edb: $ed
    db $ed                                        ; $6edc: $ed
    add b                                         ; $6edd: $80
    add b                                         ; $6ede: $80
    add b                                         ; $6edf: $80
    add b                                         ; $6ee0: $80
    add b                                         ; $6ee1: $80
    add b                                         ; $6ee2: $80
    add b                                         ; $6ee3: $80
    add b                                         ; $6ee4: $80
    add b                                         ; $6ee5: $80
    add b                                         ; $6ee6: $80
    add b                                         ; $6ee7: $80
    add b                                         ; $6ee8: $80
    add b                                         ; $6ee9: $80
    add b                                         ; $6eea: $80
    add b                                         ; $6eeb: $80
    add b                                         ; $6eec: $80
    ld de, $1600                                  ; $6eed: $11 $00 $16
    nop                                           ; $6ef0: $00
    add b                                         ; $6ef1: $80
    db $10                                        ; $6ef2: $10
    db $ed                                        ; $6ef3: $ed
    db $ed                                        ; $6ef4: $ed
    db $ed                                        ; $6ef5: $ed
    db $ed                                        ; $6ef6: $ed
    db $ed                                        ; $6ef7: $ed
    db $ed                                        ; $6ef8: $ed
    db $ed                                        ; $6ef9: $ed
    db $ed                                        ; $6efa: $ed
    db $ed                                        ; $6efb: $ed
    db $ed                                        ; $6efc: $ed
    db $ed                                        ; $6efd: $ed
    db $ed                                        ; $6efe: $ed
    db $ed                                        ; $6eff: $ed
    db $ed                                        ; $6f00: $ed
    db $ed                                        ; $6f01: $ed
    db $ed                                        ; $6f02: $ed
    add b                                         ; $6f03: $80
    add b                                         ; $6f04: $80
    add b                                         ; $6f05: $80
    add b                                         ; $6f06: $80
    add b                                         ; $6f07: $80
    add b                                         ; $6f08: $80
    add b                                         ; $6f09: $80
    add b                                         ; $6f0a: $80
    add b                                         ; $6f0b: $80
    add b                                         ; $6f0c: $80
    add b                                         ; $6f0d: $80
    add b                                         ; $6f0e: $80
    add b                                         ; $6f0f: $80
    add b                                         ; $6f10: $80
    add b                                         ; $6f11: $80
    add b                                         ; $6f12: $80
    db $ed                                        ; $6f13: $ed
    db $ed                                        ; $6f14: $ed
    db $ed                                        ; $6f15: $ed
    xor $ed                                       ; $6f16: $ee $ed
    db $ed                                        ; $6f18: $ed
    db $ed                                        ; $6f19: $ed
    xor $ed                                       ; $6f1a: $ee $ed
    db $ed                                        ; $6f1c: $ed
    db $ed                                        ; $6f1d: $ed
    xor $ed                                       ; $6f1e: $ee $ed
    db $ed                                        ; $6f20: $ed
    db $ed                                        ; $6f21: $ed
    xor $80                                       ; $6f22: $ee $80
    add b                                         ; $6f24: $80
    add b                                         ; $6f25: $80
    add b                                         ; $6f26: $80
    add b                                         ; $6f27: $80
    add b                                         ; $6f28: $80
    add b                                         ; $6f29: $80
    add b                                         ; $6f2a: $80
    add b                                         ; $6f2b: $80
    add b                                         ; $6f2c: $80
    add b                                         ; $6f2d: $80
    add b                                         ; $6f2e: $80
    add b                                         ; $6f2f: $80
    add b                                         ; $6f30: $80
    add b                                         ; $6f31: $80
    add b                                         ; $6f32: $80
    rst $28                                       ; $6f33: $ef
    rst $28                                       ; $6f34: $ef
    rst $28                                       ; $6f35: $ef
    rst $28                                       ; $6f36: $ef
    ldh a, [$f1]                                  ; $6f37: $f0 $f1
    ldh a, [$f0]                                  ; $6f39: $f0 $f0
    ldh a, [$f0]                                  ; $6f3b: $f0 $f0
    ldh a, [$f0]                                  ; $6f3d: $f0 $f0
    ld a, [c]                                     ; $6f3f: $f2
    di                                            ; $6f40: $f3
    ld a, [c]                                     ; $6f41: $f2
    ld a, [c]                                     ; $6f42: $f2
    ld b, $06                                     ; $6f43: $06 $06
    ld b, $06                                     ; $6f45: $06 $06
    ld b, $06                                     ; $6f47: $06 $06
    ld b, $06                                     ; $6f49: $06 $06
    ld b, $06                                     ; $6f4b: $06 $06
    ld b, $06                                     ; $6f4d: $06 $06
    ld b, $06                                     ; $6f4f: $06 $06
    ld b, $06                                     ; $6f51: $06 $06
    db $f4                                        ; $6f53: $f4
    push af                                       ; $6f54: $f5
    db $f4                                        ; $6f55: $f4
    db $f4                                        ; $6f56: $f4
    or $f7                                        ; $6f57: $f6 $f7
    ld hl, sp-$07                                 ; $6f59: $f8 $f9
    ld a, [$fcfb]                                 ; $6f5b: $fa $fb $fc
    db $fd                                        ; $6f5e: $fd
    cp $ff                                        ; $6f5f: $fe $ff
    nop                                           ; $6f61: $00
    ld bc, $0606                                  ; $6f62: $01 $06 $06
    ld b, $06                                     ; $6f65: $06 $06
    inc bc                                        ; $6f67: $03
    inc bc                                        ; $6f68: $03
    inc bc                                        ; $6f69: $03
    inc bc                                        ; $6f6a: $03
    inc bc                                        ; $6f6b: $03
    ld [bc], a                                    ; $6f6c: $02
    ld [bc], a                                    ; $6f6d: $02
    ld [bc], a                                    ; $6f6e: $02
    inc bc                                        ; $6f6f: $03
    ld [bc], a                                    ; $6f70: $02
    ld [bc], a                                    ; $6f71: $02
    ld [bc], a                                    ; $6f72: $02
    db $ed                                        ; $6f73: $ed
    db $ed                                        ; $6f74: $ed
    db $ed                                        ; $6f75: $ed
    xor $ed                                       ; $6f76: $ee $ed
    ld [bc], a                                    ; $6f78: $02
    inc bc                                        ; $6f79: $03
    inc b                                         ; $6f7a: $04
    db $ed                                        ; $6f7b: $ed
    xor $ef                                       ; $6f7c: $ee $ef
    dec b                                         ; $6f7e: $05
    db $ed                                        ; $6f7f: $ed
    ld b, $f1                                     ; $6f80: $06 $f1
    rlca                                          ; $6f82: $07
    add b                                         ; $6f83: $80
    add b                                         ; $6f84: $80
    add b                                         ; $6f85: $80
    add b                                         ; $6f86: $80
    add b                                         ; $6f87: $80
    add b                                         ; $6f88: $80
    add b                                         ; $6f89: $80
    add b                                         ; $6f8a: $80
    add b                                         ; $6f8b: $80
    add b                                         ; $6f8c: $80
    ld b, $06                                     ; $6f8d: $06 $06
    add b                                         ; $6f8f: $80
    add b                                         ; $6f90: $80
    ld b, $06                                     ; $6f91: $06 $06
    ld [$0a09], sp                                ; $6f93: $08 $09 $0a
    dec bc                                        ; $6f96: $0b
    inc c                                         ; $6f97: $0c
    dec c                                         ; $6f98: $0d
    ld c, $0f                                     ; $6f99: $0e $0f
    db $10                                        ; $6f9b: $10
    ld de, $1312                                  ; $6f9c: $11 $12 $13
    or $f7                                        ; $6f9f: $f6 $f7
    ld hl, sp-$07                                 ; $6fa1: $f8 $f9
    inc bc                                        ; $6fa3: $03
    ld [bc], a                                    ; $6fa4: $02
    ld [bc], a                                    ; $6fa5: $02
    ld [bc], a                                    ; $6fa6: $02
    inc bc                                        ; $6fa7: $03
    ld [bc], a                                    ; $6fa8: $02
    ld [bc], a                                    ; $6fa9: $02
    ld [bc], a                                    ; $6faa: $02
    inc bc                                        ; $6fab: $03
    ld [bc], a                                    ; $6fac: $02
    ld [bc], a                                    ; $6fad: $02
    ld [bc], a                                    ; $6fae: $02
    inc bc                                        ; $6faf: $03
    ld [bc], a                                    ; $6fb0: $02
    ld [bc], a                                    ; $6fb1: $02
    ld [bc], a                                    ; $6fb2: $02
    db $ed                                        ; $6fb3: $ed
    ld b, $f0                                     ; $6fb4: $06 $f0
    inc d                                         ; $6fb6: $14
    db $ed                                        ; $6fb7: $ed
    ld b, $f3                                     ; $6fb8: $06 $f3
    dec d                                         ; $6fba: $15
    db $ed                                        ; $6fbb: $ed
    ld b, $f5                                     ; $6fbc: $06 $f5
    ld d, $17                                     ; $6fbe: $16 $17
    ld b, $18                                     ; $6fc0: $06 $18
    add hl, de                                    ; $6fc2: $19
    add b                                         ; $6fc3: $80
    add b                                         ; $6fc4: $80
    ld b, $06                                     ; $6fc5: $06 $06
    add b                                         ; $6fc7: $80
    add b                                         ; $6fc8: $80
    ld b, $06                                     ; $6fc9: $06 $06
    add b                                         ; $6fcb: $80
    add b                                         ; $6fcc: $80
    ld b, $06                                     ; $6fcd: $06 $06
    add b                                         ; $6fcf: $80
    add b                                         ; $6fd0: $80
    inc bc                                        ; $6fd1: $03
    inc bc                                        ; $6fd2: $03
    ld a, [$fcfb]                                 ; $6fd3: $fa $fb $fc
    db $fd                                        ; $6fd6: $fd
    cp $ff                                        ; $6fd7: $fe $ff
    nop                                           ; $6fd9: $00
    ld bc, $0908                                  ; $6fda: $01 $08 $09
    ld a, [bc]                                    ; $6fdd: $0a
    dec bc                                        ; $6fde: $0b
    inc c                                         ; $6fdf: $0c
    dec c                                         ; $6fe0: $0d
    ld c, $0f                                     ; $6fe1: $0e $0f
    inc bc                                        ; $6fe3: $03
    ld [bc], a                                    ; $6fe4: $02
    ld [bc], a                                    ; $6fe5: $02
    ld [bc], a                                    ; $6fe6: $02
    inc bc                                        ; $6fe7: $03
    ld [bc], a                                    ; $6fe8: $02
    ld [bc], a                                    ; $6fe9: $02
    ld [bc], a                                    ; $6fea: $02
    inc bc                                        ; $6feb: $03
    ld [bc], a                                    ; $6fec: $02
    ld [bc], a                                    ; $6fed: $02
    ld [bc], a                                    ; $6fee: $02
    inc bc                                        ; $6fef: $03
    ld [bc], a                                    ; $6ff0: $02
    ld [bc], a                                    ; $6ff1: $02
    ld [bc], a                                    ; $6ff2: $02
    rst $28                                       ; $6ff3: $ef
    ld a, [de]                                    ; $6ff4: $1a
    dec de                                        ; $6ff5: $1b
    inc e                                         ; $6ff6: $1c
    pop af                                        ; $6ff7: $f1
    dec e                                         ; $6ff8: $1d
    ld e, $1f                                     ; $6ff9: $1e $1f
    ldh a, [rNR41]                                ; $6ffb: $f0 $20
    ld hl, $f322                                  ; $6ffd: $21 $22 $f3
    inc hl                                        ; $7000: $23
    inc h                                         ; $7001: $24
    dec h                                         ; $7002: $25
    ld b, $06                                     ; $7003: $06 $06
    ld b, $06                                     ; $7005: $06 $06
    ld b, $06                                     ; $7007: $06 $06
    ld b, $06                                     ; $7009: $06 $06
    ld b, $06                                     ; $700b: $06 $06
    ld b, $06                                     ; $700d: $06 $06
    ld b, $06                                     ; $700f: $06 $06
    ld b, $06                                     ; $7011: $06 $06
    rst $28                                       ; $7013: $ef
    rst $28                                       ; $7014: $ef
    rst $28                                       ; $7015: $ef
    rst $28                                       ; $7016: $ef
    ldh a, [$f1]                                  ; $7017: $f0 $f1
    ldh a, [$f1]                                  ; $7019: $f0 $f1
    ldh a, [$f0]                                  ; $701b: $f0 $f0
    ldh a, [$f0]                                  ; $701d: $f0 $f0
    ld a, [c]                                     ; $701f: $f2
    di                                            ; $7020: $f3
    ld a, [c]                                     ; $7021: $f2
    di                                            ; $7022: $f3
    ld b, $06                                     ; $7023: $06 $06
    ld b, $06                                     ; $7025: $06 $06
    ld b, $06                                     ; $7027: $06 $06
    ld b, $06                                     ; $7029: $06 $06
    ld b, $06                                     ; $702b: $06 $06
    ld b, $06                                     ; $702d: $06 $06
    ld b, $06                                     ; $702f: $06 $06
    ld b, $06                                     ; $7031: $06 $06
    rst $28                                       ; $7033: $ef
    rst $28                                       ; $7034: $ef
    rst $28                                       ; $7035: $ef
    ld h, $f0                                     ; $7036: $26 $f0
    ldh a, [$f1]                                  ; $7038: $f0 $f1
    daa                                           ; $703a: $27
    ldh a, [$f0]                                  ; $703b: $f0 $f0
    ldh a, [$28]                                  ; $703d: $f0 $28
    ld a, [c]                                     ; $703f: $f2
    ld a, [c]                                     ; $7040: $f2
    di                                            ; $7041: $f3
    add hl, hl                                    ; $7042: $29
    ld b, $06                                     ; $7043: $06 $06
    ld b, $06                                     ; $7045: $06 $06
    ld b, $06                                     ; $7047: $06 $06
    ld b, $06                                     ; $7049: $06 $06
    ld b, $06                                     ; $704b: $06 $06
    ld b, $06                                     ; $704d: $06 $06
    ld b, $06                                     ; $704f: $06 $06
    ld b, $06                                     ; $7051: $06 $06
    ld a, [hl+]                                   ; $7053: $2a
    dec hl                                        ; $7054: $2b
    inc l                                         ; $7055: $2c
    dec l                                         ; $7056: $2d
    ld l, $2f                                     ; $7057: $2e $2f
    jr nc, jr_083_708c                            ; $7059: $30 $31

    ld [hl-], a                                   ; $705b: $32
    inc sp                                        ; $705c: $33
    inc [hl]                                      ; $705d: $34
    dec [hl]                                      ; $705e: $35
    ld [hl], $37                                  ; $705f: $36 $37
    jr c, jr_083_709c                             ; $7061: $38 $39

    rlca                                          ; $7063: $07
    rlca                                          ; $7064: $07
    rlca                                          ; $7065: $07
    rlca                                          ; $7066: $07
    rlca                                          ; $7067: $07
    rlca                                          ; $7068: $07
    rlca                                          ; $7069: $07
    rlca                                          ; $706a: $07
    rlca                                          ; $706b: $07
    rlca                                          ; $706c: $07
    rlca                                          ; $706d: $07
    rlca                                          ; $706e: $07
    rlca                                          ; $706f: $07
    rlca                                          ; $7070: $07
    rlca                                          ; $7071: $07
    rlca                                          ; $7072: $07
    push af                                       ; $7073: $f5
    ld a, [hl-]                                   ; $7074: $3a
    dec sp                                        ; $7075: $3b
    inc a                                         ; $7076: $3c
    dec a                                         ; $7077: $3d
    ld a, $f6                                     ; $7078: $3e $f6
    rst $30                                       ; $707a: $f7
    ccf                                           ; $707b: $3f
    ld b, b                                       ; $707c: $40
    ld a, [$41fb]                                 ; $707d: $fa $fb $41
    ld b, d                                       ; $7080: $42
    cp $ff                                        ; $7081: $fe $ff
    ld b, $06                                     ; $7083: $06 $06
    ld b, $06                                     ; $7085: $06 $06
    inc bc                                        ; $7087: $03
    inc bc                                        ; $7088: $03
    inc bc                                        ; $7089: $03
    inc bc                                        ; $708a: $03
    ld [bc], a                                    ; $708b: $02

jr_083_708c:
    ld [bc], a                                    ; $708c: $02
    ld [bc], a                                    ; $708d: $02
    ld [bc], a                                    ; $708e: $02
    ld [bc], a                                    ; $708f: $02
    ld [bc], a                                    ; $7090: $02
    ld [bc], a                                    ; $7091: $02
    ld [bc], a                                    ; $7092: $02
    db $f4                                        ; $7093: $f4
    push af                                       ; $7094: $f5
    db $f4                                        ; $7095: $f4
    push af                                       ; $7096: $f5
    ld hl, sp-$07                                 ; $7097: $f8 $f9
    dec a                                         ; $7099: $3d
    ld a, $fc                                     ; $709a: $3e $fc

jr_083_709c:
    db $fd                                        ; $709c: $fd
    ccf                                           ; $709d: $3f
    ld b, b                                       ; $709e: $40
    nop                                           ; $709f: $00
    ld bc, $4241                                  ; $70a0: $01 $41 $42
    ld b, $06                                     ; $70a3: $06 $06
    ld b, $06                                     ; $70a5: $06 $06
    inc bc                                        ; $70a7: $03
    inc bc                                        ; $70a8: $03
    inc bc                                        ; $70a9: $03
    inc bc                                        ; $70aa: $03
    ld [bc], a                                    ; $70ab: $02
    ld [bc], a                                    ; $70ac: $02
    ld [bc], a                                    ; $70ad: $02
    ld [bc], a                                    ; $70ae: $02
    ld [bc], a                                    ; $70af: $02
    ld [bc], a                                    ; $70b0: $02
    ld [bc], a                                    ; $70b1: $02
    ld [bc], a                                    ; $70b2: $02
    db $f4                                        ; $70b3: $f4
    db $f4                                        ; $70b4: $f4
    push af                                       ; $70b5: $f5
    ld b, e                                       ; $70b6: $43
    or $f7                                        ; $70b7: $f6 $f7
    ld hl, sp-$07                                 ; $70b9: $f8 $f9
    ld a, [$fcfb]                                 ; $70bb: $fa $fb $fc
    db $fd                                        ; $70be: $fd
    cp $ff                                        ; $70bf: $fe $ff
    nop                                           ; $70c1: $00
    ld bc, $0606                                  ; $70c2: $01 $06 $06
    ld b, $06                                     ; $70c5: $06 $06
    inc bc                                        ; $70c7: $03
    inc bc                                        ; $70c8: $03
    inc bc                                        ; $70c9: $03
    inc bc                                        ; $70ca: $03
    ld [bc], a                                    ; $70cb: $02
    ld [bc], a                                    ; $70cc: $02
    ld [bc], a                                    ; $70cd: $02
    ld [bc], a                                    ; $70ce: $02
    ld [bc], a                                    ; $70cf: $02
    ld [bc], a                                    ; $70d0: $02
    ld [bc], a                                    ; $70d1: $02
    ld [bc], a                                    ; $70d2: $02
    ld b, h                                       ; $70d3: $44
    ld b, l                                       ; $70d4: $45
    ld b, l                                       ; $70d5: $45
    ld b, h                                       ; $70d6: $44
    dec a                                         ; $70d7: $3d
    ld a, $f6                                     ; $70d8: $3e $f6
    rst $30                                       ; $70da: $f7
    ccf                                           ; $70db: $3f
    ld b, b                                       ; $70dc: $40
    ld a, [$41fb]                                 ; $70dd: $fa $fb $41
    ld b, d                                       ; $70e0: $42
    cp $ff                                        ; $70e1: $fe $ff
    ld b, $06                                     ; $70e3: $06 $06
    ld h, $26                                     ; $70e5: $26 $26
    inc bc                                        ; $70e7: $03
    inc bc                                        ; $70e8: $03
    inc bc                                        ; $70e9: $03
    inc bc                                        ; $70ea: $03
    ld [bc], a                                    ; $70eb: $02
    ld [bc], a                                    ; $70ec: $02
    ld [bc], a                                    ; $70ed: $02
    ld [bc], a                                    ; $70ee: $02
    ld [bc], a                                    ; $70ef: $02
    ld [bc], a                                    ; $70f0: $02
    ld [bc], a                                    ; $70f1: $02
    ld [bc], a                                    ; $70f2: $02
    ld b, [hl]                                    ; $70f3: $46
    ld b, a                                       ; $70f4: $47
    ld [$1809], sp                                ; $70f5: $08 $09 $18
    add hl, de                                    ; $70f8: $19
    inc c                                         ; $70f9: $0c
    dec c                                         ; $70fa: $0d
    ld c, b                                       ; $70fb: $48
    ld c, c                                       ; $70fc: $49
    db $10                                        ; $70fd: $10
    ld de, $3e3d                                  ; $70fe: $11 $3d $3e
    or $f7                                        ; $7101: $f6 $f7
    ld [bc], a                                    ; $7103: $02
    ld [bc], a                                    ; $7104: $02
    ld [bc], a                                    ; $7105: $02
    ld [bc], a                                    ; $7106: $02
    ld [bc], a                                    ; $7107: $02
    ld [bc], a                                    ; $7108: $02
    ld [bc], a                                    ; $7109: $02
    ld [bc], a                                    ; $710a: $02
    ld [bc], a                                    ; $710b: $02
    ld [bc], a                                    ; $710c: $02
    ld [bc], a                                    ; $710d: $02
    ld [bc], a                                    ; $710e: $02
    ld [bc], a                                    ; $710f: $02
    ld [bc], a                                    ; $7110: $02
    ld [bc], a                                    ; $7111: $02
    ld [bc], a                                    ; $7112: $02
    ld a, [bc]                                    ; $7113: $0a
    dec bc                                        ; $7114: $0b
    ld b, [hl]                                    ; $7115: $46
    ld b, a                                       ; $7116: $47
    ld c, $0f                                     ; $7117: $0e $0f
    jr @+$1b                                      ; $7119: $18 $19

    ld [de], a                                    ; $711b: $12
    inc de                                        ; $711c: $13
    ld c, b                                       ; $711d: $48
    ld c, c                                       ; $711e: $49
    ld hl, sp-$07                                 ; $711f: $f8 $f9
    dec a                                         ; $7121: $3d
    ld a, $02                                     ; $7122: $3e $02
    ld [bc], a                                    ; $7124: $02
    ld [bc], a                                    ; $7125: $02
    ld [bc], a                                    ; $7126: $02
    ld [bc], a                                    ; $7127: $02
    ld [bc], a                                    ; $7128: $02
    ld [bc], a                                    ; $7129: $02
    ld [bc], a                                    ; $712a: $02
    ld [bc], a                                    ; $712b: $02
    ld [bc], a                                    ; $712c: $02
    ld [bc], a                                    ; $712d: $02
    ld [bc], a                                    ; $712e: $02
    ld [bc], a                                    ; $712f: $02
    ld [bc], a                                    ; $7130: $02
    ld [bc], a                                    ; $7131: $02
    ld [bc], a                                    ; $7132: $02
    ld [$0a09], sp                                ; $7133: $08 $09 $0a
    dec bc                                        ; $7136: $0b
    inc c                                         ; $7137: $0c
    dec c                                         ; $7138: $0d
    ld c, $0f                                     ; $7139: $0e $0f
    db $10                                        ; $713b: $10
    ld de, $1312                                  ; $713c: $11 $12 $13
    or $f7                                        ; $713f: $f6 $f7
    ld hl, sp-$07                                 ; $7141: $f8 $f9
    ld [bc], a                                    ; $7143: $02
    ld [bc], a                                    ; $7144: $02
    ld [bc], a                                    ; $7145: $02
    ld [bc], a                                    ; $7146: $02
    ld [bc], a                                    ; $7147: $02
    ld [bc], a                                    ; $7148: $02
    ld [bc], a                                    ; $7149: $02
    ld [bc], a                                    ; $714a: $02
    ld [bc], a                                    ; $714b: $02
    ld [bc], a                                    ; $714c: $02
    ld [bc], a                                    ; $714d: $02
    ld [bc], a                                    ; $714e: $02
    ld [bc], a                                    ; $714f: $02
    ld [bc], a                                    ; $7150: $02
    ld [bc], a                                    ; $7151: $02
    ld [bc], a                                    ; $7152: $02
    ccf                                           ; $7153: $3f
    ld b, b                                       ; $7154: $40
    ld a, [$41fb]                                 ; $7155: $fa $fb $41
    ld b, d                                       ; $7158: $42
    cp $ff                                        ; $7159: $fe $ff
    ld b, [hl]                                    ; $715b: $46
    ld b, a                                       ; $715c: $47
    ld [$1809], sp                                ; $715d: $08 $09 $18
    add hl, de                                    ; $7160: $19
    inc c                                         ; $7161: $0c
    dec c                                         ; $7162: $0d
    ld [bc], a                                    ; $7163: $02
    ld [bc], a                                    ; $7164: $02
    ld [bc], a                                    ; $7165: $02
    ld [bc], a                                    ; $7166: $02
    ld [bc], a                                    ; $7167: $02
    ld [bc], a                                    ; $7168: $02
    ld [bc], a                                    ; $7169: $02
    ld [bc], a                                    ; $716a: $02
    ld [bc], a                                    ; $716b: $02
    ld [bc], a                                    ; $716c: $02
    ld [bc], a                                    ; $716d: $02
    ld [bc], a                                    ; $716e: $02
    ld [bc], a                                    ; $716f: $02
    ld [bc], a                                    ; $7170: $02
    ld [bc], a                                    ; $7171: $02
    ld [bc], a                                    ; $7172: $02
    db $fc                                        ; $7173: $fc
    db $fd                                        ; $7174: $fd
    ccf                                           ; $7175: $3f
    ld b, b                                       ; $7176: $40
    nop                                           ; $7177: $00
    ld bc, $4241                                  ; $7178: $01 $41 $42
    ld a, [bc]                                    ; $717b: $0a
    dec bc                                        ; $717c: $0b
    ld b, [hl]                                    ; $717d: $46
    ld b, a                                       ; $717e: $47
    ld c, $0f                                     ; $717f: $0e $0f
    jr @+$1b                                      ; $7181: $18 $19

    ld [bc], a                                    ; $7183: $02
    ld [bc], a                                    ; $7184: $02
    ld [bc], a                                    ; $7185: $02
    ld [bc], a                                    ; $7186: $02
    ld [bc], a                                    ; $7187: $02
    ld [bc], a                                    ; $7188: $02
    ld [bc], a                                    ; $7189: $02
    ld [bc], a                                    ; $718a: $02
    ld [bc], a                                    ; $718b: $02
    ld [bc], a                                    ; $718c: $02
    ld [bc], a                                    ; $718d: $02
    ld [bc], a                                    ; $718e: $02
    ld [bc], a                                    ; $718f: $02
    ld [bc], a                                    ; $7190: $02
    ld [bc], a                                    ; $7191: $02
    ld [bc], a                                    ; $7192: $02
    ld a, [$fcfb]                                 ; $7193: $fa $fb $fc
    db $fd                                        ; $7196: $fd
    cp $ff                                        ; $7197: $fe $ff
    nop                                           ; $7199: $00
    ld bc, $0908                                  ; $719a: $01 $08 $09
    ld a, [bc]                                    ; $719d: $0a
    dec bc                                        ; $719e: $0b
    inc c                                         ; $719f: $0c
    dec c                                         ; $71a0: $0d
    ld c, $0f                                     ; $71a1: $0e $0f
    ld [bc], a                                    ; $71a3: $02
    ld [bc], a                                    ; $71a4: $02
    ld [bc], a                                    ; $71a5: $02
    ld [bc], a                                    ; $71a6: $02
    ld [bc], a                                    ; $71a7: $02
    ld [bc], a                                    ; $71a8: $02
    ld [bc], a                                    ; $71a9: $02
    ld [bc], a                                    ; $71aa: $02
    ld [bc], a                                    ; $71ab: $02
    ld [bc], a                                    ; $71ac: $02
    ld [bc], a                                    ; $71ad: $02
    ld [bc], a                                    ; $71ae: $02
    ld [bc], a                                    ; $71af: $02
    ld [bc], a                                    ; $71b0: $02
    ld [bc], a                                    ; $71b1: $02
    ld [bc], a                                    ; $71b2: $02
    ld h, $ef                                     ; $71b3: $26 $ef
    rst $28                                       ; $71b5: $ef
    rst $28                                       ; $71b6: $ef
    daa                                           ; $71b7: $27
    ldh a, [$f1]                                  ; $71b8: $f0 $f1
    ldh a, [$28]                                  ; $71ba: $f0 $28
    ldh a, [$f0]                                  ; $71bc: $f0 $f0
    ldh a, [$29]                                  ; $71be: $f0 $29
    ld a, [c]                                     ; $71c0: $f2
    di                                            ; $71c1: $f3
    ld a, [c]                                     ; $71c2: $f2
    ld h, $06                                     ; $71c3: $26 $06
    ld b, $06                                     ; $71c5: $06 $06
    ld h, $06                                     ; $71c7: $26 $06
    ld b, $06                                     ; $71c9: $06 $06
    ld h, $06                                     ; $71cb: $26 $06
    ld b, $06                                     ; $71cd: $06 $06
    ld h, $06                                     ; $71cf: $26 $06
    ld b, $06                                     ; $71d1: $06 $06
    rst $28                                       ; $71d3: $ef
    rst $28                                       ; $71d4: $ef
    rst $28                                       ; $71d5: $ef
    rst $28                                       ; $71d6: $ef
    pop af                                        ; $71d7: $f1
    ldh a, [$f0]                                  ; $71d8: $f0 $f0
    ldh a, [$f0]                                  ; $71da: $f0 $f0
    ldh a, [$f0]                                  ; $71dc: $f0 $f0
    ldh a, [$f3]                                  ; $71de: $f0 $f3
    ld a, [c]                                     ; $71e0: $f2
    ld a, [c]                                     ; $71e1: $f2
    ld a, [c]                                     ; $71e2: $f2
    ld b, $06                                     ; $71e3: $06 $06
    ld b, $06                                     ; $71e5: $06 $06
    ld b, $06                                     ; $71e7: $06 $06
    ld b, $06                                     ; $71e9: $06 $06
    ld b, $06                                     ; $71eb: $06 $06
    ld b, $06                                     ; $71ed: $06 $06
    ld b, $06                                     ; $71ef: $06 $06
    ld b, $06                                     ; $71f1: $06 $06
    ld a, [de]                                    ; $71f3: $1a
    dec de                                        ; $71f4: $1b
    inc e                                         ; $71f5: $1c
    rst $28                                       ; $71f6: $ef
    dec e                                         ; $71f7: $1d
    ld e, $1f                                     ; $71f8: $1e $1f
    ldh a, [rNR41]                                ; $71fa: $f0 $20
    ld hl, $f022                                  ; $71fc: $21 $22 $f0
    inc hl                                        ; $71ff: $23
    inc h                                         ; $7200: $24
    dec h                                         ; $7201: $25
    ld a, [c]                                     ; $7202: $f2
    ld b, $06                                     ; $7203: $06 $06
    ld b, $06                                     ; $7205: $06 $06
    ld b, $06                                     ; $7207: $06 $06
    ld b, $06                                     ; $7209: $06 $06
    ld b, $06                                     ; $720b: $06 $06
    ld b, $06                                     ; $720d: $06 $06
    ld b, $06                                     ; $720f: $06 $06
    ld b, $06                                     ; $7211: $06 $06
    rst $28                                       ; $7213: $ef
    rst $28                                       ; $7214: $ef
    rst $28                                       ; $7215: $ef
    rst $28                                       ; $7216: $ef
    pop af                                        ; $7217: $f1
    ldh a, [$f0]                                  ; $7218: $f0 $f0
    pop af                                        ; $721a: $f1
    ldh a, [$f0]                                  ; $721b: $f0 $f0
    ldh a, [$f0]                                  ; $721d: $f0 $f0
    di                                            ; $721f: $f3
    ld a, [c]                                     ; $7220: $f2
    ld a, [c]                                     ; $7221: $f2
    di                                            ; $7222: $f3
    ld b, $06                                     ; $7223: $06 $06
    ld b, $06                                     ; $7225: $06 $06
    ld b, $06                                     ; $7227: $06 $06
    ld b, $06                                     ; $7229: $06 $06
    ld b, $06                                     ; $722b: $06 $06
    ld b, $06                                     ; $722d: $06 $06
    ld b, $06                                     ; $722f: $06 $06
    ld b, $06                                     ; $7231: $06 $06
    ld b, e                                       ; $7233: $43
    db $f4                                        ; $7234: $f4
    push af                                       ; $7235: $f5
    db $f4                                        ; $7236: $f4
    ld hl, sp-$07                                 ; $7237: $f8 $f9
    dec a                                         ; $7239: $3d
    ld a, $fc                                     ; $723a: $3e $fc
    db $fd                                        ; $723c: $fd
    ccf                                           ; $723d: $3f
    ld b, b                                       ; $723e: $40
    nop                                           ; $723f: $00
    ld bc, $4241                                  ; $7240: $01 $41 $42
    ld h, $06                                     ; $7243: $26 $06
    ld b, $06                                     ; $7245: $06 $06
    inc bc                                        ; $7247: $03
    inc bc                                        ; $7248: $03
    inc bc                                        ; $7249: $03
    inc bc                                        ; $724a: $03
    ld [bc], a                                    ; $724b: $02
    ld [bc], a                                    ; $724c: $02
    ld [bc], a                                    ; $724d: $02
    ld [bc], a                                    ; $724e: $02
    ld [bc], a                                    ; $724f: $02
    ld [bc], a                                    ; $7250: $02
    ld [bc], a                                    ; $7251: $02
    ld [bc], a                                    ; $7252: $02
    push af                                       ; $7253: $f5
    db $f4                                        ; $7254: $f4
    db $f4                                        ; $7255: $f4
    db $f4                                        ; $7256: $f4
    or $f7                                        ; $7257: $f6 $f7
    ld hl, sp-$07                                 ; $7259: $f8 $f9
    ld a, [$fcfb]                                 ; $725b: $fa $fb $fc
    db $fd                                        ; $725e: $fd
    cp $ff                                        ; $725f: $fe $ff
    nop                                           ; $7261: $00
    ld bc, $0606                                  ; $7262: $01 $06 $06
    ld b, $06                                     ; $7265: $06 $06
    inc bc                                        ; $7267: $03
    inc bc                                        ; $7268: $03
    inc bc                                        ; $7269: $03
    inc bc                                        ; $726a: $03
    ld [bc], a                                    ; $726b: $02
    ld [bc], a                                    ; $726c: $02
    ld [bc], a                                    ; $726d: $02
    ld [bc], a                                    ; $726e: $02
    ld [bc], a                                    ; $726f: $02
    ld [bc], a                                    ; $7270: $02
    ld [bc], a                                    ; $7271: $02
    ld [bc], a                                    ; $7272: $02
    push af                                       ; $7273: $f5
    ld c, d                                       ; $7274: $4a
    dec sp                                        ; $7275: $3b
    db $f4                                        ; $7276: $f4
    dec a                                         ; $7277: $3d
    ld a, $f6                                     ; $7278: $3e $f6
    rst $30                                       ; $727a: $f7
    ccf                                           ; $727b: $3f
    ld b, b                                       ; $727c: $40
    ld a, [$41fb]                                 ; $727d: $fa $fb $41
    ld b, d                                       ; $7280: $42
    cp $ff                                        ; $7281: $fe $ff
    ld b, $06                                     ; $7283: $06 $06
    ld b, $06                                     ; $7285: $06 $06
    inc bc                                        ; $7287: $03
    inc bc                                        ; $7288: $03
    inc bc                                        ; $7289: $03
    inc bc                                        ; $728a: $03
    ld [bc], a                                    ; $728b: $02
    ld [bc], a                                    ; $728c: $02
    ld [bc], a                                    ; $728d: $02
    ld [bc], a                                    ; $728e: $02
    ld [bc], a                                    ; $728f: $02
    ld [bc], a                                    ; $7290: $02
    ld [bc], a                                    ; $7291: $02
    ld [bc], a                                    ; $7292: $02
    push af                                       ; $7293: $f5
    db $f4                                        ; $7294: $f4
    db $f4                                        ; $7295: $f4
    push af                                       ; $7296: $f5
    ld hl, sp-$07                                 ; $7297: $f8 $f9
    dec a                                         ; $7299: $3d
    ld a, $fc                                     ; $729a: $3e $fc
    db $fd                                        ; $729c: $fd
    ccf                                           ; $729d: $3f
    ld b, b                                       ; $729e: $40
    nop                                           ; $729f: $00
    ld bc, $4241                                  ; $72a0: $01 $41 $42
    ld b, $06                                     ; $72a3: $06 $06
    ld b, $06                                     ; $72a5: $06 $06
    inc bc                                        ; $72a7: $03
    inc bc                                        ; $72a8: $03
    inc bc                                        ; $72a9: $03
    inc bc                                        ; $72aa: $03
    ld [bc], a                                    ; $72ab: $02
    ld [bc], a                                    ; $72ac: $02
    ld [bc], a                                    ; $72ad: $02
    inc bc                                        ; $72ae: $03
    ld [bc], a                                    ; $72af: $02
    ld [bc], a                                    ; $72b0: $02
    ld [bc], a                                    ; $72b1: $02
    inc bc                                        ; $72b2: $03
    ld a, [bc]                                    ; $72b3: $0a
    dec bc                                        ; $72b4: $0b
    ld b, [hl]                                    ; $72b5: $46
    ld b, a                                       ; $72b6: $47
    ld c, $0f                                     ; $72b7: $0e $0f
    jr jr_083_72d4                                ; $72b9: $18 $19

    ld [de], a                                    ; $72bb: $12
    inc de                                        ; $72bc: $13
    ld c, b                                       ; $72bd: $48
    ld c, c                                       ; $72be: $49
    ld hl, sp-$07                                 ; $72bf: $f8 $f9
    dec a                                         ; $72c1: $3d
    ld a, $02                                     ; $72c2: $3e $02
    ld [bc], a                                    ; $72c4: $02
    ld [bc], a                                    ; $72c5: $02
    inc bc                                        ; $72c6: $03
    ld [bc], a                                    ; $72c7: $02
    ld [bc], a                                    ; $72c8: $02
    ld [bc], a                                    ; $72c9: $02
    inc bc                                        ; $72ca: $03
    ld [bc], a                                    ; $72cb: $02
    ld [bc], a                                    ; $72cc: $02
    ld [bc], a                                    ; $72cd: $02
    inc bc                                        ; $72ce: $03
    ld [bc], a                                    ; $72cf: $02
    ld [bc], a                                    ; $72d0: $02
    ld [bc], a                                    ; $72d1: $02
    inc bc                                        ; $72d2: $03
    db $fc                                        ; $72d3: $fc

jr_083_72d4:
    db $fd                                        ; $72d4: $fd
    ccf                                           ; $72d5: $3f
    ld b, b                                       ; $72d6: $40
    nop                                           ; $72d7: $00
    ld bc, $4241                                  ; $72d8: $01 $41 $42
    ld a, [bc]                                    ; $72db: $0a
    dec bc                                        ; $72dc: $0b
    ld b, [hl]                                    ; $72dd: $46
    ld b, a                                       ; $72de: $47
    ld c, $0f                                     ; $72df: $0e $0f
    jr @+$1b                                      ; $72e1: $18 $19

    ld [bc], a                                    ; $72e3: $02
    ld [bc], a                                    ; $72e4: $02
    ld [bc], a                                    ; $72e5: $02
    inc bc                                        ; $72e6: $03
    ld [bc], a                                    ; $72e7: $02
    ld [bc], a                                    ; $72e8: $02
    ld [bc], a                                    ; $72e9: $02
    inc bc                                        ; $72ea: $03
    ld [bc], a                                    ; $72eb: $02
    ld [bc], a                                    ; $72ec: $02
    ld [bc], a                                    ; $72ed: $02
    inc bc                                        ; $72ee: $03
    ld [bc], a                                    ; $72ef: $02
    ld [bc], a                                    ; $72f0: $02
    ld [bc], a                                    ; $72f1: $02
    inc bc                                        ; $72f2: $03
    xor $ed                                       ; $72f3: $ee $ed
    db $ed                                        ; $72f5: $ed
    db $ed                                        ; $72f6: $ed
    xor $ed                                       ; $72f7: $ee $ed
    db $ed                                        ; $72f9: $ed
    db $ed                                        ; $72fa: $ed
    xor $ed                                       ; $72fb: $ee $ed
    db $ed                                        ; $72fd: $ed
    db $ed                                        ; $72fe: $ed
    xor $ed                                       ; $72ff: $ee $ed
    db $ed                                        ; $7301: $ed
    db $ed                                        ; $7302: $ed
    add b                                         ; $7303: $80
    add b                                         ; $7304: $80
    add b                                         ; $7305: $80
    add b                                         ; $7306: $80
    add b                                         ; $7307: $80
    add b                                         ; $7308: $80
    add b                                         ; $7309: $80
    add b                                         ; $730a: $80
    add b                                         ; $730b: $80
    add b                                         ; $730c: $80
    add b                                         ; $730d: $80
    add b                                         ; $730e: $80
    add b                                         ; $730f: $80
    add b                                         ; $7310: $80
    add b                                         ; $7311: $80
    add b                                         ; $7312: $80
    db $ed                                        ; $7313: $ed
    db $ed                                        ; $7314: $ed
    db $ed                                        ; $7315: $ed
    db $ed                                        ; $7316: $ed
    db $ed                                        ; $7317: $ed
    db $ed                                        ; $7318: $ed
    db $ed                                        ; $7319: $ed
    ld [bc], a                                    ; $731a: $02
    db $ed                                        ; $731b: $ed
    db $ed                                        ; $731c: $ed
    db $ed                                        ; $731d: $ed
    xor $ed                                       ; $731e: $ee $ed
    db $ed                                        ; $7320: $ed
    db $ed                                        ; $7321: $ed
    xor $80                                       ; $7322: $ee $80
    add b                                         ; $7324: $80
    add b                                         ; $7325: $80
    add b                                         ; $7326: $80
    add b                                         ; $7327: $80
    add b                                         ; $7328: $80
    add b                                         ; $7329: $80
    add b                                         ; $732a: $80
    add b                                         ; $732b: $80
    add b                                         ; $732c: $80
    add b                                         ; $732d: $80
    add b                                         ; $732e: $80
    add b                                         ; $732f: $80
    add b                                         ; $7330: $80
    add b                                         ; $7331: $80
    add b                                         ; $7332: $80
    db $ed                                        ; $7333: $ed
    db $ed                                        ; $7334: $ed
    db $ed                                        ; $7335: $ed
    db $ed                                        ; $7336: $ed
    inc bc                                        ; $7337: $03
    inc bc                                        ; $7338: $03
    inc bc                                        ; $7339: $03
    inc bc                                        ; $733a: $03
    rst $28                                       ; $733b: $ef
    rst $28                                       ; $733c: $ef
    rst $28                                       ; $733d: $ef
    ld h, $f1                                     ; $733e: $26 $f1
    ldh a, [$f0]                                  ; $7340: $f0 $f0
    daa                                           ; $7342: $27
    add b                                         ; $7343: $80
    add b                                         ; $7344: $80
    add b                                         ; $7345: $80
    add b                                         ; $7346: $80
    add b                                         ; $7347: $80
    add b                                         ; $7348: $80
    add b                                         ; $7349: $80
    add b                                         ; $734a: $80
    ld b, $06                                     ; $734b: $06 $06
    ld b, $06                                     ; $734d: $06 $06
    ld b, $06                                     ; $734f: $06 $06
    ld b, $06                                     ; $7351: $06 $06
    db $ed                                        ; $7353: $ed
    db $ed                                        ; $7354: $ed
    db $ed                                        ; $7355: $ed
    db $ed                                        ; $7356: $ed
    inc bc                                        ; $7357: $03
    inc bc                                        ; $7358: $03
    inc bc                                        ; $7359: $03
    inc bc                                        ; $735a: $03
    ld c, e                                       ; $735b: $4b
    ld c, h                                       ; $735c: $4c
    ld c, l                                       ; $735d: $4d
    ld c, [hl]                                    ; $735e: $4e
    ld c, a                                       ; $735f: $4f
    ld d, b                                       ; $7360: $50
    ld d, c                                       ; $7361: $51
    ld d, d                                       ; $7362: $52
    nop                                           ; $7363: $00
    nop                                           ; $7364: $00
    nop                                           ; $7365: $00
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    nop                                           ; $7368: $00
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    rlca                                          ; $736b: $07
    rlca                                          ; $736c: $07
    rlca                                          ; $736d: $07
    rlca                                          ; $736e: $07
    rlca                                          ; $736f: $07
    rlca                                          ; $7370: $07
    rlca                                          ; $7371: $07
    rlca                                          ; $7372: $07
    db $ed                                        ; $7373: $ed
    db $ed                                        ; $7374: $ed
    db $ed                                        ; $7375: $ed
    db $ed                                        ; $7376: $ed
    inc bc                                        ; $7377: $03
    inc bc                                        ; $7378: $03
    inc bc                                        ; $7379: $03
    inc bc                                        ; $737a: $03
    ld d, e                                       ; $737b: $53
    ld h, $ef                                     ; $737c: $26 $ef
    rst $28                                       ; $737e: $ef
    ld d, h                                       ; $737f: $54
    daa                                           ; $7380: $27
    ldh a, [$f1]                                  ; $7381: $f0 $f1
    add b                                         ; $7383: $80
    add b                                         ; $7384: $80
    add b                                         ; $7385: $80
    add b                                         ; $7386: $80
    add b                                         ; $7387: $80
    add b                                         ; $7388: $80
    add b                                         ; $7389: $80
    add b                                         ; $738a: $80
    rlca                                          ; $738b: $07
    ld h, $06                                     ; $738c: $26 $06
    ld b, $07                                     ; $738e: $06 $07
    ld h, $06                                     ; $7390: $26 $06
    ld b, $17                                     ; $7392: $06 $17
    xor $48                                       ; $7394: $ee $48
    ld c, c                                       ; $7396: $49
    rla                                           ; $7397: $17
    ld d, l                                       ; $7398: $55
    inc bc                                        ; $7399: $03
    ld d, [hl]                                    ; $739a: $56
    db $ed                                        ; $739b: $ed
    db $ed                                        ; $739c: $ed
    db $ed                                        ; $739d: $ed
    xor $ed                                       ; $739e: $ee $ed
    db $ed                                        ; $73a0: $ed
    db $ed                                        ; $73a1: $ed
    xor $80                                       ; $73a2: $ee $80
    add b                                         ; $73a4: $80
    inc bc                                        ; $73a5: $03
    ld [bc], a                                    ; $73a6: $02
    add b                                         ; $73a7: $80
    add b                                         ; $73a8: $80
    add b                                         ; $73a9: $80
    add b                                         ; $73aa: $80
    add b                                         ; $73ab: $80
    add b                                         ; $73ac: $80
    add b                                         ; $73ad: $80
    add b                                         ; $73ae: $80
    add b                                         ; $73af: $80
    add b                                         ; $73b0: $80
    add b                                         ; $73b1: $80
    add b                                         ; $73b2: $80
    db $10                                        ; $73b3: $10
    ld de, $1312                                  ; $73b4: $11 $12 $13
    or $f7                                        ; $73b7: $f6 $f7
    ld hl, sp-$07                                 ; $73b9: $f8 $f9
    ld a, [$fcfb]                                 ; $73bb: $fa $fb $fc
    db $fd                                        ; $73be: $fd
    cp $ff                                        ; $73bf: $fe $ff
    nop                                           ; $73c1: $00
    ld bc, $0202                                  ; $73c2: $01 $02 $02
    ld [bc], a                                    ; $73c5: $02
    ld [bc], a                                    ; $73c6: $02
    ld [bc], a                                    ; $73c7: $02
    ld [bc], a                                    ; $73c8: $02
    ld [bc], a                                    ; $73c9: $02
    ld [bc], a                                    ; $73ca: $02
    ld [bc], a                                    ; $73cb: $02
    ld [bc], a                                    ; $73cc: $02
    ld [bc], a                                    ; $73cd: $02
    ld [bc], a                                    ; $73ce: $02
    inc bc                                        ; $73cf: $03
    ld [bc], a                                    ; $73d0: $02
    ld [bc], a                                    ; $73d1: $02
    ld [bc], a                                    ; $73d2: $02
    ld [$0a09], sp                                ; $73d3: $08 $09 $0a
    dec bc                                        ; $73d6: $0b
    inc c                                         ; $73d7: $0c
    dec c                                         ; $73d8: $0d
    ld c, $0f                                     ; $73d9: $0e $0f
    db $10                                        ; $73db: $10
    ld de, $1312                                  ; $73dc: $11 $12 $13
    ld d, a                                       ; $73df: $57
    ld e, b                                       ; $73e0: $58
    ld hl, sp-$07                                 ; $73e1: $f8 $f9
    inc bc                                        ; $73e3: $03
    ld [bc], a                                    ; $73e4: $02
    ld [bc], a                                    ; $73e5: $02
    ld [bc], a                                    ; $73e6: $02
    inc bc                                        ; $73e7: $03
    ld [bc], a                                    ; $73e8: $02
    ld [bc], a                                    ; $73e9: $02
    ld [bc], a                                    ; $73ea: $02
    inc bc                                        ; $73eb: $03
    ld [bc], a                                    ; $73ec: $02
    ld [bc], a                                    ; $73ed: $02
    ld [bc], a                                    ; $73ee: $02
    inc b                                         ; $73ef: $04
    inc b                                         ; $73f0: $04
    ld [bc], a                                    ; $73f1: $02
    ld [bc], a                                    ; $73f2: $02
    ld e, c                                       ; $73f3: $59
    ld e, d                                       ; $73f4: $5a
    db $fc                                        ; $73f5: $fc
    db $fd                                        ; $73f6: $fd
    ld e, c                                       ; $73f7: $59
    ld e, d                                       ; $73f8: $5a
    nop                                           ; $73f9: $00
    ld bc, $5a59                                  ; $73fa: $01 $59 $5a
    ld a, [bc]                                    ; $73fd: $0a
    dec bc                                        ; $73fe: $0b
    ld e, e                                       ; $73ff: $5b
    ld e, h                                       ; $7400: $5c
    ld c, $0f                                     ; $7401: $0e $0f
    inc b                                         ; $7403: $04
    inc b                                         ; $7404: $04
    inc bc                                        ; $7405: $03
    ld [bc], a                                    ; $7406: $02
    inc b                                         ; $7407: $04
    inc b                                         ; $7408: $04
    inc bc                                        ; $7409: $03
    ld [bc], a                                    ; $740a: $02
    inc b                                         ; $740b: $04
    inc b                                         ; $740c: $04
    inc bc                                        ; $740d: $03
    ld [bc], a                                    ; $740e: $02
    inc b                                         ; $740f: $04
    inc b                                         ; $7410: $04
    inc bc                                        ; $7411: $03
    ld [bc], a                                    ; $7412: $02
    db $ed                                        ; $7413: $ed
    db $ed                                        ; $7414: $ed
    db $ed                                        ; $7415: $ed
    db $ed                                        ; $7416: $ed
    inc bc                                        ; $7417: $03
    inc bc                                        ; $7418: $03
    inc bc                                        ; $7419: $03
    inc bc                                        ; $741a: $03
    rst $28                                       ; $741b: $ef
    rst $28                                       ; $741c: $ef
    rst $28                                       ; $741d: $ef
    rst $28                                       ; $741e: $ef
    ldh a, [$f1]                                  ; $741f: $f0 $f1
    ldh a, [$f0]                                  ; $7421: $f0 $f0
    add b                                         ; $7423: $80
    add b                                         ; $7424: $80
    add b                                         ; $7425: $80
    add b                                         ; $7426: $80
    add b                                         ; $7427: $80
    add b                                         ; $7428: $80
    add b                                         ; $7429: $80
    add b                                         ; $742a: $80
    ld b, $06                                     ; $742b: $06 $06
    ld b, $06                                     ; $742d: $06 $06
    ld b, $06                                     ; $742f: $06 $06
    ld b, $06                                     ; $7431: $06 $06
    db $ed                                        ; $7433: $ed
    db $ed                                        ; $7434: $ed
    db $ed                                        ; $7435: $ed
    db $ed                                        ; $7436: $ed
    inc bc                                        ; $7437: $03
    inc bc                                        ; $7438: $03
    inc bc                                        ; $7439: $03
    inc bc                                        ; $743a: $03
    rst $28                                       ; $743b: $ef
    rst $28                                       ; $743c: $ef
    rst $28                                       ; $743d: $ef
    rst $28                                       ; $743e: $ef
    pop af                                        ; $743f: $f1
    ldh a, [$f1]                                  ; $7440: $f0 $f1
    ldh a, [$80]                                  ; $7442: $f0 $80
    add b                                         ; $7444: $80
    add b                                         ; $7445: $80
    add b                                         ; $7446: $80
    add b                                         ; $7447: $80
    add b                                         ; $7448: $80
    add b                                         ; $7449: $80
    add b                                         ; $744a: $80
    ld b, $06                                     ; $744b: $06 $06
    ld b, $06                                     ; $744d: $06 $06
    ld b, $06                                     ; $744f: $06 $06
    ld b, $06                                     ; $7451: $06 $06
    db $ed                                        ; $7453: $ed
    db $ed                                        ; $7454: $ed
    db $ed                                        ; $7455: $ed
    xor $03                                       ; $7456: $ee $03
    inc bc                                        ; $7458: $03
    inc bc                                        ; $7459: $03
    inc b                                         ; $745a: $04
    rst $28                                       ; $745b: $ef
    rst $28                                       ; $745c: $ef
    rst $28                                       ; $745d: $ef
    dec b                                         ; $745e: $05
    ldh a, [$f1]                                  ; $745f: $f0 $f1
    ldh a, [rTAC]                                 ; $7461: $f0 $07
    add b                                         ; $7463: $80
    add b                                         ; $7464: $80
    add b                                         ; $7465: $80
    add b                                         ; $7466: $80
    add b                                         ; $7467: $80
    add b                                         ; $7468: $80
    add b                                         ; $7469: $80
    add b                                         ; $746a: $80
    ld b, $06                                     ; $746b: $06 $06
    ld b, $06                                     ; $746d: $06 $06
    ld b, $06                                     ; $746f: $06 $06
    ld b, $06                                     ; $7471: $06 $06
    ld e, l                                       ; $7473: $5d
    ld e, [hl]                                    ; $7474: $5e
    ld [de], a                                    ; $7475: $12
    inc de                                        ; $7476: $13
    or $f7                                        ; $7477: $f6 $f7
    ld hl, sp-$07                                 ; $7479: $f8 $f9
    ld a, [$fcfb]                                 ; $747b: $fa $fb $fc
    db $fd                                        ; $747e: $fd
    cp $ff                                        ; $747f: $fe $ff
    nop                                           ; $7481: $00
    ld bc, $0404                                  ; $7482: $01 $04 $04
    inc bc                                        ; $7485: $03
    ld [bc], a                                    ; $7486: $02
    inc bc                                        ; $7487: $03
    inc bc                                        ; $7488: $03
    inc bc                                        ; $7489: $03
    ld [bc], a                                    ; $748a: $02
    inc bc                                        ; $748b: $03
    ld [bc], a                                    ; $748c: $02
    ld [bc], a                                    ; $748d: $02
    ld [bc], a                                    ; $748e: $02
    inc bc                                        ; $748f: $03
    ld [bc], a                                    ; $7490: $02
    ld [bc], a                                    ; $7491: $02
    ld [bc], a                                    ; $7492: $02
    ld c, b                                       ; $7493: $48
    ld c, c                                       ; $7494: $49
    db $10                                        ; $7495: $10
    ld de, $3e3d                                  ; $7496: $11 $3d $3e
    or $f7                                        ; $7499: $f6 $f7
    ccf                                           ; $749b: $3f
    ld b, b                                       ; $749c: $40
    ld a, [$41fb]                                 ; $749d: $fa $fb $41
    ld b, d                                       ; $74a0: $42
    cp $ff                                        ; $74a1: $fe $ff
    ld [bc], a                                    ; $74a3: $02
    ld [bc], a                                    ; $74a4: $02
    ld [bc], a                                    ; $74a5: $02
    ld [bc], a                                    ; $74a6: $02
    ld [bc], a                                    ; $74a7: $02
    ld [bc], a                                    ; $74a8: $02
    ld [bc], a                                    ; $74a9: $02
    ld [bc], a                                    ; $74aa: $02
    ld [bc], a                                    ; $74ab: $02
    ld [bc], a                                    ; $74ac: $02
    ld [bc], a                                    ; $74ad: $02
    ld [bc], a                                    ; $74ae: $02
    ld [bc], a                                    ; $74af: $02
    ld [bc], a                                    ; $74b0: $02
    ld [bc], a                                    ; $74b1: $02
    ld [bc], a                                    ; $74b2: $02
    ld [de], a                                    ; $74b3: $12
    inc de                                        ; $74b4: $13
    ld c, b                                       ; $74b5: $48
    ld c, c                                       ; $74b6: $49
    ld hl, sp-$07                                 ; $74b7: $f8 $f9
    dec a                                         ; $74b9: $3d
    ld a, $fc                                     ; $74ba: $3e $fc
    db $fd                                        ; $74bc: $fd
    ccf                                           ; $74bd: $3f
    ld b, b                                       ; $74be: $40
    nop                                           ; $74bf: $00
    ld bc, $4241                                  ; $74c0: $01 $41 $42
    ld [bc], a                                    ; $74c3: $02
    ld [bc], a                                    ; $74c4: $02
    ld [bc], a                                    ; $74c5: $02
    ld [bc], a                                    ; $74c6: $02
    ld [bc], a                                    ; $74c7: $02
    ld [bc], a                                    ; $74c8: $02
    ld [bc], a                                    ; $74c9: $02
    ld [bc], a                                    ; $74ca: $02
    ld [bc], a                                    ; $74cb: $02
    ld [bc], a                                    ; $74cc: $02
    ld [bc], a                                    ; $74cd: $02
    ld [bc], a                                    ; $74ce: $02
    ld [bc], a                                    ; $74cf: $02
    ld [bc], a                                    ; $74d0: $02
    ld [bc], a                                    ; $74d1: $02
    ld [bc], a                                    ; $74d2: $02
    db $10                                        ; $74d3: $10
    ld de, $1312                                  ; $74d4: $11 $12 $13
    or $f7                                        ; $74d7: $f6 $f7
    ld hl, sp-$07                                 ; $74d9: $f8 $f9
    ld a, [$fcfb]                                 ; $74db: $fa $fb $fc
    db $fd                                        ; $74de: $fd
    cp $ff                                        ; $74df: $fe $ff
    nop                                           ; $74e1: $00
    ld bc, $0202                                  ; $74e2: $01 $02 $02
    ld [bc], a                                    ; $74e5: $02
    ld [bc], a                                    ; $74e6: $02
    ld [bc], a                                    ; $74e7: $02
    ld [bc], a                                    ; $74e8: $02
    ld [bc], a                                    ; $74e9: $02
    ld [bc], a                                    ; $74ea: $02
    ld [bc], a                                    ; $74eb: $02
    ld [bc], a                                    ; $74ec: $02
    ld [bc], a                                    ; $74ed: $02
    ld [bc], a                                    ; $74ee: $02
    ld [bc], a                                    ; $74ef: $02
    ld [bc], a                                    ; $74f0: $02
    ld [bc], a                                    ; $74f1: $02
    ld [bc], a                                    ; $74f2: $02
    ld a, [$fcfb]                                 ; $74f3: $fa $fb $fc
    ld e, a                                       ; $74f6: $5f
    cp $60                                        ; $74f7: $fe $60
    ld h, c                                       ; $74f9: $61
    ld h, d                                       ; $74fa: $62
    ld [$6361], sp                                ; $74fb: $08 $61 $63
    ld h, h                                       ; $74fe: $64
    inc c                                         ; $74ff: $0c
    ld h, l                                       ; $7500: $65
    ld h, [hl]                                    ; $7501: $66
    ld h, a                                       ; $7502: $67
    ld [bc], a                                    ; $7503: $02
    ld [bc], a                                    ; $7504: $02
    ld [bc], a                                    ; $7505: $02
    ld [bc], a                                    ; $7506: $02
    ld [bc], a                                    ; $7507: $02
    ld [bc], a                                    ; $7508: $02
    add h                                         ; $7509: $84
    add h                                         ; $750a: $84
    ld [bc], a                                    ; $750b: $02
    add h                                         ; $750c: $84
    add h                                         ; $750d: $84
    add h                                         ; $750e: $84
    ld [bc], a                                    ; $750f: $02
    add h                                         ; $7510: $84
    add h                                         ; $7511: $84
    add h                                         ; $7512: $84
    ld h, c                                       ; $7513: $61
    ld h, c                                       ; $7514: $61
    ld h, c                                       ; $7515: $61
    ld h, c                                       ; $7516: $61
    ld l, b                                       ; $7517: $68
    ld l, c                                       ; $7518: $69
    ld l, c                                       ; $7519: $69
    ld l, b                                       ; $751a: $68
    ld l, d                                       ; $751b: $6a
    ld l, e                                       ; $751c: $6b
    ld l, e                                       ; $751d: $6b
    ld l, h                                       ; $751e: $6c
    ld l, l                                       ; $751f: $6d
    ld l, [hl]                                    ; $7520: $6e
    ld l, a                                       ; $7521: $6f
    ld [hl], b                                    ; $7522: $70
    add h                                         ; $7523: $84
    add h                                         ; $7524: $84
    add h                                         ; $7525: $84
    add h                                         ; $7526: $84
    add h                                         ; $7527: $84
    add h                                         ; $7528: $84
    and h                                         ; $7529: $a4
    and h                                         ; $752a: $a4
    add h                                         ; $752b: $84
    add h                                         ; $752c: $84
    add h                                         ; $752d: $84
    add h                                         ; $752e: $84
    add h                                         ; $752f: $84
    add h                                         ; $7530: $84
    add h                                         ; $7531: $84
    add h                                         ; $7532: $84
    db $10                                        ; $7533: $10
    ld [hl], c                                    ; $7534: $71
    ld [hl], d                                    ; $7535: $72
    ld [hl], e                                    ; $7536: $73
    or $74                                        ; $7537: $f6 $74
    ld [hl], l                                    ; $7539: $75
    ld [hl], e                                    ; $753a: $73
    ld a, [$7776]                                 ; $753b: $fa $76 $77
    ld a, b                                       ; $753e: $78
    cp $79                                        ; $753f: $fe $79
    ld a, d                                       ; $7541: $7a
    ld a, e                                       ; $7542: $7b
    ld [bc], a                                    ; $7543: $02
    add h                                         ; $7544: $84
    add h                                         ; $7545: $84
    and h                                         ; $7546: $a4
    ld [bc], a                                    ; $7547: $02
    add h                                         ; $7548: $84
    add h                                         ; $7549: $84
    and h                                         ; $754a: $a4
    ld [bc], a                                    ; $754b: $02
    add h                                         ; $754c: $84
    add h                                         ; $754d: $84
    call nz, $8402                                ; $754e: $c4 $02 $84
    add h                                         ; $7551: $84
    add h                                         ; $7552: $84
    ld a, h                                       ; $7553: $7c
    ld a, l                                       ; $7554: $7d
    ld a, [hl]                                    ; $7555: $7e
    ld a, a                                       ; $7556: $7f
    ld [hl], e                                    ; $7557: $73
    ld [hl], e                                    ; $7558: $73
    ld [hl], e                                    ; $7559: $73
    ld [hl], e                                    ; $755a: $73
    ld [hl], e                                    ; $755b: $73
    ld [hl], e                                    ; $755c: $73
    ld [hl], e                                    ; $755d: $73
    ld [hl], e                                    ; $755e: $73
    add b                                         ; $755f: $80
    add c                                         ; $7560: $81
    add c                                         ; $7561: $81
    add d                                         ; $7562: $82
    add h                                         ; $7563: $84
    add h                                         ; $7564: $84
    add h                                         ; $7565: $84
    add h                                         ; $7566: $84
    and h                                         ; $7567: $a4
    and h                                         ; $7568: $a4
    and h                                         ; $7569: $a4
    and h                                         ; $756a: $a4
    and h                                         ; $756b: $a4
    and h                                         ; $756c: $a4
    and h                                         ; $756d: $a4
    and h                                         ; $756e: $a4
    adc h                                         ; $756f: $8c
    adc h                                         ; $7570: $8c
    adc h                                         ; $7571: $8c
    adc h                                         ; $7572: $8c
    ld [de], a                                    ; $7573: $12
    inc de                                        ; $7574: $13
    ld c, b                                       ; $7575: $48
    ld c, c                                       ; $7576: $49
    ld hl, sp-$07                                 ; $7577: $f8 $f9
    dec a                                         ; $7579: $3d
    ld a, $fc                                     ; $757a: $3e $fc
    db $fd                                        ; $757c: $fd
    ccf                                           ; $757d: $3f
    ld b, b                                       ; $757e: $40
    nop                                           ; $757f: $00
    ld bc, $4241                                  ; $7580: $01 $41 $42
    ld [bc], a                                    ; $7583: $02
    ld [bc], a                                    ; $7584: $02
    ld [bc], a                                    ; $7585: $02
    inc bc                                        ; $7586: $03
    ld [bc], a                                    ; $7587: $02
    ld [bc], a                                    ; $7588: $02
    ld [bc], a                                    ; $7589: $02
    inc bc                                        ; $758a: $03
    ld [bc], a                                    ; $758b: $02
    ld [bc], a                                    ; $758c: $02
    ld [bc], a                                    ; $758d: $02
    inc bc                                        ; $758e: $03
    ld [bc], a                                    ; $758f: $02
    ld [bc], a                                    ; $7590: $02
    ld [bc], a                                    ; $7591: $02
    inc bc                                        ; $7592: $03
    add e                                         ; $7593: $83
    db $fd                                        ; $7594: $fd
    ccf                                           ; $7595: $3f
    ld b, b                                       ; $7596: $40
    ld h, d                                       ; $7597: $62
    ld h, c                                       ; $7598: $61
    add h                                         ; $7599: $84
    ld b, d                                       ; $759a: $42
    ld h, h                                       ; $759b: $64
    ld h, e                                       ; $759c: $63
    ld h, c                                       ; $759d: $61
    ld b, a                                       ; $759e: $47
    add l                                         ; $759f: $85
    add [hl]                                      ; $75a0: $86
    ld h, l                                       ; $75a1: $65
    add hl, de                                    ; $75a2: $19
    ld a, [bc]                                    ; $75a3: $0a
    ld [bc], a                                    ; $75a4: $02
    ld [bc], a                                    ; $75a5: $02
    ld [bc], a                                    ; $75a6: $02
    and h                                         ; $75a7: $a4
    add h                                         ; $75a8: $84
    ld a, [bc]                                    ; $75a9: $0a
    ld [bc], a                                    ; $75aa: $02
    and h                                         ; $75ab: $a4
    and h                                         ; $75ac: $a4
    add h                                         ; $75ad: $84
    ld [bc], a                                    ; $75ae: $02
    adc h                                         ; $75af: $8c
    adc h                                         ; $75b0: $8c
    and h                                         ; $75b1: $a4
    ld [bc], a                                    ; $75b2: $02
    ld [hl], e                                    ; $75b3: $73
    add a                                         ; $75b4: $87
    ld [hl], c                                    ; $75b5: $71
    ld c, c                                       ; $75b6: $49
    ld [hl], e                                    ; $75b7: $73
    adc b                                         ; $75b8: $88
    ld [hl], h                                    ; $75b9: $74
    ld a, $89                                     ; $75ba: $3e $89
    adc d                                         ; $75bc: $8a
    halt                                          ; $75bd: $76
    ld b, b                                       ; $75be: $40
    adc e                                         ; $75bf: $8b
    adc h                                         ; $75c0: $8c
    ld a, c                                       ; $75c1: $79
    ld b, d                                       ; $75c2: $42
    and h                                         ; $75c3: $a4
    adc h                                         ; $75c4: $8c
    and h                                         ; $75c5: $a4
    ld [bc], a                                    ; $75c6: $02
    and h                                         ; $75c7: $a4
    adc h                                         ; $75c8: $8c
    and h                                         ; $75c9: $a4
    ld [bc], a                                    ; $75ca: $02
    adc h                                         ; $75cb: $8c
    adc h                                         ; $75cc: $8c
    and h                                         ; $75cd: $a4
    ld [bc], a                                    ; $75ce: $02
    adc h                                         ; $75cf: $8c
    adc h                                         ; $75d0: $8c
    and h                                         ; $75d1: $a4
    ld [bc], a                                    ; $75d2: $02
    xor $ed                                       ; $75d3: $ee $ed
    db $ed                                        ; $75d5: $ed
    db $ed                                        ; $75d6: $ed
    xor $ed                                       ; $75d7: $ee $ed
    db $ed                                        ; $75d9: $ed
    db $ed                                        ; $75da: $ed
    xor $ed                                       ; $75db: $ee $ed
    db $ed                                        ; $75dd: $ed
    db $ed                                        ; $75de: $ed
    ld d, l                                       ; $75df: $55
    inc bc                                        ; $75e0: $03
    adc l                                         ; $75e1: $8d
    db $ed                                        ; $75e2: $ed
    add b                                         ; $75e3: $80
    add b                                         ; $75e4: $80
    add b                                         ; $75e5: $80
    add b                                         ; $75e6: $80
    add b                                         ; $75e7: $80
    add b                                         ; $75e8: $80
    add b                                         ; $75e9: $80
    add b                                         ; $75ea: $80
    add b                                         ; $75eb: $80
    add b                                         ; $75ec: $80
    add b                                         ; $75ed: $80
    add b                                         ; $75ee: $80
    add b                                         ; $75ef: $80
    add b                                         ; $75f0: $80
    adc b                                         ; $75f1: $88
    add b                                         ; $75f2: $80
    dec b                                         ; $75f3: $05
    adc [hl]                                      ; $75f4: $8e
    xor $ed                                       ; $75f5: $ee $ed
    rlca                                          ; $75f7: $07
    adc a                                         ; $75f8: $8f
    ld b, $ed                                     ; $75f9: $06 $ed
    inc d                                         ; $75fb: $14
    pop af                                        ; $75fc: $f1
    ld b, $ed                                     ; $75fd: $06 $ed
    dec d                                         ; $75ff: $15
    sub b                                         ; $7600: $90
    ld b, $ed                                     ; $7601: $06 $ed
    ld h, $2e                                     ; $7603: $26 $2e
    add b                                         ; $7605: $80
    add b                                         ; $7606: $80
    ld h, $2e                                     ; $7607: $26 $2e
    add b                                         ; $7609: $80
    add b                                         ; $760a: $80
    ld h, $26                                     ; $760b: $26 $26
    add b                                         ; $760d: $80
    add b                                         ; $760e: $80
    ld h, $2e                                     ; $760f: $26 $2e
    add b                                         ; $7611: $80
    add b                                         ; $7612: $80
    ldh a, [$f0]                                  ; $7613: $f0 $f0
    ldh a, [$28]                                  ; $7615: $f0 $28
    di                                            ; $7617: $f3
    ld a, [c]                                     ; $7618: $f2
    ld a, [c]                                     ; $7619: $f2
    add hl, hl                                    ; $761a: $29
    push af                                       ; $761b: $f5
    db $f4                                        ; $761c: $f4
    db $f4                                        ; $761d: $f4
    ld b, e                                       ; $761e: $43
    or $f7                                        ; $761f: $f6 $f7
    ld hl, sp-$07                                 ; $7621: $f8 $f9
    ld b, $06                                     ; $7623: $06 $06
    ld b, $06                                     ; $7625: $06 $06
    ld b, $06                                     ; $7627: $06 $06
    ld b, $06                                     ; $7629: $06 $06
    ld b, $06                                     ; $762b: $06 $06
    ld b, $06                                     ; $762d: $06 $06
    inc bc                                        ; $762f: $03
    inc bc                                        ; $7630: $03
    inc bc                                        ; $7631: $03
    inc bc                                        ; $7632: $03
    sub c                                         ; $7633: $91
    sub d                                         ; $7634: $92
    sub e                                         ; $7635: $93
    sub h                                         ; $7636: $94
    sub l                                         ; $7637: $95
    sub [hl]                                      ; $7638: $96
    sub a                                         ; $7639: $97
    sbc b                                         ; $763a: $98
    sbc c                                         ; $763b: $99
    sbc d                                         ; $763c: $9a
    ld b, l                                       ; $763d: $45
    ld b, h                                       ; $763e: $44
    dec a                                         ; $763f: $3d
    ld a, $f6                                     ; $7640: $3e $f6
    rst $30                                       ; $7642: $f7
    rrca                                          ; $7643: $0f
    rrca                                          ; $7644: $0f
    rrca                                          ; $7645: $0f

jr_083_7646:
    rrca                                          ; $7646: $0f
    rrca                                          ; $7647: $0f
    rrca                                          ; $7648: $0f
    rrca                                          ; $7649: $0f
    rrca                                          ; $764a: $0f
    ld c, $0e                                     ; $764b: $0e $0e
    ld h, $26                                     ; $764d: $26 $26
    inc bc                                        ; $764f: $03
    inc bc                                        ; $7650: $03
    inc bc                                        ; $7651: $03
    inc bc                                        ; $7652: $03
    sbc e                                         ; $7653: $9b
    jr z, jr_083_7646                             ; $7654: $28 $f0

    ldh a, [$9c]                                  ; $7656: $f0 $9c
    add hl, hl                                    ; $7658: $29
    ld a, [c]                                     ; $7659: $f2
    di                                            ; $765a: $f3
    sbc l                                         ; $765b: $9d
    ld b, e                                       ; $765c: $43
    db $f4                                        ; $765d: $f4
    push af                                       ; $765e: $f5
    ld hl, sp-$07                                 ; $765f: $f8 $f9
    dec a                                         ; $7661: $3d
    ld a, $0f                                     ; $7662: $3e $0f
    ld h, $06                                     ; $7664: $26 $06
    ld b, $0f                                     ; $7666: $06 $0f
    ld h, $06                                     ; $7668: $26 $06
    ld b, $2e                                     ; $766a: $06 $2e
    ld h, $06                                     ; $766c: $26 $06
    ld b, $03                                     ; $766e: $06 $03
    inc bc                                        ; $7670: $03
    inc bc                                        ; $7671: $03
    inc bc                                        ; $7672: $03
    db $ed                                        ; $7673: $ed
    db $ed                                        ; $7674: $ed
    db $ed                                        ; $7675: $ed
    xor $ed                                       ; $7676: $ee $ed
    db $ed                                        ; $7678: $ed
    db $ed                                        ; $7679: $ed
    xor $ed                                       ; $767a: $ee $ed
    db $ed                                        ; $767c: $ed
    db $ed                                        ; $767d: $ed
    xor $ed                                       ; $767e: $ee $ed
    db $ed                                        ; $7680: $ed
    db $ed                                        ; $7681: $ed
    ld d, l                                       ; $7682: $55
    add b                                         ; $7683: $80
    add b                                         ; $7684: $80
    add b                                         ; $7685: $80
    add b                                         ; $7686: $80
    add b                                         ; $7687: $80
    add b                                         ; $7688: $80
    add b                                         ; $7689: $80
    add b                                         ; $768a: $80
    add b                                         ; $768b: $80
    add b                                         ; $768c: $80
    add b                                         ; $768d: $80
    add b                                         ; $768e: $80
    add b                                         ; $768f: $80
    add b                                         ; $7690: $80
    add b                                         ; $7691: $80
    add b                                         ; $7692: $80
    db $10                                        ; $7693: $10
    ld de, $1312                                  ; $7694: $11 $12 $13
    or $f7                                        ; $7697: $f6 $f7
    ld hl, sp-$07                                 ; $7699: $f8 $f9
    ld a, [$fcfb]                                 ; $769b: $fa $fb $fc
    db $fd                                        ; $769e: $fd
    inc bc                                        ; $769f: $03
    inc bc                                        ; $76a0: $03
    inc bc                                        ; $76a1: $03
    inc bc                                        ; $76a2: $03
    inc bc                                        ; $76a3: $03
    ld [bc], a                                    ; $76a4: $02
    ld [bc], a                                    ; $76a5: $02
    ld [bc], a                                    ; $76a6: $02
    inc bc                                        ; $76a7: $03
    ld [bc], a                                    ; $76a8: $02
    ld [bc], a                                    ; $76a9: $02
    ld [bc], a                                    ; $76aa: $02
    inc bc                                        ; $76ab: $03
    ld [bc], a                                    ; $76ac: $02
    ld [bc], a                                    ; $76ad: $02
    ld [bc], a                                    ; $76ae: $02
    add b                                         ; $76af: $80
    add b                                         ; $76b0: $80
    add b                                         ; $76b1: $80
    add b                                         ; $76b2: $80
    ld c, b                                       ; $76b3: $48
    ld c, c                                       ; $76b4: $49
    db $10                                        ; $76b5: $10
    ld de, $3e3d                                  ; $76b6: $11 $3d $3e
    or $f7                                        ; $76b9: $f6 $f7
    ccf                                           ; $76bb: $3f
    ld b, b                                       ; $76bc: $40
    ld a, [$03fb]                                 ; $76bd: $fa $fb $03
    inc bc                                        ; $76c0: $03
    inc bc                                        ; $76c1: $03
    inc bc                                        ; $76c2: $03
    ld [bc], a                                    ; $76c3: $02
    ld [bc], a                                    ; $76c4: $02
    ld [bc], a                                    ; $76c5: $02
    ld [bc], a                                    ; $76c6: $02
    ld [bc], a                                    ; $76c7: $02
    ld [bc], a                                    ; $76c8: $02
    ld [bc], a                                    ; $76c9: $02
    ld [bc], a                                    ; $76ca: $02
    ld [bc], a                                    ; $76cb: $02
    ld [bc], a                                    ; $76cc: $02
    ld [bc], a                                    ; $76cd: $02
    ld [bc], a                                    ; $76ce: $02
    add b                                         ; $76cf: $80
    add b                                         ; $76d0: $80
    add b                                         ; $76d1: $80
    add b                                         ; $76d2: $80
    ld [de], a                                    ; $76d3: $12
    inc de                                        ; $76d4: $13
    ld c, b                                       ; $76d5: $48
    ld c, c                                       ; $76d6: $49
    ld hl, sp-$07                                 ; $76d7: $f8 $f9
    dec a                                         ; $76d9: $3d
    ld a, $fc                                     ; $76da: $3e $fc
    db $fd                                        ; $76dc: $fd
    ccf                                           ; $76dd: $3f
    ld b, b                                       ; $76de: $40
    inc bc                                        ; $76df: $03
    inc bc                                        ; $76e0: $03
    inc bc                                        ; $76e1: $03
    inc bc                                        ; $76e2: $03
    ld [bc], a                                    ; $76e3: $02
    ld [bc], a                                    ; $76e4: $02
    ld [bc], a                                    ; $76e5: $02
    ld [bc], a                                    ; $76e6: $02
    ld [bc], a                                    ; $76e7: $02
    ld [bc], a                                    ; $76e8: $02
    ld [bc], a                                    ; $76e9: $02
    ld [bc], a                                    ; $76ea: $02
    ld [bc], a                                    ; $76eb: $02
    ld [bc], a                                    ; $76ec: $02
    ld [bc], a                                    ; $76ed: $02
    ld [bc], a                                    ; $76ee: $02
    add b                                         ; $76ef: $80
    add b                                         ; $76f0: $80
    add b                                         ; $76f1: $80
    add b                                         ; $76f2: $80
    ldh a, [$f0]                                  ; $76f3: $f0 $f0
    ldh a, [$f1]                                  ; $76f5: $f0 $f1
    ld a, [c]                                     ; $76f7: $f2
    di                                            ; $76f8: $f3
    ld a, [c]                                     ; $76f9: $f2
    di                                            ; $76fa: $f3
    db $f4                                        ; $76fb: $f4
    push af                                       ; $76fc: $f5
    db $f4                                        ; $76fd: $f4
    push af                                       ; $76fe: $f5
    or $f7                                        ; $76ff: $f6 $f7
    ld hl, sp-$07                                 ; $7701: $f8 $f9
    ld b, $06                                     ; $7703: $06 $06
    ld b, $06                                     ; $7705: $06 $06
    ld b, $06                                     ; $7707: $06 $06
    ld b, $06                                     ; $7709: $06 $06
    ld b, $06                                     ; $770b: $06 $06
    ld b, $06                                     ; $770d: $06 $06
    inc bc                                        ; $770f: $03
    inc bc                                        ; $7710: $03
    inc bc                                        ; $7711: $03
    inc bc                                        ; $7712: $03
    ldh a, [$f0]                                  ; $7713: $f0 $f0
    ldh a, [$f0]                                  ; $7715: $f0 $f0
    di                                            ; $7717: $f3
    ld a, [c]                                     ; $7718: $f2
    di                                            ; $7719: $f3
    ld a, [c]                                     ; $771a: $f2
    push af                                       ; $771b: $f5
    db $f4                                        ; $771c: $f4
    push af                                       ; $771d: $f5
    db $f4                                        ; $771e: $f4
    dec a                                         ; $771f: $3d
    ld a, $f6                                     ; $7720: $3e $f6
    rst $30                                       ; $7722: $f7
    ld b, $06                                     ; $7723: $06 $06
    ld b, $06                                     ; $7725: $06 $06
    ld b, $06                                     ; $7727: $06 $06
    ld b, $06                                     ; $7729: $06 $06
    ld b, $06                                     ; $772b: $06 $06
    ld b, $06                                     ; $772d: $06 $06
    inc bc                                        ; $772f: $03
    inc bc                                        ; $7730: $03
    inc bc                                        ; $7731: $03
    inc bc                                        ; $7732: $03
    ldh a, [$f0]                                  ; $7733: $f0 $f0
    ldh a, [rNR14]                                ; $7735: $f0 $14
    ld a, [c]                                     ; $7737: $f2
    di                                            ; $7738: $f3
    ld a, [c]                                     ; $7739: $f2
    dec d                                         ; $773a: $15
    db $f4                                        ; $773b: $f4
    push af                                       ; $773c: $f5
    db $f4                                        ; $773d: $f4
    ld d, $f8                                     ; $773e: $16 $f8
    ld sp, hl                                     ; $7740: $f9
    dec a                                         ; $7741: $3d
    ld a, $06                                     ; $7742: $3e $06
    ld b, $06                                     ; $7744: $06 $06
    ld b, $06                                     ; $7746: $06 $06
    ld b, $06                                     ; $7748: $06 $06
    ld b, $06                                     ; $774a: $06 $06
    ld b, $06                                     ; $774c: $06 $06
    ld b, $03                                     ; $774e: $06 $03
    inc bc                                        ; $7750: $03
    inc bc                                        ; $7751: $03
    inc bc                                        ; $7752: $03
    db $10                                        ; $7753: $10
    ld de, $1312                                  ; $7754: $11 $12 $13
    or $f7                                        ; $7757: $f6 $f7
    ld hl, sp-$07                                 ; $7759: $f8 $f9
    ld a, [$fcfb]                                 ; $775b: $fa $fb $fc
    db $fd                                        ; $775e: $fd
    inc bc                                        ; $775f: $03
    inc bc                                        ; $7760: $03
    inc bc                                        ; $7761: $03
    inc bc                                        ; $7762: $03
    ld [bc], a                                    ; $7763: $02
    ld [bc], a                                    ; $7764: $02
    ld [bc], a                                    ; $7765: $02
    ld [bc], a                                    ; $7766: $02
    ld [bc], a                                    ; $7767: $02
    ld [bc], a                                    ; $7768: $02
    ld [bc], a                                    ; $7769: $02
    ld [bc], a                                    ; $776a: $02
    ld [bc], a                                    ; $776b: $02
    ld [bc], a                                    ; $776c: $02
    ld [bc], a                                    ; $776d: $02
    ld [bc], a                                    ; $776e: $02
    add b                                         ; $776f: $80
    add b                                         ; $7770: $80
    add b                                         ; $7771: $80
    add b                                         ; $7772: $80
    ld [de], a                                    ; $7773: $12
    inc de                                        ; $7774: $13
    ld c, b                                       ; $7775: $48
    ld c, c                                       ; $7776: $49
    ld hl, sp-$07                                 ; $7777: $f8 $f9
    dec a                                         ; $7779: $3d
    ld a, $fc                                     ; $777a: $3e $fc
    db $fd                                        ; $777c: $fd
    ccf                                           ; $777d: $3f
    ld b, b                                       ; $777e: $40
    inc bc                                        ; $777f: $03
    inc bc                                        ; $7780: $03
    inc bc                                        ; $7781: $03
    ld d, [hl]                                    ; $7782: $56
    ld [bc], a                                    ; $7783: $02
    ld [bc], a                                    ; $7784: $02
    ld [bc], a                                    ; $7785: $02
    ld [bc], a                                    ; $7786: $02
    ld [bc], a                                    ; $7787: $02
    ld [bc], a                                    ; $7788: $02
    ld [bc], a                                    ; $7789: $02
    ld [bc], a                                    ; $778a: $02
    ld [bc], a                                    ; $778b: $02
    ld [bc], a                                    ; $778c: $02
    ld [bc], a                                    ; $778d: $02
    ld [bc], a                                    ; $778e: $02
    add b                                         ; $778f: $80
    add b                                         ; $7790: $80
    add b                                         ; $7791: $80
    add b                                         ; $7792: $80
    ld [$0a09], sp                                ; $7793: $08 $09 $0a
    dec bc                                        ; $7796: $0b
    inc c                                         ; $7797: $0c
    dec c                                         ; $7798: $0d
    ld c, $0f                                     ; $7799: $0e $0f
    db $10                                        ; $779b: $10
    ld de, $1312                                  ; $779c: $11 $12 $13
    or $f7                                        ; $779f: $f6 $f7
    ld hl, sp-$07                                 ; $77a1: $f8 $f9
    ld [bc], a                                    ; $77a3: $02
    ld [bc], a                                    ; $77a4: $02
    ld [bc], a                                    ; $77a5: $02
    ld [bc], a                                    ; $77a6: $02
    inc bc                                        ; $77a7: $03
    ld [bc], a                                    ; $77a8: $02
    ld [bc], a                                    ; $77a9: $02
    ld [bc], a                                    ; $77aa: $02
    inc bc                                        ; $77ab: $03
    ld [bc], a                                    ; $77ac: $02
    ld [bc], a                                    ; $77ad: $02
    ld [bc], a                                    ; $77ae: $02
    inc bc                                        ; $77af: $03
    ld [bc], a                                    ; $77b0: $02
    ld [bc], a                                    ; $77b1: $02
    ld [bc], a                                    ; $77b2: $02
    ld [$9f9e], sp                                ; $77b3: $08 $9e $9f
    and b                                         ; $77b6: $a0
    inc c                                         ; $77b7: $0c
    and c                                         ; $77b8: $a1
    and d                                         ; $77b9: $a2
    and e                                         ; $77ba: $a3
    db $10                                        ; $77bb: $10
    ld de, $a5a4                                  ; $77bc: $11 $a4 $a5
    or $f7                                        ; $77bf: $f6 $f7
    and [hl]                                      ; $77c1: $a6
    and a                                         ; $77c2: $a7
    ld [bc], a                                    ; $77c3: $02
    adc h                                         ; $77c4: $8c
    adc h                                         ; $77c5: $8c
    adc h                                         ; $77c6: $8c
    ld [bc], a                                    ; $77c7: $02
    ld a, [bc]                                    ; $77c8: $0a
    adc h                                         ; $77c9: $8c
    adc h                                         ; $77ca: $8c
    ld [bc], a                                    ; $77cb: $02
    ld [bc], a                                    ; $77cc: $02
    ld a, [bc]                                    ; $77cd: $0a
    adc h                                         ; $77ce: $8c
    ld [bc], a                                    ; $77cf: $02
    ld [bc], a                                    ; $77d0: $02
    ld a, [bc]                                    ; $77d1: $0a
    ld a, [bc]                                    ; $77d2: $0a
    xor b                                         ; $77d3: $a8
    xor c                                         ; $77d4: $a9
    xor d                                         ; $77d5: $aa
    xor b                                         ; $77d6: $a8
    xor e                                         ; $77d7: $ab
    xor h                                         ; $77d8: $ac
    xor h                                         ; $77d9: $ac
    xor e                                         ; $77da: $ab
    xor l                                         ; $77db: $ad
    xor [hl]                                      ; $77dc: $ae
    xor [hl]                                      ; $77dd: $ae
    xor l                                         ; $77de: $ad
    xor a                                         ; $77df: $af
    or b                                          ; $77e0: $b0
    or c                                          ; $77e1: $b1
    or d                                          ; $77e2: $b2
    adc h                                         ; $77e3: $8c
    adc h                                         ; $77e4: $8c
    adc h                                         ; $77e5: $8c
    xor h                                         ; $77e6: $ac
    adc h                                         ; $77e7: $8c
    adc h                                         ; $77e8: $8c
    xor h                                         ; $77e9: $ac
    xor h                                         ; $77ea: $ac
    adc h                                         ; $77eb: $8c
    adc h                                         ; $77ec: $8c
    xor h                                         ; $77ed: $ac
    xor h                                         ; $77ee: $ac
    ld a, [bc]                                    ; $77ef: $0a
    ld a, [bc]                                    ; $77f0: $0a
    ld a, [bc]                                    ; $77f1: $0a
    ld a, [bc]                                    ; $77f2: $0a
    ld a, [$b3fb]                                 ; $77f3: $fa $fb $b3
    or h                                          ; $77f6: $b4
    cp $ff                                        ; $77f7: $fe $ff
    or l                                          ; $77f9: $b5
    or [hl]                                       ; $77fa: $b6
    ld [$b709], sp                                ; $77fb: $08 $09 $b7
    cp b                                          ; $77fe: $b8
    inc c                                         ; $77ff: $0c
    dec c                                         ; $7800: $0d
    ld c, $b9                                     ; $7801: $0e $b9
    ld [bc], a                                    ; $7803: $02
    ld [bc], a                                    ; $7804: $02
    ld a, [bc]                                    ; $7805: $0a
    ld a, [bc]                                    ; $7806: $0a
    ld [bc], a                                    ; $7807: $02
    ld [bc], a                                    ; $7808: $02
    ld a, [bc]                                    ; $7809: $0a
    ld a, [bc]                                    ; $780a: $0a
    ld [bc], a                                    ; $780b: $02
    ld [bc], a                                    ; $780c: $02
    ld a, [bc]                                    ; $780d: $0a
    ld a, [bc]                                    ; $780e: $0a
    ld [bc], a                                    ; $780f: $02
    ld [bc], a                                    ; $7810: $02
    ld [bc], a                                    ; $7811: $02
    ld a, [bc]                                    ; $7812: $0a
    cp d                                          ; $7813: $ba
    cp e                                          ; $7814: $bb
    cp h                                          ; $7815: $bc
    cp l                                          ; $7816: $bd
    cp [hl]                                       ; $7817: $be
    cp a                                          ; $7818: $bf
    ret nz                                        ; $7819: $c0

    pop bc                                        ; $781a: $c1
    jp nz, $c4c3                                  ; $781b: $c2 $c3 $c4

    push bc                                       ; $781e: $c5
    add $c7                                       ; $781f: $c6 $c7
    ret z                                         ; $7821: $c8

    ret                                           ; $7822: $c9


    ld a, [bc]                                    ; $7823: $0a
    ld a, [bc]                                    ; $7824: $0a
    ld a, [bc]                                    ; $7825: $0a
    ld a, [bc]                                    ; $7826: $0a
    ld a, [bc]                                    ; $7827: $0a
    ld a, [bc]                                    ; $7828: $0a
    ld a, [bc]                                    ; $7829: $0a
    ld a, [bc]                                    ; $782a: $0a
    ld a, [bc]                                    ; $782b: $0a
    ld a, [bc]                                    ; $782c: $0a
    ld a, [bc]                                    ; $782d: $0a
    ld a, [bc]                                    ; $782e: $0a
    ld a, [bc]                                    ; $782f: $0a
    ld a, [bc]                                    ; $7830: $0a
    ld a, [bc]                                    ; $7831: $0a
    ld a, [bc]                                    ; $7832: $0a
    and b                                         ; $7833: $a0
    sbc a                                         ; $7834: $9f
    sbc [hl]                                      ; $7835: $9e
    ld b, a                                       ; $7836: $47
    and e                                         ; $7837: $a3
    and d                                         ; $7838: $a2
    jp z, $a519                                   ; $7839: $ca $19 $a5

    bit 1, b                                      ; $783c: $cb $48
    ld c, c                                       ; $783e: $49
    call z, $3dcd                                 ; $783f: $cc $cd $3d
    ld a, $ac                                     ; $7842: $3e $ac
    xor h                                         ; $7844: $ac
    xor h                                         ; $7845: $ac
    ld [bc], a                                    ; $7846: $02
    xor h                                         ; $7847: $ac
    xor h                                         ; $7848: $ac
    ld a, [bc]                                    ; $7849: $0a
    ld [bc], a                                    ; $784a: $02
    xor h                                         ; $784b: $ac
    ld a, [bc]                                    ; $784c: $0a
    ld [bc], a                                    ; $784d: $02
    ld [bc], a                                    ; $784e: $02
    ld a, [bc]                                    ; $784f: $0a
    ld a, [bc]                                    ; $7850: $0a
    ld [bc], a                                    ; $7851: $02
    ld [bc], a                                    ; $7852: $02
    ld a, [bc]                                    ; $7853: $0a
    dec bc                                        ; $7854: $0b
    ld b, [hl]                                    ; $7855: $46
    ld b, a                                       ; $7856: $47
    ld c, $0f                                     ; $7857: $0e $0f
    jr @+$1b                                      ; $7859: $18 $19

    ld [de], a                                    ; $785b: $12
    inc de                                        ; $785c: $13
    ld c, b                                       ; $785d: $48
    ld c, c                                       ; $785e: $49
    ld hl, sp-$07                                 ; $785f: $f8 $f9
    dec a                                         ; $7861: $3d
    ld a, $02                                     ; $7862: $3e $02
    ld [bc], a                                    ; $7864: $02
    ld [bc], a                                    ; $7865: $02
    inc bc                                        ; $7866: $03
    ld [bc], a                                    ; $7867: $02
    ld [bc], a                                    ; $7868: $02
    ld [bc], a                                    ; $7869: $02
    inc bc                                        ; $786a: $03
    ld [bc], a                                    ; $786b: $02
    ld [bc], a                                    ; $786c: $02
    ld [bc], a                                    ; $786d: $02
    ld [bc], a                                    ; $786e: $02
    ld [bc], a                                    ; $786f: $02
    ld [bc], a                                    ; $7870: $02
    ld [bc], a                                    ; $7871: $02
    ld [bc], a                                    ; $7872: $02
    adc $cf                                       ; $7873: $ce $cf
    ccf                                           ; $7875: $3f
    ld b, b                                       ; $7876: $40
    or l                                          ; $7877: $b5
    ret nc                                        ; $7878: $d0

    ld b, c                                       ; $7879: $41
    ld b, d                                       ; $787a: $42
    pop de                                        ; $787b: $d1
    jp nc, Jump_083_4746                          ; $787c: $d2 $46 $47

    db $d3                                        ; $787f: $d3
    call nc, $1918                                ; $7880: $d4 $18 $19
    ld a, [bc]                                    ; $7883: $0a
    ld a, [bc]                                    ; $7884: $0a
    ld [bc], a                                    ; $7885: $02
    ld [bc], a                                    ; $7886: $02
    ld a, [bc]                                    ; $7887: $0a
    ld a, [bc]                                    ; $7888: $0a
    ld [bc], a                                    ; $7889: $02
    ld [bc], a                                    ; $788a: $02
    ld a, [bc]                                    ; $788b: $0a
    ld a, [bc]                                    ; $788c: $0a
    ld [bc], a                                    ; $788d: $02
    ld [bc], a                                    ; $788e: $02
    ld a, [bc]                                    ; $788f: $0a
    ld a, [bc]                                    ; $7890: $0a
    ld [bc], a                                    ; $7891: $02
    ld [bc], a                                    ; $7892: $02
    db $fc                                        ; $7893: $fc
    db $fd                                        ; $7894: $fd
    ccf                                           ; $7895: $3f
    ld b, b                                       ; $7896: $40
    nop                                           ; $7897: $00
    ld bc, $4241                                  ; $7898: $01 $41 $42
    push de                                       ; $789b: $d5
    sub $d6                                       ; $789c: $d6 $d6
    sub $d7                                       ; $789e: $d6 $d7
    ret c                                         ; $78a0: $d8

    ret c                                         ; $78a1: $d8

    ret c                                         ; $78a2: $d8

    ld [bc], a                                    ; $78a3: $02
    ld [bc], a                                    ; $78a4: $02
    ld [bc], a                                    ; $78a5: $02
    ld [bc], a                                    ; $78a6: $02
    ld [bc], a                                    ; $78a7: $02
    ld [bc], a                                    ; $78a8: $02
    ld [bc], a                                    ; $78a9: $02
    inc bc                                        ; $78aa: $03
    adc l                                         ; $78ab: $8d
    adc l                                         ; $78ac: $8d
    adc l                                         ; $78ad: $8d
    adc l                                         ; $78ae: $8d
    adc l                                         ; $78af: $8d
    adc l                                         ; $78b0: $8d
    adc l                                         ; $78b1: $8d
    adc l                                         ; $78b2: $8d
    ld c, b                                       ; $78b3: $48
    ld c, c                                       ; $78b4: $49
    db $10                                        ; $78b5: $10
    ld de, $3e3d                                  ; $78b6: $11 $3d $3e
    or $f7                                        ; $78b9: $f6 $f7
    ccf                                           ; $78bb: $3f
    ld b, b                                       ; $78bc: $40
    ld a, [$41fb]                                 ; $78bd: $fa $fb $41
    ld b, d                                       ; $78c0: $42
    cp $ff                                        ; $78c1: $fe $ff
    ld [bc], a                                    ; $78c3: $02
    ld [bc], a                                    ; $78c4: $02
    ld [bc], a                                    ; $78c5: $02
    inc bc                                        ; $78c6: $03
    ld [bc], a                                    ; $78c7: $02
    ld [bc], a                                    ; $78c8: $02
    ld [bc], a                                    ; $78c9: $02
    inc bc                                        ; $78ca: $03
    ld [bc], a                                    ; $78cb: $02
    ld [bc], a                                    ; $78cc: $02
    ld [bc], a                                    ; $78cd: $02
    inc bc                                        ; $78ce: $03
    ld [bc], a                                    ; $78cf: $02
    ld [bc], a                                    ; $78d0: $02
    ld [bc], a                                    ; $78d1: $02
    inc bc                                        ; $78d2: $03
    rst $10                                       ; $78d3: $d7
    ret c                                         ; $78d4: $d8

    ret c                                         ; $78d5: $d8

    ret c                                         ; $78d6: $d8

    rst $10                                       ; $78d7: $d7
    ret c                                         ; $78d8: $d8

    ret c                                         ; $78d9: $d8

    ret c                                         ; $78da: $d8

    reti                                          ; $78db: $d9


    jp c, $dada                                   ; $78dc: $da $da $da

    db $db                                        ; $78df: $db
    call c, $dedd                                 ; $78e0: $dc $dd $de
    adc l                                         ; $78e3: $8d
    adc l                                         ; $78e4: $8d
    adc l                                         ; $78e5: $8d
    adc l                                         ; $78e6: $8d
    adc l                                         ; $78e7: $8d
    adc l                                         ; $78e8: $8d
    adc l                                         ; $78e9: $8d
    adc l                                         ; $78ea: $8d
    adc l                                         ; $78eb: $8d
    adc l                                         ; $78ec: $8d
    adc l                                         ; $78ed: $8d
    adc l                                         ; $78ee: $8d
    dec c                                         ; $78ef: $0d
    dec c                                         ; $78f0: $0d
    dec c                                         ; $78f1: $0d
    dec c                                         ; $78f2: $0d
    ld b, [hl]                                    ; $78f3: $46
    ld b, a                                       ; $78f4: $47
    ld [$1809], sp                                ; $78f5: $08 $09 $18
    add hl, de                                    ; $78f8: $19
    inc c                                         ; $78f9: $0c
    dec c                                         ; $78fa: $0d
    ld c, b                                       ; $78fb: $48
    ld c, c                                       ; $78fc: $49
    db $10                                        ; $78fd: $10
    ld de, $3e3d                                  ; $78fe: $11 $3d $3e
    or $f7                                        ; $7901: $f6 $f7
    ld [bc], a                                    ; $7903: $02
    ld [bc], a                                    ; $7904: $02
    ld [bc], a                                    ; $7905: $02
    inc bc                                        ; $7906: $03
    ld [bc], a                                    ; $7907: $02
    ld [bc], a                                    ; $7908: $02
    ld [bc], a                                    ; $7909: $02
    inc bc                                        ; $790a: $03
    ld [bc], a                                    ; $790b: $02
    ld [bc], a                                    ; $790c: $02
    ld [bc], a                                    ; $790d: $02
    inc bc                                        ; $790e: $03
    ld [bc], a                                    ; $790f: $02
    ld [bc], a                                    ; $7910: $02
    ld [bc], a                                    ; $7911: $02
    inc bc                                        ; $7912: $03
    rst $18                                       ; $7913: $df
    ldh [$e1], a                                  ; $7914: $e0 $e1
    ld [c], a                                     ; $7916: $e2
    db $e3                                        ; $7917: $e3
    db $e4                                        ; $7918: $e4
    push hl                                       ; $7919: $e5
    and $e7                                       ; $791a: $e6 $e7
    add sp, -$17                                  ; $791c: $e8 $e9
    ld [$eceb], a                                 ; $791e: $ea $eb $ec
    db $ed                                        ; $7921: $ed
    db $ec                                        ; $7922: $ec
    dec c                                         ; $7923: $0d
    dec c                                         ; $7924: $0d
    dec c                                         ; $7925: $0d
    dec c                                         ; $7926: $0d
    dec c                                         ; $7927: $0d
    dec c                                         ; $7928: $0d
    dec c                                         ; $7929: $0d
    dec c                                         ; $792a: $0d
    dec c                                         ; $792b: $0d
    dec c                                         ; $792c: $0d
    dec c                                         ; $792d: $0d
    dec c                                         ; $792e: $0d
    dec c                                         ; $792f: $0d
    dec c                                         ; $7930: $0d
    dec c                                         ; $7931: $0d
    dec l                                         ; $7932: $2d
    ld d, $ee                                     ; $7933: $16 $ee
    ld b, $ed                                     ; $7935: $06 $ed
    inc c                                         ; $7937: $0c
    dec c                                         ; $7938: $0d
    ld b, $17                                     ; $7939: $06 $17
    db $10                                        ; $793b: $10
    ld de, $17ee                                  ; $793c: $11 $ee $17
    ld [bc], a                                    ; $793f: $02
    inc bc                                        ; $7940: $03
    inc b                                         ; $7941: $04
    rla                                           ; $7942: $17
    ld h, $2e                                     ; $7943: $26 $2e
    add b                                         ; $7945: $80
    add b                                         ; $7946: $80
    inc bc                                        ; $7947: $03
    inc bc                                        ; $7948: $03
    add b                                         ; $7949: $80
    and b                                         ; $794a: $a0
    ld [bc], a                                    ; $794b: $02
    inc bc                                        ; $794c: $03
    add b                                         ; $794d: $80
    and b                                         ; $794e: $a0
    add b                                         ; $794f: $80
    add b                                         ; $7950: $80
    add b                                         ; $7951: $80
    and b                                         ; $7952: $a0
    xor $ed                                       ; $7953: $ee $ed
    db $ed                                        ; $7955: $ed
    db $ed                                        ; $7956: $ed
    ld d, l                                       ; $7957: $55
    inc bc                                        ; $7958: $03
    adc l                                         ; $7959: $8d
    db $ed                                        ; $795a: $ed
    dec b                                         ; $795b: $05
    adc [hl]                                      ; $795c: $8e
    xor $ed                                       ; $795d: $ee $ed
    rlca                                          ; $795f: $07
    adc a                                         ; $7960: $8f
    ld b, $ed                                     ; $7961: $06 $ed
    add b                                         ; $7963: $80
    add b                                         ; $7964: $80
    add b                                         ; $7965: $80
    add b                                         ; $7966: $80
    add b                                         ; $7967: $80
    add b                                         ; $7968: $80
    adc b                                         ; $7969: $88
    add b                                         ; $796a: $80
    ld h, $2e                                     ; $796b: $26 $2e
    add b                                         ; $796d: $80
    add b                                         ; $796e: $80
    ld h, $2e                                     ; $796f: $26 $2e
    add b                                         ; $7971: $80
    add b                                         ; $7972: $80
    ld a, [$fcfb]                                 ; $7973: $fa $fb $fc
    db $fd                                        ; $7976: $fd
    ld d, a                                       ; $7977: $57
    ld e, b                                       ; $7978: $58
    nop                                           ; $7979: $00
    ld bc, $5a59                                  ; $797a: $01 $59 $5a
    ld a, [bc]                                    ; $797d: $0a
    dec bc                                        ; $797e: $0b
    ld e, c                                       ; $797f: $59
    ld e, d                                       ; $7980: $5a
    ld c, $0f                                     ; $7981: $0e $0f
    inc bc                                        ; $7983: $03
    ld [bc], a                                    ; $7984: $02
    ld [bc], a                                    ; $7985: $02
    ld [bc], a                                    ; $7986: $02
    inc b                                         ; $7987: $04
    inc b                                         ; $7988: $04
    ld [bc], a                                    ; $7989: $02
    ld [bc], a                                    ; $798a: $02
    inc b                                         ; $798b: $04
    inc b                                         ; $798c: $04
    inc bc                                        ; $798d: $03
    ld [bc], a                                    ; $798e: $02
    inc b                                         ; $798f: $04
    inc b                                         ; $7990: $04
    inc bc                                        ; $7991: $03
    ld [bc], a                                    ; $7992: $02
    ld e, c                                       ; $7993: $59
    ld e, d                                       ; $7994: $5a
    ld [de], a                                    ; $7995: $12
    inc de                                        ; $7996: $13
    ld e, e                                       ; $7997: $5b
    ld e, h                                       ; $7998: $5c
    ld hl, sp-$07                                 ; $7999: $f8 $f9
    ld e, l                                       ; $799b: $5d
    ld e, [hl]                                    ; $799c: $5e
    db $fc                                        ; $799d: $fc
    db $fd                                        ; $799e: $fd
    cp $ff                                        ; $799f: $fe $ff
    nop                                           ; $79a1: $00
    ld bc, $0404                                  ; $79a2: $01 $04 $04
    inc bc                                        ; $79a5: $03
    ld [bc], a                                    ; $79a6: $02
    inc b                                         ; $79a7: $04
    inc b                                         ; $79a8: $04
    inc bc                                        ; $79a9: $03
    ld [bc], a                                    ; $79aa: $02
    inc b                                         ; $79ab: $04
    inc b                                         ; $79ac: $04
    inc bc                                        ; $79ad: $03
    ld [bc], a                                    ; $79ae: $02
    inc bc                                        ; $79af: $03
    inc bc                                        ; $79b0: $03
    inc bc                                        ; $79b1: $03
    ld [bc], a                                    ; $79b2: $02
    ccf                                           ; $79b3: $3f
    ld b, b                                       ; $79b4: $40
    ld a, [$41fb]                                 ; $79b5: $fa $fb $41
    ld b, d                                       ; $79b8: $42
    cp $ff                                        ; $79b9: $fe $ff
    ld b, [hl]                                    ; $79bb: $46
    ld b, a                                       ; $79bc: $47
    ld [$1809], sp                                ; $79bd: $08 $09 $18
    add hl, de                                    ; $79c0: $19
    inc c                                         ; $79c1: $0c
    dec c                                         ; $79c2: $0d
    ld [bc], a                                    ; $79c3: $02
    ld [bc], a                                    ; $79c4: $02
    ld [bc], a                                    ; $79c5: $02
    inc bc                                        ; $79c6: $03
    ld [bc], a                                    ; $79c7: $02
    ld [bc], a                                    ; $79c8: $02
    ld [bc], a                                    ; $79c9: $02
    ld [bc], a                                    ; $79ca: $02
    ld [bc], a                                    ; $79cb: $02
    ld [bc], a                                    ; $79cc: $02
    ld [bc], a                                    ; $79cd: $02
    ld [bc], a                                    ; $79ce: $02
    ld [bc], a                                    ; $79cf: $02
    ld [bc], a                                    ; $79d0: $02
    ld [bc], a                                    ; $79d1: $02
    ld [bc], a                                    ; $79d2: $02
    db $fc                                        ; $79d3: $fc
    db $fd                                        ; $79d4: $fd
    ccf                                           ; $79d5: $3f
    ld b, b                                       ; $79d6: $40
    nop                                           ; $79d7: $00
    ld bc, $4241                                  ; $79d8: $01 $41 $42
    ld a, [bc]                                    ; $79db: $0a
    dec bc                                        ; $79dc: $0b
    ld b, [hl]                                    ; $79dd: $46
    ld b, a                                       ; $79de: $47
    ld c, $0f                                     ; $79df: $0e $0f
    jr jr_083_79fc                                ; $79e1: $18 $19

    inc bc                                        ; $79e3: $03
    inc bc                                        ; $79e4: $03
    inc bc                                        ; $79e5: $03
    inc bc                                        ; $79e6: $03
    ld [bc], a                                    ; $79e7: $02
    ld [bc], a                                    ; $79e8: $02
    ld [bc], a                                    ; $79e9: $02
    inc bc                                        ; $79ea: $03
    ld [bc], a                                    ; $79eb: $02
    ld [bc], a                                    ; $79ec: $02
    ld [bc], a                                    ; $79ed: $02
    inc bc                                        ; $79ee: $03
    ld [bc], a                                    ; $79ef: $02
    ld [bc], a                                    ; $79f0: $02
    ld [bc], a                                    ; $79f1: $02
    inc bc                                        ; $79f2: $03
    ld c, b                                       ; $79f3: $48
    ld c, c                                       ; $79f4: $49
    db $10                                        ; $79f5: $10
    ld de, $3e3d                                  ; $79f6: $11 $3d $3e
    or $f7                                        ; $79f9: $f6 $f7
    ccf                                           ; $79fb: $3f

jr_083_79fc:
    ld b, b                                       ; $79fc: $40
    ld a, [$41fb]                                 ; $79fd: $fa $fb $41
    rst $28                                       ; $7a00: $ef
    cp $ff                                        ; $7a01: $fe $ff
    ld [bc], a                                    ; $7a03: $02
    ld [bc], a                                    ; $7a04: $02
    ld [bc], a                                    ; $7a05: $02
    ld [bc], a                                    ; $7a06: $02
    ld [bc], a                                    ; $7a07: $02
    ld [bc], a                                    ; $7a08: $02

jr_083_7a09:
    ld [bc], a                                    ; $7a09: $02
    ld [bc], a                                    ; $7a0a: $02
    ld [bc], a                                    ; $7a0b: $02
    ld [bc], a                                    ; $7a0c: $02
    ld [bc], a                                    ; $7a0d: $02
    ld [bc], a                                    ; $7a0e: $02
    ld [bc], a                                    ; $7a0f: $02
    add hl, bc                                    ; $7a10: $09
    ld [bc], a                                    ; $7a11: $02
    ld [bc], a                                    ; $7a12: $02
    ld b, [hl]                                    ; $7a13: $46
    ldh a, [$f1]                                  ; $7a14: $f0 $f1
    ld a, [c]                                     ; $7a16: $f2
    jr jr_083_7a09                                ; $7a17: $18 $f0

    pop af                                        ; $7a19: $f1
    di                                            ; $7a1a: $f3
    ld c, b                                       ; $7a1b: $48
    ldh a, [$f1]                                  ; $7a1c: $f0 $f1
    ld a, [c]                                     ; $7a1e: $f2
    dec a                                         ; $7a1f: $3d
    ldh a, [$f1]                                  ; $7a20: $f0 $f1
    di                                            ; $7a22: $f3
    inc bc                                        ; $7a23: $03
    add hl, bc                                    ; $7a24: $09
    add hl, bc                                    ; $7a25: $09
    add hl, bc                                    ; $7a26: $09
    inc bc                                        ; $7a27: $03
    add hl, bc                                    ; $7a28: $09
    add hl, bc                                    ; $7a29: $09
    add hl, bc                                    ; $7a2a: $09
    inc bc                                        ; $7a2b: $03
    add hl, bc                                    ; $7a2c: $09
    add hl, bc                                    ; $7a2d: $09
    add hl, bc                                    ; $7a2e: $09
    inc bc                                        ; $7a2f: $03
    add hl, bc                                    ; $7a30: $09
    add hl, bc                                    ; $7a31: $09
    add hl, bc                                    ; $7a32: $09
    db $f4                                        ; $7a33: $f4
    push af                                       ; $7a34: $f5
    ld a, [c]                                     ; $7a35: $f2
    di                                            ; $7a36: $f3
    push af                                       ; $7a37: $f5
    ld a, [c]                                     ; $7a38: $f2
    di                                            ; $7a39: $f3
    or $f4                                        ; $7a3a: $f6 $f4
    push af                                       ; $7a3c: $f5
    ld a, [c]                                     ; $7a3d: $f2
    di                                            ; $7a3e: $f3
    push af                                       ; $7a3f: $f5
    ld a, [c]                                     ; $7a40: $f2
    di                                            ; $7a41: $f3
    or $09                                        ; $7a42: $f6 $09
    add hl, bc                                    ; $7a44: $09
    add hl, bc                                    ; $7a45: $09
    add hl, bc                                    ; $7a46: $09
    add hl, bc                                    ; $7a47: $09
    add hl, bc                                    ; $7a48: $09
    add hl, bc                                    ; $7a49: $09
    add hl, bc                                    ; $7a4a: $09
    add hl, bc                                    ; $7a4b: $09
    add hl, bc                                    ; $7a4c: $09
    add hl, bc                                    ; $7a4d: $09
    add hl, bc                                    ; $7a4e: $09
    add hl, bc                                    ; $7a4f: $09
    add hl, bc                                    ; $7a50: $09
    add hl, bc                                    ; $7a51: $09
    add hl, bc                                    ; $7a52: $09
    ccf                                           ; $7a53: $3f
    ldh a, [$f7]                                  ; $7a54: $f0 $f7
    ld hl, sp+$41                                 ; $7a56: $f8 $41
    ldh a, [$f7]                                  ; $7a58: $f0 $f7
    ld hl, sp+$46                                 ; $7a5a: $f8 $46
    ldh a, [$f9]                                  ; $7a5c: $f0 $f9
    ld a, [$f018]                                 ; $7a5e: $fa $18 $f0
    ei                                            ; $7a61: $fb
    db $fc                                        ; $7a62: $fc
    inc bc                                        ; $7a63: $03
    add hl, bc                                    ; $7a64: $09
    add hl, bc                                    ; $7a65: $09
    add hl, bc                                    ; $7a66: $09
    inc bc                                        ; $7a67: $03
    add hl, bc                                    ; $7a68: $09
    add hl, bc                                    ; $7a69: $09
    add hl, bc                                    ; $7a6a: $09
    inc bc                                        ; $7a6b: $03
    add hl, bc                                    ; $7a6c: $09
    add hl, bc                                    ; $7a6d: $09
    add hl, bc                                    ; $7a6e: $09
    inc bc                                        ; $7a6f: $03
    add hl, bc                                    ; $7a70: $09
    add hl, bc                                    ; $7a71: $09
    add hl, bc                                    ; $7a72: $09
    db $fd                                        ; $7a73: $fd
    cp $ff                                        ; $7a74: $fe $ff
    nop                                           ; $7a76: $00
    db $fd                                        ; $7a77: $fd
    cp $ff                                        ; $7a78: $fe $ff
    nop                                           ; $7a7a: $00
    ld bc, $01fa                                  ; $7a7b: $01 $fa $01
    ld [bc], a                                    ; $7a7e: $02
    inc bc                                        ; $7a7f: $03
    db $fc                                        ; $7a80: $fc
    inc bc                                        ; $7a81: $03
    db $fc                                        ; $7a82: $fc
    add hl, bc                                    ; $7a83: $09
    add hl, bc                                    ; $7a84: $09
    add hl, bc                                    ; $7a85: $09
    add hl, bc                                    ; $7a86: $09
    add hl, bc                                    ; $7a87: $09
    add hl, bc                                    ; $7a88: $09
    add hl, bc                                    ; $7a89: $09
    add hl, bc                                    ; $7a8a: $09
    add hl, bc                                    ; $7a8b: $09
    add hl, bc                                    ; $7a8c: $09
    add hl, bc                                    ; $7a8d: $09
    add hl, bc                                    ; $7a8e: $09
    add hl, bc                                    ; $7a8f: $09
    add hl, bc                                    ; $7a90: $09
    add hl, bc                                    ; $7a91: $09
    add hl, bc                                    ; $7a92: $09
    inc d                                         ; $7a93: $14
    pop af                                        ; $7a94: $f1
    ld b, $ed                                     ; $7a95: $06 $ed
    dec d                                         ; $7a97: $15
    sub b                                         ; $7a98: $90
    ld b, $ed                                     ; $7a99: $06 $ed
    ld d, $ee                                     ; $7a9b: $16 $ee
    ld b, $ed                                     ; $7a9d: $06 $ed
    inc c                                         ; $7a9f: $0c
    dec c                                         ; $7aa0: $0d
    ld b, $17                                     ; $7aa1: $06 $17
    ld h, $26                                     ; $7aa3: $26 $26
    add b                                         ; $7aa5: $80
    add b                                         ; $7aa6: $80
    ld h, $2e                                     ; $7aa7: $26 $2e
    add b                                         ; $7aa9: $80
    add b                                         ; $7aaa: $80
    ld h, $2e                                     ; $7aab: $26 $2e
    add b                                         ; $7aad: $80
    add b                                         ; $7aae: $80
    inc bc                                        ; $7aaf: $03
    inc bc                                        ; $7ab0: $03
    add b                                         ; $7ab1: $80
    and b                                         ; $7ab2: $a0
    db $10                                        ; $7ab3: $10
    ld de, $17ee                                  ; $7ab4: $11 $ee $17
    ld [bc], a                                    ; $7ab7: $02
    inc bc                                        ; $7ab8: $03
    inc b                                         ; $7ab9: $04
    rla                                           ; $7aba: $17
    xor $ed                                       ; $7abb: $ee $ed
    db $ed                                        ; $7abd: $ed
    db $ed                                        ; $7abe: $ed
    xor $ed                                       ; $7abf: $ee $ed
    db $ed                                        ; $7ac1: $ed
    db $ed                                        ; $7ac2: $ed
    ld [bc], a                                    ; $7ac3: $02
    inc bc                                        ; $7ac4: $03
    add b                                         ; $7ac5: $80
    and b                                         ; $7ac6: $a0
    add b                                         ; $7ac7: $80
    add b                                         ; $7ac8: $80
    add b                                         ; $7ac9: $80
    and b                                         ; $7aca: $a0
    add b                                         ; $7acb: $80
    add b                                         ; $7acc: $80
    add b                                         ; $7acd: $80
    add b                                         ; $7ace: $80
    add b                                         ; $7acf: $80
    add b                                         ; $7ad0: $80
    add b                                         ; $7ad1: $80
    add b                                         ; $7ad2: $80
    db $10                                        ; $7ad3: $10
    ld de, $1312                                  ; $7ad4: $11 $12 $13
    or $f7                                        ; $7ad7: $f6 $f7
    ld hl, sp-$07                                 ; $7ad9: $f8 $f9
    ld a, [$fcfb]                                 ; $7adb: $fa $fb $fc
    db $fd                                        ; $7ade: $fd
    cp $ff                                        ; $7adf: $fe $ff
    nop                                           ; $7ae1: $00
    ld bc, $0203                                  ; $7ae2: $01 $03 $02
    ld [bc], a                                    ; $7ae5: $02
    ld [bc], a                                    ; $7ae6: $02
    inc bc                                        ; $7ae7: $03
    ld [bc], a                                    ; $7ae8: $02
    ld [bc], a                                    ; $7ae9: $02
    ld [bc], a                                    ; $7aea: $02
    inc bc                                        ; $7aeb: $03
    ld [bc], a                                    ; $7aec: $02
    ld [bc], a                                    ; $7aed: $02
    ld [bc], a                                    ; $7aee: $02
    inc bc                                        ; $7aef: $03
    ld [bc], a                                    ; $7af0: $02
    ld [bc], a                                    ; $7af1: $02
    ld [bc], a                                    ; $7af2: $02
    db $ed                                        ; $7af3: $ed
    db $ed                                        ; $7af4: $ed
    db $ed                                        ; $7af5: $ed
    xor $ed                                       ; $7af6: $ee $ed
    db $ed                                        ; $7af8: $ed
    db $ed                                        ; $7af9: $ed
    xor $ed                                       ; $7afa: $ee $ed
    db $ed                                        ; $7afc: $ed
    db $ed                                        ; $7afd: $ed
    ld d, l                                       ; $7afe: $55
    db $ed                                        ; $7aff: $ed
    db $ed                                        ; $7b00: $ed
    db $ed                                        ; $7b01: $ed
    db $ed                                        ; $7b02: $ed
    add b                                         ; $7b03: $80
    add b                                         ; $7b04: $80
    add b                                         ; $7b05: $80
    add b                                         ; $7b06: $80
    add b                                         ; $7b07: $80
    add b                                         ; $7b08: $80
    add b                                         ; $7b09: $80
    add b                                         ; $7b0a: $80
    add b                                         ; $7b0b: $80
    add b                                         ; $7b0c: $80
    add b                                         ; $7b0d: $80
    add b                                         ; $7b0e: $80
    add b                                         ; $7b0f: $80
    add b                                         ; $7b10: $80
    add b                                         ; $7b11: $80
    add b                                         ; $7b12: $80
    ld [$0a09], sp                                ; $7b13: $08 $09 $0a
    dec bc                                        ; $7b16: $0b
    inc c                                         ; $7b17: $0c
    dec c                                         ; $7b18: $0d
    ld c, $0f                                     ; $7b19: $0e $0f
    inc bc                                        ; $7b1b: $03
    inc bc                                        ; $7b1c: $03
    inc bc                                        ; $7b1d: $03
    inc bc                                        ; $7b1e: $03
    db $ed                                        ; $7b1f: $ed
    db $ed                                        ; $7b20: $ed
    db $ed                                        ; $7b21: $ed
    db $ed                                        ; $7b22: $ed
    inc bc                                        ; $7b23: $03
    ld [bc], a                                    ; $7b24: $02
    ld [bc], a                                    ; $7b25: $02
    ld [bc], a                                    ; $7b26: $02
    inc bc                                        ; $7b27: $03
    ld [bc], a                                    ; $7b28: $02
    ld [bc], a                                    ; $7b29: $02
    ld [bc], a                                    ; $7b2a: $02
    add b                                         ; $7b2b: $80
    add b                                         ; $7b2c: $80
    add b                                         ; $7b2d: $80
    add b                                         ; $7b2e: $80
    add b                                         ; $7b2f: $80
    add b                                         ; $7b30: $80
    add b                                         ; $7b31: $80
    add b                                         ; $7b32: $80
    ld b, [hl]                                    ; $7b33: $46
    ld b, a                                       ; $7b34: $47
    ld [$1809], sp                                ; $7b35: $08 $09 $18
    add hl, de                                    ; $7b38: $19
    inc c                                         ; $7b39: $0c
    dec c                                         ; $7b3a: $0d
    inc bc                                        ; $7b3b: $03
    inc bc                                        ; $7b3c: $03
    inc bc                                        ; $7b3d: $03
    inc bc                                        ; $7b3e: $03
    db $ed                                        ; $7b3f: $ed
    db $ed                                        ; $7b40: $ed
    db $ed                                        ; $7b41: $ed
    db $ed                                        ; $7b42: $ed
    ld [bc], a                                    ; $7b43: $02
    ld [bc], a                                    ; $7b44: $02
    ld [bc], a                                    ; $7b45: $02
    ld [bc], a                                    ; $7b46: $02
    ld [bc], a                                    ; $7b47: $02
    ld [bc], a                                    ; $7b48: $02
    ld [bc], a                                    ; $7b49: $02
    ld [bc], a                                    ; $7b4a: $02
    add b                                         ; $7b4b: $80
    add b                                         ; $7b4c: $80
    add b                                         ; $7b4d: $80
    add b                                         ; $7b4e: $80
    add b                                         ; $7b4f: $80
    add b                                         ; $7b50: $80
    add b                                         ; $7b51: $80
    add b                                         ; $7b52: $80
    ld a, [bc]                                    ; $7b53: $0a
    dec bc                                        ; $7b54: $0b
    ld b, [hl]                                    ; $7b55: $46
    ld b, a                                       ; $7b56: $47
    ld c, $0f                                     ; $7b57: $0e $0f
    jr @+$1b                                      ; $7b59: $18 $19

    inc bc                                        ; $7b5b: $03
    inc bc                                        ; $7b5c: $03
    inc bc                                        ; $7b5d: $03
    inc bc                                        ; $7b5e: $03
    db $ed                                        ; $7b5f: $ed
    db $ed                                        ; $7b60: $ed
    db $ed                                        ; $7b61: $ed
    db $ed                                        ; $7b62: $ed
    ld [bc], a                                    ; $7b63: $02
    ld [bc], a                                    ; $7b64: $02
    ld [bc], a                                    ; $7b65: $02
    ld [bc], a                                    ; $7b66: $02
    ld [bc], a                                    ; $7b67: $02
    ld [bc], a                                    ; $7b68: $02
    ld [bc], a                                    ; $7b69: $02
    ld [bc], a                                    ; $7b6a: $02
    add b                                         ; $7b6b: $80
    add b                                         ; $7b6c: $80
    add b                                         ; $7b6d: $80
    add b                                         ; $7b6e: $80
    add b                                         ; $7b6f: $80
    add b                                         ; $7b70: $80
    add b                                         ; $7b71: $80
    add b                                         ; $7b72: $80
    ld [$0a09], sp                                ; $7b73: $08 $09 $0a
    dec bc                                        ; $7b76: $0b
    inc c                                         ; $7b77: $0c
    dec c                                         ; $7b78: $0d
    ld c, $0f                                     ; $7b79: $0e $0f
    adc l                                         ; $7b7b: $8d
    ld de, $1312                                  ; $7b7c: $11 $12 $13
    xor $f7                                       ; $7b7f: $ee $f7
    ld hl, sp-$07                                 ; $7b81: $f8 $f9
    ld [bc], a                                    ; $7b83: $02
    ld [bc], a                                    ; $7b84: $02
    ld [bc], a                                    ; $7b85: $02
    ld [bc], a                                    ; $7b86: $02
    ld [bc], a                                    ; $7b87: $02
    ld [bc], a                                    ; $7b88: $02
    ld [bc], a                                    ; $7b89: $02
    ld [bc], a                                    ; $7b8a: $02
    adc b                                         ; $7b8b: $88
    ld [bc], a                                    ; $7b8c: $02
    ld [bc], a                                    ; $7b8d: $02
    ld [bc], a                                    ; $7b8e: $02
    add b                                         ; $7b8f: $80
    ld [bc], a                                    ; $7b90: $02
    ld [bc], a                                    ; $7b91: $02
    ld [bc], a                                    ; $7b92: $02
    ld b, [hl]                                    ; $7b93: $46
    ld b, a                                       ; $7b94: $47
    ld [$1809], sp                                ; $7b95: $08 $09 $18
    add hl, de                                    ; $7b98: $19
    inc c                                         ; $7b99: $0c
    dec c                                         ; $7b9a: $0d
    ld c, b                                       ; $7b9b: $48
    ld c, c                                       ; $7b9c: $49
    db $10                                        ; $7b9d: $10
    ld [bc], a                                    ; $7b9e: $02
    dec a                                         ; $7b9f: $3d
    ld a, $f6                                     ; $7ba0: $3e $f6
    xor $02                                       ; $7ba2: $ee $02
    ld [bc], a                                    ; $7ba4: $02
    ld [bc], a                                    ; $7ba5: $02
    ld [bc], a                                    ; $7ba6: $02
    ld [bc], a                                    ; $7ba7: $02
    ld [bc], a                                    ; $7ba8: $02
    ld [bc], a                                    ; $7ba9: $02
    ld [bc], a                                    ; $7baa: $02
    ld [bc], a                                    ; $7bab: $02
    ld [bc], a                                    ; $7bac: $02
    ld [bc], a                                    ; $7bad: $02
    add b                                         ; $7bae: $80
    ld [bc], a                                    ; $7baf: $02
    ld [bc], a                                    ; $7bb0: $02
    ld [bc], a                                    ; $7bb1: $02
    add b                                         ; $7bb2: $80
    ld d, l                                       ; $7bb3: $55
    inc bc                                        ; $7bb4: $03
    inc b                                         ; $7bb5: $04
    inc b                                         ; $7bb6: $04
    db $ed                                        ; $7bb7: $ed
    db $ed                                        ; $7bb8: $ed
    dec b                                         ; $7bb9: $05
    dec b                                         ; $7bba: $05
    db $ed                                        ; $7bbb: $ed
    db $ed                                        ; $7bbc: $ed
    db $ed                                        ; $7bbd: $ed
    db $ed                                        ; $7bbe: $ed
    db $ed                                        ; $7bbf: $ed
    db $ed                                        ; $7bc0: $ed
    db $ed                                        ; $7bc1: $ed
    db $ed                                        ; $7bc2: $ed
    add b                                         ; $7bc3: $80
    add b                                         ; $7bc4: $80
    adc b                                         ; $7bc5: $88
    adc b                                         ; $7bc6: $88
    add b                                         ; $7bc7: $80
    add b                                         ; $7bc8: $80
    adc b                                         ; $7bc9: $88
    adc b                                         ; $7bca: $88
    add b                                         ; $7bcb: $80
    add b                                         ; $7bcc: $80
    add b                                         ; $7bcd: $80
    add b                                         ; $7bce: $80
    add b                                         ; $7bcf: $80
    add b                                         ; $7bd0: $80
    add b                                         ; $7bd1: $80
    add b                                         ; $7bd2: $80
    inc b                                         ; $7bd3: $04
    inc b                                         ; $7bd4: $04
    inc bc                                        ; $7bd5: $03
    inc b                                         ; $7bd6: $04
    dec b                                         ; $7bd7: $05
    dec b                                         ; $7bd8: $05
    db $ed                                        ; $7bd9: $ed
    db $ed                                        ; $7bda: $ed
    db $ed                                        ; $7bdb: $ed
    db $ed                                        ; $7bdc: $ed
    db $ed                                        ; $7bdd: $ed
    db $ed                                        ; $7bde: $ed
    db $ed                                        ; $7bdf: $ed
    db $ed                                        ; $7be0: $ed
    db $ed                                        ; $7be1: $ed
    db $ed                                        ; $7be2: $ed
    adc b                                         ; $7be3: $88
    adc b                                         ; $7be4: $88
    add b                                         ; $7be5: $80
    add b                                         ; $7be6: $80
    adc b                                         ; $7be7: $88
    adc b                                         ; $7be8: $88
    add b                                         ; $7be9: $80
    add b                                         ; $7bea: $80
    add b                                         ; $7beb: $80
    add b                                         ; $7bec: $80
    add b                                         ; $7bed: $80
    add b                                         ; $7bee: $80
    add b                                         ; $7bef: $80
    add b                                         ; $7bf0: $80
    add b                                         ; $7bf1: $80
    add b                                         ; $7bf2: $80
    ld c, b                                       ; $7bf3: $48
    ldh a, [$ed]                                  ; $7bf4: $f0 $ed
    db $ed                                        ; $7bf6: $ed
    dec a                                         ; $7bf7: $3d
    ldh a, [$ed]                                  ; $7bf8: $f0 $ed
    db $ed                                        ; $7bfa: $ed
    ccf                                           ; $7bfb: $3f
    ldh a, [$ed]                                  ; $7bfc: $f0 $ed
    db $ed                                        ; $7bfe: $ed
    ld b, c                                       ; $7bff: $41
    ldh a, [$ed]                                  ; $7c00: $f0 $ed
    db $ed                                        ; $7c02: $ed
    inc bc                                        ; $7c03: $03
    add hl, bc                                    ; $7c04: $09
    ld bc, $0301                                  ; $7c05: $01 $01 $03
    add hl, bc                                    ; $7c08: $09
    ld bc, $0301                                  ; $7c09: $01 $01 $03
    add hl, bc                                    ; $7c0c: $09
    ld bc, $0301                                  ; $7c0d: $01 $01 $03
    add hl, bc                                    ; $7c10: $09
    ld bc, $ed01                                  ; $7c11: $01 $01 $ed
    db $ed                                        ; $7c14: $ed
    db $ed                                        ; $7c15: $ed
    db $ed                                        ; $7c16: $ed
    db $ed                                        ; $7c17: $ed
    db $ed                                        ; $7c18: $ed
    db $ed                                        ; $7c19: $ed
    db $ed                                        ; $7c1a: $ed
    db $ed                                        ; $7c1b: $ed
    db $ed                                        ; $7c1c: $ed
    db $ed                                        ; $7c1d: $ed
    db $ed                                        ; $7c1e: $ed
    db $ed                                        ; $7c1f: $ed
    db $ed                                        ; $7c20: $ed
    db $ed                                        ; $7c21: $ed
    db $ed                                        ; $7c22: $ed
    ld bc, $0101                                  ; $7c23: $01 $01 $01
    ld bc, $0101                                  ; $7c26: $01 $01 $01
    ld bc, $0101                                  ; $7c29: $01 $01 $01
    ld bc, $0101                                  ; $7c2c: $01 $01 $01
    ld bc, $0101                                  ; $7c2f: $01 $01 $01
    ld bc, $0908                                  ; $7c32: $01 $08 $09
    ld a, [bc]                                    ; $7c35: $0a
    dec bc                                        ; $7c36: $0b
    inc c                                         ; $7c37: $0c
    dec c                                         ; $7c38: $0d
    ld c, $0f                                     ; $7c39: $0e $0f
    inc bc                                        ; $7c3b: $03
    inc bc                                        ; $7c3c: $03
    inc bc                                        ; $7c3d: $03
    inc bc                                        ; $7c3e: $03
    db $ed                                        ; $7c3f: $ed
    db $ed                                        ; $7c40: $ed
    db $ed                                        ; $7c41: $ed
    db $ed                                        ; $7c42: $ed
    ld [bc], a                                    ; $7c43: $02
    ld [bc], a                                    ; $7c44: $02
    ld [bc], a                                    ; $7c45: $02
    ld [bc], a                                    ; $7c46: $02
    ld [bc], a                                    ; $7c47: $02
    ld [bc], a                                    ; $7c48: $02

jr_083_7c49:
    ld [bc], a                                    ; $7c49: $02
    ld [bc], a                                    ; $7c4a: $02
    add b                                         ; $7c4b: $80
    add b                                         ; $7c4c: $80
    add b                                         ; $7c4d: $80
    add b                                         ; $7c4e: $80
    add b                                         ; $7c4f: $80
    add b                                         ; $7c50: $80
    add b                                         ; $7c51: $80
    add b                                         ; $7c52: $80
    ld b, [hl]                                    ; $7c53: $46
    ldh a, [$ed]                                  ; $7c54: $f0 $ed
    db $ed                                        ; $7c56: $ed
    jr jr_083_7c49                                ; $7c57: $18 $f0

    db $ed                                        ; $7c59: $ed
    db $ed                                        ; $7c5a: $ed
    inc bc                                        ; $7c5b: $03
    inc bc                                        ; $7c5c: $03
    inc bc                                        ; $7c5d: $03
    inc bc                                        ; $7c5e: $03
    db $ed                                        ; $7c5f: $ed
    db $ed                                        ; $7c60: $ed
    db $ed                                        ; $7c61: $ed
    db $ed                                        ; $7c62: $ed
    inc bc                                        ; $7c63: $03
    add hl, bc                                    ; $7c64: $09
    ld bc, $0301                                  ; $7c65: $01 $01 $03
    add hl, bc                                    ; $7c68: $09
    ld bc, $8001                                  ; $7c69: $01 $01 $80
    add b                                         ; $7c6c: $80
    add b                                         ; $7c6d: $80
    add b                                         ; $7c6e: $80
    add b                                         ; $7c6f: $80
    add b                                         ; $7c70: $80
    add b                                         ; $7c71: $80
    add b                                         ; $7c72: $80
    db $ed                                        ; $7c73: $ed
    db $ed                                        ; $7c74: $ed
    db $ed                                        ; $7c75: $ed
    db $ed                                        ; $7c76: $ed
    db $ed                                        ; $7c77: $ed
    db $ed                                        ; $7c78: $ed
    db $ed                                        ; $7c79: $ed
    db $ed                                        ; $7c7a: $ed
    inc bc                                        ; $7c7b: $03
    inc bc                                        ; $7c7c: $03
    inc bc                                        ; $7c7d: $03
    inc bc                                        ; $7c7e: $03
    db $ed                                        ; $7c7f: $ed
    db $ed                                        ; $7c80: $ed
    db $ed                                        ; $7c81: $ed
    db $ed                                        ; $7c82: $ed
    ld bc, $0101                                  ; $7c83: $01 $01 $01
    ld bc, $0101                                  ; $7c86: $01 $01 $01
    ld bc, $8001                                  ; $7c89: $01 $01 $80
    add b                                         ; $7c8c: $80
    add b                                         ; $7c8d: $80
    add b                                         ; $7c8e: $80
    add b                                         ; $7c8f: $80
    add b                                         ; $7c90: $80
    add b                                         ; $7c91: $80
    add b                                         ; $7c92: $80
    xor $ed                                       ; $7c93: $ee $ed
    db $ed                                        ; $7c95: $ed
    db $ed                                        ; $7c96: $ed
    xor $ed                                       ; $7c97: $ee $ed
    db $ed                                        ; $7c99: $ed
    db $ed                                        ; $7c9a: $ed
    inc b                                         ; $7c9b: $04
    db $ed                                        ; $7c9c: $ed
    db $ed                                        ; $7c9d: $ed
    db $ed                                        ; $7c9e: $ed
    db $ed                                        ; $7c9f: $ed
    db $ed                                        ; $7ca0: $ed
    db $ed                                        ; $7ca1: $ed
    db $ed                                        ; $7ca2: $ed
    add b                                         ; $7ca3: $80
    add b                                         ; $7ca4: $80
    add b                                         ; $7ca5: $80
    add b                                         ; $7ca6: $80
    add b                                         ; $7ca7: $80
    add b                                         ; $7ca8: $80
    add b                                         ; $7ca9: $80
    add b                                         ; $7caa: $80
    add b                                         ; $7cab: $80
    add b                                         ; $7cac: $80
    add b                                         ; $7cad: $80
    add b                                         ; $7cae: $80
    add b                                         ; $7caf: $80
    add b                                         ; $7cb0: $80
    add b                                         ; $7cb1: $80
    add b                                         ; $7cb2: $80
    ld a, [$fcfb]                                 ; $7cb3: $fa $fb $fc
    ld e, a                                       ; $7cb6: $5f
    cp $60                                        ; $7cb7: $fe $60
    ld b, $07                                     ; $7cb9: $06 $07
    ld [$0806], sp                                ; $7cbb: $08 $06 $08
    add hl, bc                                    ; $7cbe: $09
    inc c                                         ; $7cbf: $0c
    ld a, [bc]                                    ; $7cc0: $0a
    dec bc                                        ; $7cc1: $0b
    inc c                                         ; $7cc2: $0c
    ld [bc], a                                    ; $7cc3: $02
    ld [bc], a                                    ; $7cc4: $02
    ld [bc], a                                    ; $7cc5: $02
    ld [bc], a                                    ; $7cc6: $02
    ld [bc], a                                    ; $7cc7: $02

jr_083_7cc8:
    ld [bc], a                                    ; $7cc8: $02
    adc h                                         ; $7cc9: $8c
    adc h                                         ; $7cca: $8c
    ld [bc], a                                    ; $7ccb: $02
    adc h                                         ; $7ccc: $8c
    adc h                                         ; $7ccd: $8c
    adc h                                         ; $7cce: $8c
    ld [bc], a                                    ; $7ccf: $02
    adc h                                         ; $7cd0: $8c
    adc h                                         ; $7cd1: $8c
    adc h                                         ; $7cd2: $8c
    ld h, c                                       ; $7cd3: $61
    dec c                                         ; $7cd4: $0d
    dec c                                         ; $7cd5: $0d
    ld h, c                                       ; $7cd6: $61
    ld c, $0f                                     ; $7cd7: $0e $0f
    rrca                                          ; $7cd9: $0f
    ld c, $10                                     ; $7cda: $0e $10
    ld l, e                                       ; $7cdc: $6b
    ld l, e                                       ; $7cdd: $6b
    ld de, $1312                                  ; $7cde: $11 $12 $13
    inc d                                         ; $7ce1: $14
    dec d                                         ; $7ce2: $15
    add h                                         ; $7ce3: $84
    adc h                                         ; $7ce4: $8c
    xor h                                         ; $7ce5: $ac
    add h                                         ; $7ce6: $84
    adc h                                         ; $7ce7: $8c
    adc h                                         ; $7ce8: $8c
    xor h                                         ; $7ce9: $ac
    xor h                                         ; $7cea: $ac
    adc h                                         ; $7ceb: $8c
    add h                                         ; $7cec: $84
    add h                                         ; $7ced: $84
    adc h                                         ; $7cee: $8c
    adc h                                         ; $7cef: $8c
    adc h                                         ; $7cf0: $8c
    adc h                                         ; $7cf1: $8c
    adc h                                         ; $7cf2: $8c
    add e                                         ; $7cf3: $83
    db $fd                                        ; $7cf4: $fd
    ccf                                           ; $7cf5: $3f
    ld b, b                                       ; $7cf6: $40
    rlca                                          ; $7cf7: $07
    ld b, $84                                     ; $7cf8: $06 $84
    ld b, d                                       ; $7cfa: $42
    ld d, $17                                     ; $7cfb: $16 $17
    ld b, $47                                     ; $7cfd: $06 $47
    jr jr_083_7d1a                                ; $7cff: $18 $19

    ld a, [bc]                                    ; $7d01: $0a
    add hl, de                                    ; $7d02: $19
    ld a, [bc]                                    ; $7d03: $0a
    ld [bc], a                                    ; $7d04: $02
    ld [bc], a                                    ; $7d05: $02
    ld [bc], a                                    ; $7d06: $02
    xor h                                         ; $7d07: $ac
    xor h                                         ; $7d08: $ac
    ld a, [bc]                                    ; $7d09: $0a
    ld [bc], a                                    ; $7d0a: $02
    adc h                                         ; $7d0b: $8c
    adc h                                         ; $7d0c: $8c
    xor h                                         ; $7d0d: $ac
    ld [bc], a                                    ; $7d0e: $02
    adc h                                         ; $7d0f: $8c
    adc h                                         ; $7d10: $8c
    xor h                                         ; $7d11: $ac
    ld [bc], a                                    ; $7d12: $02
    db $10                                        ; $7d13: $10
    ld a, [de]                                    ; $7d14: $1a
    dec de                                        ; $7d15: $1b
    ld [hl], e                                    ; $7d16: $73
    or $1c                                        ; $7d17: $f6 $1c
    dec e                                         ; $7d19: $1d

jr_083_7d1a:
    ld [hl], e                                    ; $7d1a: $73
    ld a, [$1f1e]                                 ; $7d1b: $fa $1e $1f
    inc c                                         ; $7d1e: $0c
    cp $20                                        ; $7d1f: $fe $20
    ld hl, $0222                                  ; $7d21: $21 $22 $02
    adc h                                         ; $7d24: $8c
    adc h                                         ; $7d25: $8c
    add h                                         ; $7d26: $84
    ld [bc], a                                    ; $7d27: $02
    adc h                                         ; $7d28: $8c
    adc h                                         ; $7d29: $8c
    add h                                         ; $7d2a: $84
    ld [bc], a                                    ; $7d2b: $02
    adc h                                         ; $7d2c: $8c
    adc h                                         ; $7d2d: $8c
    db $ec                                        ; $7d2e: $ec
    ld [bc], a                                    ; $7d2f: $02
    adc h                                         ; $7d30: $8c
    adc h                                         ; $7d31: $8c
    adc h                                         ; $7d32: $8c
    ld [hl], e                                    ; $7d33: $73
    inc hl                                        ; $7d34: $23
    inc h                                         ; $7d35: $24
    ld a, b                                       ; $7d36: $78
    ld [hl], e                                    ; $7d37: $73
    ld [hl], e                                    ; $7d38: $73
    ld [hl], e                                    ; $7d39: $73
    ld [hl], e                                    ; $7d3a: $73
    ld [hl], e                                    ; $7d3b: $73
    ld [hl], e                                    ; $7d3c: $73
    ld [hl], e                                    ; $7d3d: $73
    ld [hl], e                                    ; $7d3e: $73
    dec h                                         ; $7d3f: $25
    ld h, $27                                     ; $7d40: $26 $27
    jr z, jr_083_7cc8                             ; $7d42: $28 $84

    adc h                                         ; $7d44: $8c
    adc h                                         ; $7d45: $8c
    add h                                         ; $7d46: $84
    add h                                         ; $7d47: $84
    add h                                         ; $7d48: $84
    add h                                         ; $7d49: $84
    add h                                         ; $7d4a: $84
    add h                                         ; $7d4b: $84
    add h                                         ; $7d4c: $84
    add h                                         ; $7d4d: $84
    add h                                         ; $7d4e: $84

jr_083_7d4f:
    adc h                                         ; $7d4f: $8c
    adc h                                         ; $7d50: $8c
    adc h                                         ; $7d51: $8c
    adc h                                         ; $7d52: $8c
    ld [hl], e                                    ; $7d53: $73
    add hl, hl                                    ; $7d54: $29
    ld a, [de]                                    ; $7d55: $1a
    ld c, c                                       ; $7d56: $49
    ld [hl], e                                    ; $7d57: $73
    ld a, [hl+]                                   ; $7d58: $2a
    inc e                                         ; $7d59: $1c
    ld a, $18                                     ; $7d5a: $3e $18
    dec hl                                        ; $7d5c: $2b
    ld e, $40                                     ; $7d5d: $1e $40
    inc l                                         ; $7d5f: $2c
    ld hl, $4220                                  ; $7d60: $21 $20 $42
    add h                                         ; $7d63: $84
    adc h                                         ; $7d64: $8c
    xor h                                         ; $7d65: $ac
    ld [bc], a                                    ; $7d66: $02
    add h                                         ; $7d67: $84
    adc h                                         ; $7d68: $8c
    xor h                                         ; $7d69: $ac
    ld [bc], a                                    ; $7d6a: $02
    db $ec                                        ; $7d6b: $ec
    adc h                                         ; $7d6c: $8c
    xor h                                         ; $7d6d: $ac
    ld [bc], a                                    ; $7d6e: $02
    adc h                                         ; $7d6f: $8c
    xor h                                         ; $7d70: $ac
    xor h                                         ; $7d71: $ac
    ld [bc], a                                    ; $7d72: $02
    ld [$2e2d], sp                                ; $7d73: $08 $2d $2e
    cpl                                           ; $7d76: $2f
    inc c                                         ; $7d77: $0c
    and c                                         ; $7d78: $a1
    jr nc, jr_083_7dac                            ; $7d79: $30 $31

    db $10                                        ; $7d7b: $10
    ld de, $32a4                                  ; $7d7c: $11 $a4 $32
    or $f7                                        ; $7d7f: $f6 $f7
    and [hl]                                      ; $7d81: $a6
    and a                                         ; $7d82: $a7
    ld [bc], a                                    ; $7d83: $02
    adc h                                         ; $7d84: $8c
    adc h                                         ; $7d85: $8c
    adc h                                         ; $7d86: $8c
    ld [bc], a                                    ; $7d87: $02
    ld a, [bc]                                    ; $7d88: $0a
    adc h                                         ; $7d89: $8c
    adc h                                         ; $7d8a: $8c
    ld [bc], a                                    ; $7d8b: $02
    ld [bc], a                                    ; $7d8c: $02
    ld a, [bc]                                    ; $7d8d: $0a
    adc h                                         ; $7d8e: $8c
    ld [bc], a                                    ; $7d8f: $02
    ld [bc], a                                    ; $7d90: $02
    ld a, [bc]                                    ; $7d91: $0a
    ld a, [bc]                                    ; $7d92: $0a
    inc sp                                        ; $7d93: $33
    inc [hl]                                      ; $7d94: $34
    dec [hl]                                      ; $7d95: $35
    inc sp                                        ; $7d96: $33
    ld [hl], $37                                  ; $7d97: $36 $37
    scf                                           ; $7d99: $37
    ld [hl], $38                                  ; $7d9a: $36 $38
    add hl, sp                                    ; $7d9c: $39
    add hl, sp                                    ; $7d9d: $39
    jr c, jr_083_7d4f                             ; $7d9e: $38 $af

    or b                                          ; $7da0: $b0
    or c                                          ; $7da1: $b1
    or d                                          ; $7da2: $b2
    adc h                                         ; $7da3: $8c
    adc h                                         ; $7da4: $8c
    adc h                                         ; $7da5: $8c
    xor h                                         ; $7da6: $ac
    adc h                                         ; $7da7: $8c
    adc h                                         ; $7da8: $8c
    xor h                                         ; $7da9: $ac
    xor h                                         ; $7daa: $ac
    adc h                                         ; $7dab: $8c

jr_083_7dac:
    adc h                                         ; $7dac: $8c
    xor h                                         ; $7dad: $ac
    xor h                                         ; $7dae: $ac
    ld a, [bc]                                    ; $7daf: $0a
    ld a, [bc]                                    ; $7db0: $0a
    ld a, [bc]                                    ; $7db1: $0a
    ld a, [bc]                                    ; $7db2: $0a
    cpl                                           ; $7db3: $2f
    ld l, $2d                                     ; $7db4: $2e $2d
    ld b, a                                       ; $7db6: $47
    ld sp, $ca30                                  ; $7db7: $31 $30 $ca
    add hl, de                                    ; $7dba: $19
    ld [hl-], a                                   ; $7dbb: $32
    bit 1, b                                      ; $7dbc: $cb $48
    ld c, c                                       ; $7dbe: $49
    call z, $3dcd                                 ; $7dbf: $cc $cd $3d
    ld a, $ac                                     ; $7dc2: $3e $ac
    xor h                                         ; $7dc4: $ac
    xor h                                         ; $7dc5: $ac
    ld [bc], a                                    ; $7dc6: $02
    xor h                                         ; $7dc7: $ac
    xor h                                         ; $7dc8: $ac
    ld a, [bc]                                    ; $7dc9: $0a
    ld [bc], a                                    ; $7dca: $02
    xor h                                         ; $7dcb: $ac
    ld a, [bc]                                    ; $7dcc: $0a
    ld [bc], a                                    ; $7dcd: $02
    ld [bc], a                                    ; $7dce: $02
    ld a, [bc]                                    ; $7dcf: $0a
    ld a, [bc]                                    ; $7dd0: $0a
    ld [bc], a                                    ; $7dd1: $02
    ld [bc], a                                    ; $7dd2: $02
    ld a, [$fcfb]                                 ; $7dd3: $fa $fb $fc
    ld e, a                                       ; $7dd6: $5f
    cp $60                                        ; $7dd7: $fe $60
    ld a, [hl-]                                   ; $7dd9: $3a
    dec sp                                        ; $7dda: $3b
    ld [$3d3c], sp                                ; $7ddb: $08 $3c $3d
    ld a, $0c                                     ; $7dde: $3e $0c
    ccf                                           ; $7de0: $3f
    ld b, b                                       ; $7de1: $40
    ld a, b                                       ; $7de2: $78
    ld [bc], a                                    ; $7de3: $02
    ld [bc], a                                    ; $7de4: $02
    ld [bc], a                                    ; $7de5: $02
    ld [bc], a                                    ; $7de6: $02
    ld [bc], a                                    ; $7de7: $02
    ld [bc], a                                    ; $7de8: $02
    adc h                                         ; $7de9: $8c
    adc h                                         ; $7dea: $8c
    ld [bc], a                                    ; $7deb: $02
    adc h                                         ; $7dec: $8c
    adc h                                         ; $7ded: $8c
    adc h                                         ; $7dee: $8c
    ld [bc], a                                    ; $7def: $02
    adc h                                         ; $7df0: $8c
    adc h                                         ; $7df1: $8c
    and h                                         ; $7df2: $a4
    ld b, c                                       ; $7df3: $41
    ld b, d                                       ; $7df4: $42
    ld b, d                                       ; $7df5: $42
    ld b, c                                       ; $7df6: $41
    ld b, e                                       ; $7df7: $43
    ld b, h                                       ; $7df8: $44
    ld b, h                                       ; $7df9: $44
    ld b, e                                       ; $7dfa: $43
    ld b, l                                       ; $7dfb: $45
    ld b, [hl]                                    ; $7dfc: $46
    ld l, e                                       ; $7dfd: $6b
    ld b, a                                       ; $7dfe: $47
    ld c, b                                       ; $7dff: $48
    ld c, c                                       ; $7e00: $49
    ld c, d                                       ; $7e01: $4a
    ld c, e                                       ; $7e02: $4b
    adc h                                         ; $7e03: $8c
    adc h                                         ; $7e04: $8c
    xor h                                         ; $7e05: $ac
    xor h                                         ; $7e06: $ac
    adc h                                         ; $7e07: $8c
    adc h                                         ; $7e08: $8c
    xor h                                         ; $7e09: $ac
    xor h                                         ; $7e0a: $ac
    adc h                                         ; $7e0b: $8c
    adc h                                         ; $7e0c: $8c
    add h                                         ; $7e0d: $84
    adc h                                         ; $7e0e: $8c
    adc h                                         ; $7e0f: $8c
    adc h                                         ; $7e10: $8c
    adc h                                         ; $7e11: $8c
    adc h                                         ; $7e12: $8c
    add e                                         ; $7e13: $83
    db $fd                                        ; $7e14: $fd
    ccf                                           ; $7e15: $3f
    ld b, b                                       ; $7e16: $40
    dec sp                                        ; $7e17: $3b
    ld a, [hl-]                                   ; $7e18: $3a
    add h                                         ; $7e19: $84
    ld b, d                                       ; $7e1a: $42
    ld c, h                                       ; $7e1b: $4c
    ld c, l                                       ; $7e1c: $4d
    inc a                                         ; $7e1d: $3c
    ld b, a                                       ; $7e1e: $47
    adc c                                         ; $7e1f: $89
    ld c, [hl]                                    ; $7e20: $4e
    ccf                                           ; $7e21: $3f
    add hl, de                                    ; $7e22: $19
    ld a, [bc]                                    ; $7e23: $0a
    ld [bc], a                                    ; $7e24: $02
    ld [bc], a                                    ; $7e25: $02
    ld [bc], a                                    ; $7e26: $02
    xor h                                         ; $7e27: $ac
    xor h                                         ; $7e28: $ac
    ld a, [bc]                                    ; $7e29: $0a
    ld [bc], a                                    ; $7e2a: $02
    adc h                                         ; $7e2b: $8c
    adc h                                         ; $7e2c: $8c
    xor h                                         ; $7e2d: $ac
    ld [bc], a                                    ; $7e2e: $02
    db $ec                                        ; $7e2f: $ec
    adc h                                         ; $7e30: $8c
    xor h                                         ; $7e31: $ac
    ld [bc], a                                    ; $7e32: $02
    db $10                                        ; $7e33: $10
    ld c, a                                       ; $7e34: $4f
    ld d, b                                       ; $7e35: $50
    ld [hl], e                                    ; $7e36: $73
    or $51                                        ; $7e37: $f6 $51
    ld d, d                                       ; $7e39: $52
    ld [hl], e                                    ; $7e3a: $73
    ld a, [$5453]                                 ; $7e3b: $fa $53 $54
    ld d, l                                       ; $7e3e: $55
    cp $56                                        ; $7e3f: $fe $56
    ld d, a                                       ; $7e41: $57
    ld e, b                                       ; $7e42: $58
    ld [bc], a                                    ; $7e43: $02
    adc h                                         ; $7e44: $8c
    adc h                                         ; $7e45: $8c
    and h                                         ; $7e46: $a4
    ld [bc], a                                    ; $7e47: $02
    adc h                                         ; $7e48: $8c
    adc h                                         ; $7e49: $8c
    and h                                         ; $7e4a: $a4
    ld [bc], a                                    ; $7e4b: $02
    adc h                                         ; $7e4c: $8c
    adc h                                         ; $7e4d: $8c
    adc h                                         ; $7e4e: $8c
    ld [bc], a                                    ; $7e4f: $02
    adc h                                         ; $7e50: $8c
    adc h                                         ; $7e51: $8c
    adc h                                         ; $7e52: $8c
    ld [hl], e                                    ; $7e53: $73
    ld e, c                                       ; $7e54: $59
    ld e, d                                       ; $7e55: $5a
    ld [hl], e                                    ; $7e56: $73
    ld [hl], e                                    ; $7e57: $73
    ld [hl], e                                    ; $7e58: $73
    ld [hl], e                                    ; $7e59: $73
    ld [hl], e                                    ; $7e5a: $73
    ld [hl], e                                    ; $7e5b: $73
    ld [hl], e                                    ; $7e5c: $73
    ld [hl], e                                    ; $7e5d: $73
    ld [hl], e                                    ; $7e5e: $73
    ld e, e                                       ; $7e5f: $5b
    ld e, h                                       ; $7e60: $5c
    ld e, l                                       ; $7e61: $5d
    ld e, [hl]                                    ; $7e62: $5e
    and h                                         ; $7e63: $a4
    adc h                                         ; $7e64: $8c
    adc h                                         ; $7e65: $8c
    and h                                         ; $7e66: $a4
    and h                                         ; $7e67: $a4
    and h                                         ; $7e68: $a4
    and h                                         ; $7e69: $a4
    and h                                         ; $7e6a: $a4
    and h                                         ; $7e6b: $a4
    and h                                         ; $7e6c: $a4
    and h                                         ; $7e6d: $a4
    and h                                         ; $7e6e: $a4
    adc h                                         ; $7e6f: $8c
    adc h                                         ; $7e70: $8c
    adc h                                         ; $7e71: $8c
    adc h                                         ; $7e72: $8c
    ld [hl], e                                    ; $7e73: $73
    ld e, a                                       ; $7e74: $5f
    ld c, a                                       ; $7e75: $4f
    ld c, c                                       ; $7e76: $49
    ld [hl], e                                    ; $7e77: $73
    ld h, b                                       ; $7e78: $60
    ld d, c                                       ; $7e79: $51
    ld a, $61                                     ; $7e7a: $3e $61
    ld h, d                                       ; $7e7c: $62
    ld d, e                                       ; $7e7d: $53
    ld b, b                                       ; $7e7e: $40
    ld h, e                                       ; $7e7f: $63
    ld d, a                                       ; $7e80: $57
    ld d, [hl]                                    ; $7e81: $56
    ld b, d                                       ; $7e82: $42
    and h                                         ; $7e83: $a4
    adc h                                         ; $7e84: $8c
    xor h                                         ; $7e85: $ac
    ld [bc], a                                    ; $7e86: $02
    and h                                         ; $7e87: $a4
    adc h                                         ; $7e88: $8c
    xor h                                         ; $7e89: $ac
    ld [bc], a                                    ; $7e8a: $02
    adc h                                         ; $7e8b: $8c
    adc h                                         ; $7e8c: $8c
    xor h                                         ; $7e8d: $ac
    ld [bc], a                                    ; $7e8e: $02
    adc h                                         ; $7e8f: $8c
    xor h                                         ; $7e90: $ac
    xor h                                         ; $7e91: $ac
    ld [bc], a                                    ; $7e92: $02
    ld [$6564], sp                                ; $7e93: $08 $64 $65
    ld h, [hl]                                    ; $7e96: $66
    inc c                                         ; $7e97: $0c
    and c                                         ; $7e98: $a1
    ld h, a                                       ; $7e99: $67
    ld l, b                                       ; $7e9a: $68
    db $10                                        ; $7e9b: $10
    ld de, $69a4                                  ; $7e9c: $11 $a4 $69
    or $f7                                        ; $7e9f: $f6 $f7
    and [hl]                                      ; $7ea1: $a6
    and a                                         ; $7ea2: $a7
    ld [bc], a                                    ; $7ea3: $02
    adc h                                         ; $7ea4: $8c
    adc h                                         ; $7ea5: $8c
    adc h                                         ; $7ea6: $8c
    ld [bc], a                                    ; $7ea7: $02
    ld a, [bc]                                    ; $7ea8: $0a
    adc h                                         ; $7ea9: $8c
    adc h                                         ; $7eaa: $8c
    ld [bc], a                                    ; $7eab: $02
    ld [bc], a                                    ; $7eac: $02
    ld a, [bc]                                    ; $7ead: $0a
    adc h                                         ; $7eae: $8c
    ld [bc], a                                    ; $7eaf: $02
    ld [bc], a                                    ; $7eb0: $02
    ld a, [bc]                                    ; $7eb1: $0a
    ld a, [bc]                                    ; $7eb2: $0a
    ld l, d                                       ; $7eb3: $6a
    ld l, e                                       ; $7eb4: $6b
    ld l, h                                       ; $7eb5: $6c
    ld l, d                                       ; $7eb6: $6a
    ld l, l                                       ; $7eb7: $6d
    ld l, [hl]                                    ; $7eb8: $6e
    ld l, [hl]                                    ; $7eb9: $6e
    ld l, l                                       ; $7eba: $6d
    ld l, a                                       ; $7ebb: $6f
    ld [hl], b                                    ; $7ebc: $70
    ld [hl], b                                    ; $7ebd: $70
    ld l, a                                       ; $7ebe: $6f
    xor a                                         ; $7ebf: $af
    or b                                          ; $7ec0: $b0
    or c                                          ; $7ec1: $b1
    or d                                          ; $7ec2: $b2
    adc h                                         ; $7ec3: $8c
    adc h                                         ; $7ec4: $8c
    adc h                                         ; $7ec5: $8c
    xor h                                         ; $7ec6: $ac
    adc h                                         ; $7ec7: $8c
    adc h                                         ; $7ec8: $8c
    xor h                                         ; $7ec9: $ac
    xor h                                         ; $7eca: $ac
    adc h                                         ; $7ecb: $8c
    adc h                                         ; $7ecc: $8c
    xor h                                         ; $7ecd: $ac
    xor h                                         ; $7ece: $ac
    ld a, [bc]                                    ; $7ecf: $0a
    ld a, [bc]                                    ; $7ed0: $0a
    ld a, [bc]                                    ; $7ed1: $0a
    ld a, [bc]                                    ; $7ed2: $0a
    ld h, [hl]                                    ; $7ed3: $66
    ld h, l                                       ; $7ed4: $65
    ld h, h                                       ; $7ed5: $64
    ld b, a                                       ; $7ed6: $47
    ld l, b                                       ; $7ed7: $68
    ld h, a                                       ; $7ed8: $67
    jp z, Jump_083_6919                           ; $7ed9: $ca $19 $69

    bit 1, b                                      ; $7edc: $cb $48
    ld c, c                                       ; $7ede: $49
    call z, $3dcd                                 ; $7edf: $cc $cd $3d
    ld a, $ac                                     ; $7ee2: $3e $ac
    xor h                                         ; $7ee4: $ac
    xor h                                         ; $7ee5: $ac
    ld [bc], a                                    ; $7ee6: $02
    xor h                                         ; $7ee7: $ac
    xor h                                         ; $7ee8: $ac
    ld a, [bc]                                    ; $7ee9: $0a
    ld [bc], a                                    ; $7eea: $02
    xor h                                         ; $7eeb: $ac
    ld a, [bc]                                    ; $7eec: $0a
    ld [bc], a                                    ; $7eed: $02
    ld [bc], a                                    ; $7eee: $02
    ld a, [bc]                                    ; $7eef: $0a
    ld a, [bc]                                    ; $7ef0: $0a
    ld [bc], a                                    ; $7ef1: $02
    ld [bc], a                                    ; $7ef2: $02
    db $ed                                        ; $7ef3: $ed
    db $ed                                        ; $7ef4: $ed
    db $ed                                        ; $7ef5: $ed
    db $ed                                        ; $7ef6: $ed
    inc bc                                        ; $7ef7: $03
    inc bc                                        ; $7ef8: $03
    inc bc                                        ; $7ef9: $03
    inc bc                                        ; $7efa: $03
    ld [hl], c                                    ; $7efb: $71
    pop af                                        ; $7efc: $f1
    ld [hl], d                                    ; $7efd: $72
    pop af                                        ; $7efe: $f1
    ldh a, [rOCPD]                                ; $7eff: $f0 $6b
    ld l, e                                       ; $7f01: $6b
    ld l, e                                       ; $7f02: $6b
    add b                                         ; $7f03: $80
    add b                                         ; $7f04: $80
    add b                                         ; $7f05: $80
    add b                                         ; $7f06: $80
    add b                                         ; $7f07: $80
    add b                                         ; $7f08: $80
    add b                                         ; $7f09: $80
    add b                                         ; $7f0a: $80
    ld l, c                                       ; $7f0b: $69
    ld bc, $2109                                  ; $7f0c: $01 $09 $21
    ld b, c                                       ; $7f0f: $41
    ld bc, $0101                                  ; $7f10: $01 $01 $01
    db $ed                                        ; $7f13: $ed
    db $ed                                        ; $7f14: $ed
    db $ed                                        ; $7f15: $ed
    db $ed                                        ; $7f16: $ed
    inc bc                                        ; $7f17: $03
    inc bc                                        ; $7f18: $03
    inc bc                                        ; $7f19: $03
    inc bc                                        ; $7f1a: $03
    ld [hl], c                                    ; $7f1b: $71
    ld h, $8e                                     ; $7f1c: $26 $8e
    ld [hl], e                                    ; $7f1e: $73
    pop af                                        ; $7f1f: $f1
    daa                                           ; $7f20: $27
    adc a                                         ; $7f21: $8f
    ld [hl], h                                    ; $7f22: $74
    add b                                         ; $7f23: $80
    add b                                         ; $7f24: $80
    add b                                         ; $7f25: $80
    add b                                         ; $7f26: $80
    add b                                         ; $7f27: $80
    add b                                         ; $7f28: $80
    add b                                         ; $7f29: $80
    add b                                         ; $7f2a: $80
    ld c, c                                       ; $7f2b: $49
    ld h, $0e                                     ; $7f2c: $26 $0e
    ld c, $01                                     ; $7f2e: $0e $01
    ld h, $0e                                     ; $7f30: $26 $0e
    ld c, $f0                                     ; $7f32: $0e $f0
    ld l, e                                       ; $7f34: $6b
    ld l, e                                       ; $7f35: $6b
    ld l, e                                       ; $7f36: $6b
    ld a, [c]                                     ; $7f37: $f2
    ldh a, [rOCPD]                                ; $7f38: $f0 $6b
    ld [hl], l                                    ; $7f3a: $75
    sbc c                                         ; $7f3b: $99
    sbc d                                         ; $7f3c: $9a
    ld b, l                                       ; $7f3d: $45
    ld b, h                                       ; $7f3e: $44
    dec a                                         ; $7f3f: $3d
    ld a, $f6                                     ; $7f40: $3e $f6
    rst $30                                       ; $7f42: $f7
    ld bc, $0101                                  ; $7f43: $01 $01 $01
    ld bc, $0101                                  ; $7f46: $01 $01 $01
    ld bc, $0e29                                  ; $7f49: $01 $29 $0e
    ld c, $26                                     ; $7f4c: $0e $26
    ld h, $03                                     ; $7f4e: $26 $03
    inc bc                                        ; $7f50: $03
    inc bc                                        ; $7f51: $03
    inc bc                                        ; $7f52: $03
    ldh a, [$28]                                  ; $7f53: $f0 $28
    pop af                                        ; $7f55: $f1
    ldh a, [$90]                                  ; $7f56: $f0 $90
    add hl, hl                                    ; $7f58: $29
    sub b                                         ; $7f59: $90
    ld [hl], l                                    ; $7f5a: $75
    sbc l                                         ; $7f5b: $9d
    ld b, e                                       ; $7f5c: $43
    xor $3a                                       ; $7f5d: $ee $3a
    ld hl, sp-$07                                 ; $7f5f: $f8 $f9
    dec a                                         ; $7f61: $3d
    ld a, $21                                     ; $7f62: $3e $21
    ld h, $06                                     ; $7f64: $26 $06
    ld b, $29                                     ; $7f66: $06 $29
    ld h, $0e                                     ; $7f68: $26 $0e
    ld c, $2e                                     ; $7f6a: $0e $2e
    ld h, $0e                                     ; $7f6c: $26 $0e
    ld b, $03                                     ; $7f6e: $06 $03
    inc bc                                        ; $7f70: $03
    inc bc                                        ; $7f71: $03
    inc bc                                        ; $7f72: $03
    ld d, b                                       ; $7f73: $50
    nop                                           ; $7f74: $00
    nop                                           ; $7f75: $00
    nop                                           ; $7f76: $00
    nop                                           ; $7f77: $00
    ld bc, $0200                                  ; $7f78: $01 $00 $02
    nop                                           ; $7f7b: $00
    inc bc                                        ; $7f7c: $03
    nop                                           ; $7f7d: $00
    nop                                           ; $7f7e: $00
    ld c, $00                                     ; $7f7f: $0e $00
    rrca                                          ; $7f81: $0f
    nop                                           ; $7f82: $00
    nop                                           ; $7f83: $00
    nop                                           ; $7f84: $00
    inc b                                         ; $7f85: $04
    nop                                           ; $7f86: $00
    ld bc, $0005                                  ; $7f87: $01 $05 $00
    ld b, $00                                     ; $7f8a: $06 $00
    stop                                          ; $7f8c: $10 $00
    ld de, $000c                                  ; $7f8e: $11 $0c $00
    nop                                           ; $7f91: $00
    rlca                                          ; $7f92: $07
    nop                                           ; $7f93: $00
    ld [$0900], sp                                ; $7f94: $08 $00 $09
    nop                                           ; $7f97: $00
    ld [de], a                                    ; $7f98: $12
    nop                                           ; $7f99: $00
    nop                                           ; $7f9a: $00
    inc de                                        ; $7f9b: $13
    nop                                           ; $7f9c: $00
    ld a, [bc]                                    ; $7f9d: $0a
    nop                                           ; $7f9e: $00
    dec bc                                        ; $7f9f: $0b
    nop                                           ; $7fa0: $00
    inc c                                         ; $7fa1: $0c
    nop                                           ; $7fa2: $00
    nop                                           ; $7fa3: $00
    dec c                                         ; $7fa4: $0d
    nop                                           ; $7fa5: $00
    inc d                                         ; $7fa6: $14
    nop                                           ; $7fa7: $00
    dec d                                         ; $7fa8: $15
    nop                                           ; $7fa9: $00
    ld d, $00                                     ; $7faa: $16 $00
    nop                                           ; $7fac: $00
    rla                                           ; $7fad: $17
    nop                                           ; $7fae: $00
    jr jr_083_7fb1                                ; $7faf: $18 $00

jr_083_7fb1:
    add hl, de                                    ; $7fb1: $19
    nop                                           ; $7fb2: $00
    ld hl, $0000                                  ; $7fb3: $21 $00 $00
    ld [hl+], a                                   ; $7fb6: $22
    nop                                           ; $7fb7: $00
    ld a, [de]                                    ; $7fb8: $1a
    nop                                           ; $7fb9: $00
    dec de                                        ; $7fba: $1b
    nop                                           ; $7fbb: $00
    inc e                                         ; $7fbc: $1c
    nop                                           ; $7fbd: $00
    inc b                                         ; $7fbe: $04
    dec e                                         ; $7fbf: $1d
    nop                                           ; $7fc0: $00
    inc hl                                        ; $7fc1: $23
    nop                                           ; $7fc2: $00
    inc h                                         ; $7fc3: $24
    inc a                                         ; $7fc4: $3c
    nop                                           ; $7fc5: $00
    ld e, $00                                     ; $7fc6: $1e $00
    nop                                           ; $7fc8: $00
    rra                                           ; $7fc9: $1f
    nop                                           ; $7fca: $00
    jr nz, jr_083_7fcd                            ; $7fcb: $20 $00

jr_083_7fcd:
    dec h                                         ; $7fcd: $25
    nop                                           ; $7fce: $00
    ld h, $00                                     ; $7fcf: $26 $00
    add hl, bc                                    ; $7fd1: $09
    nop                                           ; $7fd2: $00
    nop                                           ; $7fd3: $00
    dec d                                         ; $7fd4: $15
    nop                                           ; $7fd5: $00
    ld [bc], a                                    ; $7fd6: $02
    dec de                                        ; $7fd7: $1b
    nop                                           ; $7fd8: $00
    inc bc                                        ; $7fd9: $03
    ld [bc], a                                    ; $7fda: $02
    nop                                           ; $7fdb: $00
    dec d                                         ; $7fdc: $15
    nop                                           ; $7fdd: $00
    ld h, [hl]                                    ; $7fde: $66
    nop                                           ; $7fdf: $00
    rlca                                          ; $7fe0: $07
    nop                                           ; $7fe1: $00
    cpl                                           ; $7fe2: $2f
    nop                                           ; $7fe3: $00
    jr z, jr_083_7fe6                             ; $7fe4: $28 $00

jr_083_7fe6:
    ld a, [bc]                                    ; $7fe6: $0a
    dec e                                         ; $7fe7: $1d
    ld h, a                                       ; $7fe8: $67
    nop                                           ; $7fe9: $00
    inc l                                         ; $7fea: $2c
    nop                                           ; $7feb: $00
    rlca                                          ; $7fec: $07
    ld [bc], a                                    ; $7fed: $02
    add d                                         ; $7fee: $82
    nop                                           ; $7fef: $00
    halt                                          ; $7ff0: $76
    nop                                           ; $7ff1: $00
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    adc e                                         ; $7ff8: $8b
    dec l                                         ; $7ff9: $2d
    sbc [hl]                                      ; $7ffa: $9e
    ld bc, $001a                                  ; $7ffb: $01 $1a $00
    nop                                           ; $7ffe: $00
    nop                                           ; $7fff: $00
