; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0a9", ROMX[$4000], BANK[$a9]

    db $a9

    ld de, $0013                                  ; $4001: $11 $13 $00
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    nop                                           ; $4006: $00
    nop                                           ; $4007: $00

Call_0a9_4008:
    nop                                           ; $4008: $00
    nop                                           ; $4009: $00
    nop                                           ; $400a: $00
    nop                                           ; $400b: $00
    nop                                           ; $400c: $00
    nop                                           ; $400d: $00
    nop                                           ; $400e: $00
    nop                                           ; $400f: $00
    nop                                           ; $4010: $00
    nop                                           ; $4011: $00
    nop                                           ; $4012: $00
    nop                                           ; $4013: $00
    nop                                           ; $4014: $00
    nop                                           ; $4015: $00
    nop                                           ; $4016: $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    ld bc, $0202                                  ; $401b: $01 $02 $02
    ld [bc], a                                    ; $401e: $02
    ld [bc], a                                    ; $401f: $02
    ld [bc], a                                    ; $4020: $02
    ld [bc], a                                    ; $4021: $02
    ld [bc], a                                    ; $4022: $02
    inc bc                                        ; $4023: $03
    nop                                           ; $4024: $00
    nop                                           ; $4025: $00
    nop                                           ; $4026: $00
    nop                                           ; $4027: $00
    nop                                           ; $4028: $00
    nop                                           ; $4029: $00
    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    inc b                                         ; $402c: $04
    dec b                                         ; $402d: $05
    dec b                                         ; $402e: $05
    dec b                                         ; $402f: $05
    dec b                                         ; $4030: $05
    dec b                                         ; $4031: $05
    dec b                                         ; $4032: $05
    dec b                                         ; $4033: $05
    ld b, $00                                     ; $4034: $06 $00
    nop                                           ; $4036: $00
    nop                                           ; $4037: $00
    nop                                           ; $4038: $00
    nop                                           ; $4039: $00
    nop                                           ; $403a: $00
    nop                                           ; $403b: $00
    rlca                                          ; $403c: $07
    ld [$0505], sp                                ; $403d: $08 $05 $05
    dec b                                         ; $4040: $05
    dec b                                         ; $4041: $05
    dec b                                         ; $4042: $05
    dec b                                         ; $4043: $05
    dec b                                         ; $4044: $05
    ld b, $00                                     ; $4045: $06 $00
    nop                                           ; $4047: $00
    nop                                           ; $4048: $00
    nop                                           ; $4049: $00
    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    nop                                           ; $404c: $00
    add hl, bc                                    ; $404d: $09
    ld a, [bc]                                    ; $404e: $0a
    dec b                                         ; $404f: $05
    dec b                                         ; $4050: $05
    dec b                                         ; $4051: $05
    dec b                                         ; $4052: $05
    dec b                                         ; $4053: $05
    dec b                                         ; $4054: $05
    dec b                                         ; $4055: $05
    ld b, $00                                     ; $4056: $06 $00
    nop                                           ; $4058: $00
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    nop                                           ; $405c: $00
    nop                                           ; $405d: $00
    nop                                           ; $405e: $00
    dec bc                                        ; $405f: $0b
    dec b                                         ; $4060: $05
    dec b                                         ; $4061: $05
    dec b                                         ; $4062: $05
    dec b                                         ; $4063: $05
    dec b                                         ; $4064: $05
    dec b                                         ; $4065: $05
    dec b                                         ; $4066: $05
    ld b, $00                                     ; $4067: $06 $00
    nop                                           ; $4069: $00
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    nop                                           ; $406c: $00
    nop                                           ; $406d: $00
    nop                                           ; $406e: $00
    nop                                           ; $406f: $00
    inc c                                         ; $4070: $0c
    dec b                                         ; $4071: $05
    dec b                                         ; $4072: $05
    dec b                                         ; $4073: $05
    dec b                                         ; $4074: $05
    dec b                                         ; $4075: $05
    dec b                                         ; $4076: $05
    dec b                                         ; $4077: $05
    ld b, $00                                     ; $4078: $06 $00
    nop                                           ; $407a: $00
    nop                                           ; $407b: $00
    nop                                           ; $407c: $00
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    nop                                           ; $407f: $00
    nop                                           ; $4080: $00
    dec c                                         ; $4081: $0d
    dec b                                         ; $4082: $05
    dec b                                         ; $4083: $05
    dec b                                         ; $4084: $05
    dec b                                         ; $4085: $05
    dec b                                         ; $4086: $05
    dec b                                         ; $4087: $05
    dec b                                         ; $4088: $05
    ld b, $00                                     ; $4089: $06 $00
    nop                                           ; $408b: $00
    ld c, $0e                                     ; $408c: $0e $0e
    ld c, $0e                                     ; $408e: $0e $0e
    ld c, $0e                                     ; $4090: $0e $0e
    inc b                                         ; $4092: $04
    dec b                                         ; $4093: $05
    dec b                                         ; $4094: $05
    dec b                                         ; $4095: $05
    dec b                                         ; $4096: $05
    dec b                                         ; $4097: $05
    dec b                                         ; $4098: $05
    dec b                                         ; $4099: $05
    rrca                                          ; $409a: $0f
    stop                                          ; $409b: $10 $00
    ld de, $1111                                  ; $409d: $11 $11 $11
    ld de, $0505                                  ; $40a0: $11 $05 $05
    dec b                                         ; $40a3: $05
    dec b                                         ; $40a4: $05
    dec b                                         ; $40a5: $05
    dec b                                         ; $40a6: $05
    dec b                                         ; $40a7: $05
    dec b                                         ; $40a8: $05
    dec b                                         ; $40a9: $05
    ld [de], a                                    ; $40aa: $12
    inc de                                        ; $40ab: $13
    inc d                                         ; $40ac: $14
    nop                                           ; $40ad: $00
    ld de, $1111                                  ; $40ae: $11 $11 $11
    ld de, $0505                                  ; $40b1: $11 $05 $05
    dec b                                         ; $40b4: $05
    dec b                                         ; $40b5: $05
    dec b                                         ; $40b6: $05
    dec b                                         ; $40b7: $05
    dec b                                         ; $40b8: $05
    dec b                                         ; $40b9: $05
    dec b                                         ; $40ba: $05
    ld b, $00                                     ; $40bb: $06 $00
    nop                                           ; $40bd: $00
    nop                                           ; $40be: $00
    dec d                                         ; $40bf: $15
    dec d                                         ; $40c0: $15
    dec d                                         ; $40c1: $15
    dec d                                         ; $40c2: $15
    dec d                                         ; $40c3: $15
    dec d                                         ; $40c4: $15
    inc b                                         ; $40c5: $04
    dec b                                         ; $40c6: $05
    dec b                                         ; $40c7: $05
    dec b                                         ; $40c8: $05
    dec b                                         ; $40c9: $05
    dec b                                         ; $40ca: $05
    dec b                                         ; $40cb: $05
    ld b, $00                                     ; $40cc: $06 $00
    nop                                           ; $40ce: $00
    nop                                           ; $40cf: $00
    nop                                           ; $40d0: $00
    nop                                           ; $40d1: $00
    nop                                           ; $40d2: $00
    nop                                           ; $40d3: $00
    nop                                           ; $40d4: $00
    nop                                           ; $40d5: $00
    ld d, $05                                     ; $40d6: $16 $05
    dec b                                         ; $40d8: $05
    dec b                                         ; $40d9: $05
    dec b                                         ; $40da: $05
    dec b                                         ; $40db: $05
    dec b                                         ; $40dc: $05
    ld b, $11                                     ; $40dd: $06 $11
    rla                                           ; $40df: $17
    nop                                           ; $40e0: $00
    nop                                           ; $40e1: $00
    nop                                           ; $40e2: $00
    nop                                           ; $40e3: $00
    nop                                           ; $40e4: $00
    nop                                           ; $40e5: $00
    nop                                           ; $40e6: $00
    jr jr_0a9_40ee                                ; $40e7: $18 $05

    dec b                                         ; $40e9: $05
    dec b                                         ; $40ea: $05
    dec b                                         ; $40eb: $05
    dec b                                         ; $40ec: $05
    dec b                                         ; $40ed: $05

jr_0a9_40ee:
    add hl, de                                    ; $40ee: $19
    ld de, $001a                                  ; $40ef: $11 $1a $00
    nop                                           ; $40f2: $00
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    nop                                           ; $40f6: $00
    nop                                           ; $40f7: $00
    inc b                                         ; $40f8: $04
    dec b                                         ; $40f9: $05
    dec b                                         ; $40fa: $05
    dec b                                         ; $40fb: $05
    dec b                                         ; $40fc: $05
    dec b                                         ; $40fd: $05
    dec b                                         ; $40fe: $05
    dec de                                        ; $40ff: $1b
    ld de, $0000                                  ; $4100: $11 $00 $00
    nop                                           ; $4103: $00
    nop                                           ; $4104: $00
    nop                                           ; $4105: $00
    nop                                           ; $4106: $00
    nop                                           ; $4107: $00
    nop                                           ; $4108: $00
    inc b                                         ; $4109: $04
    dec b                                         ; $410a: $05
    dec b                                         ; $410b: $05
    dec b                                         ; $410c: $05
    dec b                                         ; $410d: $05
    dec b                                         ; $410e: $05
    dec b                                         ; $410f: $05
    dec de                                        ; $4110: $1b
    ld de, $0000                                  ; $4111: $11 $00 $00
    nop                                           ; $4114: $00
    nop                                           ; $4115: $00
    nop                                           ; $4116: $00
    nop                                           ; $4117: $00
    nop                                           ; $4118: $00
    nop                                           ; $4119: $00
    inc b                                         ; $411a: $04
    dec b                                         ; $411b: $05
    dec b                                         ; $411c: $05
    dec b                                         ; $411d: $05
    dec b                                         ; $411e: $05
    dec b                                         ; $411f: $05
    dec b                                         ; $4120: $05
    inc e                                         ; $4121: $1c
    dec d                                         ; $4122: $15
    nop                                           ; $4123: $00
    nop                                           ; $4124: $00
    nop                                           ; $4125: $00
    nop                                           ; $4126: $00
    nop                                           ; $4127: $00
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    dec e                                         ; $412b: $1d
    ld e, $1e                                     ; $412c: $1e $1e
    rra                                           ; $412e: $1f
    jr nz, jr_0a9_414f                            ; $412f: $20 $1e

    ld e, $21                                     ; $4131: $1e $21
    nop                                           ; $4133: $00
    nop                                           ; $4134: $00
    nop                                           ; $4135: $00
    nop                                           ; $4136: $00
    nop                                           ; $4137: $00
    nop                                           ; $4138: $00
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    nop                                           ; $413b: $00
    nop                                           ; $413c: $00
    nop                                           ; $413d: $00
    nop                                           ; $413e: $00
    ld [hl+], a                                   ; $413f: $22
    inc hl                                        ; $4140: $23
    nop                                           ; $4141: $00
    nop                                           ; $4142: $00
    nop                                           ; $4143: $00
    nop                                           ; $4144: $00
    nop                                           ; $4145: $00
    ld [$000d], sp                                ; $4146: $08 $0d $00
    nop                                           ; $4149: $00
    nop                                           ; $414a: $00
    nop                                           ; $414b: $00
    nop                                           ; $414c: $00
    nop                                           ; $414d: $00
    nop                                           ; $414e: $00

jr_0a9_414f:
    nop                                           ; $414f: $00
    nop                                           ; $4150: $00
    ld bc, $0102                                  ; $4151: $01 $02 $01
    ld bc, $0003                                  ; $4154: $01 $03 $00
    nop                                           ; $4157: $00
    nop                                           ; $4158: $00
    inc b                                         ; $4159: $04
    dec b                                         ; $415a: $05
    ld b, $07                                     ; $415b: $06 $07
    ld [$0a09], sp                                ; $415d: $08 $09 $0a
    nop                                           ; $4160: $00
    dec bc                                        ; $4161: $0b
    nop                                           ; $4162: $00
    inc c                                         ; $4163: $0c
    dec c                                         ; $4164: $0d
    ld c, $09                                     ; $4165: $0e $09
    rrca                                          ; $4167: $0f
    nop                                           ; $4168: $00
    db $10                                        ; $4169: $10
    add hl, bc                                    ; $416a: $09
    add hl, bc                                    ; $416b: $09
    add hl, bc                                    ; $416c: $09
    add hl, bc                                    ; $416d: $09
    ld de, $0000                                  ; $416e: $11 $00 $00
    nop                                           ; $4171: $00
    inc c                                         ; $4172: $0c
    ld [de], a                                    ; $4173: $12
    inc de                                        ; $4174: $13
    dec bc                                        ; $4175: $0b
    nop                                           ; $4176: $00
    nop                                           ; $4177: $00
    nop                                           ; $4178: $00
    inc d                                         ; $4179: $14
    dec d                                         ; $417a: $15
    ld d, $17                                     ; $417b: $16 $17
    jr jr_0a9_4182                                ; $417d: $18 $03

    nop                                           ; $417f: $00
    nop                                           ; $4180: $00
    db $10                                        ; $4181: $10

jr_0a9_4182:
    add hl, bc                                    ; $4182: $09
    add hl, de                                    ; $4183: $19
    ld a, [de]                                    ; $4184: $1a
    add hl, bc                                    ; $4185: $09
    ld de, $0000                                  ; $4186: $11 $00 $00
    nop                                           ; $4189: $00
    inc c                                         ; $418a: $0c
    add hl, bc                                    ; $418b: $09
    add hl, bc                                    ; $418c: $09
    dec bc                                        ; $418d: $0b
    nop                                           ; $418e: $00
    nop                                           ; $418f: $00
    nop                                           ; $4190: $00
    inc d                                         ; $4191: $14
    dec d                                         ; $4192: $15
    ld de, $1810                                  ; $4193: $11 $10 $18
    inc bc                                        ; $4196: $03
    nop                                           ; $4197: $00
    nop                                           ; $4198: $00
    db $10                                        ; $4199: $10
    add hl, bc                                    ; $419a: $09
    dec de                                        ; $419b: $1b
    inc e                                         ; $419c: $1c
    add hl, bc                                    ; $419d: $09
    ld de, $0000                                  ; $419e: $11 $00 $00
    inc e                                         ; $41a1: $1c
    add hl, bc                                    ; $41a2: $09
    add hl, bc                                    ; $41a3: $09
    add hl, bc                                    ; $41a4: $09
    add hl, bc                                    ; $41a5: $09
    dec de                                        ; $41a6: $1b
    dec e                                         ; $41a7: $1d
    nop                                           ; $41a8: $00
    ld e, $1e                                     ; $41a9: $1e $1e
    rra                                           ; $41ab: $1f
    jr nz, @+$20                                  ; $41ac: $20 $1e

    ld e, $21                                     ; $41ae: $1e $21
    rrca                                          ; $41b0: $0f
    dec de                                        ; $41b1: $1b
    nop                                           ; $41b2: $00
    nop                                           ; $41b3: $00
    nop                                           ; $41b4: $00
    nop                                           ; $41b5: $00
    nop                                           ; $41b6: $00
    nop                                           ; $41b7: $00
    nop                                           ; $41b8: $00
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    nop                                           ; $41bc: $00
    nop                                           ; $41bd: $00
    nop                                           ; $41be: $00
    nop                                           ; $41bf: $00
    nop                                           ; $41c0: $00
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    ld bc, $0302                                  ; $41c3: $01 $02 $03
    inc bc                                        ; $41c6: $03
    inc b                                         ; $41c7: $04
    dec b                                         ; $41c8: $05
    ld b, $07                                     ; $41c9: $06 $07
    ld [$0a09], sp                                ; $41cb: $08 $09 $0a
    nop                                           ; $41ce: $00
    nop                                           ; $41cf: $00
    nop                                           ; $41d0: $00
    dec bc                                        ; $41d1: $0b
    inc c                                         ; $41d2: $0c
    dec c                                         ; $41d3: $0d
    ld c, $0e                                     ; $41d4: $0e $0e
    rrca                                          ; $41d6: $0f
    db $10                                        ; $41d7: $10
    ld de, $1312                                  ; $41d8: $11 $12 $13
    inc d                                         ; $41db: $14
    dec d                                         ; $41dc: $15
    ld d, $00                                     ; $41dd: $16 $00
    nop                                           ; $41df: $00
    rla                                           ; $41e0: $17
    jr jr_0a9_41fc                                ; $41e1: $18 $19

    ld a, [de]                                    ; $41e3: $1a
    ld a, [de]                                    ; $41e4: $1a
    dec de                                        ; $41e5: $1b
    db $10                                        ; $41e6: $10
    ld de, $1312                                  ; $41e7: $11 $12 $13
    inc d                                         ; $41ea: $14
    inc e                                         ; $41eb: $1c
    dec e                                         ; $41ec: $1d
    nop                                           ; $41ed: $00
    ld e, $1f                                     ; $41ee: $1e $1f
    jr jr_0a9_4212                                ; $41f0: $18 $20

    ld c, $0e                                     ; $41f2: $0e $0e
    rrca                                          ; $41f4: $0f
    ld hl, $220d                                  ; $41f5: $21 $0d $22
    inc hl                                        ; $41f8: $23
    rrca                                          ; $41f9: $0f
    inc e                                         ; $41fa: $1c
    rra                                           ; $41fb: $1f

jr_0a9_41fc:
    nop                                           ; $41fc: $00
    nop                                           ; $41fd: $00
    inc h                                         ; $41fe: $24
    dec h                                         ; $41ff: $25
    ld h, $26                                     ; $4200: $26 $26
    ld h, $26                                     ; $4202: $26 $26
    daa                                           ; $4204: $27
    ld h, $26                                     ; $4205: $26 $26
    ld h, $26                                     ; $4207: $26 $26
    jr z, jr_0a9_421e                             ; $4209: $28 $13

    nop                                           ; $420b: $00
    nop                                           ; $420c: $00
    add hl, hl                                    ; $420d: $29
    ld a, [hl+]                                   ; $420e: $2a
    ld a, [hl+]                                   ; $420f: $2a
    dec hl                                        ; $4210: $2b
    ld a, [hl+]                                   ; $4211: $2a

jr_0a9_4212:
    ld a, [hl+]                                   ; $4212: $2a
    dec hl                                        ; $4213: $2b
    inc l                                         ; $4214: $2c
    dec l                                         ; $4215: $2d
    ld a, [hl+]                                   ; $4216: $2a
    ld a, [hl+]                                   ; $4217: $2a
    ld l, $13                                     ; $4218: $2e $13
    nop                                           ; $421a: $00
    nop                                           ; $421b: $00
    nop                                           ; $421c: $00
    nop                                           ; $421d: $00

jr_0a9_421e:
    nop                                           ; $421e: $00
    cpl                                           ; $421f: $2f
    nop                                           ; $4220: $00
    nop                                           ; $4221: $00
    cpl                                           ; $4222: $2f
    jr nc, jr_0a9_4236                            ; $4223: $30 $11

    nop                                           ; $4225: $00
    nop                                           ; $4226: $00
    ld sp, $0032                                  ; $4227: $31 $32 $00
    nop                                           ; $422a: $00
    inc sp                                        ; $422b: $33
    ld [de], a                                    ; $422c: $12
    ld de, $342f                                  ; $422d: $11 $2f $34
    ld de, $3512                                  ; $4230: $11 $12 $35
    ld de, $3736                                  ; $4233: $11 $36 $37

jr_0a9_4236:
    jr c, jr_0a9_4271                             ; $4236: $38 $39

    nop                                           ; $4238: $00
    nop                                           ; $4239: $00
    ld a, [hl-]                                   ; $423a: $3a
    dec sp                                        ; $423b: $3b
    inc a                                         ; $423c: $3c
    dec a                                         ; $423d: $3d
    inc [hl]                                      ; $423e: $34
    ld de, $3512                                  ; $423f: $11 $12 $35
    ld de, $0000                                  ; $4242: $11 $00 $00
    nop                                           ; $4245: $00
    add hl, sp                                    ; $4246: $39
    nop                                           ; $4247: $00
    nop                                           ; $4248: $00
    nop                                           ; $4249: $00
    ld [de], a                                    ; $424a: $12
    ld de, $3731                                  ; $424b: $11 $31 $37
    scf                                           ; $424e: $37
    scf                                           ; $424f: $37
    inc a                                         ; $4250: $3c
    ld a, $3f                                     ; $4251: $3e $3f
    ld b, b                                       ; $4253: $40
    ld b, c                                       ; $4254: $41
    ld b, d                                       ; $4255: $42
    nop                                           ; $4256: $00
    nop                                           ; $4257: $00
    nop                                           ; $4258: $00
    inc sp                                        ; $4259: $33
    ld b, e                                       ; $425a: $43
    cpl                                           ; $425b: $2f
    nop                                           ; $425c: $00
    nop                                           ; $425d: $00
    jr nc, jr_0a9_4271                            ; $425e: $30 $11

    nop                                           ; $4260: $00
    nop                                           ; $4261: $00
    cpl                                           ; $4262: $2f
    jr nc, jr_0a9_4278                            ; $4263: $30 $13

    nop                                           ; $4265: $00
    ld b, h                                       ; $4266: $44
    ld b, l                                       ; $4267: $45
    ld b, [hl]                                    ; $4268: $46
    ld b, [hl]                                    ; $4269: $46
    ld b, a                                       ; $426a: $47
    ld c, b                                       ; $426b: $48
    ld c, c                                       ; $426c: $49
    ld c, d                                       ; $426d: $4a
    ld c, e                                       ; $426e: $4b
    ld c, c                                       ; $426f: $49
    ld c, h                                       ; $4270: $4c

jr_0a9_4271:
    ld c, l                                       ; $4271: $4d
    inc l                                         ; $4272: $2c
    inc de                                        ; $4273: $13
    nop                                           ; $4274: $00
    ld c, [hl]                                    ; $4275: $4e
    ld c, a                                       ; $4276: $4f
    dec [hl]                                      ; $4277: $35

jr_0a9_4278:
    dec [hl]                                      ; $4278: $35
    ld d, b                                       ; $4279: $50
    ld d, c                                       ; $427a: $51
    ld d, d                                       ; $427b: $52
    ld hl, $5335                                  ; $427c: $21 $35 $53
    ld b, e                                       ; $427f: $43
    cpl                                           ; $4280: $2f
    jr nc, jr_0a9_4296                            ; $4281: $30 $13

    nop                                           ; $4283: $00
    nop                                           ; $4284: $00
    ld [de], a                                    ; $4285: $12
    dec [hl]                                      ; $4286: $35
    dec [hl]                                      ; $4287: $35
    ld d, b                                       ; $4288: $50
    ld d, h                                       ; $4289: $54
    ld d, l                                       ; $428a: $55
    dec [hl]                                      ; $428b: $35
    dec [hl]                                      ; $428c: $35
    ld d, [hl]                                    ; $428d: $56
    ld d, a                                       ; $428e: $57
    ld [de], a                                    ; $428f: $12
    dec [hl]                                      ; $4290: $35
    inc de                                        ; $4291: $13
    nop                                           ; $4292: $00
    nop                                           ; $4293: $00
    ld [de], a                                    ; $4294: $12
    dec [hl]                                      ; $4295: $35

jr_0a9_4296:
    dec [hl]                                      ; $4296: $35
    ld d, b                                       ; $4297: $50
    ld e, b                                       ; $4298: $58
    ld e, c                                       ; $4299: $59
    ld e, d                                       ; $429a: $5a
    ld e, e                                       ; $429b: $5b
    ld e, c                                       ; $429c: $59
    ld e, h                                       ; $429d: $5c
    ld [de], a                                    ; $429e: $12
    ld e, l                                       ; $429f: $5d
    inc de                                        ; $42a0: $13
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    ld [de], a                                    ; $42a3: $12
    dec [hl]                                      ; $42a4: $35
    dec [hl]                                      ; $42a5: $35
    ld e, [hl]                                    ; $42a6: $5e
    ld c, $0e                                     ; $42a7: $0e $0e
    ld e, a                                       ; $42a9: $5f
    dec c                                         ; $42aa: $0d
    ld c, $0e                                     ; $42ab: $0e $0e
    ld [hl+], a                                   ; $42ad: $22
    db $10                                        ; $42ae: $10
    inc de                                        ; $42af: $13
    nop                                           ; $42b0: $00
    nop                                           ; $42b1: $00
    ld [de], a                                    ; $42b2: $12
    ld h, b                                       ; $42b3: $60
    ld a, [hl+]                                   ; $42b4: $2a
    ld a, [hl+]                                   ; $42b5: $2a
    inc l                                         ; $42b6: $2c
    ld e, e                                       ; $42b7: $5b
    ld e, c                                       ; $42b8: $59
    ld h, c                                       ; $42b9: $61
    dec [hl]                                      ; $42ba: $35
    dec l                                         ; $42bb: $2d
    ld a, [hl+]                                   ; $42bc: $2a
    ld h, d                                       ; $42bd: $62
    inc de                                        ; $42be: $13
    nop                                           ; $42bf: $00
    nop                                           ; $42c0: $00
    ld [de], a                                    ; $42c1: $12
    inc de                                        ; $42c2: $13
    nop                                           ; $42c3: $00
    nop                                           ; $42c4: $00
    jr nc, jr_0a9_42d4                            ; $42c5: $30 $0d

    ld c, $0f                                     ; $42c7: $0e $0f
    dec [hl]                                      ; $42c9: $35
    ld de, $3000                                  ; $42ca: $11 $00 $30
    inc de                                        ; $42cd: $13
    nop                                           ; $42ce: $00
    nop                                           ; $42cf: $00
    ld [hl], $37                                  ; $42d0: $36 $37
    scf                                           ; $42d2: $37
    ld h, e                                       ; $42d3: $63

jr_0a9_42d4:
    db $10                                        ; $42d4: $10
    dec [hl]                                      ; $42d5: $35
    dec [hl]                                      ; $42d6: $35
    dec [hl]                                      ; $42d7: $35
    scf                                           ; $42d8: $37
    ld h, h                                       ; $42d9: $64
    dec [hl]                                      ; $42da: $35
    db $10                                        ; $42db: $10
    inc de                                        ; $42dc: $13
    nop                                           ; $42dd: $00
    nop                                           ; $42de: $00
    nop                                           ; $42df: $00
    nop                                           ; $42e0: $00
    nop                                           ; $42e1: $00
    ld [de], a                                    ; $42e2: $12
    db $10                                        ; $42e3: $10
    ld h, l                                       ; $42e4: $65
    inc sp                                        ; $42e5: $33
    ld d, d                                       ; $42e6: $52
    ld h, [hl]                                    ; $42e7: $66
    inc d                                         ; $42e8: $14
    dec [hl]                                      ; $42e9: $35
    ld h, a                                       ; $42ea: $67
    inc de                                        ; $42eb: $13
    nop                                           ; $42ec: $00
    nop                                           ; $42ed: $00
    ld l, b                                       ; $42ee: $68
    ld l, c                                       ; $42ef: $69
    ld c, h                                       ; $42f0: $4c
    ld l, d                                       ; $42f1: $6a
    ld h, d                                       ; $42f2: $62
    ld l, e                                       ; $42f3: $6b
    ld b, [hl]                                    ; $42f4: $46
    ld d, l                                       ; $42f5: $55
    ld l, h                                       ; $42f6: $6c
    inc d                                         ; $42f7: $14
    ld l, l                                       ; $42f8: $6d
    ld a, [hl+]                                   ; $42f9: $2a
    ld l, [hl]                                    ; $42fa: $6e
    nop                                           ; $42fb: $00
    nop                                           ; $42fc: $00
    nop                                           ; $42fd: $00
    ld [de], a                                    ; $42fe: $12
    ld c, e                                       ; $42ff: $4b
    ld l, a                                       ; $4300: $6f
    jr nc, jr_0a9_4338                            ; $4301: $30 $35

    dec [hl]                                      ; $4303: $35
    dec [hl]                                      ; $4304: $35
    ld [hl], b                                    ; $4305: $70
    inc d                                         ; $4306: $14
    ld h, [hl]                                    ; $4307: $66
    nop                                           ; $4308: $00
    add hl, sp                                    ; $4309: $39
    nop                                           ; $430a: $00
    nop                                           ; $430b: $00
    ld [de], a                                    ; $430c: $12
    ld h, l                                       ; $430d: $65
    inc sp                                        ; $430e: $33
    ld [de], a                                    ; $430f: $12
    db $10                                        ; $4310: $10
    inc a                                         ; $4311: $3c
    scf                                           ; $4312: $37
    ld h, h                                       ; $4313: $64
    ld [hl], c                                    ; $4314: $71
    rrca                                          ; $4315: $0f
    dec [hl]                                      ; $4316: $35
    dec [hl]                                      ; $4317: $35
    inc de                                        ; $4318: $13
    nop                                           ; $4319: $00
    nop                                           ; $431a: $00
    ld [hl], d                                    ; $431b: $72
    ld e, h                                       ; $431c: $5c
    nop                                           ; $431d: $00
    ld [de], a                                    ; $431e: $12
    ld hl, $0011                                  ; $431f: $21 $11 $00
    inc d                                         ; $4322: $14
    dec [hl]                                      ; $4323: $35
    dec [hl]                                      ; $4324: $35
    dec [hl]                                      ; $4325: $35
    dec [hl]                                      ; $4326: $35
    inc de                                        ; $4327: $13
    nop                                           ; $4328: $00
    nop                                           ; $4329: $00
    ld [hl], e                                    ; $432a: $73
    ld c, $0e                                     ; $432b: $0e $0e
    ld [hl+], a                                   ; $432d: $22
    dec [hl]                                      ; $432e: $35
    ld c, e                                       ; $432f: $4b
    ld c, c                                       ; $4330: $49
    ld [hl], h                                    ; $4331: $74
    dec [hl]                                      ; $4332: $35
    dec [hl]                                      ; $4333: $35
    dec [hl]                                      ; $4334: $35
    dec [hl]                                      ; $4335: $35
    inc de                                        ; $4336: $13
    nop                                           ; $4337: $00

jr_0a9_4338:
    nop                                           ; $4338: $00
    add hl, hl                                    ; $4339: $29
    ld a, [hl+]                                   ; $433a: $2a
    ld a, [hl+]                                   ; $433b: $2a
    ld a, [hl+]                                   ; $433c: $2a
    ld a, [hl+]                                   ; $433d: $2a
    ld a, [hl+]                                   ; $433e: $2a
    ld a, [hl+]                                   ; $433f: $2a
    ld a, [hl+]                                   ; $4340: $2a
    ld a, [hl+]                                   ; $4341: $2a
    ld a, [hl+]                                   ; $4342: $2a
    ld a, [hl+]                                   ; $4343: $2a
    ld a, [hl+]                                   ; $4344: $2a
    ld [hl], l                                    ; $4345: $75
    nop                                           ; $4346: $00
    rrca                                          ; $4347: $0f
    dec de                                        ; $4348: $1b
    nop                                           ; $4349: $00
    nop                                           ; $434a: $00
    nop                                           ; $434b: $00
    nop                                           ; $434c: $00
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    nop                                           ; $4350: $00
    nop                                           ; $4351: $00
    nop                                           ; $4352: $00
    nop                                           ; $4353: $00
    nop                                           ; $4354: $00
    nop                                           ; $4355: $00
    nop                                           ; $4356: $00
    nop                                           ; $4357: $00
    nop                                           ; $4358: $00
    ld bc, $0302                                  ; $4359: $01 $02 $03
    inc b                                         ; $435c: $04
    dec b                                         ; $435d: $05
    ld b, $07                                     ; $435e: $06 $07
    ld [$0909], sp                                ; $4360: $08 $09 $09
    ld a, [bc]                                    ; $4363: $0a
    ld [bc], a                                    ; $4364: $02
    dec bc                                        ; $4365: $0b
    nop                                           ; $4366: $00
    nop                                           ; $4367: $00
    inc c                                         ; $4368: $0c
    dec c                                         ; $4369: $0d
    ld c, $0f                                     ; $436a: $0e $0f
    db $10                                        ; $436c: $10
    ld de, $1312                                  ; $436d: $11 $12 $13
    inc d                                         ; $4370: $14
    dec d                                         ; $4371: $15
    rrca                                          ; $4372: $0f
    dec c                                         ; $4373: $0d
    ld d, $00                                     ; $4374: $16 $00
    nop                                           ; $4376: $00
    rla                                           ; $4377: $17
    jr jr_0a9_4393                                ; $4378: $18 $19

    ld a, [de]                                    ; $437a: $1a
    dec de                                        ; $437b: $1b
    inc e                                         ; $437c: $1c
    dec e                                         ; $437d: $1d
    ld e, $11                                     ; $437e: $1e $11
    rra                                           ; $4380: $1f
    jr nz, jr_0a9_4390                            ; $4381: $20 $0d

    dec c                                         ; $4383: $0d
    nop                                           ; $4384: $00
    ld hl, $2322                                  ; $4385: $21 $22 $23
    add hl, de                                    ; $4388: $19
    inc h                                         ; $4389: $24
    dec h                                         ; $438a: $25
    dec h                                         ; $438b: $25
    ld h, $27                                     ; $438c: $26 $27
    jr z, jr_0a9_43af                             ; $438e: $28 $1f

jr_0a9_4390:
    add hl, hl                                    ; $4390: $29
    nop                                           ; $4391: $00
    nop                                           ; $4392: $00

jr_0a9_4393:
    nop                                           ; $4393: $00
    nop                                           ; $4394: $00
    ld a, [hl+]                                   ; $4395: $2a
    dec hl                                        ; $4396: $2b
    inc l                                         ; $4397: $2c
    dec de                                        ; $4398: $1b
    dec de                                        ; $4399: $1b
    dec de                                        ; $439a: $1b
    dec l                                         ; $439b: $2d
    nop                                           ; $439c: $00
    nop                                           ; $439d: $00
    rra                                           ; $439e: $1f
    ld l, $2f                                     ; $439f: $2e $2f
    jr nc, jr_0a9_43a3                            ; $43a1: $30 $00

jr_0a9_43a3:
    nop                                           ; $43a3: $00
    nop                                           ; $43a4: $00
    nop                                           ; $43a5: $00
    nop                                           ; $43a6: $00
    nop                                           ; $43a7: $00
    nop                                           ; $43a8: $00
    nop                                           ; $43a9: $00
    ld sp, $2020                                  ; $43aa: $31 $20 $20
    ld [hl-], a                                   ; $43ad: $32
    rrca                                          ; $43ae: $0f

jr_0a9_43af:
    inc hl                                        ; $43af: $23
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    nop                                           ; $43b2: $00
    nop                                           ; $43b3: $00
    nop                                           ; $43b4: $00
    nop                                           ; $43b5: $00
    nop                                           ; $43b6: $00
    nop                                           ; $43b7: $00
    nop                                           ; $43b8: $00
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    nop                                           ; $43bb: $00
    rra                                           ; $43bc: $1f
    jr nz, jr_0a9_43cf                            ; $43bd: $20 $10

    inc hl                                        ; $43bf: $23
    nop                                           ; $43c0: $00
    nop                                           ; $43c1: $00
    nop                                           ; $43c2: $00
    nop                                           ; $43c3: $00
    nop                                           ; $43c4: $00
    nop                                           ; $43c5: $00
    nop                                           ; $43c6: $00
    nop                                           ; $43c7: $00
    inc sp                                        ; $43c8: $33
    dec b                                         ; $43c9: $05
    dec b                                         ; $43ca: $05
    inc [hl]                                      ; $43cb: $34
    rrca                                          ; $43cc: $0f
    dec [hl]                                      ; $43cd: $35
    dec hl                                        ; $43ce: $2b

jr_0a9_43cf:
    nop                                           ; $43cf: $00
    nop                                           ; $43d0: $00
    nop                                           ; $43d1: $00
    nop                                           ; $43d2: $00
    nop                                           ; $43d3: $00
    nop                                           ; $43d4: $00
    nop                                           ; $43d5: $00
    nop                                           ; $43d6: $00
    ld [hl], $37                                  ; $43d7: $36 $37
    scf                                           ; $43d9: $37
    rra                                           ; $43da: $1f
    rrca                                          ; $43db: $0f
    jr c, @+$3b                                   ; $43dc: $38 $39

    nop                                           ; $43de: $00
    nop                                           ; $43df: $00
    nop                                           ; $43e0: $00
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    nop                                           ; $43e3: $00
    nop                                           ; $43e4: $00
    nop                                           ; $43e5: $00
    ld a, [hl-]                                   ; $43e6: $3a
    dec sp                                        ; $43e7: $3b
    dec sp                                        ; $43e8: $3b
    inc a                                         ; $43e9: $3c
    ld a, [de]                                    ; $43ea: $1a
    dec de                                        ; $43eb: $1b
    dec hl                                        ; $43ec: $2b
    nop                                           ; $43ed: $00
    nop                                           ; $43ee: $00
    nop                                           ; $43ef: $00
    nop                                           ; $43f0: $00
    nop                                           ; $43f1: $00
    nop                                           ; $43f2: $00
    nop                                           ; $43f3: $00
    nop                                           ; $43f4: $00
    dec a                                         ; $43f5: $3d
    dec de                                        ; $43f6: $1b
    dec de                                        ; $43f7: $1b
    ld a, $24                                     ; $43f8: $3e $24
    dec h                                         ; $43fa: $25
    add hl, sp                                    ; $43fb: $39
    nop                                           ; $43fc: $00
    nop                                           ; $43fd: $00
    nop                                           ; $43fe: $00
    nop                                           ; $43ff: $00
    nop                                           ; $4400: $00
    nop                                           ; $4401: $00
    nop                                           ; $4402: $00
    nop                                           ; $4403: $00
    ccf                                           ; $4404: $3f
    dec h                                         ; $4405: $25
    dec h                                         ; $4406: $25
    ld b, b                                       ; $4407: $40
    jr nz, jr_0a9_442a                            ; $4408: $20 $20

    ld b, c                                       ; $440a: $41
    nop                                           ; $440b: $00
    nop                                           ; $440c: $00
    nop                                           ; $440d: $00
    nop                                           ; $440e: $00
    nop                                           ; $440f: $00
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    nop                                           ; $4412: $00
    ld sp, $1010                                  ; $4413: $31 $10 $10
    ld de, $0000                                  ; $4416: $11 $00 $00
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    nop                                           ; $441b: $00
    nop                                           ; $441c: $00
    nop                                           ; $441d: $00
    nop                                           ; $441e: $00
    nop                                           ; $441f: $00
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    ld sp, $2020                                  ; $4422: $31 $20 $20
    ld b, d                                       ; $4425: $42
    ld b, e                                       ; $4426: $43
    ld b, h                                       ; $4427: $44
    ld b, l                                       ; $4428: $45
    nop                                           ; $4429: $00

jr_0a9_442a:
    nop                                           ; $442a: $00
    nop                                           ; $442b: $00
    nop                                           ; $442c: $00
    nop                                           ; $442d: $00
    nop                                           ; $442e: $00
    nop                                           ; $442f: $00
    nop                                           ; $4430: $00
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    nop                                           ; $4433: $00
    nop                                           ; $4434: $00
    nop                                           ; $4435: $00
    rra                                           ; $4436: $1f
    inc hl                                        ; $4437: $23
    nop                                           ; $4438: $00
    nop                                           ; $4439: $00
    nop                                           ; $443a: $00
    nop                                           ; $443b: $00
    nop                                           ; $443c: $00
    nop                                           ; $443d: $00
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    inc sp                                        ; $4440: $33
    dec b                                         ; $4441: $05
    dec b                                         ; $4442: $05
    ld b, $43                                     ; $4443: $06 $43
    ld b, [hl]                                    ; $4445: $46
    ld b, c                                       ; $4446: $41
    nop                                           ; $4447: $00
    nop                                           ; $4448: $00
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    nop                                           ; $444b: $00
    nop                                           ; $444c: $00
    nop                                           ; $444d: $00
    nop                                           ; $444e: $00
    ld sp, $1010                                  ; $444f: $31 $10 $10
    ld de, $0000                                  ; $4452: $11 $00 $00
    nop                                           ; $4455: $00
    nop                                           ; $4456: $00
    nop                                           ; $4457: $00
    nop                                           ; $4458: $00
    nop                                           ; $4459: $00
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    nop                                           ; $445c: $00
    nop                                           ; $445d: $00
    ld sp, $1010                                  ; $445e: $31 $10 $10
    ld b, a                                       ; $4461: $47
    dec b                                         ; $4462: $05
    dec b                                         ; $4463: $05
    ld b, l                                       ; $4464: $45
    nop                                           ; $4465: $00
    nop                                           ; $4466: $00
    nop                                           ; $4467: $00
    nop                                           ; $4468: $00
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    nop                                           ; $446b: $00
    nop                                           ; $446c: $00
    ld sp, $2310                                  ; $446d: $31 $10 $23
    scf                                           ; $4470: $37
    scf                                           ; $4471: $37
    scf                                           ; $4472: $37
    scf                                           ; $4473: $37
    nop                                           ; $4474: $00
    nop                                           ; $4475: $00
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    nop                                           ; $447a: $00
    nop                                           ; $447b: $00
    ld sp, $2310                                  ; $447c: $31 $10 $23
    ld c, b                                       ; $447f: $48
    dec sp                                        ; $4480: $3b
    dec sp                                        ; $4481: $3b
    ld c, c                                       ; $4482: $49
    nop                                           ; $4483: $00
    nop                                           ; $4484: $00
    nop                                           ; $4485: $00
    nop                                           ; $4486: $00
    nop                                           ; $4487: $00
    nop                                           ; $4488: $00
    nop                                           ; $4489: $00
    nop                                           ; $448a: $00
    ld sp, $2310                                  ; $448b: $31 $10 $23
    add hl, de                                    ; $448e: $19
    db $10                                        ; $448f: $10
    dec [hl]                                      ; $4490: $35
    dec hl                                        ; $4491: $2b
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    nop                                           ; $4494: $00
    nop                                           ; $4495: $00
    nop                                           ; $4496: $00
    nop                                           ; $4497: $00
    nop                                           ; $4498: $00
    nop                                           ; $4499: $00
    ld sp, $4a10                                  ; $449a: $31 $10 $4a
    ld c, e                                       ; $449d: $4b
    db $10                                        ; $449e: $10
    jr c, jr_0a9_44da                             ; $449f: $38 $39

    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    nop                                           ; $44a3: $00
    nop                                           ; $44a4: $00
    nop                                           ; $44a5: $00
    nop                                           ; $44a6: $00
    nop                                           ; $44a7: $00
    nop                                           ; $44a8: $00
    ld sp, $3510                                  ; $44a9: $31 $10 $35
    ld c, h                                       ; $44ac: $4c
    db $10                                        ; $44ad: $10
    db $10                                        ; $44ae: $10
    inc hl                                        ; $44af: $23
    nop                                           ; $44b0: $00
    nop                                           ; $44b1: $00
    nop                                           ; $44b2: $00
    nop                                           ; $44b3: $00
    nop                                           ; $44b4: $00
    nop                                           ; $44b5: $00
    nop                                           ; $44b6: $00
    nop                                           ; $44b7: $00
    ld sp, $2310                                  ; $44b8: $31 $10 $23
    add hl, de                                    ; $44bb: $19
    db $10                                        ; $44bc: $10
    inc hl                                        ; $44bd: $23
    scf                                           ; $44be: $37
    nop                                           ; $44bf: $00
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    nop                                           ; $44c2: $00
    nop                                           ; $44c3: $00
    nop                                           ; $44c4: $00
    nop                                           ; $44c5: $00
    nop                                           ; $44c6: $00
    ld sp, $2310                                  ; $44c7: $31 $10 $23
    add hl, de                                    ; $44ca: $19
    db $10                                        ; $44cb: $10
    ld c, l                                       ; $44cc: $4d
    ld c, c                                       ; $44cd: $49
    nop                                           ; $44ce: $00
    nop                                           ; $44cf: $00
    nop                                           ; $44d0: $00
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    nop                                           ; $44d4: $00
    nop                                           ; $44d5: $00
    ld c, [hl]                                    ; $44d6: $4e
    daa                                           ; $44d7: $27
    ld c, a                                       ; $44d8: $4f
    ld d, b                                       ; $44d9: $50

jr_0a9_44da:
    daa                                           ; $44da: $27
    daa                                           ; $44db: $27
    ld c, a                                       ; $44dc: $4f
    nop                                           ; $44dd: $00
    rlca                                          ; $44de: $07
    ld a, [bc]                                    ; $44df: $0a
    nop                                           ; $44e0: $00
    nop                                           ; $44e1: $00
    nop                                           ; $44e2: $00
    nop                                           ; $44e3: $00
    nop                                           ; $44e4: $00
    nop                                           ; $44e5: $00
    nop                                           ; $44e6: $00
    ld bc, $0302                                  ; $44e7: $01 $02 $03
    inc b                                         ; $44ea: $04
    dec b                                         ; $44eb: $05
    nop                                           ; $44ec: $00
    nop                                           ; $44ed: $00
    ld b, $07                                     ; $44ee: $06 $07
    ld [$0a09], sp                                ; $44f0: $08 $09 $0a
    nop                                           ; $44f3: $00
    nop                                           ; $44f4: $00
    ld b, $0b                                     ; $44f5: $06 $0b
    ld b, $0c                                     ; $44f7: $06 $0c
    dec c                                         ; $44f9: $0d
    ld c, $0f                                     ; $44fa: $0e $0f
    ld b, $10                                     ; $44fc: $06 $10
    ld de, $0a12                                  ; $44fe: $11 $12 $0a
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    inc de                                        ; $4503: $13
    inc d                                         ; $4504: $14
    inc d                                         ; $4505: $14
    inc d                                         ; $4506: $14
    dec d                                         ; $4507: $15
    ld d, $00                                     ; $4508: $16 $00
    rla                                           ; $450a: $17
    jr jr_0a9_4526                                ; $450b: $18 $19

    add hl, de                                    ; $450d: $19
    ld a, [de]                                    ; $450e: $1a
    dec de                                        ; $450f: $1b
    inc e                                         ; $4510: $1c
    nop                                           ; $4511: $00
    dec e                                         ; $4512: $1d
    ld e, $1f                                     ; $4513: $1e $1f
    rra                                           ; $4515: $1f
    rrca                                          ; $4516: $0f
    nop                                           ; $4517: $00
    nop                                           ; $4518: $00
    nop                                           ; $4519: $00
    jr nz, jr_0a9_453d                            ; $451a: $20 $21

    ld hl, $0022                                  ; $451c: $21 $22 $00
    nop                                           ; $451f: $00
    nop                                           ; $4520: $00
    nop                                           ; $4521: $00
    nop                                           ; $4522: $00
    nop                                           ; $4523: $00
    nop                                           ; $4524: $00
    nop                                           ; $4525: $00

jr_0a9_4526:
    ld b, $09                                     ; $4526: $06 $09
    nop                                           ; $4528: $00
    nop                                           ; $4529: $00
    nop                                           ; $452a: $00
    nop                                           ; $452b: $00
    nop                                           ; $452c: $00
    nop                                           ; $452d: $00
    ld bc, $0302                                  ; $452e: $01 $02 $03
    inc b                                         ; $4531: $04
    dec b                                         ; $4532: $05
    nop                                           ; $4533: $00
    ld b, $07                                     ; $4534: $06 $07
    ld [$0a09], sp                                ; $4536: $08 $09 $0a
    nop                                           ; $4539: $00
    ld b, $0b                                     ; $453a: $06 $0b
    inc c                                         ; $453c: $0c

jr_0a9_453d:
    dec c                                         ; $453d: $0d
    nop                                           ; $453e: $00
    nop                                           ; $453f: $00
    ld b, $0e                                     ; $4540: $06 $0e
    rrca                                          ; $4542: $0f
    stop                                          ; $4543: $10 $00
    nop                                           ; $4545: $00
    ld b, $11                                     ; $4546: $06 $11
    ld [de], a                                    ; $4548: $12
    inc de                                        ; $4549: $13
    inc d                                         ; $454a: $14
    nop                                           ; $454b: $00
    ld b, $15                                     ; $454c: $06 $15
    ld d, $17                                     ; $454e: $16 $17
    jr jr_0a9_4552                                ; $4550: $18 $00

jr_0a9_4552:
    ld b, $19                                     ; $4552: $06 $19
    ld a, [de]                                    ; $4554: $1a
    dec de                                        ; $4555: $1b
    inc e                                         ; $4556: $1c
    dec e                                         ; $4557: $1d
    ld e, $1f                                     ; $4558: $1e $1f
    rra                                           ; $455a: $1f
    rra                                           ; $455b: $1f
    jr nz, jr_0a9_455e                            ; $455c: $20 $00

jr_0a9_455e:
    ld a, [bc]                                    ; $455e: $0a
    ld [de], a                                    ; $455f: $12
    nop                                           ; $4560: $00
    nop                                           ; $4561: $00
    nop                                           ; $4562: $00
    nop                                           ; $4563: $00
    nop                                           ; $4564: $00
    nop                                           ; $4565: $00
    nop                                           ; $4566: $00
    nop                                           ; $4567: $00
    nop                                           ; $4568: $00
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    ld bc, $0302                                  ; $456b: $01 $02 $03
    inc b                                         ; $456e: $04
    dec b                                         ; $456f: $05
    ld b, $07                                     ; $4570: $06 $07
    ld [$0000], sp                                ; $4572: $08 $00 $00
    add hl, bc                                    ; $4575: $09
    nop                                           ; $4576: $00
    ld a, [bc]                                    ; $4577: $0a
    dec bc                                        ; $4578: $0b
    nop                                           ; $4579: $00
    inc c                                         ; $457a: $0c
    dec c                                         ; $457b: $0d
    ld c, $00                                     ; $457c: $0e $00
    nop                                           ; $457e: $00
    rrca                                          ; $457f: $0f
    db $10                                        ; $4580: $10
    ld de, $1312                                  ; $4581: $11 $12 $13
    inc d                                         ; $4584: $14
    dec c                                         ; $4585: $0d
    ld c, $00                                     ; $4586: $0e $00
    nop                                           ; $4588: $00
    add hl, bc                                    ; $4589: $09
    dec d                                         ; $458a: $15
    ld d, $00                                     ; $458b: $16 $00
    nop                                           ; $458d: $00
    rla                                           ; $458e: $17
    jr @+$1b                                      ; $458f: $18 $19

    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    rrca                                          ; $4593: $0f
    db $10                                        ; $4594: $10
    ld a, [de]                                    ; $4595: $1a
    dec de                                        ; $4596: $1b
    inc e                                         ; $4597: $1c
    dec e                                         ; $4598: $1d
    ld e, $1f                                     ; $4599: $1e $1f
    nop                                           ; $459b: $00
    nop                                           ; $459c: $00
    jr nz, jr_0a9_45ac                            ; $459d: $20 $0d

    ld hl, $2322                                  ; $459f: $21 $22 $23
    inc h                                         ; $45a2: $24
    dec c                                         ; $45a3: $0d
    ld c, $00                                     ; $45a4: $0e $00
    nop                                           ; $45a6: $00
    add hl, bc                                    ; $45a7: $09
    dec d                                         ; $45a8: $15
    ld d, $00                                     ; $45a9: $16 $00
    nop                                           ; $45ab: $00

jr_0a9_45ac:
    rla                                           ; $45ac: $17
    jr jr_0a9_45bd                                ; $45ad: $18 $0e

    nop                                           ; $45af: $00
    nop                                           ; $45b0: $00
    rrca                                          ; $45b1: $0f
    db $10                                        ; $45b2: $10
    ld a, [de]                                    ; $45b3: $1a
    dec de                                        ; $45b4: $1b
    inc e                                         ; $45b5: $1c
    dec e                                         ; $45b6: $1d
    ld e, $0e                                     ; $45b7: $1e $0e
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    jr nz, jr_0a9_45ca                            ; $45bb: $20 $0d

jr_0a9_45bd:
    ld hl, $2322                                  ; $45bd: $21 $22 $23
    inc h                                         ; $45c0: $24
    dec c                                         ; $45c1: $0d
    ld c, $00                                     ; $45c2: $0e $00
    nop                                           ; $45c4: $00
    add hl, bc                                    ; $45c5: $09
    dec d                                         ; $45c6: $15
    ld d, $00                                     ; $45c7: $16 $00
    nop                                           ; $45c9: $00

jr_0a9_45ca:
    rla                                           ; $45ca: $17
    jr jr_0a9_45db                                ; $45cb: $18 $0e

    nop                                           ; $45cd: $00
    nop                                           ; $45ce: $00
    rrca                                          ; $45cf: $0f
    db $10                                        ; $45d0: $10
    ld a, [de]                                    ; $45d1: $1a
    dec de                                        ; $45d2: $1b
    inc e                                         ; $45d3: $1c
    dec e                                         ; $45d4: $1d
    ld e, $0e                                     ; $45d5: $1e $0e
    nop                                           ; $45d7: $00
    nop                                           ; $45d8: $00
    jr nz, jr_0a9_45e8                            ; $45d9: $20 $0d

jr_0a9_45db:
    ld hl, $2322                                  ; $45db: $21 $22 $23
    inc h                                         ; $45de: $24
    dec c                                         ; $45df: $0d
    ld c, $00                                     ; $45e0: $0e $00
    nop                                           ; $45e2: $00
    add hl, bc                                    ; $45e3: $09
    dec d                                         ; $45e4: $15
    ld d, $00                                     ; $45e5: $16 $00
    nop                                           ; $45e7: $00

jr_0a9_45e8:
    rla                                           ; $45e8: $17
    jr jr_0a9_45f9                                ; $45e9: $18 $0e

    nop                                           ; $45eb: $00
    nop                                           ; $45ec: $00
    rrca                                          ; $45ed: $0f
    db $10                                        ; $45ee: $10
    ld a, [de]                                    ; $45ef: $1a
    dec de                                        ; $45f0: $1b
    inc e                                         ; $45f1: $1c
    dec e                                         ; $45f2: $1d
    ld e, $0e                                     ; $45f3: $1e $0e
    nop                                           ; $45f5: $00
    nop                                           ; $45f6: $00
    jr nz, jr_0a9_4606                            ; $45f7: $20 $0d

jr_0a9_45f9:
    dec c                                         ; $45f9: $0d
    dec c                                         ; $45fa: $0d
    dec c                                         ; $45fb: $0d
    dec c                                         ; $45fc: $0d
    dec c                                         ; $45fd: $0d
    add hl, de                                    ; $45fe: $19
    nop                                           ; $45ff: $00
    nop                                           ; $4600: $00
    jr nz, jr_0a9_4610                            ; $4601: $20 $0d

    dec c                                         ; $4603: $0d
    dec c                                         ; $4604: $0d
    dec c                                         ; $4605: $0d

jr_0a9_4606:
    dec c                                         ; $4606: $0d
    dec c                                         ; $4607: $0d
    rra                                           ; $4608: $1f
    nop                                           ; $4609: $00
    nop                                           ; $460a: $00
    dec h                                         ; $460b: $25
    ld h, $26                                     ; $460c: $26 $26
    ld h, $26                                     ; $460e: $26 $26

jr_0a9_4610:
    ld h, $26                                     ; $4610: $26 $26
    daa                                           ; $4612: $27
    nop                                           ; $4613: $00
    ld [$0006], sp                                ; $4614: $08 $06 $00
    nop                                           ; $4617: $00
    nop                                           ; $4618: $00
    nop                                           ; $4619: $00
    nop                                           ; $461a: $00
    nop                                           ; $461b: $00
    nop                                           ; $461c: $00
    nop                                           ; $461d: $00
    ld bc, $0302                                  ; $461e: $01 $02 $03
    inc b                                         ; $4621: $04
    dec b                                         ; $4622: $05
    dec b                                         ; $4623: $05
    ld b, $00                                     ; $4624: $06 $00
    rlca                                          ; $4626: $07
    ld [$0a09], sp                                ; $4627: $08 $09 $0a
    dec bc                                        ; $462a: $0b
    inc c                                         ; $462b: $0c
    dec c                                         ; $462c: $0d
    nop                                           ; $462d: $00
    ld c, $0f                                     ; $462e: $0e $0f
    db $10                                        ; $4630: $10
    ld de, $1312                                  ; $4631: $11 $12 $13
    inc d                                         ; $4634: $14
    dec d                                         ; $4635: $15
    ld d, $17                                     ; $4636: $16 $17
    jr @+$1b                                      ; $4638: $18 $19

    ld a, [de]                                    ; $463a: $1a
    dec de                                        ; $463b: $1b
    inc e                                         ; $463c: $1c
    dec e                                         ; $463d: $1d
    nop                                           ; $463e: $00
    nop                                           ; $463f: $00
    ld e, $1f                                     ; $4640: $1e $1f
    rra                                           ; $4642: $1f
    rra                                           ; $4643: $1f
    jr nz, jr_0a9_4646                            ; $4644: $20 $00

jr_0a9_4646:
    ld [$000a], sp                                ; $4646: $08 $0a $00
    nop                                           ; $4649: $00
    nop                                           ; $464a: $00
    nop                                           ; $464b: $00
    nop                                           ; $464c: $00
    nop                                           ; $464d: $00
    nop                                           ; $464e: $00
    nop                                           ; $464f: $00
    nop                                           ; $4650: $00
    ld bc, $0202                                  ; $4651: $01 $02 $02
    ld [bc], a                                    ; $4654: $02
    ld [bc], a                                    ; $4655: $02
    inc bc                                        ; $4656: $03
    inc b                                         ; $4657: $04
    nop                                           ; $4658: $00
    dec b                                         ; $4659: $05
    ld b, $07                                     ; $465a: $06 $07
    ld [$0606], sp                                ; $465c: $08 $06 $06
    add hl, bc                                    ; $465f: $09
    ld a, [bc]                                    ; $4660: $0a
    dec bc                                        ; $4661: $0b
    ld b, $0c                                     ; $4662: $06 $0c
    dec c                                         ; $4664: $0d
    ld c, $0f                                     ; $4665: $0e $0f
    add hl, bc                                    ; $4667: $09
    db $10                                        ; $4668: $10
    ld de, $1206                                  ; $4669: $11 $06 $12
    inc de                                        ; $466c: $13
    inc d                                         ; $466d: $14
    dec d                                         ; $466e: $15
    add hl, bc                                    ; $466f: $09
    nop                                           ; $4670: $00
    dec b                                         ; $4671: $05
    ld b, $16                                     ; $4672: $06 $16
    rla                                           ; $4674: $17
    jr jr_0a9_4690                                ; $4675: $18 $19

    add hl, bc                                    ; $4677: $09
    nop                                           ; $4678: $00
    dec b                                         ; $4679: $05
    ld a, [de]                                    ; $467a: $1a
    ld c, $0e                                     ; $467b: $0e $0e
    dec de                                        ; $467d: $1b
    inc e                                         ; $467e: $1c
    dec e                                         ; $467f: $1d
    nop                                           ; $4680: $00
    ld e, $1f                                     ; $4681: $1e $1f
    jr nz, @+$04                                  ; $4683: $20 $02

    ld [bc], a                                    ; $4685: $02
    ld hl, $0000                                  ; $4686: $21 $00 $00
    nop                                           ; $4689: $00
    nop                                           ; $468a: $00
    ld [hl+], a                                   ; $468b: $22
    inc hl                                        ; $468c: $23
    inc hl                                        ; $468d: $23
    add hl, bc                                    ; $468e: $09
    nop                                           ; $468f: $00

jr_0a9_4690:
    nop                                           ; $4690: $00
    nop                                           ; $4691: $00
    nop                                           ; $4692: $00
    nop                                           ; $4693: $00
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    nop                                           ; $4697: $00
    add hl, bc                                    ; $4698: $09
    rlca                                          ; $4699: $07
    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    nop                                           ; $469d: $00
    nop                                           ; $469e: $00
    nop                                           ; $469f: $00
    nop                                           ; $46a0: $00
    nop                                           ; $46a1: $00
    nop                                           ; $46a2: $00
    nop                                           ; $46a3: $00
    ld bc, $0101                                  ; $46a4: $01 $01 $01
    ld bc, $0101                                  ; $46a7: $01 $01 $01
    ld bc, $0000                                  ; $46aa: $01 $00 $00
    ld [bc], a                                    ; $46ad: $02
    inc bc                                        ; $46ae: $03
    inc b                                         ; $46af: $04
    dec b                                         ; $46b0: $05
    ld b, $07                                     ; $46b1: $06 $07
    ld [$0000], sp                                ; $46b3: $08 $00 $00
    add hl, bc                                    ; $46b6: $09
    ld a, [bc]                                    ; $46b7: $0a
    dec bc                                        ; $46b8: $0b
    inc c                                         ; $46b9: $0c
    ld b, $0d                                     ; $46ba: $06 $0d
    ld c, $00                                     ; $46bc: $0e $00
    nop                                           ; $46be: $00
    rrca                                          ; $46bf: $0f
    db $10                                        ; $46c0: $10
    ld de, $1012                                  ; $46c1: $11 $12 $10
    inc de                                        ; $46c4: $13
    inc d                                         ; $46c5: $14
    nop                                           ; $46c6: $00
    nop                                           ; $46c7: $00
    nop                                           ; $46c8: $00
    nop                                           ; $46c9: $00
    nop                                           ; $46ca: $00
    nop                                           ; $46cb: $00
    nop                                           ; $46cc: $00
    dec d                                         ; $46cd: $15
    ld d, $00                                     ; $46ce: $16 $00
    nop                                           ; $46d0: $00
    nop                                           ; $46d1: $00
    nop                                           ; $46d2: $00
    nop                                           ; $46d3: $00
    nop                                           ; $46d4: $00
    nop                                           ; $46d5: $00
    rla                                           ; $46d6: $17
    jr jr_0a9_46d9                                ; $46d7: $18 $00

jr_0a9_46d9:
    dec bc                                        ; $46d9: $0b
    ld a, [bc]                                    ; $46da: $0a
    nop                                           ; $46db: $00
    nop                                           ; $46dc: $00
    nop                                           ; $46dd: $00
    nop                                           ; $46de: $00
    nop                                           ; $46df: $00
    nop                                           ; $46e0: $00
    nop                                           ; $46e1: $00
    nop                                           ; $46e2: $00
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    nop                                           ; $46e5: $00
    ld bc, $0302                                  ; $46e6: $01 $02 $03
    nop                                           ; $46e9: $00
    nop                                           ; $46ea: $00
    ld bc, $0000                                  ; $46eb: $01 $00 $00
    nop                                           ; $46ee: $00
    nop                                           ; $46ef: $00
    nop                                           ; $46f0: $00
    nop                                           ; $46f1: $00
    inc b                                         ; $46f2: $04
    dec b                                         ; $46f3: $05
    ld b, $07                                     ; $46f4: $06 $07
    ld [$0009], sp                                ; $46f6: $08 $09 $00
    nop                                           ; $46f9: $00
    nop                                           ; $46fa: $00
    nop                                           ; $46fb: $00
    ld bc, $0b0a                                  ; $46fc: $01 $0a $0b
    inc c                                         ; $46ff: $0c
    dec c                                         ; $4700: $0d
    ld c, $0f                                     ; $4701: $0e $0f
    nop                                           ; $4703: $00
    nop                                           ; $4704: $00
    nop                                           ; $4705: $00
    nop                                           ; $4706: $00
    db $10                                        ; $4707: $10
    ld de, $1111                                  ; $4708: $11 $11 $11
    ld [de], a                                    ; $470b: $12
    inc de                                        ; $470c: $13
    inc d                                         ; $470d: $14
    nop                                           ; $470e: $00
    nop                                           ; $470f: $00
    nop                                           ; $4710: $00
    nop                                           ; $4711: $00
    nop                                           ; $4712: $00
    nop                                           ; $4713: $00
    nop                                           ; $4714: $00
    nop                                           ; $4715: $00
    dec d                                         ; $4716: $15
    ld d, $17                                     ; $4717: $16 $17
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    nop                                           ; $471b: $00
    nop                                           ; $471c: $00
    nop                                           ; $471d: $00
    nop                                           ; $471e: $00
    nop                                           ; $471f: $00
    nop                                           ; $4720: $00
    dec d                                         ; $4721: $15
    nop                                           ; $4722: $00
    dec d                                         ; $4723: $15
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    nop                                           ; $4726: $00
    nop                                           ; $4727: $00
    nop                                           ; $4728: $00
    nop                                           ; $4729: $00
    nop                                           ; $472a: $00
    nop                                           ; $472b: $00
    jr jr_0a9_4747                                ; $472c: $18 $19

    ld a, [de]                                    ; $472e: $1a
    dec de                                        ; $472f: $1b
    inc e                                         ; $4730: $1c
    nop                                           ; $4731: $00
    nop                                           ; $4732: $00
    nop                                           ; $4733: $00
    nop                                           ; $4734: $00
    dec e                                         ; $4735: $1d
    ld e, $1f                                     ; $4736: $1e $1f
    jr nz, jr_0a9_475a                            ; $4738: $20 $20

    jr nz, jr_0a9_475d                            ; $473a: $20 $21

    ld [hl+], a                                   ; $473c: $22
    inc hl                                        ; $473d: $23
    nop                                           ; $473e: $00
    nop                                           ; $473f: $00
    inc h                                         ; $4740: $24
    inc b                                         ; $4741: $04
    inc b                                         ; $4742: $04
    inc b                                         ; $4743: $04
    inc b                                         ; $4744: $04
    inc b                                         ; $4745: $04
    dec h                                         ; $4746: $25

jr_0a9_4747:
    ld h, $27                                     ; $4747: $26 $27
    dec bc                                        ; $4749: $0b
    dec bc                                        ; $474a: $0b
    nop                                           ; $474b: $00
    nop                                           ; $474c: $00
    nop                                           ; $474d: $00
    nop                                           ; $474e: $00
    nop                                           ; $474f: $00
    nop                                           ; $4750: $00
    nop                                           ; $4751: $00
    nop                                           ; $4752: $00
    nop                                           ; $4753: $00
    nop                                           ; $4754: $00
    nop                                           ; $4755: $00
    nop                                           ; $4756: $00
    ld bc, $0302                                  ; $4757: $01 $02 $03

jr_0a9_475a:
    inc bc                                        ; $475a: $03
    inc b                                         ; $475b: $04
    dec b                                         ; $475c: $05

jr_0a9_475d:
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    nop                                           ; $475f: $00
    nop                                           ; $4760: $00
    nop                                           ; $4761: $00
    ld b, $07                                     ; $4762: $06 $07
    ld [$0a09], sp                                ; $4764: $08 $09 $0a
    dec bc                                        ; $4767: $0b
    nop                                           ; $4768: $00
    nop                                           ; $4769: $00
    nop                                           ; $476a: $00
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    inc c                                         ; $476d: $0c
    dec c                                         ; $476e: $0d
    ld c, $0f                                     ; $476f: $0e $0f
    db $10                                        ; $4771: $10
    ld de, $0000                                  ; $4772: $11 $00 $00
    nop                                           ; $4775: $00
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    ld [de], a                                    ; $4778: $12
    ld [$1413], sp                                ; $4779: $08 $13 $14
    add hl, bc                                    ; $477c: $09
    dec d                                         ; $477d: $15
    nop                                           ; $477e: $00
    nop                                           ; $477f: $00
    nop                                           ; $4780: $00
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    ld [de], a                                    ; $4783: $12
    ld d, $17                                     ; $4784: $16 $17
    jr jr_0a9_47a1                                ; $4786: $18 $19

    dec d                                         ; $4788: $15
    nop                                           ; $4789: $00
    nop                                           ; $478a: $00
    nop                                           ; $478b: $00
    nop                                           ; $478c: $00
    nop                                           ; $478d: $00
    ld [de], a                                    ; $478e: $12
    ld [$1413], sp                                ; $478f: $08 $13 $14
    add hl, bc                                    ; $4792: $09
    ld a, [de]                                    ; $4793: $1a
    dec de                                        ; $4794: $1b
    inc e                                         ; $4795: $1c
    nop                                           ; $4796: $00
    nop                                           ; $4797: $00
    nop                                           ; $4798: $00
    ld [de], a                                    ; $4799: $12
    ld d, $17                                     ; $479a: $16 $17
    jr jr_0a9_47b7                                ; $479c: $18 $19

    dec e                                         ; $479e: $1d
    ld e, $1f                                     ; $479f: $1e $1f

jr_0a9_47a1:
    jr nz, jr_0a9_47a3                            ; $47a1: $20 $00

jr_0a9_47a3:
    nop                                           ; $47a3: $00
    ld [de], a                                    ; $47a4: $12
    ld [$1413], sp                                ; $47a5: $08 $13 $14
    add hl, bc                                    ; $47a8: $09
    dec d                                         ; $47a9: $15
    nop                                           ; $47aa: $00
    nop                                           ; $47ab: $00
    nop                                           ; $47ac: $00
    nop                                           ; $47ad: $00
    nop                                           ; $47ae: $00
    ld [de], a                                    ; $47af: $12
    ld d, $17                                     ; $47b0: $16 $17
    jr jr_0a9_47cd                                ; $47b2: $18 $19

    dec d                                         ; $47b4: $15
    nop                                           ; $47b5: $00
    nop                                           ; $47b6: $00

jr_0a9_47b7:
    nop                                           ; $47b7: $00
    nop                                           ; $47b8: $00
    nop                                           ; $47b9: $00
    ld hl, $2222                                  ; $47ba: $21 $22 $22
    ld [hl+], a                                   ; $47bd: $22
    ld [hl+], a                                   ; $47be: $22
    inc hl                                        ; $47bf: $23
    nop                                           ; $47c0: $00
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    nop                                           ; $47c3: $00
    db $10                                        ; $47c4: $10
    ld b, $00                                     ; $47c5: $06 $00
    nop                                           ; $47c7: $00
    nop                                           ; $47c8: $00
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    nop                                           ; $47cb: $00
    nop                                           ; $47cc: $00

jr_0a9_47cd:
    nop                                           ; $47cd: $00
    nop                                           ; $47ce: $00
    nop                                           ; $47cf: $00
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    nop                                           ; $47d3: $00
    nop                                           ; $47d4: $00
    nop                                           ; $47d5: $00
    ld bc, $0302                                  ; $47d6: $01 $02 $03
    inc b                                         ; $47d9: $04
    dec b                                         ; $47da: $05
    ld b, $07                                     ; $47db: $06 $07
    dec b                                         ; $47dd: $05
    ld [$0a09], sp                                ; $47de: $08 $09 $0a
    dec bc                                        ; $47e1: $0b
    add hl, bc                                    ; $47e2: $09
    inc c                                         ; $47e3: $0c
    dec c                                         ; $47e4: $0d
    ld c, $0f                                     ; $47e5: $0e $0f
    db $10                                        ; $47e7: $10
    ld de, $1312                                  ; $47e8: $11 $12 $13
    inc d                                         ; $47eb: $14
    dec d                                         ; $47ec: $15
    ld [de], a                                    ; $47ed: $12
    ld [de], a                                    ; $47ee: $12
    inc d                                         ; $47ef: $14
    inc d                                         ; $47f0: $14
    ld [de], a                                    ; $47f1: $12
    ld [de], a                                    ; $47f2: $12
    ld d, $17                                     ; $47f3: $16 $17
    jr jr_0a9_4810                                ; $47f5: $18 $19

    ld a, [de]                                    ; $47f7: $1a
    dec de                                        ; $47f8: $1b
    nop                                           ; $47f9: $00
    inc e                                         ; $47fa: $1c
    dec e                                         ; $47fb: $1d
    ld e, $00                                     ; $47fc: $1e $00
    rra                                           ; $47fe: $1f
    jr nz, jr_0a9_4822                            ; $47ff: $20 $21

    dec de                                        ; $4801: $1b
    nop                                           ; $4802: $00
    ld [hl+], a                                   ; $4803: $22
    inc hl                                        ; $4804: $23
    inc h                                         ; $4805: $24
    dec h                                         ; $4806: $25
    ld h, $27                                     ; $4807: $26 $27
    jr z, jr_0a9_4834                             ; $4809: $28 $29

    add hl, bc                                    ; $480b: $09
    ld a, [hl+]                                   ; $480c: $2a
    jr z, jr_0a9_483a                             ; $480d: $28 $2b

    inc l                                         ; $480f: $2c

jr_0a9_4810:
    dec l                                         ; $4810: $2d
    daa                                           ; $4811: $27
    jr z, jr_0a9_4842                             ; $4812: $28 $2e

    cpl                                           ; $4814: $2f
    jr nc, jr_0a9_4848                            ; $4815: $30 $31

    ld [hl-], a                                   ; $4817: $32
    ld [hl-], a                                   ; $4818: $32
    ld [hl-], a                                   ; $4819: $32
    ld [hl-], a                                   ; $481a: $32
    ld [hl-], a                                   ; $481b: $32
    ld [hl-], a                                   ; $481c: $32
    ld [hl-], a                                   ; $481d: $32
    ld [hl-], a                                   ; $481e: $32
    ld [hl-], a                                   ; $481f: $32
    ld [hl-], a                                   ; $4820: $32
    ld [hl-], a                                   ; $4821: $32

jr_0a9_4822:
    ld [hl-], a                                   ; $4822: $32
    ld [hl-], a                                   ; $4823: $32
    ld [hl-], a                                   ; $4824: $32
    inc sp                                        ; $4825: $33
    ld d, $19                                     ; $4826: $16 $19
    nop                                           ; $4828: $00
    nop                                           ; $4829: $00
    nop                                           ; $482a: $00
    nop                                           ; $482b: $00
    nop                                           ; $482c: $00
    nop                                           ; $482d: $00
    nop                                           ; $482e: $00
    nop                                           ; $482f: $00
    nop                                           ; $4830: $00
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    nop                                           ; $4833: $00

jr_0a9_4834:
    nop                                           ; $4834: $00
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    nop                                           ; $4837: $00
    nop                                           ; $4838: $00
    nop                                           ; $4839: $00

jr_0a9_483a:
    nop                                           ; $483a: $00
    nop                                           ; $483b: $00

Jump_0a9_483c:
    nop                                           ; $483c: $00
    nop                                           ; $483d: $00
    nop                                           ; $483e: $00
    nop                                           ; $483f: $00
    nop                                           ; $4840: $00
    nop                                           ; $4841: $00

jr_0a9_4842:
    nop                                           ; $4842: $00
    nop                                           ; $4843: $00
    nop                                           ; $4844: $00
    nop                                           ; $4845: $00
    nop                                           ; $4846: $00
    nop                                           ; $4847: $00

jr_0a9_4848:
    nop                                           ; $4848: $00
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    nop                                           ; $484b: $00
    nop                                           ; $484c: $00
    nop                                           ; $484d: $00
    nop                                           ; $484e: $00
    nop                                           ; $484f: $00
    nop                                           ; $4850: $00
    nop                                           ; $4851: $00
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    nop                                           ; $4854: $00
    nop                                           ; $4855: $00
    nop                                           ; $4856: $00
    ld bc, $0202                                  ; $4857: $01 $02 $02
    ld [bc], a                                    ; $485a: $02
    ld [bc], a                                    ; $485b: $02
    ld [bc], a                                    ; $485c: $02
    ld [bc], a                                    ; $485d: $02
    ld [bc], a                                    ; $485e: $02
    ld [bc], a                                    ; $485f: $02
    ld [bc], a                                    ; $4860: $02
    ld [bc], a                                    ; $4861: $02
    ld [bc], a                                    ; $4862: $02
    ld [bc], a                                    ; $4863: $02
    ld [bc], a                                    ; $4864: $02
    ld [bc], a                                    ; $4865: $02
    ld [bc], a                                    ; $4866: $02
    ld [bc], a                                    ; $4867: $02
    ld [bc], a                                    ; $4868: $02
    nop                                           ; $4869: $00
    nop                                           ; $486a: $00
    nop                                           ; $486b: $00
    nop                                           ; $486c: $00
    inc bc                                        ; $486d: $03
    inc b                                         ; $486e: $04
    inc b                                         ; $486f: $04
    inc b                                         ; $4870: $04
    inc b                                         ; $4871: $04
    inc b                                         ; $4872: $04
    inc b                                         ; $4873: $04
    inc b                                         ; $4874: $04
    inc b                                         ; $4875: $04
    inc b                                         ; $4876: $04
    inc b                                         ; $4877: $04
    inc b                                         ; $4878: $04
    inc b                                         ; $4879: $04
    inc b                                         ; $487a: $04
    inc b                                         ; $487b: $04
    inc b                                         ; $487c: $04
    inc b                                         ; $487d: $04
    inc b                                         ; $487e: $04
    nop                                           ; $487f: $00
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    nop                                           ; $4882: $00
    inc bc                                        ; $4883: $03
    dec b                                         ; $4884: $05
    ld b, $07                                     ; $4885: $06 $07
    rlca                                          ; $4887: $07
    rlca                                          ; $4888: $07
    rlca                                          ; $4889: $07
    rlca                                          ; $488a: $07
    rlca                                          ; $488b: $07
    rlca                                          ; $488c: $07
    rlca                                          ; $488d: $07
    rlca                                          ; $488e: $07
    ld [$0709], sp                                ; $488f: $08 $09 $07
    rlca                                          ; $4892: $07
    rlca                                          ; $4893: $07
    ld a, [bc]                                    ; $4894: $0a
    nop                                           ; $4895: $00
    nop                                           ; $4896: $00
    nop                                           ; $4897: $00
    nop                                           ; $4898: $00
    inc bc                                        ; $4899: $03
    dec bc                                        ; $489a: $0b
    inc c                                         ; $489b: $0c
    nop                                           ; $489c: $00
    nop                                           ; $489d: $00
    nop                                           ; $489e: $00
    nop                                           ; $489f: $00
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    nop                                           ; $48a2: $00
    nop                                           ; $48a3: $00
    nop                                           ; $48a4: $00
    dec c                                         ; $48a5: $0d
    ld c, $00                                     ; $48a6: $0e $00
    nop                                           ; $48a8: $00
    nop                                           ; $48a9: $00
    rrca                                          ; $48aa: $0f
    nop                                           ; $48ab: $00
    nop                                           ; $48ac: $00
    nop                                           ; $48ad: $00
    nop                                           ; $48ae: $00
    inc bc                                        ; $48af: $03
    dec bc                                        ; $48b0: $0b
    inc c                                         ; $48b1: $0c
    nop                                           ; $48b2: $00
    nop                                           ; $48b3: $00
    nop                                           ; $48b4: $00
    nop                                           ; $48b5: $00
    nop                                           ; $48b6: $00
    nop                                           ; $48b7: $00
    nop                                           ; $48b8: $00
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    dec c                                         ; $48bb: $0d
    ld c, $00                                     ; $48bc: $0e $00
    nop                                           ; $48be: $00
    nop                                           ; $48bf: $00
    rlca                                          ; $48c0: $07
    nop                                           ; $48c1: $00
    nop                                           ; $48c2: $00
    db $10                                        ; $48c3: $10
    ld de, $0b12                                  ; $48c4: $11 $12 $0b
    inc de                                        ; $48c7: $13
    inc d                                         ; $48c8: $14
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    nop                                           ; $48cb: $00
    dec d                                         ; $48cc: $15
    dec b                                         ; $48cd: $05
    dec b                                         ; $48ce: $05
    dec b                                         ; $48cf: $05
    dec b                                         ; $48d0: $05
    ld d, $17                                     ; $48d1: $16 $17
    nop                                           ; $48d3: $00
    nop                                           ; $48d4: $00
    nop                                           ; $48d5: $00
    nop                                           ; $48d6: $00
    nop                                           ; $48d7: $00
    nop                                           ; $48d8: $00
    jr jr_0a9_48e6                                ; $48d9: $18 $0b

    dec bc                                        ; $48db: $0b
    dec bc                                        ; $48dc: $0b
    dec bc                                        ; $48dd: $0b
    add hl, de                                    ; $48de: $19
    nop                                           ; $48df: $00
    nop                                           ; $48e0: $00
    nop                                           ; $48e1: $00
    ld a, [de]                                    ; $48e2: $1a
    dec de                                        ; $48e3: $1b
    dec de                                        ; $48e4: $1b
    dec de                                        ; $48e5: $1b

jr_0a9_48e6:
    dec de                                        ; $48e6: $1b
    inc e                                         ; $48e7: $1c
    add hl, de                                    ; $48e8: $19
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    nop                                           ; $48eb: $00
    nop                                           ; $48ec: $00
    nop                                           ; $48ed: $00
    nop                                           ; $48ee: $00
    rlca                                          ; $48ef: $07
    rlca                                          ; $48f0: $07
    rlca                                          ; $48f1: $07
    dec e                                         ; $48f2: $1d
    ld b, $07                                     ; $48f3: $06 $07
    nop                                           ; $48f5: $00
    nop                                           ; $48f6: $00
    nop                                           ; $48f7: $00
    nop                                           ; $48f8: $00
    nop                                           ; $48f9: $00
    nop                                           ; $48fa: $00
    nop                                           ; $48fb: $00
    nop                                           ; $48fc: $00
    dec c                                         ; $48fd: $0d
    add hl, de                                    ; $48fe: $19
    nop                                           ; $48ff: $00
    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    nop                                           ; $4903: $00
    nop                                           ; $4904: $00
    nop                                           ; $4905: $00
    nop                                           ; $4906: $00
    nop                                           ; $4907: $00
    ld e, $0c                                     ; $4908: $1e $0c
    nop                                           ; $490a: $00
    nop                                           ; $490b: $00
    nop                                           ; $490c: $00
    nop                                           ; $490d: $00
    nop                                           ; $490e: $00
    nop                                           ; $490f: $00
    nop                                           ; $4910: $00
    nop                                           ; $4911: $00
    nop                                           ; $4912: $00
    dec c                                         ; $4913: $0d
    add hl, de                                    ; $4914: $19
    nop                                           ; $4915: $00
    nop                                           ; $4916: $00
    nop                                           ; $4917: $00
    nop                                           ; $4918: $00
    nop                                           ; $4919: $00
    nop                                           ; $491a: $00
    nop                                           ; $491b: $00
    nop                                           ; $491c: $00
    nop                                           ; $491d: $00
    ld e, $0c                                     ; $491e: $1e $0c
    nop                                           ; $4920: $00
    nop                                           ; $4921: $00
    dec d                                         ; $4922: $15
    dec b                                         ; $4923: $05
    dec b                                         ; $4924: $05
    dec b                                         ; $4925: $05
    dec b                                         ; $4926: $05
    dec b                                         ; $4927: $05
    dec b                                         ; $4928: $05
    ld d, $1f                                     ; $4929: $16 $1f
    dec b                                         ; $492b: $05
    dec b                                         ; $492c: $05
    dec b                                         ; $492d: $05
    jr nz, jr_0a9_4930                            ; $492e: $20 $00

jr_0a9_4930:
    nop                                           ; $4930: $00
    nop                                           ; $4931: $00
    nop                                           ; $4932: $00
    nop                                           ; $4933: $00
    ld e, $0c                                     ; $4934: $1e $0c
    nop                                           ; $4936: $00
    nop                                           ; $4937: $00
    jr jr_0a9_495b                                ; $4938: $18 $21

    dec de                                        ; $493a: $1b
    dec de                                        ; $493b: $1b
    dec de                                        ; $493c: $1b
    dec de                                        ; $493d: $1b
    dec de                                        ; $493e: $1b
    inc e                                         ; $493f: $1c
    dec bc                                        ; $4940: $0b
    dec bc                                        ; $4941: $0b
    dec bc                                        ; $4942: $0b
    dec bc                                        ; $4943: $0b
    add hl, de                                    ; $4944: $19
    nop                                           ; $4945: $00
    nop                                           ; $4946: $00
    ld [hl+], a                                   ; $4947: $22
    inc hl                                        ; $4948: $23
    inc hl                                        ; $4949: $23
    inc h                                         ; $494a: $24
    dec h                                         ; $494b: $25
    nop                                           ; $494c: $00
    nop                                           ; $494d: $00
    jr jr_0a9_4969                                ; $494e: $18 $19

    nop                                           ; $4950: $00
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    nop                                           ; $4953: $00
    nop                                           ; $4954: $00
    dec c                                         ; $4955: $0d
    add hl, de                                    ; $4956: $19
    rlca                                          ; $4957: $07
    rlca                                          ; $4958: $07
    rlca                                          ; $4959: $07
    rlca                                          ; $495a: $07

jr_0a9_495b:
    nop                                           ; $495b: $00
    nop                                           ; $495c: $00
    jr jr_0a9_496a                                ; $495d: $18 $0b

    dec bc                                        ; $495f: $0b
    dec bc                                        ; $4960: $0b
    ld h, $00                                     ; $4961: $26 $00
    nop                                           ; $4963: $00
    jr jr_0a9_497f                                ; $4964: $18 $19

    nop                                           ; $4966: $00
    nop                                           ; $4967: $00
    nop                                           ; $4968: $00

jr_0a9_4969:
    nop                                           ; $4969: $00

jr_0a9_496a:
    nop                                           ; $496a: $00
    dec c                                         ; $496b: $0d
    add hl, de                                    ; $496c: $19
    nop                                           ; $496d: $00
    nop                                           ; $496e: $00
    nop                                           ; $496f: $00
    nop                                           ; $4970: $00
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    rlca                                          ; $4973: $07
    rlca                                          ; $4974: $07
    rlca                                          ; $4975: $07
    dec e                                         ; $4976: $1d
    daa                                           ; $4977: $27
    ld de, $2811                                  ; $4978: $11 $11 $28
    add hl, de                                    ; $497b: $19
    nop                                           ; $497c: $00
    nop                                           ; $497d: $00
    nop                                           ; $497e: $00

jr_0a9_497f:
    nop                                           ; $497f: $00
    nop                                           ; $4980: $00
    dec c                                         ; $4981: $0d
    add hl, de                                    ; $4982: $19
    nop                                           ; $4983: $00
    nop                                           ; $4984: $00
    nop                                           ; $4985: $00
    nop                                           ; $4986: $00
    nop                                           ; $4987: $00
    nop                                           ; $4988: $00
    nop                                           ; $4989: $00
    nop                                           ; $498a: $00
    nop                                           ; $498b: $00
    ld e, $0b                                     ; $498c: $1e $0b
    dec bc                                        ; $498e: $0b
    dec bc                                        ; $498f: $0b
    add hl, de                                    ; $4990: $19
    rlca                                          ; $4991: $07
    nop                                           ; $4992: $00
    nop                                           ; $4993: $00
    nop                                           ; $4994: $00
    nop                                           ; $4995: $00
    nop                                           ; $4996: $00
    dec c                                         ; $4997: $0d
    add hl, de                                    ; $4998: $19
    nop                                           ; $4999: $00
    nop                                           ; $499a: $00
    nop                                           ; $499b: $00
    nop                                           ; $499c: $00
    nop                                           ; $499d: $00
    nop                                           ; $499e: $00
    nop                                           ; $499f: $00
    nop                                           ; $49a0: $00
    nop                                           ; $49a1: $00
    ld e, $29                                     ; $49a2: $1e $29
    rlca                                          ; $49a4: $07
    rlca                                          ; $49a5: $07
    rlca                                          ; $49a6: $07
    nop                                           ; $49a7: $00
    nop                                           ; $49a8: $00
    nop                                           ; $49a9: $00
    nop                                           ; $49aa: $00
    nop                                           ; $49ab: $00
    nop                                           ; $49ac: $00
    dec c                                         ; $49ad: $0d
    add hl, de                                    ; $49ae: $19
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    nop                                           ; $49b2: $00
    nop                                           ; $49b3: $00
    nop                                           ; $49b4: $00
    ld a, [hl+]                                   ; $49b5: $2a
    inc hl                                        ; $49b6: $23
    inc hl                                        ; $49b7: $23
    inc h                                         ; $49b8: $24
    ld h, $00                                     ; $49b9: $26 $00
    nop                                           ; $49bb: $00
    nop                                           ; $49bc: $00
    nop                                           ; $49bd: $00
    nop                                           ; $49be: $00
    nop                                           ; $49bf: $00
    nop                                           ; $49c0: $00
    nop                                           ; $49c1: $00
    nop                                           ; $49c2: $00
    dec c                                         ; $49c3: $0d
    add hl, de                                    ; $49c4: $19
    nop                                           ; $49c5: $00
    nop                                           ; $49c6: $00
    nop                                           ; $49c7: $00
    nop                                           ; $49c8: $00
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    dec c                                         ; $49cb: $0d
    dec bc                                        ; $49cc: $0b
    dec bc                                        ; $49cd: $0b
    dec bc                                        ; $49ce: $0b
    ld h, $00                                     ; $49cf: $26 $00
    nop                                           ; $49d1: $00
    nop                                           ; $49d2: $00
    nop                                           ; $49d3: $00
    nop                                           ; $49d4: $00
    nop                                           ; $49d5: $00
    dec d                                         ; $49d6: $15
    dec hl                                        ; $49d7: $2b
    nop                                           ; $49d8: $00
    dec c                                         ; $49d9: $0d
    rra                                           ; $49da: $1f
    dec b                                         ; $49db: $05
    dec b                                         ; $49dc: $05
    dec b                                         ; $49dd: $05
    jr nz, jr_0a9_49e0                            ; $49de: $20 $00

jr_0a9_49e0:
    nop                                           ; $49e0: $00
    dec c                                         ; $49e1: $0d
    dec bc                                        ; $49e2: $0b
    dec bc                                        ; $49e3: $0b
    dec bc                                        ; $49e4: $0b
    ld h, $00                                     ; $49e5: $26 $00
    nop                                           ; $49e7: $00
    nop                                           ; $49e8: $00
    nop                                           ; $49e9: $00
    nop                                           ; $49ea: $00
    nop                                           ; $49eb: $00
    jr jr_0a9_49fc                                ; $49ec: $18 $0e

    nop                                           ; $49ee: $00
    dec c                                         ; $49ef: $0d
    dec bc                                        ; $49f0: $0b
    dec bc                                        ; $49f1: $0b
    dec bc                                        ; $49f2: $0b
    dec bc                                        ; $49f3: $0b
    add hl, de                                    ; $49f4: $19
    nop                                           ; $49f5: $00
    nop                                           ; $49f6: $00
    dec c                                         ; $49f7: $0d
    dec bc                                        ; $49f8: $0b
    dec bc                                        ; $49f9: $0b
    dec bc                                        ; $49fa: $0b
    inc l                                         ; $49fb: $2c

jr_0a9_49fc:
    dec b                                         ; $49fc: $05
    dec l                                         ; $49fd: $2d
    nop                                           ; $49fe: $00
    nop                                           ; $49ff: $00
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    jr jr_0a9_4a12                                ; $4a02: $18 $0e

    nop                                           ; $4a04: $00
    dec c                                         ; $4a05: $0d
    add hl, de                                    ; $4a06: $19
    rlca                                          ; $4a07: $07
    rlca                                          ; $4a08: $07
    rlca                                          ; $4a09: $07
    rlca                                          ; $4a0a: $07
    nop                                           ; $4a0b: $00
    nop                                           ; $4a0c: $00
    dec c                                         ; $4a0d: $0d
    add hl, de                                    ; $4a0e: $19
    rlca                                          ; $4a0f: $07
    rlca                                          ; $4a10: $07
    rlca                                          ; $4a11: $07

jr_0a9_4a12:
    jr jr_0a9_4a40                                ; $4a12: $18 $2c

    dec b                                         ; $4a14: $05
    dec b                                         ; $4a15: $05
    dec b                                         ; $4a16: $05
    dec b                                         ; $4a17: $05
    ld l, $2f                                     ; $4a18: $2e $2f
    dec b                                         ; $4a1a: $05
    ld d, $19                                     ; $4a1b: $16 $19
    nop                                           ; $4a1d: $00
    nop                                           ; $4a1e: $00
    nop                                           ; $4a1f: $00
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    dec c                                         ; $4a23: $0d
    add hl, de                                    ; $4a24: $19
    nop                                           ; $4a25: $00
    nop                                           ; $4a26: $00
    nop                                           ; $4a27: $00
    jr jr_0a9_4a35                                ; $4a28: $18 $0b

    dec bc                                        ; $4a2a: $0b
    dec bc                                        ; $4a2b: $0b
    dec bc                                        ; $4a2c: $0b
    dec bc                                        ; $4a2d: $0b
    dec bc                                        ; $4a2e: $0b
    dec bc                                        ; $4a2f: $0b
    dec bc                                        ; $4a30: $0b
    dec bc                                        ; $4a31: $0b
    add hl, de                                    ; $4a32: $19
    nop                                           ; $4a33: $00
    nop                                           ; $4a34: $00

jr_0a9_4a35:
    nop                                           ; $4a35: $00
    nop                                           ; $4a36: $00
    nop                                           ; $4a37: $00
    nop                                           ; $4a38: $00
    jr nc, jr_0a9_4a3f                            ; $4a39: $30 $04

    nop                                           ; $4a3b: $00
    nop                                           ; $4a3c: $00
    nop                                           ; $4a3d: $00
    rlca                                          ; $4a3e: $07

jr_0a9_4a3f:
    rlca                                          ; $4a3f: $07

jr_0a9_4a40:
    rlca                                          ; $4a40: $07
    rlca                                          ; $4a41: $07
    rlca                                          ; $4a42: $07
    rlca                                          ; $4a43: $07
    rlca                                          ; $4a44: $07
    rlca                                          ; $4a45: $07
    rlca                                          ; $4a46: $07
    rlca                                          ; $4a47: $07
    rlca                                          ; $4a48: $07
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    ld a, [bc]                                    ; $4a4e: $0a
    inc c                                         ; $4a4f: $0c
    nop                                           ; $4a50: $00
    nop                                           ; $4a51: $00
    nop                                           ; $4a52: $00
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    nop                                           ; $4a55: $00
    nop                                           ; $4a56: $00
    nop                                           ; $4a57: $00
    nop                                           ; $4a58: $00
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    nop                                           ; $4a5b: $00
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    nop                                           ; $4a5e: $00
    nop                                           ; $4a5f: $00
    nop                                           ; $4a60: $00
    nop                                           ; $4a61: $00
    ld bc, $0000                                  ; $4a62: $01 $00 $00
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    nop                                           ; $4a67: $00
    nop                                           ; $4a68: $00
    nop                                           ; $4a69: $00
    nop                                           ; $4a6a: $00
    nop                                           ; $4a6b: $00
    ld [bc], a                                    ; $4a6c: $02
    nop                                           ; $4a6d: $00
    inc bc                                        ; $4a6e: $03
    inc b                                         ; $4a6f: $04
    inc b                                         ; $4a70: $04
    inc b                                         ; $4a71: $04
    inc b                                         ; $4a72: $04
    inc b                                         ; $4a73: $04
    inc b                                         ; $4a74: $04
    inc b                                         ; $4a75: $04
    dec b                                         ; $4a76: $05
    ld b, $07                                     ; $4a77: $06 $07
    ld [$0808], sp                                ; $4a79: $08 $08 $08
    ld [$0808], sp                                ; $4a7c: $08 $08 $08
    ld [$0208], sp                                ; $4a7f: $08 $08 $02
    rlca                                          ; $4a82: $07
    ld [$0808], sp                                ; $4a83: $08 $08 $08
    ld [$0808], sp                                ; $4a86: $08 $08 $08
    ld [$0208], sp                                ; $4a89: $08 $08 $02
    add hl, bc                                    ; $4a8c: $09
    ld a, [bc]                                    ; $4a8d: $0a
    dec bc                                        ; $4a8e: $0b
    inc c                                         ; $4a8f: $0c
    inc c                                         ; $4a90: $0c
    inc c                                         ; $4a91: $0c
    inc c                                         ; $4a92: $0c
    inc c                                         ; $4a93: $0c
    inc c                                         ; $4a94: $0c
    dec c                                         ; $4a95: $0d
    nop                                           ; $4a96: $00
    rlca                                          ; $4a97: $07
    ld [bc], a                                    ; $4a98: $02
    nop                                           ; $4a99: $00
    nop                                           ; $4a9a: $00
    nop                                           ; $4a9b: $00
    nop                                           ; $4a9c: $00
    nop                                           ; $4a9d: $00
    nop                                           ; $4a9e: $00
    nop                                           ; $4a9f: $00
    nop                                           ; $4aa0: $00
    rlca                                          ; $4aa1: $07
    ld [bc], a                                    ; $4aa2: $02
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00
    rlca                                          ; $4aaa: $07
    ld [$0808], sp                                ; $4aab: $08 $08 $08
    ld [$0808], sp                                ; $4aae: $08 $08 $08
    ld [$0208], sp                                ; $4ab1: $08 $08 $02
    rlca                                          ; $4ab4: $07
    ld [$0808], sp                                ; $4ab5: $08 $08 $08
    ld [$0808], sp                                ; $4ab8: $08 $08 $08
    ld [$0208], sp                                ; $4abb: $08 $08 $02
    ld c, $0f                                     ; $4abe: $0e $0f
    db $10                                        ; $4ac0: $10
    rrca                                          ; $4ac1: $0f
    db $10                                        ; $4ac2: $10
    rrca                                          ; $4ac3: $0f
    db $10                                        ; $4ac4: $10
    rrca                                          ; $4ac5: $0f
    db $10                                        ; $4ac6: $10
    ld de, $0b0a                                  ; $4ac7: $11 $0a $0b
    nop                                           ; $4aca: $00
    nop                                           ; $4acb: $00
    nop                                           ; $4acc: $00
    nop                                           ; $4acd: $00
    nop                                           ; $4ace: $00
    nop                                           ; $4acf: $00
    nop                                           ; $4ad0: $00
    nop                                           ; $4ad1: $00
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    nop                                           ; $4ad6: $00
    nop                                           ; $4ad7: $00
    nop                                           ; $4ad8: $00
    nop                                           ; $4ad9: $00
    nop                                           ; $4ada: $00
    nop                                           ; $4adb: $00
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    nop                                           ; $4ade: $00
    nop                                           ; $4adf: $00
    nop                                           ; $4ae0: $00
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    nop                                           ; $4ae3: $00
    nop                                           ; $4ae4: $00
    nop                                           ; $4ae5: $00
    nop                                           ; $4ae6: $00
    nop                                           ; $4ae7: $00
    nop                                           ; $4ae8: $00
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    nop                                           ; $4aeb: $00
    nop                                           ; $4aec: $00
    nop                                           ; $4aed: $00
    nop                                           ; $4aee: $00
    nop                                           ; $4aef: $00
    ld bc, $0200                                  ; $4af0: $01 $00 $02
    inc bc                                        ; $4af3: $03
    inc bc                                        ; $4af4: $03
    inc bc                                        ; $4af5: $03
    inc bc                                        ; $4af6: $03
    inc bc                                        ; $4af7: $03
    inc bc                                        ; $4af8: $03
    inc bc                                        ; $4af9: $03
    inc b                                         ; $4afa: $04
    ld bc, $0605                                  ; $4afb: $01 $05 $06
    ld b, $06                                     ; $4afe: $06 $06
    ld b, $06                                     ; $4b00: $06 $06
    ld b, $06                                     ; $4b02: $06 $06
    ld b, $07                                     ; $4b04: $06 $07
    dec b                                         ; $4b06: $05
    ld b, $06                                     ; $4b07: $06 $06
    ld b, $06                                     ; $4b09: $06 $06
    ld b, $06                                     ; $4b0b: $06 $06
    ld b, $06                                     ; $4b0d: $06 $06
    rlca                                          ; $4b0f: $07
    dec b                                         ; $4b10: $05
    ld [$0606], sp                                ; $4b11: $08 $06 $06
    ld b, $06                                     ; $4b14: $06 $06
    add hl, bc                                    ; $4b16: $09
    ld b, $0a                                     ; $4b17: $06 $0a
    dec bc                                        ; $4b19: $0b
    dec b                                         ; $4b1a: $05
    ld b, $0c                                     ; $4b1b: $06 $0c
    ld b, $0d                                     ; $4b1d: $06 $0d
    ld b, $0e                                     ; $4b1f: $06 $0e
    rrca                                          ; $4b21: $0f
    ld b, $07                                     ; $4b22: $06 $07
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    ld b, $00                                     ; $4b27: $06 $00
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    nop                                           ; $4b2c: $00
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    nop                                           ; $4b30: $00
    ld b, $00                                     ; $4b31: $06 $00
    nop                                           ; $4b33: $00
    nop                                           ; $4b34: $00
    nop                                           ; $4b35: $00
    nop                                           ; $4b36: $00
    nop                                           ; $4b37: $00
    add hl, bc                                    ; $4b38: $09
    stop                                          ; $4b39: $10 $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    ld bc, $0302                                  ; $4b3d: $01 $02 $03
    nop                                           ; $4b40: $00
    nop                                           ; $4b41: $00
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    inc b                                         ; $4b44: $04
    dec b                                         ; $4b45: $05
    ld b, $07                                     ; $4b46: $06 $07
    ld [$0504], sp                                ; $4b48: $08 $04 $05
    nop                                           ; $4b4b: $00
    nop                                           ; $4b4c: $00
    add hl, bc                                    ; $4b4d: $09
    ld a, [bc]                                    ; $4b4e: $0a
    dec bc                                        ; $4b4f: $0b
    inc c                                         ; $4b50: $0c
    dec c                                         ; $4b51: $0d
    ld c, $0f                                     ; $4b52: $0e $0f
    nop                                           ; $4b54: $00
    db $10                                        ; $4b55: $10
    ld de, $1312                                  ; $4b56: $11 $12 $13
    inc d                                         ; $4b59: $14
    dec d                                         ; $4b5a: $15
    ld d, $17                                     ; $4b5b: $16 $17
    nop                                           ; $4b5d: $00
    jr jr_0a9_4b79                                ; $4b5e: $18 $19

    ld a, [de]                                    ; $4b60: $1a
    dec de                                        ; $4b61: $1b
    inc d                                         ; $4b62: $14
    inc e                                         ; $4b63: $1c
    dec e                                         ; $4b64: $1d
    ld e, $00                                     ; $4b65: $1e $00
    nop                                           ; $4b67: $00
    rra                                           ; $4b68: $1f
    jr nz, jr_0a9_4b8c                            ; $4b69: $20 $21

    inc d                                         ; $4b6b: $14
    ld [hl+], a                                   ; $4b6c: $22
    jr nz, @+$25                                  ; $4b6d: $20 $23

    nop                                           ; $4b6f: $00
    inc h                                         ; $4b70: $24
    dec h                                         ; $4b71: $25
    inc d                                         ; $4b72: $14
    inc d                                         ; $4b73: $14
    inc d                                         ; $4b74: $14
    inc d                                         ; $4b75: $14
    ld h, $27                                     ; $4b76: $26 $27
    nop                                           ; $4b78: $00

jr_0a9_4b79:
    jr z, jr_0a9_4ba4                             ; $4b79: $28 $29

    inc d                                         ; $4b7b: $14
    inc d                                         ; $4b7c: $14
    inc d                                         ; $4b7d: $14
    inc d                                         ; $4b7e: $14
    ld a, [hl+]                                   ; $4b7f: $2a
    dec hl                                        ; $4b80: $2b
    inc l                                         ; $4b81: $2c
    nop                                           ; $4b82: $00
    add hl, bc                                    ; $4b83: $09
    inc d                                         ; $4b84: $14
    inc d                                         ; $4b85: $14
    inc d                                         ; $4b86: $14
    inc d                                         ; $4b87: $14
    inc d                                         ; $4b88: $14
    dec l                                         ; $4b89: $2d
    ld l, $00                                     ; $4b8a: $2e $00

jr_0a9_4b8c:
    cpl                                           ; $4b8c: $2f
    jr nc, jr_0a9_4ba3                            ; $4b8d: $30 $14

    inc d                                         ; $4b8f: $14
    inc d                                         ; $4b90: $14
    ld sp, $3332                                  ; $4b91: $31 $32 $33
    nop                                           ; $4b94: $00
    inc [hl]                                      ; $4b95: $34
    add hl, bc                                    ; $4b96: $09
    inc d                                         ; $4b97: $14
    inc d                                         ; $4b98: $14
    inc d                                         ; $4b99: $14
    rrca                                          ; $4b9a: $0f
    dec [hl]                                      ; $4b9b: $35
    nop                                           ; $4b9c: $00
    nop                                           ; $4b9d: $00
    ld [hl], $09                                  ; $4b9e: $36 $09
    inc d                                         ; $4ba0: $14
    inc d                                         ; $4ba1: $14
    inc d                                         ; $4ba2: $14

jr_0a9_4ba3:
    inc d                                         ; $4ba3: $14

jr_0a9_4ba4:
    rrca                                          ; $4ba4: $0f
    nop                                           ; $4ba5: $00
    scf                                           ; $4ba6: $37
    inc [hl]                                      ; $4ba7: $34
    add hl, bc                                    ; $4ba8: $09
    inc d                                         ; $4ba9: $14
    inc d                                         ; $4baa: $14
    inc d                                         ; $4bab: $14
    inc d                                         ; $4bac: $14
    rrca                                          ; $4bad: $0f
    nop                                           ; $4bae: $00
    nop                                           ; $4baf: $00
    ld [hl], $09                                  ; $4bb0: $36 $09
    inc d                                         ; $4bb2: $14
    inc d                                         ; $4bb3: $14
    inc d                                         ; $4bb4: $14
    inc d                                         ; $4bb5: $14
    rrca                                          ; $4bb6: $0f
    nop                                           ; $4bb7: $00
    nop                                           ; $4bb8: $00
    add hl, bc                                    ; $4bb9: $09
    inc d                                         ; $4bba: $14
    jr c, jr_0a9_4bf6                             ; $4bbb: $38 $39

    ld a, [hl-]                                   ; $4bbd: $3a
    inc d                                         ; $4bbe: $14
    rrca                                          ; $4bbf: $0f
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    dec sp                                        ; $4bc2: $3b
    dec sp                                        ; $4bc3: $3b
    inc a                                         ; $4bc4: $3c
    dec a                                         ; $4bc5: $3d
    ld a, $3b                                     ; $4bc6: $3e $3b
    dec sp                                        ; $4bc8: $3b
    nop                                           ; $4bc9: $00
    inc c                                         ; $4bca: $0c
    dec c                                         ; $4bcb: $0d
    nop                                           ; $4bcc: $00
    nop                                           ; $4bcd: $00
    nop                                           ; $4bce: $00
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    nop                                           ; $4bd1: $00
    nop                                           ; $4bd2: $00
    nop                                           ; $4bd3: $00
    nop                                           ; $4bd4: $00
    nop                                           ; $4bd5: $00
    nop                                           ; $4bd6: $00
    nop                                           ; $4bd7: $00
    nop                                           ; $4bd8: $00
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    nop                                           ; $4bdb: $00
    nop                                           ; $4bdc: $00
    nop                                           ; $4bdd: $00
    nop                                           ; $4bde: $00
    nop                                           ; $4bdf: $00
    nop                                           ; $4be0: $00
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    nop                                           ; $4be4: $00
    ld bc, $0201                                  ; $4be5: $01 $01 $02
    inc bc                                        ; $4be8: $03
    inc b                                         ; $4be9: $04
    dec b                                         ; $4bea: $05
    ld b, $07                                     ; $4beb: $06 $07
    nop                                           ; $4bed: $00
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    ld bc, $0608                                  ; $4bf1: $01 $08 $06
    ld b, $09                                     ; $4bf4: $06 $09

jr_0a9_4bf6:
    dec b                                         ; $4bf6: $05
    ld b, $06                                     ; $4bf7: $06 $06
    ld a, [bc]                                    ; $4bf9: $0a
    dec bc                                        ; $4bfa: $0b
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    inc c                                         ; $4bfd: $0c
    dec c                                         ; $4bfe: $0d
    ld b, $06                                     ; $4bff: $06 $06
    ld c, $0f                                     ; $4c01: $0e $0f
    ld b, $06                                     ; $4c03: $06 $06
    db $10                                        ; $4c05: $10
    ld de, $0000                                  ; $4c06: $11 $00 $00
    ld [de], a                                    ; $4c09: $12
    inc de                                        ; $4c0a: $13
    ld b, $06                                     ; $4c0b: $06 $06
    ld b, $06                                     ; $4c0d: $06 $06
    ld b, $06                                     ; $4c0f: $06 $06
    inc de                                        ; $4c11: $13
    inc de                                        ; $4c12: $13
    dec bc                                        ; $4c13: $0b
    inc d                                         ; $4c14: $14
    inc bc                                        ; $4c15: $03
    ld b, $06                                     ; $4c16: $06 $06
    ld b, $06                                     ; $4c18: $06 $06
    ld b, $06                                     ; $4c1a: $06 $06
    ld b, $06                                     ; $4c1c: $06 $06
    ld b, $15                                     ; $4c1e: $06 $15
    ld d, $17                                     ; $4c20: $16 $17
    dec c                                         ; $4c22: $0d
    ld b, $06                                     ; $4c23: $06 $06
    ld b, $06                                     ; $4c25: $06 $06
    ld b, $06                                     ; $4c27: $06 $06
    db $10                                        ; $4c29: $10
    rla                                           ; $4c2a: $17
    jr jr_0a9_4c2d                                ; $4c2b: $18 $00

jr_0a9_4c2d:
    add hl, de                                    ; $4c2d: $19
    inc de                                        ; $4c2e: $13
    ld b, $06                                     ; $4c2f: $06 $06
    ld b, $06                                     ; $4c31: $06 $06
    ld b, $06                                     ; $4c33: $06 $06
    inc de                                        ; $4c35: $13
    ld a, [de]                                    ; $4c36: $1a
    nop                                           ; $4c37: $00
    nop                                           ; $4c38: $00
    dec de                                        ; $4c39: $1b
    inc e                                         ; $4c3a: $1c
    ld b, $06                                     ; $4c3b: $06 $06
    ld b, $06                                     ; $4c3d: $06 $06
    ld b, $06                                     ; $4c3f: $06 $06
    dec e                                         ; $4c41: $1d
    ld e, $00                                     ; $4c42: $1e $00
    nop                                           ; $4c44: $00
    nop                                           ; $4c45: $00
    dec de                                        ; $4c46: $1b
    rra                                           ; $4c47: $1f
    ld b, $06                                     ; $4c48: $06 $06
    ld b, $06                                     ; $4c4a: $06 $06
    jr nz, jr_0a9_4c6c                            ; $4c4c: $20 $1e

    nop                                           ; $4c4e: $00
    nop                                           ; $4c4f: $00
    nop                                           ; $4c50: $00
    nop                                           ; $4c51: $00
    nop                                           ; $4c52: $00
    nop                                           ; $4c53: $00
    ld hl, $0606                                  ; $4c54: $21 $06 $06
    ld [hl+], a                                   ; $4c57: $22
    nop                                           ; $4c58: $00
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    nop                                           ; $4c5b: $00
    nop                                           ; $4c5c: $00
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    nop                                           ; $4c5f: $00
    nop                                           ; $4c60: $00
    inc hl                                        ; $4c61: $23
    inc h                                         ; $4c62: $24
    nop                                           ; $4c63: $00
    nop                                           ; $4c64: $00
    nop                                           ; $4c65: $00
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    ld c, $0f                                     ; $4c68: $0e $0f
    nop                                           ; $4c6a: $00
    nop                                           ; $4c6b: $00

jr_0a9_4c6c:
    nop                                           ; $4c6c: $00
    nop                                           ; $4c6d: $00
    nop                                           ; $4c6e: $00
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    nop                                           ; $4c71: $00
    nop                                           ; $4c72: $00
    nop                                           ; $4c73: $00
    nop                                           ; $4c74: $00
    nop                                           ; $4c75: $00
    nop                                           ; $4c76: $00
    nop                                           ; $4c77: $00
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    nop                                           ; $4c7c: $00
    nop                                           ; $4c7d: $00
    ld bc, $0302                                  ; $4c7e: $01 $02 $03
    nop                                           ; $4c81: $00
    nop                                           ; $4c82: $00
    nop                                           ; $4c83: $00
    nop                                           ; $4c84: $00
    nop                                           ; $4c85: $00
    nop                                           ; $4c86: $00
    nop                                           ; $4c87: $00
    nop                                           ; $4c88: $00
    nop                                           ; $4c89: $00
    nop                                           ; $4c8a: $00
    nop                                           ; $4c8b: $00
    inc b                                         ; $4c8c: $04
    dec b                                         ; $4c8d: $05
    ld b, $00                                     ; $4c8e: $06 $00
    nop                                           ; $4c90: $00
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    nop                                           ; $4c95: $00
    nop                                           ; $4c96: $00
    nop                                           ; $4c97: $00
    rlca                                          ; $4c98: $07
    ld [$0a09], sp                                ; $4c99: $08 $09 $0a
    dec bc                                        ; $4c9c: $0b
    inc c                                         ; $4c9d: $0c
    inc bc                                        ; $4c9e: $03
    nop                                           ; $4c9f: $00
    nop                                           ; $4ca0: $00
    nop                                           ; $4ca1: $00
    nop                                           ; $4ca2: $00
    nop                                           ; $4ca3: $00
    nop                                           ; $4ca4: $00
    dec c                                         ; $4ca5: $0d
    ld a, [bc]                                    ; $4ca6: $0a
    ld a, [bc]                                    ; $4ca7: $0a
    ld a, [bc]                                    ; $4ca8: $0a
    ld a, [bc]                                    ; $4ca9: $0a
    ld a, [bc]                                    ; $4caa: $0a
    ld a, [bc]                                    ; $4cab: $0a
    ld c, $03                                     ; $4cac: $0e $03
    nop                                           ; $4cae: $00
    nop                                           ; $4caf: $00
    nop                                           ; $4cb0: $00
    nop                                           ; $4cb1: $00
    rrca                                          ; $4cb2: $0f
    db $10                                        ; $4cb3: $10
    ld de, $1312                                  ; $4cb4: $11 $12 $13
    inc d                                         ; $4cb7: $14
    nop                                           ; $4cb8: $00
    dec d                                         ; $4cb9: $15
    ld a, [bc]                                    ; $4cba: $0a
    inc d                                         ; $4cbb: $14
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    ld d, $17                                     ; $4cc0: $16 $17
    jr @+$16                                      ; $4cc2: $18 $14

    add hl, de                                    ; $4cc4: $19
    ld a, [bc]                                    ; $4cc5: $0a
    ld a, [bc]                                    ; $4cc6: $0a
    ld a, [bc]                                    ; $4cc7: $0a
    ld a, [bc]                                    ; $4cc8: $0a
    inc d                                         ; $4cc9: $14
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    dec d                                         ; $4cce: $15
    ld a, [de]                                    ; $4ccf: $1a
    dec de                                        ; $4cd0: $1b
    ld a, [bc]                                    ; $4cd1: $0a
    ld a, [bc]                                    ; $4cd2: $0a
    ld a, [bc]                                    ; $4cd3: $0a
    inc e                                         ; $4cd4: $1c
    dec e                                         ; $4cd5: $1d
    ld a, [bc]                                    ; $4cd6: $0a
    ld e, $1f                                     ; $4cd7: $1e $1f
    jr nz, jr_0a9_4cdb                            ; $4cd9: $20 $00

jr_0a9_4cdb:
    nop                                           ; $4cdb: $00
    dec d                                         ; $4cdc: $15
    ld a, [bc]                                    ; $4cdd: $0a
    ld a, [bc]                                    ; $4cde: $0a
    ld a, [bc]                                    ; $4cdf: $0a
    ld hl, $220a                                  ; $4ce0: $21 $0a $22
    inc hl                                        ; $4ce3: $23
    inc de                                        ; $4ce4: $13
    ld a, [bc]                                    ; $4ce5: $0a
    inc h                                         ; $4ce6: $24
    dec h                                         ; $4ce7: $25
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    dec d                                         ; $4cea: $15
    ld a, [bc]                                    ; $4ceb: $0a
    ld a, [bc]                                    ; $4cec: $0a
    ld h, $00                                     ; $4ced: $26 $00
    ld de, $271a                                  ; $4cef: $11 $1a $27
    jr z, jr_0a9_4cfe                             ; $4cf2: $28 $0a

    add hl, hl                                    ; $4cf4: $29
    nop                                           ; $4cf5: $00
    nop                                           ; $4cf6: $00
    nop                                           ; $4cf7: $00
    ld a, [hl+]                                   ; $4cf8: $2a
    inc de                                        ; $4cf9: $13
    ld a, [bc]                                    ; $4cfa: $0a
    ld a, [bc]                                    ; $4cfb: $0a
    ld a, [bc]                                    ; $4cfc: $0a
    ld a, [bc]                                    ; $4cfd: $0a

jr_0a9_4cfe:
    ld a, [bc]                                    ; $4cfe: $0a
    ld a, [bc]                                    ; $4cff: $0a
    ld a, [bc]                                    ; $4d00: $0a
    dec hl                                        ; $4d01: $2b
    nop                                           ; $4d02: $00
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    inc l                                         ; $4d07: $2c
    inc de                                        ; $4d08: $13
    ld a, [bc]                                    ; $4d09: $0a
    ld a, [bc]                                    ; $4d0a: $0a
    ld a, [bc]                                    ; $4d0b: $0a
    ld a, [bc]                                    ; $4d0c: $0a
    ld a, [bc]                                    ; $4d0d: $0a
    dec hl                                        ; $4d0e: $2b
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00
    nop                                           ; $4d11: $00
    nop                                           ; $4d12: $00
    nop                                           ; $4d13: $00
    nop                                           ; $4d14: $00
    nop                                           ; $4d15: $00
    dec l                                         ; $4d16: $2d
    ld l, $2f                                     ; $4d17: $2e $2f
    ld a, [bc]                                    ; $4d19: $0a
    jr nc, jr_0a9_4d4d                            ; $4d1a: $30 $31

    nop                                           ; $4d1c: $00
    nop                                           ; $4d1d: $00
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    nop                                           ; $4d20: $00
    nop                                           ; $4d21: $00
    nop                                           ; $4d22: $00
    nop                                           ; $4d23: $00
    nop                                           ; $4d24: $00
    nop                                           ; $4d25: $00
    ld [hl-], a                                   ; $4d26: $32
    dec d                                         ; $4d27: $15
    ld b, $00                                     ; $4d28: $06 $00
    nop                                           ; $4d2a: $00
    nop                                           ; $4d2b: $00
    nop                                           ; $4d2c: $00
    nop                                           ; $4d2d: $00
    nop                                           ; $4d2e: $00
    nop                                           ; $4d2f: $00
    nop                                           ; $4d30: $00
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    nop                                           ; $4d33: $00
    nop                                           ; $4d34: $00
    nop                                           ; $4d35: $00
    nop                                           ; $4d36: $00
    nop                                           ; $4d37: $00
    nop                                           ; $4d38: $00
    nop                                           ; $4d39: $00
    nop                                           ; $4d3a: $00
    nop                                           ; $4d3b: $00
    dec b                                         ; $4d3c: $05
    dec b                                         ; $4d3d: $05
    nop                                           ; $4d3e: $00
    nop                                           ; $4d3f: $00
    nop                                           ; $4d40: $00
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    ld bc, $0302                                  ; $4d49: $01 $02 $03
    inc b                                         ; $4d4c: $04

jr_0a9_4d4d:
    nop                                           ; $4d4d: $00
    nop                                           ; $4d4e: $00
    dec b                                         ; $4d4f: $05
    ld b, $00                                     ; $4d50: $06 $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    add hl, bc                                    ; $4d57: $09
    dec bc                                        ; $4d58: $0b
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    ld bc, $0302                                  ; $4d6c: $01 $02 $03
    inc bc                                        ; $4d6f: $03
    inc b                                         ; $4d70: $04
    nop                                           ; $4d71: $00
    nop                                           ; $4d72: $00
    nop                                           ; $4d73: $00
    nop                                           ; $4d74: $00
    dec b                                         ; $4d75: $05
    ld b, $07                                     ; $4d76: $06 $07
    rlca                                          ; $4d78: $07
    ld [$0000], sp                                ; $4d79: $08 $00 $00
    nop                                           ; $4d7c: $00
    nop                                           ; $4d7d: $00
    add hl, bc                                    ; $4d7e: $09
    ld a, [bc]                                    ; $4d7f: $0a
    rlca                                          ; $4d80: $07
    rlca                                          ; $4d81: $07
    dec bc                                        ; $4d82: $0b
    inc c                                         ; $4d83: $0c
    dec c                                         ; $4d84: $0d
    nop                                           ; $4d85: $00
    nop                                           ; $4d86: $00
    ld c, $0f                                     ; $4d87: $0e $0f
    rlca                                          ; $4d89: $07
    db $10                                        ; $4d8a: $10
    ld de, $0000                                  ; $4d8b: $11 $00 $00
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    ld [de], a                                    ; $4d90: $12
    inc de                                        ; $4d91: $13
    rlca                                          ; $4d92: $07
    inc d                                         ; $4d93: $14
    inc b                                         ; $4d94: $04
    nop                                           ; $4d95: $00
    nop                                           ; $4d96: $00
    nop                                           ; $4d97: $00
    nop                                           ; $4d98: $00
    dec b                                         ; $4d99: $05
    dec d                                         ; $4d9a: $15
    ld d, $07                                     ; $4d9b: $16 $07
    ld [$0000], sp                                ; $4d9d: $08 $00 $00
    nop                                           ; $4da0: $00
    nop                                           ; $4da1: $00
    nop                                           ; $4da2: $00
    nop                                           ; $4da3: $00
    rla                                           ; $4da4: $17
    rlca                                          ; $4da5: $07
    ld [$0000], sp                                ; $4da6: $08 $00 $00
    nop                                           ; $4da9: $00
    nop                                           ; $4daa: $00
    nop                                           ; $4dab: $00
    jr jr_0a9_4dc7                                ; $4dac: $18 $19

    ld a, [de]                                    ; $4dae: $1a
    ld [$0000], sp                                ; $4daf: $08 $00 $00
    nop                                           ; $4db2: $00
    nop                                           ; $4db3: $00
    nop                                           ; $4db4: $00
    nop                                           ; $4db5: $00
    nop                                           ; $4db6: $00
    nop                                           ; $4db7: $00
    nop                                           ; $4db8: $00
    nop                                           ; $4db9: $00
    nop                                           ; $4dba: $00
    nop                                           ; $4dbb: $00
    inc c                                         ; $4dbc: $0c
    ld d, $00                                     ; $4dbd: $16 $00
    nop                                           ; $4dbf: $00
    nop                                           ; $4dc0: $00
    nop                                           ; $4dc1: $00
    nop                                           ; $4dc2: $00
    nop                                           ; $4dc3: $00
    nop                                           ; $4dc4: $00
    nop                                           ; $4dc5: $00
    nop                                           ; $4dc6: $00

jr_0a9_4dc7:
    nop                                           ; $4dc7: $00
    nop                                           ; $4dc8: $00
    nop                                           ; $4dc9: $00
    nop                                           ; $4dca: $00
    nop                                           ; $4dcb: $00
    nop                                           ; $4dcc: $00
    nop                                           ; $4dcd: $00
    nop                                           ; $4dce: $00
    nop                                           ; $4dcf: $00
    nop                                           ; $4dd0: $00
    nop                                           ; $4dd1: $00
    nop                                           ; $4dd2: $00
    nop                                           ; $4dd3: $00
    nop                                           ; $4dd4: $00
    nop                                           ; $4dd5: $00
    nop                                           ; $4dd6: $00
    ld bc, $0101                                  ; $4dd7: $01 $01 $01
    ld bc, $0101                                  ; $4dda: $01 $01 $01
    ld bc, $0101                                  ; $4ddd: $01 $01 $01
    ld bc, $0000                                  ; $4de0: $01 $00 $00
    ld [bc], a                                    ; $4de3: $02
    ld [bc], a                                    ; $4de4: $02
    ld [bc], a                                    ; $4de5: $02
    inc bc                                        ; $4de6: $03
    inc b                                         ; $4de7: $04
    dec b                                         ; $4de8: $05
    ld b, $02                                     ; $4de9: $06 $02
    ld [bc], a                                    ; $4deb: $02
    ld [bc], a                                    ; $4dec: $02
    nop                                           ; $4ded: $00
    nop                                           ; $4dee: $00
    ld [bc], a                                    ; $4def: $02
    rlca                                          ; $4df0: $07
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    nop                                           ; $4df3: $00
    nop                                           ; $4df4: $00
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    ld [$0002], sp                                ; $4df7: $08 $02 $00
    nop                                           ; $4dfa: $00
    ld [bc], a                                    ; $4dfb: $02
    add hl, bc                                    ; $4dfc: $09
    ld a, [bc]                                    ; $4dfd: $0a
    ld a, [bc]                                    ; $4dfe: $0a
    ld a, [bc]                                    ; $4dff: $0a
    ld a, [bc]                                    ; $4e00: $0a
    ld a, [bc]                                    ; $4e01: $0a
    ld a, [bc]                                    ; $4e02: $0a
    dec bc                                        ; $4e03: $0b
    ld [bc], a                                    ; $4e04: $02
    nop                                           ; $4e05: $00
    nop                                           ; $4e06: $00
    ld [bc], a                                    ; $4e07: $02
    ld [bc], a                                    ; $4e08: $02
    ld [bc], a                                    ; $4e09: $02
    ld [bc], a                                    ; $4e0a: $02
    inc c                                         ; $4e0b: $0c
    dec c                                         ; $4e0c: $0d
    ld [bc], a                                    ; $4e0d: $02
    ld [bc], a                                    ; $4e0e: $02
    ld [bc], a                                    ; $4e0f: $02
    ld [bc], a                                    ; $4e10: $02
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    inc b                                         ; $4e13: $04
    ld c, $0e                                     ; $4e14: $0e $0e
    dec b                                         ; $4e16: $05
    ld [bc], a                                    ; $4e17: $02
    ld [bc], a                                    ; $4e18: $02
    inc b                                         ; $4e19: $04
    ld c, $0e                                     ; $4e1a: $0e $0e
    dec b                                         ; $4e1c: $05
    nop                                           ; $4e1d: $00
    nop                                           ; $4e1e: $00
    rrca                                          ; $4e1f: $0f
    nop                                           ; $4e20: $00
    nop                                           ; $4e21: $00
    db $10                                        ; $4e22: $10
    ld [bc], a                                    ; $4e23: $02
    ld [bc], a                                    ; $4e24: $02
    rrca                                          ; $4e25: $0f
    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    stop                                          ; $4e28: $10 $00
    nop                                           ; $4e2a: $00
    rrca                                          ; $4e2b: $0f
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    db $10                                        ; $4e2e: $10
    ld [bc], a                                    ; $4e2f: $02
    ld [bc], a                                    ; $4e30: $02
    rrca                                          ; $4e31: $0f
    nop                                           ; $4e32: $00
    nop                                           ; $4e33: $00
    stop                                          ; $4e34: $10 $00
    nop                                           ; $4e36: $00
    rrca                                          ; $4e37: $0f
    nop                                           ; $4e38: $00
    nop                                           ; $4e39: $00
    db $10                                        ; $4e3a: $10
    ld [bc], a                                    ; $4e3b: $02
    ld [bc], a                                    ; $4e3c: $02
    rrca                                          ; $4e3d: $0f
    nop                                           ; $4e3e: $00
    nop                                           ; $4e3f: $00
    stop                                          ; $4e40: $10 $00
    nop                                           ; $4e42: $00
    rrca                                          ; $4e43: $0f
    nop                                           ; $4e44: $00
    nop                                           ; $4e45: $00
    db $10                                        ; $4e46: $10
    ld [bc], a                                    ; $4e47: $02
    ld [bc], a                                    ; $4e48: $02
    rrca                                          ; $4e49: $0f
    nop                                           ; $4e4a: $00
    nop                                           ; $4e4b: $00
    ld de, $1200                                  ; $4e4c: $11 $00 $12
    inc de                                        ; $4e4f: $13
    inc d                                         ; $4e50: $14
    inc d                                         ; $4e51: $14
    dec d                                         ; $4e52: $15
    ld [bc], a                                    ; $4e53: $02
    ld [bc], a                                    ; $4e54: $02
    inc de                                        ; $4e55: $13
    inc d                                         ; $4e56: $14
    inc d                                         ; $4e57: $14
    ld d, $00                                     ; $4e58: $16 $00
    rla                                           ; $4e5a: $17
    ld [bc], a                                    ; $4e5b: $02
    ld [bc], a                                    ; $4e5c: $02
    ld [bc], a                                    ; $4e5d: $02
    ld [bc], a                                    ; $4e5e: $02
    ld [bc], a                                    ; $4e5f: $02
    ld [bc], a                                    ; $4e60: $02
    ld [bc], a                                    ; $4e61: $02
    ld [bc], a                                    ; $4e62: $02
    ld [bc], a                                    ; $4e63: $02
    rrca                                          ; $4e64: $0f
    nop                                           ; $4e65: $00
    rla                                           ; $4e66: $17
    ld [bc], a                                    ; $4e67: $02
    ld [bc], a                                    ; $4e68: $02
    ld [bc], a                                    ; $4e69: $02
    ld [bc], a                                    ; $4e6a: $02
    ld [bc], a                                    ; $4e6b: $02
    ld [bc], a                                    ; $4e6c: $02
    ld [bc], a                                    ; $4e6d: $02
    ld [bc], a                                    ; $4e6e: $02
    ld [bc], a                                    ; $4e6f: $02
    rrca                                          ; $4e70: $0f
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    rrca                                          ; $4e73: $0f
    nop                                           ; $4e74: $00
    nop                                           ; $4e75: $00
    db $10                                        ; $4e76: $10
    ld [bc], a                                    ; $4e77: $02
    ld [bc], a                                    ; $4e78: $02
    rrca                                          ; $4e79: $0f
    nop                                           ; $4e7a: $00
    nop                                           ; $4e7b: $00
    jr jr_0a9_4e7e                                ; $4e7c: $18 $00

jr_0a9_4e7e:
    nop                                           ; $4e7e: $00
    rrca                                          ; $4e7f: $0f
    nop                                           ; $4e80: $00
    nop                                           ; $4e81: $00
    db $10                                        ; $4e82: $10
    ld [bc], a                                    ; $4e83: $02
    ld [bc], a                                    ; $4e84: $02
    rrca                                          ; $4e85: $0f
    nop                                           ; $4e86: $00
    nop                                           ; $4e87: $00
    add hl, de                                    ; $4e88: $19
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    rrca                                          ; $4e8b: $0f
    nop                                           ; $4e8c: $00
    nop                                           ; $4e8d: $00
    db $10                                        ; $4e8e: $10
    ld [bc], a                                    ; $4e8f: $02
    ld [bc], a                                    ; $4e90: $02
    rrca                                          ; $4e91: $0f
    nop                                           ; $4e92: $00
    nop                                           ; $4e93: $00
    stop                                          ; $4e94: $10 $00
    nop                                           ; $4e96: $00
    rrca                                          ; $4e97: $0f
    nop                                           ; $4e98: $00
    nop                                           ; $4e99: $00
    db $10                                        ; $4e9a: $10
    ld [bc], a                                    ; $4e9b: $02
    ld [bc], a                                    ; $4e9c: $02
    rrca                                          ; $4e9d: $0f
    nop                                           ; $4e9e: $00
    nop                                           ; $4e9f: $00
    stop                                          ; $4ea0: $10 $00
    nop                                           ; $4ea2: $00
    rrca                                          ; $4ea3: $0f
    nop                                           ; $4ea4: $00
    nop                                           ; $4ea5: $00
    db $10                                        ; $4ea6: $10
    ld [bc], a                                    ; $4ea7: $02
    ld [bc], a                                    ; $4ea8: $02
    rrca                                          ; $4ea9: $0f
    nop                                           ; $4eaa: $00
    nop                                           ; $4eab: $00
    stop                                          ; $4eac: $10 $00
    nop                                           ; $4eae: $00
    ld [bc], a                                    ; $4eaf: $02
    ld [bc], a                                    ; $4eb0: $02
    ld [bc], a                                    ; $4eb1: $02
    ld [bc], a                                    ; $4eb2: $02
    ld [bc], a                                    ; $4eb3: $02
    ld [bc], a                                    ; $4eb4: $02
    ld [bc], a                                    ; $4eb5: $02
    ld [bc], a                                    ; $4eb6: $02
    ld [bc], a                                    ; $4eb7: $02
    ld [bc], a                                    ; $4eb8: $02
    nop                                           ; $4eb9: $00
    nop                                           ; $4eba: $00
    ld a, [de]                                    ; $4ebb: $1a
    ld a, [de]                                    ; $4ebc: $1a
    ld a, [de]                                    ; $4ebd: $1a
    ld a, [de]                                    ; $4ebe: $1a
    ld a, [de]                                    ; $4ebf: $1a
    ld a, [de]                                    ; $4ec0: $1a
    ld a, [de]                                    ; $4ec1: $1a
    ld a, [de]                                    ; $4ec2: $1a
    ld a, [de]                                    ; $4ec3: $1a
    ld a, [de]                                    ; $4ec4: $1a
    nop                                           ; $4ec5: $00
    add hl, bc                                    ; $4ec6: $09
    ld de, $0000                                  ; $4ec7: $11 $00 $00
    nop                                           ; $4eca: $00
    nop                                           ; $4ecb: $00
    nop                                           ; $4ecc: $00
    nop                                           ; $4ecd: $00
    nop                                           ; $4ece: $00
    nop                                           ; $4ecf: $00
    nop                                           ; $4ed0: $00
    nop                                           ; $4ed1: $00
    nop                                           ; $4ed2: $00
    nop                                           ; $4ed3: $00
    nop                                           ; $4ed4: $00
    nop                                           ; $4ed5: $00
    nop                                           ; $4ed6: $00
    nop                                           ; $4ed7: $00
    nop                                           ; $4ed8: $00
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    nop                                           ; $4edb: $00
    nop                                           ; $4edc: $00
    nop                                           ; $4edd: $00
    nop                                           ; $4ede: $00
    nop                                           ; $4edf: $00
    nop                                           ; $4ee0: $00
    nop                                           ; $4ee1: $00
    nop                                           ; $4ee2: $00
    nop                                           ; $4ee3: $00
    nop                                           ; $4ee4: $00
    nop                                           ; $4ee5: $00
    nop                                           ; $4ee6: $00
    nop                                           ; $4ee7: $00
    nop                                           ; $4ee8: $00
    nop                                           ; $4ee9: $00
    nop                                           ; $4eea: $00
    nop                                           ; $4eeb: $00
    nop                                           ; $4eec: $00
    nop                                           ; $4eed: $00
    nop                                           ; $4eee: $00
    nop                                           ; $4eef: $00
    nop                                           ; $4ef0: $00
    nop                                           ; $4ef1: $00
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    nop                                           ; $4ef4: $00
    nop                                           ; $4ef5: $00
    ld bc, $0302                                  ; $4ef6: $01 $02 $03
    inc b                                         ; $4ef9: $04
    dec b                                         ; $4efa: $05
    ld [bc], a                                    ; $4efb: $02
    ld b, $00                                     ; $4efc: $06 $00
    nop                                           ; $4efe: $00
    rlca                                          ; $4eff: $07
    ld [$0909], sp                                ; $4f00: $08 $09 $09
    add hl, bc                                    ; $4f03: $09
    add hl, bc                                    ; $4f04: $09
    ld a, [bc]                                    ; $4f05: $0a
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    dec bc                                        ; $4f08: $0b
    inc c                                         ; $4f09: $0c
    add hl, bc                                    ; $4f0a: $09
    add hl, bc                                    ; $4f0b: $09
    add hl, bc                                    ; $4f0c: $09
    add hl, bc                                    ; $4f0d: $09
    dec c                                         ; $4f0e: $0d
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    ld c, $0f                                     ; $4f11: $0e $0f
    db $10                                        ; $4f13: $10
    ld de, $1312                                  ; $4f14: $11 $12 $13
    dec c                                         ; $4f17: $0d
    nop                                           ; $4f18: $00
    nop                                           ; $4f19: $00
    inc d                                         ; $4f1a: $14
    dec d                                         ; $4f1b: $15
    ld d, $17                                     ; $4f1c: $16 $17
    nop                                           ; $4f1e: $00
    jr jr_0a9_4f2e                                ; $4f1f: $18 $0d

    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    add hl, de                                    ; $4f24: $19
    ld a, [de]                                    ; $4f25: $1a
    dec de                                        ; $4f26: $1b
    inc b                                         ; $4f27: $04
    inc e                                         ; $4f28: $1c
    dec e                                         ; $4f29: $1d
    ld e, $00                                     ; $4f2a: $1e $00
    nop                                           ; $4f2c: $00
    inc de                                        ; $4f2d: $13

jr_0a9_4f2e:
    add hl, bc                                    ; $4f2e: $09
    add hl, bc                                    ; $4f2f: $09
    add hl, bc                                    ; $4f30: $09
    add hl, bc                                    ; $4f31: $09
    rra                                           ; $4f32: $1f
    jr nz, jr_0a9_4f35                            ; $4f33: $20 $00

jr_0a9_4f35:
    inc c                                         ; $4f35: $0c
    ld hl, $0909                                  ; $4f36: $21 $09 $09
    dec c                                         ; $4f39: $0d
    ld [de], a                                    ; $4f3a: $12
    ld [hl+], a                                   ; $4f3b: $22
    nop                                           ; $4f3c: $00
    nop                                           ; $4f3d: $00
    inc hl                                        ; $4f3e: $23
    inc h                                         ; $4f3f: $24
    dec h                                         ; $4f40: $25
    ld h, $0d                                     ; $4f41: $26 $0d
    nop                                           ; $4f43: $00
    ld [hl+], a                                   ; $4f44: $22
    nop                                           ; $4f45: $00
    nop                                           ; $4f46: $00
    inc de                                        ; $4f47: $13
    daa                                           ; $4f48: $27
    nop                                           ; $4f49: $00
    jr z, jr_0a9_4f75                             ; $4f4a: $28 $29

    rrca                                          ; $4f4c: $0f
    ld a, [hl+]                                   ; $4f4d: $2a
    nop                                           ; $4f4e: $00
    nop                                           ; $4f4f: $00
    inc de                                        ; $4f50: $13
    dec hl                                        ; $4f51: $2b
    rrca                                          ; $4f52: $0f
    inc l                                         ; $4f53: $2c
    add hl, bc                                    ; $4f54: $09
    add hl, bc                                    ; $4f55: $09
    dec l                                         ; $4f56: $2d
    nop                                           ; $4f57: $00
    nop                                           ; $4f58: $00
    ld [de], a                                    ; $4f59: $12
    ld [de], a                                    ; $4f5a: $12
    ld [de], a                                    ; $4f5b: $12
    ld [de], a                                    ; $4f5c: $12
    ld [de], a                                    ; $4f5d: $12
    ld [de], a                                    ; $4f5e: $12
    ld l, $00                                     ; $4f5f: $2e $00
    dec bc                                        ; $4f61: $0b
    ld [$0000], sp                                ; $4f62: $08 $00 $00
    nop                                           ; $4f65: $00
    nop                                           ; $4f66: $00
    nop                                           ; $4f67: $00
    nop                                           ; $4f68: $00
    nop                                           ; $4f69: $00
    nop                                           ; $4f6a: $00
    nop                                           ; $4f6b: $00
    nop                                           ; $4f6c: $00
    nop                                           ; $4f6d: $00
    ld bc, $0202                                  ; $4f6e: $01 $02 $02
    ld [bc], a                                    ; $4f71: $02
    ld [bc], a                                    ; $4f72: $02
    ld [bc], a                                    ; $4f73: $02
    ld [bc], a                                    ; $4f74: $02

jr_0a9_4f75:
    ld [bc], a                                    ; $4f75: $02
    ld [bc], a                                    ; $4f76: $02
    ld [bc], a                                    ; $4f77: $02
    inc bc                                        ; $4f78: $03
    inc b                                         ; $4f79: $04
    dec b                                         ; $4f7a: $05
    ld b, $07                                     ; $4f7b: $06 $07
    rlca                                          ; $4f7d: $07
    rlca                                          ; $4f7e: $07
    rlca                                          ; $4f7f: $07
    rlca                                          ; $4f80: $07
    ld [$0905], sp                                ; $4f81: $08 $05 $09
    inc b                                         ; $4f84: $04
    dec b                                         ; $4f85: $05
    ld a, [bc]                                    ; $4f86: $0a
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00
    nop                                           ; $4f89: $00
    nop                                           ; $4f8a: $00
    nop                                           ; $4f8b: $00
    dec bc                                        ; $4f8c: $0b
    dec b                                         ; $4f8d: $05
    add hl, bc                                    ; $4f8e: $09
    inc b                                         ; $4f8f: $04
    inc c                                         ; $4f90: $0c
    dec c                                         ; $4f91: $0d
    ld c, $0f                                     ; $4f92: $0e $0f
    db $10                                        ; $4f94: $10
    ld de, $120e                                  ; $4f95: $11 $0e $12
    inc de                                        ; $4f98: $13
    add hl, bc                                    ; $4f99: $09
    inc b                                         ; $4f9a: $04
    inc d                                         ; $4f9b: $14
    dec d                                         ; $4f9c: $15
    ld d, $0a                                     ; $4f9d: $16 $0a
    rla                                           ; $4f9f: $17
    dec bc                                        ; $4fa0: $0b
    jr @+$1b                                      ; $4fa1: $18 $19

    ld a, [de]                                    ; $4fa3: $1a
    add hl, bc                                    ; $4fa4: $09
    inc b                                         ; $4fa5: $04
    dec de                                        ; $4fa6: $1b
    inc e                                         ; $4fa7: $1c
    dec e                                         ; $4fa8: $1d
    ld e, $1f                                     ; $4fa9: $1e $1f
    jr nz, jr_0a9_4fce                            ; $4fab: $20 $21

    ld [hl+], a                                   ; $4fad: $22
    inc hl                                        ; $4fae: $23
    add hl, bc                                    ; $4faf: $09
    inc h                                         ; $4fb0: $24
    dec h                                         ; $4fb1: $25
    dec h                                         ; $4fb2: $25
    dec h                                         ; $4fb3: $25
    dec h                                         ; $4fb4: $25
    ld h, $25                                     ; $4fb5: $26 $25
    dec h                                         ; $4fb7: $25
    dec h                                         ; $4fb8: $25
    dec h                                         ; $4fb9: $25
    daa                                           ; $4fba: $27
    ld de, $0012                                  ; $4fbb: $11 $12 $00
    nop                                           ; $4fbe: $00
    nop                                           ; $4fbf: $00
    nop                                           ; $4fc0: $00
    nop                                           ; $4fc1: $00
    nop                                           ; $4fc2: $00
    nop                                           ; $4fc3: $00
    nop                                           ; $4fc4: $00
    nop                                           ; $4fc5: $00
    nop                                           ; $4fc6: $00
    nop                                           ; $4fc7: $00
    nop                                           ; $4fc8: $00
    nop                                           ; $4fc9: $00
    nop                                           ; $4fca: $00
    nop                                           ; $4fcb: $00
    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00

jr_0a9_4fce:
    nop                                           ; $4fce: $00
    nop                                           ; $4fcf: $00
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    nop                                           ; $4fd2: $00
    nop                                           ; $4fd3: $00
    nop                                           ; $4fd4: $00
    nop                                           ; $4fd5: $00
    nop                                           ; $4fd6: $00
    ld bc, $0302                                  ; $4fd7: $01 $02 $03
    nop                                           ; $4fda: $00
    nop                                           ; $4fdb: $00
    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00
    nop                                           ; $4fde: $00
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    nop                                           ; $4fe1: $00
    nop                                           ; $4fe2: $00
    nop                                           ; $4fe3: $00
    nop                                           ; $4fe4: $00
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    nop                                           ; $4fe7: $00
    inc b                                         ; $4fe8: $04
    dec b                                         ; $4fe9: $05
    ld b, $00                                     ; $4fea: $06 $00
    nop                                           ; $4fec: $00
    nop                                           ; $4fed: $00
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    nop                                           ; $4ff0: $00
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    nop                                           ; $4ff3: $00
    nop                                           ; $4ff4: $00
    nop                                           ; $4ff5: $00
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    nop                                           ; $4ff8: $00
    inc b                                         ; $4ff9: $04
    dec b                                         ; $4ffa: $05
    rlca                                          ; $4ffb: $07
    ld [$0a09], sp                                ; $4ffc: $08 $09 $0a
    nop                                           ; $4fff: $00
    nop                                           ; $5000: $00
    nop                                           ; $5001: $00
    nop                                           ; $5002: $00
    nop                                           ; $5003: $00
    nop                                           ; $5004: $00
    nop                                           ; $5005: $00
    nop                                           ; $5006: $00
    nop                                           ; $5007: $00
    nop                                           ; $5008: $00
    nop                                           ; $5009: $00
    inc b                                         ; $500a: $04
    dec b                                         ; $500b: $05
    dec bc                                        ; $500c: $0b
    inc c                                         ; $500d: $0c
    dec c                                         ; $500e: $0d
    ld c, $00                                     ; $500f: $0e $00
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    nop                                           ; $5013: $00
    nop                                           ; $5014: $00
    nop                                           ; $5015: $00
    nop                                           ; $5016: $00
    nop                                           ; $5017: $00
    nop                                           ; $5018: $00
    nop                                           ; $5019: $00
    nop                                           ; $501a: $00
    rrca                                          ; $501b: $0f
    db $10                                        ; $501c: $10
    ld b, $00                                     ; $501d: $06 $00
    nop                                           ; $501f: $00
    nop                                           ; $5020: $00
    nop                                           ; $5021: $00
    nop                                           ; $5022: $00
    nop                                           ; $5023: $00
    nop                                           ; $5024: $00
    nop                                           ; $5025: $00
    nop                                           ; $5026: $00
    nop                                           ; $5027: $00
    nop                                           ; $5028: $00
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    nop                                           ; $502b: $00
    nop                                           ; $502c: $00
    inc b                                         ; $502d: $04
    ld b, $11                                     ; $502e: $06 $11
    ld [de], a                                    ; $5030: $12
    inc de                                        ; $5031: $13
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    nop                                           ; $5034: $00
    nop                                           ; $5035: $00
    nop                                           ; $5036: $00
    nop                                           ; $5037: $00
    nop                                           ; $5038: $00
    nop                                           ; $5039: $00
    nop                                           ; $503a: $00
    nop                                           ; $503b: $00
    nop                                           ; $503c: $00
    nop                                           ; $503d: $00
    inc b                                         ; $503e: $04
    dec b                                         ; $503f: $05
    dec b                                         ; $5040: $05
    inc d                                         ; $5041: $14
    dec d                                         ; $5042: $15
    nop                                           ; $5043: $00
    nop                                           ; $5044: $00
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    nop                                           ; $5047: $00
    nop                                           ; $5048: $00
    nop                                           ; $5049: $00
    nop                                           ; $504a: $00
    nop                                           ; $504b: $00
    nop                                           ; $504c: $00
    nop                                           ; $504d: $00
    ld d, $17                                     ; $504e: $16 $17
    ld b, $18                                     ; $5050: $06 $18
    jr jr_0a9_506c                                ; $5052: $18 $18

    nop                                           ; $5054: $00
    nop                                           ; $5055: $00
    nop                                           ; $5056: $00
    nop                                           ; $5057: $00
    nop                                           ; $5058: $00
    nop                                           ; $5059: $00
    nop                                           ; $505a: $00
    nop                                           ; $505b: $00
    nop                                           ; $505c: $00
    nop                                           ; $505d: $00
    nop                                           ; $505e: $00
    inc b                                         ; $505f: $04
    dec b                                         ; $5060: $05
    ld b, $00                                     ; $5061: $06 $00
    nop                                           ; $5063: $00
    nop                                           ; $5064: $00
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    nop                                           ; $5067: $00
    nop                                           ; $5068: $00
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00

jr_0a9_506c:
    nop                                           ; $506c: $00
    nop                                           ; $506d: $00
    nop                                           ; $506e: $00
    nop                                           ; $506f: $00
    inc b                                         ; $5070: $04
    dec b                                         ; $5071: $05
    ld b, $00                                     ; $5072: $06 $00
    nop                                           ; $5074: $00
    nop                                           ; $5075: $00
    nop                                           ; $5076: $00
    nop                                           ; $5077: $00
    nop                                           ; $5078: $00
    inc de                                        ; $5079: $13
    ld de, $1111                                  ; $507a: $11 $11 $11
    ld de, $1111                                  ; $507d: $11 $11 $11
    ld de, $0504                                  ; $5080: $11 $04 $05
    ld b, $11                                     ; $5083: $06 $11
    ld de, $1911                                  ; $5085: $11 $11 $19
    nop                                           ; $5088: $00
    nop                                           ; $5089: $00
    ld a, [de]                                    ; $508a: $1a
    dec b                                         ; $508b: $05
    dec de                                        ; $508c: $1b
    inc e                                         ; $508d: $1c
    inc e                                         ; $508e: $1c
    inc e                                         ; $508f: $1c
    inc e                                         ; $5090: $1c
    inc e                                         ; $5091: $1c
    inc e                                         ; $5092: $1c
    inc e                                         ; $5093: $1c
    inc e                                         ; $5094: $1c
    inc e                                         ; $5095: $1c
    inc e                                         ; $5096: $1c
    inc e                                         ; $5097: $1c
    dec e                                         ; $5098: $1d
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    ld a, [de]                                    ; $509b: $1a
    dec b                                         ; $509c: $05
    ld b, $00                                     ; $509d: $06 $00
    nop                                           ; $509f: $00
    nop                                           ; $50a0: $00
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    nop                                           ; $50a3: $00
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    nop                                           ; $50a6: $00
    nop                                           ; $50a7: $00
    nop                                           ; $50a8: $00
    nop                                           ; $50a9: $00
    nop                                           ; $50aa: $00
    nop                                           ; $50ab: $00
    ld a, [de]                                    ; $50ac: $1a
    dec b                                         ; $50ad: $05
    ld b, $00                                     ; $50ae: $06 $00
    nop                                           ; $50b0: $00
    nop                                           ; $50b1: $00
    nop                                           ; $50b2: $00
    nop                                           ; $50b3: $00
    nop                                           ; $50b4: $00
    nop                                           ; $50b5: $00
    nop                                           ; $50b6: $00
    nop                                           ; $50b7: $00
    nop                                           ; $50b8: $00
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    nop                                           ; $50bb: $00
    nop                                           ; $50bc: $00
    ld e, $05                                     ; $50bd: $1e $05
    rra                                           ; $50bf: $1f
    jr nz, jr_0a9_50c2                            ; $50c0: $20 $00

jr_0a9_50c2:
    nop                                           ; $50c2: $00
    nop                                           ; $50c3: $00
    nop                                           ; $50c4: $00
    nop                                           ; $50c5: $00
    nop                                           ; $50c6: $00
    nop                                           ; $50c7: $00
    nop                                           ; $50c8: $00
    nop                                           ; $50c9: $00
    nop                                           ; $50ca: $00
    nop                                           ; $50cb: $00
    nop                                           ; $50cc: $00
    nop                                           ; $50cd: $00
    ld hl, $221e                                  ; $50ce: $21 $1e $22
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    nop                                           ; $50d4: $00
    nop                                           ; $50d5: $00
    nop                                           ; $50d6: $00
    nop                                           ; $50d7: $00
    nop                                           ; $50d8: $00
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    nop                                           ; $50db: $00
    nop                                           ; $50dc: $00
    nop                                           ; $50dd: $00
    nop                                           ; $50de: $00
    nop                                           ; $50df: $00
    nop                                           ; $50e0: $00
    nop                                           ; $50e1: $00
    nop                                           ; $50e2: $00
    nop                                           ; $50e3: $00
    nop                                           ; $50e4: $00
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    nop                                           ; $50e7: $00
    nop                                           ; $50e8: $00
    nop                                           ; $50e9: $00
    nop                                           ; $50ea: $00
    nop                                           ; $50eb: $00
    nop                                           ; $50ec: $00
    nop                                           ; $50ed: $00
    nop                                           ; $50ee: $00
    add hl, bc                                    ; $50ef: $09
    add hl, bc                                    ; $50f0: $09
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    nop                                           ; $50f3: $00
    nop                                           ; $50f4: $00
    nop                                           ; $50f5: $00
    nop                                           ; $50f6: $00
    nop                                           ; $50f7: $00
    nop                                           ; $50f8: $00
    nop                                           ; $50f9: $00
    nop                                           ; $50fa: $00
    nop                                           ; $50fb: $00
    ld bc, $0302                                  ; $50fc: $01 $02 $03
    inc b                                         ; $50ff: $04
    dec b                                         ; $5100: $05
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    ld b, $07                                     ; $5104: $06 $07
    ld [$0808], sp                                ; $5106: $08 $08 $08
    add hl, bc                                    ; $5109: $09
    ld a, [bc]                                    ; $510a: $0a
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    dec bc                                        ; $510d: $0b
    ld [$0808], sp                                ; $510e: $08 $08 $08
    ld [$0c08], sp                                ; $5111: $08 $08 $0c
    dec c                                         ; $5114: $0d
    nop                                           ; $5115: $00
    ld c, $08                                     ; $5116: $0e $08
    ld [$0808], sp                                ; $5118: $08 $08 $08
    ld [$0f08], sp                                ; $511b: $08 $08 $0f
    db $10                                        ; $511e: $10
    ld de, $0808                                  ; $511f: $11 $08 $08
    ld [$0808], sp                                ; $5122: $08 $08 $08
    ld [$120f], sp                                ; $5125: $08 $0f $12
    inc de                                        ; $5128: $13
    ld [$0808], sp                                ; $5129: $08 $08 $08
    ld [$1408], sp                                ; $512c: $08 $08 $14
    dec d                                         ; $512f: $15
    nop                                           ; $5130: $00
    ld d, $17                                     ; $5131: $16 $17
    ld [$0808], sp                                ; $5133: $08 $08 $08
    jr jr_0a9_5151                                ; $5136: $18 $19

    nop                                           ; $5138: $00
    nop                                           ; $5139: $00
    nop                                           ; $513a: $00
    ld a, [de]                                    ; $513b: $1a
    dec de                                        ; $513c: $1b
    inc e                                         ; $513d: $1c
    dec e                                         ; $513e: $1d
    ld e, $00                                     ; $513f: $1e $00
    nop                                           ; $5141: $00
    dec b                                         ; $5142: $05
    dec b                                         ; $5143: $05
    nop                                           ; $5144: $00
    nop                                           ; $5145: $00
    nop                                           ; $5146: $00
    nop                                           ; $5147: $00
    nop                                           ; $5148: $00
    nop                                           ; $5149: $00
    ld bc, $0302                                  ; $514a: $01 $02 $03
    nop                                           ; $514d: $00
    inc b                                         ; $514e: $04
    ld [bc], a                                    ; $514f: $02
    ld [bc], a                                    ; $5150: $02

jr_0a9_5151:
    dec b                                         ; $5151: $05
    ld b, $07                                     ; $5152: $06 $07
    ld [$0202], sp                                ; $5154: $08 $02 $02
    add hl, bc                                    ; $5157: $09
    nop                                           ; $5158: $00
    ld a, [bc]                                    ; $5159: $0a
    dec bc                                        ; $515a: $0b
    inc c                                         ; $515b: $0c
    nop                                           ; $515c: $00
    ld a, [bc]                                    ; $515d: $0a
    ld de, $0000                                  ; $515e: $11 $00 $00
    nop                                           ; $5161: $00
    nop                                           ; $5162: $00
    nop                                           ; $5163: $00
    nop                                           ; $5164: $00
    ld bc, $0002                                  ; $5165: $01 $02 $00
    nop                                           ; $5168: $00
    nop                                           ; $5169: $00
    nop                                           ; $516a: $00
    nop                                           ; $516b: $00
    nop                                           ; $516c: $00
    nop                                           ; $516d: $00
    nop                                           ; $516e: $00
    ld bc, $0003                                  ; $516f: $01 $03 $00
    nop                                           ; $5172: $00
    nop                                           ; $5173: $00
    nop                                           ; $5174: $00
    nop                                           ; $5175: $00
    nop                                           ; $5176: $00
    nop                                           ; $5177: $00
    nop                                           ; $5178: $00
    ld bc, $0004                                  ; $5179: $01 $04 $00
    nop                                           ; $517c: $00
    nop                                           ; $517d: $00
    dec b                                         ; $517e: $05
    ld b, $06                                     ; $517f: $06 $06
    ld b, $06                                     ; $5181: $06 $06
    rlca                                          ; $5183: $07
    inc b                                         ; $5184: $04
    nop                                           ; $5185: $00
    nop                                           ; $5186: $00
    nop                                           ; $5187: $00
    ld [$0a09], sp                                ; $5188: $08 $09 $0a
    ld a, [bc]                                    ; $518b: $0a
    ld a, [bc]                                    ; $518c: $0a
    ld a, [bc]                                    ; $518d: $0a
    dec bc                                        ; $518e: $0b
    nop                                           ; $518f: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    ld [$000c], sp                                ; $5192: $08 $0c $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    nop                                           ; $519b: $00
    ld [$000c], sp                                ; $519c: $08 $0c $00
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    ld [$060d], sp                                ; $51a6: $08 $0d $06
    ld b, $06                                     ; $51a9: $06 $06
    ld b, $0e                                     ; $51ab: $06 $0e
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    rrca                                          ; $51b0: $0f
    ld a, [bc]                                    ; $51b1: $0a
    ld a, [bc]                                    ; $51b2: $0a
    ld a, [bc]                                    ; $51b3: $0a
    ld a, [bc]                                    ; $51b4: $0a
    db $10                                        ; $51b5: $10
    inc b                                         ; $51b6: $04
    nop                                           ; $51b7: $00
    nop                                           ; $51b8: $00
    nop                                           ; $51b9: $00
    nop                                           ; $51ba: $00
    nop                                           ; $51bb: $00
    nop                                           ; $51bc: $00
    nop                                           ; $51bd: $00
    nop                                           ; $51be: $00
    ld bc, $0004                                  ; $51bf: $01 $04 $00
    nop                                           ; $51c2: $00
    nop                                           ; $51c3: $00
    nop                                           ; $51c4: $00
    nop                                           ; $51c5: $00
    nop                                           ; $51c6: $00
    nop                                           ; $51c7: $00
    nop                                           ; $51c8: $00
    ld bc, $0004                                  ; $51c9: $01 $04 $00
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00
    dec b                                         ; $51ce: $05
    ld b, $06                                     ; $51cf: $06 $06
    ld b, $06                                     ; $51d1: $06 $06
    rlca                                          ; $51d3: $07
    inc b                                         ; $51d4: $04
    nop                                           ; $51d5: $00
    nop                                           ; $51d6: $00
    nop                                           ; $51d7: $00
    ld [$0a09], sp                                ; $51d8: $08 $09 $0a
    ld a, [bc]                                    ; $51db: $0a
    ld a, [bc]                                    ; $51dc: $0a
    ld a, [bc]                                    ; $51dd: $0a
    dec bc                                        ; $51de: $0b
    nop                                           ; $51df: $00
    nop                                           ; $51e0: $00
    nop                                           ; $51e1: $00
    ld [$000c], sp                                ; $51e2: $08 $0c $00
    nop                                           ; $51e5: $00
    nop                                           ; $51e6: $00
    nop                                           ; $51e7: $00
    nop                                           ; $51e8: $00
    nop                                           ; $51e9: $00
    nop                                           ; $51ea: $00
    nop                                           ; $51eb: $00
    ld [$000c], sp                                ; $51ec: $08 $0c $00
    nop                                           ; $51ef: $00
    nop                                           ; $51f0: $00
    nop                                           ; $51f1: $00
    nop                                           ; $51f2: $00
    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    nop                                           ; $51f5: $00
    ld de, $1212                                  ; $51f6: $11 $12 $12
    ld [de], a                                    ; $51f9: $12
    ld [de], a                                    ; $51fa: $12
    ld [de], a                                    ; $51fb: $12
    inc de                                        ; $51fc: $13
    inc d                                         ; $51fd: $14
    nop                                           ; $51fe: $00
    nop                                           ; $51ff: $00
    nop                                           ; $5200: $00
    nop                                           ; $5201: $00
    nop                                           ; $5202: $00
    nop                                           ; $5203: $00
    nop                                           ; $5204: $00
    nop                                           ; $5205: $00
    nop                                           ; $5206: $00
    nop                                           ; $5207: $00
    nop                                           ; $5208: $00
    add hl, de                                    ; $5209: $19
    inc d                                         ; $520a: $14
    nop                                           ; $520b: $00
    nop                                           ; $520c: $00
    nop                                           ; $520d: $00
    ld bc, $0302                                  ; $520e: $01 $02 $03
    inc b                                         ; $5211: $04
    dec b                                         ; $5212: $05
    ld b, $07                                     ; $5213: $06 $07
    ld [$0a09], sp                                ; $5215: $08 $09 $0a
    dec bc                                        ; $5218: $0b
    inc c                                         ; $5219: $0c
    dec c                                         ; $521a: $0d
    dec c                                         ; $521b: $0d
    ld c, $0f                                     ; $521c: $0e $0f
    db $10                                        ; $521e: $10
    ld a, [bc]                                    ; $521f: $0a
    rrca                                          ; $5220: $0f
    ld de, $1312                                  ; $5221: $11 $12 $13
    nop                                           ; $5224: $00
    nop                                           ; $5225: $00
    inc d                                         ; $5226: $14
    dec d                                         ; $5227: $15
    ld d, $16                                     ; $5228: $16 $16
    rla                                           ; $522a: $17
    jr @+$1b                                      ; $522b: $18 $19

    ld a, [de]                                    ; $522d: $1a
    dec de                                        ; $522e: $1b
    inc e                                         ; $522f: $1c
    dec e                                         ; $5230: $1d
    ld e, $1f                                     ; $5231: $1e $1f
    jr nz, jr_0a9_5255                            ; $5233: $20 $20

    ld hl, $2322                                  ; $5235: $21 $22 $23
    inc h                                         ; $5238: $24
    dec h                                         ; $5239: $25
    ld h, $27                                     ; $523a: $26 $27
    jr z, jr_0a9_523e                             ; $523c: $28 $00

jr_0a9_523e:
    nop                                           ; $523e: $00
    add hl, hl                                    ; $523f: $29
    ld a, [hl+]                                   ; $5240: $2a
    jr nz, jr_0a9_5263                            ; $5241: $20 $20

    dec hl                                        ; $5243: $2b
    inc l                                         ; $5244: $2c
    jr nz, jr_0a9_5274                            ; $5245: $20 $2d

    ld l, $2f                                     ; $5247: $2e $2f
    jr nc, jr_0a9_527c                            ; $5249: $30 $31

    jr nz, @+$22                                  ; $524b: $20 $20

    jr nz, jr_0a9_5281                            ; $524d: $20 $32

    jr nz, jr_0a9_5271                            ; $524f: $20 $20

    inc sp                                        ; $5251: $33
    inc [hl]                                      ; $5252: $34
    dec [hl]                                      ; $5253: $35
    rra                                           ; $5254: $1f

jr_0a9_5255:
    ld [hl], $00                                  ; $5255: $36 $00
    scf                                           ; $5257: $37
    jr c, jr_0a9_5293                             ; $5258: $38 $39

    jr nz, jr_0a9_527c                            ; $525a: $20 $20

    jr nz, @+$36                                  ; $525c: $20 $34

    ld a, [hl-]                                   ; $525e: $3a
    dec sp                                        ; $525f: $3b
    inc a                                         ; $5260: $3c
    jr nz, jr_0a9_5283                            ; $5261: $20 $20

jr_0a9_5263:
    dec a                                         ; $5263: $3d
    jr nz, @+$22                                  ; $5264: $20 $20

    jr nz, jr_0a9_5288                            ; $5266: $20 $20

    jr nz, jr_0a9_528a                            ; $5268: $20 $20

    jr nz, jr_0a9_528c                            ; $526a: $20 $20

    jr nz, jr_0a9_528e                            ; $526c: $20 $20

    ld a, $00                                     ; $526e: $3e $00
    ccf                                           ; $5270: $3f

jr_0a9_5271:
    ld a, [de]                                    ; $5271: $1a
    inc l                                         ; $5272: $2c
    inc [hl]                                      ; $5273: $34

jr_0a9_5274:
    ld a, [hl-]                                   ; $5274: $3a
    ld b, b                                       ; $5275: $40
    ld b, c                                       ; $5276: $41
    jr nz, jr_0a9_5299                            ; $5277: $20 $20

    jr nz, jr_0a9_52bd                            ; $5279: $20 $42

    ld b, e                                       ; $527b: $43

jr_0a9_527c:
    jr nz, @+$22                                  ; $527c: $20 $20

    jr nz, jr_0a9_52a0                            ; $527e: $20 $20

    ld b, h                                       ; $5280: $44

jr_0a9_5281:
    ld b, l                                       ; $5281: $45
    ld b, [hl]                                    ; $5282: $46

jr_0a9_5283:
    jr nz, @+$22                                  ; $5283: $20 $20

    jr nz, @+$22                                  ; $5285: $20 $20

    ld b, a                                       ; $5287: $47

jr_0a9_5288:
    nop                                           ; $5288: $00
    add hl, sp                                    ; $5289: $39

jr_0a9_528a:
    jr nz, @+$22                                  ; $528a: $20 $20

jr_0a9_528c:
    jr nz, @+$22                                  ; $528c: $20 $20

jr_0a9_528e:
    ld c, b                                       ; $528e: $48
    ld c, c                                       ; $528f: $49
    ld c, d                                       ; $5290: $4a
    jr nz, jr_0a9_52b3                            ; $5291: $20 $20

jr_0a9_5293:
    ld c, e                                       ; $5293: $4b
    ld c, h                                       ; $5294: $4c
    jr nz, @+$4f                                  ; $5295: $20 $4d

    jr nz, @+$22                                  ; $5297: $20 $20

jr_0a9_5299:
    jr nz, jr_0a9_52bb                            ; $5299: $20 $20

    jr nz, jr_0a9_52bd                            ; $529b: $20 $20

    jr nz, jr_0a9_52ed                            ; $529d: $20 $4e

    dec a                                         ; $529f: $3d

jr_0a9_52a0:
    ld c, a                                       ; $52a0: $4f
    ld d, b                                       ; $52a1: $50

jr_0a9_52a2:
    ld d, c                                       ; $52a2: $51
    ld d, d                                       ; $52a3: $52
    jr nz, jr_0a9_52c6                            ; $52a4: $20 $20

    jr nz, jr_0a9_52c8                            ; $52a6: $20 $20

    ld d, e                                       ; $52a8: $53
    ld d, h                                       ; $52a9: $54
    ld d, l                                       ; $52aa: $55
    jr nz, @+$22                                  ; $52ab: $20 $20

    jr nz, jr_0a9_5305                            ; $52ad: $20 $56

    jr nz, jr_0a9_52d1                            ; $52af: $20 $20

    jr nz, @+$59                                  ; $52b1: $20 $57

jr_0a9_52b3:
    jr nz, jr_0a9_530d                            ; $52b3: $20 $58

    ld e, c                                       ; $52b5: $59
    ld a, [hl-]                                   ; $52b6: $3a
    ld e, d                                       ; $52b7: $5a
    jr nz, jr_0a9_5315                            ; $52b8: $20 $5b

    ld e, h                                       ; $52ba: $5c

jr_0a9_52bb:
    ld e, l                                       ; $52bb: $5d

jr_0a9_52bc:
    ld e, [hl]                                    ; $52bc: $5e

jr_0a9_52bd:
    jr nz, jr_0a9_52df                            ; $52bd: $20 $20

    jr nz, jr_0a9_5320                            ; $52bf: $20 $5f

    ld h, b                                       ; $52c1: $60
    ld h, c                                       ; $52c2: $61
    ld h, d                                       ; $52c3: $62
    ld h, e                                       ; $52c4: $63
    ld h, h                                       ; $52c5: $64

jr_0a9_52c6:
    jr nz, @+$67                                  ; $52c6: $20 $65

jr_0a9_52c8:
    jr nz, jr_0a9_52ea                            ; $52c8: $20 $20

    jr nz, jr_0a9_52ec                            ; $52ca: $20 $20

    jr nz, @+$68                                  ; $52cc: $20 $66

    ld h, a                                       ; $52ce: $67
    jr nz, @+$22                                  ; $52cf: $20 $20

jr_0a9_52d1:
    ld l, b                                       ; $52d1: $68

jr_0a9_52d2:
    jr z, @+$6b                                   ; $52d2: $28 $69

    ld h, h                                       ; $52d4: $64
    jr nz, jr_0a9_52f7                            ; $52d5: $20 $20

    jr nz, @+$22                                  ; $52d7: $20 $20

    jr nz, @+$22                                  ; $52d9: $20 $20

    ld h, [hl]                                    ; $52db: $66
    ld l, d                                       ; $52dc: $6a
    ld l, e                                       ; $52dd: $6b
    rra                                           ; $52de: $1f

jr_0a9_52df:
    jr nz, jr_0a9_534d                            ; $52df: $20 $6c

    jr nz, jr_0a9_5303                            ; $52e1: $20 $20

    jr nz, jr_0a9_5352                            ; $52e3: $20 $6d

    ld l, [hl]                                    ; $52e5: $6e
    ld l, a                                       ; $52e6: $6f
    ld [hl], b                                    ; $52e7: $70
    jr nz, @+$22                                  ; $52e8: $20 $20

jr_0a9_52ea:
    jr nz, jr_0a9_535d                            ; $52ea: $20 $71

jr_0a9_52ec:
    ld [hl], d                                    ; $52ec: $72

jr_0a9_52ed:
    ld [hl], e                                    ; $52ed: $73
    jr nz, jr_0a9_5310                            ; $52ee: $20 $20

    jr nz, jr_0a9_5312                            ; $52f0: $20 $20

    jr nz, @+$22                                  ; $52f2: $20 $20

    ld [hl], h                                    ; $52f4: $74
    ld [hl], l                                    ; $52f5: $75
    halt                                          ; $52f6: $76

jr_0a9_52f7:
    ld [hl], a                                    ; $52f7: $77
    jr nz, jr_0a9_531a                            ; $52f8: $20 $20

    jr nz, jr_0a9_531c                            ; $52fa: $20 $20

    jr nz, jr_0a9_5376                            ; $52fc: $20 $78

    inc l                                         ; $52fe: $2c
    jr nz, jr_0a9_5321                            ; $52ff: $20 $20

    dec sp                                        ; $5301: $3b
    ld a, c                                       ; $5302: $79

jr_0a9_5303:
    jr nz, @+$7c                                  ; $5303: $20 $7a

jr_0a9_5305:
    ld a, e                                       ; $5305: $7b
    ld a, h                                       ; $5306: $7c
    jr nz, jr_0a9_5329                            ; $5307: $20 $20

    jr nz, jr_0a9_532b                            ; $5309: $20 $20

    jr nz, @+$22                                  ; $530b: $20 $20

jr_0a9_530d:
    jr nz, @+$22                                  ; $530d: $20 $20

    ld a, l                                       ; $530f: $7d

jr_0a9_5310:
    ld a, [hl]                                    ; $5310: $7e
    ld a, a                                       ; $5311: $7f

jr_0a9_5312:
    ld [hl], b                                    ; $5312: $70
    jr nz, jr_0a9_5335                            ; $5313: $20 $20

jr_0a9_5315:
    jr nz, jr_0a9_5337                            ; $5315: $20 $20

    jr nz, jr_0a9_5299                            ; $5317: $20 $80

    add c                                         ; $5319: $81

jr_0a9_531a:
    add d                                         ; $531a: $82
    add e                                         ; $531b: $83

jr_0a9_531c:
    jr nz, jr_0a9_52a2                            ; $531c: $20 $84

jr_0a9_531e:
    nop                                           ; $531e: $00
    add l                                         ; $531f: $85

jr_0a9_5320:
    add [hl]                                      ; $5320: $86

jr_0a9_5321:
    ld a, [hl-]                                   ; $5321: $3a
    jr nz, jr_0a9_5383                            ; $5322: $20 $5f

    ld h, b                                       ; $5324: $60
    jr nz, @+$22                                  ; $5325: $20 $20

    jr nz, jr_0a9_5349                            ; $5327: $20 $20

jr_0a9_5329:
    add a                                         ; $5329: $87
    adc b                                         ; $532a: $88

jr_0a9_532b:
    adc c                                         ; $532b: $89
    jr nz, jr_0a9_534e                            ; $532c: $20 $20

    jr nz, jr_0a9_5350                            ; $532e: $20 $20

    jr nz, jr_0a9_52bc                            ; $5330: $20 $8a

    rra                                           ; $5332: $1f
    jr nz, jr_0a9_5355                            ; $5333: $20 $20

jr_0a9_5335:
    adc e                                         ; $5335: $8b
    adc h                                         ; $5336: $8c

jr_0a9_5337:
    nop                                           ; $5337: $00
    nop                                           ; $5338: $00
    adc l                                         ; $5339: $8d
    jr nz, @+$22                                  ; $533a: $20 $20

jr_0a9_533c:
    jr nz, jr_0a9_535e                            ; $533c: $20 $20

    jr nz, @+$22                                  ; $533e: $20 $20

    jr nz, jr_0a9_5362                            ; $5340: $20 $20

    jr nz, jr_0a9_52d2                            ; $5342: $20 $8e

    adc a                                         ; $5344: $8f
    sub b                                         ; $5345: $90
    jr nz, jr_0a9_5368                            ; $5346: $20 $20

    sub c                                         ; $5348: $91

jr_0a9_5349:
    ld h, h                                       ; $5349: $64
    ld d, a                                       ; $534a: $57
    jr nz, jr_0a9_536d                            ; $534b: $20 $20

jr_0a9_534d:
    ld b, h                                       ; $534d: $44

jr_0a9_534e:
    sub d                                         ; $534e: $92
    sub e                                         ; $534f: $93

jr_0a9_5350:
    nop                                           ; $5350: $00
    nop                                           ; $5351: $00

jr_0a9_5352:
    sub h                                         ; $5352: $94
    ld h, h                                       ; $5353: $64
    ld [hl], h                                    ; $5354: $74

jr_0a9_5355:
    jr nz, jr_0a9_5377                            ; $5355: $20 $20

    jr nz, @+$22                                  ; $5357: $20 $20

    jr nz, @+$22                                  ; $5359: $20 $20

    jr nz, jr_0a9_53b0                            ; $535b: $20 $53

jr_0a9_535d:
    sub l                                         ; $535d: $95

jr_0a9_535e:
    sub [hl]                                      ; $535e: $96
    jr nz, jr_0a9_5381                            ; $535f: $20 $20

    sub a                                         ; $5361: $97

jr_0a9_5362:
    ld [hl], e                                    ; $5362: $73
    jr nz, @+$76                                  ; $5363: $20 $74

    jr nz, jr_0a9_5387                            ; $5365: $20 $20

    sbc b                                         ; $5367: $98

jr_0a9_5368:
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    nop                                           ; $536a: $00
    nop                                           ; $536b: $00
    sbc c                                         ; $536c: $99

jr_0a9_536d:
    sbc d                                         ; $536d: $9a
    ld h, e                                       ; $536e: $63
    ld a, h                                       ; $536f: $7c
    ld c, l                                       ; $5370: $4d
    jr nz, jr_0a9_5393                            ; $5371: $20 $20

    jr nz, jr_0a9_5395                            ; $5373: $20 $20

    add b                                         ; $5375: $80

jr_0a9_5376:
    sbc e                                         ; $5376: $9b

jr_0a9_5377:
    sbc h                                         ; $5377: $9c
    jr nz, jr_0a9_539a                            ; $5378: $20 $20

    jr nz, jr_0a9_53b0                            ; $537a: $20 $34

    ld a, [hl-]                                   ; $537c: $3a
    sbc l                                         ; $537d: $9d
    jr nz, jr_0a9_531e                            ; $537e: $20 $9e

    sbc a                                         ; $5380: $9f

jr_0a9_5381:
    nop                                           ; $5381: $00
    and b                                         ; $5382: $a0

jr_0a9_5383:
    inc de                                        ; $5383: $13
    and c                                         ; $5384: $a1
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00

jr_0a9_5387:
    nop                                           ; $5387: $00
    add l                                         ; $5388: $85
    jr nz, @+$22                                  ; $5389: $20 $20

    jr nz, jr_0a9_53ad                            ; $538b: $20 $20

    jr nz, jr_0a9_53ba                            ; $538d: $20 $2b

    and d                                         ; $538f: $a2
    add hl, sp                                    ; $5390: $39
    jr nz, jr_0a9_53b3                            ; $5391: $20 $20

jr_0a9_5393:
    sub c                                         ; $5393: $91
    ld h, h                                       ; $5394: $64

jr_0a9_5395:
    jr nz, jr_0a9_53b7                            ; $5395: $20 $20

    jr nz, jr_0a9_533c                            ; $5397: $20 $a3

    nop                                           ; $5399: $00

jr_0a9_539a:
    nop                                           ; $539a: $00
    and h                                         ; $539b: $a4
    and l                                         ; $539c: $a5
    and [hl]                                      ; $539d: $a6
    and a                                         ; $539e: $a7
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    xor b                                         ; $53a1: $a8
    jr nz, @+$22                                  ; $53a2: $20 $20

    jr nz, @+$22                                  ; $53a4: $20 $20

    jr nz, @+$22                                  ; $53a6: $20 $20

    sub a                                         ; $53a8: $97
    ld [hl], e                                    ; $53a9: $73
    jr nz, jr_0a9_53cc                            ; $53aa: $20 $20

    xor c                                         ; $53ac: $a9

jr_0a9_53ad:
    ld [hl], e                                    ; $53ad: $73
    jr nz, jr_0a9_53d0                            ; $53ae: $20 $20

jr_0a9_53b0:
    jr nz, @-$54                                  ; $53b0: $20 $aa

    nop                                           ; $53b2: $00

jr_0a9_53b3:
    nop                                           ; $53b3: $00
    and h                                         ; $53b4: $a4
    xor e                                         ; $53b5: $ab
    dec hl                                        ; $53b6: $2b

jr_0a9_53b7:
    xor h                                         ; $53b7: $ac
    xor l                                         ; $53b8: $ad
    xor [hl]                                      ; $53b9: $ae

jr_0a9_53ba:
    xor a                                         ; $53ba: $af
    jr nz, jr_0a9_5431                            ; $53bb: $20 $74

    jr nz, jr_0a9_53df                            ; $53bd: $20 $20

    jr nz, jr_0a9_53e1                            ; $53bf: $20 $20

    jr nz, jr_0a9_53e3                            ; $53c1: $20 $20

    jr nz, jr_0a9_53e5                            ; $53c3: $20 $20

    jr nz, jr_0a9_53e7                            ; $53c5: $20 $20

    jr nz, jr_0a9_5439                            ; $53c7: $20 $70

    or b                                          ; $53c9: $b0
    or c                                          ; $53ca: $b1
    or d                                          ; $53cb: $b2

jr_0a9_53cc:
    or e                                          ; $53cc: $b3
    or h                                          ; $53cd: $b4
    jr nz, jr_0a9_53f0                            ; $53ce: $20 $20

jr_0a9_53d0:
    ld d, e                                       ; $53d0: $53
    or l                                          ; $53d1: $b5
    rra                                           ; $53d2: $1f
    or [hl]                                       ; $53d3: $b6
    jr nz, jr_0a9_53f6                            ; $53d4: $20 $20

    jr nz, jr_0a9_53f8                            ; $53d6: $20 $20

    jr nz, jr_0a9_53fa                            ; $53d8: $20 $20

    jr nz, jr_0a9_53fc                            ; $53da: $20 $20

    jr nz, jr_0a9_53fe                            ; $53dc: $20 $20

    ld [hl-], a                                   ; $53de: $32

jr_0a9_53df:
    jr nz, jr_0a9_5401                            ; $53df: $20 $20

jr_0a9_53e1:
    jr nz, jr_0a9_539a                            ; $53e1: $20 $b7

jr_0a9_53e3:
    cp b                                          ; $53e3: $b8
    or [hl]                                       ; $53e4: $b6

jr_0a9_53e5:
    adc h                                         ; $53e5: $8c
    cp c                                          ; $53e6: $b9

jr_0a9_53e7:
    cp d                                          ; $53e7: $ba
    cp d                                          ; $53e8: $ba
    cp d                                          ; $53e9: $ba
    cp d                                          ; $53ea: $ba
    cp d                                          ; $53eb: $ba
    cp d                                          ; $53ec: $ba
    cp d                                          ; $53ed: $ba
    cp d                                          ; $53ee: $ba
    cp d                                          ; $53ef: $ba

jr_0a9_53f0:
    cp d                                          ; $53f0: $ba
    cp d                                          ; $53f1: $ba
    cp d                                          ; $53f2: $ba
    cp d                                          ; $53f3: $ba
    cp d                                          ; $53f4: $ba
    cp d                                          ; $53f5: $ba

jr_0a9_53f6:
    cp d                                          ; $53f6: $ba
    cp d                                          ; $53f7: $ba

jr_0a9_53f8:
    cp d                                          ; $53f8: $ba
    cp d                                          ; $53f9: $ba

jr_0a9_53fa:
    cp d                                          ; $53fa: $ba
    cp d                                          ; $53fb: $ba

jr_0a9_53fc:
    cp d                                          ; $53fc: $ba
    cp d                                          ; $53fd: $ba

jr_0a9_53fe:
    cp e                                          ; $53fe: $bb
    jr jr_0a9_5415                                ; $53ff: $18 $14

jr_0a9_5401:
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    nop                                           ; $5403: $00
    nop                                           ; $5404: $00
    ld bc, $0302                                  ; $5405: $01 $02 $03
    inc b                                         ; $5408: $04
    dec b                                         ; $5409: $05
    ld b, $07                                     ; $540a: $06 $07
    ld [$0a09], sp                                ; $540c: $08 $09 $0a
    inc b                                         ; $540f: $04
    dec bc                                        ; $5410: $0b
    rlca                                          ; $5411: $07
    ld [$050b], sp                                ; $5412: $08 $0b $05

jr_0a9_5415:
    rlca                                          ; $5415: $07
    ld [$000c], sp                                ; $5416: $08 $0c $00
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    nop                                           ; $541c: $00
    dec c                                         ; $541d: $0d
    ld c, $0f                                     ; $541e: $0e $0f
    db $10                                        ; $5420: $10
    ld de, $1312                                  ; $5421: $11 $12 $13
    inc d                                         ; $5424: $14
    dec d                                         ; $5425: $15
    ld d, $17                                     ; $5426: $16 $17
    jr jr_0a9_5443                                ; $5428: $18 $19

    ld a, [de]                                    ; $542a: $1a
    dec de                                        ; $542b: $1b
    inc e                                         ; $542c: $1c
    dec e                                         ; $542d: $1d
    ld e, $1f                                     ; $542e: $1e $1f
    nop                                           ; $5430: $00

jr_0a9_5431:
    nop                                           ; $5431: $00
    nop                                           ; $5432: $00
    jr nz, @+$23                                  ; $5433: $20 $21

    ld [hl+], a                                   ; $5435: $22
    inc e                                         ; $5436: $1c
    inc hl                                        ; $5437: $23
    inc e                                         ; $5438: $1c

jr_0a9_5439:
    inc h                                         ; $5439: $24
    inc e                                         ; $543a: $1c
    dec de                                        ; $543b: $1b
    inc e                                         ; $543c: $1c
    dec h                                         ; $543d: $25
    ld h, $27                                     ; $543e: $26 $27
    jr z, jr_0a9_546b                             ; $5440: $28 $29

    ld a, [hl+]                                   ; $5442: $2a

jr_0a9_5443:
    inc e                                         ; $5443: $1c
    dec hl                                        ; $5444: $2b
    inc l                                         ; $5445: $2c
    dec l                                         ; $5446: $2d
    rra                                           ; $5447: $1f
    nop                                           ; $5448: $00
    nop                                           ; $5449: $00
    ld l, $2f                                     ; $544a: $2e $2f
    jr nc, jr_0a9_547f                            ; $544c: $30 $31

    inc e                                         ; $544e: $1c
    ld [hl-], a                                   ; $544f: $32
    inc e                                         ; $5450: $1c
    inc e                                         ; $5451: $1c
    inc e                                         ; $5452: $1c
    inc e                                         ; $5453: $1c
    inc e                                         ; $5454: $1c
    ld c, $33                                     ; $5455: $0e $33
    inc [hl]                                      ; $5457: $34
    inc e                                         ; $5458: $1c
    dec [hl]                                      ; $5459: $35
    ld [hl], $1c                                  ; $545a: $36 $1c
    scf                                           ; $545c: $37
    jr c, jr_0a9_548b                             ; $545d: $38 $2c

    rra                                           ; $545f: $1f
    nop                                           ; $5460: $00
    add hl, sp                                    ; $5461: $39
    ld a, [hl-]                                   ; $5462: $3a
    inc e                                         ; $5463: $1c
    scf                                           ; $5464: $37
    dec sp                                        ; $5465: $3b
    inc a                                         ; $5466: $3c
    inc e                                         ; $5467: $1c
    inc e                                         ; $5468: $1c
    inc e                                         ; $5469: $1c
    dec a                                         ; $546a: $3d

jr_0a9_546b:
    ld a, $1c                                     ; $546b: $3e $1c
    ccf                                           ; $546d: $3f
    ld b, b                                       ; $546e: $40
    inc d                                         ; $546f: $14
    inc e                                         ; $5470: $1c
    ld b, c                                       ; $5471: $41
    ld b, d                                       ; $5472: $42
    inc e                                         ; $5473: $1c
    inc e                                         ; $5474: $1c
    inc e                                         ; $5475: $1c
    inc e                                         ; $5476: $1c
    rra                                           ; $5477: $1f
    nop                                           ; $5478: $00
    ld b, e                                       ; $5479: $43
    inc e                                         ; $547a: $1c
    inc e                                         ; $547b: $1c
    inc e                                         ; $547c: $1c
    ld b, h                                       ; $547d: $44
    inc d                                         ; $547e: $14

jr_0a9_547f:
    inc e                                         ; $547f: $1c
    inc e                                         ; $5480: $1c
    ld b, l                                       ; $5481: $45
    ld b, [hl]                                    ; $5482: $46
    inc e                                         ; $5483: $1c
    inc e                                         ; $5484: $1c
    ld b, a                                       ; $5485: $47
    ld c, b                                       ; $5486: $48
    inc e                                         ; $5487: $1c
    dec a                                         ; $5488: $3d
    ld a, $1c                                     ; $5489: $3e $1c

jr_0a9_548b:
    inc e                                         ; $548b: $1c
    ld c, c                                       ; $548c: $49
    inc e                                         ; $548d: $1c
    inc e                                         ; $548e: $1c
    rra                                           ; $548f: $1f
    nop                                           ; $5490: $00
    ld c, d                                       ; $5491: $4a
    ld c, e                                       ; $5492: $4b
    ld c, c                                       ; $5493: $49
    inc e                                         ; $5494: $1c
    inc e                                         ; $5495: $1c
    ld c, h                                       ; $5496: $4c
    ld b, [hl]                                    ; $5497: $46
    inc e                                         ; $5498: $1c
    ld c, l                                       ; $5499: $4d
    ld c, [hl]                                    ; $549a: $4e
    ld c, a                                       ; $549b: $4f
    ld d, b                                       ; $549c: $50
    ld d, c                                       ; $549d: $51
    ld d, d                                       ; $549e: $52
    inc e                                         ; $549f: $1c
    inc e                                         ; $54a0: $1c
    inc e                                         ; $54a1: $1c
    inc e                                         ; $54a2: $1c
    inc e                                         ; $54a3: $1c
    dec de                                        ; $54a4: $1b
    inc e                                         ; $54a5: $1c
    inc e                                         ; $54a6: $1c
    rra                                           ; $54a7: $1f
    nop                                           ; $54a8: $00
    ld d, e                                       ; $54a9: $53
    ld d, h                                       ; $54aa: $54
    dec de                                        ; $54ab: $1b
    inc e                                         ; $54ac: $1c
    inc e                                         ; $54ad: $1c
    inc e                                         ; $54ae: $1c
    inc e                                         ; $54af: $1c
    inc e                                         ; $54b0: $1c
    dec [hl]                                      ; $54b1: $35
    ld d, l                                       ; $54b2: $55
    ld d, [hl]                                    ; $54b3: $56
    ld d, a                                       ; $54b4: $57
    ld e, b                                       ; $54b5: $58
    ld e, c                                       ; $54b6: $59
    ld e, d                                       ; $54b7: $5a
    ld e, e                                       ; $54b8: $5b
    inc e                                         ; $54b9: $1c
    inc e                                         ; $54ba: $1c
    inc e                                         ; $54bb: $1c
    inc e                                         ; $54bc: $1c
    add hl, hl                                    ; $54bd: $29
    ld e, h                                       ; $54be: $5c
    rra                                           ; $54bf: $1f
    nop                                           ; $54c0: $00
    ld e, l                                       ; $54c1: $5d
    inc e                                         ; $54c2: $1c
    inc e                                         ; $54c3: $1c
    inc e                                         ; $54c4: $1c
    inc e                                         ; $54c5: $1c
    ld e, [hl]                                    ; $54c6: $5e
    ld e, a                                       ; $54c7: $5f
    ld h, b                                       ; $54c8: $60
    ld h, c                                       ; $54c9: $61
    ld d, a                                       ; $54ca: $57
    ld d, a                                       ; $54cb: $57
    ld d, a                                       ; $54cc: $57
    ld d, a                                       ; $54cd: $57
    ld d, a                                       ; $54ce: $57
    ld h, d                                       ; $54cf: $62
    ld h, e                                       ; $54d0: $63
    inc e                                         ; $54d1: $1c
    ld h, h                                       ; $54d2: $64
    inc e                                         ; $54d3: $1c
    inc e                                         ; $54d4: $1c
    ld h, l                                       ; $54d5: $65
    ld h, [hl]                                    ; $54d6: $66
    rra                                           ; $54d7: $1f
    nop                                           ; $54d8: $00
    ld h, a                                       ; $54d9: $67
    ld l, b                                       ; $54da: $68
    inc [hl]                                      ; $54db: $34
    inc e                                         ; $54dc: $1c
    inc e                                         ; $54dd: $1c
    scf                                           ; $54de: $37
    ld l, c                                       ; $54df: $69
    ld l, d                                       ; $54e0: $6a
    ld d, a                                       ; $54e1: $57
    ld d, a                                       ; $54e2: $57
    ld d, a                                       ; $54e3: $57
    ld d, a                                       ; $54e4: $57
    ld d, a                                       ; $54e5: $57
    ld d, a                                       ; $54e6: $57
    ld d, a                                       ; $54e7: $57
    ld l, e                                       ; $54e8: $6b
    ld l, h                                       ; $54e9: $6c
    ld l, l                                       ; $54ea: $6d
    inc e                                         ; $54eb: $1c
    inc e                                         ; $54ec: $1c
    inc e                                         ; $54ed: $1c
    inc e                                         ; $54ee: $1c
    rra                                           ; $54ef: $1f
    nop                                           ; $54f0: $00
    ld l, [hl]                                    ; $54f1: $6e
    ld l, a                                       ; $54f2: $6f
    jr z, jr_0a9_5506                             ; $54f3: $28 $11

    inc e                                         ; $54f5: $1c
    ld h, l                                       ; $54f6: $65
    inc e                                         ; $54f7: $1c
    ld [hl], b                                    ; $54f8: $70
    ld d, a                                       ; $54f9: $57
    ld d, a                                       ; $54fa: $57
    ld d, a                                       ; $54fb: $57
    ld d, a                                       ; $54fc: $57
    ld d, a                                       ; $54fd: $57
    ld d, a                                       ; $54fe: $57
    ld d, a                                       ; $54ff: $57
    ld [hl], c                                    ; $5500: $71
    ld e, e                                       ; $5501: $5b
    inc e                                         ; $5502: $1c
    inc e                                         ; $5503: $1c
    inc e                                         ; $5504: $1c
    inc e                                         ; $5505: $1c

jr_0a9_5506:
    inc e                                         ; $5506: $1c
    rra                                           ; $5507: $1f
    nop                                           ; $5508: $00
    ld [hl], d                                    ; $5509: $72
    ld c, b                                       ; $550a: $48
    inc e                                         ; $550b: $1c
    inc h                                         ; $550c: $24
    ld de, $1c1c                                  ; $550d: $11 $1c $1c
    ld [hl], e                                    ; $5510: $73
    ld [hl], h                                    ; $5511: $74
    ld d, a                                       ; $5512: $57
    ld d, a                                       ; $5513: $57
    ld d, a                                       ; $5514: $57
    ld d, a                                       ; $5515: $57
    ld d, a                                       ; $5516: $57
    ld d, a                                       ; $5517: $57
    ld [hl], l                                    ; $5518: $75
    halt                                          ; $5519: $76
    inc e                                         ; $551a: $1c
    inc e                                         ; $551b: $1c
    jr c, jr_0a9_553a                             ; $551c: $38 $1c

    inc e                                         ; $551e: $1c
    rra                                           ; $551f: $1f
    nop                                           ; $5520: $00
    ld [hl], a                                    ; $5521: $77
    dec l                                         ; $5522: $2d
    ld a, b                                       ; $5523: $78
    inc a                                         ; $5524: $3c
    inc h                                         ; $5525: $24
    inc e                                         ; $5526: $1c
    inc e                                         ; $5527: $1c
    ld a, c                                       ; $5528: $79
    ld a, d                                       ; $5529: $7a
    ld d, a                                       ; $552a: $57
    ld d, a                                       ; $552b: $57
    ld d, a                                       ; $552c: $57
    ld d, a                                       ; $552d: $57
    ld d, a                                       ; $552e: $57
    ld a, e                                       ; $552f: $7b
    ld a, h                                       ; $5530: $7c
    dec c                                         ; $5531: $0d
    inc e                                         ; $5532: $1c
    inc e                                         ; $5533: $1c
    inc e                                         ; $5534: $1c
    inc e                                         ; $5535: $1c
    inc e                                         ; $5536: $1c
    rra                                           ; $5537: $1f
    nop                                           ; $5538: $00
    ld e, l                                       ; $5539: $5d

jr_0a9_553a:
    inc l                                         ; $553a: $2c
    add hl, de                                    ; $553b: $19
    ld a, [de]                                    ; $553c: $1a
    inc e                                         ; $553d: $1c
    ld e, [hl]                                    ; $553e: $5e
    ld e, a                                       ; $553f: $5f
    scf                                           ; $5540: $37
    ld a, l                                       ; $5541: $7d
    ld a, [hl]                                    ; $5542: $7e
    ld a, a                                       ; $5543: $7f
    ld d, a                                       ; $5544: $57
    ld d, a                                       ; $5545: $57
    ld d, a                                       ; $5546: $57
    add b                                         ; $5547: $80
    add c                                         ; $5548: $81
    ld h, $1c                                     ; $5549: $26 $1c
    inc e                                         ; $554b: $1c
    inc e                                         ; $554c: $1c
    inc e                                         ; $554d: $1c
    add d                                         ; $554e: $82
    rra                                           ; $554f: $1f
    nop                                           ; $5550: $00
    add e                                         ; $5551: $83
    add h                                         ; $5552: $84
    add l                                         ; $5553: $85
    ld a, [hl+]                                   ; $5554: $2a
    inc e                                         ; $5555: $1c
    scf                                           ; $5556: $37
    ld l, c                                       ; $5557: $69
    inc e                                         ; $5558: $1c
    scf                                           ; $5559: $37
    add [hl]                                      ; $555a: $86
    add a                                         ; $555b: $87
    adc b                                         ; $555c: $88
    adc c                                         ; $555d: $89
    adc d                                         ; $555e: $8a
    adc e                                         ; $555f: $8b
    inc e                                         ; $5560: $1c
    ld l, h                                       ; $5561: $6c
    adc h                                         ; $5562: $8c
    inc [hl]                                      ; $5563: $34
    inc e                                         ; $5564: $1c
    inc e                                         ; $5565: $1c
    adc l                                         ; $5566: $8d
    rra                                           ; $5567: $1f
    nop                                           ; $5568: $00
    ld d, a                                       ; $5569: $57
    ld b, h                                       ; $556a: $44
    adc [hl]                                      ; $556b: $8e
    ld b, d                                       ; $556c: $42
    ld l, b                                       ; $556d: $68
    inc [hl]                                      ; $556e: $34
    inc e                                         ; $556f: $1c
    inc e                                         ; $5570: $1c
    inc e                                         ; $5571: $1c
    scf                                           ; $5572: $37
    adc a                                         ; $5573: $8f
    sub b                                         ; $5574: $90
    sub c                                         ; $5575: $91
    sub d                                         ; $5576: $92
    ld a, $1c                                     ; $5577: $3e $1c
    inc e                                         ; $5579: $1c
    daa                                           ; $557a: $27
    jr z, jr_0a9_5599                             ; $557b: $28 $1c

    inc e                                         ; $557d: $1c
    ld e, [hl]                                    ; $557e: $5e
    rra                                           ; $557f: $1f
    nop                                           ; $5580: $00
    sub e                                         ; $5581: $93
    inc e                                         ; $5582: $1c
    inc e                                         ; $5583: $1c
    inc e                                         ; $5584: $1c
    daa                                           ; $5585: $27
    sub h                                         ; $5586: $94
    sub l                                         ; $5587: $95
    sub [hl]                                      ; $5588: $96
    inc e                                         ; $5589: $1c
    inc e                                         ; $558a: $1c
    add hl, de                                    ; $558b: $19
    sub a                                         ; $558c: $97
    inc e                                         ; $558d: $1c
    inc e                                         ; $558e: $1c
    inc e                                         ; $558f: $1c
    inc e                                         ; $5590: $1c
    inc e                                         ; $5591: $1c
    inc e                                         ; $5592: $1c
    inc e                                         ; $5593: $1c
    inc e                                         ; $5594: $1c
    inc e                                         ; $5595: $1c
    scf                                           ; $5596: $37
    rra                                           ; $5597: $1f
    nop                                           ; $5598: $00

jr_0a9_5599:
    sbc b                                         ; $5599: $98
    ld d, d                                       ; $559a: $52
    ld h, l                                       ; $559b: $65
    sbc c                                         ; $559c: $99
    ld b, [hl]                                    ; $559d: $46
    ld d, h                                       ; $559e: $54
    ld b, c                                       ; $559f: $41
    ld b, d                                       ; $55a0: $42
    inc e                                         ; $55a1: $1c
    inc e                                         ; $55a2: $1c
    inc e                                         ; $55a3: $1c
    inc e                                         ; $55a4: $1c
    ld l, h                                       ; $55a5: $6c
    sbc d                                         ; $55a6: $9a
    inc e                                         ; $55a7: $1c
    inc e                                         ; $55a8: $1c
    inc e                                         ; $55a9: $1c
    inc e                                         ; $55aa: $1c
    sub l                                         ; $55ab: $95
    sub [hl]                                      ; $55ac: $96
    inc e                                         ; $55ad: $1c
    inc e                                         ; $55ae: $1c
    rra                                           ; $55af: $1f
    nop                                           ; $55b0: $00
    nop                                           ; $55b1: $00
    sbc e                                         ; $55b2: $9b
    ld e, a                                       ; $55b3: $5f
    ld b, a                                       ; $55b4: $47
    ld c, b                                       ; $55b5: $48
    inc e                                         ; $55b6: $1c
    inc e                                         ; $55b7: $1c
    inc e                                         ; $55b8: $1c
    inc e                                         ; $55b9: $1c
    ld l, b                                       ; $55ba: $68
    add d                                         ; $55bb: $82
    inc e                                         ; $55bc: $1c
    inc e                                         ; $55bd: $1c
    add hl, hl                                    ; $55be: $29
    sub [hl]                                      ; $55bf: $96
    inc e                                         ; $55c0: $1c
    inc e                                         ; $55c1: $1c
    inc e                                         ; $55c2: $1c
    ld b, c                                       ; $55c3: $41
    ld b, d                                       ; $55c4: $42
    inc e                                         ; $55c5: $1c
    inc sp                                        ; $55c6: $33
    rra                                           ; $55c7: $1f
    nop                                           ; $55c8: $00
    nop                                           ; $55c9: $00
    nop                                           ; $55ca: $00
    sbc h                                         ; $55cb: $9c
    sbc l                                         ; $55cc: $9d
    sbc l                                         ; $55cd: $9d
    sbc [hl]                                      ; $55ce: $9e
    sbc a                                         ; $55cf: $9f
    ld d, b                                       ; $55d0: $50
    and b                                         ; $55d1: $a0
    and c                                         ; $55d2: $a1
    and d                                         ; $55d3: $a2
    and e                                         ; $55d4: $a3
    and h                                         ; $55d5: $a4
    and l                                         ; $55d6: $a5
    and [hl]                                      ; $55d7: $a6
    sbc l                                         ; $55d8: $9d
    sbc l                                         ; $55d9: $9d
    sbc l                                         ; $55da: $9d
    sbc l                                         ; $55db: $9d
    sbc l                                         ; $55dc: $9d
    sbc l                                         ; $55dd: $9d
    and a                                         ; $55de: $a7
    xor b                                         ; $55df: $a8
    nop                                           ; $55e0: $00
    jr jr_0a9_55f7                                ; $55e1: $18 $14

    nop                                           ; $55e3: $00
    ld bc, $0302                                  ; $55e4: $01 $02 $03
    inc b                                         ; $55e7: $04
    dec b                                         ; $55e8: $05
    ld b, $07                                     ; $55e9: $06 $07
    ld [$0708], sp                                ; $55eb: $08 $08 $07
    inc b                                         ; $55ee: $04
    add hl, bc                                    ; $55ef: $09
    ld a, [bc]                                    ; $55f0: $0a
    ld a, [bc]                                    ; $55f1: $0a
    ld a, [bc]                                    ; $55f2: $0a
    ld a, [bc]                                    ; $55f3: $0a
    ld a, [bc]                                    ; $55f4: $0a
    ld a, [bc]                                    ; $55f5: $0a
    ld a, [bc]                                    ; $55f6: $0a

jr_0a9_55f7:
    ld a, [bc]                                    ; $55f7: $0a
    ld a, [bc]                                    ; $55f8: $0a
    ld a, [bc]                                    ; $55f9: $0a
    ld a, [bc]                                    ; $55fa: $0a
    dec bc                                        ; $55fb: $0b
    inc c                                         ; $55fc: $0c
    dec c                                         ; $55fd: $0d
    ld c, $0f                                     ; $55fe: $0e $0f
    db $10                                        ; $5600: $10
    ld de, $1312                                  ; $5601: $11 $12 $13
    inc d                                         ; $5604: $14
    ld [de], a                                    ; $5605: $12
    dec d                                         ; $5606: $15
    ld d, $0a                                     ; $5607: $16 $0a
    ld a, [bc]                                    ; $5609: $0a
    ld a, [bc]                                    ; $560a: $0a
    ld a, [bc]                                    ; $560b: $0a
    ld a, [bc]                                    ; $560c: $0a
    ld a, [bc]                                    ; $560d: $0a
    ld a, [bc]                                    ; $560e: $0a
    ld a, [bc]                                    ; $560f: $0a
    ld a, [bc]                                    ; $5610: $0a
    ld a, [bc]                                    ; $5611: $0a
    ld a, [bc]                                    ; $5612: $0a
    rla                                           ; $5613: $17
    jr jr_0a9_562f                                ; $5614: $18 $19

    ld a, [de]                                    ; $5616: $1a
    dec de                                        ; $5617: $1b
    ld de, $1111                                  ; $5618: $11 $11 $11
    inc e                                         ; $561b: $1c
    dec e                                         ; $561c: $1d
    ld de, $1e11                                  ; $561d: $11 $11 $1e
    ld a, [bc]                                    ; $5620: $0a
    ld a, [bc]                                    ; $5621: $0a
    ld a, [bc]                                    ; $5622: $0a
    ld a, [bc]                                    ; $5623: $0a
    ld a, [bc]                                    ; $5624: $0a
    ld a, [bc]                                    ; $5625: $0a
    ld a, [bc]                                    ; $5626: $0a
    ld a, [bc]                                    ; $5627: $0a
    ld a, [bc]                                    ; $5628: $0a
    ld a, [bc]                                    ; $5629: $0a
    ld a, [bc]                                    ; $562a: $0a
    rla                                           ; $562b: $17
    rra                                           ; $562c: $1f
    jr nz, jr_0a9_5650                            ; $562d: $20 $21

jr_0a9_562f:
    ld de, $2322                                  ; $562f: $11 $22 $23
    inc h                                         ; $5632: $24
    ld de, $1111                                  ; $5633: $11 $11 $11
    dec h                                         ; $5636: $25
    ld e, $26                                     ; $5637: $1e $26
    ld a, [bc]                                    ; $5639: $0a
    ld a, [bc]                                    ; $563a: $0a
    ld a, [bc]                                    ; $563b: $0a
    ld a, [bc]                                    ; $563c: $0a
    ld a, [bc]                                    ; $563d: $0a
    ld a, [bc]                                    ; $563e: $0a
    ld a, [bc]                                    ; $563f: $0a
    ld a, [bc]                                    ; $5640: $0a
    ld a, [bc]                                    ; $5641: $0a
    ld a, [bc]                                    ; $5642: $0a
    rla                                           ; $5643: $17
    ld de, $1e11                                  ; $5644: $11 $11 $1e
    daa                                           ; $5647: $27
    jr z, jr_0a9_5665                             ; $5648: $28 $1b

    ld de, $1111                                  ; $564a: $11 $11 $11
    ld de, $2911                                  ; $564d: $11 $11 $29

jr_0a9_5650:
    ld a, [hl+]                                   ; $5650: $2a
    dec hl                                        ; $5651: $2b
    inc l                                         ; $5652: $2c
    ld a, [bc]                                    ; $5653: $0a
    ld a, [bc]                                    ; $5654: $0a
    ld a, [bc]                                    ; $5655: $0a
    ld a, [bc]                                    ; $5656: $0a
    ld a, [bc]                                    ; $5657: $0a
    dec l                                         ; $5658: $2d
    ld h, $0a                                     ; $5659: $26 $0a
    ld l, $11                                     ; $565b: $2e $11
    cpl                                           ; $565d: $2f
    jr nc, @+$33                                  ; $565e: $30 $31

    ld de, $1111                                  ; $5660: $11 $11 $11
    ld [hl-], a                                   ; $5663: $32
    inc sp                                        ; $5664: $33

jr_0a9_5665:
    inc [hl]                                      ; $5665: $34
    dec [hl]                                      ; $5666: $35
    ld [hl], $11                                  ; $5667: $36 $11
    rra                                           ; $5669: $1f
    scf                                           ; $566a: $37
    ld [$3938], sp                                ; $566b: $08 $38 $39
    ld a, [hl-]                                   ; $566e: $3a
    ld [$3c3b], sp                                ; $566f: $08 $3b $3c
    ld a, [bc]                                    ; $5672: $0a
    dec a                                         ; $5673: $3d
    ld de, $1111                                  ; $5674: $11 $11 $11
    ld de, $1111                                  ; $5677: $11 $11 $11
    ld de, $3e11                                  ; $567a: $11 $11 $3e
    dec sp                                        ; $567d: $3b
    ld de, $3311                                  ; $567e: $11 $11 $33
    inc [hl]                                      ; $5681: $34
    ld [hl-], a                                   ; $5682: $32
    ld de, $1111                                  ; $5683: $11 $11 $11
    ld de, $3f11                                  ; $5686: $11 $11 $3f
    inc a                                         ; $5689: $3c
    ld a, [bc]                                    ; $568a: $0a
    rla                                           ; $568b: $17
    ld de, $1111                                  ; $568c: $11 $11 $11
    ld b, b                                       ; $568f: $40
    ld de, $2f11                                  ; $5690: $11 $11 $2f
    ld de, $1111                                  ; $5693: $11 $11 $11
    ld de, $3e11                                  ; $5696: $11 $11 $3e
    dec sp                                        ; $5699: $3b
    ld de, $1111                                  ; $569a: $11 $11 $11
    ld de, $1111                                  ; $569d: $11 $11 $11
    ld de, $0a3c                                  ; $56a0: $11 $3c $0a
    ld b, c                                       ; $56a3: $41
    ld de, $4211                                  ; $56a4: $11 $11 $42
    ld b, e                                       ; $56a7: $43
    ld de, $1111                                  ; $56a8: $11 $11 $11
    ld b, h                                       ; $56ab: $44
    ld b, l                                       ; $56ac: $45
    dec [hl]                                      ; $56ad: $35
    ld de, $1146                                  ; $56ae: $11 $46 $11
    ld de, $1111                                  ; $56b1: $11 $11 $11
    ld de, $4711                                  ; $56b4: $11 $11 $47
    ld c, b                                       ; $56b7: $48
    ld c, c                                       ; $56b8: $49
    inc a                                         ; $56b9: $3c
    ld a, [bc]                                    ; $56ba: $0a
    ld c, d                                       ; $56bb: $4a
    inc d                                         ; $56bc: $14
    ld b, a                                       ; $56bd: $47
    ld c, e                                       ; $56be: $4b
    ld de, $4c11                                  ; $56bf: $11 $11 $4c
    ld de, $4e4d                                  ; $56c2: $11 $4d $4e
    ld de, $1111                                  ; $56c5: $11 $11 $11
    ld c, a                                       ; $56c8: $4f
    ld d, b                                       ; $56c9: $50
    ld de, $1111                                  ; $56ca: $11 $11 $11
    ld de, $5111                                  ; $56cd: $11 $11 $51
    ld d, d                                       ; $56d0: $52
    inc a                                         ; $56d1: $3c
    ld a, [bc]                                    ; $56d2: $0a
    ld d, e                                       ; $56d3: $53
    dec e                                         ; $56d4: $1d
    ld de, $1111                                  ; $56d5: $11 $11 $11
    ld de, $1111                                  ; $56d8: $11 $11 $11
    ld de, $1111                                  ; $56db: $11 $11 $11
    ld de, $5411                                  ; $56de: $11 $11 $54
    ld d, l                                       ; $56e1: $55
    ld de, $1146                                  ; $56e2: $11 $46 $11
    ld d, [hl]                                    ; $56e5: $56
    ld d, a                                       ; $56e6: $57
    ld de, $3c11                                  ; $56e7: $11 $11 $3c
    ld a, [bc]                                    ; $56ea: $0a
    ld e, b                                       ; $56eb: $58
    ld e, c                                       ; $56ec: $59
    ld de, $1111                                  ; $56ed: $11 $11 $11
    ld de, $115a                                  ; $56f0: $11 $5a $11
    ld de, $1111                                  ; $56f3: $11 $11 $11
    ld de, $5b11                                  ; $56f6: $11 $11 $5b
    ld e, h                                       ; $56f9: $5c
    ld de, $1111                                  ; $56fa: $11 $11 $11
    ld e, l                                       ; $56fd: $5d
    ld e, [hl]                                    ; $56fe: $5e
    ld c, h                                       ; $56ff: $4c
    ld de, $0a3c                                  ; $5700: $11 $3c $0a
    rla                                           ; $5703: $17
    ld c, $5f                                     ; $5704: $0e $5f
    jr nz, @+$13                                  ; $5706: $20 $11

    ld de, $1111                                  ; $5708: $11 $11 $11
    ld de, $1111                                  ; $570b: $11 $11 $11
    dec [hl]                                      ; $570e: $35
    ld de, $6160                                  ; $570f: $11 $60 $61
    ld de, $1111                                  ; $5712: $11 $11 $11
    ld de, $1111                                  ; $5715: $11 $11 $11
    ld de, $0a3c                                  ; $5718: $11 $3c $0a
    rla                                           ; $571b: $17
    ld a, [de]                                    ; $571c: $1a
    dec de                                        ; $571d: $1b
    ld de, $1111                                  ; $571e: $11 $11 $11
    ld de, $1111                                  ; $5721: $11 $11 $11
    ld de, $1111                                  ; $5724: $11 $11 $11
    ld de, $1111                                  ; $5727: $11 $11 $11
    ld de, $1111                                  ; $572a: $11 $11 $11
    ld de, $1111                                  ; $572d: $11 $11 $11
    ld h, d                                       ; $5730: $62
    inc a                                         ; $5731: $3c
    ld a, [bc]                                    ; $5732: $0a
    rla                                           ; $5733: $17
    ld hl, $5711                                  ; $5734: $21 $11 $57
    ld de, $1163                                  ; $5737: $11 $63 $11
    ld de, $1111                                  ; $573a: $11 $11 $11
    ld b, a                                       ; $573d: $47
    ld h, h                                       ; $573e: $64
    ld d, b                                       ; $573f: $50
    rra                                           ; $5740: $1f
    jr nz, @+$13                                  ; $5741: $20 $11

    ld de, $1111                                  ; $5743: $11 $11 $11
    ld [hl-], a                                   ; $5746: $32
    ld de, $3c11                                  ; $5747: $11 $11 $3c
    ld a, [bc]                                    ; $574a: $0a
    ld h, l                                       ; $574b: $65
    ld de, $125a                                  ; $574c: $11 $5a $12
    ld h, d                                       ; $574f: $62
    add hl, sp                                    ; $5750: $39
    ld b, [hl]                                    ; $5751: $46
    ld de, $1111                                  ; $5752: $11 $11 $11
    ld de, $5554                                  ; $5755: $11 $54 $55
    ld de, $1111                                  ; $5758: $11 $11 $11
    ld de, $201f                                  ; $575b: $11 $1f $20
    ld de, $1111                                  ; $575e: $11 $11 $11
    inc a                                         ; $5761: $3c
    ld a, [bc]                                    ; $5762: $0a
    ld h, [hl]                                    ; $5763: $66
    ld h, a                                       ; $5764: $67
    ld de, $1111                                  ; $5765: $11 $11 $11
    ld de, $1111                                  ; $5768: $11 $11 $11
    ld h, e                                       ; $576b: $63
    ld de, $1111                                  ; $576c: $11 $11 $11
    ld de, $1125                                  ; $576f: $11 $25 $11
    inc de                                        ; $5772: $13
    ld l, b                                       ; $5773: $68
    ld de, $6911                                  ; $5774: $11 $11 $69
    inc hl                                        ; $5777: $23
    ld de, $0a3c                                  ; $5778: $11 $3c $0a
    ld l, d                                       ; $577b: $6a
    db $10                                        ; $577c: $10
    ld de, $1111                                  ; $577d: $11 $11 $11
    add hl, hl                                    ; $5780: $29
    rra                                           ; $5781: $1f
    jr nz, jr_0a9_57bd                            ; $5782: $20 $39

    ld de, $1111                                  ; $5784: $11 $11 $11
    ld de, $1111                                  ; $5787: $11 $11 $11
    inc e                                         ; $578a: $1c
    ld l, e                                       ; $578b: $6b
    ld de, $6c11                                  ; $578c: $11 $11 $6c
    dec de                                        ; $578f: $1b
    ld b, h                                       ; $5790: $44
    ld l, l                                       ; $5791: $6d
    ld a, [bc]                                    ; $5792: $0a
    ld l, [hl]                                    ; $5793: $6e
    ld de, $1111                                  ; $5794: $11 $11 $11
    ld de, $1136                                  ; $5797: $11 $36 $11
    ld de, $1111                                  ; $579a: $11 $11 $11
    ld de, $1111                                  ; $579d: $11 $11 $11
    ld de, $1111                                  ; $57a0: $11 $11 $11
    ld de, $1111                                  ; $57a3: $11 $11 $11
    ld de, $1c11                                  ; $57a6: $11 $11 $1c
    inc a                                         ; $57a9: $3c
    ld a, [bc]                                    ; $57aa: $0a
    ld l, a                                       ; $57ab: $6f
    ld [hl], b                                    ; $57ac: $70
    ld [hl], b                                    ; $57ad: $70
    ld [hl], b                                    ; $57ae: $70
    ld [hl], b                                    ; $57af: $70
    ld [hl], b                                    ; $57b0: $70
    ld [hl], b                                    ; $57b1: $70
    ld [hl], b                                    ; $57b2: $70
    ld [hl], b                                    ; $57b3: $70
    ld [hl], b                                    ; $57b4: $70
    ld [hl], b                                    ; $57b5: $70
    ld [hl], b                                    ; $57b6: $70
    ld [hl], b                                    ; $57b7: $70
    ld [hl], b                                    ; $57b8: $70
    ld [hl], b                                    ; $57b9: $70
    ld [hl], b                                    ; $57ba: $70
    ld [hl], b                                    ; $57bb: $70
    ld [hl], b                                    ; $57bc: $70

jr_0a9_57bd:
    ld [hl], b                                    ; $57bd: $70
    ld [hl], b                                    ; $57be: $70
    ld [hl], b                                    ; $57bf: $70
    ld [hl], b                                    ; $57c0: $70
    ld l, l                                       ; $57c1: $6d
    ld a, [bc]                                    ; $57c2: $0a
    rlca                                          ; $57c3: $07
    add hl, bc                                    ; $57c4: $09
    nop                                           ; $57c5: $00
    ld bc, $0201                                  ; $57c6: $01 $01 $02
    inc bc                                        ; $57c9: $03
    ld bc, $0504                                  ; $57ca: $01 $04 $05
    ld b, $06                                     ; $57cd: $06 $06
    ld b, $06                                     ; $57cf: $06 $06
    ld b, $07                                     ; $57d1: $06 $07
    dec b                                         ; $57d3: $05
    ld [$0a09], sp                                ; $57d4: $08 $09 $0a
    dec bc                                        ; $57d7: $0b
    inc c                                         ; $57d8: $0c
    rlca                                          ; $57d9: $07
    dec b                                         ; $57da: $05
    dec c                                         ; $57db: $0d
    ld a, [bc]                                    ; $57dc: $0a
    ld a, [bc]                                    ; $57dd: $0a
    ld a, [bc]                                    ; $57de: $0a
    ld c, $07                                     ; $57df: $0e $07
    dec b                                         ; $57e1: $05
    rrca                                          ; $57e2: $0f
    ld a, [bc]                                    ; $57e3: $0a
    ld a, [bc]                                    ; $57e4: $0a
    ld a, [bc]                                    ; $57e5: $0a
    db $10                                        ; $57e6: $10
    rlca                                          ; $57e7: $07
    dec b                                         ; $57e8: $05
    ld de, $0a0a                                  ; $57e9: $11 $0a $0a
    ld a, [bc]                                    ; $57ec: $0a
    ld [de], a                                    ; $57ed: $12
    rlca                                          ; $57ee: $07
    dec b                                         ; $57ef: $05
    inc de                                        ; $57f0: $13
    inc d                                         ; $57f1: $14
    dec d                                         ; $57f2: $15
    ld d, $06                                     ; $57f3: $16 $06
    rlca                                          ; $57f5: $07
    dec b                                         ; $57f6: $05
    ld b, $06                                     ; $57f7: $06 $06
    ld b, $06                                     ; $57f9: $06 $06
    ld b, $07                                     ; $57fb: $06 $07
    rla                                           ; $57fd: $17
    jr jr_0a9_5818                                ; $57fe: $18 $18

    add hl, de                                    ; $5800: $19
    ld a, [de]                                    ; $5801: $1a
    jr jr_0a9_581f                                ; $5802: $18 $1b

    rlca                                          ; $5804: $07
    dec bc                                        ; $5805: $0b
    nop                                           ; $5806: $00
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    nop                                           ; $580b: $00
    nop                                           ; $580c: $00
    nop                                           ; $580d: $00
    ld bc, $0202                                  ; $580e: $01 $02 $02
    inc bc                                        ; $5811: $03
    inc b                                         ; $5812: $04
    nop                                           ; $5813: $00
    nop                                           ; $5814: $00
    dec b                                         ; $5815: $05
    ld b, $07                                     ; $5816: $06 $07

jr_0a9_5818:
    ld [$0009], sp                                ; $5818: $08 $09 $00
    nop                                           ; $581b: $00
    dec b                                         ; $581c: $05
    ld a, [bc]                                    ; $581d: $0a
    dec bc                                        ; $581e: $0b

jr_0a9_581f:
    ld [$000c], sp                                ; $581f: $08 $0c $00
    nop                                           ; $5822: $00
    dec b                                         ; $5823: $05
    ld b, $07                                     ; $5824: $06 $07
    ld [$000d], sp                                ; $5826: $08 $0d $00
    nop                                           ; $5829: $00
    ld c, $0a                                     ; $582a: $0e $0a
    dec bc                                        ; $582c: $0b
    ld [$0009], sp                                ; $582d: $08 $09 $00
    nop                                           ; $5830: $00
    dec b                                         ; $5831: $05
    ld b, $07                                     ; $5832: $06 $07
    ld [$0009], sp                                ; $5834: $08 $09 $00
    nop                                           ; $5837: $00
    dec b                                         ; $5838: $05
    ld a, [bc]                                    ; $5839: $0a
    dec bc                                        ; $583a: $0b
    ld [$0009], sp                                ; $583b: $08 $09 $00
    nop                                           ; $583e: $00
    dec b                                         ; $583f: $05
    ld b, $07                                     ; $5840: $06 $07
    ld [$0009], sp                                ; $5842: $08 $09 $00
    nop                                           ; $5845: $00
    dec b                                         ; $5846: $05
    ld a, [bc]                                    ; $5847: $0a
    dec bc                                        ; $5848: $0b
    ld [$0009], sp                                ; $5849: $08 $09 $00
    nop                                           ; $584c: $00
    rrca                                          ; $584d: $0f
    db $10                                        ; $584e: $10
    db $10                                        ; $584f: $10
    db $10                                        ; $5850: $10
    ld de, $0c00                                  ; $5851: $11 $00 $0c
    ld d, $00                                     ; $5854: $16 $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    ld bc, $0202                                  ; $586e: $01 $02 $02
    ld [bc], a                                    ; $5871: $02
    inc bc                                        ; $5872: $03
    inc b                                         ; $5873: $04
    ld [bc], a                                    ; $5874: $02
    ld [bc], a                                    ; $5875: $02
    ld [bc], a                                    ; $5876: $02
    dec b                                         ; $5877: $05
    nop                                           ; $5878: $00
    nop                                           ; $5879: $00
    ld b, $07                                     ; $587a: $06 $07
    ld [$0a09], sp                                ; $587c: $08 $09 $0a
    dec bc                                        ; $587f: $0b
    inc c                                         ; $5880: $0c
    dec c                                         ; $5881: $0d
    rlca                                          ; $5882: $07
    ld c, $00                                     ; $5883: $0e $00
    nop                                           ; $5885: $00
    ld b, $0f                                     ; $5886: $06 $0f
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    db $10                                        ; $588e: $10
    ld c, $00                                     ; $588f: $0e $00
    nop                                           ; $5891: $00
    ld b, $11                                     ; $5892: $06 $11
    ld [de], a                                    ; $5894: $12
    ld [de], a                                    ; $5895: $12
    ld [de], a                                    ; $5896: $12
    ld [de], a                                    ; $5897: $12
    ld [de], a                                    ; $5898: $12
    ld [de], a                                    ; $5899: $12
    inc de                                        ; $589a: $13
    ld c, $00                                     ; $589b: $0e $00
    nop                                           ; $589d: $00
    ld b, $14                                     ; $589e: $06 $14
    inc d                                         ; $58a0: $14
    inc d                                         ; $58a1: $14
    dec d                                         ; $58a2: $15
    ld d, $14                                     ; $58a3: $16 $14
    inc d                                         ; $58a5: $14
    inc d                                         ; $58a6: $14
    ld c, $00                                     ; $58a7: $0e $00
    nop                                           ; $58a9: $00
    rla                                           ; $58aa: $17
    jr jr_0a9_58c5                                ; $58ab: $18 $18

    add hl, de                                    ; $58ad: $19
    inc d                                         ; $58ae: $14
    inc d                                         ; $58af: $14
    ld a, [de]                                    ; $58b0: $1a
    jr jr_0a9_58cb                                ; $58b1: $18 $18

    dec de                                        ; $58b3: $1b
    nop                                           ; $58b4: $00
    nop                                           ; $58b5: $00
    inc e                                         ; $58b6: $1c
    nop                                           ; $58b7: $00
    nop                                           ; $58b8: $00
    dec e                                         ; $58b9: $1d
    inc d                                         ; $58ba: $14
    inc d                                         ; $58bb: $14
    ld e, $00                                     ; $58bc: $1e $00
    nop                                           ; $58be: $00
    rra                                           ; $58bf: $1f
    nop                                           ; $58c0: $00
    nop                                           ; $58c1: $00
    inc e                                         ; $58c2: $1c
    nop                                           ; $58c3: $00
    nop                                           ; $58c4: $00

jr_0a9_58c5:
    dec e                                         ; $58c5: $1d
    inc d                                         ; $58c6: $14
    inc d                                         ; $58c7: $14
    ld e, $00                                     ; $58c8: $1e $00
    nop                                           ; $58ca: $00

jr_0a9_58cb:
    rra                                           ; $58cb: $1f
    nop                                           ; $58cc: $00
    nop                                           ; $58cd: $00
    inc e                                         ; $58ce: $1c
    nop                                           ; $58cf: $00
    nop                                           ; $58d0: $00
    dec e                                         ; $58d1: $1d
    inc d                                         ; $58d2: $14
    inc d                                         ; $58d3: $14
    ld e, $00                                     ; $58d4: $1e $00
    nop                                           ; $58d6: $00
    rra                                           ; $58d7: $1f
    nop                                           ; $58d8: $00
    nop                                           ; $58d9: $00
    inc e                                         ; $58da: $1c
    nop                                           ; $58db: $00
    nop                                           ; $58dc: $00
    dec e                                         ; $58dd: $1d
    inc d                                         ; $58de: $14
    inc d                                         ; $58df: $14
    ld e, $00                                     ; $58e0: $1e $00
    nop                                           ; $58e2: $00
    jr nz, jr_0a9_58e5                            ; $58e3: $20 $00

jr_0a9_58e5:
    ld hl, $2322                                  ; $58e5: $21 $22 $23
    inc hl                                        ; $58e8: $23
    inc h                                         ; $58e9: $24
    inc d                                         ; $58ea: $14
    inc d                                         ; $58eb: $14
    dec h                                         ; $58ec: $25
    inc hl                                        ; $58ed: $23
    inc hl                                        ; $58ee: $23
    ld h, $00                                     ; $58ef: $26 $00
    daa                                           ; $58f1: $27
    jr z, jr_0a9_5908                             ; $58f2: $28 $14

    inc d                                         ; $58f4: $14
    inc d                                         ; $58f5: $14
    inc d                                         ; $58f6: $14
    inc d                                         ; $58f7: $14
    inc d                                         ; $58f8: $14
    inc d                                         ; $58f9: $14
    inc d                                         ; $58fa: $14
    ld e, $00                                     ; $58fb: $1e $00
    daa                                           ; $58fd: $27
    add hl, hl                                    ; $58fe: $29
    rlca                                          ; $58ff: $07
    rlca                                          ; $5900: $07
    ld a, [hl+]                                   ; $5901: $2a
    inc d                                         ; $5902: $14
    inc d                                         ; $5903: $14
    dec hl                                        ; $5904: $2b
    rlca                                          ; $5905: $07
    rlca                                          ; $5906: $07
    inc l                                         ; $5907: $2c

jr_0a9_5908:
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    dec l                                         ; $590a: $2d
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    dec e                                         ; $590d: $1d
    inc d                                         ; $590e: $14
    inc d                                         ; $590f: $14
    ld e, $00                                     ; $5910: $1e $00
    nop                                           ; $5912: $00
    ld l, $00                                     ; $5913: $2e $00
    nop                                           ; $5915: $00
    inc e                                         ; $5916: $1c
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    dec e                                         ; $5919: $1d
    inc d                                         ; $591a: $14
    inc d                                         ; $591b: $14
    ld e, $00                                     ; $591c: $1e $00
    nop                                           ; $591e: $00
    cpl                                           ; $591f: $2f
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    inc e                                         ; $5922: $1c
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00
    dec e                                         ; $5925: $1d
    inc d                                         ; $5926: $14
    inc d                                         ; $5927: $14
    ld e, $00                                     ; $5928: $1e $00
    nop                                           ; $592a: $00
    rra                                           ; $592b: $1f
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    inc e                                         ; $592e: $1c
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    dec e                                         ; $5931: $1d
    inc d                                         ; $5932: $14
    inc d                                         ; $5933: $14
    ld e, $00                                     ; $5934: $1e $00
    nop                                           ; $5936: $00
    rra                                           ; $5937: $1f
    nop                                           ; $5938: $00
    nop                                           ; $5939: $00
    inc e                                         ; $593a: $1c
    nop                                           ; $593b: $00
    nop                                           ; $593c: $00
    dec e                                         ; $593d: $1d
    inc d                                         ; $593e: $14
    inc d                                         ; $593f: $14
    ld e, $00                                     ; $5940: $1e $00
    nop                                           ; $5942: $00
    rra                                           ; $5943: $1f
    nop                                           ; $5944: $00
    nop                                           ; $5945: $00
    jr nc, jr_0a9_5979                            ; $5946: $30 $31

    ld sp, $1432                                  ; $5948: $31 $32 $14
    inc d                                         ; $594b: $14
    inc sp                                        ; $594c: $33
    ld sp, $3431                                  ; $594d: $31 $31 $34
    nop                                           ; $5950: $00
    nop                                           ; $5951: $00
    dec [hl]                                      ; $5952: $35
    ld [hl], $36                                  ; $5953: $36 $36
    ld [hl], $36                                  ; $5955: $36 $36
    ld [hl], $36                                  ; $5957: $36 $36
    ld [hl], $36                                  ; $5959: $36 $36
    scf                                           ; $595b: $37
    nop                                           ; $595c: $00
    add hl, bc                                    ; $595d: $09
    ld b, $00                                     ; $595e: $06 $00
    nop                                           ; $5960: $00
    nop                                           ; $5961: $00
    nop                                           ; $5962: $00
    nop                                           ; $5963: $00
    nop                                           ; $5964: $00
    nop                                           ; $5965: $00
    nop                                           ; $5966: $00
    nop                                           ; $5967: $00
    nop                                           ; $5968: $00
    ld bc, $0302                                  ; $5969: $01 $02 $03
    inc b                                         ; $596c: $04
    inc b                                         ; $596d: $04
    inc b                                         ; $596e: $04
    dec b                                         ; $596f: $05
    nop                                           ; $5970: $00
    nop                                           ; $5971: $00
    ld b, $07                                     ; $5972: $06 $07
    ld [$0a09], sp                                ; $5974: $08 $09 $0a
    rlca                                          ; $5977: $07
    dec bc                                        ; $5978: $0b

jr_0a9_5979:
    nop                                           ; $5979: $00
    nop                                           ; $597a: $00
    ld b, $07                                     ; $597b: $06 $07
    inc c                                         ; $597d: $0c
    dec c                                         ; $597e: $0d
    ld c, $07                                     ; $597f: $0e $07
    dec bc                                        ; $5981: $0b
    nop                                           ; $5982: $00
    nop                                           ; $5983: $00
    rrca                                          ; $5984: $0f
    rlca                                          ; $5985: $07
    rlca                                          ; $5986: $07
    db $10                                        ; $5987: $10
    ld de, $0b12                                  ; $5988: $11 $12 $0b
    nop                                           ; $598b: $00
    nop                                           ; $598c: $00
    nop                                           ; $598d: $00
    inc de                                        ; $598e: $13
    inc de                                        ; $598f: $13
    inc d                                         ; $5990: $14
    nop                                           ; $5991: $00
    nop                                           ; $5992: $00
    dec d                                         ; $5993: $15
    nop                                           ; $5994: $00
    ld b, $06                                     ; $5995: $06 $06
    nop                                           ; $5997: $00
    nop                                           ; $5998: $00
    nop                                           ; $5999: $00
    nop                                           ; $599a: $00
    nop                                           ; $599b: $00
    nop                                           ; $599c: $00
    nop                                           ; $599d: $00
    ld bc, $0302                                  ; $599e: $01 $02 $03
    inc b                                         ; $59a1: $04
    dec b                                         ; $59a2: $05
    nop                                           ; $59a3: $00
    ld b, $07                                     ; $59a4: $06 $07
    rlca                                          ; $59a6: $07
    ld [$0a09], sp                                ; $59a7: $08 $09 $0a
    dec bc                                        ; $59aa: $0b
    rlca                                          ; $59ab: $07
    inc c                                         ; $59ac: $0c
    dec c                                         ; $59ad: $0d
    nop                                           ; $59ae: $00
    ld c, $0f                                     ; $59af: $0e $0f
    db $10                                        ; $59b1: $10
    ld de, $0000                                  ; $59b2: $11 $00 $00
    nop                                           ; $59b5: $00
    nop                                           ; $59b6: $00
    ld [de], a                                    ; $59b7: $12
    nop                                           ; $59b8: $00
    nop                                           ; $59b9: $00
    nop                                           ; $59ba: $00
    add hl, bc                                    ; $59bb: $09
    ld [$0000], sp                                ; $59bc: $08 $00 $00
    nop                                           ; $59bf: $00
    nop                                           ; $59c0: $00
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    nop                                           ; $59c3: $00
    nop                                           ; $59c4: $00
    nop                                           ; $59c5: $00
    nop                                           ; $59c6: $00
    nop                                           ; $59c7: $00
    nop                                           ; $59c8: $00
    nop                                           ; $59c9: $00
    nop                                           ; $59ca: $00
    nop                                           ; $59cb: $00
    nop                                           ; $59cc: $00
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    nop                                           ; $59cf: $00
    ld bc, $0101                                  ; $59d0: $01 $01 $01
    ld [bc], a                                    ; $59d3: $02
    ld [bc], a                                    ; $59d4: $02
    ld [bc], a                                    ; $59d5: $02
    ld bc, $0003                                  ; $59d6: $01 $03 $00
    inc b                                         ; $59d9: $04
    dec b                                         ; $59da: $05
    dec b                                         ; $59db: $05
    dec b                                         ; $59dc: $05
    dec b                                         ; $59dd: $05
    dec b                                         ; $59de: $05
    ld b, $07                                     ; $59df: $06 $07
    ld [$0a09], sp                                ; $59e1: $08 $09 $0a
    dec bc                                        ; $59e4: $0b
    dec bc                                        ; $59e5: $0b
    dec bc                                        ; $59e6: $0b
    inc c                                         ; $59e7: $0c
    dec c                                         ; $59e8: $0d
    nop                                           ; $59e9: $00
    ld c, $0f                                     ; $59ea: $0e $0f
    db $10                                        ; $59ec: $10
    ld de, $1111                                  ; $59ed: $11 $11 $11
    ld [de], a                                    ; $59f0: $12
    dec c                                         ; $59f1: $0d
    nop                                           ; $59f2: $00
    nop                                           ; $59f3: $00
    rrca                                          ; $59f4: $0f
    dec b                                         ; $59f5: $05
    dec b                                         ; $59f6: $05
    dec b                                         ; $59f7: $05
    dec b                                         ; $59f8: $05
    dec b                                         ; $59f9: $05
    inc de                                        ; $59fa: $13
    inc d                                         ; $59fb: $14
    nop                                           ; $59fc: $00
    dec d                                         ; $59fd: $15
    ld d, $16                                     ; $59fe: $16 $16
    ld d, $16                                     ; $5a00: $16 $16
    ld d, $16                                     ; $5a02: $16 $16
    rlca                                          ; $5a04: $07
    add hl, bc                                    ; $5a05: $09
    add hl, bc                                    ; $5a06: $09
    nop                                           ; $5a07: $00
    nop                                           ; $5a08: $00
    nop                                           ; $5a09: $00
    nop                                           ; $5a0a: $00
    nop                                           ; $5a0b: $00
    nop                                           ; $5a0c: $00
    nop                                           ; $5a0d: $00
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    nop                                           ; $5a10: $00
    ld bc, $0302                                  ; $5a11: $01 $02 $03
    inc b                                         ; $5a14: $04
    dec b                                         ; $5a15: $05
    ld b, $06                                     ; $5a16: $06 $06
    rlca                                          ; $5a18: $07
    nop                                           ; $5a19: $00
    ld [$0900], sp                                ; $5a1a: $08 $00 $09
    ld a, [bc]                                    ; $5a1d: $0a
    dec bc                                        ; $5a1e: $0b
    nop                                           ; $5a1f: $00
    inc c                                         ; $5a20: $0c
    ld [$0d00], sp                                ; $5a21: $08 $00 $0d
    ld c, $0f                                     ; $5a24: $0e $0f
    db $10                                        ; $5a26: $10
    ld de, $1312                                  ; $5a27: $11 $12 $13
    inc d                                         ; $5a2a: $14
    nop                                           ; $5a2b: $00
    dec d                                         ; $5a2c: $15
    ld d, $17                                     ; $5a2d: $16 $17
    jr jr_0a9_5a4a                                ; $5a2f: $18 $19

    ld a, [de]                                    ; $5a31: $1a
    dec de                                        ; $5a32: $1b
    inc d                                         ; $5a33: $14
    nop                                           ; $5a34: $00
    inc e                                         ; $5a35: $1c
    dec e                                         ; $5a36: $1d
    ld e, $1f                                     ; $5a37: $1e $1f
    jr nz, jr_0a9_5a5c                            ; $5a39: $20 $21

    ld [hl+], a                                   ; $5a3b: $22
    inc d                                         ; $5a3c: $14
    nop                                           ; $5a3d: $00
    dec d                                         ; $5a3e: $15
    ld d, $23                                     ; $5a3f: $16 $23
    jr jr_0a9_5a67                                ; $5a41: $18 $24

    ld a, [de]                                    ; $5a43: $1a
    dec h                                         ; $5a44: $25
    inc d                                         ; $5a45: $14
    ld h, $27                                     ; $5a46: $26 $27
    jr z, @+$2b                                   ; $5a48: $28 $29

jr_0a9_5a4a:
    rra                                           ; $5a4a: $1f
    jr nz, jr_0a9_5a77                            ; $5a4b: $20 $2a

    dec hl                                        ; $5a4d: $2b
    inc d                                         ; $5a4e: $14
    nop                                           ; $5a4f: $00
    inc l                                         ; $5a50: $2c
    dec l                                         ; $5a51: $2d
    dec l                                         ; $5a52: $2d
    dec l                                         ; $5a53: $2d
    dec l                                         ; $5a54: $2d
    dec l                                         ; $5a55: $2d
    dec l                                         ; $5a56: $2d
    ld l, $08                                     ; $5a57: $2e $08
    add hl, bc                                    ; $5a59: $09
    nop                                           ; $5a5a: $00
    nop                                           ; $5a5b: $00

jr_0a9_5a5c:
    nop                                           ; $5a5c: $00
    nop                                           ; $5a5d: $00
    nop                                           ; $5a5e: $00
    nop                                           ; $5a5f: $00
    nop                                           ; $5a60: $00
    nop                                           ; $5a61: $00
    ld bc, $0302                                  ; $5a62: $01 $02 $03
    inc b                                         ; $5a65: $04
    inc b                                         ; $5a66: $04

jr_0a9_5a67:
    inc b                                         ; $5a67: $04
    dec b                                         ; $5a68: $05
    nop                                           ; $5a69: $00
    ld b, $07                                     ; $5a6a: $06 $07
    ld [$0a09], sp                                ; $5a6c: $08 $09 $0a
    rlca                                          ; $5a6f: $07
    dec bc                                        ; $5a70: $0b
    nop                                           ; $5a71: $00
    ld b, $0c                                     ; $5a72: $06 $0c
    dec c                                         ; $5a74: $0d
    ld c, $0f                                     ; $5a75: $0e $0f

jr_0a9_5a77:
    inc c                                         ; $5a77: $0c
    stop                                          ; $5a78: $10 $00
    ld b, $11                                     ; $5a7a: $06 $11
    ld [de], a                                    ; $5a7c: $12
    inc de                                        ; $5a7d: $13
    inc d                                         ; $5a7e: $14
    dec d                                         ; $5a7f: $15
    ld d, $00                                     ; $5a80: $16 $00
    ld b, $17                                     ; $5a82: $06 $17
    jr jr_0a9_5a86                                ; $5a84: $18 $00

jr_0a9_5a86:
    add hl, de                                    ; $5a86: $19
    ld a, [de]                                    ; $5a87: $1a
    dec de                                        ; $5a88: $1b
    inc e                                         ; $5a89: $1c
    ld b, $1d                                     ; $5a8a: $06 $1d
    ld e, $1f                                     ; $5a8c: $1e $1f
    jr nz, jr_0a9_5a97                            ; $5a8e: $20 $07

    ld hl, $0600                                  ; $5a90: $21 $00 $06
    ld [hl+], a                                   ; $5a93: $22
    inc hl                                        ; $5a94: $23
    ld b, $21                                     ; $5a95: $06 $21

jr_0a9_5a97:
    add hl, de                                    ; $5a97: $19
    ld hl, $2400                                  ; $5a98: $21 $00 $24
    dec h                                         ; $5a9b: $25
    ld h, $27                                     ; $5a9c: $26 $27
    jr z, jr_0a9_5ac9                             ; $5a9e: $28 $29

    ld a, [hl+]                                   ; $5aa0: $2a
    nop                                           ; $5aa1: $00
    dec b                                         ; $5aa2: $05
    dec b                                         ; $5aa3: $05
    nop                                           ; $5aa4: $00
    nop                                           ; $5aa5: $00
    nop                                           ; $5aa6: $00
    nop                                           ; $5aa7: $00
    nop                                           ; $5aa8: $00
    nop                                           ; $5aa9: $00
    ld bc, $0302                                  ; $5aaa: $01 $02 $03
    inc b                                         ; $5aad: $04
    dec b                                         ; $5aae: $05
    ld b, $07                                     ; $5aaf: $06 $07
    rlca                                          ; $5ab1: $07
    ld [$0709], sp                                ; $5ab2: $08 $09 $07
    rlca                                          ; $5ab5: $07
    rlca                                          ; $5ab6: $07
    ld [$0b0a], sp                                ; $5ab7: $08 $0a $0b
    inc c                                         ; $5aba: $0c
    dec bc                                        ; $5abb: $0b
    dec c                                         ; $5abc: $0d
    ld c, $06                                     ; $5abd: $0e $06
    nop                                           ; $5abf: $00
    nop                                           ; $5ac0: $00
    nop                                           ; $5ac1: $00
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    nop                                           ; $5ac4: $00
    nop                                           ; $5ac5: $00
    nop                                           ; $5ac6: $00
    nop                                           ; $5ac7: $00
    nop                                           ; $5ac8: $00

jr_0a9_5ac9:
    nop                                           ; $5ac9: $00
    nop                                           ; $5aca: $00
    nop                                           ; $5acb: $00
    nop                                           ; $5acc: $00
    nop                                           ; $5acd: $00
    nop                                           ; $5ace: $00
    nop                                           ; $5acf: $00
    nop                                           ; $5ad0: $00
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    nop                                           ; $5ad3: $00
    nop                                           ; $5ad4: $00
    nop                                           ; $5ad5: $00
    nop                                           ; $5ad6: $00
    nop                                           ; $5ad7: $00
    nop                                           ; $5ad8: $00
    nop                                           ; $5ad9: $00
    nop                                           ; $5ada: $00
    ld bc, $0302                                  ; $5adb: $01 $02 $03
    inc bc                                        ; $5ade: $03
    inc bc                                        ; $5adf: $03
    inc bc                                        ; $5ae0: $03
    inc bc                                        ; $5ae1: $03
    inc b                                         ; $5ae2: $04
    nop                                           ; $5ae3: $00
    nop                                           ; $5ae4: $00
    nop                                           ; $5ae5: $00
    nop                                           ; $5ae6: $00
    nop                                           ; $5ae7: $00
    nop                                           ; $5ae8: $00
    dec b                                         ; $5ae9: $05
    ld b, $06                                     ; $5aea: $06 $06
    ld b, $06                                     ; $5aec: $06 $06
    rlca                                          ; $5aee: $07
    ld [$0009], sp                                ; $5aef: $08 $09 $00
    nop                                           ; $5af2: $00
    nop                                           ; $5af3: $00
    ld a, [bc]                                    ; $5af4: $0a
    dec bc                                        ; $5af5: $0b
    nop                                           ; $5af6: $00
    nop                                           ; $5af7: $00
    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    nop                                           ; $5afa: $00
    nop                                           ; $5afb: $00
    inc c                                         ; $5afc: $0c
    ld [$030d], sp                                ; $5afd: $08 $0d $03
    inc bc                                        ; $5b00: $03
    inc bc                                        ; $5b01: $03
    ld c, $0f                                     ; $5b02: $0e $0f
    nop                                           ; $5b04: $00
    nop                                           ; $5b05: $00
    nop                                           ; $5b06: $00
    nop                                           ; $5b07: $00
    nop                                           ; $5b08: $00
    nop                                           ; $5b09: $00
    db $10                                        ; $5b0a: $10
    ld b, $06                                     ; $5b0b: $06 $06
    ld b, $06                                     ; $5b0d: $06 $06
    ld b, $06                                     ; $5b0f: $06 $06
    ld b, $00                                     ; $5b11: $06 $00
    rlca                                          ; $5b13: $07
    ld [$0000], sp                                ; $5b14: $08 $00 $00
    nop                                           ; $5b17: $00
    nop                                           ; $5b18: $00
    nop                                           ; $5b19: $00
    nop                                           ; $5b1a: $00
    nop                                           ; $5b1b: $00
    ld bc, $0302                                  ; $5b1c: $01 $02 $03
    inc bc                                        ; $5b1f: $03
    inc b                                         ; $5b20: $04
    ld [bc], a                                    ; $5b21: $02
    nop                                           ; $5b22: $00
    dec b                                         ; $5b23: $05
    ld b, $07                                     ; $5b24: $06 $07
    ld [$0a09], sp                                ; $5b26: $08 $09 $0a
    nop                                           ; $5b29: $00
    dec b                                         ; $5b2a: $05
    dec bc                                        ; $5b2b: $0b
    inc c                                         ; $5b2c: $0c
    ld [$0a00], sp                                ; $5b2d: $08 $00 $0a
    nop                                           ; $5b30: $00
    dec b                                         ; $5b31: $05
    ld [$0808], sp                                ; $5b32: $08 $08 $08
    ld [$000a], sp                                ; $5b35: $08 $0a $00
    dec c                                         ; $5b38: $0d
    ld c, $0e                                     ; $5b39: $0e $0e
    rrca                                          ; $5b3b: $0f
    ld [$000a], sp                                ; $5b3c: $08 $0a $00
    nop                                           ; $5b3f: $00
    db $10                                        ; $5b40: $10
    inc bc                                        ; $5b41: $03
    ld de, $1208                                  ; $5b42: $11 $08 $12
    inc de                                        ; $5b45: $13
    inc d                                         ; $5b46: $14
    dec d                                         ; $5b47: $15
    ld d, $16                                     ; $5b48: $16 $16
    ld d, $17                                     ; $5b4a: $16 $17
    jr jr_0a9_5b55                                ; $5b4c: $18 $07

    ld [$0000], sp                                ; $5b4e: $08 $00 $00
    nop                                           ; $5b51: $00
    nop                                           ; $5b52: $00
    nop                                           ; $5b53: $00
    nop                                           ; $5b54: $00

jr_0a9_5b55:
    nop                                           ; $5b55: $00
    nop                                           ; $5b56: $00
    ld bc, $0202                                  ; $5b57: $01 $02 $02
    ld [bc], a                                    ; $5b5a: $02
    inc bc                                        ; $5b5b: $03
    nop                                           ; $5b5c: $00
    nop                                           ; $5b5d: $00
    inc b                                         ; $5b5e: $04
    dec b                                         ; $5b5f: $05
    ld b, $07                                     ; $5b60: $06 $07
    ld [$0000], sp                                ; $5b62: $08 $00 $00
    inc b                                         ; $5b65: $04
    dec b                                         ; $5b66: $05
    add hl, bc                                    ; $5b67: $09
    ld a, [bc]                                    ; $5b68: $0a
    ld [$0000], sp                                ; $5b69: $08 $00 $00
    inc b                                         ; $5b6c: $04
    ld b, $0b                                     ; $5b6d: $06 $0b
    nop                                           ; $5b6f: $00
    ld [$0000], sp                                ; $5b70: $08 $00 $00
    inc b                                         ; $5b73: $04
    inc c                                         ; $5b74: $0c
    dec c                                         ; $5b75: $0d
    ld c, $08                                     ; $5b76: $0e $08
    nop                                           ; $5b78: $00
    rrca                                          ; $5b79: $0f
    db $10                                        ; $5b7a: $10
    ld b, $0b                                     ; $5b7b: $06 $0b
    nop                                           ; $5b7d: $00
    ld [$0000], sp                                ; $5b7e: $08 $00 $00
    ld de, $1212                                  ; $5b81: $11 $12 $12
    ld [de], a                                    ; $5b84: $12
    inc de                                        ; $5b85: $13
    nop                                           ; $5b86: $00
    ld [$0018], sp                                ; $5b87: $08 $18 $00
    ld bc, $0101                                  ; $5b8a: $01 $01 $01
    ld bc, $0101                                  ; $5b8d: $01 $01 $01
    ld [bc], a                                    ; $5b90: $02
    inc bc                                        ; $5b91: $03
    inc b                                         ; $5b92: $04
    inc b                                         ; $5b93: $04
    inc b                                         ; $5b94: $04
    inc b                                         ; $5b95: $04
    inc b                                         ; $5b96: $04
    inc b                                         ; $5b97: $04
    dec b                                         ; $5b98: $05
    inc bc                                        ; $5b99: $03
    inc b                                         ; $5b9a: $04
    inc b                                         ; $5b9b: $04
    inc b                                         ; $5b9c: $04
    inc b                                         ; $5b9d: $04
    inc b                                         ; $5b9e: $04
    inc b                                         ; $5b9f: $04
    dec b                                         ; $5ba0: $05
    inc bc                                        ; $5ba1: $03
    inc b                                         ; $5ba2: $04
    inc b                                         ; $5ba3: $04
    inc b                                         ; $5ba4: $04
    inc b                                         ; $5ba5: $04
    inc b                                         ; $5ba6: $04
    inc b                                         ; $5ba7: $04
    dec b                                         ; $5ba8: $05
    inc bc                                        ; $5ba9: $03
    inc b                                         ; $5baa: $04
    inc b                                         ; $5bab: $04
    inc b                                         ; $5bac: $04
    inc b                                         ; $5bad: $04
    inc b                                         ; $5bae: $04
    inc b                                         ; $5baf: $04
    dec b                                         ; $5bb0: $05
    inc bc                                        ; $5bb1: $03
    inc b                                         ; $5bb2: $04
    inc b                                         ; $5bb3: $04
    inc b                                         ; $5bb4: $04
    inc b                                         ; $5bb5: $04
    inc b                                         ; $5bb6: $04
    inc b                                         ; $5bb7: $04
    dec b                                         ; $5bb8: $05
    inc bc                                        ; $5bb9: $03
    inc b                                         ; $5bba: $04
    inc b                                         ; $5bbb: $04
    inc b                                         ; $5bbc: $04
    inc b                                         ; $5bbd: $04
    inc b                                         ; $5bbe: $04
    inc b                                         ; $5bbf: $04
    dec b                                         ; $5bc0: $05
    inc bc                                        ; $5bc1: $03
    inc b                                         ; $5bc2: $04
    inc b                                         ; $5bc3: $04
    inc b                                         ; $5bc4: $04
    inc b                                         ; $5bc5: $04
    inc b                                         ; $5bc6: $04
    inc b                                         ; $5bc7: $04
    dec b                                         ; $5bc8: $05
    inc bc                                        ; $5bc9: $03
    inc b                                         ; $5bca: $04
    inc b                                         ; $5bcb: $04
    inc b                                         ; $5bcc: $04
    inc b                                         ; $5bcd: $04
    inc b                                         ; $5bce: $04
    inc b                                         ; $5bcf: $04
    dec b                                         ; $5bd0: $05
    inc bc                                        ; $5bd1: $03
    inc b                                         ; $5bd2: $04
    inc b                                         ; $5bd3: $04
    inc b                                         ; $5bd4: $04
    inc b                                         ; $5bd5: $04
    inc b                                         ; $5bd6: $04
    inc b                                         ; $5bd7: $04
    dec b                                         ; $5bd8: $05
    inc bc                                        ; $5bd9: $03
    inc b                                         ; $5bda: $04
    inc b                                         ; $5bdb: $04
    inc b                                         ; $5bdc: $04
    inc b                                         ; $5bdd: $04
    inc b                                         ; $5bde: $04
    inc b                                         ; $5bdf: $04
    dec b                                         ; $5be0: $05
    inc bc                                        ; $5be1: $03
    inc b                                         ; $5be2: $04
    inc b                                         ; $5be3: $04
    inc b                                         ; $5be4: $04
    inc b                                         ; $5be5: $04
    inc b                                         ; $5be6: $04
    inc b                                         ; $5be7: $04
    dec b                                         ; $5be8: $05
    inc bc                                        ; $5be9: $03
    inc b                                         ; $5bea: $04
    inc b                                         ; $5beb: $04
    inc b                                         ; $5bec: $04
    inc b                                         ; $5bed: $04
    inc b                                         ; $5bee: $04
    inc b                                         ; $5bef: $04
    dec b                                         ; $5bf0: $05
    inc bc                                        ; $5bf1: $03
    inc b                                         ; $5bf2: $04
    inc b                                         ; $5bf3: $04
    inc b                                         ; $5bf4: $04
    inc b                                         ; $5bf5: $04
    inc b                                         ; $5bf6: $04
    inc b                                         ; $5bf7: $04
    dec b                                         ; $5bf8: $05
    inc bc                                        ; $5bf9: $03
    inc b                                         ; $5bfa: $04
    inc b                                         ; $5bfb: $04
    inc b                                         ; $5bfc: $04
    inc b                                         ; $5bfd: $04
    inc b                                         ; $5bfe: $04
    inc b                                         ; $5bff: $04
    dec b                                         ; $5c00: $05
    inc bc                                        ; $5c01: $03
    inc b                                         ; $5c02: $04
    inc b                                         ; $5c03: $04
    inc b                                         ; $5c04: $04
    inc b                                         ; $5c05: $04
    inc b                                         ; $5c06: $04
    inc b                                         ; $5c07: $04
    dec b                                         ; $5c08: $05
    inc bc                                        ; $5c09: $03
    inc b                                         ; $5c0a: $04
    inc b                                         ; $5c0b: $04
    inc b                                         ; $5c0c: $04
    inc b                                         ; $5c0d: $04
    inc b                                         ; $5c0e: $04
    inc b                                         ; $5c0f: $04
    dec b                                         ; $5c10: $05
    inc bc                                        ; $5c11: $03
    inc b                                         ; $5c12: $04
    inc b                                         ; $5c13: $04
    inc b                                         ; $5c14: $04
    inc b                                         ; $5c15: $04
    inc b                                         ; $5c16: $04
    inc b                                         ; $5c17: $04
    dec b                                         ; $5c18: $05
    inc bc                                        ; $5c19: $03
    inc b                                         ; $5c1a: $04
    inc b                                         ; $5c1b: $04
    inc b                                         ; $5c1c: $04
    inc b                                         ; $5c1d: $04
    inc b                                         ; $5c1e: $04
    inc b                                         ; $5c1f: $04
    dec b                                         ; $5c20: $05
    inc bc                                        ; $5c21: $03
    inc b                                         ; $5c22: $04
    inc b                                         ; $5c23: $04
    inc b                                         ; $5c24: $04
    inc b                                         ; $5c25: $04
    inc b                                         ; $5c26: $04
    inc b                                         ; $5c27: $04
    dec b                                         ; $5c28: $05
    inc bc                                        ; $5c29: $03
    inc b                                         ; $5c2a: $04
    inc b                                         ; $5c2b: $04
    inc b                                         ; $5c2c: $04
    inc b                                         ; $5c2d: $04
    inc b                                         ; $5c2e: $04
    inc b                                         ; $5c2f: $04
    dec b                                         ; $5c30: $05
    inc bc                                        ; $5c31: $03
    inc b                                         ; $5c32: $04
    inc b                                         ; $5c33: $04
    inc b                                         ; $5c34: $04
    inc b                                         ; $5c35: $04
    inc b                                         ; $5c36: $04
    inc b                                         ; $5c37: $04
    dec b                                         ; $5c38: $05
    inc bc                                        ; $5c39: $03
    inc b                                         ; $5c3a: $04
    inc b                                         ; $5c3b: $04
    inc b                                         ; $5c3c: $04
    inc b                                         ; $5c3d: $04
    inc b                                         ; $5c3e: $04
    inc b                                         ; $5c3f: $04
    dec b                                         ; $5c40: $05
    ld b, $07                                     ; $5c41: $06 $07
    rlca                                          ; $5c43: $07
    rlca                                          ; $5c44: $07
    rlca                                          ; $5c45: $07
    rlca                                          ; $5c46: $07
    rlca                                          ; $5c47: $07
    ld [$080c], sp                                ; $5c48: $08 $0c $08
    nop                                           ; $5c4b: $00
    nop                                           ; $5c4c: $00
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    nop                                           ; $5c4f: $00
    nop                                           ; $5c50: $00
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    nop                                           ; $5c53: $00
    nop                                           ; $5c54: $00
    nop                                           ; $5c55: $00
    nop                                           ; $5c56: $00
    nop                                           ; $5c57: $00
    nop                                           ; $5c58: $00
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    nop                                           ; $5c5b: $00
    nop                                           ; $5c5c: $00
    nop                                           ; $5c5d: $00
    nop                                           ; $5c5e: $00
    nop                                           ; $5c5f: $00
    nop                                           ; $5c60: $00
    nop                                           ; $5c61: $00
    nop                                           ; $5c62: $00
    nop                                           ; $5c63: $00
    ld bc, $0101                                  ; $5c64: $01 $01 $01
    ld bc, $0101                                  ; $5c67: $01 $01 $01
    ld bc, $0101                                  ; $5c6a: $01 $01 $01
    ld bc, $0000                                  ; $5c6d: $01 $00 $00
    ld [bc], a                                    ; $5c70: $02
    ld [bc], a                                    ; $5c71: $02
    ld [bc], a                                    ; $5c72: $02
    inc bc                                        ; $5c73: $03
    inc b                                         ; $5c74: $04
    dec b                                         ; $5c75: $05
    ld b, $02                                     ; $5c76: $06 $02
    ld [bc], a                                    ; $5c78: $02
    ld [bc], a                                    ; $5c79: $02
    nop                                           ; $5c7a: $00
    nop                                           ; $5c7b: $00
    ld [bc], a                                    ; $5c7c: $02
    rlca                                          ; $5c7d: $07
    nop                                           ; $5c7e: $00
    nop                                           ; $5c7f: $00
    nop                                           ; $5c80: $00
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    nop                                           ; $5c83: $00
    ld [$0002], sp                                ; $5c84: $08 $02 $00
    nop                                           ; $5c87: $00
    ld [bc], a                                    ; $5c88: $02
    add hl, bc                                    ; $5c89: $09
    ld a, [bc]                                    ; $5c8a: $0a
    ld a, [bc]                                    ; $5c8b: $0a
    ld a, [bc]                                    ; $5c8c: $0a
    ld a, [bc]                                    ; $5c8d: $0a
    ld a, [bc]                                    ; $5c8e: $0a
    ld a, [bc]                                    ; $5c8f: $0a
    dec bc                                        ; $5c90: $0b
    ld [bc], a                                    ; $5c91: $02
    nop                                           ; $5c92: $00
    nop                                           ; $5c93: $00
    ld [bc], a                                    ; $5c94: $02
    ld [bc], a                                    ; $5c95: $02
    ld [bc], a                                    ; $5c96: $02
    ld [bc], a                                    ; $5c97: $02
    ld [bc], a                                    ; $5c98: $02
    ld [bc], a                                    ; $5c99: $02
    ld [bc], a                                    ; $5c9a: $02
    ld [bc], a                                    ; $5c9b: $02
    ld [bc], a                                    ; $5c9c: $02
    ld [bc], a                                    ; $5c9d: $02
    nop                                           ; $5c9e: $00
    nop                                           ; $5c9f: $00
    ld [bc], a                                    ; $5ca0: $02
    ld [bc], a                                    ; $5ca1: $02
    ld [bc], a                                    ; $5ca2: $02
    ld [bc], a                                    ; $5ca3: $02
    ld [bc], a                                    ; $5ca4: $02
    ld [bc], a                                    ; $5ca5: $02
    ld [bc], a                                    ; $5ca6: $02
    ld [bc], a                                    ; $5ca7: $02
    ld [bc], a                                    ; $5ca8: $02
    ld [bc], a                                    ; $5ca9: $02
    nop                                           ; $5caa: $00

    db $28, $50, $70, $88, $88, $88, $70, $00, $50, $00, $70, $88, $88, $88, $70, $00
    db $20, $50, $70, $88, $88, $88, $70, $00, $20, $40, $90, $90, $90, $90, $60, $00
    db $40, $20, $90, $90, $90, $90, $60, $00, $50, $00, $90, $90, $90, $90, $60, $00
    db $70, $90, $80, $80, $90, $60, $20, $40, $20, $40, $60, $10, $70, $90, $70, $00
    db $20, $10, $60, $10, $70, $90, $70, $00, $50, $a0, $60, $10, $70, $90, $70, $00
    db $50, $00, $60, $10, $70, $90, $70, $00, $20, $50, $60, $10, $70, $90, $70, $00
    db $10, $20, $60, $90, $f0, $80, $70, $00, $40, $20, $60, $90, $f0, $80, $70, $00
    db $50, $00, $60, $90, $f0, $80, $70, $00, $20, $50, $60, $90, $f0, $80, $70, $00
    db $40, $80, $00, $80, $80, $80, $80, $00, $80, $40, $00, $40, $40, $40, $40, $00
    db $a0, $00, $00, $40, $40, $40, $40, $00, $40, $a0, $00, $40, $40, $40, $40, $00
    db $20, $40, $00, $60, $90, $90, $60, $00, $80, $40, $00, $60, $90, $90, $60, $00
    db $50, $a0, $00, $60, $90, $90, $60, $00, $00, $50, $00, $60, $90, $90, $60, $00
    db $20, $50, $00, $60, $90, $90, $60, $00, $20, $40, $00, $90, $90, $90, $60, $00
    db $40, $20, $00, $90, $90, $90, $60, $00, $00, $50, $00, $90, $90, $90, $60, $00
    db $20, $50, $00, $90, $90, $90, $60, $00, $00, $00, $70, $80, $80, $70, $20, $40
    db $00, $00, $7c, $90, $98, $90, $7c, $00, $30, $48, $88, $b0, $88, $88, $b0, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $80, $80, $80, $80, $80, $00, $80, $00
    db $00, $48, $90, $00, $00, $00, $00, $00, $20, $40, $60, $90, $f0, $90, $90, $00
    db $40, $20, $60, $90, $f0, $90, $90, $00, $50, $a0, $60, $90, $f0, $90, $90, $00
    db $30, $48, $48, $70, $8c, $88, $74, $00, $00, $40, $80, $00, $00, $00, $00, $00
    db $60, $c0, $80, $80, $80, $c0, $60, $00, $c0, $60, $20, $20, $20, $60, $c0, $00
    db $40, $a0, $60, $90, $f0, $90, $90, $00, $00, $20, $20, $f8, $20, $20, $00, $00
    db $00, $00, $00, $00, $00, $40, $40, $80, $00, $00, $00, $e0, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $80, $00, $00, $08, $10, $20, $40, $80, $00, $00
    db $40, $a0, $a0, $a0, $a0, $a0, $40, $00, $40, $c0, $40, $40, $40, $40, $40, $00
    db $40, $a0, $20, $40, $80, $80, $e0, $00, $c0, $20, $20, $c0, $20, $20, $c0, $00
    db $a0, $a0, $a0, $e0, $20, $20, $20, $00, $e0, $80, $80, $c0, $20, $20, $c0, $00
    db $40, $a0, $80, $c0, $a0, $a0, $40, $00, $e0, $20, $20, $40, $40, $40, $40, $00
    db $40, $a0, $a0, $40, $a0, $a0, $40, $00, $40, $a0, $a0, $60, $20, $20, $c0, $00
    db $00, $00, $00, $40, $00, $40, $00, $00, $00, $00, $00, $40, $00, $40, $80, $00
    db $a0, $00, $60, $90, $f0, $90, $90, $00, $20, $40, $f0, $80, $e0, $80, $f0, $00
    db $40, $20, $f0, $80, $e0, $80, $f0, $00, $60, $90, $10, $20, $40, $00, $40, $00
    db $00, $f0, $90, $b0, $80, $f0, $00, $00, $00, $60, $90, $90, $f0, $90, $90, $00
    db $00, $e0, $90, $e0, $90, $90, $e0, $00, $00, $60, $90, $80, $80, $90, $60, $00
    db $00, $e0, $90, $90, $90, $90, $e0, $00, $00, $f0, $80, $e0, $80, $80, $f0, $00
    db $00, $f0, $80, $e0, $80, $80, $80, $00, $00, $70, $88, $80, $98, $88, $70, $00
    db $00, $90, $90, $f0, $90, $90, $90, $00, $00, $e0, $40, $40, $40, $40, $e0, $00
    db $00, $10, $10, $10, $90, $90, $60, $00, $00, $90, $a0, $c0, $a0, $90, $90, $00
    db $00, $80, $80, $80, $80, $80, $f0, $00, $00, $88, $d8, $a8, $a8, $88, $88, $00
    db $00, $88, $c8, $a8, $98, $88, $88, $00, $00, $70, $88, $88, $88, $88, $70, $00
    db $00, $e0, $90, $90, $e0, $80, $80, $00, $00, $70, $88, $88, $88, $a8, $70, $08
    db $00, $e0, $90, $90, $e0, $90, $90, $00, $00, $70, $80, $60, $10, $10, $e0, $00
    db $00, $f8, $20, $20, $20, $20, $20, $00, $00, $90, $90, $90, $90, $90, $60, $00
    db $00, $88, $88, $50, $50, $20, $20, $00, $00, $88, $88, $a8, $f8, $d8, $88, $00
    db $00, $88, $50, $20, $50, $88, $88, $00, $00, $88, $88, $50, $20, $20, $20, $00
    db $00, $f8, $10, $20, $40, $80, $f8, $00, $a0, $00, $f0, $80, $e0, $80, $f0, $00
    db $40, $a0, $f0, $80, $e0, $80, $f0, $00, $20, $40, $e0, $40, $40, $40, $e0, $00
    db $80, $40, $e0, $40, $40, $40, $e0, $00, $00, $00, $00, $00, $00, $00, $fe, $00
    db $00, $80, $40, $00, $00, $00, $00, $00, $00, $00, $60, $10, $70, $90, $70, $00
    db $80, $80, $e0, $90, $90, $90, $e0, $00, $00, $00, $70, $80, $80, $80, $70, $00
    db $10, $10, $70, $90, $90, $90, $70, $00, $00, $00, $60, $90, $f0, $80, $70, $00
    db $20, $50, $40, $40, $e0, $40, $40, $00, $00, $00, $70, $90, $70, $10, $e0, $00
    db $80, $80, $e0, $90, $90, $90, $90, $00, $00, $80, $00, $80, $80, $80, $80, $00
    db $00, $10, $00, $10, $10, $90, $60, $00, $80, $80, $90, $a0, $c0, $a0, $90, $00
    db $80, $80, $80, $80, $80, $80, $80, $00, $00, $00, $f0, $a8, $a8, $a8, $a8, $00
    db $00, $00, $e0, $90, $90, $90, $90, $00, $00, $00, $60, $90, $90, $90, $60, $00
    db $00, $00, $e0, $90, $e0, $80, $80, $00, $00, $00, $70, $90, $70, $10, $10, $00
    db $00, $00, $b0, $c0, $80, $80, $80, $00, $00, $00, $70, $80, $60, $10, $e0, $00
    db $40, $40, $e0, $40, $40, $40, $40, $00, $00, $00, $90, $90, $90, $90, $60, $00
    db $00, $00, $88, $88, $50, $50, $20, $00, $00, $00, $88, $88, $a8, $a8, $70, $00
    db $00, $00, $88, $50, $20, $50, $88, $00, $00, $00, $90, $90, $70, $10, $e0, $00
    db $00, $00, $f0, $10, $60, $80, $f0, $00, $a0, $00, $e0, $40, $40, $40, $e0, $00
    db $10, $20, $70, $88, $88, $88, $70, $00, $40, $20, $70, $88, $88, $88, $70, $00
    db $38, $44, $ba, $a2, $a2, $ba, $44, $38, $60, $90, $90, $60, $00, $00, $00, $00

    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    nop                                           ; $60af: $00
    nop                                           ; $60b0: $00
    nop                                           ; $60b1: $00
    nop                                           ; $60b2: $00
    nop                                           ; $60b3: $00
    nop                                           ; $60b4: $00
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    nop                                           ; $60b7: $00
    nop                                           ; $60b8: $00
    nop                                           ; $60b9: $00
    nop                                           ; $60ba: $00
    nop                                           ; $60bb: $00
    nop                                           ; $60bc: $00
    nop                                           ; $60bd: $00
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    nop                                           ; $60c0: $00
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    jr z, jr_0a9_6115                             ; $60c3: $28 $50

    ld [hl], b                                    ; $60c5: $70
    adc b                                         ; $60c6: $88
    adc b                                         ; $60c7: $88
    adc b                                         ; $60c8: $88
    ld [hl], b                                    ; $60c9: $70
    nop                                           ; $60ca: $00
    ld d, b                                       ; $60cb: $50
    nop                                           ; $60cc: $00
    ld [hl], b                                    ; $60cd: $70
    adc b                                         ; $60ce: $88
    adc b                                         ; $60cf: $88
    adc b                                         ; $60d0: $88
    ld [hl], b                                    ; $60d1: $70
    nop                                           ; $60d2: $00
    jr nz, @+$52                                  ; $60d3: $20 $50

    ld [hl], b                                    ; $60d5: $70
    adc b                                         ; $60d6: $88
    adc b                                         ; $60d7: $88
    adc b                                         ; $60d8: $88
    ld [hl], b                                    ; $60d9: $70
    nop                                           ; $60da: $00
    jr nz, jr_0a9_611d                            ; $60db: $20 $40

    sub b                                         ; $60dd: $90
    sub b                                         ; $60de: $90
    sub b                                         ; $60df: $90
    sub b                                         ; $60e0: $90
    ld h, b                                       ; $60e1: $60
    nop                                           ; $60e2: $00
    ld b, b                                       ; $60e3: $40
    jr nz, @-$6e                                  ; $60e4: $20 $90

    sub b                                         ; $60e6: $90
    sub b                                         ; $60e7: $90
    sub b                                         ; $60e8: $90
    ld h, b                                       ; $60e9: $60
    nop                                           ; $60ea: $00
    ld d, b                                       ; $60eb: $50
    nop                                           ; $60ec: $00
    sub b                                         ; $60ed: $90
    sub b                                         ; $60ee: $90
    sub b                                         ; $60ef: $90
    sub b                                         ; $60f0: $90
    ld h, b                                       ; $60f1: $60
    nop                                           ; $60f2: $00
    ld [hl], b                                    ; $60f3: $70
    sub b                                         ; $60f4: $90
    add b                                         ; $60f5: $80
    add b                                         ; $60f6: $80
    sub b                                         ; $60f7: $90
    ld h, b                                       ; $60f8: $60
    jr nz, jr_0a9_613b                            ; $60f9: $20 $40

    jr nz, jr_0a9_613d                            ; $60fb: $20 $40

    ld h, b                                       ; $60fd: $60
    db $10                                        ; $60fe: $10
    ld [hl], b                                    ; $60ff: $70
    sub b                                         ; $6100: $90
    ld [hl], b                                    ; $6101: $70
    nop                                           ; $6102: $00
    jr nz, jr_0a9_6115                            ; $6103: $20 $10

    ld h, b                                       ; $6105: $60
    db $10                                        ; $6106: $10
    ld [hl], b                                    ; $6107: $70
    sub b                                         ; $6108: $90
    ld [hl], b                                    ; $6109: $70
    nop                                           ; $610a: $00
    ld d, b                                       ; $610b: $50
    and b                                         ; $610c: $a0
    ld h, b                                       ; $610d: $60
    db $10                                        ; $610e: $10
    ld [hl], b                                    ; $610f: $70
    sub b                                         ; $6110: $90
    ld [hl], b                                    ; $6111: $70
    nop                                           ; $6112: $00
    ld d, b                                       ; $6113: $50
    nop                                           ; $6114: $00

jr_0a9_6115:
    ld h, b                                       ; $6115: $60
    db $10                                        ; $6116: $10
    ld [hl], b                                    ; $6117: $70
    sub b                                         ; $6118: $90
    ld [hl], b                                    ; $6119: $70
    nop                                           ; $611a: $00
    jr nz, jr_0a9_616d                            ; $611b: $20 $50

jr_0a9_611d:
    ld h, b                                       ; $611d: $60
    db $10                                        ; $611e: $10
    ld [hl], b                                    ; $611f: $70
    sub b                                         ; $6120: $90
    ld [hl], b                                    ; $6121: $70
    nop                                           ; $6122: $00
    db $10                                        ; $6123: $10
    jr nz, jr_0a9_6186                            ; $6124: $20 $60

    sub b                                         ; $6126: $90
    ldh a, [$80]                                  ; $6127: $f0 $80
    ld [hl], b                                    ; $6129: $70
    nop                                           ; $612a: $00
    ld b, b                                       ; $612b: $40
    jr nz, jr_0a9_618e                            ; $612c: $20 $60

    sub b                                         ; $612e: $90
    ldh a, [$80]                                  ; $612f: $f0 $80
    ld [hl], b                                    ; $6131: $70
    nop                                           ; $6132: $00
    ld d, b                                       ; $6133: $50
    nop                                           ; $6134: $00
    ld h, b                                       ; $6135: $60
    sub b                                         ; $6136: $90
    ldh a, [$80]                                  ; $6137: $f0 $80
    ld [hl], b                                    ; $6139: $70
    nop                                           ; $613a: $00

jr_0a9_613b:
    jr nz, jr_0a9_618d                            ; $613b: $20 $50

jr_0a9_613d:
    ld h, b                                       ; $613d: $60
    sub b                                         ; $613e: $90
    ldh a, [$80]                                  ; $613f: $f0 $80
    ld [hl], b                                    ; $6141: $70
    nop                                           ; $6142: $00
    ld b, b                                       ; $6143: $40
    add b                                         ; $6144: $80
    nop                                           ; $6145: $00
    add b                                         ; $6146: $80
    add b                                         ; $6147: $80
    add b                                         ; $6148: $80
    add b                                         ; $6149: $80
    nop                                           ; $614a: $00
    add b                                         ; $614b: $80
    ld b, b                                       ; $614c: $40
    nop                                           ; $614d: $00
    ld b, b                                       ; $614e: $40
    ld b, b                                       ; $614f: $40
    ld b, b                                       ; $6150: $40
    ld b, b                                       ; $6151: $40
    nop                                           ; $6152: $00
    and b                                         ; $6153: $a0
    nop                                           ; $6154: $00
    nop                                           ; $6155: $00
    ld b, b                                       ; $6156: $40
    ld b, b                                       ; $6157: $40
    ld b, b                                       ; $6158: $40
    ld b, b                                       ; $6159: $40
    nop                                           ; $615a: $00
    ld b, b                                       ; $615b: $40
    and b                                         ; $615c: $a0
    nop                                           ; $615d: $00
    ld b, b                                       ; $615e: $40
    ld b, b                                       ; $615f: $40
    ld b, b                                       ; $6160: $40
    ld b, b                                       ; $6161: $40
    nop                                           ; $6162: $00
    jr nz, jr_0a9_61a5                            ; $6163: $20 $40

    nop                                           ; $6165: $00
    ld h, b                                       ; $6166: $60
    sub b                                         ; $6167: $90
    sub b                                         ; $6168: $90
    ld h, b                                       ; $6169: $60
    nop                                           ; $616a: $00
    add b                                         ; $616b: $80
    ld b, b                                       ; $616c: $40

jr_0a9_616d:
    nop                                           ; $616d: $00
    ld h, b                                       ; $616e: $60
    sub b                                         ; $616f: $90
    sub b                                         ; $6170: $90
    ld h, b                                       ; $6171: $60
    nop                                           ; $6172: $00
    ld d, b                                       ; $6173: $50
    and b                                         ; $6174: $a0
    nop                                           ; $6175: $00
    ld h, b                                       ; $6176: $60
    sub b                                         ; $6177: $90
    sub b                                         ; $6178: $90
    ld h, b                                       ; $6179: $60
    nop                                           ; $617a: $00
    nop                                           ; $617b: $00
    ld d, b                                       ; $617c: $50
    nop                                           ; $617d: $00
    ld h, b                                       ; $617e: $60
    sub b                                         ; $617f: $90
    sub b                                         ; $6180: $90
    ld h, b                                       ; $6181: $60
    nop                                           ; $6182: $00
    jr nz, jr_0a9_61d5                            ; $6183: $20 $50

    nop                                           ; $6185: $00

jr_0a9_6186:
    ld h, b                                       ; $6186: $60
    sub b                                         ; $6187: $90
    sub b                                         ; $6188: $90
    ld h, b                                       ; $6189: $60
    nop                                           ; $618a: $00
    jr nz, jr_0a9_61cd                            ; $618b: $20 $40

jr_0a9_618d:
    nop                                           ; $618d: $00

jr_0a9_618e:
    sub b                                         ; $618e: $90
    sub b                                         ; $618f: $90
    sub b                                         ; $6190: $90
    ld h, b                                       ; $6191: $60
    nop                                           ; $6192: $00
    ld b, b                                       ; $6193: $40
    jr nz, jr_0a9_6196                            ; $6194: $20 $00

jr_0a9_6196:
    sub b                                         ; $6196: $90
    sub b                                         ; $6197: $90
    sub b                                         ; $6198: $90
    ld h, b                                       ; $6199: $60
    nop                                           ; $619a: $00
    nop                                           ; $619b: $00
    ld d, b                                       ; $619c: $50
    nop                                           ; $619d: $00
    sub b                                         ; $619e: $90
    sub b                                         ; $619f: $90
    sub b                                         ; $61a0: $90
    ld h, b                                       ; $61a1: $60
    nop                                           ; $61a2: $00
    jr nz, jr_0a9_61f5                            ; $61a3: $20 $50

jr_0a9_61a5:
    nop                                           ; $61a5: $00
    sub b                                         ; $61a6: $90
    sub b                                         ; $61a7: $90
    sub b                                         ; $61a8: $90
    ld h, b                                       ; $61a9: $60
    nop                                           ; $61aa: $00
    nop                                           ; $61ab: $00
    nop                                           ; $61ac: $00
    ld [hl], b                                    ; $61ad: $70
    add b                                         ; $61ae: $80
    add b                                         ; $61af: $80
    ld [hl], b                                    ; $61b0: $70
    jr nz, jr_0a9_61f3                            ; $61b1: $20 $40

    nop                                           ; $61b3: $00
    nop                                           ; $61b4: $00
    ld a, h                                       ; $61b5: $7c
    sub b                                         ; $61b6: $90
    sbc b                                         ; $61b7: $98
    sub b                                         ; $61b8: $90
    ld a, h                                       ; $61b9: $7c
    nop                                           ; $61ba: $00
    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    nop                                           ; $61bd: $00
    nop                                           ; $61be: $00
    nop                                           ; $61bf: $00
    nop                                           ; $61c0: $00
    nop                                           ; $61c1: $00
    nop                                           ; $61c2: $00
    nop                                           ; $61c3: $00
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    nop                                           ; $61c6: $00
    nop                                           ; $61c7: $00
    nop                                           ; $61c8: $00
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    add b                                         ; $61cb: $80
    add b                                         ; $61cc: $80

jr_0a9_61cd:
    add b                                         ; $61cd: $80
    add b                                         ; $61ce: $80
    add b                                         ; $61cf: $80
    nop                                           ; $61d0: $00
    add b                                         ; $61d1: $80
    nop                                           ; $61d2: $00
    nop                                           ; $61d3: $00
    ld c, b                                       ; $61d4: $48

jr_0a9_61d5:
    sub b                                         ; $61d5: $90
    nop                                           ; $61d6: $00
    nop                                           ; $61d7: $00
    nop                                           ; $61d8: $00
    nop                                           ; $61d9: $00
    nop                                           ; $61da: $00
    jr nz, @+$42                                  ; $61db: $20 $40

    ld h, b                                       ; $61dd: $60
    sub b                                         ; $61de: $90
    ldh a, [$90]                                  ; $61df: $f0 $90
    sub b                                         ; $61e1: $90
    nop                                           ; $61e2: $00
    ld b, b                                       ; $61e3: $40
    jr nz, jr_0a9_6246                            ; $61e4: $20 $60

    sub b                                         ; $61e6: $90
    ldh a, [$90]                                  ; $61e7: $f0 $90
    sub b                                         ; $61e9: $90
    nop                                           ; $61ea: $00
    ld d, b                                       ; $61eb: $50
    and b                                         ; $61ec: $a0
    ld h, b                                       ; $61ed: $60
    sub b                                         ; $61ee: $90
    ldh a, [$90]                                  ; $61ef: $f0 $90
    sub b                                         ; $61f1: $90
    nop                                           ; $61f2: $00

jr_0a9_61f3:
    jr nc, @+$4a                                  ; $61f3: $30 $48

jr_0a9_61f5:
    ld c, b                                       ; $61f5: $48
    ld [hl], b                                    ; $61f6: $70
    adc h                                         ; $61f7: $8c
    adc b                                         ; $61f8: $88
    ld [hl], h                                    ; $61f9: $74
    nop                                           ; $61fa: $00
    nop                                           ; $61fb: $00
    ld b, b                                       ; $61fc: $40
    add b                                         ; $61fd: $80
    nop                                           ; $61fe: $00
    nop                                           ; $61ff: $00
    nop                                           ; $6200: $00
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    ld h, b                                       ; $6203: $60
    ret nz                                        ; $6204: $c0

    add b                                         ; $6205: $80
    add b                                         ; $6206: $80
    add b                                         ; $6207: $80
    ret nz                                        ; $6208: $c0

    ld h, b                                       ; $6209: $60
    nop                                           ; $620a: $00
    ret nz                                        ; $620b: $c0

    ld h, b                                       ; $620c: $60
    jr nz, @+$22                                  ; $620d: $20 $20

    jr nz, jr_0a9_6271                            ; $620f: $20 $60

    ret nz                                        ; $6211: $c0

    nop                                           ; $6212: $00
    ld b, b                                       ; $6213: $40
    and b                                         ; $6214: $a0
    ld h, b                                       ; $6215: $60
    sub b                                         ; $6216: $90
    ldh a, [$90]                                  ; $6217: $f0 $90
    sub b                                         ; $6219: $90
    nop                                           ; $621a: $00
    nop                                           ; $621b: $00
    jr nz, @+$22                                  ; $621c: $20 $20

    ld hl, sp+$20                                 ; $621e: $f8 $20
    jr nz, jr_0a9_6222                            ; $6220: $20 $00

jr_0a9_6222:
    nop                                           ; $6222: $00
    nop                                           ; $6223: $00
    nop                                           ; $6224: $00
    nop                                           ; $6225: $00
    nop                                           ; $6226: $00
    nop                                           ; $6227: $00
    ld b, b                                       ; $6228: $40
    ld b, b                                       ; $6229: $40
    add b                                         ; $622a: $80
    nop                                           ; $622b: $00
    nop                                           ; $622c: $00
    nop                                           ; $622d: $00
    ldh [rP1], a                                  ; $622e: $e0 $00
    nop                                           ; $6230: $00
    nop                                           ; $6231: $00
    nop                                           ; $6232: $00
    nop                                           ; $6233: $00
    nop                                           ; $6234: $00
    nop                                           ; $6235: $00
    nop                                           ; $6236: $00
    nop                                           ; $6237: $00
    nop                                           ; $6238: $00
    add b                                         ; $6239: $80
    nop                                           ; $623a: $00
    nop                                           ; $623b: $00
    ld [$2010], sp                                ; $623c: $08 $10 $20
    ld b, b                                       ; $623f: $40
    add b                                         ; $6240: $80
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    ld b, b                                       ; $6243: $40
    and b                                         ; $6244: $a0
    and b                                         ; $6245: $a0

jr_0a9_6246:
    and b                                         ; $6246: $a0
    and b                                         ; $6247: $a0
    and b                                         ; $6248: $a0
    ld b, b                                       ; $6249: $40
    nop                                           ; $624a: $00
    ld b, b                                       ; $624b: $40
    ret nz                                        ; $624c: $c0

    ld b, b                                       ; $624d: $40
    ld b, b                                       ; $624e: $40
    ld b, b                                       ; $624f: $40
    ld b, b                                       ; $6250: $40
    ld b, b                                       ; $6251: $40
    nop                                           ; $6252: $00
    ld b, b                                       ; $6253: $40
    and b                                         ; $6254: $a0
    jr nz, jr_0a9_6297                            ; $6255: $20 $40

    add b                                         ; $6257: $80
    add b                                         ; $6258: $80
    ldh [rP1], a                                  ; $6259: $e0 $00
    ret nz                                        ; $625b: $c0

    jr nz, @+$22                                  ; $625c: $20 $20

    ret nz                                        ; $625e: $c0

    jr nz, jr_0a9_6281                            ; $625f: $20 $20

    ret nz                                        ; $6261: $c0

    nop                                           ; $6262: $00
    and b                                         ; $6263: $a0
    and b                                         ; $6264: $a0
    and b                                         ; $6265: $a0
    ldh [rNR41], a                                ; $6266: $e0 $20
    jr nz, jr_0a9_628a                            ; $6268: $20 $20

    nop                                           ; $626a: $00
    ldh [$80], a                                  ; $626b: $e0 $80
    add b                                         ; $626d: $80
    ret nz                                        ; $626e: $c0

    jr nz, jr_0a9_6291                            ; $626f: $20 $20

jr_0a9_6271:
    ret nz                                        ; $6271: $c0

    nop                                           ; $6272: $00
    ld b, b                                       ; $6273: $40
    and b                                         ; $6274: $a0
    add b                                         ; $6275: $80
    ret nz                                        ; $6276: $c0

    and b                                         ; $6277: $a0
    and b                                         ; $6278: $a0
    ld b, b                                       ; $6279: $40
    nop                                           ; $627a: $00
    ldh [rNR41], a                                ; $627b: $e0 $20
    jr nz, @+$42                                  ; $627d: $20 $40

    ld b, b                                       ; $627f: $40
    ld b, b                                       ; $6280: $40

jr_0a9_6281:
    ld b, b                                       ; $6281: $40
    nop                                           ; $6282: $00
    ld b, b                                       ; $6283: $40
    and b                                         ; $6284: $a0
    and b                                         ; $6285: $a0
    ld b, b                                       ; $6286: $40
    and b                                         ; $6287: $a0
    and b                                         ; $6288: $a0
    ld b, b                                       ; $6289: $40

jr_0a9_628a:
    nop                                           ; $628a: $00
    ld b, b                                       ; $628b: $40
    and b                                         ; $628c: $a0
    and b                                         ; $628d: $a0
    ld h, b                                       ; $628e: $60
    jr nz, jr_0a9_62b1                            ; $628f: $20 $20

jr_0a9_6291:
    ret nz                                        ; $6291: $c0

    nop                                           ; $6292: $00
    nop                                           ; $6293: $00
    nop                                           ; $6294: $00
    nop                                           ; $6295: $00
    ld b, b                                       ; $6296: $40

jr_0a9_6297:
    nop                                           ; $6297: $00
    ld b, b                                       ; $6298: $40
    nop                                           ; $6299: $00
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    ld b, b                                       ; $629e: $40
    nop                                           ; $629f: $00
    ld b, b                                       ; $62a0: $40
    add b                                         ; $62a1: $80
    nop                                           ; $62a2: $00
    and b                                         ; $62a3: $a0
    nop                                           ; $62a4: $00
    ld h, b                                       ; $62a5: $60

jr_0a9_62a6:
    sub b                                         ; $62a6: $90
    ldh a, [$90]                                  ; $62a7: $f0 $90
    sub b                                         ; $62a9: $90
    nop                                           ; $62aa: $00
    jr nz, @+$42                                  ; $62ab: $20 $40

    ldh a, [$80]                                  ; $62ad: $f0 $80
    ldh [$80], a                                  ; $62af: $e0 $80

jr_0a9_62b1:
    ldh a, [rP1]                                  ; $62b1: $f0 $00
    ld b, b                                       ; $62b3: $40
    jr nz, jr_0a9_62a6                            ; $62b4: $20 $f0

    add b                                         ; $62b6: $80
    ldh [$80], a                                  ; $62b7: $e0 $80
    ldh a, [rP1]                                  ; $62b9: $f0 $00
    ld h, b                                       ; $62bb: $60
    sub b                                         ; $62bc: $90
    db $10                                        ; $62bd: $10
    jr nz, jr_0a9_6300                            ; $62be: $20 $40

    nop                                           ; $62c0: $00
    ld b, b                                       ; $62c1: $40
    nop                                           ; $62c2: $00
    nop                                           ; $62c3: $00
    ldh a, [$90]                                  ; $62c4: $f0 $90
    or b                                          ; $62c6: $b0
    add b                                         ; $62c7: $80
    ldh a, [rP1]                                  ; $62c8: $f0 $00
    nop                                           ; $62ca: $00
    nop                                           ; $62cb: $00
    ld h, b                                       ; $62cc: $60
    sub b                                         ; $62cd: $90
    sub b                                         ; $62ce: $90
    ldh a, [$90]                                  ; $62cf: $f0 $90
    sub b                                         ; $62d1: $90
    nop                                           ; $62d2: $00
    nop                                           ; $62d3: $00
    ldh [$90], a                                  ; $62d4: $e0 $90
    ldh [$90], a                                  ; $62d6: $e0 $90
    sub b                                         ; $62d8: $90
    ldh [rP1], a                                  ; $62d9: $e0 $00
    nop                                           ; $62db: $00
    ld h, b                                       ; $62dc: $60
    sub b                                         ; $62dd: $90
    add b                                         ; $62de: $80
    add b                                         ; $62df: $80
    sub b                                         ; $62e0: $90
    ld h, b                                       ; $62e1: $60
    nop                                           ; $62e2: $00
    nop                                           ; $62e3: $00
    ldh [$90], a                                  ; $62e4: $e0 $90
    sub b                                         ; $62e6: $90
    sub b                                         ; $62e7: $90
    sub b                                         ; $62e8: $90
    ldh [rP1], a                                  ; $62e9: $e0 $00
    nop                                           ; $62eb: $00
    ldh a, [$80]                                  ; $62ec: $f0 $80
    ldh [$80], a                                  ; $62ee: $e0 $80
    add b                                         ; $62f0: $80
    ldh a, [rP1]                                  ; $62f1: $f0 $00
    nop                                           ; $62f3: $00
    ldh a, [$80]                                  ; $62f4: $f0 $80
    ldh [$80], a                                  ; $62f6: $e0 $80
    add b                                         ; $62f8: $80
    add b                                         ; $62f9: $80
    nop                                           ; $62fa: $00
    nop                                           ; $62fb: $00
    ld [hl], b                                    ; $62fc: $70
    adc b                                         ; $62fd: $88
    add b                                         ; $62fe: $80
    sbc b                                         ; $62ff: $98

jr_0a9_6300:
    adc b                                         ; $6300: $88
    ld [hl], b                                    ; $6301: $70
    nop                                           ; $6302: $00
    nop                                           ; $6303: $00
    sub b                                         ; $6304: $90
    sub b                                         ; $6305: $90
    ldh a, [$90]                                  ; $6306: $f0 $90
    sub b                                         ; $6308: $90
    sub b                                         ; $6309: $90
    nop                                           ; $630a: $00
    nop                                           ; $630b: $00
    ldh [rLCDC], a                                ; $630c: $e0 $40
    ld b, b                                       ; $630e: $40
    ld b, b                                       ; $630f: $40
    ld b, b                                       ; $6310: $40
    ldh [rP1], a                                  ; $6311: $e0 $00
    nop                                           ; $6313: $00
    db $10                                        ; $6314: $10
    db $10                                        ; $6315: $10
    db $10                                        ; $6316: $10
    sub b                                         ; $6317: $90
    sub b                                         ; $6318: $90
    ld h, b                                       ; $6319: $60
    nop                                           ; $631a: $00
    nop                                           ; $631b: $00
    sub b                                         ; $631c: $90
    and b                                         ; $631d: $a0
    ret nz                                        ; $631e: $c0

    and b                                         ; $631f: $a0
    sub b                                         ; $6320: $90
    sub b                                         ; $6321: $90
    nop                                           ; $6322: $00
    nop                                           ; $6323: $00
    add b                                         ; $6324: $80
    add b                                         ; $6325: $80
    add b                                         ; $6326: $80
    add b                                         ; $6327: $80
    add b                                         ; $6328: $80
    ldh a, [rP1]                                  ; $6329: $f0 $00
    nop                                           ; $632b: $00
    adc b                                         ; $632c: $88
    ret c                                         ; $632d: $d8

    xor b                                         ; $632e: $a8
    xor b                                         ; $632f: $a8
    adc b                                         ; $6330: $88
    adc b                                         ; $6331: $88
    nop                                           ; $6332: $00
    nop                                           ; $6333: $00
    adc b                                         ; $6334: $88
    ret z                                         ; $6335: $c8

    xor b                                         ; $6336: $a8
    sbc b                                         ; $6337: $98
    adc b                                         ; $6338: $88
    adc b                                         ; $6339: $88
    nop                                           ; $633a: $00
    nop                                           ; $633b: $00
    ld [hl], b                                    ; $633c: $70
    adc b                                         ; $633d: $88
    adc b                                         ; $633e: $88
    adc b                                         ; $633f: $88
    adc b                                         ; $6340: $88
    ld [hl], b                                    ; $6341: $70
    nop                                           ; $6342: $00
    nop                                           ; $6343: $00
    ldh [$90], a                                  ; $6344: $e0 $90
    sub b                                         ; $6346: $90
    ldh [$80], a                                  ; $6347: $e0 $80
    add b                                         ; $6349: $80
    nop                                           ; $634a: $00
    nop                                           ; $634b: $00
    ld [hl], b                                    ; $634c: $70
    adc b                                         ; $634d: $88
    adc b                                         ; $634e: $88
    adc b                                         ; $634f: $88
    xor b                                         ; $6350: $a8
    ld [hl], b                                    ; $6351: $70
    ld [$e000], sp                                ; $6352: $08 $00 $e0
    sub b                                         ; $6355: $90
    sub b                                         ; $6356: $90
    ldh [$90], a                                  ; $6357: $e0 $90
    sub b                                         ; $6359: $90
    nop                                           ; $635a: $00
    nop                                           ; $635b: $00
    ld [hl], b                                    ; $635c: $70
    add b                                         ; $635d: $80
    ld h, b                                       ; $635e: $60
    db $10                                        ; $635f: $10
    db $10                                        ; $6360: $10
    ldh [rP1], a                                  ; $6361: $e0 $00
    nop                                           ; $6363: $00
    ld hl, sp+$20                                 ; $6364: $f8 $20
    jr nz, jr_0a9_6388                            ; $6366: $20 $20

    jr nz, jr_0a9_638a                            ; $6368: $20 $20

    nop                                           ; $636a: $00
    nop                                           ; $636b: $00
    sub b                                         ; $636c: $90
    sub b                                         ; $636d: $90
    sub b                                         ; $636e: $90
    sub b                                         ; $636f: $90
    sub b                                         ; $6370: $90
    ld h, b                                       ; $6371: $60
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    adc b                                         ; $6374: $88
    adc b                                         ; $6375: $88
    ld d, b                                       ; $6376: $50
    ld d, b                                       ; $6377: $50
    jr nz, @+$22                                  ; $6378: $20 $20

    nop                                           ; $637a: $00
    nop                                           ; $637b: $00
    adc b                                         ; $637c: $88
    adc b                                         ; $637d: $88
    xor b                                         ; $637e: $a8
    ld hl, sp-$28                                 ; $637f: $f8 $d8
    adc b                                         ; $6381: $88
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    adc b                                         ; $6384: $88
    ld d, b                                       ; $6385: $50
    jr nz, jr_0a9_63d8                            ; $6386: $20 $50

jr_0a9_6388:
    adc b                                         ; $6388: $88
    adc b                                         ; $6389: $88

jr_0a9_638a:
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    adc b                                         ; $638c: $88
    adc b                                         ; $638d: $88
    ld d, b                                       ; $638e: $50
    jr nz, jr_0a9_63b1                            ; $638f: $20 $20

    jr nz, jr_0a9_6393                            ; $6391: $20 $00

jr_0a9_6393:
    nop                                           ; $6393: $00
    ld hl, sp+$10                                 ; $6394: $f8 $10
    jr nz, jr_0a9_63d8                            ; $6396: $20 $40

    add b                                         ; $6398: $80
    ld hl, sp+$00                                 ; $6399: $f8 $00
    and b                                         ; $639b: $a0
    nop                                           ; $639c: $00
    ldh a, [$80]                                  ; $639d: $f0 $80
    ldh [$80], a                                  ; $639f: $e0 $80
    ldh a, [rP1]                                  ; $63a1: $f0 $00
    ld b, b                                       ; $63a3: $40
    and b                                         ; $63a4: $a0
    ldh a, [$80]                                  ; $63a5: $f0 $80
    ldh [$80], a                                  ; $63a7: $e0 $80
    ldh a, [rP1]                                  ; $63a9: $f0 $00
    jr nz, jr_0a9_63ed                            ; $63ab: $20 $40

    ldh [rLCDC], a                                ; $63ad: $e0 $40
    ld b, b                                       ; $63af: $40
    ld b, b                                       ; $63b0: $40

jr_0a9_63b1:
    ldh [rP1], a                                  ; $63b1: $e0 $00
    add b                                         ; $63b3: $80
    ld b, b                                       ; $63b4: $40
    ldh [rLCDC], a                                ; $63b5: $e0 $40
    ld b, b                                       ; $63b7: $40
    ld b, b                                       ; $63b8: $40
    ldh [rP1], a                                  ; $63b9: $e0 $00
    nop                                           ; $63bb: $00
    nop                                           ; $63bc: $00
    nop                                           ; $63bd: $00
    nop                                           ; $63be: $00
    nop                                           ; $63bf: $00
    nop                                           ; $63c0: $00
    cp $00                                        ; $63c1: $fe $00
    nop                                           ; $63c3: $00
    add b                                         ; $63c4: $80
    ld b, b                                       ; $63c5: $40
    nop                                           ; $63c6: $00
    nop                                           ; $63c7: $00
    nop                                           ; $63c8: $00
    nop                                           ; $63c9: $00
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    nop                                           ; $63cc: $00
    ld h, b                                       ; $63cd: $60
    db $10                                        ; $63ce: $10
    ld [hl], b                                    ; $63cf: $70
    sub b                                         ; $63d0: $90
    ld [hl], b                                    ; $63d1: $70
    nop                                           ; $63d2: $00
    add b                                         ; $63d3: $80
    add b                                         ; $63d4: $80
    ldh [$90], a                                  ; $63d5: $e0 $90
    sub b                                         ; $63d7: $90

jr_0a9_63d8:
    sub b                                         ; $63d8: $90
    ldh [rP1], a                                  ; $63d9: $e0 $00
    nop                                           ; $63db: $00
    nop                                           ; $63dc: $00
    ld [hl], b                                    ; $63dd: $70
    add b                                         ; $63de: $80
    add b                                         ; $63df: $80
    add b                                         ; $63e0: $80
    ld [hl], b                                    ; $63e1: $70
    nop                                           ; $63e2: $00
    db $10                                        ; $63e3: $10
    db $10                                        ; $63e4: $10
    ld [hl], b                                    ; $63e5: $70
    sub b                                         ; $63e6: $90
    sub b                                         ; $63e7: $90
    sub b                                         ; $63e8: $90
    ld [hl], b                                    ; $63e9: $70
    nop                                           ; $63ea: $00
    nop                                           ; $63eb: $00
    nop                                           ; $63ec: $00

jr_0a9_63ed:
    ld h, b                                       ; $63ed: $60
    sub b                                         ; $63ee: $90
    ldh a, [$80]                                  ; $63ef: $f0 $80
    ld [hl], b                                    ; $63f1: $70
    nop                                           ; $63f2: $00
    jr nz, jr_0a9_6445                            ; $63f3: $20 $50

    ld b, b                                       ; $63f5: $40
    ld b, b                                       ; $63f6: $40
    ldh [rLCDC], a                                ; $63f7: $e0 $40
    ld b, b                                       ; $63f9: $40
    nop                                           ; $63fa: $00
    nop                                           ; $63fb: $00
    nop                                           ; $63fc: $00
    ld [hl], b                                    ; $63fd: $70
    sub b                                         ; $63fe: $90
    ld [hl], b                                    ; $63ff: $70
    db $10                                        ; $6400: $10
    ldh [rP1], a                                  ; $6401: $e0 $00
    add b                                         ; $6403: $80
    add b                                         ; $6404: $80
    ldh [$90], a                                  ; $6405: $e0 $90

Call_0a9_6407:
    sub b                                         ; $6407: $90
    sub b                                         ; $6408: $90
    sub b                                         ; $6409: $90
    nop                                           ; $640a: $00
    nop                                           ; $640b: $00
    add b                                         ; $640c: $80
    nop                                           ; $640d: $00
    add b                                         ; $640e: $80
    add b                                         ; $640f: $80
    add b                                         ; $6410: $80
    add b                                         ; $6411: $80
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    stop                                          ; $6414: $10 $00
    db $10                                        ; $6416: $10
    db $10                                        ; $6417: $10
    sub b                                         ; $6418: $90
    ld h, b                                       ; $6419: $60
    nop                                           ; $641a: $00
    add b                                         ; $641b: $80
    add b                                         ; $641c: $80
    sub b                                         ; $641d: $90
    and b                                         ; $641e: $a0
    ret nz                                        ; $641f: $c0

    and b                                         ; $6420: $a0
    sub b                                         ; $6421: $90
    nop                                           ; $6422: $00
    add b                                         ; $6423: $80
    add b                                         ; $6424: $80
    add b                                         ; $6425: $80
    add b                                         ; $6426: $80
    add b                                         ; $6427: $80
    add b                                         ; $6428: $80
    add b                                         ; $6429: $80
    nop                                           ; $642a: $00
    nop                                           ; $642b: $00
    nop                                           ; $642c: $00
    ldh a, [$a8]                                  ; $642d: $f0 $a8
    xor b                                         ; $642f: $a8
    xor b                                         ; $6430: $a8
    xor b                                         ; $6431: $a8
    nop                                           ; $6432: $00
    nop                                           ; $6433: $00
    nop                                           ; $6434: $00
    ldh [$90], a                                  ; $6435: $e0 $90
    sub b                                         ; $6437: $90
    sub b                                         ; $6438: $90
    sub b                                         ; $6439: $90
    nop                                           ; $643a: $00
    nop                                           ; $643b: $00
    nop                                           ; $643c: $00
    ld h, b                                       ; $643d: $60
    sub b                                         ; $643e: $90
    sub b                                         ; $643f: $90
    sub b                                         ; $6440: $90
    ld h, b                                       ; $6441: $60
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    nop                                           ; $6444: $00

jr_0a9_6445:
    ldh [$90], a                                  ; $6445: $e0 $90
    ldh [$80], a                                  ; $6447: $e0 $80
    add b                                         ; $6449: $80
    nop                                           ; $644a: $00
    nop                                           ; $644b: $00
    nop                                           ; $644c: $00
    ld [hl], b                                    ; $644d: $70
    sub b                                         ; $644e: $90
    ld [hl], b                                    ; $644f: $70
    db $10                                        ; $6450: $10
    stop                                          ; $6451: $10 $00
    nop                                           ; $6453: $00
    nop                                           ; $6454: $00
    or b                                          ; $6455: $b0
    ret nz                                        ; $6456: $c0

    add b                                         ; $6457: $80
    add b                                         ; $6458: $80
    add b                                         ; $6459: $80
    nop                                           ; $645a: $00
    nop                                           ; $645b: $00
    nop                                           ; $645c: $00
    ld [hl], b                                    ; $645d: $70
    add b                                         ; $645e: $80
    ld h, b                                       ; $645f: $60
    db $10                                        ; $6460: $10
    ldh [rP1], a                                  ; $6461: $e0 $00
    ld b, b                                       ; $6463: $40
    ld b, b                                       ; $6464: $40
    ldh [rLCDC], a                                ; $6465: $e0 $40
    ld b, b                                       ; $6467: $40
    ld b, b                                       ; $6468: $40
    ld b, b                                       ; $6469: $40
    nop                                           ; $646a: $00
    nop                                           ; $646b: $00
    nop                                           ; $646c: $00
    sub b                                         ; $646d: $90
    sub b                                         ; $646e: $90
    sub b                                         ; $646f: $90
    sub b                                         ; $6470: $90
    ld h, b                                       ; $6471: $60
    nop                                           ; $6472: $00
    nop                                           ; $6473: $00
    nop                                           ; $6474: $00
    adc b                                         ; $6475: $88
    adc b                                         ; $6476: $88
    ld d, b                                       ; $6477: $50
    ld d, b                                       ; $6478: $50
    jr nz, jr_0a9_647b                            ; $6479: $20 $00

jr_0a9_647b:
    nop                                           ; $647b: $00
    nop                                           ; $647c: $00
    adc b                                         ; $647d: $88
    adc b                                         ; $647e: $88
    xor b                                         ; $647f: $a8
    xor b                                         ; $6480: $a8
    ld [hl], b                                    ; $6481: $70
    nop                                           ; $6482: $00
    nop                                           ; $6483: $00
    nop                                           ; $6484: $00
    adc b                                         ; $6485: $88
    ld d, b                                       ; $6486: $50
    jr nz, jr_0a9_64d9                            ; $6487: $20 $50

    adc b                                         ; $6489: $88
    nop                                           ; $648a: $00
    nop                                           ; $648b: $00
    nop                                           ; $648c: $00
    sub b                                         ; $648d: $90
    sub b                                         ; $648e: $90
    ld [hl], b                                    ; $648f: $70
    db $10                                        ; $6490: $10
    ldh [rP1], a                                  ; $6491: $e0 $00
    nop                                           ; $6493: $00
    nop                                           ; $6494: $00
    ldh a, [rNR10]                                ; $6495: $f0 $10
    ld h, b                                       ; $6497: $60
    add b                                         ; $6498: $80
    ldh a, [rP1]                                  ; $6499: $f0 $00
    and b                                         ; $649b: $a0
    nop                                           ; $649c: $00
    ldh [rLCDC], a                                ; $649d: $e0 $40
    ld b, b                                       ; $649f: $40
    ld b, b                                       ; $64a0: $40
    ldh [rP1], a                                  ; $64a1: $e0 $00
    db $10                                        ; $64a3: $10
    jr nz, jr_0a9_6516                            ; $64a4: $20 $70

    adc b                                         ; $64a6: $88
    adc b                                         ; $64a7: $88
    adc b                                         ; $64a8: $88
    ld [hl], b                                    ; $64a9: $70
    nop                                           ; $64aa: $00
    ld b, b                                       ; $64ab: $40
    jr nz, jr_0a9_651e                            ; $64ac: $20 $70

    adc b                                         ; $64ae: $88
    adc b                                         ; $64af: $88
    adc b                                         ; $64b0: $88
    ld [hl], b                                    ; $64b1: $70
    nop                                           ; $64b2: $00
    jr c, jr_0a9_64f9                             ; $64b3: $38 $44

    cp d                                          ; $64b5: $ba
    and d                                         ; $64b6: $a2
    and d                                         ; $64b7: $a2
    cp d                                          ; $64b8: $ba
    ld b, h                                       ; $64b9: $44
    jr c, jr_0a9_651c                             ; $64ba: $38 $60

    sub b                                         ; $64bc: $90
    sub b                                         ; $64bd: $90
    ld h, b                                       ; $64be: $60
    nop                                           ; $64bf: $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    nop                                           ; $64c2: $00
    nop                                           ; $64c3: $00
    nop                                           ; $64c4: $00
    nop                                           ; $64c5: $00
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    nop                                           ; $64c8: $00
    nop                                           ; $64c9: $00
    nop                                           ; $64ca: $00
    nop                                           ; $64cb: $00
    nop                                           ; $64cc: $00
    nop                                           ; $64cd: $00
    nop                                           ; $64ce: $00
    nop                                           ; $64cf: $00
    nop                                           ; $64d0: $00
    nop                                           ; $64d1: $00
    nop                                           ; $64d2: $00
    nop                                           ; $64d3: $00
    nop                                           ; $64d4: $00
    nop                                           ; $64d5: $00
    nop                                           ; $64d6: $00
    nop                                           ; $64d7: $00
    nop                                           ; $64d8: $00

jr_0a9_64d9:
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    adc b                                         ; $64dc: $88
    ret c                                         ; $64dd: $d8

    xor h                                         ; $64de: $ac
    xor b                                         ; $64df: $a8
    adc b                                         ; $64e0: $88
    adc b                                         ; $64e1: $88
    nop                                           ; $64e2: $00
    nop                                           ; $64e3: $00
    nop                                           ; $64e4: $00
    ld l, h                                       ; $64e5: $6c
    ld [de], a                                    ; $64e6: $12
    ld a, [hl]                                    ; $64e7: $7e
    sub b                                         ; $64e8: $90
    ld a, [hl]                                    ; $64e9: $7e
    nop                                           ; $64ea: $00
    db $10                                        ; $64eb: $10
    jr nz, jr_0a9_654e                            ; $64ec: $20 $60

    sub b                                         ; $64ee: $90
    ldh a, [$80]                                  ; $64ef: $f0 $80
    ld [hl], b                                    ; $64f1: $70
    nop                                           ; $64f2: $00
    ld b, b                                       ; $64f3: $40
    add b                                         ; $64f4: $80
    nop                                           ; $64f5: $00
    add b                                         ; $64f6: $80
    add b                                         ; $64f7: $80
    add b                                         ; $64f8: $80

jr_0a9_64f9:
    add b                                         ; $64f9: $80
    nop                                           ; $64fa: $00
    ld d, b                                       ; $64fb: $50
    nop                                           ; $64fc: $00
    ld h, b                                       ; $64fd: $60
    sub b                                         ; $64fe: $90
    sub b                                         ; $64ff: $90
    sub b                                         ; $6500: $90
    ld h, b                                       ; $6501: $60
    nop                                           ; $6502: $00
    nop                                           ; $6503: $00
    nop                                           ; $6504: $00
    ld [hl], b                                    ; $6505: $70
    sbc b                                         ; $6506: $98
    xor b                                         ; $6507: $a8
    ret z                                         ; $6508: $c8

    ld [hl], b                                    ; $6509: $70
    nop                                           ; $650a: $00
    jr nz, jr_0a9_654d                            ; $650b: $20 $40

    ld h, b                                       ; $650d: $60
    sub b                                         ; $650e: $90
    sub b                                         ; $650f: $90
    sub b                                         ; $6510: $90
    ld h, b                                       ; $6511: $60
    nop                                           ; $6512: $00
    jr nz, jr_0a9_6555                            ; $6513: $20 $40

    sub b                                         ; $6515: $90

jr_0a9_6516:
    sub b                                         ; $6516: $90
    sub b                                         ; $6517: $90
    sub b                                         ; $6518: $90
    ld h, b                                       ; $6519: $60
    nop                                           ; $651a: $00
    ld d, b                                       ; $651b: $50

jr_0a9_651c:
    nop                                           ; $651c: $00
    sub b                                         ; $651d: $90

jr_0a9_651e:
    sub b                                         ; $651e: $90
    sub b                                         ; $651f: $90
    sub b                                         ; $6520: $90
    ld h, b                                       ; $6521: $60
    nop                                           ; $6522: $00
    jr z, jr_0a9_6575                             ; $6523: $28 $50

    adc b                                         ; $6525: $88
    ret z                                         ; $6526: $c8

    xor b                                         ; $6527: $a8
    sbc b                                         ; $6528: $98
    adc b                                         ; $6529: $88
    nop                                           ; $652a: $00
    ld d, b                                       ; $652b: $50
    and b                                         ; $652c: $a0
    nop                                           ; $652d: $00
    ldh [$90], a                                  ; $652e: $e0 $90
    sub b                                         ; $6530: $90
    sub b                                         ; $6531: $90
    nop                                           ; $6532: $00
    add b                                         ; $6533: $80
    nop                                           ; $6534: $00
    add b                                         ; $6535: $80
    add b                                         ; $6536: $80
    add b                                         ; $6537: $80
    add b                                         ; $6538: $80
    add b                                         ; $6539: $80
    nop                                           ; $653a: $00
    jr nz, jr_0a9_653d                            ; $653b: $20 $00

jr_0a9_653d:
    jr nz, jr_0a9_657f                            ; $653d: $20 $40

    add b                                         ; $653f: $80
    sub b                                         ; $6540: $90
    ld h, b                                       ; $6541: $60
    nop                                           ; $6542: $00
    ld h, b                                       ; $6543: $60
    sub b                                         ; $6544: $90
    sub b                                         ; $6545: $90
    ld h, b                                       ; $6546: $60
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    nop                                           ; $6549: $00
    nop                                           ; $654a: $00
    ld h, b                                       ; $654b: $60
    db $10                                        ; $654c: $10

jr_0a9_654d:
    ld [hl], b                                    ; $654d: $70

jr_0a9_654e:
    sub b                                         ; $654e: $90
    ld [hl], b                                    ; $654f: $70
    nop                                           ; $6550: $00
    nop                                           ; $6551: $00
    nop                                           ; $6552: $00
    jr nc, jr_0a9_659d                            ; $6553: $30 $48

jr_0a9_6555:
    adc b                                         ; $6555: $88
    or b                                          ; $6556: $b0
    adc b                                         ; $6557: $88
    adc b                                         ; $6558: $88
    or b                                          ; $6559: $b0
    nop                                           ; $655a: $00
    ld b, b                                       ; $655b: $40
    jr nz, jr_0a9_65be                            ; $655c: $20 $60

    sub b                                         ; $655e: $90
    ldh a, [$90]                                  ; $655f: $f0 $90
    sub b                                         ; $6561: $90
    nop                                           ; $6562: $00
    ld d, b                                       ; $6563: $50
    and b                                         ; $6564: $a0
    ld h, b                                       ; $6565: $60
    sub b                                         ; $6566: $90
    ldh a, [$90]                                  ; $6567: $f0 $90
    sub b                                         ; $6569: $90
    nop                                           ; $656a: $00
    ld b, b                                       ; $656b: $40
    and b                                         ; $656c: $a0
    ld h, b                                       ; $656d: $60
    sub b                                         ; $656e: $90
    ldh a, [$90]                                  ; $656f: $f0 $90
    sub b                                         ; $6571: $90
    nop                                           ; $6572: $00
    ld b, b                                       ; $6573: $40
    and b                                         ; $6574: $a0

jr_0a9_6575:
    ldh a, [$80]                                  ; $6575: $f0 $80
    ldh [$80], a                                  ; $6577: $e0 $80
    ldh a, [rP1]                                  ; $6579: $f0 $00
    jr z, jr_0a9_65cd                             ; $657b: $28 $50

    ld [hl], b                                    ; $657d: $70
    adc b                                         ; $657e: $88

jr_0a9_657f:
    adc b                                         ; $657f: $88
    adc b                                         ; $6580: $88
    ld [hl], b                                    ; $6581: $70
    nop                                           ; $6582: $00
    jr nz, jr_0a9_65d5                            ; $6583: $20 $50

    ld [hl], b                                    ; $6585: $70
    adc b                                         ; $6586: $88
    adc b                                         ; $6587: $88
    adc b                                         ; $6588: $88
    ld [hl], b                                    ; $6589: $70
    nop                                           ; $658a: $00
    ld [hl], b                                    ; $658b: $70
    sub b                                         ; $658c: $90
    add b                                         ; $658d: $80
    add b                                         ; $658e: $80
    sub b                                         ; $658f: $90
    ld h, b                                       ; $6590: $60
    jr nz, jr_0a9_65d3                            ; $6591: $20 $40

    jr nz, jr_0a9_65a5                            ; $6593: $20 $10

    ld h, b                                       ; $6595: $60
    db $10                                        ; $6596: $10
    ld [hl], b                                    ; $6597: $70
    sub b                                         ; $6598: $90
    ld [hl], b                                    ; $6599: $70
    nop                                           ; $659a: $00
    ld d, b                                       ; $659b: $50
    and b                                         ; $659c: $a0

jr_0a9_659d:
    ld h, b                                       ; $659d: $60
    db $10                                        ; $659e: $10
    ld [hl], b                                    ; $659f: $70
    sub b                                         ; $65a0: $90
    ld [hl], b                                    ; $65a1: $70
    nop                                           ; $65a2: $00
    jr nz, jr_0a9_65f5                            ; $65a3: $20 $50

jr_0a9_65a5:
    ld h, b                                       ; $65a5: $60
    db $10                                        ; $65a6: $10
    ld [hl], b                                    ; $65a7: $70
    sub b                                         ; $65a8: $90
    ld [hl], b                                    ; $65a9: $70
    nop                                           ; $65aa: $00
    jr nz, @+$52                                  ; $65ab: $20 $50

    ld h, b                                       ; $65ad: $60
    sub b                                         ; $65ae: $90
    ldh a, [$80]                                  ; $65af: $f0 $80
    ld [hl], b                                    ; $65b1: $70
    nop                                           ; $65b2: $00
    add b                                         ; $65b3: $80
    ld b, b                                       ; $65b4: $40
    nop                                           ; $65b5: $00
    ld h, b                                       ; $65b6: $60
    sub b                                         ; $65b7: $90
    sub b                                         ; $65b8: $90
    ld h, b                                       ; $65b9: $60
    nop                                           ; $65ba: $00
    ld d, b                                       ; $65bb: $50
    and b                                         ; $65bc: $a0
    nop                                           ; $65bd: $00

jr_0a9_65be:
    ld h, b                                       ; $65be: $60
    sub b                                         ; $65bf: $90
    sub b                                         ; $65c0: $90
    ld h, b                                       ; $65c1: $60
    nop                                           ; $65c2: $00
    jr nz, jr_0a9_6615                            ; $65c3: $20 $50

    nop                                           ; $65c5: $00
    ld h, b                                       ; $65c6: $60
    sub b                                         ; $65c7: $90
    sub b                                         ; $65c8: $90
    ld h, b                                       ; $65c9: $60
    nop                                           ; $65ca: $00
    nop                                           ; $65cb: $00
    nop                                           ; $65cc: $00

jr_0a9_65cd:
    ld [hl], b                                    ; $65cd: $70
    add b                                         ; $65ce: $80
    add b                                         ; $65cf: $80
    ld [hl], b                                    ; $65d0: $70
    jr nz, jr_0a9_6613                            ; $65d1: $20 $40

jr_0a9_65d3:
    ld c, [hl]                                    ; $65d3: $4e
    ret z                                         ; $65d4: $c8

jr_0a9_65d5:
    ld c, [hl]                                    ; $65d5: $4e
    ld b, d                                       ; $65d6: $42
    ld c, [hl]                                    ; $65d7: $4e
    nop                                           ; $65d8: $00
    nop                                           ; $65d9: $00
    nop                                           ; $65da: $00
    ld c, [hl]                                    ; $65db: $4e
    ret z                                         ; $65dc: $c8

    ld c, [hl]                                    ; $65dd: $4e
    ld c, d                                       ; $65de: $4a
    ld c, [hl]                                    ; $65df: $4e
    nop                                           ; $65e0: $00
    nop                                           ; $65e1: $00
    nop                                           ; $65e2: $00
    nop                                           ; $65e3: $00
    nop                                           ; $65e4: $00
    nop                                           ; $65e5: $00
    nop                                           ; $65e6: $00
    nop                                           ; $65e7: $00
    nop                                           ; $65e8: $00
    nop                                           ; $65e9: $00
    nop                                           ; $65ea: $00
    add b                                         ; $65eb: $80
    add b                                         ; $65ec: $80
    add b                                         ; $65ed: $80
    add b                                         ; $65ee: $80
    add b                                         ; $65ef: $80
    nop                                           ; $65f0: $00
    add b                                         ; $65f1: $80
    nop                                           ; $65f2: $00
    nop                                           ; $65f3: $00
    ld c, b                                       ; $65f4: $48

jr_0a9_65f5:
    sub b                                         ; $65f5: $90
    nop                                           ; $65f6: $00
    nop                                           ; $65f7: $00
    nop                                           ; $65f8: $00
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    db $10                                        ; $65fb: $10
    jr nz, @+$62                                  ; $65fc: $20 $60

    sub b                                         ; $65fe: $90
    ldh a, [$90]                                  ; $65ff: $f0 $90
    sub b                                         ; $6601: $90
    nop                                           ; $6602: $00
    ld b, b                                       ; $6603: $40
    nop                                           ; $6604: $00
    ld h, b                                       ; $6605: $60
    sub b                                         ; $6606: $90
    ldh a, [$90]                                  ; $6607: $f0 $90
    sub b                                         ; $6609: $90
    nop                                           ; $660a: $00
    and b                                         ; $660b: $a0
    nop                                           ; $660c: $00
    ld h, b                                       ; $660d: $60
    sub b                                         ; $660e: $90
    ldh a, [$90]                                  ; $660f: $f0 $90
    sub b                                         ; $6611: $90
    nop                                           ; $6612: $00

jr_0a9_6613:
    jr nc, @+$4a                                  ; $6613: $30 $48

jr_0a9_6615:
    ld c, b                                       ; $6615: $48
    ld [hl], b                                    ; $6616: $70
    adc h                                         ; $6617: $8c
    adc b                                         ; $6618: $88
    ld [hl], h                                    ; $6619: $74
    nop                                           ; $661a: $00
    nop                                           ; $661b: $00
    ld b, b                                       ; $661c: $40
    add b                                         ; $661d: $80
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    nop                                           ; $6621: $00
    nop                                           ; $6622: $00
    ld h, b                                       ; $6623: $60
    ret nz                                        ; $6624: $c0

    add b                                         ; $6625: $80
    add b                                         ; $6626: $80
    add b                                         ; $6627: $80
    ret nz                                        ; $6628: $c0

    ld h, b                                       ; $6629: $60
    nop                                           ; $662a: $00
    ret nz                                        ; $662b: $c0

    ld h, b                                       ; $662c: $60
    jr nz, @+$22                                  ; $662d: $20 $20

    jr nz, jr_0a9_6691                            ; $662f: $20 $60

    ret nz                                        ; $6631: $c0

    nop                                           ; $6632: $00
    nop                                           ; $6633: $00
    inc a                                         ; $6634: $3c
    ld d, b                                       ; $6635: $50
    ld hl, sp-$70                                 ; $6636: $f8 $90
    sub b                                         ; $6638: $90
    sbc h                                         ; $6639: $9c
    nop                                           ; $663a: $00
    nop                                           ; $663b: $00
    jr nz, @+$22                                  ; $663c: $20 $20

    ld hl, sp+$20                                 ; $663e: $f8 $20
    jr nz, jr_0a9_6642                            ; $6640: $20 $00

jr_0a9_6642:
    nop                                           ; $6642: $00
    nop                                           ; $6643: $00
    nop                                           ; $6644: $00
    nop                                           ; $6645: $00
    nop                                           ; $6646: $00
    nop                                           ; $6647: $00
    ld b, b                                       ; $6648: $40
    ld b, b                                       ; $6649: $40
    add b                                         ; $664a: $80
    nop                                           ; $664b: $00
    nop                                           ; $664c: $00
    nop                                           ; $664d: $00
    ldh [rP1], a                                  ; $664e: $e0 $00
    nop                                           ; $6650: $00
    nop                                           ; $6651: $00
    nop                                           ; $6652: $00
    nop                                           ; $6653: $00
    nop                                           ; $6654: $00
    nop                                           ; $6655: $00
    nop                                           ; $6656: $00
    nop                                           ; $6657: $00
    nop                                           ; $6658: $00
    add b                                         ; $6659: $80
    nop                                           ; $665a: $00
    nop                                           ; $665b: $00
    ld [$2010], sp                                ; $665c: $08 $10 $20
    ld b, b                                       ; $665f: $40
    add b                                         ; $6660: $80
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    ld b, b                                       ; $6663: $40
    and b                                         ; $6664: $a0
    and b                                         ; $6665: $a0
    and b                                         ; $6666: $a0
    and b                                         ; $6667: $a0
    and b                                         ; $6668: $a0
    ld b, b                                       ; $6669: $40
    nop                                           ; $666a: $00
    ld b, b                                       ; $666b: $40
    ret nz                                        ; $666c: $c0

    ld b, b                                       ; $666d: $40
    ld b, b                                       ; $666e: $40
    ld b, b                                       ; $666f: $40
    ld b, b                                       ; $6670: $40
    ld b, b                                       ; $6671: $40
    nop                                           ; $6672: $00
    ld b, b                                       ; $6673: $40
    and b                                         ; $6674: $a0
    jr nz, jr_0a9_66b7                            ; $6675: $20 $40

    add b                                         ; $6677: $80
    add b                                         ; $6678: $80
    ldh [rP1], a                                  ; $6679: $e0 $00
    ret nz                                        ; $667b: $c0

    jr nz, @+$22                                  ; $667c: $20 $20

    ret nz                                        ; $667e: $c0

    jr nz, jr_0a9_66a1                            ; $667f: $20 $20

    ret nz                                        ; $6681: $c0

    nop                                           ; $6682: $00
    and b                                         ; $6683: $a0
    and b                                         ; $6684: $a0
    and b                                         ; $6685: $a0
    ldh [rNR41], a                                ; $6686: $e0 $20
    jr nz, jr_0a9_66aa                            ; $6688: $20 $20

    nop                                           ; $668a: $00
    ldh [$80], a                                  ; $668b: $e0 $80
    add b                                         ; $668d: $80
    ret nz                                        ; $668e: $c0

    jr nz, jr_0a9_66b1                            ; $668f: $20 $20

jr_0a9_6691:
    ret nz                                        ; $6691: $c0

    nop                                           ; $6692: $00
    ld b, b                                       ; $6693: $40
    and b                                         ; $6694: $a0
    add b                                         ; $6695: $80
    ret nz                                        ; $6696: $c0

    and b                                         ; $6697: $a0
    and b                                         ; $6698: $a0
    ld b, b                                       ; $6699: $40
    nop                                           ; $669a: $00
    ldh [rNR41], a                                ; $669b: $e0 $20
    jr nz, @+$42                                  ; $669d: $20 $40

    ld b, b                                       ; $669f: $40
    ld b, b                                       ; $66a0: $40

jr_0a9_66a1:
    ld b, b                                       ; $66a1: $40
    nop                                           ; $66a2: $00
    ld b, b                                       ; $66a3: $40
    and b                                         ; $66a4: $a0
    and b                                         ; $66a5: $a0
    ld b, b                                       ; $66a6: $40
    and b                                         ; $66a7: $a0
    and b                                         ; $66a8: $a0
    ld b, b                                       ; $66a9: $40

jr_0a9_66aa:
    nop                                           ; $66aa: $00
    ld b, b                                       ; $66ab: $40
    and b                                         ; $66ac: $a0
    and b                                         ; $66ad: $a0
    ld h, b                                       ; $66ae: $60
    jr nz, jr_0a9_66d1                            ; $66af: $20 $20

jr_0a9_66b1:
    ret nz                                        ; $66b1: $c0

    nop                                           ; $66b2: $00
    nop                                           ; $66b3: $00
    nop                                           ; $66b4: $00
    nop                                           ; $66b5: $00
    ld b, b                                       ; $66b6: $40

jr_0a9_66b7:
    nop                                           ; $66b7: $00
    ld b, b                                       ; $66b8: $40
    nop                                           ; $66b9: $00
    nop                                           ; $66ba: $00
    nop                                           ; $66bb: $00
    nop                                           ; $66bc: $00
    nop                                           ; $66bd: $00
    ld b, b                                       ; $66be: $40
    nop                                           ; $66bf: $00
    ld b, b                                       ; $66c0: $40
    add b                                         ; $66c1: $80
    nop                                           ; $66c2: $00
    jr nz, @+$42                                  ; $66c3: $20 $40

    ldh a, [$80]                                  ; $66c5: $f0 $80
    ldh [$80], a                                  ; $66c7: $e0 $80
    ldh a, [rP1]                                  ; $66c9: $f0 $00
    jr nz, @+$42                                  ; $66cb: $20 $40

    ldh [rLCDC], a                                ; $66cd: $e0 $40
    ld b, b                                       ; $66cf: $40
    ld b, b                                       ; $66d0: $40

jr_0a9_66d1:
    ldh [rP1], a                                  ; $66d1: $e0 $00
    db $10                                        ; $66d3: $10
    jr nz, jr_0a9_66d6                            ; $66d4: $20 $00

jr_0a9_66d6:
    ld [hl], b                                    ; $66d6: $70
    adc b                                         ; $66d7: $88
    adc b                                         ; $66d8: $88
    ld [hl], b                                    ; $66d9: $70
    nop                                           ; $66da: $00
    ld h, b                                       ; $66db: $60
    sub b                                         ; $66dc: $90
    db $10                                        ; $66dd: $10
    jr nz, jr_0a9_6720                            ; $66de: $20 $40

    nop                                           ; $66e0: $00
    ld b, b                                       ; $66e1: $40
    nop                                           ; $66e2: $00
    nop                                           ; $66e3: $00
    ldh a, [$90]                                  ; $66e4: $f0 $90
    or b                                          ; $66e6: $b0
    add b                                         ; $66e7: $80
    ldh a, [rP1]                                  ; $66e8: $f0 $00
    nop                                           ; $66ea: $00
    nop                                           ; $66eb: $00
    ld h, b                                       ; $66ec: $60
    sub b                                         ; $66ed: $90
    sub b                                         ; $66ee: $90
    ldh a, [$90]                                  ; $66ef: $f0 $90
    sub b                                         ; $66f1: $90
    nop                                           ; $66f2: $00
    nop                                           ; $66f3: $00
    ldh [$90], a                                  ; $66f4: $e0 $90
    ldh [$90], a                                  ; $66f6: $e0 $90
    sub b                                         ; $66f8: $90
    ldh [rP1], a                                  ; $66f9: $e0 $00
    nop                                           ; $66fb: $00
    ld h, b                                       ; $66fc: $60
    sub b                                         ; $66fd: $90
    add b                                         ; $66fe: $80
    add b                                         ; $66ff: $80
    sub b                                         ; $6700: $90
    ld h, b                                       ; $6701: $60
    nop                                           ; $6702: $00
    nop                                           ; $6703: $00
    ldh [$90], a                                  ; $6704: $e0 $90
    sub b                                         ; $6706: $90
    sub b                                         ; $6707: $90
    sub b                                         ; $6708: $90
    ldh [rP1], a                                  ; $6709: $e0 $00
    nop                                           ; $670b: $00
    ldh a, [$80]                                  ; $670c: $f0 $80
    ldh [$80], a                                  ; $670e: $e0 $80
    add b                                         ; $6710: $80
    ldh a, [rP1]                                  ; $6711: $f0 $00
    nop                                           ; $6713: $00
    ldh a, [$80]                                  ; $6714: $f0 $80
    ldh [$80], a                                  ; $6716: $e0 $80
    add b                                         ; $6718: $80
    add b                                         ; $6719: $80
    nop                                           ; $671a: $00
    nop                                           ; $671b: $00
    ld [hl], b                                    ; $671c: $70
    adc b                                         ; $671d: $88
    add b                                         ; $671e: $80
    sbc b                                         ; $671f: $98

jr_0a9_6720:
    adc b                                         ; $6720: $88
    ld [hl], b                                    ; $6721: $70
    nop                                           ; $6722: $00
    nop                                           ; $6723: $00
    sub b                                         ; $6724: $90
    sub b                                         ; $6725: $90
    ldh a, [$90]                                  ; $6726: $f0 $90
    sub b                                         ; $6728: $90
    sub b                                         ; $6729: $90
    nop                                           ; $672a: $00
    nop                                           ; $672b: $00
    ldh [rLCDC], a                                ; $672c: $e0 $40
    ld b, b                                       ; $672e: $40
    ld b, b                                       ; $672f: $40
    ld b, b                                       ; $6730: $40
    ldh [rP1], a                                  ; $6731: $e0 $00
    nop                                           ; $6733: $00
    db $10                                        ; $6734: $10
    db $10                                        ; $6735: $10
    db $10                                        ; $6736: $10
    sub b                                         ; $6737: $90
    sub b                                         ; $6738: $90
    ld h, b                                       ; $6739: $60
    nop                                           ; $673a: $00
    nop                                           ; $673b: $00
    sub b                                         ; $673c: $90
    and b                                         ; $673d: $a0
    ret nz                                        ; $673e: $c0

    and b                                         ; $673f: $a0
    sub b                                         ; $6740: $90
    sub b                                         ; $6741: $90
    nop                                           ; $6742: $00
    nop                                           ; $6743: $00
    add b                                         ; $6744: $80
    add b                                         ; $6745: $80
    add b                                         ; $6746: $80
    add b                                         ; $6747: $80
    add b                                         ; $6748: $80
    ldh a, [rP1]                                  ; $6749: $f0 $00
    nop                                           ; $674b: $00
    adc b                                         ; $674c: $88
    ret c                                         ; $674d: $d8

    xor b                                         ; $674e: $a8
    xor b                                         ; $674f: $a8
    adc b                                         ; $6750: $88
    adc b                                         ; $6751: $88
    nop                                           ; $6752: $00
    nop                                           ; $6753: $00
    adc b                                         ; $6754: $88
    ret z                                         ; $6755: $c8

    xor b                                         ; $6756: $a8
    sbc b                                         ; $6757: $98
    adc b                                         ; $6758: $88
    adc b                                         ; $6759: $88
    nop                                           ; $675a: $00
    nop                                           ; $675b: $00
    ld [hl], b                                    ; $675c: $70
    adc b                                         ; $675d: $88
    adc b                                         ; $675e: $88
    adc b                                         ; $675f: $88
    adc b                                         ; $6760: $88
    ld [hl], b                                    ; $6761: $70
    nop                                           ; $6762: $00
    nop                                           ; $6763: $00
    ldh [$90], a                                  ; $6764: $e0 $90
    sub b                                         ; $6766: $90
    ldh [$80], a                                  ; $6767: $e0 $80
    add b                                         ; $6769: $80
    nop                                           ; $676a: $00
    nop                                           ; $676b: $00
    ld [hl], b                                    ; $676c: $70
    adc b                                         ; $676d: $88
    adc b                                         ; $676e: $88
    adc b                                         ; $676f: $88
    xor b                                         ; $6770: $a8
    ld [hl], b                                    ; $6771: $70
    ld [$e000], sp                                ; $6772: $08 $00 $e0
    sub b                                         ; $6775: $90
    sub b                                         ; $6776: $90
    ldh [$90], a                                  ; $6777: $e0 $90
    sub b                                         ; $6779: $90
    nop                                           ; $677a: $00
    nop                                           ; $677b: $00
    ld [hl], b                                    ; $677c: $70
    add b                                         ; $677d: $80
    ld h, b                                       ; $677e: $60
    db $10                                        ; $677f: $10
    db $10                                        ; $6780: $10
    ldh [rP1], a                                  ; $6781: $e0 $00
    nop                                           ; $6783: $00
    ld hl, sp+$20                                 ; $6784: $f8 $20
    jr nz, jr_0a9_67a8                            ; $6786: $20 $20

    jr nz, jr_0a9_67aa                            ; $6788: $20 $20

    nop                                           ; $678a: $00
    nop                                           ; $678b: $00
    sub b                                         ; $678c: $90
    sub b                                         ; $678d: $90
    sub b                                         ; $678e: $90
    sub b                                         ; $678f: $90
    sub b                                         ; $6790: $90
    ld h, b                                       ; $6791: $60
    nop                                           ; $6792: $00
    nop                                           ; $6793: $00
    adc b                                         ; $6794: $88
    adc b                                         ; $6795: $88
    ld d, b                                       ; $6796: $50
    ld d, b                                       ; $6797: $50
    jr nz, @+$22                                  ; $6798: $20 $20

    nop                                           ; $679a: $00
    nop                                           ; $679b: $00
    adc b                                         ; $679c: $88
    adc b                                         ; $679d: $88
    xor b                                         ; $679e: $a8
    ld hl, sp-$28                                 ; $679f: $f8 $d8
    adc b                                         ; $67a1: $88
    nop                                           ; $67a2: $00
    nop                                           ; $67a3: $00
    adc b                                         ; $67a4: $88
    ld d, b                                       ; $67a5: $50
    jr nz, jr_0a9_67f8                            ; $67a6: $20 $50

jr_0a9_67a8:
    adc b                                         ; $67a8: $88
    adc b                                         ; $67a9: $88

jr_0a9_67aa:
    nop                                           ; $67aa: $00
    nop                                           ; $67ab: $00
    adc b                                         ; $67ac: $88
    adc b                                         ; $67ad: $88
    ld d, b                                       ; $67ae: $50
    jr nz, jr_0a9_67d1                            ; $67af: $20 $20

    jr nz, jr_0a9_67b3                            ; $67b1: $20 $00

jr_0a9_67b3:
    nop                                           ; $67b3: $00
    ld hl, sp+$10                                 ; $67b4: $f8 $10
    jr nz, jr_0a9_67f8                            ; $67b6: $20 $40

    add b                                         ; $67b8: $80
    ld hl, sp+$00                                 ; $67b9: $f8 $00
    nop                                           ; $67bb: $00
    ld [hl], b                                    ; $67bc: $70
    sbc b                                         ; $67bd: $98
    xor b                                         ; $67be: $a8
    ret z                                         ; $67bf: $c8

    adc b                                         ; $67c0: $88
    ld [hl], b                                    ; $67c1: $70
    nop                                           ; $67c2: $00
    ld d, b                                       ; $67c3: $50
    nop                                           ; $67c4: $00
    ld [hl], b                                    ; $67c5: $70
    adc b                                         ; $67c6: $88
    adc b                                         ; $67c7: $88
    adc b                                         ; $67c8: $88
    ld [hl], b                                    ; $67c9: $70
    nop                                           ; $67ca: $00
    jr nz, jr_0a9_680d                            ; $67cb: $20 $40

    nop                                           ; $67cd: $00
    sub b                                         ; $67ce: $90
    sub b                                         ; $67cf: $90
    sub b                                         ; $67d0: $90

jr_0a9_67d1:
    ld h, b                                       ; $67d1: $60
    nop                                           ; $67d2: $00
    ld d, b                                       ; $67d3: $50
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    sub b                                         ; $67d6: $90
    sub b                                         ; $67d7: $90
    sub b                                         ; $67d8: $90
    ld h, b                                       ; $67d9: $60
    nop                                           ; $67da: $00
    nop                                           ; $67db: $00
    nop                                           ; $67dc: $00
    nop                                           ; $67dd: $00
    nop                                           ; $67de: $00
    nop                                           ; $67df: $00
    nop                                           ; $67e0: $00
    db $fc                                        ; $67e1: $fc
    nop                                           ; $67e2: $00
    nop                                           ; $67e3: $00
    add b                                         ; $67e4: $80
    ld b, b                                       ; $67e5: $40
    nop                                           ; $67e6: $00
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    nop                                           ; $67e9: $00
    nop                                           ; $67ea: $00
    nop                                           ; $67eb: $00
    nop                                           ; $67ec: $00
    ld h, b                                       ; $67ed: $60
    db $10                                        ; $67ee: $10
    ld [hl], b                                    ; $67ef: $70
    sub b                                         ; $67f0: $90
    ld [hl], b                                    ; $67f1: $70
    nop                                           ; $67f2: $00
    add b                                         ; $67f3: $80
    add b                                         ; $67f4: $80
    ldh [$90], a                                  ; $67f5: $e0 $90
    sub b                                         ; $67f7: $90

jr_0a9_67f8:
    sub b                                         ; $67f8: $90
    ldh [rP1], a                                  ; $67f9: $e0 $00
    nop                                           ; $67fb: $00
    nop                                           ; $67fc: $00
    ld [hl], b                                    ; $67fd: $70
    add b                                         ; $67fe: $80
    add b                                         ; $67ff: $80
    add b                                         ; $6800: $80
    ld [hl], b                                    ; $6801: $70
    nop                                           ; $6802: $00
    db $10                                        ; $6803: $10
    db $10                                        ; $6804: $10
    ld [hl], b                                    ; $6805: $70
    sub b                                         ; $6806: $90
    sub b                                         ; $6807: $90
    sub b                                         ; $6808: $90
    ld [hl], b                                    ; $6809: $70
    nop                                           ; $680a: $00
    nop                                           ; $680b: $00
    nop                                           ; $680c: $00

jr_0a9_680d:
    ld h, b                                       ; $680d: $60
    sub b                                         ; $680e: $90
    ldh a, [$80]                                  ; $680f: $f0 $80
    ld [hl], b                                    ; $6811: $70
    nop                                           ; $6812: $00
    jr nz, jr_0a9_6865                            ; $6813: $20 $50

    ld b, b                                       ; $6815: $40
    ld b, b                                       ; $6816: $40
    ldh [rLCDC], a                                ; $6817: $e0 $40
    ld b, b                                       ; $6819: $40
    nop                                           ; $681a: $00
    nop                                           ; $681b: $00
    nop                                           ; $681c: $00
    ld [hl], b                                    ; $681d: $70
    sub b                                         ; $681e: $90
    ld [hl], b                                    ; $681f: $70
    db $10                                        ; $6820: $10
    ldh [rP1], a                                  ; $6821: $e0 $00
    add b                                         ; $6823: $80
    add b                                         ; $6824: $80
    ldh [$90], a                                  ; $6825: $e0 $90
    sub b                                         ; $6827: $90
    sub b                                         ; $6828: $90
    sub b                                         ; $6829: $90
    nop                                           ; $682a: $00
    nop                                           ; $682b: $00
    add b                                         ; $682c: $80
    nop                                           ; $682d: $00
    add b                                         ; $682e: $80
    add b                                         ; $682f: $80
    add b                                         ; $6830: $80
    add b                                         ; $6831: $80
    nop                                           ; $6832: $00
    nop                                           ; $6833: $00
    stop                                          ; $6834: $10 $00
    db $10                                        ; $6836: $10
    db $10                                        ; $6837: $10
    sub b                                         ; $6838: $90
    ld h, b                                       ; $6839: $60
    nop                                           ; $683a: $00
    add b                                         ; $683b: $80
    add b                                         ; $683c: $80
    sub b                                         ; $683d: $90
    and b                                         ; $683e: $a0
    ret nz                                        ; $683f: $c0

    and b                                         ; $6840: $a0
    sub b                                         ; $6841: $90
    nop                                           ; $6842: $00
    add b                                         ; $6843: $80
    add b                                         ; $6844: $80
    add b                                         ; $6845: $80
    add b                                         ; $6846: $80
    add b                                         ; $6847: $80
    add b                                         ; $6848: $80
    add b                                         ; $6849: $80
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    nop                                           ; $684c: $00
    ldh a, [$a8]                                  ; $684d: $f0 $a8
    xor b                                         ; $684f: $a8
    xor b                                         ; $6850: $a8
    xor b                                         ; $6851: $a8
    nop                                           ; $6852: $00
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    ldh [$90], a                                  ; $6855: $e0 $90
    sub b                                         ; $6857: $90
    sub b                                         ; $6858: $90
    sub b                                         ; $6859: $90
    nop                                           ; $685a: $00
    nop                                           ; $685b: $00
    nop                                           ; $685c: $00
    ld h, b                                       ; $685d: $60

jr_0a9_685e:
    sub b                                         ; $685e: $90
    sub b                                         ; $685f: $90
    sub b                                         ; $6860: $90
    ld h, b                                       ; $6861: $60
    nop                                           ; $6862: $00
    nop                                           ; $6863: $00
    nop                                           ; $6864: $00

jr_0a9_6865:
    ldh [$90], a                                  ; $6865: $e0 $90
    ldh [$80], a                                  ; $6867: $e0 $80
    add b                                         ; $6869: $80
    nop                                           ; $686a: $00
    nop                                           ; $686b: $00
    nop                                           ; $686c: $00
    ld [hl], b                                    ; $686d: $70
    sub b                                         ; $686e: $90
    ld [hl], b                                    ; $686f: $70
    db $10                                        ; $6870: $10
    stop                                          ; $6871: $10 $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    or b                                          ; $6875: $b0
    ret nz                                        ; $6876: $c0

    add b                                         ; $6877: $80
    add b                                         ; $6878: $80
    add b                                         ; $6879: $80
    nop                                           ; $687a: $00
    nop                                           ; $687b: $00
    nop                                           ; $687c: $00
    ld [hl], b                                    ; $687d: $70
    add b                                         ; $687e: $80
    ld h, b                                       ; $687f: $60
    db $10                                        ; $6880: $10
    ldh [rP1], a                                  ; $6881: $e0 $00
    ld b, b                                       ; $6883: $40
    ld b, b                                       ; $6884: $40
    ldh [rLCDC], a                                ; $6885: $e0 $40
    ld b, b                                       ; $6887: $40
    ld b, b                                       ; $6888: $40
    ld b, b                                       ; $6889: $40
    nop                                           ; $688a: $00
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    sub b                                         ; $688d: $90
    sub b                                         ; $688e: $90
    sub b                                         ; $688f: $90
    sub b                                         ; $6890: $90
    ld h, b                                       ; $6891: $60
    nop                                           ; $6892: $00
    nop                                           ; $6893: $00
    nop                                           ; $6894: $00
    adc b                                         ; $6895: $88
    adc b                                         ; $6896: $88
    ld d, b                                       ; $6897: $50
    ld d, b                                       ; $6898: $50
    jr nz, jr_0a9_689b                            ; $6899: $20 $00

jr_0a9_689b:
    nop                                           ; $689b: $00
    nop                                           ; $689c: $00
    adc b                                         ; $689d: $88
    adc b                                         ; $689e: $88
    xor b                                         ; $689f: $a8
    xor b                                         ; $68a0: $a8
    ld [hl], b                                    ; $68a1: $70
    nop                                           ; $68a2: $00
    nop                                           ; $68a3: $00
    nop                                           ; $68a4: $00
    adc b                                         ; $68a5: $88
    ld d, b                                       ; $68a6: $50
    jr nz, jr_0a9_68f9                            ; $68a7: $20 $50

    adc b                                         ; $68a9: $88
    nop                                           ; $68aa: $00
    nop                                           ; $68ab: $00
    nop                                           ; $68ac: $00
    sub b                                         ; $68ad: $90
    sub b                                         ; $68ae: $90
    ld [hl], b                                    ; $68af: $70
    db $10                                        ; $68b0: $10
    ldh [rP1], a                                  ; $68b1: $e0 $00
    nop                                           ; $68b3: $00
    nop                                           ; $68b4: $00
    ldh a, [rNR10]                                ; $68b5: $f0 $10
    ld h, b                                       ; $68b7: $60
    add b                                         ; $68b8: $80
    ldh a, [rP1]                                  ; $68b9: $f0 $00
    jr nz, jr_0a9_68fd                            ; $68bb: $20 $40

    ld h, b                                       ; $68bd: $60
    db $10                                        ; $68be: $10
    ld [hl], b                                    ; $68bf: $70
    sub b                                         ; $68c0: $90
    ld [hl], b                                    ; $68c1: $70
    nop                                           ; $68c2: $00
    jr nz, jr_0a9_68c5                            ; $68c3: $20 $00

jr_0a9_68c5:
    ld h, b                                       ; $68c5: $60
    db $10                                        ; $68c6: $10
    ld [hl], b                                    ; $68c7: $70
    sub b                                         ; $68c8: $90
    ld [hl], b                                    ; $68c9: $70
    nop                                           ; $68ca: $00
    ld d, b                                       ; $68cb: $50
    nop                                           ; $68cc: $00
    ld h, b                                       ; $68cd: $60
    db $10                                        ; $68ce: $10
    ld [hl], b                                    ; $68cf: $70
    sub b                                         ; $68d0: $90
    ld [hl], b                                    ; $68d1: $70
    nop                                           ; $68d2: $00
    jr c, jr_0a9_6919                             ; $68d3: $38 $44

    cp d                                          ; $68d5: $ba
    and d                                         ; $68d6: $a2
    and d                                         ; $68d7: $a2
    cp d                                          ; $68d8: $ba
    ld b, h                                       ; $68d9: $44
    jr c, jr_0a9_685e                             ; $68da: $38 $82

    ld b, h                                       ; $68dc: $44
    jr z, @+$12                                   ; $68dd: $28 $10

    jr z, jr_0a9_6925                             ; $68df: $28 $44

    add d                                         ; $68e1: $82
    nop                                           ; $68e2: $00
    nop                                           ; $68e3: $00
    ld bc, $00f1                                  ; $68e4: $01 $f1 $00
    ld [$ff00], sp                                ; $68e7: $08 $00 $ff
    ld a, a                                       ; $68ea: $7f
    add b                                         ; $68eb: $80
    ld [bc], a                                    ; $68ec: $02
    ld [$80ff], sp                                ; $68ed: $08 $ff $80
    ld hl, sp+$00                                 ; $68f0: $f8 $00
    add h                                         ; $68f2: $84
    ldh [$9b], a                                  ; $68f3: $e0 $9b
    pop hl                                        ; $68f5: $e1
    adc a                                         ; $68f6: $8f
    ret nz                                        ; $68f7: $c0

    and c                                         ; $68f8: $a1

jr_0a9_68f9:
    add b                                         ; $68f9: $80
    nop                                           ; $68fa: $00
    ld b, b                                       ; $68fb: $40
    add b                                         ; $68fc: $80

jr_0a9_68fd:
    dec a                                         ; $68fd: $3d
    db $10                                        ; $68fe: $10
    ccf                                           ; $68ff: $3f
    inc bc                                        ; $6900: $03
    ld a, [hl]                                    ; $6901: $7e
    ld c, $00                                     ; $6902: $0e $00
    dec [hl]                                      ; $6904: $35
    ld c, $35                                     ; $6905: $0e $35
    adc b                                         ; $6907: $88
    ld b, [hl]                                    ; $6908: $46
    rst $38                                       ; $6909: $ff
    ld a, a                                       ; $690a: $7f
    ccf                                           ; $690b: $3f
    nop                                           ; $690c: $00
    ld b, b                                       ; $690d: $40
    rra                                           ; $690e: $1f
    adc a                                         ; $690f: $8f
    rrca                                          ; $6910: $0f
    and e                                         ; $6911: $a3
    ldh [$50], a                                  ; $6912: $e0 $50
    and b                                         ; $6914: $a0
    nop                                           ; $6915: $00
    ld a, [c]                                     ; $6916: $f2
    inc hl                                        ; $6917: $23
    halt                                          ; $6918: $76

jr_0a9_6919:
    ld c, $35                                     ; $6919: $0e $35
    ld bc, $fefe                                  ; $691b: $01 $fe $fe
    ld b, b                                       ; $691e: $40
    nop                                           ; $691f: $00
    ld [bc], a                                    ; $6920: $02
    db $10                                        ; $6921: $10
    ld a, a                                       ; $6922: $7f
    ld a, $1f                                     ; $6923: $3e $1f

jr_0a9_6925:
    ld e, $8f                                     ; $6925: $1e $8f
    ld c, $00                                     ; $6927: $0e $00
    rlca                                          ; $6929: $07
    pop bc                                        ; $692a: $c1
    sbc d                                         ; $692b: $9a
    pop bc                                        ; $692c: $c1
    ld e, $9e                                     ; $692d: $1e $9e
    and l                                         ; $692f: $a5
    ld e, $00                                     ; $6930: $1e $00
    or e                                          ; $6932: $b3
    ld e, $69                                     ; $6933: $1e $69
    jr z, jr_0a9_698e                             ; $6935: $28 $57

    ld a, $14                                     ; $6937: $3e $14
    ld e, [hl]                                    ; $6939: $5e
    nop                                           ; $693a: $00
    add b                                         ; $693b: $80
    add b                                         ; $693c: $80
    ret c                                         ; $693d: $d8

    ld b, b                                       ; $693e: $40
    and b                                         ; $693f: $a0
    inc b                                         ; $6940: $04
    rst $18                                       ; $6941: $df
    ld c, $00                                     ; $6942: $0e $00
    adc e                                         ; $6944: $8b
    rlca                                          ; $6945: $07
    dec de                                        ; $6946: $1b
    inc de                                        ; $6947: $13
    ld [hl], $12                                  ; $6948: $36 $12
    ld h, $1a                                     ; $694a: $26 $1a
    nop                                           ; $694c: $00
    ld [hl], l                                    ; $694d: $75
    ld a, $15                                     ; $694e: $3e $15
    nop                                           ; $6950: $00
    dec c                                         ; $6951: $0d
    ld bc, $4363                                  ; $6952: $01 $63 $43
    nop                                           ; $6955: $00
    ld a, d                                       ; $6956: $7a
    ld h, b                                       ; $6957: $60
    db $d3                                        ; $6958: $d3
    ret nz                                        ; $6959: $c0

    and c                                         ; $695a: $a1
    nop                                           ; $695b: $00
    or c                                          ; $695c: $b1
    ld [hl], b                                    ; $695d: $70
    nop                                           ; $695e: $00
    cp h                                          ; $695f: $bc
    ld b, $07                                     ; $6960: $06 $07
    ld b, $63                                     ; $6962: $06 $63
    ld [c], a                                     ; $6964: $e2
    push hl                                       ; $6965: $e5
    jp nz, $e100                                  ; $6966: $c2 $00 $e1

    add e                                         ; $6969: $83
    ld h, e                                       ; $696a: $63
    pop af                                        ; $696b: $f1
    add hl, de                                    ; $696c: $19
    ld a, b                                       ; $696d: $78

jr_0a9_696e:
    and h                                         ; $696e: $a4
    ld b, b                                       ; $696f: $40
    nop                                           ; $6970: $00
    xor d                                         ; $6971: $aa
    add b                                         ; $6972: $80
    ld c, [hl]                                    ; $6973: $4e
    ret nz                                        ; $6974: $c0

    and b                                         ; $6975: $a0
    ldh [$93], a                                  ; $6976: $e0 $93
    ldh a, [rP1]                                  ; $6978: $f0 $00
    add a                                         ; $697a: $87
    ldh [$9f], a                                  ; $697b: $e0 $9f
    ld [c], a                                     ; $697d: $e2
    adc l                                         ; $697e: $8d
    add $9b                                       ; $697f: $c6 $9b
    call nz, $8b00                                ; $6981: $c4 $00 $8b
    ld a, [hl-]                                   ; $6984: $3a
    ld [hl], l                                    ; $6985: $75
    inc hl                                        ; $6986: $23
    dec bc                                        ; $6987: $0b
    add hl, de                                    ; $6988: $19
    ld e, $cc                                     ; $6989: $1e $cc
    nop                                           ; $698b: $00
    rst $08                                       ; $698c: $cf
    dec b                                         ; $698d: $05

jr_0a9_698e:
    xor [hl]                                      ; $698e: $ae
    add d                                         ; $698f: $82
    rst $00                                       ; $6990: $c7
    ld h, e                                       ; $6991: $63
    db $e3                                        ; $6992: $e3
    sub b                                         ; $6993: $90
    nop                                           ; $6994: $00
    ld [hl], b                                    ; $6995: $70
    ld [hl], b                                    ; $6996: $70
    xor b                                         ; $6997: $a8
    nop                                           ; $6998: $00
    ret nz                                        ; $6999: $c0

    add b                                         ; $699a: $80
    ld h, b                                       ; $699b: $60
    add b                                         ; $699c: $80
    nop                                           ; $699d: $00
    pop bc                                        ; $699e: $c1
    ld bc, $01e3                                  ; $699f: $01 $e3 $01
    xor $03                                       ; $69a2: $ee $03
    adc l                                         ; $69a4: $8d
    ld bc, $0e00                                  ; $69a5: $01 $00 $0e
    ld e, b                                       ; $69a8: $58
    ld l, $3c                                     ; $69a9: $2e $3c
    ret c                                         ; $69ab: $d8

    ld h, b                                       ; $69ac: $60
    call c, RST_30                                ; $69ad: $dc $30 $00
    ret c                                         ; $69b0: $d8

    pop hl                                        ; $69b1: $e1
    add hl, de                                    ; $69b2: $19
    add c                                         ; $69b3: $81
    ld h, c                                       ; $69b4: $61
    ld [bc], a                                    ; $69b5: $02
    add e                                         ; $69b6: $83
    ld b, $00                                     ; $69b7: $06 $00
    dec b                                         ; $69b9: $05
    pop bc                                        ; $69ba: $c1
    cp [hl]                                       ; $69bb: $be
    ret nz                                        ; $69bc: $c0

    xor a                                         ; $69bd: $af
    ldh [$8f], a                                  ; $69be: $e0 $8f
    ldh [rP1], a                                  ; $69c0: $e0 $00
    sub a                                         ; $69c2: $97
    ldh a, [$89]                                  ; $69c3: $f0 $89
    ld hl, sp-$7c                                 ; $69c5: $f8 $84
    cp $81                                        ; $69c7: $fe $81
    add b                                         ; $69c9: $80
    nop                                           ; $69ca: $00
    ld a, a                                       ; $69cb: $7f
    ld h, b                                       ; $69cc: $60
    call nc, $a3d4                                ; $69cd: $d4 $d4 $a3
    add [hl]                                      ; $69d0: $86
    ld a, l                                       ; $69d1: $7d
    inc b                                         ; $69d2: $04
    nop                                           ; $69d3: $00
    adc e                                         ; $69d4: $8b
    ld e, a                                       ; $69d5: $5f
    and h                                         ; $69d6: $a4
    inc c                                         ; $69d7: $0c
    ld [hl], e                                    ; $69d8: $73
    ld c, $0e                                     ; $69d9: $0e $0e
    ret nz                                        ; $69db: $c0

    nop                                           ; $69dc: $00
    jr nz, @-$17                                  ; $69dd: $20 $e7

    nop                                           ; $69df: $00
    ld h, b                                       ; $69e0: $60
    add b                                         ; $69e1: $80
    add e                                         ; $69e2: $83
    add h                                         ; $69e3: $84
    add a                                         ; $69e4: $87
    nop                                           ; $69e5: $00
    add b                                         ; $69e6: $80
    rst $00                                       ; $69e7: $c7
    ret z                                         ; $69e8: $c8

    adc a                                         ; $69e9: $8f
    sub b                                         ; $69ea: $90
    ccf                                           ; $69eb: $3f
    jr nz, jr_0a9_696e                            ; $69ec: $20 $80

    ld b, $ff                                     ; $69ee: $06 $ff
    ld c, $09                                     ; $69f0: $0e $09
    ld a, $21                                     ; $69f2: $3e $21
    jp nz, $c820                                  ; $69f4: $c2 $20 $c8

    nop                                           ; $69f7: $00
    nop                                           ; $69f8: $00
    nop                                           ; $69f9: $00
    nop                                           ; $69fa: $00
    nop                                           ; $69fb: $00
    ld bc, $00ca                                  ; $69fc: $01 $ca $00
    ld [$ff00], sp                                ; $69ff: $08 $00 $ff
    ld a, a                                       ; $6a02: $7f
    add b                                         ; $6a03: $80
    ld [bc], a                                    ; $6a04: $02
    ld c, b                                       ; $6a05: $48
    rst $38                                       ; $6a06: $ff
    rst $38                                       ; $6a07: $ff
    ld c, $00                                     ; $6a08: $0e $00
    ld bc, $7023                                  ; $6a0a: $01 $23 $70
    add hl, sp                                    ; $6a0d: $39
    ld a, h                                       ; $6a0e: $7c
    inc e                                         ; $6a0f: $1c
    ld [hl+], a                                   ; $6a10: $22
    adc [hl]                                      ; $6a11: $8e
    nop                                           ; $6a12: $00
    sub b                                         ; $6a13: $90
    add [hl]                                      ; $6a14: $86
    rra                                           ; $6a15: $1f
    jp $bf1f                                      ; $6a16: $c3 $1f $bf


    ld a, a                                       ; $6a19: $7f
    ccf                                           ; $6a1a: $3f
    nop                                           ; $6a1b: $00
    ld b, b                                       ; $6a1c: $40
    ld a, a                                       ; $6a1d: $7f
    ld b, b                                       ; $6a1e: $40
    ld l, a                                       ; $6a1f: $6f
    ld d, e                                       ; $6a20: $53
    ld sp, $2703                                  ; $6a21: $31 $03 $27
    nop                                           ; $6a24: $00
    rrca                                          ; $6a25: $0f
    ld c, $1d                                     ; $6a26: $0e $1d
    inc e                                         ; $6a28: $1c
    dec hl                                        ; $6a29: $2b
    cp $01                                        ; $6a2a: $fe $01
    nop                                           ; $6a2c: $00
    ld [bc], a                                    ; $6a2d: $02
    cp $fe                                        ; $6a2e: $fe $fe
    ld bc, $81be                                  ; $6a30: $01 $be $81
    ccf                                           ; $6a33: $3f
    ld [bc], a                                    ; $6a34: $02
    nop                                           ; $6a35: $00
    ld a, [hl]                                    ; $6a36: $7e
    db $10                                        ; $6a37: $10
    ccf                                           ; $6a38: $3f
    ld a, [hl]                                    ; $6a39: $7e
    ld a, a                                       ; $6a3a: $7f
    ld a, $08                                     ; $6a3b: $3e $08
    ldh a, [rP1]                                  ; $6a3d: $f0 $00
    ld a, [c]                                     ; $6a3f: $f2
    rlca                                          ; $6a40: $07
    nop                                           ; $6a41: $00
    di                                            ; $6a42: $f3

jr_0a9_6a43:
    add l                                         ; $6a43: $85
    pop af                                        ; $6a44: $f1
    add [hl]                                      ; $6a45: $86
    ld hl, sp+$0f                                 ; $6a46: $f8 $0f
    ld hl, sp+$03                                 ; $6a48: $f8 $03
    nop                                           ; $6a4a: $00

jr_0a9_6a4b:
    pop hl                                        ; $6a4b: $e1
    rlca                                          ; $6a4c: $07
    ldh a, [rP1]                                  ; $6a4d: $f0 $00
    db $fc                                        ; $6a4f: $fc
    inc b                                         ; $6a50: $04
    ld a, [$00c4]                                 ; $6a51: $fa $c4 $00
    ld e, $c0                                     ; $6a54: $1e $c0
    adc l                                         ; $6a56: $8d
    ld [c], a                                     ; $6a57: $e2
    rst $20                                       ; $6a58: $e7
    ldh a, [$72]                                  ; $6a59: $f0 $72
    db $f4                                        ; $6a5b: $f4
    nop                                           ; $6a5c: $00
    jr c, @+$40                                   ; $6a5d: $38 $3e

    ld bc, $037c                                  ; $6a5f: $01 $7c $03
    ld [hl], c                                    ; $6a62: $71
    ld b, $43                                     ; $6a63: $06 $43
    nop                                           ; $6a65: $00
    add hl, de                                    ; $6a66: $19
    inc bc                                        ; $6a67: $03
    dec hl                                        ; $6a68: $2b
    inc de                                        ; $6a69: $13
    inc sp                                        ; $6a6a: $33
    rlca                                          ; $6a6b: $07
    inc [hl]                                      ; $6a6c: $34
    rlca                                          ; $6a6d: $07
    nop                                           ; $6a6e: $00
    cp $01                                        ; $6a6f: $fe $01
    or $71                                        ; $6a71: $f6 $71
    ld h, $70                                     ; $6a73: $26 $70
    and $f0                                       ; $6a75: $e6 $f0
    nop                                           ; $6a77: $00
    add $f0                                       ; $6a78: $c6 $f0
    add [hl]                                      ; $6a7a: $86
    ldh [rIF], a                                  ; $6a7b: $e0 $0f
    pop bc                                        ; $6a7d: $c1
    rra                                           ; $6a7e: $1f
    add c                                         ; $6a7f: $81
    nop                                           ; $6a80: $00
    db $fc                                        ; $6a81: $fc
    add e                                         ; $6a82: $83
    cp $81                                        ; $6a83: $fe $81
    rst $38                                       ; $6a85: $ff
    add b                                         ; $6a86: $80

jr_0a9_6a87:
    db $fc                                        ; $6a87: $fc
    add e                                         ; $6a88: $83
    jr nz, jr_0a9_6a87                            ; $6a89: $20 $fc

    add c                                         ; $6a8b: $81
    ld [bc], a                                    ; $6a8c: $02
    nop                                           ; $6a8d: $00
    add b                                         ; $6a8e: $80
    db $fc                                        ; $6a8f: $fc
    add d                                         ; $6a90: $82
    ld b, $f0                                     ; $6a91: $06 $f0
    nop                                           ; $6a93: $00
    ld b, [hl]                                    ; $6a94: $46
    ld [hl], b                                    ; $6a95: $70
    add d                                         ; $6a96: $82
    nop                                           ; $6a97: $00
    jr c, @-$0e                                   ; $6a98: $38 $f0

    adc b                                         ; $6a9a: $88
    call nz, $e400                                ; $6a9b: $c4 $00 $e4
    ldh a, [$72]                                  ; $6a9e: $f0 $72
    ld hl, sp+$38                                 ; $6aa0: $f8 $38
    db $fc                                        ; $6aa2: $fc
    ld d, b                                       ; $6aa3: $50
    ld h, [hl]                                    ; $6aa4: $66
    nop                                           ; $6aa5: $00
    jr nc, jr_0a9_6aa8                            ; $6aa6: $30 $00

jr_0a9_6aa8:
    ld l, h                                       ; $6aa8: $6c
    ld l, h                                       ; $6aa9: $6c
    inc [hl]                                      ; $6aaa: $34
    ld a, [hl-]                                   ; $6aab: $3a
    ld e, h                                       ; $6aac: $5c
    ld h, d                                       ; $6aad: $62
    nop                                           ; $6aae: $00
    cp b                                          ; $6aaf: $b8
    call nz, $fc71                                ; $6ab0: $c4 $71 $fc
    jp Jump_000_3ef8                              ; $6ab3: $c3 $f8 $3e


    ccf                                           ; $6ab6: $3f
    ld c, $fe                                     ; $6ab7: $0e $fe
    ld a, a                                       ; $6ab9: $7f
    cp $00                                        ; $6aba: $fe $00
    ld [bc], a                                    ; $6abc: $02
    ld b, b                                       ; $6abd: $40
    ld a, $00                                     ; $6abe: $3e $00
    cp h                                          ; $6ac0: $bc
    jr nc, jr_0a9_6a43                            ; $6ac1: $30 $80

    nop                                           ; $6ac3: $00
    add b                                         ; $6ac4: $80
    ld a, a                                       ; $6ac5: $7f
    ld e, $62                                     ; $6ac6: $1e $62
    inc b                                         ; $6ac8: $04
    jr c, jr_0a9_6a4b                             ; $6ac9: $38 $80

    sbc h                                         ; $6acb: $9c
    nop                                           ; $6acc: $00
    ldh [$c0], a                                  ; $6acd: $e0 $c0
    db $fc                                        ; $6acf: $fc
    nop                                           ; $6ad0: $00
    ld a, [$fe04]                                 ; $6ad1: $fa $04 $fe
    nop                                           ; $6ad4: $00
    nop                                           ; $6ad5: $00
    nop                                           ; $6ad6: $00
    cp $07                                        ; $6ad7: $fe $07
    di                                            ; $6ad9: $f3
    rrca                                          ; $6ada: $0f
    rlca                                          ; $6adb: $07
    scf                                           ; $6adc: $37
    ld [$6f0a], sp                                ; $6add: $08 $0a $6f
    ld d, b                                       ; $6ae0: $50
    ccf                                           ; $6ae1: $3f
    ld b, b                                       ; $6ae2: $40
    ret z                                         ; $6ae3: $c8

    ld [$3c40], sp                                ; $6ae4: $08 $40 $3c
    ld e, b                                       ; $6ae7: $58
    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    nop                                           ; $6aec: $00
    ld bc, $00d7                                  ; $6aed: $01 $d7 $00
    nop                                           ; $6af0: $00
    db $10                                        ; $6af1: $10
    rst $28                                       ; $6af2: $ef
    ld e, a                                       ; $6af3: $5f
    rst $00                                       ; $6af4: $c7
    db $d3                                        ; $6af5: $d3
    inc c                                         ; $6af6: $0c
    and l                                         ; $6af7: $a5
    ld e, $00                                     ; $6af8: $1e $00
    adc d                                         ; $6afa: $8a
    sub h                                         ; $6afb: $94
    add h                                         ; $6afc: $84
    sbc d                                         ; $6afd: $9a
    and b                                         ; $6afe: $a0
    ccf                                           ; $6aff: $3f
    or c                                          ; $6b00: $b1
    ccf                                           ; $6b01: $3f
    jr nz, @+$01                                  ; $6b02: $20 $ff

    nop                                           ; $6b04: $00
    ld bc, $ff18                                  ; $6b05: $01 $18 $ff
    rst $38                                       ; $6b08: $ff
    ld l, a                                       ; $6b09: $6f
    rst $20                                       ; $6b0a: $e7
    ld e, a                                       ; $6b0b: $5f
    db $10                                        ; $6b0c: $10
    ld b, c                                       ; $6b0d: $41
    inc hl                                        ; $6b0e: $23
    dec e                                         ; $6b0f: $1d
    db $10                                        ; $6b10: $10
    ld [$00ff], sp                                ; $6b11: $08 $ff $00
    ld hl, sp+$03                                 ; $6b14: $f8 $03
    nop                                           ; $6b16: $00
    rrca                                          ; $6b17: $0f
    rst $30                                       ; $6b18: $f7
    add hl, bc                                    ; $6b19: $09
    ldh a, [$f4]                                  ; $6b1a: $f0 $f4
    ld b, $e2                                     ; $6b1c: $06 $e2
    rrca                                          ; $6b1e: $0f
    nop                                           ; $6b1f: $00
    cp $01                                        ; $6b20: $fe $01
    nop                                           ; $6b22: $00
    cp $fe                                        ; $6b23: $fe $fe
    nop                                           ; $6b25: $00
    cp $00                                        ; $6b26: $fe $00
    nop                                           ; $6b28: $00
    ld a, [hl]                                    ; $6b29: $7e
    ld a, a                                       ; $6b2a: $7f
    cp [hl]                                       ; $6b2b: $be
    ccf                                           ; $6b2c: $3f
    ccf                                           ; $6b2d: $3f
    cp [hl]                                       ; $6b2e: $be
    ccf                                           ; $6b2f: $3f
    cp $00                                        ; $6b30: $fe $00
    add b                                         ; $6b32: $80
    rst $10                                       ; $6b33: $d7
    ret nz                                        ; $6b34: $c0

    xor l                                         ; $6b35: $ad
    ldh a, [$82]                                  ; $6b36: $f0 $82
    db $fc                                        ; $6b38: $fc
    add d                                         ; $6b39: $82
    inc b                                         ; $6b3a: $04
    cp $81                                        ; $6b3b: $fe $81
    rst $38                                       ; $6b3d: $ff
    add b                                         ; $6b3e: $80
    ld a, a                                       ; $6b3f: $7f
    ld [bc], a                                    ; $6b40: $02
    nop                                           ; $6b41: $00
    ld a, $15                                     ; $6b42: $3e $15
    nop                                           ; $6b44: $00
    inc a                                         ; $6b45: $3c
    ld [$563c], sp                                ; $6b46: $08 $3c $56
    inc c                                         ; $6b49: $0c
    ld [hl-], a                                   ; $6b4a: $32
    inc e                                         ; $6b4b: $1c
    inc b                                         ; $6b4c: $04
    nop                                           ; $6b4d: $00
    inc c                                         ; $6b4e: $0c
    add b                                         ; $6b4f: $80
    ret nz                                        ; $6b50: $c0

    pop bc                                        ; $6b51: $c1
    db $e3                                        ; $6b52: $e3
    ld a, [c]                                     ; $6b53: $f2
    rrca                                          ; $6b54: $0f
    db $e4                                        ; $6b55: $e4
    db $10                                        ; $6b56: $10
    rrca                                          ; $6b57: $0f
    ld [c], a                                     ; $6b58: $e2
    and $05                                       ; $6b59: $e6 $05
    nop                                           ; $6b5b: $00
    pop hl                                        ; $6b5c: $e1
    rrca                                          ; $6b5d: $0f
    ld [$080e], a                                 ; $6b5e: $ea $0e $08
    nop                                           ; $6b61: $00
    pop hl                                        ; $6b62: $e1
    ldh [$c3], a                                  ; $6b63: $e0 $c3
    inc [hl]                                      ; $6b65: $34
    nop                                           ; $6b66: $00
    cp [hl]                                       ; $6b67: $be
    ccf                                           ; $6b68: $3f
    ld a, $00                                     ; $6b69: $3e $00
    ccf                                           ; $6b6b: $3f
    ld a, [hl]                                    ; $6b6c: $7e
    ld bc, $197f                                  ; $6b6d: $01 $7f $19
    rst $20                                       ; $6b70: $e7
    ld a, h                                       ; $6b71: $7c
    add d                                         ; $6b72: $82
    nop                                           ; $6b73: $00
    ld a, h                                       ; $6b74: $7c
    or b                                          ; $6b75: $b0
    ld a, a                                       ; $6b76: $7f
    db $fc                                        ; $6b77: $fc
    ld a, e                                       ; $6b78: $7b
    ld hl, sp-$0c                                 ; $6b79: $f8 $f4
    add e                                         ; $6b7b: $83
    nop                                           ; $6b7c: $00
    ldh a, [$83]                                  ; $6b7d: $f0 $83
    pop af                                        ; $6b7f: $f1
    rlca                                          ; $6b80: $07
    ldh a, [rTAC]                                 ; $6b81: $f0 $07
    ldh a, [$87]                                  ; $6b83: $f0 $87

jr_0a9_6b85:
    nop                                           ; $6b85: $00
    ldh a, [$8b]                                  ; $6b86: $f0 $8b
    ldh a, [rNR11]                                ; $6b88: $f0 $11
    jr jr_0a9_6b85                                ; $6b8a: $18 $f9

    pop af                                        ; $6b8c: $f1
    jr jr_0a9_6b8f                                ; $6b8d: $18 $00

jr_0a9_6b8f:
    db $e3                                        ; $6b8f: $e3
    ld a, [bc]                                    ; $6b90: $0a
    db $e3                                        ; $6b91: $e3
    dec bc                                        ; $6b92: $0b
    pop hl                                        ; $6b93: $e1
    add hl, hl                                    ; $6b94: $29
    adc b                                         ; $6b95: $88
    pop hl                                        ; $6b96: $e1
    nop                                           ; $6b97: $00
    ld [$77c1], sp                                ; $6b98: $08 $c1 $77
    add a                                         ; $6b9b: $87
    ld d, $e6                                     ; $6b9c: $16 $e6
    ldh [$84], a                                  ; $6b9e: $e0 $84
    nop                                           ; $6ba0: $00
    di                                            ; $6ba1: $f3
    ld b, b                                       ; $6ba2: $40
    di                                            ; $6ba3: $f3
    ret nz                                        ; $6ba4: $c0

    ldh [$88], a                                  ; $6ba5: $e0 $88
    pop hl                                        ; $6ba7: $e1
    ld hl, $c000                                  ; $6ba8: $21 $00 $c0
    jp nz, Jump_000_25f8                          ; $6bab: $c2 $f8 $25

    ld hl, sp+$51                                 ; $6bae: $f8 $51
    db $dd                                        ; $6bb0: $dd
    ld hl, $b100                                  ; $6bb1: $21 $00 $b1
    ld b, c                                       ; $6bb4: $41
    ld d, c                                       ; $6bb5: $51
    ld hl, sp+$03                                 ; $6bb6: $f8 $03
    ldh [rTAC], a                                 ; $6bb8: $e0 $07
    ld b, $03                                     ; $6bba: $06 $03
    rra                                           ; $6bbc: $1f
    ld a, $f8                                     ; $6bbd: $3e $f8
    add l                                         ; $6bbf: $85
    db $fc                                        ; $6bc0: $fc
    add d                                         ; $6bc1: $82
    ld a, b                                       ; $6bc2: $78
    ld [$087c], sp                                ; $6bc3: $08 $7c $08
    nop                                           ; $6bc6: $00
    rst $38                                       ; $6bc7: $ff
    add b                                         ; $6bc8: $80
    add b                                         ; $6bc9: $80
    ld a, a                                       ; $6bca: $7f
    set 2, e                                      ; $6bcb: $cb $d3
    call z, Call_000_00c0                         ; $6bcd: $cc $c0 $00
    inc b                                         ; $6bd0: $04
    nop                                           ; $6bd1: $00
    ret nz                                        ; $6bd2: $c0

    jr nz, @-$0e                                  ; $6bd3: $20 $f0

    ld [$00fc], sp                                ; $6bd5: $08 $fc $00
    nop                                           ; $6bd8: $00
    nop                                           ; $6bd9: $00
    db $fc                                        ; $6bda: $fc
    db $fc                                        ; $6bdb: $fc
    nop                                           ; $6bdc: $00
    add a                                         ; $6bdd: $87
    adc b                                         ; $6bde: $88
    ccf                                           ; $6bdf: $3f
    ld b, b                                       ; $6be0: $40
    ret c                                         ; $6be1: $d8

    db $d3                                        ; $6be2: $d3
    jr nz, @-$36                                  ; $6be3: $20 $c8

    nop                                           ; $6be5: $00
    nop                                           ; $6be6: $00
    cp d                                          ; $6be7: $ba
    nop                                           ; $6be8: $00
    ld [bc], a                                    ; $6be9: $02
    ld c, b                                       ; $6bea: $48
    nop                                           ; $6beb: $00
    nop                                           ; $6bec: $00
    nop                                           ; $6bed: $00
    ld bc, $00dc                                  ; $6bee: $01 $dc $00
    ld [$ff00], sp                                ; $6bf1: $08 $00 $ff
    ld a, a                                       ; $6bf4: $7f
    add b                                         ; $6bf5: $80
    ld [bc], a                                    ; $6bf6: $02
    nop                                           ; $6bf7: $00
    add e                                         ; $6bf8: $83
    ld hl, sp-$01                                 ; $6bf9: $f8 $ff
    nop                                           ; $6bfb: $00
    di                                            ; $6bfc: $f3
    db $fc                                        ; $6bfd: $fc
    pop hl                                        ; $6bfe: $e1
    xor $e0                                       ; $6bff: $ee $e0
    rst $28                                       ; $6c01: $ef
    cp $01                                        ; $6c02: $fe $01
    nop                                           ; $6c04: $00
    db $fc                                        ; $6c05: $fc
    cp $fc                                        ; $6c06: $fe $fc
    ld bc, $8379                                  ; $6c08: $01 $79 $83
    jr c, @-$7d                                   ; $6c0b: $38 $81

    nop                                           ; $6c0d: $00
    sbc b                                         ; $6c0e: $98
    ret nz                                        ; $6c0f: $c0

    inc e                                         ; $6c10: $1c
    ret nz                                        ; $6c11: $c0

    ld e, h                                       ; $6c12: $5c
    ret nz                                        ; $6c13: $c0

    db $10                                        ; $6c14: $10
    rrca                                          ; $6c15: $0f
    nop                                           ; $6c16: $00
    ld c, a                                       ; $6c17: $4f
    ld b, b                                       ; $6c18: $40
    ld b, a                                       ; $6c19: $47
    ldh [$27], a                                  ; $6c1a: $e0 $27

jr_0a9_6c1c:
    ld [hl], b                                    ; $6c1c: $70
    daa                                           ; $6c1d: $27
    ldh a, [rP1]                                  ; $6c1e: $f0 $00
    rlca                                          ; $6c20: $07
    ldh a, [rNR21]                                ; $6c21: $f0 $16

jr_0a9_6c23:
    ld [hl], c                                    ; $6c23: $71
    inc b                                         ; $6c24: $04
    ld sp, $01fe                                  ; $6c25: $31 $fe $01
    ld [$fe00], sp                                ; $6c28: $08 $00 $fe
    cp $00                                        ; $6c2b: $fe $00
    ld [bc], a                                    ; $6c2d: $02
    ld [$c03e], sp                                ; $6c2e: $08 $3e $c0
    ld de, $0e00                                  ; $6c31: $11 $00 $0e
    ret                                           ; $6c34: $c9


    add $f0                                       ; $6c35: $c6 $f0
    add a                                         ; $6c37: $87
    ldh a, [$8b]                                  ; $6c38: $f0 $8b
    ld hl, sp+$04                                 ; $6c3a: $f8 $04
    add h                                         ; $6c3c: $84
    db $fc                                        ; $6c3d: $fc
    add d                                         ; $6c3e: $82
    ld a, a                                       ; $6c3f: $7f
    add c                                         ; $6c40: $81
    ld c, b                                       ; $6c41: $48
    nop                                           ; $6c42: $00
    rst $38                                       ; $6c43: $ff
    ld a, a                                       ; $6c44: $7f
    nop                                           ; $6c45: $00
    db $fc                                        ; $6c46: $fc
    inc e                                         ; $6c47: $1c
    ret nc                                        ; $6c48: $d0

    dec e                                         ; $6c49: $1d
    pop de                                        ; $6c4a: $d1
    jr jr_0a9_6c1c                                ; $6c4b: $18 $cf

    jr nc, jr_0a9_6c4f                            ; $6c4d: $30 $00

jr_0a9_6c4f:
    add a                                         ; $6c4f: $87
    inc bc                                        ; $6c50: $03
    rrca                                          ; $6c51: $0f
    ld b, c                                       ; $6c52: $41
    rrca                                          ; $6c53: $0f
    ldh [rIF], a                                  ; $6c54: $e0 $0f
    ldh a, [rP1]                                  ; $6c56: $f0 $00
    rla                                           ; $6c58: $17
    ret nz                                        ; $6c59: $c0

    add e                                         ; $6c5a: $83
    add sp, -$3d                                  ; $6c5b: $e8 $c3
    jp hl                                         ; $6c5d: $e9


    sub l                                         ; $6c5e: $95
    ld hl, sp+$00                                 ; $6c5f: $f8 $00
    add $90                                       ; $6c61: $c6 $90
    ret nz                                        ; $6c63: $c0

    add b                                         ; $6c64: $80
    adc $cb                                       ; $6c65: $ce $cb
    ld b, l                                       ; $6c67: $45
    adc l                                         ; $6c68: $8d
    ld b, b                                       ; $6c69: $40
    ld a, [bc]                                    ; $6c6a: $0a
    ld c, h                                       ; $6c6b: $4c
    ld [$f0d7], sp                                ; $6c6c: $08 $d7 $f0
    ld [hl], a                                    ; $6c6f: $77
    ld [hl], b                                    ; $6c70: $70
    ld [hl], a                                    ; $6c71: $77
    ld [hl], b                                    ; $6c72: $70
    nop                                           ; $6c73: $00
    daa                                           ; $6c74: $27
    xor b                                         ; $6c75: $a8
    rrca                                          ; $6c76: $0f
    ld e, [hl]                                    ; $6c77: $5e
    rra                                           ; $6c78: $1f
    ld l, $f8                                     ; $6c79: $2e $f8
    add a                                         ; $6c7b: $87
    nop                                           ; $6c7c: $00
    ldh a, [$8f]                                  ; $6c7d: $f0 $8f
    db $e3                                        ; $6c7f: $e3
    db $fc                                        ; $6c80: $fc
    pop hl                                        ; $6c81: $e1
    cp $f0                                        ; $6c82: $fe $f0
    rla                                           ; $6c84: $17
    nop                                           ; $6c85: $00
    ld hl, sp+$0b                                 ; $6c86: $f8 $0b
    ld hl, sp-$7b                                 ; $6c88: $f8 $85
    db $fc                                        ; $6c8a: $fc
    add c                                         ; $6c8b: $81
    pop af                                        ; $6c8c: $f1
    adc c                                         ; $6c8d: $89
    nop                                           ; $6c8e: $00
    ld hl, sp-$3c                                 ; $6c8f: $f8 $c4
    ld e, $82                                     ; $6c91: $1e $82
    rra                                           ; $6c93: $1f
    db $d3                                        ; $6c94: $d3
    set 2, l                                      ; $6c95: $cb $d5
    nop                                           ; $6c97: $00
    sub l                                         ; $6c98: $95
    adc c                                         ; $6c99: $89
    jr nz, jr_0a9_6c23                            ; $6c9a: $20 $87

    ld [hl], b                                    ; $6c9c: $70
    scf                                           ; $6c9d: $37
    adc $83                                       ; $6c9e: $ce $83
    nop                                           ; $6ca0: $00
    add a                                         ; $6ca1: $87
    ld bc, $8308                                  ; $6ca2: $01 $08 $83
    inc e                                         ; $6ca5: $1c
    dec c                                         ; $6ca6: $0d
    ld e, $e2                                     ; $6ca7: $1e $e2
    jr nz, jr_0a9_6cba                            ; $6ca9: $20 $0f

    pop af                                        ; $6cab: $f1
    adc b                                         ; $6cac: $88
    ld [$a09f], sp                                ; $6cad: $08 $9f $a0
    sbc a                                         ; $6cb0: $9f
    and b                                         ; $6cb1: $a0
    and c                                         ; $6cb2: $a1
    nop                                           ; $6cb3: $00
    sbc [hl]                                      ; $6cb4: $9e
    and c                                         ; $6cb5: $a1
    sbc [hl]                                      ; $6cb6: $9e
    add c                                         ; $6cb7: $81
    cp [hl]                                       ; $6cb8: $be
    ld b, c                                       ; $6cb9: $41

jr_0a9_6cba:
    ld a, $7e                                     ; $6cba: $3e $7e
    ld c, l                                       ; $6cbc: $4d
    ld bc, $00ae                                  ; $6cbd: $01 $ae $00
    add d                                         ; $6cc0: $82
    cp $7a                                        ; $6cc1: $fe $7a
    ld [$1002], sp                                ; $6cc3: $08 $02 $10
    add b                                         ; $6cc6: $80
    call z, RST_00                                ; $6cc7: $cc $00 $00
    ld a, c                                       ; $6cca: $79
    add c                                         ; $6ccb: $81
    ld hl, sp+$04                                 ; $6ccc: $f8 $04
    db $fc                                        ; $6cce: $fc
    ld sp, hl                                     ; $6ccf: $f9
    db $fc                                        ; $6cd0: $fc
    db $fd                                        ; $6cd1: $fd
    nop                                           ; $6cd2: $00
    db $fd                                        ; $6cd3: $fd
    ld bc, $01fc                                  ; $6cd4: $01 $fc $01
    ld bc, $fcfd                                  ; $6cd7: $01 $fd $fc
    nop                                           ; $6cda: $00
    nop                                           ; $6cdb: $00
    daa                                           ; $6cdc: $27
    call nc, Call_0a9_6407                        ; $6cdd: $d4 $07 $64
    rlca                                          ; $6ce0: $07
    ld [hl], h                                    ; $6ce1: $74
    rlca                                          ; $6ce2: $07
    jr nc, jr_0a9_6ce5                            ; $6ce3: $30 $00

jr_0a9_6ce5:
    add a                                         ; $6ce5: $87
    adc b                                         ; $6ce6: $88
    rrca                                          ; $6ce7: $0f
    ret nc                                        ; $6ce8: $d0

    sub b                                         ; $6ce9: $90
    rst $08                                       ; $6cea: $cf
    rst $38                                       ; $6ceb: $ff
    add b                                         ; $6cec: $80
    ret nz                                        ; $6ced: $c0

    cp h                                          ; $6cee: $bc
    jr @+$08                                      ; $6cef: $18 $06

    jr z, jr_0a9_6cf3                             ; $6cf1: $28 $00

jr_0a9_6cf3:
    nop                                           ; $6cf3: $00
    nop                                           ; $6cf4: $00
    ld bc, $00b9                                  ; $6cf5: $01 $b9 $00
    dec b                                         ; $6cf8: $05
    rst $38                                       ; $6cf9: $ff
    rst $38                                       ; $6cfa: $ff
    cp $81                                        ; $6cfb: $fe $81
    ld a, l                                       ; $6cfd: $7d
    ld [bc], a                                    ; $6cfe: $02
    nop                                           ; $6cff: $00
    cp $02                                        ; $6d00: $fe $02
    nop                                           ; $6d02: $00
    nop                                           ; $6d03: $00
    add b                                         ; $6d04: $80
    ld a, b                                       ; $6d05: $78
    add a                                         ; $6d06: $87
    ld h, a                                       ; $6d07: $67
    nop                                           ; $6d08: $00
    rst $38                                       ; $6d09: $ff
    rrca                                          ; $6d0a: $0f
    nop                                           ; $6d0b: $00
    nop                                           ; $6d0c: $00
    ldh a, [rSCY]                                 ; $6d0d: $f0 $42
    ld sp, hl                                     ; $6d0f: $f9

jr_0a9_6d10:
    ld [hl], h                                    ; $6d10: $74
    ld a, l                                       ; $6d11: $7d
    sbc b                                         ; $6d12: $98
    dec e                                         ; $6d13: $1d
    cpl                                           ; $6d14: $2f
    nop                                           ; $6d15: $00
    rrca                                          ; $6d16: $0f
    dec d                                         ; $6d17: $15
    rst $20                                       ; $6d18: $e7
    dec bc                                        ; $6d19: $0b
    sbc a                                         ; $6d1a: $9f
    sbc a                                         ; $6d1b: $9f
    inc c                                         ; $6d1c: $0c
    ld h, b                                       ; $6d1d: $60
    nop                                           ; $6d1e: $00
    jp $c769                                      ; $6d1f: $c3 $69 $c7


jr_0a9_6d22:
    add e                                         ; $6d22: $83
    jr @-$27                                      ; $6d23: $18 $d7

    ld d, c                                       ; $6d25: $51
    adc [hl]                                      ; $6d26: $8e
    nop                                           ; $6d27: $00
    cp [hl]                                       ; $6d28: $be
    call c, Call_000_18b9                         ; $6d29: $dc $b9 $18
    add b                                         ; $6d2c: $80
    rst $38                                       ; $6d2d: $ff
    ret nz                                        ; $6d2e: $c0

    ld a, [hl]                                    ; $6d2f: $7e
    nop                                           ; $6d30: $00
    ret nz                                        ; $6d31: $c0

    sbc [hl]                                      ; $6d32: $9e
    add b                                         ; $6d33: $80
    cp [hl]                                       ; $6d34: $be
    add b                                         ; $6d35: $80
    ld a, $60                                     ; $6d36: $3e $60
    ld a, [hl]                                    ; $6d38: $7e
    nop                                           ; $6d39: $00
    ld h, b                                       ; $6d3a: $60
    ld b, $f8                                     ; $6d3b: $06 $f8
    ld [c], a                                     ; $6d3d: $e2
    rrca                                          ; $6d3e: $0f
    db $d3                                        ; $6d3f: $d3
    inc bc                                        ; $6d40: $03
    db $e4                                        ; $6d41: $e4
    inc b                                         ; $6d42: $04
    ld [hl], c                                    ; $6d43: $71
    add c                                         ; $6d44: $81
    ld a, [hl]                                    ; $6d45: $7e
    add b                                         ; $6d46: $80
    ld a, a                                       ; $6d47: $7f
    ld [bc], a                                    ; $6d48: $02
    jr nz, jr_0a9_6d5f                            ; $6d49: $20 $14

    rst $20                                       ; $6d4b: $e7
    nop                                           ; $6d4c: $00
    ld b, $fd                                     ; $6d4d: $06 $fd
    ld a, c                                       ; $6d4f: $79
    or a                                          ; $6d50: $b7
    dec a                                         ; $6d51: $3d

jr_0a9_6d52:
    ld c, e                                       ; $6d52: $4b
    ld e, a                                       ; $6d53: $5f
    ld h, b                                       ; $6d54: $60
    nop                                           ; $6d55: $00
    cpl                                           ; $6d56: $2f
    jr nc, jr_0a9_6d10                            ; $6d57: $30 $b7

    cp b                                          ; $6d59: $b8
    add [hl]                                      ; $6d5a: $86
    sbc c                                         ; $6d5b: $99
    or a                                          ; $6d5c: $b7
    or e                                          ; $6d5d: $b3
    nop                                           ; $6d5e: $00

jr_0a9_6d5f:
    xor a                                         ; $6d5f: $af
    ld [hl], a                                    ; $6d60: $77
    ld e, $e9                                     ; $6d61: $1e $e9
    cp h                                          ; $6d63: $bc
    ld d, d                                       ; $6d64: $52
    ld a, [$0006]                                 ; $6d65: $fa $06 $00
    push af                                       ; $6d68: $f5
    dec c                                         ; $6d69: $0d
    pop de                                        ; $6d6a: $d1
    add hl, hl                                    ; $6d6b: $29
    jp hl                                         ; $6d6c: $e9


    add hl, de                                    ; $6d6d: $19
    ret nc                                        ; $6d6e: $d0

    jr nc, jr_0a9_6d71                            ; $6d6f: $30 $00

jr_0a9_6d71:
    ld b, b                                       ; $6d71: $40
    ret nz                                        ; $6d72: $c0

    add c                                         ; $6d73: $81
    ccf                                           ; $6d74: $3f
    ld bc, $fe7f                                  ; $6d75: $01 $7f $fe
    nop                                           ; $6d78: $00
    ldh [rSC], a                                  ; $6d79: $e0 $02
    jr jr_0a9_6db5                                ; $6d7b: $18 $38

    jr z, jr_0a9_6dbf                             ; $6d7d: $28 $40

    jr z, jr_0a9_6d52                             ; $6d7f: $28 $d1

    sbc $da                                       ; $6d81: $de $da
    db $dd                                        ; $6d83: $dd
    push de                                       ; $6d84: $d5
    nop                                           ; $6d85: $00
    sbc $ca                                       ; $6d86: $de $ca
    rst $08                                       ; $6d88: $cf
    jp nz, $c00f                                  ; $6d89: $c2 $0f $c0

    inc bc                                        ; $6d8c: $03
    jp $0700                                      ; $6d8d: $c3 $00 $07


    ret nz                                        ; $6d90: $c0

    ld bc, $bb43                                  ; $6d91: $01 $43 $bb
    srl e                                         ; $6d94: $cb $3b
    inc hl                                        ; $6d96: $23
    nop                                           ; $6d97: $00
    db $d3                                        ; $6d98: $d3
    rst $10                                       ; $6d99: $d7
    ld [hl], a                                    ; $6d9a: $77
    add b                                         ; $6d9b: $80
    rst $30                                       ; $6d9c: $f7
    ld b, b                                       ; $6d9d: $40
    daa                                           ; $6d9e: $27
    rrca                                          ; $6d9f: $0f
    jr jr_0a9_6d22                                ; $6da0: $18 $80

    adc a                                         ; $6da2: $8f
    ret nz                                        ; $6da3: $c0

    jr c, jr_0a9_6dce                             ; $6da4: $38 $28

    ld b, b                                       ; $6da6: $40
    adc b                                         ; $6da7: $88
    rst $38                                       ; $6da8: $ff
    add b                                         ; $6da9: $80
    add b                                         ; $6daa: $80
    nop                                           ; $6dab: $00
    ld a, a                                       ; $6dac: $7f
    call nz, $cf0e                                ; $6dad: $c4 $0e $cf
    rra                                           ; $6db0: $1f
    jp nz, $c807                                  ; $6db1: $c2 $07 $c8

    nop                                           ; $6db4: $00

jr_0a9_6db5:
    inc e                                         ; $6db5: $1c
    adc b                                         ; $6db6: $88
    ld [$1880], sp                                ; $6db7: $08 $80 $18
    reti                                          ; $6dba: $d9


    ld a, $00                                     ; $6dbb: $3e $00
    nop                                           ; $6dbd: $00
    inc e                                         ; $6dbe: $1c

jr_0a9_6dbf:
    rra                                           ; $6dbf: $1f
    ret nz                                        ; $6dc0: $c0

    sbc a                                         ; $6dc1: $9f
    add b                                         ; $6dc2: $80
    ccf                                           ; $6dc3: $3f
    add b                                         ; $6dc4: $80
    ccf                                           ; $6dc5: $3f
    ld a, [bc]                                    ; $6dc6: $0a
    nop                                           ; $6dc7: $00
    ld a, a                                       ; $6dc8: $7f
    nop                                           ; $6dc9: $00
    rst $38                                       ; $6dca: $ff
    ld [bc], a                                    ; $6dcb: $02
    nop                                           ; $6dcc: $00
    nop                                           ; $6dcd: $00

jr_0a9_6dce:
    ld a, $60                                     ; $6dce: $3e $60
    nop                                           ; $6dd0: $00
    nop                                           ; $6dd1: $00
    nop                                           ; $6dd2: $00
    nop                                           ; $6dd3: $00
    ld bc, $00ec                                  ; $6dd4: $01 $ec $00
    nop                                           ; $6dd7: $00
    rst $38                                       ; $6dd8: $ff
    rst $38                                       ; $6dd9: $ff
    sbc a                                         ; $6dda: $9f
    ret nz                                        ; $6ddb: $c0

    adc a                                         ; $6ddc: $8f
    ldh [$87], a                                  ; $6ddd: $e0 $87
    ldh a, [rP1]                                  ; $6ddf: $f0 $00
    add e                                         ; $6de1: $83
    ld hl, sp-$7f                                 ; $6de2: $f8 $81
    db $fc                                        ; $6de4: $fc
    cp $81                                        ; $6de5: $fe $81
    cp $81                                        ; $6de7: $fe $81

jr_0a9_6de9:
    nop                                           ; $6de9: $00
    nop                                           ; $6dea: $00
    rst $38                                       ; $6deb: $ff
    cp $00                                        ; $6dec: $fe $00
    ld bc, $c03d                                  ; $6dee: $01 $3d $c0
    dec e                                         ; $6df1: $1d
    nop                                           ; $6df2: $00
    ldh a, [$8e]                                  ; $6df3: $f0 $8e
    ld hl, sp+$47                                 ; $6df5: $f8 $47
    ld a, b                                       ; $6df7: $78
    inc hl                                        ; $6df8: $23
    ld a, h                                       ; $6df9: $7c

jr_0a9_6dfa:
    ld de, $7f00                                  ; $6dfa: $11 $00 $7f
    ld a, a                                       ; $6dfd: $7f
    add b                                         ; $6dfe: $80
    ccf                                           ; $6dff: $3f
    rst $18                                       ; $6e00: $df
    rra                                           ; $6e01: $1f
    sbc $1f                                       ; $6e02: $de $1f
    nop                                           ; $6e04: $00
    ld bc, $07b8                                  ; $6e05: $01 $b8 $07
    ld [hl], c                                    ; $6e08: $71
    rrca                                          ; $6e09: $0f
    ld [hl], d                                    ; $6e0a: $72
    ld e, $65                                     ; $6e0b: $1e $65

jr_0a9_6e0d:
    nop                                           ; $6e0d: $00
    cp $01                                        ; $6e0e: $fe $01
    inc e                                         ; $6e10: $1c
    db $fd                                        ; $6e11: $fd
    sub d                                         ; $6e12: $92
    add e                                         ; $6e13: $83
    ld h, [hl]                                    ; $6e14: $66
    rlca                                          ; $6e15: $07
    nop                                           ; $6e16: $00
    adc $0f                                       ; $6e17: $ce $0f
    sbc [hl]                                      ; $6e19: $9e
    rra                                           ; $6e1a: $1f
    dec sp                                        ; $6e1b: $3b
    cp e                                          ; $6e1c: $bb
    ld [hl], l                                    ; $6e1d: $75
    ld [hl], c                                    ; $6e1e: $71
    nop                                           ; $6e1f: $00
    ld a, a                                       ; $6e20: $7f
    add b                                         ; $6e21: $80
    ld a, a                                       ; $6e22: $7f
    add b                                         ; $6e23: $80
    rst $38                                       ; $6e24: $ff
    add b                                         ; $6e25: $80
    rst $18                                       ; $6e26: $df
    and b                                         ; $6e27: $a0
    nop                                           ; $6e28: $00
    and b                                         ; $6e29: $a0
    nop                                           ; $6e2a: $00
    ld b, a                                       ; $6e2b: $47
    scf                                           ; $6e2c: $37
    rlca                                          ; $6e2d: $07
    ld [hl], b                                    ; $6e2e: $70
    adc a                                         ; $6e2f: $8f
    and b                                         ; $6e30: $a0
    nop                                           ; $6e31: $00
    inc a                                         ; $6e32: $3c
    ld c, d                                       ; $6e33: $4a
    ld a, $48                                     ; $6e34: $3e $48
    ld a, $84                                     ; $6e36: $3e $84
    ld a, $84                                     ; $6e38: $3e $84
    nop                                           ; $6e3a: $00
    ld e, $a0                                     ; $6e3b: $1e $a0
    ld c, $12                                     ; $6e3d: $0e $12
    inc bc                                        ; $6e3f: $03
    call $c03f                                    ; $6e40: $cd $3f $c0
    nop                                           ; $6e43: $00
    inc a                                         ; $6e44: $3c
    adc b                                         ; $6e45: $88
    ld a, h                                       ; $6e46: $7c
    ld de, $79fc                                  ; $6e47: $11 $fc $79
    ldh a, [rSVBK]                                ; $6e4a: $f0 $70
    nop                                           ; $6e4c: $00
    ret nz                                        ; $6e4d: $c0

    dec bc                                        ; $6e4e: $0b
    ld h, b                                       ; $6e4f: $60
    rst $18                                       ; $6e50: $df
    sbc [hl]                                      ; $6e51: $9e
    ld h, b                                       ; $6e52: $60
    ld a, c                                       ; $6e53: $79
    add [hl]                                      ; $6e54: $86
    nop                                           ; $6e55: $00
    ld c, $e6                                     ; $6e56: $0e $e6
    ld c, $ee                                     ; $6e58: $0e $ee
    ld bc, $fb04                                  ; $6e5a: $01 $04 $fb
    ld a, [$fe00]                                 ; $6e5d: $fa $00 $fe
    nop                                           ; $6e60: $00
    cp $00                                        ; $6e61: $fe $00
    ld a, [hl]                                    ; $6e63: $7e
    ld a, a                                       ; $6e64: $7f
    sbc [hl]                                      ; $6e65: $9e
    rra                                           ; $6e66: $1f
    jr nz, jr_0a9_6de9                            ; $6e67: $20 $80

    rst $18                                       ; $6e69: $df
    ld [hl], l                                    ; $6e6a: $75
    nop                                           ; $6e6b: $00
    cp $83                                        ; $6e6c: $fe $83
    db $fc                                        ; $6e6e: $fc
    add e                                         ; $6e6f: $83
    db $fc                                        ; $6e70: $fc
    jr nz, jr_0a9_6dfa                            ; $6e71: $20 $87

    ld sp, hl                                     ; $6e73: $f9
    ld [bc], a                                    ; $6e74: $02
    nop                                           ; $6e75: $00
    ld hl, sp+$6f                                 ; $6e76: $f8 $6f
    db $10                                        ; $6e78: $10
    call c, RST_20                                ; $6e79: $dc $20 $00
    ldh a, [$4c]                                  ; $6e7c: $f0 $4c
    ldh [$90], a                                  ; $6e7e: $e0 $90
    add sp, $08                                   ; $6e80: $e8 $08
    ret c                                         ; $6e82: $d8

    add hl, de                                    ; $6e83: $19
    nop                                           ; $6e84: $00
    ld a, [hl-]                                   ; $6e85: $3a
    cp b                                          ; $6e86: $b8
    ld a, l                                       ; $6e87: $7d
    ld a, b                                       ; $6e88: $78

jr_0a9_6e89:
    rst $08                                       ; $6e89: $cf
    jr nc, jr_0a9_6e0d                            ; $6e8a: $30 $81

    ld h, [hl]                                    ; $6e8c: $66
    nop                                           ; $6e8d: $00
    jr c, jr_0a9_6e89                             ; $6e8e: $38 $f9

    cp $f8                                        ; $6e90: $fe $f8
    rlca                                          ; $6e92: $07
    and b                                         ; $6e93: $a0
    inc bc                                        ; $6e94: $03
    ld d, h                                       ; $6e95: $54
    nop                                           ; $6e96: $00
    ld b, e                                       ; $6e97: $43
    or a                                          ; $6e98: $b7
    and e                                         ; $6e99: $a3
    ld e, e                                       ; $6e9a: $5b
    ldh [$cf], a                                  ; $6e9b: $e0 $cf
    ldh a, [$27]                                  ; $6e9d: $f0 $27
    nop                                           ; $6e9f: $00
    ld a, b                                       ; $6ea0: $78
    inc de                                        ; $6ea1: $13
    jr c, jr_0a9_6eaf                             ; $6ea2: $38 $0b

    adc h                                         ; $6ea4: $8c
    add c                                         ; $6ea5: $81
    db $e4                                        ; $6ea6: $e4
    pop hl                                        ; $6ea7: $e1
    ld bc, $f6f1                                  ; $6ea8: $01 $f1 $f6
    ld sp, hl                                     ; $6eab: $f9
    ld a, [$f887]                                 ; $6eac: $fa $87 $f8

jr_0a9_6eaf:
    add [hl]                                      ; $6eaf: $86
    ld [bc], a                                    ; $6eb0: $02
    stop                                          ; $6eb1: $10 $00
    db $fd                                        ; $6eb3: $fd
    add d                                         ; $6eb4: $82
    db $fd                                        ; $6eb5: $fd
    add d                                         ; $6eb6: $82
    rst $38                                       ; $6eb7: $ff
    add b                                         ; $6eb8: $80
    add b                                         ; $6eb9: $80
    ld a, a                                       ; $6eba: $7f
    nop                                           ; $6ebb: $00
    ld a, h                                       ; $6ebc: $7c
    ld a, e                                       ; $6ebd: $7b
    db $fc                                        ; $6ebe: $fc
    rst $38                                       ; $6ebf: $ff
    db $fc                                        ; $6ec0: $fc
    ld [bc], a                                    ; $6ec1: $02
    cp $01                                        ; $6ec2: $fe $01
    ld d, b                                       ; $6ec4: $50
    nop                                           ; $6ec5: $00
    ld bc, $ff00                                  ; $6ec6: $01 $00 $ff
    dec b                                         ; $6ec9: $05
    nop                                           ; $6eca: $00
    ld h, e                                       ; $6ecb: $63
    sub e                                         ; $6ecc: $93
    ld [hl], e                                    ; $6ecd: $73
    adc e                                         ; $6ece: $8b
    nop                                           ; $6ecf: $00
    inc hl                                        ; $6ed0: $23
    ld e, e                                       ; $6ed1: $5b
    inc sp                                        ; $6ed2: $33
    ld c, e                                       ; $6ed3: $4b
    inc de                                        ; $6ed4: $13
    dec hl                                        ; $6ed5: $2b
    add e                                         ; $6ed6: $83
    sbc e                                         ; $6ed7: $9b
    nop                                           ; $6ed8: $00
    jp $e708                                      ; $6ed9: $c3 $08 $e7


    rst $20                                       ; $6edc: $e7
    ld bc, $01fc                                  ; $6edd: $01 $fc $01
    cp $c0                                        ; $6ee0: $fe $c0
    ld a, h                                       ; $6ee2: $7c
    ld [$1804], sp                                ; $6ee3: $08 $04 $18
    nop                                           ; $6ee6: $00
    nop                                           ; $6ee7: $00
    nop                                           ; $6ee8: $00
    ld bc, $00e4                                  ; $6ee9: $01 $e4 $00
    nop                                           ; $6eec: $00
    rst $38                                       ; $6eed: $ff
    nop                                           ; $6eee: $00
    di                                            ; $6eef: $f3
    ld e, $c4                                     ; $6ef0: $1e $c4
    jp hl                                         ; $6ef2: $e9


    adc a                                         ; $6ef3: $8f
    ldh a, [rP1]                                  ; $6ef4: $f0 $00
    rra                                           ; $6ef6: $1f
    sub b                                         ; $6ef7: $90
    dec a                                         ; $6ef8: $3d
    or d                                          ; $6ef9: $b2
    ccf                                           ; $6efa: $3f
    add d                                         ; $6efb: $82
    ccf                                           ; $6efc: $3f
    inc b                                         ; $6efd: $04
    nop                                           ; $6efe: $00
    rst $38                                       ; $6eff: $ff
    nop                                           ; $6f00: $00
    nop                                           ; $6f01: $00
    nop                                           ; $6f02: $00
    ld a, a                                       ; $6f03: $7f
    ccf                                           ; $6f04: $3f
    rra                                           ; $6f05: $1f
    adc a                                         ; $6f06: $8f
    nop                                           ; $6f07: $00
    rst $08                                       ; $6f08: $cf
    cpl                                           ; $6f09: $2f
    adc [hl]                                      ; $6f0a: $8e
    ld l, a                                       ; $6f0b: $6f
    call c, $991e                                 ; $6f0c: $dc $1e $99
    inc a                                         ; $6f0f: $3c
    add b                                         ; $6f10: $80
    db $10                                        ; $6f11: $10
    ld [$00ff], sp                                ; $6f12: $08 $ff $00
    ldh [rP1], a                                  ; $6f15: $e0 $00
    ret nz                                        ; $6f17: $c0

    add b                                         ; $6f18: $80
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    ccf                                           ; $6f1b: $3f
    dec c                                         ; $6f1c: $0d
    jr nc, jr_0a9_6f5c                            ; $6f1d: $30 $3d

    jp nz, $01fe                                  ; $6f1f: $c2 $fe $01

    nop                                           ; $6f22: $00
    nop                                           ; $6f23: $00
    cp $fe                                        ; $6f24: $fe $fe
    nop                                           ; $6f26: $00
    cp $00                                        ; $6f27: $fe $00
    ld b, c                                       ; $6f29: $41
    ld a, $81                                     ; $6f2a: $3e $81
    nop                                           ; $6f2c: $00
    sbc [hl]                                      ; $6f2d: $9e
    add $0f                                       ; $6f2e: $c6 $0f
    ld a, [c]                                     ; $6f30: $f2
    rlca                                          ; $6f31: $07
    rrca                                          ; $6f32: $0f
    jr nc, jr_0a9_6f64                            ; $6f33: $30 $2f

    nop                                           ; $6f35: $00
    ld d, d                                       ; $6f36: $52
    ld a, a                                       ; $6f37: $7f
    ld b, b                                       ; $6f38: $40
    ld [hl], e                                    ; $6f39: $73
    ld c, l                                       ; $6f3a: $4d
    ld d, $69                                     ; $6f3b: $16 $69
    ld e, $00                                     ; $6f3d: $1e $00
    ld h, l                                       ; $6f3f: $65
    cpl                                           ; $6f40: $2f
    ld [de], a                                    ; $6f41: $12
    rra                                           ; $6f42: $1f
    ld h, c                                       ; $6f43: $61
    ld sp, $03ba                                  ; $6f44: $31 $ba $03
    nop                                           ; $6f47: $00
    inc [hl]                                      ; $6f48: $34
    inc bc                                        ; $6f49: $03
    add h                                         ; $6f4a: $84
    inc bc                                        ; $6f4b: $03
    ld d, l                                       ; $6f4c: $55
    adc a                                         ; $6f4d: $8f
    rlca                                          ; $6f4e: $07
    jp c, Jump_000_0f00                           ; $6f4f: $da $00 $0f

    nop                                           ; $6f52: $00
    rst $18                                       ; $6f53: $df
    ld [$00d1], sp                                ; $6f54: $08 $d1 $00
    ld e, a                                       ; $6f57: $5f
    inc b                                         ; $6f58: $04
    nop                                           ; $6f59: $00
    db $db                                        ; $6f5a: $db
    ld c, b                                       ; $6f5b: $48

jr_0a9_6f5c:
    rst $30                                       ; $6f5c: $f7
    ld [bc], a                                    ; $6f5d: $02
    rst $28                                       ; $6f5e: $ef
    ld h, a                                       ; $6f5f: $67
    sbc b                                         ; $6f60: $98
    or b                                          ; $6f61: $b0
    nop                                           ; $6f62: $00
    ld c, [hl]                                    ; $6f63: $4e

jr_0a9_6f64:
    push hl                                       ; $6f64: $e5
    sbc d                                         ; $6f65: $9a
    add b                                         ; $6f66: $80
    ld [hl], a                                    ; $6f67: $77
    ld hl, sp-$7d                                 ; $6f68: $f8 $83
    ld a, b                                       ; $6f6a: $78
    nop                                           ; $6f6b: $00
    add c                                         ; $6f6c: $81
    db $fc                                        ; $6f6d: $fc
    ld bc, $20f8                                  ; $6f6e: $01 $f8 $20
    ld hl, sp+$66                                 ; $6f71: $f8 $66
    cp $00                                        ; $6f73: $fe $00
    ld a, h                                       ; $6f75: $7c
    or $28                                        ; $6f76: $f6 $28
    cp $00                                        ; $6f78: $fe $00
    dec bc                                        ; $6f7a: $0b
    or h                                          ; $6f7b: $b4
    adc a                                         ; $6f7c: $8f
    nop                                           ; $6f7d: $00
    sub b                                         ; $6f7e: $90
    add a                                         ; $6f7f: $87
    ret c                                         ; $6f80: $d8

    jp nz, $c7cd                                  ; $6f81: $c2 $cd $c7

    add sp, -$1f                                  ; $6f84: $e8 $e1
    nop                                           ; $6f86: $00
    ld a, [c]                                     ; $6f87: $f2
    ldh a, [$88]                                  ; $6f88: $f0 $88
    db $fc                                        ; $6f8a: $fc
    add e                                         ; $6f8b: $83
    dec hl                                        ; $6f8c: $2b
    rst $10                                       ; $6f8d: $d7
    sub d                                         ; $6f8e: $92
    nop                                           ; $6f8f: $00
    ld a, [hl]                                    ; $6f90: $7e
    db $fc                                        ; $6f91: $fc
    db $eb                                        ; $6f92: $eb
    ld hl, sp+$66                                 ; $6f93: $f8 $66
    db $fc                                        ; $6f95: $fc
    ld bc, $00f1                                  ; $6f96: $01 $f1 $00
    inc bc                                        ; $6f99: $03
    rlca                                          ; $6f9a: $07

jr_0a9_6f9b:
    rst $20                                       ; $6f9b: $e7
    rra                                           ; $6f9c: $1f
    rrca                                          ; $6f9d: $0f
    ld [c], a                                     ; $6f9e: $e2
    ld d, h                                       ; $6f9f: $54
    add b                                         ; $6fa0: $80
    nop                                           ; $6fa1: $00
    ld b, l                                       ; $6fa2: $45
    ld bc, $7838                                  ; $6fa3: $01 $38 $78
    db $fc                                        ; $6fa6: $fc
    db $fc                                        ; $6fa7: $fc
    db $fd                                        ; $6fa8: $fd
    db $fc                                        ; $6fa9: $fc
    nop                                           ; $6faa: $00
    ld sp, hl                                     ; $6fab: $f9
    ld sp, hl                                     ; $6fac: $f9
    db $fc                                        ; $6fad: $fc
    ld sp, hl                                     ; $6fae: $f9
    ld hl, sp+$78                                 ; $6faf: $f8 $78
    add [hl]                                      ; $6fb1: $86
    ld a, h                                       ; $6fb2: $7c
    nop                                           ; $6fb3: $00
    sub d                                         ; $6fb4: $92
    ld e, [hl]                                    ; $6fb5: $5e
    xor b                                         ; $6fb6: $a8
    ld a, h                                       ; $6fb7: $7c
    ld [de], a                                    ; $6fb8: $12
    ld a, b                                       ; $6fb9: $78
    or [hl]                                       ; $6fba: $b6
    ld a, h                                       ; $6fbb: $7c
    ld bc, $bcfe                                  ; $6fbc: $01 $fe $bc
    ld b, d                                       ; $6fbf: $42
    db $fc                                        ; $6fc0: $fc
    db $10                                        ; $6fc1: $10
    ld a, a                                       ; $6fc2: $7f
    add b                                         ; $6fc3: $80
    ld [bc], a                                    ; $6fc4: $02
    ld b, b                                       ; $6fc5: $40
    inc e                                         ; $6fc6: $1c
    rst $38                                       ; $6fc7: $ff
    rst $38                                       ; $6fc8: $ff
    add b                                         ; $6fc9: $80
    cp a                                          ; $6fca: $bf
    nop                                           ; $6fcb: $00
    inc bc                                        ; $6fcc: $03
    jr nc, jr_0a9_6f9b                            ; $6fcd: $30 $cc

    ld [$f8f3], sp                                ; $6fcf: $08 $f3 $f8
    add b                                         ; $6fd2: $80
    ld [bc], a                                    ; $6fd3: $02
    nop                                           ; $6fd4: $00
    ldh a, [$f3]                                  ; $6fd5: $f0 $f3
    db $f4                                        ; $6fd7: $f4
    di                                            ; $6fd8: $f3
    ldh a, [$f0]                                  ; $6fd9: $f0 $f0
    ld hl, sp+$00                                 ; $6fdb: $f8 $00
    ld [bc], a                                    ; $6fdd: $02
    db $fc                                        ; $6fde: $fc
    rst $38                                       ; $6fdf: $ff
    rst $38                                       ; $6fe0: $ff
    ld hl, sp+$24                                 ; $6fe1: $f8 $24
    ldh a, [$0d]                                  ; $6fe3: $f0 $0d
    nop                                           ; $6fe5: $00
    ld hl, sp+$45                                 ; $6fe6: $f8 $45
    ld sp, hl                                     ; $6fe8: $f9
    ld bc, $69f0                                  ; $6fe9: $01 $f0 $69
    ld [hl], b                                    ; $6fec: $70
    adc e                                         ; $6fed: $8b
    nop                                           ; $6fee: $00
    jr c, jr_0a9_7014                             ; $6fef: $38 $23

    nop                                           ; $6ff1: $00
    jp $0100                                      ; $6ff2: $c3 $00 $01


    ldh [rP1], a                                  ; $6ff5: $e0 $00
    ld [$ff00], sp                                ; $6ff7: $08 $00 $ff
    ld a, a                                       ; $6ffa: $7f
    add b                                         ; $6ffb: $80
    ld [bc], a                                    ; $6ffc: $02
    nop                                           ; $6ffd: $00
    add c                                         ; $6ffe: $81
    add d                                         ; $6fff: $82
    db $fc                                        ; $7000: $fc
    nop                                           ; $7001: $00
    add d                                         ; $7002: $82
    db $fc                                        ; $7003: $fc
    db $fc                                        ; $7004: $fc
    ld hl, sp-$08                                 ; $7005: $f8 $f8
    db $f4                                        ; $7007: $f4
    inc d                                         ; $7008: $14
    rst $20                                       ; $7009: $e7
    nop                                           ; $700a: $00
    ld c, b                                       ; $700b: $48
    adc a                                         ; $700c: $8f
    adc a                                         ; $700d: $8f
    rra                                           ; $700e: $1f
    rra                                           ; $700f: $1f
    ccf                                           ; $7010: $3f
    ccf                                           ; $7011: $3f
    ld a, a                                       ; $7012: $7f
    nop                                           ; $7013: $00

jr_0a9_7014:
    ld a, a                                       ; $7014: $7f
    ccf                                           ; $7015: $3f
    ld a, a                                       ; $7016: $7f
    nop                                           ; $7017: $00
    ld a, a                                       ; $7018: $7f
    add b                                         ; $7019: $80
    rst $38                                       ; $701a: $ff
    nop                                           ; $701b: $00
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    nop                                           ; $701e: $00
    ld sp, hl                                     ; $701f: $f9
    db $fc                                        ; $7020: $fc
    di                                            ; $7021: $f3
    ld sp, hl                                     ; $7022: $f9
    di                                            ; $7023: $f3
    rst $20                                       ; $7024: $e7
    nop                                           ; $7025: $00
    rst $20                                       ; $7026: $e7
    rst $08                                       ; $7027: $cf
    rst $08                                       ; $7028: $cf
    adc a                                         ; $7029: $8f
    adc a                                         ; $702a: $8f
    sbc [hl]                                      ; $702b: $9e
    cp $01                                        ; $702c: $fe $01
    nop                                           ; $702e: $00
    nop                                           ; $702f: $00
    cp $fe                                        ; $7030: $fe $fe
    nop                                           ; $7032: $00
    cp $00                                        ; $7033: $fe $00
    di                                            ; $7035: $f3
    ld hl, sp+$00                                 ; $7036: $f8 $00
    rst $00                                       ; $7038: $c7
    ld [c], a                                     ; $7039: $e2
    add $0f                                       ; $703a: $c6 $0f
    ld c, $1f                                     ; $703c: $0e $1f
    ld hl, sp-$0f                                 ; $703e: $f8 $f1
    nop                                           ; $7040: $00
    ldh a, [$e9]                                  ; $7041: $f0 $e9
    pop af                                        ; $7043: $f1
    db $e3                                        ; $7044: $e3
    pop hl                                        ; $7045: $e1
    db $d3                                        ; $7046: $d3
    ld [hl+], a                                   ; $7047: $22
    jp Jump_000_2000                              ; $7048: $c3 $00 $20


    jp $97c3                                      ; $704b: $c3 $c3 $97


    jp $01b7                                      ; $704e: $c3 $b7 $01


    cp $00                                        ; $7051: $fe $00
    ld [bc], a                                    ; $7053: $02
    cp $04                                        ; $7054: $fe $04
    db $fc                                        ; $7056: $fc
    inc c                                         ; $7057: $0c
    ld hl, sp-$08                                 ; $7058: $f8 $f8
    ldh [rP1], a                                  ; $705a: $e0 $00
    ldh a, [$e1]                                  ; $705c: $f0 $e1
    pop af                                        ; $705e: $f1
    pop bc                                        ; $705f: $c1
    pop hl                                        ; $7060: $e1
    jp $1f1e                                      ; $7061: $c3 $1e $1f


    nop                                           ; $7064: $00
    inc a                                         ; $7065: $3c
    ld a, [hl-]                                   ; $7066: $3a
    jr c, @+$7a                                   ; $7067: $38 $78

    ld [hl], b                                    ; $7069: $70
    ldh [$e0], a                                  ; $706a: $e0 $e0
    pop bc                                        ; $706c: $c1
    add b                                         ; $706d: $80
    ld bc, $8300                                  ; $706e: $01 $00 $83
    add e                                         ; $7071: $83
    add e                                         ; $7072: $83
    ld hl, $411e                                  ; $7073: $21 $1e $41
    ld a, $60                                     ; $7076: $3e $60
    ld a, [hl]                                    ; $7078: $7e
    ld b, b                                       ; $7079: $40
    nop                                           ; $707a: $00
    ld b, h                                       ; $707b: $44
    ld [$fcf9], sp                                ; $707c: $08 $f9 $fc
    pop af                                        ; $707f: $f1
    ld hl, sp-$79                                 ; $7080: $f8 $87
    nop                                           ; $7082: $00
    ld [hl], h                                    ; $7083: $74
    add a                                         ; $7084: $87
    ld h, h                                       ; $7085: $64
    add a                                         ; $7086: $87
    ld c, a                                       ; $7087: $4f
    add a                                         ; $7088: $87
    ld l, a                                       ; $7089: $6f
    add a                                         ; $708a: $87
    nop                                           ; $708b: $00
    ld e, a                                       ; $708c: $5f
    adc a                                         ; $708d: $8f
    rlca                                          ; $708e: $07
    adc a                                         ; $708f: $8f
    ld [$01fe], sp                                ; $7090: $08 $fe $01
    jp $b300                                      ; $7093: $c3 $00 $b3


    jp $c3a3                                      ; $7096: $c3 $a3 $c3


    add d                                         ; $7099: $82
    add e                                         ; $709a: $83
    add [hl]                                      ; $709b: $86
    ld b, $00                                     ; $709c: $06 $00
    add c                                         ; $709e: $81
    ld c, $89                                     ; $709f: $0e $89
    ld c, $86                                     ; $70a1: $0e $86
    rrca                                          ; $70a3: $0f
    ld c, $83                                     ; $70a4: $0e $83
    nop                                           ; $70a6: $00
    rlca                                          ; $70a7: $07
    add a                                         ; $70a8: $87
    rlca                                          ; $70a9: $07
    rrca                                          ; $70aa: $0f
    add a                                         ; $70ab: $87
    rrca                                          ; $70ac: $0f
    rrca                                          ; $70ad: $0f
    rrca                                          ; $70ae: $0f
    nop                                           ; $70af: $00
    ld c, $0e                                     ; $70b0: $0e $0e
    dec c                                         ; $70b2: $0d
    ld [de], a                                    ; $70b3: $12
    inc e                                         ; $70b4: $1c
    ld h, $38                                     ; $70b5: $26 $38
    ld a, [c]                                     ; $70b7: $f2
    nop                                           ; $70b8: $00
    db $e3                                        ; $70b9: $e3
    ld [c], a                                     ; $70ba: $e2
    rst $20                                       ; $70bb: $e7
    add $87                                       ; $70bc: $c6 $87
    adc [hl]                                      ; $70be: $8e
    rrca                                          ; $70bf: $0f
    rra                                           ; $70c0: $1f
    nop                                           ; $70c1: $00
    adc [hl]                                      ; $70c2: $8e
    rra                                           ; $70c3: $1f
    ld e, $21                                     ; $70c4: $1e $21
    ld e, $01                                     ; $70c6: $1e $01
    ld a, $fe                                     ; $70c8: $3e $fe

jr_0a9_70ca:
    jr nc, @-$7d                                  ; $70ca: $30 $81

    cp $c0                                        ; $70cc: $fe $c0
    ld [$1004], sp                                ; $70ce: $08 $04 $10
    rst $38                                       ; $70d1: $ff
    add b                                         ; $70d2: $80
    add b                                         ; $70d3: $80
    ld a, a                                       ; $70d4: $7f
    ld [bc], a                                    ; $70d5: $02
    rrca                                          ; $70d6: $0f
    rra                                           ; $70d7: $1f
    rra                                           ; $70d8: $1f
    rrca                                          ; $70d9: $0f
    rra                                           ; $70da: $1f
    nop                                           ; $70db: $00
    or [hl]                                       ; $70dc: $b6
    ld [$c000], sp                                ; $70dd: $08 $00 $c0
    ld b, $10                                     ; $70e0: $06 $10
    adc h                                         ; $70e2: $8c
    db $10                                        ; $70e3: $10
    ldh a, [$e0]                                  ; $70e4: $f0 $e0
    ldh a, [$e8]                                  ; $70e6: $f0 $e8
    jr jr_0a9_70ca                                ; $70e8: $18 $e0

    nop                                           ; $70ea: $00
    db $10                                        ; $70eb: $10
    ldh [$e1], a                                  ; $70ec: $e0 $e1
    pop af                                        ; $70ee: $f1
    ld [bc], a                                    ; $70ef: $02
    ccf                                           ; $70f0: $3f
    ld a, [hl]                                    ; $70f1: $7e
    ld a, a                                       ; $70f2: $7f
    inc b                                         ; $70f3: $04
    ld a, $7f                                     ; $70f4: $3e $7f
    ld a, [hl]                                    ; $70f6: $7e
    ld a, a                                       ; $70f7: $7f
    cp $84                                        ; $70f8: $fe $84
    jr jr_0a9_70fc                                ; $70fa: $18 $00

jr_0a9_70fc:
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    ld bc, $00dc                                  ; $70fe: $01 $dc $00
    ld [$ff00], sp                                ; $7101: $08 $00 $ff
    ld a, a                                       ; $7104: $7f
    add b                                         ; $7105: $80
    ld [bc], a                                    ; $7106: $02
    ld c, b                                       ; $7107: $48
    db $fc                                        ; $7108: $fc
    db $fc                                        ; $7109: $fc
    ldh a, [rP1]                                  ; $710a: $f0 $00
    ld [$f3e0], sp                                ; $710c: $08 $e0 $f3
    jp $c1e4                                      ; $710f: $c3 $e4 $c1


    adc $c1                                       ; $7112: $ce $c1
    nop                                           ; $7114: $00
    sbc $82                                       ; $7115: $de $82
    push bc                                       ; $7117: $c5
    add c                                         ; $7118: $81
    jp nz, $bf7f                                  ; $7119: $c2 $7f $bf

    ccf                                           ; $711c: $3f
    nop                                           ; $711d: $00
    ld b, b                                       ; $711e: $40
    cp a                                          ; $711f: $bf
    add b                                         ; $7120: $80
    sbc a                                         ; $7121: $9f
    and b                                         ; $7122: $a0
    sbc a                                         ; $7123: $9f
    ccf                                           ; $7124: $3f
    adc a                                         ; $7125: $8f
    nop                                           ; $7126: $00
    rra                                           ; $7127: $1f
    add a                                         ; $7128: $87
    ld c, a                                       ; $7129: $4f
    ld b, e                                       ; $712a: $43
    and a                                         ; $712b: $a7
    ld bc, $fefe                                  ; $712c: $01 $fe $fe
    ld h, b                                       ; $712f: $60
    nop                                           ; $7130: $00
    ld [bc], a                                    ; $7131: $02
    ld c, b                                       ; $7132: $48
    ld a, $08                                     ; $7133: $3e $08
    rst $38                                       ; $7135: $ff
    add b                                         ; $7136: $80
    cp $81                                        ; $7137: $fe $81
    cp $00                                        ; $7139: $fe $00
    add b                                         ; $713b: $80
    db $fc                                        ; $713c: $fc
    add d                                         ; $713d: $82
    ld hl, sp-$7c                                 ; $713e: $f8 $84
    ldh a, [$80]                                  ; $7140: $f0 $80
    add d                                         ; $7142: $82
    nop                                           ; $7143: $00
    add l                                         ; $7144: $85
    nop                                           ; $7145: $00
    adc a                                         ; $7146: $8f
    rra                                           ; $7147: $1f
    add hl, sp                                    ; $7148: $39
    cpl                                           ; $7149: $2f
    ld a, l                                       ; $714a: $7d
    rra                                           ; $714b: $1f
    nop                                           ; $714c: $00
    ld a, e                                       ; $714d: $7b
    ld l, $3f                                     ; $714e: $2e $3f
    dec e                                         ; $7150: $1d
    ld b, d                                       ; $7151: $42
    db $e3                                        ; $7152: $e3
    dec d                                         ; $7153: $15
    ld hl, $d300                                  ; $7154: $21 $00 $d3
    nop                                           ; $7157: $00
    ld a, c                                       ; $7158: $79
    inc a                                         ; $7159: $3c
    ld h, h                                       ; $715a: $64
    inc a                                         ; $715b: $3c
    ld c, [hl]                                    ; $715c: $4e
    ld a, b                                       ; $715d: $78
    ld bc, $7cee                                  ; $715e: $01 $ee $7c
    adc $24                                       ; $7161: $ce $24
    sbc $8a                                       ; $7163: $de $8a
    ld a, [hl]                                    ; $7165: $7e
    ld a, $30                                     ; $7166: $3e $30
    jr nz, jr_0a9_716b                            ; $7168: $20 $01

    ld a, [hl]                                    ; $716a: $7e

jr_0a9_716b:
    ld [bc], a                                    ; $716b: $02
    ld [$c041], sp                                ; $716c: $08 $41 $c0
    rst $28                                       ; $716f: $ef
    add c                                         ; $7170: $81
    adc $00                                       ; $7171: $ce $00
    adc a                                         ; $7173: $8f
    inc a                                         ; $7174: $3c
    sub a                                         ; $7175: $97
    cp [hl]                                       ; $7176: $be
    ccf                                           ; $7177: $3f
    ld c, e                                       ; $7178: $4b
    ccf                                           ; $7179: $3f
    ld d, e                                       ; $717a: $53
    nop                                           ; $717b: $00
    scf                                           ; $717c: $37
    ld c, c                                       ; $717d: $49
    dec bc                                        ; $717e: $0b
    ld [hl], h                                    ; $717f: $74
    ld bc, $50ea                                  ; $7180: $01 $ea $50
    xor e                                         ; $7183: $ab
    nop                                           ; $7184: $00
    ldh [$15], a                                  ; $7185: $e0 $15
    ld b, b                                       ; $7187: $40
    xor e                                         ; $7188: $ab
    adc d                                         ; $7189: $8a
    ld a, e                                       ; $718a: $7b
    ld [$00fb], sp                                ; $718b: $08 $fb $00
    xor [hl]                                      ; $718e: $ae
    rst $18                                       ; $718f: $df
    inc hl                                        ; $7190: $23
    ei                                            ; $7191: $fb
    db $f4                                        ; $7192: $f4
    and b                                         ; $7193: $a0
    cp $f1                                        ; $7194: $fe $f1
    nop                                           ; $7196: $00
    ld b, h                                       ; $7197: $44
    nop                                           ; $7198: $00
    add hl, sp                                    ; $7199: $39
    nop                                           ; $719a: $00
    ld d, h                                       ; $719b: $54
    nop                                           ; $719c: $00
    ld bc, $0000                                  ; $719d: $01 $00 $00
    ld [bc], a                                    ; $71a0: $02
    push de                                       ; $71a1: $d5
    nop                                           ; $71a2: $00
    adc e                                         ; $71a3: $8b
    ccf                                           ; $71a4: $3f
    ld hl, $890f                                  ; $71a5: $21 $0f $89
    nop                                           ; $71a8: $00
    ld b, $45                                     ; $71a9: $06 $45
    ld b, d                                       ; $71ab: $42
    or e                                          ; $71ac: $b3
    or c                                          ; $71ad: $b1
    db $fc                                        ; $71ae: $fc
    ld b, b                                       ; $71af: $40
    ld hl, sp+$00                                 ; $71b0: $f8 $00
    cp $d4                                        ; $71b2: $fe $d4
    db $fc                                        ; $71b4: $fc
    ld c, d                                       ; $71b5: $4a
    scf                                           ; $71b6: $37
    or a                                          ; $71b7: $b7
    sub e                                         ; $71b8: $93
    ld d, e                                       ; $71b9: $53
    nop                                           ; $71ba: $00
    ret nz                                        ; $71bb: $c0

    and b                                         ; $71bc: $a0
    add sp, -$7a                                  ; $71bd: $e8 $86
    sbc $05                                       ; $71bf: $de $05
    rst $38                                       ; $71c1: $ff
    add b                                         ; $71c2: $80
    nop                                           ; $71c3: $00
    push af                                       ; $71c4: $f5
    adc b                                         ; $71c5: $88
    add b                                         ; $71c6: $80
    ccf                                           ; $71c7: $3f
    add hl, hl                                    ; $71c8: $29
    ld d, h                                       ; $71c9: $54
    nop                                           ; $71ca: $00
    cp b                                          ; $71cb: $b8
    nop                                           ; $71cc: $00
    sbc [hl]                                      ; $71cd: $9e
    db $e3                                        ; $71ce: $e3
    ld a, [$00fe]                                 ; $71cf: $fa $fe $00
    nop                                           ; $71d2: $00
    ld a, [$0045]                                 ; $71d3: $fa $45 $00
    rst $38                                       ; $71d6: $ff
    ld de, $f700                                  ; $71d7: $11 $00 $f7
    inc b                                         ; $71da: $04
    db $db                                        ; $71db: $db
    nop                                           ; $71dc: $00
    xor d                                         ; $71dd: $aa
    nop                                           ; $71de: $00
    db $10                                        ; $71df: $10
    xor [hl]                                      ; $71e0: $ae
    nop                                           ; $71e1: $00
    ld d, h                                       ; $71e2: $54
    inc a                                         ; $71e3: $3c
    inc a                                         ; $71e4: $3c
    ld bc, $00c2                                  ; $71e5: $01 $c2 $00
    rst $38                                       ; $71e8: $ff
    ld bc, $ef00                                  ; $71e9: $01 $00 $ef
    add b                                         ; $71ec: $80
    ret z                                         ; $71ed: $c8

    ld bc, $0090                                  ; $71ee: $01 $90 $00
    ld bc, $0703                                  ; $71f1: $01 $03 $07
    dec bc                                        ; $71f4: $0b
    scf                                           ; $71f5: $37
    pop bc                                        ; $71f6: $c1
    cp $14                                        ; $71f7: $fe $14
    nop                                           ; $71f9: $00
    cp $03                                        ; $71fa: $fe $03
    nop                                           ; $71fc: $00
    rst $18                                       ; $71fd: $df
    nop                                           ; $71fe: $00
    ld bc, $00d6                                  ; $71ff: $01 $d6 $00
    nop                                           ; $7202: $00
    rst $38                                       ; $7203: $ff
    nop                                           ; $7204: $00
    add c                                         ; $7205: $81
    ld a, a                                       ; $7206: $7f
    ld hl, sp+$7c                                 ; $7207: $f8 $7c
    ldh a, [$79]                                  ; $7209: $f0 $79
    nop                                           ; $720b: $00
    add e                                         ; $720c: $83
    db $f4                                        ; $720d: $f4
    add a                                         ; $720e: $87
    db $eb                                        ; $720f: $eb
    adc a                                         ; $7210: $8f
    add $8f                                       ; $7211: $c6 $8f
    call nc, $ff00                                ; $7213: $d4 $00 $ff
    rst $38                                       ; $7216: $ff
    ld bc, $0002                                  ; $7217: $01 $02 $00
    db $fc                                        ; $721a: $fc
    ld hl, sp+$77                                 ; $721b: $f8 $77
    nop                                           ; $721d: $00
    ldh [rSB], a                                  ; $721e: $e0 $01
    ld hl, sp+$40                                 ; $7220: $f8 $40
    ld hl, sp+$7b                                 ; $7222: $f8 $7b
    ldh a, [$f3]                                  ; $7224: $f0 $f3
    nop                                           ; $7226: $00
    rst $38                                       ; $7227: $ff
    nop                                           ; $7228: $00
    nop                                           ; $7229: $00
    nop                                           ; $722a: $00
    ld a, a                                       ; $722b: $7f
    add b                                         ; $722c: $80
    ccf                                           ; $722d: $3f
    ld b, b                                       ; $722e: $40
    nop                                           ; $722f: $00
    sbc a                                         ; $7230: $9f
    ccf                                           ; $7231: $3f
    rst $08                                       ; $7232: $cf
    rra                                           ; $7233: $1f
    ld c, a                                       ; $7234: $4f
    adc a                                         ; $7235: $8f
    daa                                           ; $7236: $27
    rst $00                                       ; $7237: $c7
    ld [bc], a                                    ; $7238: $02
    cp $01                                        ; $7239: $fe $01
    nop                                           ; $723b: $00
    cp $fe                                        ; $723c: $fe $fe
    nop                                           ; $723e: $00
    ld [bc], a                                    ; $723f: $02
    jr c, @-$6f                                   ; $7240: $38 $8f

    nop                                           ; $7242: $00
    sub l                                         ; $7243: $95
    adc a                                         ; $7244: $8f
    or b                                          ; $7245: $b0
    dec e                                         ; $7246: $1d
    sub d                                         ; $7247: $92
    rra                                           ; $7248: $1f
    sub b                                         ; $7249: $90
    adc a                                         ; $724a: $8f
    nop                                           ; $724b: $00
    or b                                          ; $724c: $b0
    adc a                                         ; $724d: $8f
    sub b                                         ; $724e: $90
    adc a                                         ; $724f: $8f
    ret nc                                        ; $7250: $d0

    add a                                         ; $7251: $87
    ret z                                         ; $7252: $c8

    ld bc, $f800                                  ; $7253: $01 $00 $f8
    inc bc                                        ; $7256: $03
    ldh a, [rSB]                                  ; $7257: $f0 $01
    add sp, $03                                   ; $7259: $e8 $03
    ret nc                                        ; $725b: $d0

    ld a, [$a500]                                 ; $725c: $fa $00 $a5
    db $f4                                        ; $725f: $f4
    ld a, [bc]                                    ; $7260: $0a
    xor c                                         ; $7261: $a9
    ld d, l                                       ; $7262: $55
    inc bc                                        ; $7263: $03
    ld a, [$0027]                                 ; $7264: $fa $27 $00
    rst $00                                       ; $7267: $c7
    rlca                                          ; $7268: $07
    rst $20                                       ; $7269: $e7
    rla                                           ; $726a: $17
    rst $20                                       ; $726b: $e7
    nop                                           ; $726c: $00
    ret nz                                        ; $726d: $c0

    nop                                           ; $726e: $00
    ld bc, $3e3f                                  ; $726f: $01 $3f $3e
    db $dd                                        ; $7272: $dd
    ldh a, [$f3]                                  ; $7273: $f0 $f3
    db $fc                                        ; $7275: $fc
    dec l                                         ; $7276: $2d
    inc a                                         ; $7277: $3c
    jr jr_0a9_727a                                ; $7278: $18 $00

jr_0a9_727a:
    ld a, [hl]                                    ; $727a: $7e
    nop                                           ; $727b: $00
    ld e, $3f                                     ; $727c: $1e $3f
    adc [hl]                                      ; $727e: $8e
    ld e, a                                       ; $727f: $5f
    ld h, [hl]                                    ; $7280: $66
    add [hl]                                      ; $7281: $86
    nop                                           ; $7282: $00
    ld [hl-], a                                   ; $7283: $32
    jp nz, $ec83                                  ; $7284: $c2 $83 $ec

    add c                                         ; $7287: $81
    or $f0                                        ; $7288: $f6 $f0
    ld a, c                                       ; $728a: $79
    inc b                                         ; $728b: $04
    ld hl, sp+$7c                                 ; $728c: $f8 $7c
    add c                                         ; $728e: $81
    ld a, a                                       ; $728f: $7f
    add b                                         ; $7290: $80
    ld [bc], a                                    ; $7291: $02
    db $10                                        ; $7292: $10
    inc bc                                        ; $7293: $03
    pop af                                        ; $7294: $f1
    add b                                         ; $7295: $80
    ld [bc], a                                    ; $7296: $02
    nop                                           ; $7297: $00
    ld h, l                                       ; $7298: $65
    inc bc                                        ; $7299: $03
    inc b                                         ; $729a: $04
    rlca                                          ; $729b: $07
    inc c                                         ; $729c: $0c
    rlca                                          ; $729d: $07
    db $ec                                        ; $729e: $ec
    nop                                           ; $729f: $00
    ldh [$e7], a                                  ; $72a0: $e0 $e7
    db $e4                                        ; $72a2: $e4
    db $e3                                        ; $72a3: $e3
    and b                                         ; $72a4: $a0
    ld e, [hl]                                    ; $72a5: $5e
    nop                                           ; $72a6: $00
    db $fc                                        ; $72a7: $fc
    nop                                           ; $72a8: $00
    ld b, b                                       ; $72a9: $40
    cp [hl]                                       ; $72aa: $be
    nop                                           ; $72ab: $00
    db $fc                                        ; $72ac: $fc
    add b                                         ; $72ad: $80
    ld a, d                                       ; $72ae: $7a
    nop                                           ; $72af: $00
    db $f4                                        ; $72b0: $f4
    nop                                           ; $72b1: $00
    ld bc, $02a8                                  ; $72b2: $01 $a8 $02
    nop                                           ; $72b5: $00
    ld [de], a                                    ; $72b6: $12
    ld [c], a                                     ; $72b7: $e2
    ld [$02f0], sp                                ; $72b8: $08 $f0 $02
    ldh a, [$8d]                                  ; $72bb: $f0 $8d
    ld hl, sp+$05                                 ; $72bd: $f8 $05
    ld hl, sp-$7b                                 ; $72bf: $f8 $85
    inc b                                         ; $72c1: $04
    ld [$60f0], sp                                ; $72c2: $08 $f0 $60
    dec c                                         ; $72c5: $0d
    ld [hl], $18                                  ; $72c6: $36 $18
    ld b, $28                                     ; $72c8: $06 $28
    ld a, a                                       ; $72ca: $7f
    rst $38                                       ; $72cb: $ff
    db $e4                                        ; $72cc: $e4
    db $e3                                        ; $72cd: $e3
    ld a, [c]                                     ; $72ce: $f2
    nop                                           ; $72cf: $00
    pop af                                        ; $72d0: $f1
    di                                            ; $72d1: $f3
    ld hl, sp-$07                                 ; $72d2: $f8 $f9
    db $fc                                        ; $72d4: $fc
    db $fc                                        ; $72d5: $fc
    ld [bc], a                                    ; $72d6: $02
    cp $48                                        ; $72d7: $fe $48
    ld bc, $08bc                                  ; $72d9: $01 $bc $08
    ld a, [hl+]                                   ; $72dc: $2a
    push de                                       ; $72dd: $d5
    xor l                                         ; $72de: $ad
    nop                                           ; $72df: $00
    ld d, l                                       ; $72e0: $55
    add b                                         ; $72e1: $80
    ld a, [bc]                                    ; $72e2: $0a
    nop                                           ; $72e3: $00
    ld a, a                                       ; $72e4: $7f
    pop hl                                        ; $72e5: $e1
    inc c                                         ; $72e6: $0c
    ccf                                           ; $72e7: $3f
    add b                                         ; $72e8: $80
    ld b, b                                       ; $72e9: $40
    nop                                           ; $72ea: $00
    rst $38                                       ; $72eb: $ff
    nop                                           ; $72ec: $00
    ld [$12f0], sp                                ; $72ed: $08 $f0 $12
    ld [c], a                                     ; $72f0: $e2
    ld [hl-], a                                   ; $72f1: $32
    jp nz, $8666                                  ; $72f2: $c2 $66 $86

    inc b                                         ; $72f5: $04
    adc [hl]                                      ; $72f6: $8e
    ld e, a                                       ; $72f7: $5f
    ld e, $3f                                     ; $72f8: $1e $3f
    ld a, [hl]                                    ; $72fa: $7e
    call c, RST_00                                ; $72fb: $dc $00 $00
    ld bc, $00b4                                  ; $72fe: $01 $b4 $00
    add hl, bc                                    ; $7301: $09
    nop                                           ; $7302: $00
    rst $38                                       ; $7303: $ff
    ld a, a                                       ; $7304: $7f
    add b                                         ; $7305: $80
    ld [bc], a                                    ; $7306: $02
    ld c, b                                       ; $7307: $48
    rst $38                                       ; $7308: $ff
    nop                                           ; $7309: $00
    ld bc, $8058                                  ; $730a: $01 $58 $80
    stop                                          ; $730d: $10 $00
    cp $00                                        ; $730f: $fe $00
    cp $03                                        ; $7311: $fe $03
    db $fd                                        ; $7313: $fd
    cp $02                                        ; $7314: $fe $02
    nop                                           ; $7316: $00
    db $fc                                        ; $7317: $fc
    ld bc, $f9fc                                  ; $7318: $01 $fc $f9
    ld hl, sp-$07                                 ; $731b: $f8 $f9
    ld b, c                                       ; $731d: $41
    ld a, [hl]                                    ; $731e: $7e
    nop                                           ; $731f: $00
    ccf                                           ; $7320: $3f
    ld bc, $7e3f                                  ; $7321: $01 $3f $7e
    ccf                                           ; $7324: $3f
    ld e, [hl]                                    ; $7325: $5e
    rra                                           ; $7326: $1f
    sbc [hl]                                      ; $7327: $9e
    ld [bc], a                                    ; $7328: $02
    rra                                           ; $7329: $1f
    sbc [hl]                                      ; $732a: $9e
    add c                                         ; $732b: $81
    sbc [hl]                                      ; $732c: $9e
    ld de, $3e0e                                  ; $732d: $11 $0e $3e
    ld e, b                                       ; $7330: $58
    ld a, a                                       ; $7331: $7f
    ld b, b                                       ; $7332: $40
    add b                                         ; $7333: $80
    ccf                                           ; $7334: $3f
    ld d, b                                       ; $7335: $50
    cp $09                                        ; $7336: $fe $09
    pop af                                        ; $7338: $f1
    ld hl, sp+$03                                 ; $7339: $f8 $03
    ld a, [c]                                     ; $733b: $f2
    nop                                           ; $733c: $00
    rlca                                          ; $733d: $07
    pop hl                                        ; $733e: $e1
    rlca                                          ; $733f: $07
    rrc a                                         ; $7340: $cb $0f
    sub d                                         ; $7342: $92
    ld e, $27                                     ; $7343: $1e $27
    ld bc, $383f                                  ; $7345: $01 $3f $38
    ld b, [hl]                                    ; $7348: $46
    ld [hl], b                                    ; $7349: $70
    xor l                                         ; $734a: $ad
    rra                                           ; $734b: $1f
    ld l, $02                                     ; $734c: $2e $02
    jr nz, jr_0a9_73b0                            ; $734e: $20 $60

    adc $02                                       ; $7350: $ce $02
    jr jr_0a9_73d2                                ; $7352: $18 $7e

    nop                                           ; $7354: $00
    add c                                         ; $7355: $81
    rlca                                          ; $7356: $07
    rst $38                                       ; $7357: $ff
    rrca                                          ; $7358: $0f
    db $fc                                        ; $7359: $fc
    nop                                           ; $735a: $00
    di                                            ; $735b: $f3
    add a                                         ; $735c: $87
    push af                                       ; $735d: $f5
    add a                                         ; $735e: $87
    add a                                         ; $735f: $87
    di                                            ; $7360: $f3
    add a                                         ; $7361: $87
    pop af                                        ; $7362: $f1
    nop                                           ; $7363: $00
    jp Jump_000_1ec0                              ; $7364: $c3 $c0 $1e


    ld bc, $0906                                  ; $7367: $01 $06 $09
    jr jr_0a9_73d3                                ; $736a: $18 $67

    nop                                           ; $736c: $00
    jp c, Jump_0a9_7420                           ; $736d: $da $20 $74

    add b                                         ; $7370: $80
    ld b, b                                       ; $7371: $40
    xor b                                         ; $7372: $a8
    and b                                         ; $7373: $a0
    ld d, b                                       ; $7374: $50
    nop                                           ; $7375: $00
    ld e, [hl]                                    ; $7376: $5e
    cp [hl]                                       ; $7377: $be
    cp h                                          ; $7378: $bc
    ld a, h                                       ; $7379: $7c
    ld a, d                                       ; $737a: $7a
    add b                                         ; $737b: $80
    db $f4                                        ; $737c: $f4
    nop                                           ; $737d: $00
    nop                                           ; $737e: $00
    add sp, $01                                   ; $737f: $e8 $01
    ret nc                                        ; $7381: $d0

    inc bc                                        ; $7382: $03
    and b                                         ; $7383: $a0
    dec b                                         ; $7384: $05
    ld b, b                                       ; $7385: $40
    dec bc                                        ; $7386: $0b
    add b                                         ; $7387: $80
    jr c, jr_0a9_738a                             ; $7388: $38 $00

jr_0a9_738a:
    sbc $1f                                       ; $738a: $de $1f
    sbc $3f                                       ; $738c: $de $3f
    sbc [hl]                                      ; $738e: $9e
    ccf                                           ; $738f: $3f
    cp [hl]                                       ; $7390: $be
    nop                                           ; $7391: $00
    ccf                                           ; $7392: $3f

jr_0a9_7393:
    cp [hl]                                       ; $7393: $be
    ld b, c                                       ; $7394: $41
    ccf                                           ; $7395: $3f
    ld bc, $747f                                  ; $7396: $01 $7f $74
    add a                                         ; $7399: $87
    nop                                           ; $739a: $00
    ld a, b                                       ; $739b: $78
    adc e                                         ; $739c: $8b
    ld [bc], a                                    ; $739d: $02
    ei                                            ; $739e: $fb
    dec b                                         ; $739f: $05
    db $fc                                        ; $73a0: $fc
    ld a, [hl]                                    ; $73a1: $7e
    db $fc                                        ; $73a2: $fc
    db $10                                        ; $73a3: $10
    ld a, a                                       ; $73a4: $7f
    cp $80                                        ; $73a5: $fe $80
    call z, $d600                                 ; $73a7: $cc $00 $d6
    ld l, $ec                                     ; $73aa: $2e $ec
    inc e                                         ; $73ac: $1c
    nop                                           ; $73ad: $00
    ld d, h                                       ; $73ae: $54
    xor h                                         ; $73af: $ac

jr_0a9_73b0:
    adc d                                         ; $73b0: $8a
    halt                                          ; $73b1: $76
    ld a, d                                       ; $73b2: $7a
    and l                                         ; $73b3: $a5
    inc [hl]                                      ; $73b4: $34
    ld a, [bc]                                    ; $73b5: $0a
    nop                                           ; $73b6: $00
    ld a, b                                       ; $73b7: $78
    sbc b                                         ; $73b8: $98
    rra                                           ; $73b9: $1f
    ldh [$81], a                                  ; $73ba: $e0 $81
    sub [hl]                                      ; $73bc: $96
    inc bc                                        ; $73bd: $03
    inc c                                         ; $73be: $0c
    nop                                           ; $73bf: $00
    inc bc                                        ; $73c0: $03
    ld sp, hl                                     ; $73c1: $f9
    rlca                                          ; $73c2: $07
    di                                            ; $73c3: $f3
    rrca                                          ; $73c4: $0f
    rla                                           ; $73c5: $17
    rra                                           ; $73c6: $1f
    cpl                                           ; $73c7: $2f
    nop                                           ; $73c8: $00
    nop                                           ; $73c9: $00
    ccf                                           ; $73ca: $3f
    rst $38                                       ; $73cb: $ff
    ld a, a                                       ; $73cc: $7f
    ld a, [hl]                                    ; $73cd: $7e
    ld bc, $01fe                                  ; $73ce: $01 $fe $01
    ret nz                                        ; $73d1: $c0

jr_0a9_73d2:
    pop de                                        ; $73d2: $d1

jr_0a9_73d3:
    nop                                           ; $73d3: $00
    ld [bc], a                                    ; $73d4: $02
    jr nz, jr_0a9_73d7                            ; $73d5: $20 $00

jr_0a9_73d7:
    nop                                           ; $73d7: $00
    nop                                           ; $73d8: $00
    ld bc, $00da                                  ; $73d9: $01 $da $00
    nop                                           ; $73dc: $00

jr_0a9_73dd:
    rrca                                          ; $73dd: $0f
    rst $38                                       ; $73de: $ff
    ld [hl], e                                    ; $73df: $73
    ldh a, [$7e]                                  ; $73e0: $f0 $7e
    sub c                                         ; $73e2: $91
    ld e, h                                       ; $73e3: $5c
    sub e                                         ; $73e4: $93
    nop                                           ; $73e5: $00
    ld e, l                                       ; $73e6: $5d
    add a                                         ; $73e7: $87
    ld e, $87                                     ; $73e8: $1e $87
    jr c, jr_0a9_7393                             ; $73ea: $38 $a7

    inc a                                         ; $73ec: $3c
    or e                                          ; $73ed: $b3
    nop                                           ; $73ee: $00
    cp a                                          ; $73ef: $bf
    ret nz                                        ; $73f0: $c0

    jr nz, jr_0a9_7432                            ; $73f1: $20 $3f

    rrca                                          ; $73f3: $0f
    rst $08                                       ; $73f4: $cf
    rst $00                                       ; $73f5: $c7
    daa                                           ; $73f6: $27
    nop                                           ; $73f7: $00
    db $e3                                        ; $73f8: $e3
    inc de                                        ; $73f9: $13
    di                                            ; $73fa: $f3
    dec bc                                        ; $73fb: $0b
    ei                                            ; $73fc: $fb
    inc bc                                        ; $73fd: $03
    ld sp, hl                                     ; $73fe: $f9
    dec b                                         ; $73ff: $05
    nop                                           ; $7400: $00
    rst $38                                       ; $7401: $ff
    nop                                           ; $7402: $00
    nop                                           ; $7403: $00
    nop                                           ; $7404: $00
    db $e3                                        ; $7405: $e3
    jr nz, jr_0a9_73dd                            ; $7406: $20 $d5

    ld c, c                                       ; $7408: $49
    nop                                           ; $7409: $00
    and e                                         ; $740a: $a3
    sbc l                                         ; $740b: $9d
    ld b, c                                       ; $740c: $41
    ld a, [hl]                                    ; $740d: $7e
    ld h, b                                       ; $740e: $60
    rra                                           ; $740f: $1f
    ld h, b                                       ; $7410: $60
    ld e, a                                       ; $7411: $5f
    ld [bc], a                                    ; $7412: $02
    cp $01                                        ; $7413: $fe $01
    nop                                           ; $7415: $00
    cp $fe                                        ; $7416: $fe $fe
    nop                                           ; $7418: $00
    ld [bc], a                                    ; $7419: $02
    nop                                           ; $741a: $00
    add b                                         ; $741b: $80
    nop                                           ; $741c: $00
    ld a, [hl]                                    ; $741d: $7e
    ret nz                                        ; $741e: $c0

    cp [hl]                                       ; $741f: $be

Jump_0a9_7420:
    ld a, $5e                                     ; $7420: $3e $5e
    sbc [hl]                                      ; $7422: $9e
    add a                                         ; $7423: $87
    cp c                                          ; $7424: $b9
    nop                                           ; $7425: $00
    add e                                         ; $7426: $83
    call c, $c627                                 ; $7427: $dc $27 $c6
    dec de                                        ; $742a: $1b
    db $e3                                        ; $742b: $e3
    ld a, h                                       ; $742c: $7c
    ld hl, sp+$00                                 ; $742d: $f8 $00
    ld a, a                                       ; $742f: $7f
    cp $7f                                        ; $7430: $fe $7f

jr_0a9_7432:
    add b                                         ; $7432: $80
    ld a, a                                       ; $7433: $7f
    add b                                         ; $7434: $80
    ret nz                                        ; $7435: $c0

    db $fc                                        ; $7436: $fc
    nop                                           ; $7437: $00
    ld h, d                                       ; $7438: $62
    db $fc                                        ; $7439: $fc
    ld a, [hl]                                    ; $743a: $7e
    adc $3e                                       ; $743b: $ce $3e
    ld h, a                                       ; $743d: $67
    ld l, h                                       ; $743e: $6c
    ld d, e                                       ; $743f: $53
    nop                                           ; $7440: $00
    ld [hl], $29                                  ; $7441: $36 $29
    rrca                                          ; $7443: $0f
    sub a                                         ; $7444: $97
    add a                                         ; $7445: $87
    ld c, e                                       ; $7446: $4b
    rra                                           ; $7447: $1f
    ld l, e                                       ; $7448: $6b
    nop                                           ; $7449: $00
    rrca                                          ; $744a: $0f

jr_0a9_744b:
    or l                                          ; $744b: $b5
    rlca                                          ; $744c: $07
    bit 0, e                                      ; $744d: $cb $43
    and l                                         ; $744f: $a5
    ld [hl], e                                    ; $7450: $73
    and l                                         ; $7451: $a5
    nop                                           ; $7452: $00
    cp c                                          ; $7453: $b9
    ld a, [c]                                     ; $7454: $f2
    ld a, l                                       ; $7455: $7d
    pop bc                                        ; $7456: $c1
    ld a, [hl]                                    ; $7457: $7e
    and b                                         ; $7458: $a0
    pop de                                        ; $7459: $d1
    rra                                           ; $745a: $1f
    nop                                           ; $745b: $00
    pop bc                                        ; $745c: $c1
    cpl                                           ; $745d: $2f
    ret                                           ; $745e: $c9


    cpl                                           ; $745f: $2f
    jp hl                                         ; $7460: $e9


    rrca                                          ; $7461: $0f
    ldh a, [$e6]                                  ; $7462: $f0 $e6
    inc bc                                        ; $7464: $03
    ldh a, [$62]                                  ; $7465: $f0 $62
    ld [hl], b                                    ; $7467: $70
    or [hl]                                       ; $7468: $b6
    jr c, @+$74                                   ; $7469: $38 $72

    inc [hl]                                      ; $746b: $34
    ld [$4804], sp                                ; $746c: $08 $04 $48
    nop                                           ; $746f: $00
    xor $c3                                       ; $7470: $ee $c3

jr_0a9_7472:
    and $e3                                       ; $7472: $e6 $e3
    ld d, $e5                                     ; $7474: $16 $e5
    ld a, [bc]                                    ; $7476: $0a
    ld sp, hl                                     ; $7477: $f9
    nop                                           ; $7478: $00
    ld sp, hl                                     ; $7479: $f9
    ld a, [$fdf8]                                 ; $747a: $fa $f8 $fd
    db $fc                                        ; $747d: $fc
    db $fd                                        ; $747e: $fd
    cp $fc                                        ; $747f: $fe $fc
    nop                                           ; $7481: $00
    sbc [hl]                                      ; $7482: $9e
    ld e, [hl]                                    ; $7483: $5e
    rst $18                                       ; $7484: $df
    rra                                           ; $7485: $1f
    ret nz                                        ; $7486: $c0

    ld c, a                                       ; $7487: $4f
    ret nz                                        ; $7488: $c0

    rst $18                                       ; $7489: $df
    nop                                           ; $748a: $00
    ld c, a                                       ; $748b: $4f
    adc a                                         ; $748c: $8f
    ld c, a                                       ; $748d: $4f
    xor a                                         ; $748e: $af
    cpl                                           ; $748f: $2f
    ld c, a                                       ; $7490: $4f
    ld c, a                                       ; $7491: $4f
    cpl                                           ; $7492: $2f
    nop                                           ; $7493: $00

jr_0a9_7494:
    ld a, [hl-]                                   ; $7494: $3a
    ld d, l                                       ; $7495: $55
    ld a, [de]                                    ; $7496: $1a
    ld a, l                                       ; $7497: $7d
    ld a, [de]                                    ; $7498: $1a
    xor l                                         ; $7499: $ad
    jr jr_0a9_744b                                ; $749a: $18 $af

    nop                                           ; $749c: $00
    adc b                                         ; $749d: $88
    ccf                                           ; $749e: $3f
    adc b                                         ; $749f: $88
    ld e, a                                       ; $74a0: $5f
    jp z, $ca9d                                   ; $74a1: $ca $9d $ca

    db $dd                                        ; $74a4: $dd
    add l                                         ; $74a5: $85
    ld b, b                                       ; $74a6: $40
    ld c, b                                       ; $74a7: $48
    add b                                         ; $74a8: $80
    rst $38                                       ; $74a9: $ff
    ld a, a                                       ; $74aa: $7f
    add b                                         ; $74ab: $80
    sbc h                                         ; $74ac: $9c
    nop                                           ; $74ad: $00
    ld bc, $00b3                                  ; $74ae: $01 $b3 $00
    ret nz                                        ; $74b1: $c0

    inc bc                                        ; $74b2: $03
    db $10                                        ; $74b3: $10
    cp h                                          ; $74b4: $bc
    ld [$305f], sp                                ; $74b5: $08 $5f $30
    ld e, a                                       ; $74b8: $5f
    jr nc, @+$31                                  ; $74b9: $30 $2f

    ld e, a                                       ; $74bb: $5f
    nop                                           ; $74bc: $00
    cpl                                           ; $74bd: $2f
    sbc a                                         ; $74be: $9f
    and b                                         ; $74bf: $a0
    rrca                                          ; $74c0: $0f
    jr nz, jr_0a9_7472                            ; $74c1: $20 $af

    ld b, b                                       ; $74c3: $40
    adc a                                         ; $74c4: $8f
    nop                                           ; $74c5: $00
    rst $18                                       ; $74c6: $df
    rst $08                                       ; $74c7: $cf
    daa                                           ; $74c8: $27
    jp z, $ea2b                                   ; $74c9: $ca $2b $ea

    dec bc                                        ; $74cc: $0b
    add sp, $00                                   ; $74cd: $e8 $00
    add hl, bc                                    ; $74cf: $09
    ld [$e211], a                                 ; $74d0: $ea $11 $e2
    ld de, $f3f2                                  ; $74d3: $11 $f2 $f3
    dec b                                         ; $74d6: $05
    nop                                           ; $74d7: $00
    rst $30                                       ; $74d8: $f7
    rst $38                                       ; $74d9: $ff
    nop                                           ; $74da: $00
    ld bc, $00e7                                  ; $74db: $01 $e7 $00
    ld [$ff00], sp                                ; $74de: $08 $00 $ff
    ld a, a                                       ; $74e1: $7f
    add b                                         ; $74e2: $80
    ld [bc], a                                    ; $74e3: $02
    ld c, b                                       ; $74e4: $48
    rst $38                                       ; $74e5: $ff
    nop                                           ; $74e6: $00
    ld b, $00                                     ; $74e7: $06 $00
    cp $01                                        ; $74e9: $fe $01
    pop hl                                        ; $74eb: $e1
    rrca                                          ; $74ec: $0f
    call z, $c70f                                 ; $74ed: $cc $0f $c7
    rra                                           ; $74f0: $1f
    nop                                           ; $74f1: $00
    adc [hl]                                      ; $74f2: $8e
    sbc a                                         ; $74f3: $9f
    and b                                         ; $74f4: $a0
    sbc [hl]                                      ; $74f5: $9e
    and c                                         ; $74f6: $a1
    nop                                           ; $74f7: $00
    rst $38                                       ; $74f8: $ff
    rrca                                          ; $74f9: $0f
    nop                                           ; $74fa: $00
    nop                                           ; $74fb: $00
    rlca                                          ; $74fc: $07
    ldh a, [$0b]                                  ; $74fd: $f0 $0b
    ld hl, sp-$3f                                 ; $74ff: $f8 $c1
    add hl, sp                                    ; $7501: $39
    add b                                         ; $7502: $80
    nop                                           ; $7503: $00
    ld a, h                                       ; $7504: $7c
    ldh [$ba], a                                  ; $7505: $e0 $ba
    ldh [$7c], a                                  ; $7507: $e0 $7c
    cp $01                                        ; $7509: $fe $01
    nop                                           ; $750b: $00
    ld de, $fefe                                  ; $750c: $11 $fe $fe
    nop                                           ; $750f: $00
    ld [bc], a                                    ; $7510: $02
    jr nz, jr_0a9_7494                            ; $7511: $20 $81

    ld a, [hl]                                    ; $7513: $7e
    ld bc, $103e                                  ; $7514: $01 $3e $10
    nop                                           ; $7517: $00
    cp $7e                                        ; $7518: $fe $7e
    db $fc                                        ; $751a: $fc
    ld hl, sp-$7c                                 ; $751b: $f8 $84
    ldh a, [$8f]                                  ; $751d: $f0 $8f
    cp a                                          ; $751f: $bf
    nop                                           ; $7520: $00
    ret nz                                        ; $7521: $c0

    rst $38                                       ; $7522: $ff
    add e                                         ; $7523: $83
    sbc l                                         ; $7524: $9d
    ld [c], a                                     ; $7525: $e2
    ld a, [bc]                                    ; $7526: $0a
    ld [hl], l                                    ; $7527: $75
    ld h, b                                       ; $7528: $60
    nop                                           ; $7529: $00
    rra                                           ; $752a: $1f
    ldh a, [$cf]                                  ; $752b: $f0 $cf
    inc e                                         ; $752d: $1c
    ld l, e                                       ; $752e: $6b
    cp $fd                                        ; $752f: $fe $fd
    nop                                           ; $7531: $00
    nop                                           ; $7532: $00
    ld a, [hl]                                    ; $7533: $7e
    ldh [$3f], a                                  ; $7534: $e0 $3f
    rra                                           ; $7536: $1f
    push hl                                       ; $7537: $e5
    ld a, $ca                                     ; $7538: $3e $ca
    ld c, $00                                     ; $753a: $0e $00
    ld a, [c]                                     ; $753c: $f2
    rra                                           ; $753d: $1f
    rst $20                                       ; $753e: $e7
    rst $38                                       ; $753f: $ff
    rrca                                          ; $7540: $0f
    ld c, a                                       ; $7541: $4f
    ret nc                                        ; $7542: $d0

    adc [hl]                                      ; $7543: $8e
    ld [bc], a                                    ; $7544: $02
    adc a                                         ; $7545: $8f
    ld d, b                                       ; $7546: $50
    xor a                                         ; $7547: $af
    ld bc, $417e                                  ; $7548: $01 $7e $41
    ld [bc], a                                    ; $754b: $02
    nop                                           ; $754c: $00
    ld bc, $3e00                                  ; $754d: $01 $00 $3e
    ld bc, $a13e                                  ; $7550: $01 $3e $a1
    sbc [hl]                                      ; $7553: $9e
    sub c                                         ; $7554: $91
    adc [hl]                                      ; $7555: $8e
    ret                                           ; $7556: $c9


    nop                                           ; $7557: $00
    add $60                                       ; $7558: $c6 $60
    rst $18                                       ; $755a: $df
    ld [hl], b                                    ; $755b: $70
    rst $08                                       ; $755c: $cf
    ld a, b                                       ; $755d: $78
    rst $20                                       ; $755e: $e7
    ccf                                           ; $755f: $3f
    nop                                           ; $7560: $00
    or b                                          ; $7561: $b0
    ccf                                           ; $7562: $3f
    add e                                         ; $7563: $83
    dec bc                                        ; $7564: $0b
    add b                                         ; $7565: $80
    add c                                         ; $7566: $81
    rrca                                          ; $7567: $0f
    add b                                         ; $7568: $80
    nop                                           ; $7569: $00
    dec d                                         ; $756a: $15
    ld b, [hl]                                    ; $756b: $46
    call nz, $9a7f                                ; $756c: $c4 $7f $9a
    ld a, [de]                                    ; $756f: $1a
    pop af                                        ; $7570: $f1
    add [hl]                                      ; $7571: $86
    nop                                           ; $7572: $00
    ld h, c                                       ; $7573: $61
    inc bc                                        ; $7574: $03
    ld b, b                                       ; $7575: $40
    ld bc, $3f00                                  ; $7576: $01 $00 $3f
    rst $18                                       ; $7579: $df
    rrca                                          ; $757a: $0f
    nop                                           ; $757b: $00
    scf                                           ; $757c: $37
    cp [hl]                                       ; $757d: $be
    nop                                           ; $757e: $00
    db $fd                                        ; $757f: $fd
    ld a, d                                       ; $7580: $7a

jr_0a9_7581:
    rra                                           ; $7581: $1f
    db $e3                                        ; $7582: $e3
    ld a, h                                       ; $7583: $7c
    nop                                           ; $7584: $00
    adc h                                         ; $7585: $8c
    ld [c], a                                     ; $7586: $e2
    ld e, $8e                                     ; $7587: $1e $8e
    ld a, [hl]                                    ; $7589: $7e
    add $3e                                       ; $758a: $c6 $3e
    sbc b                                         ; $758c: $98
    nop                                           ; $758d: $00
    ld a, a                                       ; $758e: $7f
    rlca                                          ; $758f: $07
    pop hl                                        ; $7590: $e1
    inc bc                                        ; $7591: $03
    pop af                                        ; $7592: $f1
    ld hl, sp-$3f                                 ; $7593: $f8 $c1
    ldh [rP1], a                                  ; $7595: $e0 $00
    ld bc, $f0c1                                  ; $7597: $01 $c1 $f0
    ld bc, $80e0                                  ; $759a: $01 $e0 $80
    add c                                         ; $759d: $81
    ret nz                                        ; $759e: $c0

    nop                                           ; $759f: $00
    ld b, c                                       ; $75a0: $41
    add b                                         ; $75a1: $80
    ret nz                                        ; $75a2: $c0

    ret nz                                        ; $75a3: $c0

    and b                                         ; $75a4: $a0
    ld [hl], b                                    ; $75a5: $70
    add b                                         ; $75a6: $80
    ld a, h                                       ; $75a7: $7c
    ld [bc], a                                    ; $75a8: $02
    add h                                         ; $75a9: $84
    ld a, [hl]                                    ; $75aa: $7e
    db $fc                                        ; $75ab: $fc
    ld a, a                                       ; $75ac: $7f
    rst $38                                       ; $75ad: $ff
    add b                                         ; $75ae: $80
    call z, $3800                                 ; $75af: $cc $00 $38
    nop                                           ; $75b2: $00
    scf                                           ; $75b3: $37
    or $b1                                        ; $75b4: $f6 $b1
    add sp, $1b                                   ; $75b6: $e8 $1b
    ldh a, [$8f]                                  ; $75b8: $f0 $8f
    ccf                                           ; $75ba: $3f
    nop                                           ; $75bb: $00
    rlca                                          ; $75bc: $07
    dec bc                                        ; $75bd: $0b
    add b                                         ; $75be: $80
    jr nz, jr_0a9_7581                            ; $75bf: $20 $c0

    rst $38                                       ; $75c1: $ff
    rst $38                                       ; $75c2: $ff
    jr nc, jr_0a9_75c5                            ; $75c3: $30 $00

jr_0a9_75c5:
    ret nz                                        ; $75c5: $c0

    ld a, [de]                                    ; $75c6: $1a
    ldh [$9f], a                                  ; $75c7: $e0 $9f
    ld h, c                                       ; $75c9: $61
    db $fc                                        ; $75ca: $fc
    inc c                                         ; $75cb: $0c
    rrca                                          ; $75cc: $0f
    nop                                           ; $75cd: $00
    pop af                                        ; $75ce: $f1
    db $fc                                        ; $75cf: $fc
    inc e                                         ; $75d0: $1c
    ld bc, $ff03                                  ; $75d1: $01 $03 $ff
    nop                                           ; $75d4: $00
    ld a, [c]                                     ; $75d5: $f2
    nop                                           ; $75d6: $00
    ld de, $3bf8                                  ; $75d7: $11 $f8 $3b
    push hl                                       ; $75da: $e5
    ld [c], a                                     ; $75db: $e2
    pop de                                        ; $75dc: $d1
    adc $21                                       ; $75dd: $ce $21
    nop                                           ; $75df: $00
    ld a, $41                                     ; $75e0: $3e $41
    ld a, [hl]                                    ; $75e2: $7e
    cp $00                                        ; $75e3: $fe $00
    nop                                           ; $75e5: $00
    nop                                           ; $75e6: $00
    nop                                           ; $75e7: $00
    ld bc, $00a4                                  ; $75e8: $01 $a4 $00
    add hl, bc                                    ; $75eb: $09
    nop                                           ; $75ec: $00
    rst $38                                       ; $75ed: $ff
    ld a, a                                       ; $75ee: $7f
    add b                                         ; $75ef: $80
    ld [bc], a                                    ; $75f0: $02
    ld c, b                                       ; $75f1: $48
    rst $38                                       ; $75f2: $ff
    nop                                           ; $75f3: $00
    ld bc, $0058                                  ; $75f4: $01 $58 $00
    cp $01                                        ; $75f7: $fe $01
    nop                                           ; $75f9: $00
    cp $fc                                        ; $75fa: $fe $fc
    ld [bc], a                                    ; $75fc: $02
    ld sp, hl                                     ; $75fd: $f9
    dec b                                         ; $75fe: $05
    nop                                           ; $75ff: $00
    inc bc                                        ; $7600: $03
    ld a, [c]                                     ; $7601: $f2
    rlca                                          ; $7602: $07
    push hl                                       ; $7603: $e5
    di                                            ; $7604: $f3
    dec [hl]                                      ; $7605: $35
    ld a, [$002c]                                 ; $7606: $fa $2c $00
    rra                                           ; $7609: $1f
    xor $4e                                       ; $760a: $ee $4e
    sub c                                         ; $760c: $91
    ld e, a                                       ; $760d: $5f
    pop de                                        ; $760e: $d1
    rra                                           ; $760f: $1f
    add c                                         ; $7610: $81
    nop                                           ; $7611: $00
    and c                                         ; $7612: $a1
    sbc [hl]                                      ; $7613: $9e
    ld hl, $411e                                  ; $7614: $21 $1e $41
    ld a, $41                                     ; $7617: $3e $41
    ld a, [hl]                                    ; $7619: $7e
    sub b                                         ; $761a: $90
    ld a, $58                                     ; $761b: $3e $58
    ld a, a                                       ; $761d: $7f

jr_0a9_761e:
    add b                                         ; $761e: $80
    inc [hl]                                      ; $761f: $34
    jr jr_0a9_761e                                ; $7620: $18 $fc

    ld [bc], a                                    ; $7622: $02
    ld hl, sp+$05                                 ; $7623: $f8 $05
    nop                                           ; $7625: $00
    pop af                                        ; $7626: $f1
    dec bc                                        ; $7627: $0b
    ldh a, [rTAC]                                 ; $7628: $f0 $07
    pop hl                                        ; $762a: $e1
    inc bc                                        ; $762b: $03
    cp $6a                                        ; $762c: $fe $6a
    nop                                           ; $762e: $00
    db $e4                                        ; $762f: $e4
    call c, $b578                                 ; $7630: $dc $78 $b5
    ld a, b                                       ; $7633: $78
    ld [hl], c                                    ; $7634: $71
    ld [hl], c                                    ; $7635: $71
    ld a, [hl+]                                   ; $7636: $2a
    nop                                           ; $7637: $00
    ld [hl], c                                    ; $7638: $71
    ld [$f497], a                                 ; $7639: $ea $97 $f4
    ld d, a                                       ; $763c: $57
    ldh a, [$7e]                                  ; $763d: $f0 $7e
    nop                                           ; $763f: $00
    inc c                                         ; $7640: $0c
    ld a, [hl]                                    ; $7641: $7e
    add b                                         ; $7642: $80
    cp $00                                        ; $7643: $fe $00
    ld [bc], a                                    ; $7645: $02
    jr c, @+$76                                   ; $7646: $38 $74

    db $10                                        ; $7648: $10
    add b                                         ; $7649: $80
    cp $00                                        ; $764a: $fe $00
    add c                                         ; $764c: $81
    db $fc                                        ; $764d: $fc
    add e                                         ; $764e: $83
    ld sp, hl                                     ; $764f: $f9
    add [hl]                                      ; $7650: $86
    ld sp, hl                                     ; $7651: $f9
    add l                                         ; $7652: $85
    pop af                                        ; $7653: $f1
    nop                                           ; $7654: $00
    adc h                                         ; $7655: $8c
    rrca                                          ; $7656: $0f
    call z, $981f                                 ; $7657: $cc $1f $98
    rra                                           ; $765a: $1f
    rst $08                                       ; $765b: $cf
    ld e, a                                       ; $765c: $5f
    nop                                           ; $765d: $00
    sub [hl]                                      ; $765e: $96
    ld c, l                                       ; $765f: $4d
    sbc [hl]                                      ; $7660: $9e
    sbc $09                                       ; $7661: $de $09
    ld l, h                                       ; $7663: $6c
    add e                                         ; $7664: $83
    xor b                                         ; $7665: $a8
    nop                                           ; $7666: $00
    halt                                          ; $7667: $76
    ld b, a                                       ; $7668: $47
    add b                                         ; $7669: $80
    ld l, a                                       ; $766a: $6f
    xor b                                         ; $766b: $a8
    rrca                                          ; $766c: $0f
    rst $00                                       ; $766d: $c7
    ld e, a                                       ; $766e: $5f
    nop                                           ; $766f: $00
    adc a                                         ; $7670: $8f
    rra                                           ; $7671: $1f
    adc a                                         ; $7672: $8f
    cp a                                          ; $7673: $bf
    rra                                           ; $7674: $1f
    jr nz, @+$41                                  ; $7675: $20 $3f

    ld b, b                                       ; $7677: $40
    ld h, b                                       ; $7678: $60
    ccf                                           ; $7679: $3f
    inc a                                         ; $767a: $3c
    ld c, b                                       ; $767b: $48
    ld c, b                                       ; $767c: $48
    ld [$99e5], sp                                ; $767d: $08 $e5 $99
    push hl                                       ; $7680: $e5
    sub d                                         ; $7681: $92
    rst $20                                       ; $7682: $e7
    nop                                           ; $7683: $00
    sbc c                                         ; $7684: $99
    rst $20                                       ; $7685: $e7
    sub d                                         ; $7686: $92
    db $e3                                        ; $7687: $e3
    sub l                                         ; $7688: $95
    pop af                                        ; $7689: $f1
    adc d                                         ; $768a: $8a
    ld hl, sp+$00                                 ; $768b: $f8 $00
    add h                                         ; $768d: $84
    add b                                         ; $768e: $80
    ld a, a                                       ; $768f: $7f
    adc d                                         ; $7690: $8a
    ld [hl], h                                    ; $7691: $74
    ld [bc], a                                    ; $7692: $02
    ld a, [$00fc]                                 ; $7693: $fa $fc $00
    ldh a, [$f8]                                  ; $7696: $f0 $f8
    push hl                                       ; $7698: $e5
    add hl, bc                                    ; $7699: $09
    ld hl, sp+$53                                 ; $769a: $f8 $53
    jp nc, $09a7                                  ; $769c: $d2 $a7 $09

    ldh [rIF], a                                  ; $769f: $e0 $0f
    nop                                           ; $76a1: $00
    ld b, b                                       ; $76a2: $40
    rst $18                                       ; $76a3: $df
    nop                                           ; $76a4: $00
    ld a, a                                       ; $76a5: $7f
    nop                                           ; $76a6: $00
    sub $18                                       ; $76a7: $d6 $18
    ret nz                                        ; $76a9: $c0

    call c, Call_0a9_4008                         ; $76aa: $dc $08 $40
    ld e, b                                       ; $76ad: $58
    nop                                           ; $76ae: $00
    nop                                           ; $76af: $00
    nop                                           ; $76b0: $00
    ld bc, $00aa                                  ; $76b1: $01 $aa $00
    ld [$ff00], sp                                ; $76b4: $08 $00 $ff
    ld a, a                                       ; $76b7: $7f
    add b                                         ; $76b8: $80
    ld [bc], a                                    ; $76b9: $02
    ld [$80ff], sp                                ; $76ba: $08 $ff $80
    cp $00                                        ; $76bd: $fe $00
    add c                                         ; $76bf: $81
    db $fc                                        ; $76c0: $fc
    add e                                         ; $76c1: $83
    db $fd                                        ; $76c2: $fd
    add e                                         ; $76c3: $83
    rst $38                                       ; $76c4: $ff
    nop                                           ; $76c5: $00
    ld b, $00                                     ; $76c6: $06 $00
    rrca                                          ; $76c8: $0f
    rst $28                                       ; $76c9: $ef
    ldh a, [$86]                                  ; $76ca: $f0 $86
    sbc c                                         ; $76cc: $99
    rra                                           ; $76cd: $1f
    jp nc, Jump_000_009f                          ; $76ce: $d2 $9f $00

    pop de                                        ; $76d1: $d1
    add $9d                                       ; $76d2: $c6 $9d
    ret nz                                        ; $76d4: $c0

    ld l, a                                       ; $76d5: $6f
    rst $38                                       ; $76d6: $ff
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    nop                                           ; $76d9: $00
    add b                                         ; $76da: $80
    ccf                                           ; $76db: $3f
    rst $38                                       ; $76dc: $ff
    add a                                         ; $76dd: $87
    rlca                                          ; $76de: $07
    add e                                         ; $76df: $83
    ld e, e                                       ; $76e0: $5b
    adc c                                         ; $76e1: $89
    nop                                           ; $76e2: $00
    dec d                                         ; $76e3: $15
    xor [hl]                                      ; $76e4: $ae
    cp e                                          ; $76e5: $bb
    inc e                                         ; $76e6: $1c
    ld [hl], a                                    ; $76e7: $77
    cp $01                                        ; $76e8: $fe $01
    nop                                           ; $76ea: $00
    db $10                                        ; $76eb: $10
    cp $fe                                        ; $76ec: $fe $fe
    nop                                           ; $76ee: $00
    ld [bc], a                                    ; $76ef: $02
    jr c, jr_0a9_7771                             ; $76f0: $38 $7f

    add d                                         ; $76f2: $82
    ld a, a                                       ; $76f3: $7f
    add e                                         ; $76f4: $83
    ld h, b                                       ; $76f5: $60
    cp $3c                                        ; $76f6: $fe $3c
    nop                                           ; $76f8: $00
    ld b, [hl]                                    ; $76f9: $46
    jr jr_0a9_777b                                ; $76fa: $18 $7f

    add b                                         ; $76fc: $80
    ret nz                                        ; $76fd: $c0

    or e                                          ; $76fe: $b3
    and e                                         ; $76ff: $a3
    nop                                           ; $7700: $00
    ld e, [hl]                                    ; $7701: $5e
    ld b, a                                       ; $7702: $47
    cp l                                          ; $7703: $bd
    dec bc                                        ; $7704: $0b
    ld h, [hl]                                    ; $7705: $66
    rlca                                          ; $7706: $07
    rrca                                          ; $7707: $0f
    ret nz                                        ; $7708: $c0

    nop                                           ; $7709: $00

jr_0a9_770a:
    rrca                                          ; $770a: $0f
    pop bc                                        ; $770b: $c1
    scf                                           ; $770c: $37
    and b                                         ; $770d: $a0
    ld a, c                                       ; $770e: $79
    ret z                                         ; $770f: $c8

    cp $e4                                        ; $7710: $fe $e4
    nop                                           ; $7712: $00
    inc a                                         ; $7713: $3c
    add b                                         ; $7714: $80
    ldh a, [$c1]                                  ; $7715: $f0 $c1
    ldh a, [$63]                                  ; $7717: $f0 $63
    db $f4                                        ; $7719: $f4
    pop bc                                        ; $771a: $c1
    inc b                                         ; $771b: $04
    or $46                                        ; $771c: $f6 $46
    xor c                                         ; $771e: $a9
    rrca                                          ; $771f: $0f
    jp nc, Jump_0a9_483c                          ; $7720: $d2 $3c $48

    cp $00                                        ; $7723: $fe $00
    ld h, b                                       ; $7725: $60
    ld a, [hl]                                    ; $7726: $7e
    ld [hl], $20                                  ; $7727: $36 $20
    ld b, $38                                     ; $7729: $06 $38
    ld a, c                                       ; $772b: $79
    db $eb                                        ; $772c: $eb
    inc sp                                        ; $772d: $33
    ld e, [hl]                                    ; $772e: $5e
    ld a, [hl+]                                   ; $772f: $2a
    nop                                           ; $7730: $00
    ld d, a                                       ; $7731: $57
    rla                                           ; $7732: $17
    ld l, c                                       ; $7733: $69
    or h                                          ; $7734: $b4
    scf                                           ; $7735: $37
    ret nc                                        ; $7736: $d0

    inc de                                        ; $7737: $13
    ldh [rP1], a                                  ; $7738: $e0 $00
    pop bc                                        ; $773a: $c1
    db $fc                                        ; $773b: $fc
    ld hl, sp-$3b                                 ; $773c: $f8 $c5
    ld [hl], d                                    ; $773e: $72
    and d                                         ; $773f: $a2
    rst $18                                       ; $7740: $df
    ld a, [c]                                     ; $7741: $f2
    nop                                           ; $7742: $00
    ld h, l                                       ; $7743: $65
    ld h, b                                       ; $7744: $60
    jp c, $bad0                                   ; $7745: $da $d0 $ba

    jr nz, jr_0a9_770a                            ; $7748: $20 $c0

    ld h, e                                       ; $774a: $63
    nop                                           ; $774b: $00
    ld [c], a                                     ; $774c: $e2
    rra                                           ; $774d: $1f
    nop                                           ; $774e: $00
    ld a, a                                       ; $774f: $7f
    cp $7f                                        ; $7750: $fe $7f
    ld a, [hl]                                    ; $7752: $7e
    ld bc, $0286                                  ; $7753: $01 $86 $02
    nop                                           ; $7756: $00
    ld a, [hl]                                    ; $7757: $7e
    ld bc, $01fe                                  ; $7758: $01 $fe $01
    add b                                         ; $775b: $80
    db $10                                        ; $775c: $10
    ld b, d                                       ; $775d: $42
    ld b, b                                       ; $775e: $40
    rst $38                                       ; $775f: $ff
    inc b                                         ; $7760: $04
    add b                                         ; $7761: $80
    add b                                         ; $7762: $80
    ld a, a                                       ; $7763: $7f
    db $fc                                        ; $7764: $fc
    ld bc, $0002                                  ; $7765: $01 $02 $00
    db $fd                                        ; $7768: $fd
    cp $40                                        ; $7769: $fe $40
    db $fc                                        ; $776b: $fc
    and h                                         ; $776c: $a4
    jr jr_0a9_776f                                ; $776d: $18 $00

jr_0a9_776f:
    rst $38                                       ; $776f: $ff
    rra                                           ; $7770: $1f

jr_0a9_7771:
    ld e, a                                       ; $7771: $5f
    ld e, a                                       ; $7772: $5f
    sbc a                                         ; $7773: $9f
    add c                                         ; $7774: $81
    ld [bc], a                                    ; $7775: $02
    db $10                                        ; $7776: $10
    adc a                                         ; $7777: $8f
    cpl                                           ; $7778: $2f
    ld c, a                                       ; $7779: $4f
    rrca                                          ; $777a: $0f

jr_0a9_777b:
    cpl                                           ; $777b: $2f
    sbc a                                         ; $777c: $9f
    ld a, [hl]                                    ; $777d: $7e
    ld d, b                                       ; $777e: $50
    add b                                         ; $777f: $80
    jr nz, jr_0a9_7782                            ; $7780: $20 $00

jr_0a9_7782:
    nop                                           ; $7782: $00
    nop                                           ; $7783: $00
    ld bc, $00b4                                  ; $7784: $01 $b4 $00
    nop                                           ; $7787: $00
    rst $38                                       ; $7788: $ff
    rst $38                                       ; $7789: $ff
    add c                                         ; $778a: $81
    cp $fe                                        ; $778b: $fe $fe
    add b                                         ; $778d: $80
    db $fc                                        ; $778e: $fc
    add c                                         ; $778f: $81
    nop                                           ; $7790: $00
    db $fd                                        ; $7791: $fd
    add e                                         ; $7792: $83
    db $fc                                        ; $7793: $fc
    add c                                         ; $7794: $81
    db $fc                                        ; $7795: $fc
    db $fd                                        ; $7796: $fd
    cp $fc                                        ; $7797: $fe $fc
    nop                                           ; $7799: $00
    sbc a                                         ; $779a: $9f
    rrca                                          ; $779b: $0f
    rlca                                          ; $779c: $07
    ldh a, [$9a]                                  ; $779d: $f0 $9a
    ld hl, sp+$0e                                 ; $779f: $f8 $0e
    db $fc                                        ; $77a1: $fc
    nop                                           ; $77a2: $00
    ld a, [$f2f8]                                 ; $77a3: $fa $f8 $f2
    ld hl, sp+$62                                 ; $77a6: $f8 $62
    ld sp, hl                                     ; $77a8: $f9
    ld a, [bc]                                    ; $77a9: $0a
    db $fc                                        ; $77aa: $fc
    nop                                           ; $77ab: $00
    nop                                           ; $77ac: $00
    rst $38                                       ; $77ad: $ff
    ld a, a                                       ; $77ae: $7f
    nop                                           ; $77af: $00
    add b                                         ; $77b0: $80
    nop                                           ; $77b1: $00
    nop                                           ; $77b2: $00
    add b                                         ; $77b3: $80
    nop                                           ; $77b4: $00
    add b                                         ; $77b5: $80
    di                                            ; $77b6: $f3
    sbc [hl]                                      ; $77b7: $9e
    ret nz                                        ; $77b8: $c0

    or e                                          ; $77b9: $b3
    dec l                                         ; $77ba: $2d
    pop hl                                        ; $77bb: $e1
    ld e, [hl]                                    ; $77bc: $5e
    ld [$fe01], sp                                ; $77bd: $08 $01 $fe
    cp $00                                        ; $77c0: $fe $00
    ld [bc], a                                    ; $77c2: $02
    jr nc, jr_0a9_7843                            ; $77c3: $30 $7e

    ld a, [hl]                                    ; $77c5: $7e
    cp $00                                        ; $77c6: $fe $00
    add c                                         ; $77c8: $81
    cp $80                                        ; $77c9: $fe $80
    rst $38                                       ; $77cb: $ff
    ld a, a                                       ; $77cc: $7f
    add b                                         ; $77cd: $80
    ld a, a                                       ; $77ce: $7f
    add b                                         ; $77cf: $80
    ld h, b                                       ; $77d0: $60
    add b                                         ; $77d1: $80
    ld c, b                                       ; $77d2: $48
    nop                                           ; $77d3: $00
    inc c                                         ; $77d4: $0c
    ld [$3d0a], sp                                ; $77d5: $08 $0a $3d
    ret nz                                        ; $77d8: $c0

    ld a, [bc]                                    ; $77d9: $0a
    ret nz                                        ; $77da: $c0

    nop                                           ; $77db: $00
    inc e                                         ; $77dc: $1c
    cp h                                          ; $77dd: $bc
    ld a, $5a                                     ; $77de: $3e $5a
    inc a                                         ; $77e0: $3c
    ld d, [hl]                                    ; $77e1: $56
    jr z, @+$3e                                   ; $77e2: $28 $3c

    nop                                           ; $77e4: $00
    ld d, a                                       ; $77e5: $57
    jr jr_0a9_784e                                ; $77e6: $18 $66

    cp a                                          ; $77e8: $bf
    ld a, [bc]                                    ; $77e9: $0a
    ld e, $b5                                     ; $77ea: $1e $b5
    inc sp                                        ; $77ec: $33
    nop                                           ; $77ed: $00
    xor l                                         ; $77ee: $ad
    sbc $72                                       ; $77ef: $de $72
    and c                                         ; $77f1: $a1
    ld hl, sp+$07                                 ; $77f2: $f8 $07
    and b                                         ; $77f4: $a0
    rra                                           ; $77f5: $1f
    nop                                           ; $77f6: $00
    add e                                         ; $77f7: $83
    ld hl, $7e9e                                  ; $77f8: $21 $9e $7e
    cp [hl]                                       ; $77fb: $be
    ld a, [hl]                                    ; $77fc: $7e
    ld a, $7e                                     ; $77fd: $3e $7e
    inc e                                         ; $77ff: $1c
    ld a, a                                       ; $7800: $7f
    cp $7f                                        ; $7801: $fe $7f
    ld b, [hl]                                    ; $7803: $46
    jr z, jr_0a9_7842                             ; $7804: $28 $3c

    ld [$4804], sp                                ; $7806: $08 $04 $48
    add d                                         ; $7809: $82
    ccf                                           ; $780a: $3f
    nop                                           ; $780b: $00
    jp nz, $f00f                                  ; $780c: $c2 $0f $f0

    ld [c], a                                     ; $780f: $e2
    db $fc                                        ; $7810: $fc
    ld hl, sp-$02                                 ; $7811: $f8 $fe
    and $00                                       ; $7813: $e6 $00
    jp nz, Jump_000_3cbc                          ; $7815: $c2 $bc $3c

    ld e, d                                       ; $7818: $5a
    ld a, [hl]                                    ; $7819: $7e
    cp l                                          ; $781a: $bd
    ld e, $ac                                     ; $781b: $1e $ac
    nop                                           ; $781d: $00
    ccf                                           ; $781e: $3f
    sbc $3f                                       ; $781f: $de $3f
    adc d                                         ; $7821: $8a
    ld e, $b5                                     ; $7822: $1e $b5
    sbc [hl]                                      ; $7824: $9e
    dec l                                         ; $7825: $2d
    rra                                           ; $7826: $1f
    inc l                                         ; $7827: $2c
    ld a, [c]                                     ; $7828: $f2
    ld hl, $0044                                  ; $7829: $21 $44 $00
    ld [hl], h                                    ; $782c: $74
    ld [$4844], sp                                ; $782d: $08 $44 $48
    halt                                          ; $7830: $76
    ld [$2844], sp                                ; $7831: $08 $44 $28
    nop                                           ; $7834: $00
    rst $38                                       ; $7835: $ff
    add b                                         ; $7836: $80
    add b                                         ; $7837: $80
    ld a, a                                       ; $7838: $7f
    ld a, [hl]                                    ; $7839: $7e
    xor c                                         ; $783a: $a9
    inc a                                         ; $783b: $3c
    ld d, a                                       ; $783c: $57
    ld [$427e], sp                                ; $783d: $08 $7e $42
    ccf                                           ; $7840: $3f
    and l                                         ; $7841: $a5

jr_0a9_7842:
    ld b, [hl]                                    ; $7842: $46

jr_0a9_7843:
    nop                                           ; $7843: $00
    ld [bc], a                                    ; $7844: $02
    db $fc                                        ; $7845: $fc

jr_0a9_7846:
    ld hl, sp+$00                                 ; $7846: $f8 $00
    nop                                           ; $7848: $00
    db $fc                                        ; $7849: $fc
    rra                                           ; $784a: $1f
    adc a                                         ; $784b: $8f
    ccf                                           ; $784c: $3f
    cp a                                          ; $784d: $bf

jr_0a9_784e:
    cp a                                          ; $784e: $bf
    add b                                         ; $784f: $80
    ld [$803f], sp                                ; $7850: $08 $3f $80
    ccf                                           ; $7853: $3f
    nop                                           ; $7854: $00
    inc b                                         ; $7855: $04
    nop                                           ; $7856: $00
    ret nz                                        ; $7857: $c0

    nop                                           ; $7858: $00
    ret nz                                        ; $7859: $c0

    ret nz                                        ; $785a: $c0

    cp [hl]                                       ; $785b: $be
    ld b, b                                       ; $785c: $40
    ret z                                         ; $785d: $c8

    nop                                           ; $785e: $00
    nop                                           ; $785f: $00
    nop                                           ; $7860: $00
    inc b                                         ; $7861: $04
    nop                                           ; $7862: $00
    inc b                                         ; $7863: $04
    nop                                           ; $7864: $00
    add b                                         ; $7865: $80
    add c                                         ; $7866: $81
    add d                                         ; $7867: $82
    add e                                         ; $7868: $83
    add h                                         ; $7869: $84
    add l                                         ; $786a: $85
    add [hl]                                      ; $786b: $86
    add a                                         ; $786c: $87
    adc b                                         ; $786d: $88
    adc c                                         ; $786e: $89
    adc d                                         ; $786f: $8a
    adc e                                         ; $7870: $8b
    adc h                                         ; $7871: $8c
    adc l                                         ; $7872: $8d
    adc [hl]                                      ; $7873: $8e
    adc a                                         ; $7874: $8f
    inc b                                         ; $7875: $04
    dec b                                         ; $7876: $05
    ld b, $07                                     ; $7877: $06 $07
    inc b                                         ; $7879: $04
    dec b                                         ; $787a: $05
    ld b, $07                                     ; $787b: $06 $07
    inc b                                         ; $787d: $04
    dec b                                         ; $787e: $05
    ld b, $07                                     ; $787f: $06 $07
    inc b                                         ; $7881: $04
    dec b                                         ; $7882: $05
    ld b, $07                                     ; $7883: $06 $07
    nop                                           ; $7885: $00
    nop                                           ; $7886: $00
    cp a                                          ; $7887: $bf
    ld [bc], a                                    ; $7888: $02
    rst $18                                       ; $7889: $df
    inc hl                                        ; $788a: $23
    cp a                                          ; $788b: $bf
    ld [bc], a                                    ; $788c: $02
    ld c, e                                       ; $788d: $4b
    inc l                                         ; $788e: $2c
    cp a                                          ; $788f: $bf
    ld [bc], a                                    ; $7890: $02
    sub [hl]                                      ; $7891: $96
    add hl, bc                                    ; $7892: $09
    rst $18                                       ; $7893: $df
    inc hl                                        ; $7894: $23
    ld c, d                                       ; $7895: $4a
    inc e                                         ; $7896: $1c
    cp a                                          ; $7897: $bf
    ld [bc], a                                    ; $7898: $02
    sub [hl]                                      ; $7899: $96
    add hl, bc                                    ; $789a: $09
    rst $18                                       ; $789b: $df
    inc hl                                        ; $789c: $23
    jr jr_0a9_78a0                                ; $789d: $18 $01

    cp a                                          ; $789f: $bf

jr_0a9_78a0:
    ld [bc], a                                    ; $78a0: $02
    rst $18                                       ; $78a1: $df
    inc hl                                        ; $78a2: $23
    rst $18                                       ; $78a3: $df
    inc hl                                        ; $78a4: $23
    nop                                           ; $78a5: $00
    nop                                           ; $78a6: $00
    cp a                                          ; $78a7: $bf
    ld [bc], a                                    ; $78a8: $02
    rst $18                                       ; $78a9: $df
    inc hl                                        ; $78aa: $23
    rst $18                                       ; $78ab: $df
    inc hl                                        ; $78ac: $23
    ld c, d                                       ; $78ad: $4a
    jr z, jr_0a9_7846                             ; $78ae: $28 $96

    add hl, bc                                    ; $78b0: $09
    sub c                                         ; $78b1: $91
    ld d, b                                       ; $78b2: $50
    dec de                                        ; $78b3: $1b
    ld a, [hl]                                    ; $78b4: $7e
    ld c, d                                       ; $78b5: $4a
    inc e                                         ; $78b6: $1c
    sub [hl]                                      ; $78b7: $96
    add hl, bc                                    ; $78b8: $09
    ld l, l                                       ; $78b9: $6d
    ld c, b                                       ; $78ba: $48
    cp a                                          ; $78bb: $bf
    ld [bc], a                                    ; $78bc: $02
    jr jr_0a9_78c0                                ; $78bd: $18 $01

    cp a                                          ; $78bf: $bf

jr_0a9_78c0:
    ld [bc], a                                    ; $78c0: $02
    ld l, l                                       ; $78c1: $6d
    ld c, b                                       ; $78c2: $48
    cp a                                          ; $78c3: $bf
    ld [bc], a                                    ; $78c4: $02
    nop                                           ; $78c5: $00
    nop                                           ; $78c6: $00
    cp a                                          ; $78c7: $bf
    ld [bc], a                                    ; $78c8: $02
    sub [hl]                                      ; $78c9: $96
    add hl, bc                                    ; $78ca: $09
    rst $18                                       ; $78cb: $df
    inc hl                                        ; $78cc: $23
    jr z, jr_0a9_78ef                             ; $78cd: $28 $20

    dec de                                        ; $78cf: $1b
    ld a, [hl]                                    ; $78d0: $7e
    inc d                                         ; $78d1: $14
    ld c, l                                       ; $78d2: $4d
    ld e, l                                       ; $78d3: $5d
    ld a, a                                       ; $78d4: $7f
    daa                                           ; $78d5: $27
    jr nz, jr_0a9_790d                            ; $78d6: $20 $35

    ld c, l                                       ; $78d8: $4d
    ld [hl], b                                    ; $78d9: $70
    ld d, b                                       ; $78da: $50
    dec de                                        ; $78db: $1b
    ld a, [hl]                                    ; $78dc: $7e
    ld c, d                                       ; $78dd: $4a
    inc e                                         ; $78de: $1c
    sub [hl]                                      ; $78df: $96
    add hl, bc                                    ; $78e0: $09
    jr jr_0a9_78e4                                ; $78e1: $18 $01

    cp a                                          ; $78e3: $bf

jr_0a9_78e4:
    ld [bc], a                                    ; $78e4: $02
    nop                                           ; $78e5: $00
    nop                                           ; $78e6: $00
    sbc [hl]                                      ; $78e7: $9e
    ld [hl+], a                                   ; $78e8: $22
    jp nc, $be38                                  ; $78e9: $d2 $38 $be

    ld b, e                                       ; $78ec: $43
    ld c, c                                       ; $78ed: $49
    inc l                                         ; $78ee: $2c

jr_0a9_78ef:
    dec [hl]                                      ; $78ef: $35
    ld c, l                                       ; $78f0: $4d
    ld [hl], b                                    ; $78f1: $70
    ld d, b                                       ; $78f2: $50
    dec de                                        ; $78f3: $1b
    ld a, [hl]                                    ; $78f4: $7e
    ld [hl], b                                    ; $78f5: $70
    ld d, b                                       ; $78f6: $50
    dec de                                        ; $78f7: $1b
    ld a, [hl]                                    ; $78f8: $7e
    dec [hl]                                      ; $78f9: $35
    ld c, l                                       ; $78fa: $4d
    ld e, l                                       ; $78fb: $5d
    ld a, a                                       ; $78fc: $7f
    ld l, l                                       ; $78fd: $6d
    inc a                                         ; $78fe: $3c
    sub [hl]                                      ; $78ff: $96
    add hl, bc                                    ; $7900: $09
    rla                                           ; $7901: $17
    add hl, de                                    ; $7902: $19
    cp a                                          ; $7903: $bf
    ld [bc], a                                    ; $7904: $02
    nop                                           ; $7905: $00
    inc b                                         ; $7906: $04
    ld a, l                                       ; $7907: $7d
    ld b, d                                       ; $7908: $42
    or d                                          ; $7909: $b2
    ld b, h                                       ; $790a: $44
    rst $18                                       ; $790b: $df
    inc hl                                        ; $790c: $23

jr_0a9_790d:
    ld c, c                                       ; $790d: $49
    inc h                                         ; $790e: $24
    dec de                                        ; $790f: $1b
    ld a, [hl]                                    ; $7910: $7e
    sub c                                         ; $7911: $91
    ld d, b                                       ; $7912: $50
    ld e, l                                       ; $7913: $5d
    ld a, a                                       ; $7914: $7f
    ld c, c                                       ; $7915: $49
    jr z, jr_0a9_794d                             ; $7916: $28 $35

    ld c, l                                       ; $7918: $4d
    ld [hl], b                                    ; $7919: $70
    ld d, b                                       ; $791a: $50
    dec de                                        ; $791b: $1b
    ld a, [hl]                                    ; $791c: $7e
    ld c, h                                       ; $791d: $4c
    inc a                                         ; $791e: $3c
    sub [hl]                                      ; $791f: $96
    add hl, bc                                    ; $7920: $09
    scf                                           ; $7921: $37
    add hl, hl                                    ; $7922: $29
    cp a                                          ; $7923: $bf
    ld [bc], a                                    ; $7924: $02
    nop                                           ; $7925: $00
    nop                                           ; $7926: $00
    ld e, e                                       ; $7927: $5b
    ld a, [hl]                                    ; $7928: $7e
    ld [hl], b                                    ; $7929: $70
    ld d, b                                       ; $792a: $50
    ld d, l                                       ; $792b: $55
    dec a                                         ; $792c: $3d
    ld c, d                                       ; $792d: $4a
    inc l                                         ; $792e: $2c
    dec de                                        ; $792f: $1b
    ld a, [hl]                                    ; $7930: $7e
    ld [hl], b                                    ; $7931: $70
    ld d, b                                       ; $7932: $50
    dec [hl]                                      ; $7933: $35
    ld c, l                                       ; $7934: $4d
    ld c, d                                       ; $7935: $4a
    jr c, jr_0a9_7953                             ; $7936: $38 $1b

    ld a, [hl]                                    ; $7938: $7e
    ld [hl], b                                    ; $7939: $70
    ld d, b                                       ; $793a: $50
    dec [hl]                                      ; $793b: $35
    ld c, l                                       ; $793c: $4d
    ld l, [hl]                                    ; $793d: $6e
    inc a                                         ; $793e: $3c
    cp a                                          ; $793f: $bf
    ld [bc], a                                    ; $7940: $02
    scf                                           ; $7941: $37
    dec d                                         ; $7942: $15
    sbc h                                         ; $7943: $9c
    ld a, [hl]                                    ; $7944: $7e
    nop                                           ; $7945: $00
    nop                                           ; $7946: $00
    ld [hl], b                                    ; $7947: $70
    ld d, b                                       ; $7948: $50
    ld c, d                                       ; $7949: $4a
    inc l                                         ; $794a: $2c
    dec [hl]                                      ; $794b: $35
    ld c, l                                       ; $794c: $4d

jr_0a9_794d:
    ld c, c                                       ; $794d: $49
    jr nc, jr_0a9_79ad                            ; $794e: $30 $5d

    ld a, a                                       ; $7950: $7f
    ld [hl], b                                    ; $7951: $70
    ld d, b                                       ; $7952: $50

jr_0a9_7953:
    dec [hl]                                      ; $7953: $35
    ld c, l                                       ; $7954: $4d
    ld c, c                                       ; $7955: $49
    jr nz, jr_0a9_7973                            ; $7956: $20 $1b

    ld a, [hl]                                    ; $7958: $7e
    db $d3                                        ; $7959: $d3
    ld c, h                                       ; $795a: $4c
    ld e, l                                       ; $795b: $5d
    ld a, a                                       ; $795c: $7f
    jr z, jr_0a9_797b                             ; $795d: $28 $1c

    ld a, h                                       ; $795f: $7c
    ld a, [hl]                                    ; $7960: $7e
    ld [hl], b                                    ; $7961: $70
    ld d, b                                       ; $7962: $50
    ld d, [hl]                                    ; $7963: $56
    ld hl, $0000                                  ; $7964: $21 $00 $00
    ld c, d                                       ; $7967: $4a
    inc e                                         ; $7968: $1c
    ld c, $09                                     ; $7969: $0e $09
    ld l, l                                       ; $796b: $6d
    ld c, b                                       ; $796c: $48
    ld c, d                                       ; $796d: $4a
    inc a                                         ; $796e: $3c
    dec de                                        ; $796f: $1b
    ld a, [hl]                                    ; $7970: $7e
    db $d3                                        ; $7971: $d3
    ld d, b                                       ; $7972: $50

jr_0a9_7973:
    ld e, l                                       ; $7973: $5d
    ld a, a                                       ; $7974: $7f
    ld c, c                                       ; $7975: $49
    jr nc, jr_0a9_79ad                            ; $7976: $30 $35

    ld c, l                                       ; $7978: $4d
    ld [hl], b                                    ; $7979: $70
    ld d, b                                       ; $797a: $50

jr_0a9_797b:
    dec de                                        ; $797b: $1b
    ld a, [hl]                                    ; $797c: $7e
    ld c, d                                       ; $797d: $4a
    inc l                                         ; $797e: $2c
    dec de                                        ; $797f: $1b
    ld a, [hl]                                    ; $7980: $7e
    jp nc, $5d50                                  ; $7981: $d2 $50 $5d

    ld a, a                                       ; $7984: $7f
    nop                                           ; $7985: $00
    nop                                           ; $7986: $00
    cp a                                          ; $7987: $bf
    ld [bc], a                                    ; $7988: $02
    adc h                                         ; $7989: $8c
    inc d                                         ; $798a: $14

jr_0a9_798b:
    rst $18                                       ; $798b: $df
    inc hl                                        ; $798c: $23
    ld c, c                                       ; $798d: $49
    inc h                                         ; $798e: $24
    dec [hl]                                      ; $798f: $35
    ld c, l                                       ; $7990: $4d
    ld [hl], b                                    ; $7991: $70
    ld d, b                                       ; $7992: $50
    dec de                                        ; $7993: $1b
    ld a, [hl]                                    ; $7994: $7e
    ld c, d                                       ; $7995: $4a
    jr nc, jr_0a9_79b3                            ; $7996: $30 $1b

jr_0a9_7998:
    ld a, [hl]                                    ; $7998: $7e
    or d                                          ; $7999: $b2
    ld d, b                                       ; $799a: $50
    ld e, l                                       ; $799b: $5d
    ld a, a                                       ; $799c: $7f
    daa                                           ; $799d: $27
    inc h                                         ; $799e: $24
    dec [hl]                                      ; $799f: $35
    ld c, l                                       ; $79a0: $4d
    ld [hl], b                                    ; $79a1: $70
    ld d, b                                       ; $79a2: $50
    dec de                                        ; $79a3: $1b
    ld a, [hl]                                    ; $79a4: $7e
    nop                                           ; $79a5: $00
    nop                                           ; $79a6: $00
    cp a                                          ; $79a7: $bf
    ld [bc], a                                    ; $79a8: $02
    ld l, h                                       ; $79a9: $6c
    jr nz, jr_0a9_798b                            ; $79aa: $20 $df

    inc hl                                        ; $79ac: $23

jr_0a9_79ad:
    inc b                                         ; $79ad: $04
    inc c                                         ; $79ae: $0c
    ld e, l                                       ; $79af: $5d
    ld a, a                                       ; $79b0: $7f
    ld [hl], b                                    ; $79b1: $70
    ld d, b                                       ; $79b2: $50

jr_0a9_79b3:
    ld c, d                                       ; $79b3: $4a
    jr z, jr_0a9_79de                             ; $79b4: $28 $28

    jr nz, jr_0a9_79d3                            ; $79b6: $20 $1b

    ld a, [hl]                                    ; $79b8: $7e
    or c                                          ; $79b9: $b1
    ld d, b                                       ; $79ba: $50
    ld e, l                                       ; $79bb: $5d
    ld a, a                                       ; $79bc: $7f
    ld h, $18                                     ; $79bd: $26 $18
    dec de                                        ; $79bf: $1b
    ld a, [hl]                                    ; $79c0: $7e
    db $d3                                        ; $79c1: $d3
    ld c, h                                       ; $79c2: $4c
    ld e, l                                       ; $79c3: $5d
    ld a, a                                       ; $79c4: $7f
    nop                                           ; $79c5: $00
    nop                                           ; $79c6: $00
    sbc [hl]                                      ; $79c7: $9e
    ld [hl+], a                                   ; $79c8: $22
    jp nc, $df3c                                  ; $79c9: $d2 $3c $df

    inc hl                                        ; $79cc: $23
    inc b                                         ; $79cd: $04
    inc c                                         ; $79ce: $0c
    ld [hl], b                                    ; $79cf: $70
    ld d, b                                       ; $79d0: $50
    ld c, d                                       ; $79d1: $4a
    inc e                                         ; $79d2: $1c

jr_0a9_79d3:
    ld c, d                                       ; $79d3: $4a
    inc a                                         ; $79d4: $3c
    inc b                                         ; $79d5: $04
    inc c                                         ; $79d6: $0c
    ld [hl], b                                    ; $79d7: $70
    ld d, b                                       ; $79d8: $50
    ld c, d                                       ; $79d9: $4a
    inc h                                         ; $79da: $24
    dec [hl]                                      ; $79db: $35
    ld c, l                                       ; $79dc: $4d
    daa                                           ; $79dd: $27

jr_0a9_79de:
    jr jr_0a9_7998                                ; $79de: $18 $b8

    ld h, l                                       ; $79e0: $65
    sub d                                         ; $79e1: $92
    ld b, b                                       ; $79e2: $40
    ld c, $09                                     ; $79e3: $0e $09
    nop                                           ; $79e5: $00
    nop                                           ; $79e6: $00
    ld a, l                                       ; $79e7: $7d
    ld b, d                                       ; $79e8: $42
    di                                            ; $79e9: $f3
    ld c, h                                       ; $79ea: $4c
    cp [hl]                                       ; $79eb: $be
    ld b, e                                       ; $79ec: $43
    inc b                                         ; $79ed: $04
    inc c                                         ; $79ee: $0c
    dec de                                        ; $79ef: $1b
    ld a, [hl]                                    ; $79f0: $7e
    ld [hl], b                                    ; $79f1: $70
    ld d, b                                       ; $79f2: $50
    ld c, d                                       ; $79f3: $4a
    jr z, jr_0a9_79fa                             ; $79f4: $28 $04

    inc c                                         ; $79f6: $0c
    ld [hl], b                                    ; $79f7: $70
    ld d, b                                       ; $79f8: $50
    ld c, d                                       ; $79f9: $4a

jr_0a9_79fa:
    jr z, jr_0a9_7a31                             ; $79fa: $28 $35

    ld c, l                                       ; $79fc: $4d
    daa                                           ; $79fd: $27
    inc e                                         ; $79fe: $1c
    cp a                                          ; $79ff: $bf
    ld [bc], a                                    ; $7a00: $02
    call nc, $0e28                                ; $7a01: $d4 $28 $0e
    add hl, bc                                    ; $7a04: $09
    nop                                           ; $7a05: $00
    nop                                           ; $7a06: $00
    ld a, [hl]                                    ; $7a07: $7e
    ld a, [hl+]                                   ; $7a08: $2a
    ld l, l                                       ; $7a09: $6d
    inc [hl]                                      ; $7a0a: $34

jr_0a9_7a0b:
    rst $18                                       ; $7a0b: $df
    inc hl                                        ; $7a0c: $23
    ld c, d                                       ; $7a0d: $4a
    inc h                                         ; $7a0e: $24
    dec de                                        ; $7a0f: $1b
    ld a, [hl]                                    ; $7a10: $7e
    sub c                                         ; $7a11: $91
    ld d, b                                       ; $7a12: $50
    ld e, l                                       ; $7a13: $5d
    ld a, a                                       ; $7a14: $7f
    inc b                                         ; $7a15: $04
    inc c                                         ; $7a16: $0c
    ld c, d                                       ; $7a17: $4a
    inc e                                         ; $7a18: $1c
    ld c, d                                       ; $7a19: $4a
    inc a                                         ; $7a1a: $3c
    ld e, l                                       ; $7a1b: $5d
    ld a, a                                       ; $7a1c: $7f
    inc b                                         ; $7a1d: $04
    inc c                                         ; $7a1e: $0c
    cp a                                          ; $7a1f: $bf
    ld [bc], a                                    ; $7a20: $02
    jr @+$03                                      ; $7a21: $18 $01

    ld c, $09                                     ; $7a23: $0e $09
    nop                                           ; $7a25: $00
    nop                                           ; $7a26: $00
    cp a                                          ; $7a27: $bf
    ld [bc], a                                    ; $7a28: $02
    ld l, e                                       ; $7a29: $6b
    jr z, jr_0a9_7a0b                             ; $7a2a: $28 $df

    inc hl                                        ; $7a2c: $23
    ld c, d                                       ; $7a2d: $4a
    inc l                                         ; $7a2e: $2c
    dec de                                        ; $7a2f: $1b
    ld a, [hl]                                    ; $7a30: $7e

jr_0a9_7a31:
    or d                                          ; $7a31: $b2
    ld d, b                                       ; $7a32: $50
    ld e, l                                       ; $7a33: $5d
    ld a, a                                       ; $7a34: $7f
    jr z, jr_0a9_7a57                             ; $7a35: $28 $20

    cp a                                          ; $7a37: $bf
    ld [bc], a                                    ; $7a38: $02
    ld c, $09                                     ; $7a39: $0e $09
    ld [hl], b                                    ; $7a3b: $70
    ld d, b                                       ; $7a3c: $50
    jr jr_0a9_7a40                                ; $7a3d: $18 $01

    cp a                                          ; $7a3f: $bf

jr_0a9_7a40:
    ld [bc], a                                    ; $7a40: $02
    ld c, $09                                     ; $7a41: $0e $09
    ld [hl], b                                    ; $7a43: $70
    ld d, b                                       ; $7a44: $50
    nop                                           ; $7a45: $00
    nop                                           ; $7a46: $00
    cp a                                          ; $7a47: $bf
    ld [bc], a                                    ; $7a48: $02
    call $df10                                    ; $7a49: $cd $10 $df
    inc hl                                        ; $7a4c: $23
    inc b                                         ; $7a4d: $04
    inc c                                         ; $7a4e: $0c
    ld [hl], b                                    ; $7a4f: $70
    ld d, b                                       ; $7a50: $50
    ld c, d                                       ; $7a51: $4a
    jr nz, jr_0a9_7a89                            ; $7a52: $20 $35

    ld c, l                                       ; $7a54: $4d
    inc b                                         ; $7a55: $04
    inc c                                         ; $7a56: $0c

jr_0a9_7a57:
    cp a                                          ; $7a57: $bf
    ld [bc], a                                    ; $7a58: $02
    ld c, $09                                     ; $7a59: $0e $09
    ld c, d                                       ; $7a5b: $4a
    jr z, jr_0a9_7a76                             ; $7a5c: $28 $18

    ld bc, $02bf                                  ; $7a5e: $01 $bf $02
    ld c, $09                                     ; $7a61: $0e $09
    ld c, d                                       ; $7a63: $4a
    jr z, jr_0a9_7a66                             ; $7a64: $28 $00

jr_0a9_7a66:
    nop                                           ; $7a66: $00
    cp a                                          ; $7a67: $bf
    ld [bc], a                                    ; $7a68: $02
    rla                                           ; $7a69: $17
    ld bc, $23df                                  ; $7a6a: $01 $df $23
    inc b                                         ; $7a6d: $04
    inc c                                         ; $7a6e: $0c
    jr @+$03                                      ; $7a6f: $18 $01

    ld c, $09                                     ; $7a71: $0e $09
    ld c, d                                       ; $7a73: $4a
    inc e                                         ; $7a74: $1c
    inc b                                         ; $7a75: $04

jr_0a9_7a76:
    inc c                                         ; $7a76: $0c
    cp a                                          ; $7a77: $bf
    ld [bc], a                                    ; $7a78: $02
    jr @+$03                                      ; $7a79: $18 $01

    ld c, $09                                     ; $7a7b: $0e $09
    jr jr_0a9_7a80                                ; $7a7d: $18 $01

    cp a                                          ; $7a7f: $bf

jr_0a9_7a80:
    ld [bc], a                                    ; $7a80: $02
    jr @+$03                                      ; $7a81: $18 $01

    ld c, $09                                     ; $7a83: $0e $09
    nop                                           ; $7a85: $00
    nop                                           ; $7a86: $00
    ld l, h                                       ; $7a87: $6c
    ld a, [de]                                    ; $7a88: $1a

jr_0a9_7a89:
    or l                                          ; $7a89: $b5
    dec de                                        ; $7a8a: $1b
    ld l, h                                       ; $7a8b: $6c
    ld a, [de]                                    ; $7a8c: $1a
    add [hl]                                      ; $7a8d: $86
    ld b, h                                       ; $7a8e: $44
    ld l, h                                       ; $7a8f: $6c
    ld a, [de]                                    ; $7a90: $1a
    rst $30                                       ; $7a91: $f7
    ld e, h                                       ; $7a92: $5c
    or l                                          ; $7a93: $b5
    dec de                                        ; $7a94: $1b
    ld h, e                                       ; $7a95: $63
    inc c                                         ; $7a96: $0c
    ld l, h                                       ; $7a97: $6c
    ld a, [de]                                    ; $7a98: $1a
    ret                                           ; $7a99: $c9


    ld h, h                                       ; $7a9a: $64
    or l                                          ; $7a9b: $b5
    dec de                                        ; $7a9c: $1b
    dec h                                         ; $7a9d: $25
    ld bc, $1bb5                                  ; $7a9e: $01 $b5 $1b
    ld l, h                                       ; $7aa1: $6c
    ld a, [de]                                    ; $7aa2: $1a
    or l                                          ; $7aa3: $b5
    dec de                                        ; $7aa4: $1b
    nop                                           ; $7aa5: $00
    nop                                           ; $7aa6: $00
    ld l, h                                       ; $7aa7: $6c
    ld a, [de]                                    ; $7aa8: $1a
    or l                                          ; $7aa9: $b5
    dec de                                        ; $7aaa: $1b
    or l                                          ; $7aab: $b5
    dec de                                        ; $7aac: $1b
    and [hl]                                      ; $7aad: $a6
    ld b, b                                       ; $7aae: $40
    ld l, h                                       ; $7aaf: $6c
    ld a, [de]                                    ; $7ab0: $1a
    sub h                                         ; $7ab1: $94
    ld d, b                                       ; $7ab2: $50
    rst $38                                       ; $7ab3: $ff
    ld l, [hl]                                    ; $7ab4: $6e
    ld h, e                                       ; $7ab5: $63
    inc c                                         ; $7ab6: $0c
    ld l, h                                       ; $7ab7: $6c
    ld a, [de]                                    ; $7ab8: $1a
    rst $30                                       ; $7ab9: $f7
    ld e, h                                       ; $7aba: $5c
    jp hl                                         ; $7abb: $e9


    ld e, b                                       ; $7abc: $58
    ld b, $4c                                     ; $7abd: $06 $4c
    ld l, h                                       ; $7abf: $6c
    ld a, [de]                                    ; $7ac0: $1a
    dec h                                         ; $7ac1: $25
    ld bc, $4d06                                  ; $7ac2: $01 $06 $4d
    nop                                           ; $7ac5: $00
    nop                                           ; $7ac6: $00
    ld l, h                                       ; $7ac7: $6c
    ld a, [de]                                    ; $7ac8: $1a
    or l                                          ; $7ac9: $b5
    dec de                                        ; $7aca: $1b
    ld b, $4d                                     ; $7acb: $06 $4d
    rlca                                          ; $7acd: $07
    inc a                                         ; $7ace: $3c
    cp a                                          ; $7acf: $bf
    ld [hl], d                                    ; $7ad0: $72
    push de                                       ; $7ad1: $d5
    ld d, h                                       ; $7ad2: $54
    ld l, c                                       ; $7ad3: $69
    ld hl, $3cc5                                  ; $7ad4: $21 $c5 $3c
    ld l, h                                       ; $7ad7: $6c
    ld a, [de]                                    ; $7ad8: $1a
    rst $30                                       ; $7ad9: $f7
    ld e, h                                       ; $7ada: $5c
    cp a                                          ; $7adb: $bf
    ld [hl], d                                    ; $7adc: $72
    ld b, $30                                     ; $7add: $06 $30
    ld l, h                                       ; $7adf: $6c
    ld a, [de]                                    ; $7ae0: $1a
    sub h                                         ; $7ae1: $94
    ld d, b                                       ; $7ae2: $50
    dec h                                         ; $7ae3: $25
    ld bc, $0000                                  ; $7ae4: $01 $00 $00
    ld l, h                                       ; $7ae7: $6c
    ld a, [de]                                    ; $7ae8: $1a
    or l                                          ; $7ae9: $b5
    dec de                                        ; $7aea: $1b
    dec h                                         ; $7aeb: $25
    ld bc, $3408                                  ; $7aec: $01 $08 $34
    ld l, h                                       ; $7aef: $6c
    ld a, [de]                                    ; $7af0: $1a
    sub h                                         ; $7af1: $94
    ld d, b                                       ; $7af2: $50
    ld e, a                                       ; $7af3: $5f
    ld a, d                                       ; $7af4: $7a
    ld b, l                                       ; $7af5: $45
    inc [hl]                                      ; $7af6: $34
    rra                                           ; $7af7: $1f
    ld a, [hl]                                    ; $7af8: $7e
    sub $58                                       ; $7af9: $d6 $58
    ccf                                           ; $7afb: $3f
    ld h, a                                       ; $7afc: $67
    ld b, $30                                     ; $7afd: $06 $30
    ld l, c                                       ; $7aff: $69
    ld hl, $0125                                  ; $7b00: $21 $25 $01
    ld l, h                                       ; $7b03: $6c
    ld a, [de]                                    ; $7b04: $1a
    nop                                           ; $7b05: $00
    nop                                           ; $7b06: $00
    ld l, h                                       ; $7b07: $6c
    ld a, [de]                                    ; $7b08: $1a
    or l                                          ; $7b09: $b5
    dec de                                        ; $7b0a: $1b
    dec h                                         ; $7b0b: $25
    ld bc, $3409                                  ; $7b0c: $01 $09 $34
    ld l, h                                       ; $7b0f: $6c
    ld a, [de]                                    ; $7b10: $1a
    jr nc, jr_0a9_7b53                            ; $7b11: $30 $40

    rst $30                                       ; $7b13: $f7
    ld e, h                                       ; $7b14: $5c
    dec h                                         ; $7b15: $25
    inc [hl]                                      ; $7b16: $34
    ld l, h                                       ; $7b17: $6c
    ld a, [de]                                    ; $7b18: $1a
    sub h                                         ; $7b19: $94
    ld d, b                                       ; $7b1a: $50
    ld a, a                                       ; $7b1b: $7f
    halt                                          ; $7b1c: $76
    ld b, $4c                                     ; $7b1d: $06 $4c
    ld l, h                                       ; $7b1f: $6c
    ld a, [de]                                    ; $7b20: $1a
    dec h                                         ; $7b21: $25
    ld bc, $4d06                                  ; $7b22: $01 $06 $4d
    nop                                           ; $7b25: $00
    inc b                                         ; $7b26: $04
    adc $1a                                       ; $7b27: $ce $1a
    rst $30                                       ; $7b29: $f7
    ld e, h                                       ; $7b2a: $5c
    ccf                                           ; $7b2b: $3f
    ld h, a                                       ; $7b2c: $67
    dec h                                         ; $7b2d: $25
    inc h                                         ; $7b2e: $24
    ld c, h                                       ; $7b2f: $4c
    ld a, [de]                                    ; $7b30: $1a
    rst $30                                       ; $7b31: $f7
    ld e, h                                       ; $7b32: $5c
    ld b, $4d                                     ; $7b33: $06 $4d
    ld [$6c3c], sp                                ; $7b35: $08 $3c $6c
    ld a, [de]                                    ; $7b38: $1a
    ld [hl], e                                    ; $7b39: $73
    ld c, h                                       ; $7b3a: $4c
    ld b, $4d                                     ; $7b3b: $06 $4d
    and [hl]                                      ; $7b3d: $a6
    inc h                                         ; $7b3e: $24
    ld l, h                                       ; $7b3f: $6c
    ld a, [de]                                    ; $7b40: $1a

jr_0a9_7b41:
    or l                                          ; $7b41: $b5
    ld d, h                                       ; $7b42: $54
    cp a                                          ; $7b43: $bf
    ld [hl], d                                    ; $7b44: $72
    nop                                           ; $7b45: $00
    nop                                           ; $7b46: $00
    ld d, c                                       ; $7b47: $51
    ld [hl-], a                                   ; $7b48: $32
    or l                                          ; $7b49: $b5
    ld d, h                                       ; $7b4a: $54
    sbc b                                         ; $7b4b: $98
    inc sp                                        ; $7b4c: $33
    daa                                           ; $7b4d: $27
    dec a                                         ; $7b4e: $3d
    ld l, h                                       ; $7b4f: $6c
    ld a, [de]                                    ; $7b50: $1a
    ld a, d                                       ; $7b51: $7a
    ld l, c                                       ; $7b52: $69

jr_0a9_7b53:
    ccf                                           ; $7b53: $3f
    ld h, a                                       ; $7b54: $67
    ld b, [hl]                                    ; $7b55: $46
    jr c, jr_0a9_7bc4                             ; $7b56: $38 $6c

    ld a, [de]                                    ; $7b58: $1a
    rst $30                                       ; $7b59: $f7
    ld e, h                                       ; $7b5a: $5c
    rst $18                                       ; $7b5b: $df
    ld l, [hl]                                    ; $7b5c: $6e
    add $18                                       ; $7b5d: $c6 $18
    ld l, h                                       ; $7b5f: $6c
    ld a, [de]                                    ; $7b60: $1a
    sub h                                         ; $7b61: $94
    ld d, b                                       ; $7b62: $50
    ld a, a                                       ; $7b63: $7f
    halt                                          ; $7b64: $76
    nop                                           ; $7b65: $00
    nop                                           ; $7b66: $00
    xor [hl]                                      ; $7b67: $ae
    ld a, [de]                                    ; $7b68: $1a
    ld d, b                                       ; $7b69: $50
    ld b, h                                       ; $7b6a: $44
    ld l, c                                       ; $7b6b: $69
    ld hl, $3825                                  ; $7b6c: $21 $25 $38
    ld l, h                                       ; $7b6f: $6c
    ld a, [de]                                    ; $7b70: $1a
    rst $30                                       ; $7b71: $f7
    ld e, h                                       ; $7b72: $5c
    ld e, a                                       ; $7b73: $5f
    ld a, d                                       ; $7b74: $7a
    ld b, l                                       ; $7b75: $45
    jr c, @+$6e                                   ; $7b76: $38 $6c

    ld a, [de]                                    ; $7b78: $1a
    rst $30                                       ; $7b79: $f7
    ld e, h                                       ; $7b7a: $5c
    ld a, a                                       ; $7b7b: $7f
    halt                                          ; $7b7c: $76
    add hl, bc                                    ; $7b7d: $09
    inc [hl]                                      ; $7b7e: $34
    ld l, h                                       ; $7b7f: $6c
    ld a, [de]                                    ; $7b80: $1a
    ld [hl], d                                    ; $7b81: $72
    ld c, b                                       ; $7b82: $48
    dec h                                         ; $7b83: $25
    ld bc, $0000                                  ; $7b84: $01 $00 $00
    ld l, h                                       ; $7b87: $6c
    ld a, [de]                                    ; $7b88: $1a
    inc c                                         ; $7b89: $0c
    jr c, jr_0a9_7b41                             ; $7b8a: $38 $b5

    dec de                                        ; $7b8c: $1b
    dec h                                         ; $7b8d: $25
    inc l                                         ; $7b8e: $2c
    ld l, h                                       ; $7b8f: $6c
    ld a, [de]                                    ; $7b90: $1a
    ld [hl], d                                    ; $7b91: $72
    ld c, b                                       ; $7b92: $48
    inc c                                         ; $7b93: $0c
    jr c, jr_0a9_7bbc                             ; $7b94: $38 $26

    jr nc, jr_0a9_7ba3                            ; $7b96: $30 $0b

    ld e, $72                                     ; $7b98: $1e $72
    ld c, b                                       ; $7b9a: $48
    add $4c                                       ; $7b9b: $c6 $4c
    ld b, $30                                     ; $7b9d: $06 $30
    ld l, c                                       ; $7b9f: $69
    ld hl, $0125                                  ; $7ba0: $21 $25 $01

jr_0a9_7ba3:
    ld l, h                                       ; $7ba3: $6c
    ld a, [de]                                    ; $7ba4: $1a
    nop                                           ; $7ba5: $00
    nop                                           ; $7ba6: $00
    ld l, h                                       ; $7ba7: $6c
    ld a, [de]                                    ; $7ba8: $1a
    ld b, $40                                     ; $7ba9: $06 $40
    or l                                          ; $7bab: $b5
    dec de                                        ; $7bac: $1b
    ld b, h                                       ; $7bad: $44
    inc e                                         ; $7bae: $1c
    ld l, c                                       ; $7baf: $69
    ld hl, $4d06                                  ; $7bb0: $21 $06 $4d
    ld l, h                                       ; $7bb3: $6c
    ld a, [de]                                    ; $7bb4: $1a
    dec h                                         ; $7bb5: $25
    inc l                                         ; $7bb6: $2c

jr_0a9_7bb7:
    ccf                                           ; $7bb7: $3f
    ld h, a                                       ; $7bb8: $67
    sub h                                         ; $7bb9: $94
    ld d, b                                       ; $7bba: $50
    rlca                                          ; $7bbb: $07

jr_0a9_7bbc:
    ld b, l                                       ; $7bbc: $45
    dec h                                         ; $7bbd: $25
    ld bc, $1a6c                                  ; $7bbe: $01 $6c $1a
    sub h                                         ; $7bc1: $94
    ld d, b                                       ; $7bc2: $50
    rlca                                          ; $7bc3: $07

jr_0a9_7bc4:
    ld b, l                                       ; $7bc4: $45
    nop                                           ; $7bc5: $00
    nop                                           ; $7bc6: $00
    ld l, h                                       ; $7bc7: $6c
    ld a, [de]                                    ; $7bc8: $1a
    jr nc, jr_0a9_7c0b                            ; $7bc9: $30 $40

    or l                                          ; $7bcb: $b5
    dec de                                        ; $7bcc: $1b
    push bc                                       ; $7bcd: $c5
    inc l                                         ; $7bce: $2c
    ld l, h                                       ; $7bcf: $6c
    ld a, [de]                                    ; $7bd0: $1a
    rst $30                                       ; $7bd1: $f7
    ld e, h                                       ; $7bd2: $5c
    rst $38                                       ; $7bd3: $ff
    ld l, [hl]                                    ; $7bd4: $6e
    daa                                           ; $7bd5: $27
    jr z, jr_0a9_7bb7                             ; $7bd6: $28 $df

    ld l, [hl]                                    ; $7bd8: $6e
    push de                                       ; $7bd9: $d5
    ld d, h                                       ; $7bda: $54
    ld b, $4d                                     ; $7bdb: $06 $4d
    dec h                                         ; $7bdd: $25
    ld bc, $1a6c                                  ; $7bde: $01 $6c $1a
    push de                                       ; $7be1: $d5
    ld d, h                                       ; $7be2: $54
    ld b, $4d                                     ; $7be3: $06 $4d
    nop                                           ; $7be5: $00
    nop                                           ; $7be6: $00
    ld l, h                                       ; $7be7: $6c
    ld a, [de]                                    ; $7be8: $1a
    ld l, c                                       ; $7be9: $69
    ld hl, $1bb5                                  ; $7bea: $21 $b5 $1b
    add $4c                                       ; $7bed: $c6 $4c
    ld l, h                                       ; $7bef: $6c
    ld a, [de]                                    ; $7bf0: $1a
    sub $58                                       ; $7bf1: $d6 $58
    cp a                                          ; $7bf3: $bf
    ld [hl], d                                    ; $7bf4: $72
    ld b, $30                                     ; $7bf5: $06 $30
    ld l, h                                       ; $7bf7: $6c
    ld a, [de]                                    ; $7bf8: $1a
    sub h                                         ; $7bf9: $94
    ld d, b                                       ; $7bfa: $50
    ld e, a                                       ; $7bfb: $5f
    ld a, d                                       ; $7bfc: $7a
    dec h                                         ; $7bfd: $25
    ld bc, $1a6c                                  ; $7bfe: $01 $6c $1a
    sub h                                         ; $7c01: $94
    ld d, b                                       ; $7c02: $50
    ld e, a                                       ; $7c03: $5f
    ld a, d                                       ; $7c04: $7a
    nop                                           ; $7c05: $00
    nop                                           ; $7c06: $00
    ld l, h                                       ; $7c07: $6c
    ld a, [de]                                    ; $7c08: $1a
    ld b, $30                                     ; $7c09: $06 $30

jr_0a9_7c0b:
    or l                                          ; $7c0b: $b5
    dec de                                        ; $7c0c: $1b
    ld [$5f3c], sp                                ; $7c0d: $08 $3c $5f
    ld a, d                                       ; $7c10: $7a
    or h                                          ; $7c11: $b4
    ld d, b                                       ; $7c12: $50
    ld b, $4d                                     ; $7c13: $06 $4d
    ld b, $30                                     ; $7c15: $06 $30
    ld l, c                                       ; $7c17: $69
    ld hl, $3c2e                                  ; $7c18: $21 $2e $3c
    ld l, h                                       ; $7c1b: $6c
    ld a, [de]                                    ; $7c1c: $1a
    dec h                                         ; $7c1d: $25
    ld bc, $1a6c                                  ; $7c1e: $01 $6c $1a
    ld l, $3c                                     ; $7c21: $2e $3c
    ld l, h                                       ; $7c23: $6c
    ld a, [de]                                    ; $7c24: $1a
    nop                                           ; $7c25: $00
    nop                                           ; $7c26: $00
    ld l, h                                       ; $7c27: $6c
    ld a, [de]                                    ; $7c28: $1a
    or l                                          ; $7c29: $b5
    dec de                                        ; $7c2a: $1b
    ld l, h                                       ; $7c2b: $6c
    ld a, [de]                                    ; $7c2c: $1a
    dec h                                         ; $7c2d: $25
    inc l                                         ; $7c2e: $2c
    ld l, c                                       ; $7c2f: $69
    ld hl, $3c2f                                  ; $7c30: $21 $2f $3c
    ld l, h                                       ; $7c33: $6c
    ld a, [de]                                    ; $7c34: $1a
    ld h, e                                       ; $7c35: $63
    inc c                                         ; $7c36: $0c
    ld l, h                                       ; $7c37: $6c
    ld a, [de]                                    ; $7c38: $1a
    rst $30                                       ; $7c39: $f7
    ld e, h                                       ; $7c3a: $5c
    ld b, $4c                                     ; $7c3b: $06 $4c
    dec h                                         ; $7c3d: $25
    ld bc, $1a6c                                  ; $7c3e: $01 $6c $1a
    rst $30                                       ; $7c41: $f7
    ld e, h                                       ; $7c42: $5c
    ld b, $4c                                     ; $7c43: $06 $4c
    nop                                           ; $7c45: $00
    nop                                           ; $7c46: $00
    ld l, h                                       ; $7c47: $6c
    ld a, [de]                                    ; $7c48: $1a
    or l                                          ; $7c49: $b5
    dec de                                        ; $7c4a: $1b
    ld b, $4c                                     ; $7c4b: $06 $4c
    ld h, e                                       ; $7c4d: $63
    inc c                                         ; $7c4e: $0c
    ld l, h                                       ; $7c4f: $6c
    ld a, [de]                                    ; $7c50: $1a
    rst $30                                       ; $7c51: $f7
    ld e, h                                       ; $7c52: $5c
    ld b, $4c                                     ; $7c53: $06 $4c
    ld h, e                                       ; $7c55: $63
    inc c                                         ; $7c56: $0c
    ld l, h                                       ; $7c57: $6c
    ld a, [de]                                    ; $7c58: $1a
    ld b, $4c                                     ; $7c59: $06 $4c
    ld b, $4c                                     ; $7c5b: $06 $4c
    dec h                                         ; $7c5d: $25
    ld bc, $1a6c                                  ; $7c5e: $01 $6c $1a
    ld b, $4c                                     ; $7c61: $06 $4c
    ld b, $4c                                     ; $7c63: $06 $4c
    nop                                           ; $7c65: $00
    nop                                           ; $7c66: $00
    ld l, h                                       ; $7c67: $6c
    ld a, [de]                                    ; $7c68: $1a
    dec h                                         ; $7c69: $25
    ld bc, $1bb5                                  ; $7c6a: $01 $b5 $1b
    ld h, e                                       ; $7c6d: $63
    inc c                                         ; $7c6e: $0c
    ld l, h                                       ; $7c6f: $6c
    ld a, [de]                                    ; $7c70: $1a
    dec h                                         ; $7c71: $25
    ld bc, $1bb5                                  ; $7c72: $01 $b5 $1b
    ld h, e                                       ; $7c75: $63
    inc c                                         ; $7c76: $0c
    ld l, h                                       ; $7c77: $6c
    ld a, [de]                                    ; $7c78: $1a
    dec h                                         ; $7c79: $25
    ld bc, $4c06                                  ; $7c7a: $01 $06 $4c
    dec h                                         ; $7c7d: $25
    ld bc, $1a6c                                  ; $7c7e: $01 $6c $1a
    dec h                                         ; $7c81: $25
    ld bc, $4c06                                  ; $7c82: $01 $06 $4c
    nop                                           ; $7c85: $00
    nop                                           ; $7c86: $00
    nop                                           ; $7c87: $00
    inc bc                                        ; $7c88: $03
    db $ec                                        ; $7c89: $ec
    ld h, a                                       ; $7c8a: $67
    add [hl]                                      ; $7c8b: $86
    ld h, [hl]                                    ; $7c8c: $66
    add [hl]                                      ; $7c8d: $86
    ld h, [hl]                                    ; $7c8e: $66
    db $ec                                        ; $7c8f: $ec
    ld h, a                                       ; $7c90: $67
    db $ec                                        ; $7c91: $ec
    ld h, a                                       ; $7c92: $67
    add [hl]                                      ; $7c93: $86
    ld h, [hl]                                    ; $7c94: $66
    add [hl]                                      ; $7c95: $86
    ld h, [hl]                                    ; $7c96: $66
    db $ec                                        ; $7c97: $ec
    ld h, a                                       ; $7c98: $67
    db $ec                                        ; $7c99: $ec
    ld h, a                                       ; $7c9a: $67
    add [hl]                                      ; $7c9b: $86
    ld h, [hl]                                    ; $7c9c: $66
    and c                                         ; $7c9d: $a1
    ld b, l                                       ; $7c9e: $45
    db $ec                                        ; $7c9f: $ec
    ld h, a                                       ; $7ca0: $67
    add [hl]                                      ; $7ca1: $86
    ld h, [hl]                                    ; $7ca2: $66
    add [hl]                                      ; $7ca3: $86
    ld h, [hl]                                    ; $7ca4: $66
    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    add $4e                                       ; $7ca7: $c6 $4e
    db $10                                        ; $7ca9: $10
    dec b                                         ; $7caa: $05
    sbc h                                         ; $7cab: $9c
    ld b, $86                                     ; $7cac: $06 $86
    ld h, [hl]                                    ; $7cae: $66
    add $4e                                       ; $7caf: $c6 $4e
    db $10                                        ; $7cb1: $10
    dec b                                         ; $7cb2: $05
    sbc h                                         ; $7cb3: $9c
    ld b, $20                                     ; $7cb4: $06 $20
    ld [bc], a                                    ; $7cb6: $02
    add [hl]                                      ; $7cb7: $86
    ld h, [hl]                                    ; $7cb8: $66
    nop                                           ; $7cb9: $00
    inc bc                                        ; $7cba: $03
    sbc h                                         ; $7cbb: $9c
    ld b, $a1                                     ; $7cbc: $06 $a1
    ld b, l                                       ; $7cbe: $45
    add [hl]                                      ; $7cbf: $86
    ld h, [hl]                                    ; $7cc0: $66
    nop                                           ; $7cc1: $00
    inc bc                                        ; $7cc2: $03
    sbc h                                         ; $7cc3: $9c
    ld b, $00                                     ; $7cc4: $06 $00
    nop                                           ; $7cc6: $00
    sbc h                                         ; $7cc7: $9c
    ld b, $b6                                     ; $7cc8: $06 $b6
    dec b                                         ; $7cca: $05
    db $ec                                        ; $7ccb: $ec
    ld h, a                                       ; $7ccc: $67
    ld b, b                                       ; $7ccd: $40
    ld bc, $0220                                  ; $7cce: $01 $20 $02
    ld b, e                                       ; $7cd1: $43
    ld sp, $6686                                  ; $7cd2: $31 $86 $66
    rst $28                                       ; $7cd5: $ef
    inc b                                         ; $7cd6: $04
    jr nz, jr_0a9_7cdb                            ; $7cd7: $20 $02

    add [hl]                                      ; $7cd9: $86
    ld h, [hl]                                    ; $7cda: $66

jr_0a9_7cdb:
    nop                                           ; $7cdb: $00
    inc bc                                        ; $7cdc: $03
    ld b, b                                       ; $7cdd: $40
    ld bc, $0300                                  ; $7cde: $01 $00 $03
    and c                                         ; $7ce1: $a1
    ld b, l                                       ; $7ce2: $45
    add [hl]                                      ; $7ce3: $86
    ld h, [hl]                                    ; $7ce4: $66
    nop                                           ; $7ce5: $00
    nop                                           ; $7ce6: $00
    db $ec                                        ; $7ce7: $ec
    ld h, a                                       ; $7ce8: $67
    ld d, d                                       ; $7ce9: $52
    dec b                                         ; $7cea: $05
    xor c                                         ; $7ceb: $a9
    ld [$08e2], sp                                ; $7cec: $08 $e2 $08
    ret nz                                        ; $7cef: $c0

    ld [bc], a                                    ; $7cf0: $02
    rst $28                                       ; $7cf1: $ef
    inc b                                         ; $7cf2: $04
    add [hl]                                      ; $7cf3: $86
    ld h, [hl]                                    ; $7cf4: $66
    call $8604                                    ; $7cf5: $cd $04 $86
    ld h, [hl]                                    ; $7cf8: $66
    or [hl]                                       ; $7cf9: $b6
    dec b                                         ; $7cfa: $05
    sbc h                                         ; $7cfb: $9c
    ld b, $40                                     ; $7cfc: $06 $40
    ld bc, $45a1                                  ; $7cfe: $01 $a1 $45
    rrc b                                         ; $7d01: $cb $08
    add [hl]                                      ; $7d03: $86
    ld h, [hl]                                    ; $7d04: $66
    ld bc, $8600                                  ; $7d05: $01 $00 $86
    ld h, [hl]                                    ; $7d08: $66
    add hl, hl                                    ; $7d09: $29
    dec e                                         ; $7d0a: $1d
    db $ec                                        ; $7d0b: $ec
    ld h, a                                       ; $7d0c: $67
    and h                                         ; $7d0d: $a4
    inc c                                         ; $7d0e: $0c
    ld d, e                                       ; $7d0f: $53
    dec b                                         ; $7d10: $05
    add [hl]                                      ; $7d11: $86
    ld h, [hl]                                    ; $7d12: $66
    sbc h                                         ; $7d13: $9c
    ld b, $a6                                     ; $7d14: $06 $a6
    inc c                                         ; $7d16: $0c
    or [hl]                                       ; $7d17: $b6
    dec b                                         ; $7d18: $05
    add [hl]                                      ; $7d19: $86
    ld h, [hl]                                    ; $7d1a: $66
    sbc h                                         ; $7d1b: $9c
    ld b, $83                                     ; $7d1c: $06 $83
    db $10                                        ; $7d1e: $10
    and c                                         ; $7d1f: $a1
    ld b, l                                       ; $7d20: $45
    rst $28                                       ; $7d21: $ef
    inc b                                         ; $7d22: $04
    add [hl]                                      ; $7d23: $86
    ld h, [hl]                                    ; $7d24: $66
    nop                                           ; $7d25: $00
    nop                                           ; $7d26: $00
    add [hl]                                      ; $7d27: $86
    ld h, [hl]                                    ; $7d28: $66
    ld b, e                                       ; $7d29: $43
    ld sp, $67ec                                  ; $7d2a: $31 $ec $67
    add h                                         ; $7d2d: $84
    db $10                                        ; $7d2e: $10
    or [hl]                                       ; $7d2f: $b6
    dec b                                         ; $7d30: $05
    rst $28                                       ; $7d31: $ef
    inc b                                         ; $7d32: $04
    sbc h                                         ; $7d33: $9c
    ld b, $83                                     ; $7d34: $06 $83
    db $10                                        ; $7d36: $10
    add [hl]                                      ; $7d37: $86
    ld h, [hl]                                    ; $7d38: $66
    rst $28                                       ; $7d39: $ef
    inc b                                         ; $7d3a: $04
    or [hl]                                       ; $7d3b: $b6
    dec b                                         ; $7d3c: $05
    add l                                         ; $7d3d: $85
    inc c                                         ; $7d3e: $0c
    and c                                         ; $7d3f: $a1
    ld b, l                                       ; $7d40: $45
    ld b, e                                       ; $7d41: $43
    ld sp, $6686                                  ; $7d42: $31 $86 $66
    nop                                           ; $7d45: $00
    nop                                           ; $7d46: $00
    add [hl]                                      ; $7d47: $86
    ld h, [hl]                                    ; $7d48: $66
    ld b, e                                       ; $7d49: $43
    ld sp, $67ec                                  ; $7d4a: $31 $ec $67
    and a                                         ; $7d4d: $a7
    inc c                                         ; $7d4e: $0c
    rst $28                                       ; $7d4f: $ef
    inc b                                         ; $7d50: $04
    ld b, e                                       ; $7d51: $43
    ld sp, $05b6                                  ; $7d52: $31 $b6 $05
    add e                                         ; $7d55: $83
    db $10                                        ; $7d56: $10
    add [hl]                                      ; $7d57: $86
    ld h, [hl]                                    ; $7d58: $66
    rst $28                                       ; $7d59: $ef
    inc b                                         ; $7d5a: $04
    xor c                                         ; $7d5b: $a9
    ld [$1083], sp                                ; $7d5c: $08 $83 $10
    and b                                         ; $7d5f: $a0
    ld [bc], a                                    ; $7d60: $02
    add [hl]                                      ; $7d61: $86
    ld h, [hl]                                    ; $7d62: $66
    and c                                         ; $7d63: $a1
    ld b, l                                       ; $7d64: $45
    nop                                           ; $7d65: $00
    nop                                           ; $7d66: $00
    add [hl]                                      ; $7d67: $86
    ld h, [hl]                                    ; $7d68: $66
    db $ec                                        ; $7d69: $ec
    ld h, a                                       ; $7d6a: $67
    and c                                         ; $7d6b: $a1
    ld b, l                                       ; $7d6c: $45
    add l                                         ; $7d6d: $85
    inc c                                         ; $7d6e: $0c
    nop                                           ; $7d6f: $00
    inc bc                                        ; $7d70: $03
    ld b, e                                       ; $7d71: $43
    ld sp, $6686                                  ; $7d72: $31 $86 $66
    and e                                         ; $7d75: $a3
    inc d                                         ; $7d76: $14
    jr nz, jr_0a9_7d7b                            ; $7d77: $20 $02

    add [hl]                                      ; $7d79: $86
    ld h, [hl]                                    ; $7d7a: $66

jr_0a9_7d7b:
    nop                                           ; $7d7b: $00
    inc bc                                        ; $7d7c: $03
    add c                                         ; $7d7d: $81
    dec l                                         ; $7d7e: $2d
    and b                                         ; $7d7f: $a0
    ld [bc], a                                    ; $7d80: $02
    add [hl]                                      ; $7d81: $86
    ld h, [hl]                                    ; $7d82: $66
    rst $28                                       ; $7d83: $ef
    inc b                                         ; $7d84: $04
    nop                                           ; $7d85: $00
    nop                                           ; $7d86: $00
    ret nz                                        ; $7d87: $c0

    ld [bc], a                                    ; $7d88: $02
    db $ec                                        ; $7d89: $ec
    ld h, a                                       ; $7d8a: $67
    add [hl]                                      ; $7d8b: $86
    ld h, [hl]                                    ; $7d8c: $66
    and h                                         ; $7d8d: $a4
    inc d                                         ; $7d8e: $14
    nop                                           ; $7d8f: $00
    inc bc                                        ; $7d90: $03
    db $10                                        ; $7d91: $10
    dec b                                         ; $7d92: $05
    add [hl]                                      ; $7d93: $86
    ld h, [hl]                                    ; $7d94: $66
    call nz, $6008                                ; $7d95: $c4 $08 $60
    ld [bc], a                                    ; $7d98: $02
    ld sp, $8605                                  ; $7d99: $31 $05 $86
    ld h, [hl]                                    ; $7d9c: $66
    inc bc                                        ; $7d9d: $03
    dec b                                         ; $7d9e: $05
    ld d, e                                       ; $7d9f: $53
    dec b                                         ; $7da0: $05
    pop bc                                        ; $7da1: $c1
    dec l                                         ; $7da2: $2d
    sbc h                                         ; $7da3: $9c
    ld b, $00                                     ; $7da4: $06 $00
    nop                                           ; $7da6: $00
    add l                                         ; $7da7: $85
    ld d, [hl]                                    ; $7da8: $56
    ld d, e                                       ; $7da9: $53
    dec b                                         ; $7daa: $05
    db $ec                                        ; $7dab: $ec
    ld h, a                                       ; $7dac: $67
    and [hl]                                      ; $7dad: $a6
    inc c                                         ; $7dae: $0c
    add hl, sp                                    ; $7daf: $39
    ld b, $86                                     ; $7db0: $06 $86
    ld h, [hl]                                    ; $7db2: $66
    rst $28                                       ; $7db3: $ef
    inc b                                         ; $7db4: $04
    push bc                                       ; $7db5: $c5
    ld [$0573], sp                                ; $7db6: $08 $73 $05
    and [hl]                                      ; $7db9: $a6
    ld h, [hl]                                    ; $7dba: $66
    sbc h                                         ; $7dbb: $9c
    ld b, $a9                                     ; $7dbc: $06 $a9
    ld [$0573], sp                                ; $7dbe: $08 $73 $05
    sbc h                                         ; $7dc1: $9c
    ld b, $a1                                     ; $7dc2: $06 $a1
    ld b, l                                       ; $7dc4: $45
    nop                                           ; $7dc5: $00
    nop                                           ; $7dc6: $00
    add sp, $66                                   ; $7dc7: $e8 $66
    ld [hl-], a                                   ; $7dc9: $32
    dec b                                         ; $7dca: $05
    sbc h                                         ; $7dcb: $9c
    ld b, $84                                     ; $7dcc: $06 $84
    db $10                                        ; $7dce: $10
    rst $10                                       ; $7dcf: $d7
    dec b                                         ; $7dd0: $05
    add [hl]                                      ; $7dd1: $86
    ld h, [hl]                                    ; $7dd2: $66
    rst $28                                       ; $7dd3: $ef
    inc b                                         ; $7dd4: $04
    add l                                         ; $7dd5: $85
    inc c                                         ; $7dd6: $0c
    rst $28                                       ; $7dd7: $ef
    inc b                                         ; $7dd8: $04
    ld b, e                                       ; $7dd9: $43
    ld sp, $05b6                                  ; $7dda: $31 $b6 $05
    and a                                         ; $7ddd: $a7
    inc c                                         ; $7dde: $0c
    db $e3                                        ; $7ddf: $e3
    ld d, c                                       ; $7de0: $51
    rst $28                                       ; $7de1: $ef
    inc b                                         ; $7de2: $04
    or [hl]                                       ; $7de3: $b6
    dec b                                         ; $7de4: $05
    nop                                           ; $7de5: $00
    nop                                           ; $7de6: $00
    add [hl]                                      ; $7de7: $86
    ld h, [hl]                                    ; $7de8: $66
    inc c                                         ; $7de9: $0c
    ld de, $67ec                                  ; $7dea: $11 $ec $67
    add [hl]                                      ; $7ded: $86
    inc c                                         ; $7dee: $0c
    add [hl]                                      ; $7def: $86
    ld h, [hl]                                    ; $7df0: $66
    rst $28                                       ; $7df1: $ef
    inc b                                         ; $7df2: $04
    or [hl]                                       ; $7df3: $b6
    dec b                                         ; $7df4: $05
    add e                                         ; $7df5: $83
    db $10                                        ; $7df6: $10
    rst $28                                       ; $7df7: $ef
    inc b                                         ; $7df8: $04
    ld b, e                                       ; $7df9: $43
    ld sp, $08a9                                  ; $7dfa: $31 $a9 $08
    add l                                         ; $7dfd: $85
    inc c                                         ; $7dfe: $0c
    and c                                         ; $7dff: $a1
    ld b, l                                       ; $7e00: $45
    ld b, e                                       ; $7e01: $43
    ld sp, $6686                                  ; $7e02: $31 $86 $66
    nop                                           ; $7e05: $00
    nop                                           ; $7e06: $00
    add [hl]                                      ; $7e07: $86
    ld h, [hl]                                    ; $7e08: $66
    ld b, e                                       ; $7e09: $43
    ld sp, $67ec                                  ; $7e0a: $31 $ec $67
    add e                                         ; $7e0d: $83
    db $10                                        ; $7e0e: $10
    add [hl]                                      ; $7e0f: $86
    ld h, [hl]                                    ; $7e10: $66
    ld b, e                                       ; $7e11: $43
    ld sp, $08a9                                  ; $7e12: $31 $a9 $08
    add e                                         ; $7e15: $83
    db $10                                        ; $7e16: $10
    add [hl]                                      ; $7e17: $86
    ld h, [hl]                                    ; $7e18: $66
    ld b, e                                       ; $7e19: $43
    ld sp, $08a9                                  ; $7e1a: $31 $a9 $08
    and c                                         ; $7e1d: $a1
    ld b, l                                       ; $7e1e: $45
    add [hl]                                      ; $7e1f: $86
    ld h, [hl]                                    ; $7e20: $66
    ld b, e                                       ; $7e21: $43
    ld sp, $08a9                                  ; $7e22: $31 $a9 $08
    nop                                           ; $7e25: $00
    nop                                           ; $7e26: $00
    add [hl]                                      ; $7e27: $86
    ld h, [hl]                                    ; $7e28: $66
    db $ec                                        ; $7e29: $ec
    ld h, a                                       ; $7e2a: $67
    xor c                                         ; $7e2b: $a9
    ld [$1083], sp                                ; $7e2c: $08 $83 $10
    add [hl]                                      ; $7e2f: $86
    ld h, [hl]                                    ; $7e30: $66
    ld b, e                                       ; $7e31: $43
    ld sp, $08a9                                  ; $7e32: $31 $a9 $08
    add [hl]                                      ; $7e35: $86
    ld h, [hl]                                    ; $7e36: $66
    add [hl]                                      ; $7e37: $86
    ld h, [hl]                                    ; $7e38: $66
    ld b, e                                       ; $7e39: $43
    ld sp, $08a9                                  ; $7e3a: $31 $a9 $08
    and c                                         ; $7e3d: $a1
    ld b, l                                       ; $7e3e: $45
    add [hl]                                      ; $7e3f: $86
    ld h, [hl]                                    ; $7e40: $66
    ld b, e                                       ; $7e41: $43
    ld sp, $08a9                                  ; $7e42: $31 $a9 $08
    nop                                           ; $7e45: $00
    nop                                           ; $7e46: $00
    add [hl]                                      ; $7e47: $86
    ld h, [hl]                                    ; $7e48: $66
    db $ec                                        ; $7e49: $ec
    ld h, a                                       ; $7e4a: $67
    xor c                                         ; $7e4b: $a9
    ld [$1083], sp                                ; $7e4c: $08 $83 $10
    add [hl]                                      ; $7e4f: $86
    ld h, [hl]                                    ; $7e50: $66
    ld b, e                                       ; $7e51: $43
    ld sp, $08a9                                  ; $7e52: $31 $a9 $08
    add [hl]                                      ; $7e55: $86
    ld h, [hl]                                    ; $7e56: $66
    add [hl]                                      ; $7e57: $86
    ld h, [hl]                                    ; $7e58: $66
    ld b, e                                       ; $7e59: $43
    ld sp, $08a9                                  ; $7e5a: $31 $a9 $08
    and c                                         ; $7e5d: $a1
    ld b, l                                       ; $7e5e: $45
    add [hl]                                      ; $7e5f: $86
    ld h, [hl]                                    ; $7e60: $66
    ld b, e                                       ; $7e61: $43
    ld sp, $08a9                                  ; $7e62: $31 $a9 $08
    nop                                           ; $7e65: $00
    nop                                           ; $7e66: $00
    add [hl]                                      ; $7e67: $86
    ld h, [hl]                                    ; $7e68: $66
    and c                                         ; $7e69: $a1
    ld b, l                                       ; $7e6a: $45
    db $ec                                        ; $7e6b: $ec
    ld h, a                                       ; $7e6c: $67
    add e                                         ; $7e6d: $83
    db $10                                        ; $7e6e: $10
    and c                                         ; $7e6f: $a1
    ld b, l                                       ; $7e70: $45
    add [hl]                                      ; $7e71: $86
    ld h, [hl]                                    ; $7e72: $66
    db $ec                                        ; $7e73: $ec
    ld h, a                                       ; $7e74: $67
    and c                                         ; $7e75: $a1
    ld b, l                                       ; $7e76: $45
    add [hl]                                      ; $7e77: $86
    ld h, [hl]                                    ; $7e78: $66
    add [hl]                                      ; $7e79: $86
    ld h, [hl]                                    ; $7e7a: $66
    db $ec                                        ; $7e7b: $ec
    ld h, a                                       ; $7e7c: $67
    and c                                         ; $7e7d: $a1
    ld b, l                                       ; $7e7e: $45
    add [hl]                                      ; $7e7f: $86
    ld h, [hl]                                    ; $7e80: $66
    add [hl]                                      ; $7e81: $86
    ld h, [hl]                                    ; $7e82: $66
    db $ec                                        ; $7e83: $ec
    ld h, a                                       ; $7e84: $67

    db $07, $00, $07, $00, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a, $8b
    db $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b
    db $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab
    db $ac, $ad, $ae, $af, $b0, $01, $02, $03, $04, $05, $06, $07, $01, $02, $03, $04
    db $05, $06, $07, $01, $02, $03, $04, $05, $06, $07, $01, $02, $03, $04, $05, $06
    db $07, $01, $02, $03, $04, $05, $06, $07, $01, $02, $03, $04, $05, $06, $07, $01
    db $02, $03, $04, $05, $06, $07, $60, $00, $31, $00, $20, $ff, $00, $02, $78, $bb
    db $44, $ff, $00, $aa, $40, $55, $04, $08, $77, $88, $55, $ff, $ff, $ff, $aa, $04
    db $08, $75, $08, $00, $dd, $0c, $10, $00, $10, $00, $88, $a0, $14, $00, $aa, $18
    db $00, $ee, $ff, $aa, $55, $00, $1c, $ff, $22, $dd, $45, $18, $37, $00, $10, $00
    db $55, $aa, $00, $aa, $55, $11, $ee, $aa, $55, $04, $fb, $80, $1c, $08, $f0, $00
    db $86, $00, $50, $00, $01, $80, $80, $02, $08, $40, $c0, $00, $c0, $10, $21, $61
    db $80, $20, $08, $60, $10, $60, $00, $00, $60, $80, $a0, $51, $a0, $10, $10, $a0
    db $80, $30, $20, $04, $04, $00, $fc, $01, $40, $04, $20, $40, $10, $40, $38, $e1
    db $12, $70, $09, $58, $41, $24, $50, $38, $ce, $31, $84, $0a, $84, $5f, $40, $08
    db $30, $48, $10, $00, $2f, $18, $07, $08, $03, $00, $04, $05, $02, $04, $01, $04
    db $08, $04, $40, $08, $03, $00, $04, $08, $00, $08, $10, $18, $80, $3a, $20, $71
    db $02, $32, $09, $1a, $24, $1c, $00, $02, $0c, $10, $08, $04, $00, $08, $00, $10
    db $00, $10, $20, $36, $08, $10, $00, $18, $21, $80, $aa, $18, $50, $20, $70, $00
    db $40, $10, $40, $10, $00, $f8, $05, $ba, $18, $4c, $12, $46, $09, $05, $43, $04
    db $41, $82, $c0, $20, $20, $84, $02, $08, $07, $02, $86, $01, $83, $04, $c7, $00
    db $dd, $00, $3e, $10, $04, $20, $20, $50, $c0, $20, $ea, $18

    rst $38                                       ; $7fe1: $ff
    ld a, a                                       ; $7fe2: $7f
    dec d                                         ; $7fe3: $15
    ld a, [hl]                                    ; $7fe4: $7e
    xor [hl]                                      ; $7fe5: $ae
    ld e, h                                       ; $7fe6: $5c
    nop                                           ; $7fe7: $00
    nop                                           ; $7fe8: $00
    ld de, $0f4a                                  ; $7fe9: $11 $4a $0f
    inc bc                                        ; $7fec: $03
    and d                                         ; $7fed: $a2
    ld bc, $0000                                  ; $7fee: $01 $00 $00
    db $eb                                        ; $7ff1: $eb
    ld l, $de                                     ; $7ff2: $2e $de
    ld c, [hl]                                    ; $7ff4: $4e
    ld d, b                                       ; $7ff5: $50
    add hl, de                                    ; $7ff6: $19
    nop                                           ; $7ff7: $00
    nop                                           ; $7ff8: $00
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
