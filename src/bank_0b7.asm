; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b7", ROMX[$4000], BANK[$b7]

    db $b7

    nop                                           ; $4001: $00
    jr nz, jr_0b7_4004                            ; $4002: $20 $00

jr_0b7_4004:
    jr nz, jr_0b7_4006                            ; $4004: $20 $00

jr_0b7_4006:
    jr nz, @+$6d                                  ; $4006: $20 $6b

    dec l                                         ; $4008: $2d
    nop                                           ; $4009: $00
    jr nz, jr_0b7_400c                            ; $400a: $20 $00

jr_0b7_400c:
    jr nz, jr_0b7_400e                            ; $400c: $20 $00

jr_0b7_400e:
    jr nz, @+$6d                                  ; $400e: $20 $6b

    dec l                                         ; $4010: $2d
    nop                                           ; $4011: $00
    jr nz, jr_0b7_4014                            ; $4012: $20 $00

jr_0b7_4014:
    jr nz, jr_0b7_4016                            ; $4014: $20 $00

jr_0b7_4016:
    jr nz, jr_0b7_4083                            ; $4016: $20 $6b

    dec l                                         ; $4018: $2d
    nop                                           ; $4019: $00
    nop                                           ; $401a: $00
    rst $38                                       ; $401b: $ff
    ld a, a                                       ; $401c: $7f
    nop                                           ; $401d: $00
    jr nz, @+$01                                  ; $401e: $20 $ff

    ld a, a                                       ; $4020: $7f
    nop                                           ; $4021: $00
    jr nz, @+$01                                  ; $4022: $20 $ff

    ld a, a                                       ; $4024: $7f
    nop                                           ; $4025: $00
    jr nz, @+$01                                  ; $4026: $20 $ff

    ld a, a                                       ; $4028: $7f
    nop                                           ; $4029: $00
    jr nz, @+$01                                  ; $402a: $20 $ff

    ld a, a                                       ; $402c: $7f
    nop                                           ; $402d: $00
    jr nz, @+$01                                  ; $402e: $20 $ff

    ld a, a                                       ; $4030: $7f
    nop                                           ; $4031: $00
    jr nz, @+$01                                  ; $4032: $20 $ff

    ld a, a                                       ; $4034: $7f
    nop                                           ; $4035: $00
    jr nz, @+$01                                  ; $4036: $20 $ff

    ld a, a                                       ; $4038: $7f
    nop                                           ; $4039: $00
    jr nz, jr_0b7_403c                            ; $403a: $20 $00

jr_0b7_403c:
    jr nz, jr_0b7_403e                            ; $403c: $20 $00

jr_0b7_403e:
    jr nz, @+$6d                                  ; $403e: $20 $6b

    dec l                                         ; $4040: $2d
    nop                                           ; $4041: $00
    jr nz, jr_0b7_4044                            ; $4042: $20 $00

jr_0b7_4044:
    jr nz, jr_0b7_4046                            ; $4044: $20 $00

jr_0b7_4046:
    jr nz, @+$6d                                  ; $4046: $20 $6b

    dec l                                         ; $4048: $2d
    nop                                           ; $4049: $00
    jr nz, jr_0b7_404c                            ; $404a: $20 $00

jr_0b7_404c:
    jr nz, jr_0b7_404e                            ; $404c: $20 $00

jr_0b7_404e:
    jr nz, jr_0b7_40bb                            ; $404e: $20 $6b

    dec l                                         ; $4050: $2d
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    rst $38                                       ; $4053: $ff
    ld a, a                                       ; $4054: $7f
    nop                                           ; $4055: $00
    jr nz, @+$01                                  ; $4056: $20 $ff

    ld a, a                                       ; $4058: $7f
    nop                                           ; $4059: $00
    nop                                           ; $405a: $00
    nop                                           ; $405b: $00
    jr nz, jr_0b7_405e                            ; $405c: $20 $00

jr_0b7_405e:
    jr nz, @+$01                                  ; $405e: $20 $ff

    ld a, a                                       ; $4060: $7f
    nop                                           ; $4061: $00
    jr nz, jr_0b7_4064                            ; $4062: $20 $00

jr_0b7_4064:
    jr nz, jr_0b7_4066                            ; $4064: $20 $00

jr_0b7_4066:
    jr nz, @+$01                                  ; $4066: $20 $ff

    ld a, a                                       ; $4068: $7f
    nop                                           ; $4069: $00
    jr nz, jr_0b7_406c                            ; $406a: $20 $00

jr_0b7_406c:
    jr nz, jr_0b7_406e                            ; $406c: $20 $00

jr_0b7_406e:
    jr nz, @+$01                                  ; $406e: $20 $ff

    ld a, a                                       ; $4070: $7f
    nop                                           ; $4071: $00
    jr nz, jr_0b7_4074                            ; $4072: $20 $00

jr_0b7_4074:
    jr nz, jr_0b7_4076                            ; $4074: $20 $00

jr_0b7_4076:
    jr nz, @+$6d                                  ; $4076: $20 $6b

    dec l                                         ; $4078: $2d
    nop                                           ; $4079: $00
    jr nz, jr_0b7_407c                            ; $407a: $20 $00

jr_0b7_407c:
    jr nz, jr_0b7_407e                            ; $407c: $20 $00

jr_0b7_407e:
    jr nz, @+$6d                                  ; $407e: $20 $6b

    dec l                                         ; $4080: $2d
    nop                                           ; $4081: $00
    nop                                           ; $4082: $00

jr_0b7_4083:
    rst $38                                       ; $4083: $ff
    ld a, a                                       ; $4084: $7f
    nop                                           ; $4085: $00
    jr nz, jr_0b7_40f3                            ; $4086: $20 $6b

    dec l                                         ; $4088: $2d
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    jr jr_0b7_40f0                                ; $408b: $18 $63

    rst $38                                       ; $408d: $ff
    ld a, a                                       ; $408e: $7f
    ld e, d                                       ; $408f: $5a
    ld l, e                                       ; $4090: $6b
    nop                                           ; $4091: $00
    nop                                           ; $4092: $00
    rst $38                                       ; $4093: $ff
    ld a, a                                       ; $4094: $7f
    nop                                           ; $4095: $00
    jr nz, jr_0b7_40f2                            ; $4096: $20 $5a

    ld l, e                                       ; $4098: $6b
    nop                                           ; $4099: $00
    jr nz, @+$01                                  ; $409a: $20 $ff

    ld a, a                                       ; $409c: $7f
    nop                                           ; $409d: $00
    jr nz, jr_0b7_40fa                            ; $409e: $20 $5a

    ld l, e                                       ; $40a0: $6b
    nop                                           ; $40a1: $00
    jr nz, @+$01                                  ; $40a2: $20 $ff

    ld a, a                                       ; $40a4: $7f
    nop                                           ; $40a5: $00
    jr nz, jr_0b7_4102                            ; $40a6: $20 $5a

    ld l, e                                       ; $40a8: $6b
    nop                                           ; $40a9: $00
    jr nz, @+$01                                  ; $40aa: $20 $ff

    ld a, a                                       ; $40ac: $7f
    nop                                           ; $40ad: $00
    jr nz, @+$6d                                  ; $40ae: $20 $6b

    dec l                                         ; $40b0: $2d
    nop                                           ; $40b1: $00
    jr nz, @+$01                                  ; $40b2: $20 $ff

    ld a, a                                       ; $40b4: $7f
    nop                                           ; $40b5: $00
    jr nz, jr_0b7_4123                            ; $40b6: $20 $6b

    dec l                                         ; $40b8: $2d
    nop                                           ; $40b9: $00
    nop                                           ; $40ba: $00

jr_0b7_40bb:
    rst $38                                       ; $40bb: $ff
    ld a, a                                       ; $40bc: $7f
    nop                                           ; $40bd: $00
    jr nz, jr_0b7_412b                            ; $40be: $20 $6b

    dec l                                         ; $40c0: $2d
    rst $28                                       ; $40c1: $ef
    dec a                                         ; $40c2: $3d
    jr jr_0b7_4128                                ; $40c3: $18 $63

    ld [hl], e                                    ; $40c5: $73
    ld c, [hl]                                    ; $40c6: $4e
    ld e, d                                       ; $40c7: $5a
    ld l, e                                       ; $40c8: $6b
    nop                                           ; $40c9: $00
    nop                                           ; $40ca: $00
    jr jr_0b7_4130                                ; $40cb: $18 $63

    nop                                           ; $40cd: $00
    jr nz, @+$01                                  ; $40ce: $20 $ff

    ld a, a                                       ; $40d0: $7f
    nop                                           ; $40d1: $00
    jr nz, jr_0b7_40ec                            ; $40d2: $20 $18

    ld h, e                                       ; $40d4: $63
    nop                                           ; $40d5: $00
    jr nz, @+$01                                  ; $40d6: $20 $ff

    ld a, a                                       ; $40d8: $7f
    nop                                           ; $40d9: $00
    jr nz, jr_0b7_40f4                            ; $40da: $20 $18

    ld h, e                                       ; $40dc: $63
    nop                                           ; $40dd: $00
    jr nz, @+$01                                  ; $40de: $20 $ff

    ld a, a                                       ; $40e0: $7f
    nop                                           ; $40e1: $00
    jr nz, @+$01                                  ; $40e2: $20 $ff

    ld a, a                                       ; $40e4: $7f
    nop                                           ; $40e5: $00
    jr nz, jr_0b7_4153                            ; $40e6: $20 $6b

    dec l                                         ; $40e8: $2d
    nop                                           ; $40e9: $00
    jr nz, @+$01                                  ; $40ea: $20 $ff

jr_0b7_40ec:
    ld a, a                                       ; $40ec: $7f
    nop                                           ; $40ed: $00
    jr nz, jr_0b7_415b                            ; $40ee: $20 $6b

jr_0b7_40f0:
    dec l                                         ; $40f0: $2d
    nop                                           ; $40f1: $00

jr_0b7_40f2:
    nop                                           ; $40f2: $00

jr_0b7_40f3:
    rst $38                                       ; $40f3: $ff

jr_0b7_40f4:
    ld a, a                                       ; $40f4: $7f
    ld l, e                                       ; $40f5: $6b
    dec l                                         ; $40f6: $2d
    nop                                           ; $40f7: $00
    jr nz, jr_0b7_413d                            ; $40f8: $20 $43

jr_0b7_40fa:
    nop                                           ; $40fa: $00
    ld sp, $3946                                  ; $40fb: $31 $46 $39
    ld h, a                                       ; $40fe: $67
    sub e                                         ; $40ff: $93
    nop                                           ; $4100: $00
    nop                                           ; $4101: $00

jr_0b7_4102:
    nop                                           ; $4102: $00
    sub $5a                                       ; $4103: $d6 $5a
    rst $38                                       ; $4105: $ff
    ld a, a                                       ; $4106: $7f
    nop                                           ; $4107: $00
    jr nz, jr_0b7_410a                            ; $4108: $20 $00

jr_0b7_410a:
    nop                                           ; $410a: $00
    nop                                           ; $410b: $00
    jr nz, @+$01                                  ; $410c: $20 $ff

    ld a, a                                       ; $410e: $7f
    nop                                           ; $410f: $00
    jr nz, jr_0b7_4112                            ; $4110: $20 $00

jr_0b7_4112:
    jr nz, jr_0b7_4114                            ; $4112: $20 $00

jr_0b7_4114:
    jr nz, @+$01                                  ; $4114: $20 $ff

    ld a, a                                       ; $4116: $7f
    nop                                           ; $4117: $00

jr_0b7_4118:
    jr nz, jr_0b7_411a                            ; $4118: $20 $00

jr_0b7_411a:
    jr nz, @+$01                                  ; $411a: $20 $ff

    ld a, a                                       ; $411c: $7f
    ld l, e                                       ; $411d: $6b
    dec l                                         ; $411e: $2d
    nop                                           ; $411f: $00
    jr nz, jr_0b7_4122                            ; $4120: $20 $00

jr_0b7_4122:
    nop                                           ; $4122: $00

jr_0b7_4123:
    rst $38                                       ; $4123: $ff
    ld a, a                                       ; $4124: $7f
    nop                                           ; $4125: $00
    jr nz, jr_0b7_4128                            ; $4126: $20 $00

jr_0b7_4128:
    jr nz, jr_0b7_414b                            ; $4128: $20 $21

    inc b                                         ; $412a: $04

jr_0b7_412b:
    rst $38                                       ; $412b: $ff
    ld a, a                                       ; $412c: $7f
    ld [$6b21], sp                                ; $412d: $08 $21 $6b

jr_0b7_4130:
    dec l                                         ; $4130: $2d
    ld b, e                                       ; $4131: $43
    nop                                           ; $4132: $00
    ld sp, $df46                                  ; $4133: $31 $46 $df
    ld bc, $6739                                  ; $4136: $01 $39 $67
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    ld d, d                                       ; $413b: $52
    ld c, d                                       ; $413c: $4a

jr_0b7_413d:
    ld hl, sp+$00                                 ; $413d: $f8 $00
    rst $38                                       ; $413f: $ff
    ld a, a                                       ; $4140: $7f
    nop                                           ; $4141: $00
    inc e                                         ; $4142: $1c
    sub h                                         ; $4143: $94
    nop                                           ; $4144: $00
    rst $38                                       ; $4145: $ff
    ld a, a                                       ; $4146: $7f
    ld e, e                                       ; $4147: $5b
    ld bc, $2000                                  ; $4148: $01 $00 $20

jr_0b7_414b:
    sub h                                         ; $414b: $94
    nop                                           ; $414c: $00
    rst $38                                       ; $414d: $ff
    ld a, a                                       ; $414e: $7f
    ld e, e                                       ; $414f: $5b
    ld bc, $2000                                  ; $4150: $01 $00 $20

jr_0b7_4153:
    rst $38                                       ; $4153: $ff
    ld a, a                                       ; $4154: $7f
    ld [$6b21], sp                                ; $4155: $08 $21 $6b
    dec l                                         ; $4158: $2d
    nop                                           ; $4159: $00
    nop                                           ; $415a: $00

jr_0b7_415b:
    rst $38                                       ; $415b: $ff
    ld a, a                                       ; $415c: $7f
    nop                                           ; $415d: $00
    jr nz, jr_0b7_41cb                            ; $415e: $20 $6b

    dec l                                         ; $4160: $2d
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    ld [$8421], sp                                ; $4163: $08 $21 $84
    db $10                                        ; $4166: $10
    ld l, e                                       ; $4167: $6b
    dec l                                         ; $4168: $2d
    ld b, e                                       ; $4169: $43
    nop                                           ; $416a: $00
    db $10                                        ; $416b: $10
    ld b, d                                       ; $416c: $42
    ld e, d                                       ; $416d: $5a
    ld l, e                                       ; $416e: $6b
    sub h                                         ; $416f: $94
    nop                                           ; $4170: $00
    ld b, e                                       ; $4171: $43
    nop                                           ; $4172: $00
    rst $38                                       ; $4173: $ff
    ld bc, $4210                                  ; $4174: $01 $10 $42
    ld [hl], d                                    ; $4177: $72
    nop                                           ; $4178: $00
    nop                                           ; $4179: $00
    nop                                           ; $417a: $00
    sub h                                         ; $417b: $94
    nop                                           ; $417c: $00
    ld e, a                                       ; $417d: $5f
    ld [bc], a                                    ; $417e: $02
    nop                                           ; $417f: $00
    jr nz, jr_0b7_4182                            ; $4180: $20 $00

jr_0b7_4182:
    jr nz, jr_0b7_4118                            ; $4182: $20 $94

    nop                                           ; $4184: $00
    ld e, a                                       ; $4185: $5f
    ld [bc], a                                    ; $4186: $02
    nop                                           ; $4187: $00
    jr nz, jr_0b7_418a                            ; $4188: $20 $00

jr_0b7_418a:
    jr nz, jr_0b7_4194                            ; $418a: $20 $08

    ld hl, $1084                                  ; $418c: $21 $84 $10
    ld l, e                                       ; $418f: $6b
    dec l                                         ; $4190: $2d
    nop                                           ; $4191: $00
    nop                                           ; $4192: $00
    rst $38                                       ; $4193: $ff

jr_0b7_4194:
    ld a, a                                       ; $4194: $7f
    nop                                           ; $4195: $00
    jr nz, jr_0b7_4203                            ; $4196: $20 $6b

    dec l                                         ; $4198: $2d
    ld h, e                                       ; $4199: $63
    inc c                                         ; $419a: $0c
    ld [$9421], sp                                ; $419b: $08 $21 $94
    nop                                           ; $419e: $00
    ld l, e                                       ; $419f: $6b
    dec l                                         ; $41a0: $2d
    sub h                                         ; $41a1: $94
    nop                                           ; $41a2: $00
    rst $38                                       ; $41a3: $ff
    ld bc, $013e                                  ; $41a4: $01 $3e $01
    ccf                                           ; $41a7: $3f
    ld [bc], a                                    ; $41a8: $02
    ld c, d                                       ; $41a9: $4a
    nop                                           ; $41aa: $00
    ld a, [hl]                                    ; $41ab: $7e
    ld bc, $0098                                  ; $41ac: $01 $98 $00
    ld a, a                                       ; $41af: $7f
    ld [bc], a                                    ; $41b0: $02
    inc hl                                        ; $41b1: $23
    nop                                           ; $41b2: $00
    sbc b                                         ; $41b3: $98
    nop                                           ; $41b4: $00
    rst $38                                       ; $41b5: $ff
    ld a, a                                       ; $41b6: $7f
    ld e, l                                       ; $41b7: $5d
    ld [bc], a                                    ; $41b8: $02
    nop                                           ; $41b9: $00
    nop                                           ; $41ba: $00
    nop                                           ; $41bb: $00
    jr nz, @+$01                                  ; $41bc: $20 $ff

    ld a, a                                       ; $41be: $7f
    ld e, l                                       ; $41bf: $5d
    ld [bc], a                                    ; $41c0: $02
    nop                                           ; $41c1: $00
    nop                                           ; $41c2: $00
    rst $38                                       ; $41c3: $ff
    ld a, a                                       ; $41c4: $7f
    nop                                           ; $41c5: $00
    jr nz, jr_0b7_4233                            ; $41c6: $20 $6b

    dec l                                         ; $41c8: $2d
    nop                                           ; $41c9: $00
    nop                                           ; $41ca: $00

jr_0b7_41cb:
    rst $38                                       ; $41cb: $ff
    ld a, a                                       ; $41cc: $7f
    nop                                           ; $41cd: $00
    jr nz, jr_0b7_423b                            ; $41ce: $20 $6b

    dec l                                         ; $41d0: $2d
    ld [hl+], a                                   ; $41d1: $22
    inc b                                         ; $41d2: $04
    sub h                                         ; $41d3: $94
    nop                                           ; $41d4: $00
    sbc $01                                       ; $41d5: $de $01
    and l                                         ; $41d7: $a5
    inc d                                         ; $41d8: $14
    ld b, e                                       ; $41d9: $43
    nop                                           ; $41da: $00
    ld [hl], e                                    ; $41db: $73
    ld c, [hl]                                    ; $41dc: $4e
    sbc b                                         ; $41dd: $98
    nop                                           ; $41de: $00
    sbc a                                         ; $41df: $9f
    ld [bc], a                                    ; $41e0: $02
    ld h, [hl]                                    ; $41e1: $66
    nop                                           ; $41e2: $00
    ld a, a                                       ; $41e3: $7f
    ld [bc], a                                    ; $41e4: $02
    inc sp                                        ; $41e5: $33
    ld bc, $0098                                  ; $41e6: $01 $98 $00
    inc hl                                        ; $41e9: $23
    nop                                           ; $41ea: $00
    rst $30                                       ; $41eb: $f7
    nop                                           ; $41ec: $00
    rst $38                                       ; $41ed: $ff
    ld a, a                                       ; $41ee: $7f
    dec e                                         ; $41ef: $1d
    ld [bc], a                                    ; $41f0: $02
    nop                                           ; $41f1: $00
    nop                                           ; $41f2: $00
    rst $38                                       ; $41f3: $ff
    ld a, a                                       ; $41f4: $7f
    nop                                           ; $41f5: $00
    jr nz, @+$23                                  ; $41f6: $20 $21

    inc b                                         ; $41f8: $04
    nop                                           ; $41f9: $00
    nop                                           ; $41fa: $00
    rst $38                                       ; $41fb: $ff
    ld a, a                                       ; $41fc: $7f
    nop                                           ; $41fd: $00
    jr nz, @-$59                                  ; $41fe: $20 $a5

    inc d                                         ; $4200: $14
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00

jr_0b7_4203:
    db $db                                        ; $4203: $db
    ld a, [hl-]                                   ; $4204: $3a
    ld b, e                                       ; $4205: $43
    nop                                           ; $4206: $00
    ld a, $43                                     ; $4207: $3e $43
    ld hl, $0804                                  ; $4209: $21 $04 $08
    ld hl, $1084                                  ; $420c: $21 $84 $10
    ld l, e                                       ; $420f: $6b
    dec l                                         ; $4210: $2d
    ld b, e                                       ; $4211: $43
    nop                                           ; $4212: $00
    ld [hl], e                                    ; $4213: $73
    ld c, [hl]                                    ; $4214: $4e
    sub e                                         ; $4215: $93
    nop                                           ; $4216: $00
    ld a, a                                       ; $4217: $7f
    ld bc, $0023                                  ; $4218: $01 $23 $00
    inc [hl]                                      ; $421b: $34
    dec c                                         ; $421c: $0d
    dec e                                         ; $421d: $1d
    ld [bc], a                                    ; $421e: $02
    ld e, c                                       ; $421f: $59
    ld [hl-], a                                   ; $4220: $32
    inc hl                                        ; $4221: $23
    nop                                           ; $4222: $00
    ld d, [hl]                                    ; $4223: $56
    ld bc, $023f                                  ; $4224: $01 $3f $02
    db $ec                                        ; $4227: $ec
    ld [$1c00], sp                                ; $4228: $08 $00 $1c
    ld a, a                                       ; $422b: $7f
    ld bc, $0098                                  ; $422c: $01 $98 $00
    rst $38                                       ; $422f: $ff
    ld a, a                                       ; $4230: $7f
    nop                                           ; $4231: $00
    nop                                           ; $4232: $00

jr_0b7_4233:
    rst $38                                       ; $4233: $ff
    ld a, a                                       ; $4234: $7f
    inc d                                         ; $4235: $14
    ld h, $00                                     ; $4236: $26 $00
    jr nz, jr_0b7_425b                            ; $4238: $20 $21

    nop                                           ; $423a: $00

jr_0b7_423b:
    ld a, $47                                     ; $423b: $3e $47
    rst $38                                       ; $423d: $ff
    ld [hl], a                                    ; $423e: $77
    cp a                                          ; $423f: $bf
    ld c, a                                       ; $4240: $4f
    ld hl, $bd04                                  ; $4241: $21 $04 $bd
    inc de                                        ; $4244: $13
    rst $38                                       ; $4245: $ff
    ld a, a                                       ; $4246: $7f
    ld l, e                                       ; $4247: $6b
    dec h                                         ; $4248: $25
    sub h                                         ; $4249: $94
    nop                                           ; $424a: $00
    cp a                                          ; $424b: $bf
    ld bc, $01d9                                  ; $424c: $01 $d9 $01
    ld e, a                                       ; $424f: $5f
    ld [bc], a                                    ; $4250: $02
    ld h, $00                                     ; $4251: $26 $00
    cp b                                          ; $4253: $b8
    nop                                           ; $4254: $00
    ld a, [hl-]                                   ; $4255: $3a
    ld a, [hl+]                                   ; $4256: $2a
    cp a                                          ; $4257: $bf
    ld bc, $008a                                  ; $4258: $01 $8a $00

jr_0b7_425b:
    db $fc                                        ; $425b: $fc
    ld b, [hl]                                    ; $425c: $46

Call_0b7_425d:
    ld [hl], b                                    ; $425d: $70
    add hl, de                                    ; $425e: $19
    jr jr_0b7_4262                                ; $425f: $18 $01

    nop                                           ; $4261: $00

jr_0b7_4262:
    inc e                                         ; $4262: $1c
    sub $00                                       ; $4263: $d6 $00
    rst $38                                       ; $4265: $ff
    ld a, a                                       ; $4266: $7f
    rst $18                                       ; $4267: $df
    ld bc, $0000                                  ; $4268: $01 $00 $00
    ld e, e                                       ; $426b: $5b
    ld [hl+], a                                   ; $426c: $22
    rst $38                                       ; $426d: $ff
    ld a, a                                       ; $426e: $7f
    ccf                                           ; $426f: $3f
    scf                                           ; $4270: $37
    ld b, e                                       ; $4271: $43
    nop                                           ; $4272: $00
    sbc h                                         ; $4273: $9c
    ld a, [hl+]                                   ; $4274: $2a
    rst $18                                       ; $4275: $df
    ld [hl], a                                    ; $4276: $77
    ld e, [hl]                                    ; $4277: $5e
    ld c, a                                       ; $4278: $4f
    rlca                                          ; $4279: $07
    ld bc, $077d                                  ; $427a: $01 $7d $07
    ld d, d                                       ; $427d: $52
    add hl, bc                                    ; $427e: $09
    add hl, hl                                    ; $427f: $29
    dec h                                         ; $4280: $25
    inc hl                                        ; $4281: $23
    nop                                           ; $4282: $00
    ld sp, $5546                                  ; $4283: $31 $46 $55
    ld bc, $01de                                  ; $4286: $01 $de $01
    ldh [rLY], a                                  ; $4289: $e0 $44
    sbc a                                         ; $428b: $9f
    ld a, [hl+]                                   ; $428c: $2a
    or d                                          ; $428d: $b2
    ld [hl], a                                    ; $428e: $77
    xor e                                         ; $428f: $ab
    inc d                                         ; $4290: $14
    ldh [rLY], a                                  ; $4291: $e0 $44
    jr @+$0b                                      ; $4293: $18 $09

    jp c, $a74a                                   ; $4295: $da $4a $a7

    ld [$0001], sp                                ; $4298: $08 $01 $00
    cp [hl]                                       ; $429b: $be
    ld bc, $7fff                                  ; $429c: $01 $ff $7f
    nop                                           ; $429f: $00
    jr nz, @+$03                                  ; $42a0: $20 $01

    ld [$19f7], sp                                ; $42a2: $08 $f7 $19
    rst $38                                       ; $42a5: $ff
    ld a, a                                       ; $42a6: $7f
    db $ec                                        ; $42a7: $ec
    inc b                                         ; $42a8: $04
    ld l, h                                       ; $42a9: $6c
    ld hl, $3f1e                                  ; $42aa: $21 $1e $3f
    ld e, d                                       ; $42ad: $5a
    ld e, $bf                                     ; $42ae: $1e $bf
    ld e, a                                       ; $42b0: $5f
    and l                                         ; $42b1: $a5
    inc b                                         ; $42b2: $04
    sbc h                                         ; $42b3: $9c
    ld [hl], e                                    ; $42b4: $73
    adc h                                         ; $42b5: $8c
    add hl, hl                                    ; $42b6: $29
    sub h                                         ; $42b7: $94
    nop                                           ; $42b8: $00
    xor [hl]                                      ; $42b9: $ae
    nop                                           ; $42ba: $00
    sbc a                                         ; $42bb: $9f
    ld bc, $4210                                  ; $42bc: $01 $10 $42
    ld a, a                                       ; $42bf: $7f
    ld [bc], a                                    ; $42c0: $02
    ldh [rLY], a                                  ; $42c1: $e0 $44
    call $9d7b                                    ; $42c3: $cd $7b $9d
    ld [hl], e                                    ; $42c6: $73
    push bc                                       ; $42c7: $c5
    inc e                                         ; $42c8: $1c
    and l                                         ; $42c9: $a5
    inc d                                         ; $42ca: $14
    rst $18                                       ; $42cb: $df
    ld bc, $52f9                                  ; $42cc: $01 $f9 $52
    or d                                          ; $42cf: $b2
    nop                                           ; $42d0: $00
    nop                                           ; $42d1: $00
    nop                                           ; $42d2: $00
    cp a                                          ; $42d3: $bf
    ld bc, $2000                                  ; $42d4: $01 $00 $20
    ld a, $02                                     ; $42d7: $3e $02
    nop                                           ; $42d9: $00
    inc d                                         ; $42da: $14
    ld c, a                                       ; $42db: $4f
    dec c                                         ; $42dc: $0d
    xor b                                         ; $42dd: $a8
    nop                                           ; $42de: $00
    rla                                           ; $42df: $17
    ld a, [de]                                    ; $42e0: $1a
    sub b                                         ; $42e1: $90

jr_0b7_42e2:
    dec d                                         ; $42e2: $15
    ld e, e                                       ; $42e3: $5b
    ld [hl+], a                                   ; $42e4: $22
    ld e, a                                       ; $42e5: $5f
    ld c, e                                       ; $42e6: $4b
    sbc $2e                                       ; $42e7: $de $2e
    push bc                                       ; $42e9: $c5
    nop                                           ; $42ea: $00
    add hl, sp                                    ; $42eb: $39
    dec bc                                        ; $42ec: $0b
    cp a                                          ; $42ed: $bf
    ld d, a                                       ; $42ee: $57
    adc h                                         ; $42ef: $8c
    dec h                                         ; $42f0: $25
    ld b, e                                       ; $42f1: $43
    nop                                           ; $42f2: $00
    sbc $01                                       ; $42f3: $de $01
    rst $28                                       ; $42f5: $ef
    dec a                                         ; $42f6: $3d
    db $d3                                        ; $42f7: $d3
    nop                                           ; $42f8: $00
    ld h, a                                       ; $42f9: $67
    inc b                                         ; $42fa: $04
    sbc $36                                       ; $42fb: $de $36
    rst $38                                       ; $42fd: $ff
    ld a, a                                       ; $42fe: $7f
    ld [hl], d                                    ; $42ff: $72
    dec d                                         ; $4300: $15
    dec h                                         ; $4301: $25
    nop                                           ; $4302: $00
    rst $18                                       ; $4303: $df
    ld bc, $3abc                                  ; $4304: $01 $bc $3a
    ld sp, $0011                                  ; $4307: $31 $11 $00
    nop                                           ; $430a: $00
    cp $01                                        ; $430b: $fe $01
    nop                                           ; $430d: $00
    jr nz, @-$12                                  ; $430e: $20 $ec

    nop                                           ; $4310: $00
    ld bc, $6600                                  ; $4311: $01 $00 $66
    nop                                           ; $4314: $00
    nop                                           ; $4315: $00
    jr nz, jr_0b7_42e2                            ; $4316: $20 $ca

    inc b                                         ; $4318: $04
    ret                                           ; $4319: $c9


    ld [$1e17], sp                                ; $431a: $08 $17 $1e
    ld e, a                                       ; $431d: $5f
    ld c, e                                       ; $431e: $4b
    ld a, e                                       ; $431f: $7b
    ld h, $c6                                     ; $4320: $26 $c6
    inc b                                         ; $4322: $04
    ld [hl], a                                    ; $4323: $77
    ld [hl-], a                                   ; $4324: $32
    ld l, e                                       ; $4325: $6b
    dec l                                         ; $4326: $2d
    cp a                                          ; $4327: $bf
    ld d, e                                       ; $4328: $53
    ld b, e                                       ; $4329: $43
    nop                                           ; $432a: $00
    sub h                                         ; $432b: $94
    nop                                           ; $432c: $00
    ld e, l                                       ; $432d: $5d
    ld bc, $021f                                  ; $432e: $01 $1f $02
    jp z, $1f0c                                   ; $4331: $ca $0c $1f

    ld b, e                                       ; $4334: $43
    inc e                                         ; $4335: $1c
    ld a, [bc]                                    ; $4336: $0a
    sbc d                                         ; $4337: $9a
    ld a, e                                       ; $4338: $7b
    inc h                                         ; $4339: $24
    nop                                           ; $433a: $00
    inc a                                         ; $433b: $3c
    ld bc, $2a16                                  ; $433c: $01 $16 $2a
    ld e, a                                       ; $433f: $5f
    ld [bc], a                                    ; $4340: $02
    nop                                           ; $4341: $00
    inc b                                         ; $4342: $04
    inc de                                        ; $4343: $13
    ld bc, $01fe                                  ; $4344: $01 $fe $01
    nop                                           ; $4347: $00
    jr nz, jr_0b7_436b                            ; $4348: $20 $21

    nop                                           ; $434a: $00
    nop                                           ; $434b: $00
    jr nz, @+$69                                  ; $434c: $20 $67

    nop                                           ; $434e: $00
    rlc b                                         ; $434f: $cb $00
    ld b, h                                       ; $4351: $44
    nop                                           ; $4352: $00
    rla                                           ; $4353: $17
    ld a, [de]                                    ; $4354: $1a
    ld a, e                                       ; $4355: $7b
    ld a, [hl+]                                   ; $4356: $2a
    xor c                                         ; $4357: $a9
    inc b                                         ; $4358: $04
    push bc                                       ; $4359: $c5
    inc b                                         ; $435a: $04
    ld e, l                                       ; $435b: $5d
    inc sp                                        ; $435c: $33

Call_0b7_435d:
    rst $38                                       ; $435d: $ff
    ld h, a                                       ; $435e: $67
    or d                                          ; $435f: $b2
    ld hl, $0043                                  ; $4360: $21 $43 $00
    cp l                                          ; $4363: $bd
    ld bc, $6b5a                                  ; $4364: $01 $5a $6b
    sub h                                         ; $4367: $94
    nop                                           ; $4368: $00
    inc hl                                        ; $4369: $23
    nop                                           ; $436a: $00

jr_0b7_436b:
    ld [hl], h                                    ; $436b: $74
    add hl, bc                                    ; $436c: $09
    ld e, l                                       ; $436d: $5d
    ld d, a                                       ; $436e: $57
    rst $18                                       ; $436f: $df
    ld bc, $0042                                  ; $4370: $01 $42 $00
    rst $18                                       ; $4373: $df
    ld bc, $53de                                  ; $4374: $01 $de $53
    xor a                                         ; $4377: $af
    inc b                                         ; $4378: $04
    nop                                           ; $4379: $00
    inc e                                         ; $437a: $1c
    ei                                            ; $437b: $fb
    ld bc, $4fff                                  ; $437c: $01 $ff $4f
    ld c, b                                       ; $437f: $48
    ld bc, $0001                                  ; $4380: $01 $01 $00
    sbc h                                         ; $4383: $9c
    rra                                           ; $4384: $1f
    rst $38                                       ; $4385: $ff
    ld [hl], e                                    ; $4386: $73
    nop                                           ; $4387: $00
    jr nz, @+$25                                  ; $4388: $20 $23

    nop                                           ; $438a: $00
    or $1d                                        ; $438b: $f6 $1d
    jp z, Jump_0b7_5a04                           ; $438d: $ca $04 $5a

jr_0b7_4390:
    ld h, $c5                                     ; $4390: $26 $c5
    nop                                           ; $4392: $00
    ld a, e                                       ; $4393: $7b
    ld h, $9e                                     ; $4394: $26 $9e
    ld c, a                                       ; $4396: $4f
    ld l, e                                       ; $4397: $6b
    dec l                                         ; $4398: $2d
    ld [hl+], a                                   ; $4399: $22
    nop                                           ; $439a: $00
    ld e, d                                       ; $439b: $5a
    ld l, e                                       ; $439c: $6b
    sub l                                         ; $439d: $95
    nop                                           ; $439e: $00
    rst $38                                       ; $439f: $ff
    ld bc, $0028                                  ; $43a0: $01 $28 $00
    sub e                                         ; $43a3: $93
    ld [hl+], a                                   ; $43a4: $22
    rst $38                                       ; $43a5: $ff
    ld [hl], a                                    ; $43a6: $77
    sbc $01                                       ; $43a7: $de $01
    ld hl, $1300                                  ; $43a9: $21 $00 $13
    ld bc, $0108                                  ; $43ac: $01 $08 $01
    cp h                                          ; $43af: $bc
    ld bc, $1c00                                  ; $43b0: $01 $00 $1c
    db $fd                                        ; $43b3: $fd
    ld bc, $1bbb                                  ; $43b4: $01 $bb $1b
    ld c, b                                       ; $43b7: $48
    ld bc, $0800                                  ; $43b8: $01 $00 $08
    rst $30                                       ; $43bb: $f7
    ld a, [bc]                                    ; $43bc: $0a
    rst $38                                       ; $43bd: $ff
    ld l, e                                       ; $43be: $6b
    ld c, b                                       ; $43bf: $48
    ld bc, $0022                                  ; $43c0: $01 $22 $00

jr_0b7_43c3:
    ld [hl], b                                    ; $43c3: $70
    ld de, $2257                                  ; $43c4: $11 $57 $22
    adc b                                         ; $43c7: $88
    nop                                           ; $43c8: $00
    ld b, e                                       ; $43c9: $43
    nop                                           ; $43ca: $00
    ld e, d                                       ; $43cb: $5a
    ld [hl+], a                                   ; $43cc: $22
    ld c, d                                       ; $43cd: $4a
    add hl, hl                                    ; $43ce: $29
    rst $38                                       ; $43cf: $ff
    ld e, e                                       ; $43d0: $5b
    add e                                         ; $43d1: $83
    nop                                           ; $43d2: $00
    rst $30                                       ; $43d3: $f7
    dec e                                         ; $43d4: $1d
    ld e, d                                       ; $43d5: $5a
    ld l, e                                       ; $43d6: $6b
    sub h                                         ; $43d7: $94
    nop                                           ; $43d8: $00
    ld [hl+], a                                   ; $43d9: $22
    nop                                           ; $43da: $00
    rst $38                                       ; $43db: $ff
    rra                                           ; $43dc: $1f
    ld a, [hl-]                                   ; $43dd: $3a
    dec b                                         ; $43de: $05
    cp $67                                        ; $43df: $fe $67
    nop                                           ; $43e1: $00
    inc b                                         ; $43e2: $04
    inc a                                         ; $43e3: $3c
    add hl, bc                                    ; $43e4: $09
    ld l, $05                                     ; $43e5: $2e $05
    sbc h                                         ; $43e7: $9c
    rla                                           ; $43e8: $17
    nop                                           ; $43e9: $00
    inc e                                         ; $43ea: $1c
    ld e, c                                       ; $43eb: $59
    rlca                                          ; $43ec: $07
    db $fd                                        ; $43ed: $fd
    ld a, [hl]                                    ; $43ee: $7e
    ld [$0005], sp                                ; $43ef: $08 $05 $00
    jr nz, jr_0b7_4390                            ; $43f2: $20 $9c

    rra                                           ; $43f4: $1f
    rst $38                                       ; $43f5: $ff
    ld l, e                                       ; $43f6: $6b
    ld c, b                                       ; $43f7: $48
    ld bc, $0000                                  ; $43f8: $01 $00 $00
    or b                                          ; $43fb: $b0
    dec d                                         ; $43fc: $15
    sbc h                                         ; $43fd: $9c
    rra                                           ; $43fe: $1f
    add a                                         ; $43ff: $87
    nop                                           ; $4400: $00
    ld b, e                                       ; $4401: $43
    nop                                           ; $4402: $00
    call nc, Call_0b7_4b19                        ; $4403: $d4 $19 $4b
    dec h                                         ; $4406: $25
    sbc h                                         ; $4407: $9c
    ld h, $83                                     ; $4408: $26 $83
    nop                                           ; $440a: $00
    ld sp, $bd46                                  ; $440b: $31 $46 $bd
    ld h, a                                       ; $440e: $67
    sub h                                         ; $440f: $94
    nop                                           ; $4410: $00
    nop                                           ; $4411: $00
    ld [$13ff], sp                                ; $4412: $08 $ff $13
    cp $6f                                        ; $4415: $fe $6f
    rst $38                                       ; $4417: $ff
    scf                                           ; $4418: $37
    nop                                           ; $4419: $00
    inc b                                         ; $441a: $04
    sbc b                                         ; $441b: $98
    db $10                                        ; $441c: $10
    rla                                           ; $441d: $17
    rrca                                          ; $441e: $0f
    ld l, h                                       ; $441f: $6c
    nop                                           ; $4420: $00
    nop                                           ; $4421: $00
    inc e                                         ; $4422: $1c
    inc de                                        ; $4423: $13
    ld l, c                                       ; $4424: $69
    adc b                                         ; $4425: $88
    jr z, jr_0b7_43c3                             ; $4426: $28 $9b

    ld a, [hl]                                    ; $4428: $7e
    nop                                           ; $4429: $00
    nop                                           ; $442a: $00
    rst $38                                       ; $442b: $ff
    ld a, a                                       ; $442c: $7f
    ld c, b                                       ; $442d: $48
    ld bc, $2000                                  ; $442e: $01 $00 $20
    nop                                           ; $4431: $00
    nop                                           ; $4432: $00
    cp l                                          ; $4433: $bd
    dec hl                                        ; $4434: $2b
    jr jr_0b7_4492                                ; $4435: $18 $5b

    add a                                         ; $4437: $87
    nop                                           ; $4438: $00
    ld h, l                                       ; $4439: $65
    nop                                           ; $443a: $00
    adc l                                         ; $443b: $8d
    dec l                                         ; $443c: $2d
    cp a                                          ; $443d: $bf
    ld c, e                                       ; $443e: $4b
    rst $30                                       ; $443f: $f7
    dec d                                         ; $4440: $15
    ld h, h                                       ; $4441: $64
    inc c                                         ; $4442: $0c
    ld sp, $3a46                                  ; $4443: $31 $46 $3a
    ld l, e                                       ; $4446: $6b
    rst $38                                       ; $4447: $ff
    inc bc                                        ; $4448: $03
    nop                                           ; $4449: $00
    ld [$139c], sp                                ; $444a: $08 $9c $13
    cp $53                                        ; $444d: $fe $53
    ld l, d                                       ; $444f: $6a
    ld bc, $0800                                  ; $4450: $01 $00 $08
    ld a, l                                       ; $4453: $7d
    db $10                                        ; $4454: $10
    cp a                                          ; $4455: $bf
    ld c, [hl]                                    ; $4456: $4e
    ld c, c                                       ; $4457: $49
    ld b, b                                       ; $4458: $40
    nop                                           ; $4459: $00
    inc e                                         ; $445a: $1c
    ld d, $7d                                     ; $445b: $16 $7d
    rst $38                                       ; $445d: $ff
    cpl                                           ; $445e: $2f

jr_0b7_445f:
    ld c, c                                       ; $445f: $49
    jr c, jr_0b7_4462                             ; $4460: $38 $00

jr_0b7_4462:
    nop                                           ; $4462: $00
    rst $38                                       ; $4463: $ff
    ld a, a                                       ; $4464: $7f
    nop                                           ; $4465: $00
    jr nz, jr_0b7_445f                            ; $4466: $20 $f7

    dec d                                         ; $4468: $15
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00
    sbc h                                         ; $446b: $9c
    rra                                           ; $446c: $1f
    ld c, b                                       ; $446d: $48
    ld bc, $15f7                                  ; $446e: $01 $f7 $15
    inc hl                                        ; $4471: $23
    nop                                           ; $4472: $00
    ld e, e                                       ; $4473: $5b
    ld [hl+], a                                   ; $4474: $22
    db $eb                                        ; $4475: $eb
    inc c                                         ; $4476: $0c
    rst $38                                       ; $4477: $ff
    ld e, e                                       ; $4478: $5b
    ld bc, $3108                                  ; $4479: $01 $08 $31
    ld b, [hl]                                    ; $447c: $46
    dec de                                        ; $447d: $1b
    ld a, [hl]                                    ; $447e: $7e

Call_0b7_447f:
    ld a, [hl-]                                   ; $447f: $3a
    ld h, e                                       ; $4480: $63

jr_0b7_4481:
    nop                                           ; $4481: $00
    inc b                                         ; $4482: $04
    di                                            ; $4483: $f3
    ld b, l                                       ; $4484: $45
    sbc e                                         ; $4485: $9b
    dec de                                        ; $4486: $1b
    add hl, hl                                    ; $4487: $29
    ld bc, $1802                                  ; $4488: $01 $02 $18
    pop af                                        ; $448b: $f1
    ld e, h                                       ; $448c: $5c
    inc a                                         ; $448d: $3c
    ld d, e                                       ; $448e: $53
    rst $38                                       ; $448f: $ff
    jr nz, jr_0b7_4492                            ; $4490: $20 $00

jr_0b7_4492:
    inc e                                         ; $4492: $1c
    ld [hl], d                                    ; $4493: $72
    ld [bc], a                                    ; $4494: $02
    rst $38                                       ; $4495: $ff
    rra                                           ; $4496: $1f
    ld c, b                                       ; $4497: $48
    ld bc, $0000                                  ; $4498: $01 $00 $00
    rst $38                                       ; $449b: $ff
    ld a, a                                       ; $449c: $7f
    nop                                           ; $449d: $00
    jr nz, @+$01                                  ; $449e: $20 $ff

    ld e, e                                       ; $44a0: $5b
    nop                                           ; $44a1: $00
    nop                                           ; $44a2: $00
    rst $38                                       ; $44a3: $ff
    ld a, a                                       ; $44a4: $7f
    nop                                           ; $44a5: $00
    jr nz, @+$01                                  ; $44a6: $20 $ff

    ld e, e                                       ; $44a8: $5b
    ld b, d                                       ; $44a9: $42
    ld [$3f5f], sp                                ; $44aa: $08 $5f $3f
    xor e                                         ; $44ad: $ab
    nop                                           ; $44ae: $00
    ld [hl], d                                    ; $44af: $72
    add hl, bc                                    ; $44b0: $09
    inc hl                                        ; $44b1: $23
    ld [$2efc], sp                                ; $44b2: $08 $fc $2e
    dec l                                         ; $44b5: $2d
    ld h, h                                       ; $44b6: $64
    rst $18                                       ; $44b7: $df
    ld l, e                                       ; $44b8: $6b
    nop                                           ; $44b9: $00
    nop                                           ; $44ba: $00
    ld d, $6a                                     ; $44bb: $16 $6a
    ld c, b                                       ; $44bd: $48
    ld bc, $0dce                                  ; $44be: $01 $ce $0d
    nop                                           ; $44c1: $00
    ld [$7f5e], sp                                ; $44c2: $08 $5e $7f
    call z, Call_000_124c                         ; $44c5: $cc $4c $12
    add hl, hl                                    ; $44c8: $29
    nop                                           ; $44c9: $00
    inc e                                         ; $44ca: $1c
    or h                                          ; $44cb: $b4
    ld b, $48                                     ; $44cc: $06 $48
    ld bc, $0b9c                                  ; $44ce: $01 $9c $0b
    nop                                           ; $44d1: $00
    nop                                           ; $44d2: $00
    nop                                           ; $44d3: $00
    jr nz, jr_0b7_4481                            ; $44d4: $20 $ab

    nop                                           ; $44d6: $00
    ld [hl], d                                    ; $44d7: $72
    add hl, bc                                    ; $44d8: $09
    nop                                           ; $44d9: $00
    nop                                           ; $44da: $00
    rst $38                                       ; $44db: $ff
    ld a, a                                       ; $44dc: $7f
    xor e                                         ; $44dd: $ab
    nop                                           ; $44de: $00
    ld [hl], d                                    ; $44df: $72
    add hl, bc                                    ; $44e0: $09
    ld [hl+], a                                   ; $44e1: $22
    nop                                           ; $44e2: $00
    ld a, [hl-]                                   ; $44e3: $3a
    ld a, [de]                                    ; $44e4: $1a
    add h                                         ; $44e5: $84
    db $10                                        ; $44e6: $10
    xor e                                         ; $44e7: $ab
    nop                                           ; $44e8: $00
    inc h                                         ; $44e9: $24
    db $10                                        ; $44ea: $10
    ld [hl], $16                                  ; $44eb: $36 $16
    db $ed                                        ; $44ed: $ed
    ld bc, $471f                                  ; $44ee: $01 $1f $47
    nop                                           ; $44f1: $00
    nop                                           ; $44f2: $00
    ld h, $28                                     ; $44f3: $26 $28
    dec bc                                        ; $44f5: $0b
    dec [hl]                                      ; $44f6: $35
    nop                                           ; $44f7: $00
    ld [$0800], sp                                ; $44f8: $08 $00 $08
    sub [hl]                                      ; $44fb: $96
    ld l, l                                       ; $44fc: $6d
    ld e, [hl]                                    ; $44fd: $5e
    ld a, a                                       ; $44fe: $7f
    adc c                                         ; $44ff: $89
    inc [hl]                                      ; $4500: $34
    nop                                           ; $4501: $00
    ld [$0166], sp                                ; $4502: $08 $66 $01
    nop                                           ; $4505: $00
    jr nz, jr_0b7_454f                            ; $4506: $20 $47

    ld b, h                                       ; $4508: $44
    nop                                           ; $4509: $00
    nop                                           ; $450a: $00
    nop                                           ; $450b: $00
    jr nz, jr_0b7_4492                            ; $450c: $20 $84

    db $10                                        ; $450e: $10
    xor e                                         ; $450f: $ab
    nop                                           ; $4510: $00
    nop                                           ; $4511: $00
    nop                                           ; $4512: $00
    rst $38                                       ; $4513: $ff
    ld a, a                                       ; $4514: $7f
    add h                                         ; $4515: $84
    db $10                                        ; $4516: $10
    xor e                                         ; $4517: $ab
    nop                                           ; $4518: $00
    ld [hl+], a                                   ; $4519: $22
    inc b                                         ; $451a: $04
    cp $3e                                        ; $451b: $fe $3e
    dec l                                         ; $451d: $2d
    dec d                                         ; $451e: $15
    add l                                         ; $451f: $85
    db $10                                        ; $4520: $10
    inc hl                                        ; $4521: $23
    nop                                           ; $4522: $00
    push af                                       ; $4523: $f5
    ld a, h                                       ; $4524: $7c
    cp $42                                        ; $4525: $fe $42
    call z, $0101                                 ; $4527: $cc $01 $01
    nop                                           ; $452a: $00
    rra                                           ; $452b: $1f
    ccf                                           ; $452c: $3f
    cp [hl]                                       ; $452d: $be
    ld h, a                                       ; $452e: $67
    xor c                                         ; $452f: $a9
    inc d                                         ; $4530: $14
    nop                                           ; $4531: $00
    inc c                                         ; $4532: $0c
    rst $08                                       ; $4533: $cf
    ld e, h                                       ; $4534: $5c
    rst $38                                       ; $4535: $ff
    inc sp                                        ; $4536: $33
    ld e, c                                       ; $4537: $59
    halt                                          ; $4538: $76
    nop                                           ; $4539: $00
    ld [$2000], sp                                ; $453a: $08 $00 $20
    rst $38                                       ; $453d: $ff
    inc sp                                        ; $453e: $33
    ld e, c                                       ; $453f: $59
    halt                                          ; $4540: $76
    nop                                           ; $4541: $00

jr_0b7_4542:
    jr nz, jr_0b7_4542                            ; $4542: $20 $fe

    ld a, $2d                                     ; $4544: $3e $2d
    dec d                                         ; $4546: $15
    add l                                         ; $4547: $85
    stop                                          ; $4548: $10 $00
    nop                                           ; $454a: $00
    rst $38                                       ; $454b: $ff
    ld a, a                                       ; $454c: $7f
    dec l                                         ; $454d: $2d
    dec d                                         ; $454e: $15

jr_0b7_454f:
    add l                                         ; $454f: $85
    db $10                                        ; $4550: $10
    ld [hl+], a                                   ; $4551: $22
    inc b                                         ; $4552: $04
    ld e, e                                       ; $4553: $5b
    ld a, [hl+]                                   ; $4554: $2a
    add h                                         ; $4555: $84
    db $10                                        ; $4556: $10
    rst $20                                       ; $4557: $e7
    inc e                                         ; $4558: $1c
    inc hl                                        ; $4559: $23
    nop                                           ; $455a: $00
    cp $42                                        ; $455b: $fe $42
    or [hl]                                       ; $455d: $b6
    dec e                                         ; $455e: $1d
    rst $38                                       ; $455f: $ff
    ld l, e                                       ; $4560: $6b
    ld h, [hl]                                    ; $4561: $66
    inc b                                         ; $4562: $04
    db $dd                                        ; $4563: $dd
    ld a, $b4                                     ; $4564: $3e $b4
    ld hl, $67ff                                  ; $4566: $21 $ff $67
    nop                                           ; $4569: $00
    inc c                                         ; $456a: $0c
    cp l                                          ; $456b: $bd
    rrca                                          ; $456c: $0f
    rst $08                                       ; $456d: $cf
    dec c                                         ; $456e: $0d

jr_0b7_456f:
    rst $38                                       ; $456f: $ff
    ld b, e                                       ; $4570: $43
    nop                                           ; $4571: $00
    ld [$2000], sp                                ; $4572: $08 $00 $20
    rst $08                                       ; $4575: $cf
    dec c                                         ; $4576: $0d
    rst $38                                       ; $4577: $ff
    ld b, e                                       ; $4578: $43
    nop                                           ; $4579: $00
    jr nz, @+$5d                                  ; $457a: $20 $5b

    ld a, [hl+]                                   ; $457c: $2a
    add h                                         ; $457d: $84
    db $10                                        ; $457e: $10
    rst $20                                       ; $457f: $e7
    inc e                                         ; $4580: $1c
    nop                                           ; $4581: $00
    nop                                           ; $4582: $00
    rst $38                                       ; $4583: $ff
    ld a, a                                       ; $4584: $7f
    nop                                           ; $4585: $00
    jr nz, jr_0b7_456f                            ; $4586: $20 $e7

    inc e                                         ; $4588: $1c
    ld hl, $0804                                  ; $4589: $21 $04 $08
    ld hl, $1084                                  ; $458c: $21 $84 $10
    ld l, e                                       ; $458f: $6b
    dec l                                         ; $4590: $2d
    ld b, h                                       ; $4591: $44
    inc b                                         ; $4592: $04
    sub d                                         ; $4593: $92
    dec e                                         ; $4594: $1d
    ld a, e                                       ; $4595: $7b
    ld l, $ef                                     ; $4596: $2e $ef
    dec a                                         ; $4598: $3d
    ld [bc], a                                    ; $4599: $02
    nop                                           ; $459a: $00
    or l                                          ; $459b: $b5
    dec e                                         ; $459c: $1d
    sbc $3a                                       ; $459d: $de $3a
    rrc h                                         ; $459f: $cb $0c
    nop                                           ; $45a1: $00
    inc c                                         ; $45a2: $0c
    cp h                                          ; $45a3: $bc
    dec bc                                        ; $45a4: $0b
    ld b, a                                       ; $45a5: $47
    ld bc, $27de                                  ; $45a6: $01 $de $27
    nop                                           ; $45a9: $00
    jr nz, @-$42                                  ; $45aa: $20 $bc

    dec bc                                        ; $45ac: $0b
    ld b, a                                       ; $45ad: $47
    ld bc, $27de                                  ; $45ae: $01 $de $27
    nop                                           ; $45b1: $00
    jr nz, jr_0b7_45bc                            ; $45b2: $20 $08

    ld hl, $1084                                  ; $45b4: $21 $84 $10
    ld l, e                                       ; $45b7: $6b
    dec l                                         ; $45b8: $2d
    nop                                           ; $45b9: $00
    nop                                           ; $45ba: $00
    rst $38                                       ; $45bb: $ff

jr_0b7_45bc:
    ld a, a                                       ; $45bc: $7f
    nop                                           ; $45bd: $00
    jr nz, @+$6d                                  ; $45be: $20 $6b

    dec l                                         ; $45c0: $2d
    nop                                           ; $45c1: $00
    nop                                           ; $45c2: $00
    ld [$8421], sp                                ; $45c3: $08 $21 $84
    db $10                                        ; $45c6: $10
    ld l, e                                       ; $45c7: $6b
    dec l                                         ; $45c8: $2d
    nop                                           ; $45c9: $00
    nop                                           ; $45ca: $00
    rst $38                                       ; $45cb: $ff
    ld a, a                                       ; $45cc: $7f
    ld b, a                                       ; $45cd: $47
    ld bc, $27de                                  ; $45ce: $01 $de $27
    nop                                           ; $45d1: $00
    nop                                           ; $45d2: $00
    rst $38                                       ; $45d3: $ff
    ld a, a                                       ; $45d4: $7f
    ld b, a                                       ; $45d5: $47
    ld bc, $27de                                  ; $45d6: $01 $de $27
    nop                                           ; $45d9: $00
    nop                                           ; $45da: $00
    rst $38                                       ; $45db: $ff
    ld a, a                                       ; $45dc: $7f
    nop                                           ; $45dd: $00
    jr nz, jr_0b7_45e0                            ; $45de: $20 $00

jr_0b7_45e0:
    ld [$2000], sp                                ; $45e0: $08 $00 $20
    rst $38                                       ; $45e3: $ff
    ld a, a                                       ; $45e4: $7f
    nop                                           ; $45e5: $00
    jr nz, jr_0b7_45e8                            ; $45e6: $20 $00

jr_0b7_45e8:
    ld [$2000], sp                                ; $45e8: $08 $00 $20
    ld [$8421], sp                                ; $45eb: $08 $21 $84
    db $10                                        ; $45ee: $10
    ld l, e                                       ; $45ef: $6b
    dec l                                         ; $45f0: $2d
    nop                                           ; $45f1: $00
    nop                                           ; $45f2: $00
    rst $38                                       ; $45f3: $ff
    ld a, a                                       ; $45f4: $7f
    nop                                           ; $45f5: $00
    jr nz, @+$6d                                  ; $45f6: $20 $6b

    dec l                                         ; $45f8: $2d
    nop                                           ; $45f9: $00
    nop                                           ; $45fa: $00
    rst $38                                       ; $45fb: $ff
    ld a, a                                       ; $45fc: $7f
    nop                                           ; $45fd: $00
    jr nz, @+$6d                                  ; $45fe: $20 $6b

    dec l                                         ; $4600: $2d

Call_0b7_4601:
    nop                                           ; $4601: $00
    nop                                           ; $4602: $00
    nop                                           ; $4603: $00
    jr nz, jr_0b7_4606                            ; $4604: $20 $00

jr_0b7_4606:
    jr nz, jr_0b7_4608                            ; $4606: $20 $00

jr_0b7_4608:
    ld [$0000], sp                                ; $4608: $08 $00 $00
    nop                                           ; $460b: $00
    jr nz, jr_0b7_460e                            ; $460c: $20 $00

jr_0b7_460e:
    jr nz, jr_0b7_4610                            ; $460e: $20 $00

jr_0b7_4610:
    ld [$0000], sp                                ; $4610: $08 $00 $00
    nop                                           ; $4613: $00
    jr nz, jr_0b7_4616                            ; $4614: $20 $00

jr_0b7_4616:
    jr nz, jr_0b7_4618                            ; $4616: $20 $00

jr_0b7_4618:
    ld [$2000], sp                                ; $4618: $08 $00 $20
    nop                                           ; $461b: $00
    jr nz, jr_0b7_461e                            ; $461c: $20 $00

jr_0b7_461e:
    jr nz, jr_0b7_4620                            ; $461e: $20 $00

jr_0b7_4620:
    ld [$2000], sp                                ; $4620: $08 $00 $20
    nop                                           ; $4623: $00
    jr nz, jr_0b7_4626                            ; $4624: $20 $00

jr_0b7_4626:
    jr nz, @+$33                                  ; $4626: $20 $31

    dec c                                         ; $4628: $0d
    nop                                           ; $4629: $00
    jr nz, jr_0b7_462c                            ; $462a: $20 $00

jr_0b7_462c:
    jr nz, jr_0b7_462e                            ; $462c: $20 $00

jr_0b7_462e:
    jr nz, jr_0b7_4661                            ; $462e: $20 $31

    dec c                                         ; $4630: $0d
    nop                                           ; $4631: $00
    jr nz, jr_0b7_4634                            ; $4632: $20 $00

jr_0b7_4634:
    jr nz, jr_0b7_4636                            ; $4634: $20 $00

jr_0b7_4636:
    jr nz, jr_0b7_4669                            ; $4636: $20 $31

    dec c                                         ; $4638: $0d
    nop                                           ; $4639: $00
    nop                                           ; $463a: $00
    rst $38                                       ; $463b: $ff
    ld a, a                                       ; $463c: $7f
    ld c, b                                       ; $463d: $48
    jr nc, jr_0b7_4640                            ; $463e: $30 $00

jr_0b7_4640:
    jr nz, jr_0b7_4642                            ; $4640: $20 $00

jr_0b7_4642:
    jr nz, @+$01                                  ; $4642: $20 $ff

    ld a, a                                       ; $4644: $7f
    ld c, b                                       ; $4645: $48
    jr nc, jr_0b7_4648                            ; $4646: $30 $00

jr_0b7_4648:
    jr nz, jr_0b7_464a                            ; $4648: $20 $00

jr_0b7_464a:
    jr nz, @+$01                                  ; $464a: $20 $ff

    ld a, a                                       ; $464c: $7f
    ld c, b                                       ; $464d: $48
    jr nc, jr_0b7_4650                            ; $464e: $30 $00

jr_0b7_4650:
    jr nz, jr_0b7_4652                            ; $4650: $20 $00

jr_0b7_4652:
    jr nz, @+$01                                  ; $4652: $20 $ff

    ld a, a                                       ; $4654: $7f
    ld c, b                                       ; $4655: $48
    jr nc, jr_0b7_4658                            ; $4656: $30 $00

jr_0b7_4658:
    jr nz, jr_0b7_465a                            ; $4658: $20 $00

jr_0b7_465a:
    jr nz, jr_0b7_465c                            ; $465a: $20 $00

jr_0b7_465c:
    jr nz, jr_0b7_465e                            ; $465c: $20 $00

jr_0b7_465e:
    jr nz, jr_0b7_4691                            ; $465e: $20 $31

jr_0b7_4660:
    dec c                                         ; $4660: $0d

jr_0b7_4661:
    nop                                           ; $4661: $00
    jr nz, jr_0b7_4664                            ; $4662: $20 $00

jr_0b7_4664:
    jr nz, jr_0b7_4666                            ; $4664: $20 $00

jr_0b7_4666:
    jr nz, jr_0b7_4699                            ; $4666: $20 $31

    dec c                                         ; $4668: $0d

jr_0b7_4669:
    nop                                           ; $4669: $00
    jr nz, @+$38                                  ; $466a: $20 $36

    ld l, d                                       ; $466c: $6a
    ld c, b                                       ; $466d: $48
    jr nc, jr_0b7_46e8                            ; $466e: $30 $78

    halt                                          ; $4670: $76
    nop                                           ; $4671: $00
    ld [$7a9a], sp                                ; $4672: $08 $9a $7a
    ld c, b                                       ; $4675: $48
    jr nc, jr_0b7_46d6                            ; $4676: $30 $5e

    ld a, a                                       ; $4678: $7f
    nop                                           ; $4679: $00
    nop                                           ; $467a: $00
    nop                                           ; $467b: $00
    jr nz, jr_0b7_46c6                            ; $467c: $20 $48

jr_0b7_467e:
    jr nc, jr_0b7_46de                            ; $467e: $30 $5e

    ld a, a                                       ; $4680: $7f
    nop                                           ; $4681: $00
    jr nz, jr_0b7_4684                            ; $4682: $20 $00

jr_0b7_4684:
    jr nz, jr_0b7_46ce                            ; $4684: $20 $48

    jr nc, jr_0b7_46e6                            ; $4686: $30 $5e

    ld a, a                                       ; $4688: $7f
    nop                                           ; $4689: $00
    jr nz, jr_0b7_468c                            ; $468a: $20 $00

jr_0b7_468c:
    jr nz, jr_0b7_46d6                            ; $468c: $20 $48

    jr nc, jr_0b7_46ee                            ; $468e: $30 $5e

    ld a, a                                       ; $4690: $7f

jr_0b7_4691:
    nop                                           ; $4691: $00
    jr nz, jr_0b7_46ca                            ; $4692: $20 $36

    ld l, d                                       ; $4694: $6a
    ld c, b                                       ; $4695: $48
    jr nc, jr_0b7_4710                            ; $4696: $30 $78

    halt                                          ; $4698: $76

jr_0b7_4699:
    nop                                           ; $4699: $00
    jr nz, jr_0b7_46d2                            ; $469a: $20 $36

    ld l, d                                       ; $469c: $6a
    ld c, b                                       ; $469d: $48
    jr nc, jr_0b7_4718                            ; $469e: $30 $78

    halt                                          ; $46a0: $76
    ld bc, $b214                                  ; $46a1: $01 $14 $b2
    ld e, c                                       ; $46a4: $59
    db $db                                        ; $46a5: $db
    ld a, d                                       ; $46a6: $7a
    ld l, b                                       ; $46a7: $68
    jr nc, jr_0b7_46f8                            ; $46a8: $30 $4e

    ld [$79f7], sp                                ; $46aa: $08 $f7 $79
    ld a, $7f                                     ; $46ad: $3e $7f

jr_0b7_46af:
    xor h                                         ; $46af: $ac
    ld b, h                                       ; $46b0: $44
    nop                                           ; $46b1: $00
    jr jr_0b7_4650                                ; $46b2: $18 $9c

    ld b, a                                       ; $46b4: $47
    ld c, b                                       ; $46b5: $48
    jr nc, @+$01                                  ; $46b6: $30 $ff

    ld h, e                                       ; $46b8: $63
    nop                                           ; $46b9: $00
    jr nz, jr_0b7_4658                            ; $46ba: $20 $9c

    ld b, a                                       ; $46bc: $47
    ld c, b                                       ; $46bd: $48
    jr nc, @+$01                                  ; $46be: $30 $ff

    ld h, e                                       ; $46c0: $63
    nop                                           ; $46c1: $00
    jr nz, jr_0b7_4660                            ; $46c2: $20 $9c

    ld b, a                                       ; $46c4: $47
    ld c, b                                       ; $46c5: $48

jr_0b7_46c6:
    jr nc, @+$01                                  ; $46c6: $30 $ff

    ld h, e                                       ; $46c8: $63
    nop                                           ; $46c9: $00

jr_0b7_46ca:
    jr nz, jr_0b7_467e                            ; $46ca: $20 $b2

    ld e, c                                       ; $46cc: $59
    db $db                                        ; $46cd: $db

jr_0b7_46ce:
    ld a, d                                       ; $46ce: $7a
    ld l, b                                       ; $46cf: $68
    jr nc, jr_0b7_46d2                            ; $46d0: $30 $00

jr_0b7_46d2:
    jr nz, jr_0b7_46e7                            ; $46d2: $20 $13

jr_0b7_46d4:
    ld e, d                                       ; $46d4: $5a
    ld c, b                                       ; $46d5: $48

jr_0b7_46d6:
    jr nc, jr_0b7_4740                            ; $46d6: $30 $68

    jr nc, jr_0b7_46dc                            ; $46d8: $30 $02

    inc d                                         ; $46da: $14
    or d                                          ; $46db: $b2

jr_0b7_46dc:
    ld d, l                                       ; $46dc: $55
    adc d                                         ; $46dd: $8a

jr_0b7_46de:
    inc [hl]                                      ; $46de: $34
    db $fc                                        ; $46df: $fc
    ld a, [hl]                                    ; $46e0: $7e
    jr nc, jr_0b7_46eb                            ; $46e1: $30 $08

    sbc b                                         ; $46e3: $98
    dec b                                         ; $46e4: $05
    sbc l                                         ; $46e5: $9d

jr_0b7_46e6:
    ld c, d                                       ; $46e6: $4a

jr_0b7_46e7:
    ld l, c                                       ; $46e7: $69

jr_0b7_46e8:
    ld b, h                                       ; $46e8: $44
    nop                                           ; $46e9: $00
    inc d                                         ; $46ea: $14

jr_0b7_46eb:
    sbc $17                                       ; $46eb: $de $17
    rst $38                                       ; $46ed: $ff

jr_0b7_46ee:
    ld c, e                                       ; $46ee: $4b
    ld c, [hl]                                    ; $46ef: $4e
    ld [$2000], sp                                ; $46f0: $08 $00 $20
    sbc $17                                       ; $46f3: $de $17
    rst $38                                       ; $46f5: $ff
    ld c, e                                       ; $46f6: $4b
    ld c, [hl]                                    ; $46f7: $4e

jr_0b7_46f8:
    ld [$2000], sp                                ; $46f8: $08 $00 $20
    sbc $17                                       ; $46fb: $de $17
    rst $38                                       ; $46fd: $ff
    ld c, e                                       ; $46fe: $4b
    ld c, [hl]                                    ; $46ff: $4e
    ld [$2000], sp                                ; $4700: $08 $00 $20
    or d                                          ; $4703: $b2
    ld d, l                                       ; $4704: $55
    adc d                                         ; $4705: $8a
    inc [hl]                                      ; $4706: $34
    db $fc                                        ; $4707: $fc
    ld a, [hl]                                    ; $4708: $7e
    nop                                           ; $4709: $00
    jr nz, jr_0b7_4784                            ; $470a: $20 $78

    ld [hl], d                                    ; $470c: $72
    ld c, b                                       ; $470d: $48
    jr nc, jr_0b7_46af                            ; $470e: $30 $9f

jr_0b7_4710:
    ld a, a                                       ; $4710: $7f
    ld bc, $6f18                                  ; $4711: $01 $18 $6f
    add hl, sp                                    ; $4714: $39
    cp l                                          ; $4715: $bd
    ld c, a                                       ; $4716: $4f
    xor b                                         ; $4717: $a8

jr_0b7_4718:
    jr z, @+$05                                   ; $4718: $28 $03

    inc b                                         ; $471a: $04
    ld d, e                                       ; $471b: $53
    ld [HeaderComplementCheck], sp                ; $471c: $08 $4d $01
    cp [hl]                                       ; $471f: $be
    inc d                                         ; $4720: $14
    ret z                                         ; $4721: $c8

    nop                                           ; $4722: $00
    ld e, $63                                     ; $4723: $1e $63
    dec d                                         ; $4725: $15
    rlca                                          ; $4726: $07
    sub d                                         ; $4727: $92
    stop                                          ; $4728: $10 $00

jr_0b7_472a:
    jr nz, @+$21                                  ; $472a: $20 $1f

    ld b, d                                       ; $472c: $42
    ld c, [hl]                                    ; $472d: $4e
    ld [$1092], sp                                ; $472e: $08 $92 $10
    nop                                           ; $4731: $00
    jr nz, jr_0b7_4753                            ; $4732: $20 $1f

    ld b, d                                       ; $4734: $42
    ld c, [hl]                                    ; $4735: $4e
    ld [$1092], sp                                ; $4736: $08 $92 $10
    nop                                           ; $4739: $00
    jr nz, @+$71                                  ; $473a: $20 $6f

    add hl, sp                                    ; $473c: $39
    cp l                                          ; $473d: $bd
    ld c, a                                       ; $473e: $4f
    xor b                                         ; $473f: $a8

jr_0b7_4740:
    jr z, jr_0b7_4742                             ; $4740: $28 $00

jr_0b7_4742:
    jr nz, jr_0b7_46d4                            ; $4742: $20 $90

    ld c, l                                       ; $4744: $4d
    dec a                                         ; $4745: $3d
    ld a, e                                       ; $4746: $7b
    ld l, c                                       ; $4747: $69
    jr nc, jr_0b7_474e                            ; $4748: $30 $04

    jr nz, jr_0b7_472a                            ; $474a: $20 $de

    dec hl                                        ; $474c: $2b
    rst $38                                       ; $474d: $ff

jr_0b7_474e:
    ld h, e                                       ; $474e: $63
    pop af                                        ; $474f: $f1
    ld sp, $0004                                  ; $4750: $31 $04 $00

jr_0b7_4753:
    ld a, [hl-]                                   ; $4753: $3a
    ld b, $2b                                     ; $4754: $06 $2b
    inc b                                         ; $4756: $04
    dec hl                                        ; $4757: $2b
    dec b                                         ; $4758: $05
    ld b, $00                                     ; $4759: $06 $00
    push de                                       ; $475b: $d5
    inc b                                         ; $475c: $04
    rst $18                                       ; $475d: $df

jr_0b7_475e:
    jr jr_0b7_475e                                ; $475e: $18 $fe

    dec b                                         ; $4760: $05

jr_0b7_4761:
    nop                                           ; $4761: $00
    nop                                           ; $4762: $00
    cpl                                           ; $4763: $2f
    inc b                                         ; $4764: $04
    rst $38                                       ; $4765: $ff
    inc e                                         ; $4766: $1c
    nop                                           ; $4767: $00
    jr nz, jr_0b7_476a                            ; $4768: $20 $00

jr_0b7_476a:
    jr nz, jr_0b7_479b                            ; $476a: $20 $2f

    inc b                                         ; $476c: $04
    rst $38                                       ; $476d: $ff
    inc e                                         ; $476e: $1c
    nop                                           ; $476f: $00
    jr nz, jr_0b7_4772                            ; $4770: $20 $00

jr_0b7_4772:
    jr nz, @-$20                                  ; $4772: $20 $de

    dec hl                                        ; $4774: $2b
    rst $38                                       ; $4775: $ff
    ld h, e                                       ; $4776: $63
    pop af                                        ; $4777: $f1
    ld sp, $2000                                  ; $4778: $31 $00 $20
    sub c                                         ; $477b: $91
    ld d, c                                       ; $477c: $51
    dec a                                         ; $477d: $3d
    ld a, e                                       ; $477e: $7b
    ld b, a                                       ; $477f: $47
    inc l                                         ; $4780: $2c
    inc bc                                        ; $4781: $03
    inc e                                         ; $4782: $1c
    or l                                          ; $4783: $b5

jr_0b7_4784:
    ld b, $ec                                     ; $4784: $06 $ec
    inc b                                         ; $4786: $04
    cp $0b                                        ; $4787: $fe $0b
    ret nz                                        ; $4789: $c0

    inc bc                                        ; $478a: $03
    cp l                                          ; $478b: $bd
    add hl, bc                                    ; $478c: $09
    call $be0c                                    ; $478d: $cd $0c $be
    ld a, [hl-]                                   ; $4790: $3a
    dec b                                         ; $4791: $05
    nop                                           ; $4792: $00
    ld [hl], $32                                  ; $4793: $36 $32
    sbc $7b                                       ; $4795: $de $7b
    rrca                                          ; $4797: $0f
    dec c                                         ; $4798: $0d
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00

jr_0b7_479b:
    rst $38                                       ; $479b: $ff
    ld a, a                                       ; $479c: $7f
    nop                                           ; $479d: $00
    jr nz, jr_0b7_47c7                            ; $479e: $20 $27

    add hl, bc                                    ; $47a0: $09
    nop                                           ; $47a1: $00
    jr nz, @+$01                                  ; $47a2: $20 $ff

    ld a, a                                       ; $47a4: $7f
    nop                                           ; $47a5: $00
    jr nz, @+$29                                  ; $47a6: $20 $27

    add hl, bc                                    ; $47a8: $09
    nop                                           ; $47a9: $00
    jr nz, jr_0b7_4761                            ; $47aa: $20 $b5

    ld b, $ec                                     ; $47ac: $06 $ec
    inc b                                         ; $47ae: $04

jr_0b7_47af:
    cp $0b                                        ; $47af: $fe $0b
    nop                                           ; $47b1: $00
    inc d                                         ; $47b2: $14
    db $f4                                        ; $47b3: $f4
    ld h, c                                       ; $47b4: $61
    ld l, b                                       ; $47b5: $68
    jr nc, jr_0b7_47d5                            ; $47b6: $30 $1d

    ld a, a                                       ; $47b8: $7f
    add l                                         ; $47b9: $85
    nop                                           ; $47ba: $00
    dec e                                         ; $47bb: $1d
    ld [hl-], a                                   ; $47bc: $32
    ccf                                           ; $47bd: $3f
    ld h, a                                       ; $47be: $67
    ld c, [hl]                                    ; $47bf: $4e
    ld [$0000], sp                                ; $47c0: $08 $00 $00
    ld e, h                                       ; $47c3: $5c

jr_0b7_47c4:
    dec b                                         ; $47c4: $05
    db $fc                                        ; $47c5: $fc
    ld b, d                                       ; $47c6: $42

jr_0b7_47c7:
    add h                                         ; $47c7: $84
    ld a, [bc]                                    ; $47c8: $0a
    ldh [$03], a                                  ; $47c9: $e0 $03
    sub $5e                                       ; $47cb: $d6 $5e
    dec bc                                        ; $47cd: $0b
    ld d, $fe                                     ; $47ce: $16 $fe
    ld b, d                                       ; $47d0: $42
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    rst $38                                       ; $47d3: $ff
    dec bc                                        ; $47d4: $0b

jr_0b7_47d5:
    rst $38                                       ; $47d5: $ff
    ld a, a                                       ; $47d6: $7f
    ld b, a                                       ; $47d7: $47
    nop                                           ; $47d8: $00
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    nop                                           ; $47db: $00
    jr nz, @+$01                                  ; $47dc: $20 $ff

    ld a, a                                       ; $47de: $7f
    ld b, a                                       ; $47df: $47
    nop                                           ; $47e0: $00
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    rst $38                                       ; $47e3: $ff
    ld a, a                                       ; $47e4: $7f
    nop                                           ; $47e5: $00
    jr nz, jr_0b7_4836                            ; $47e6: $20 $4e

    ld [$1001], sp                                ; $47e8: $08 $01 $10
    rla                                           ; $47eb: $17
    ld [hl], d                                    ; $47ec: $72
    adc d                                         ; $47ed: $8a
    jr c, jr_0b7_47af                             ; $47ee: $38 $bf

    ld a, a                                       ; $47f0: $7f
    dec hl                                        ; $47f1: $2b
    inc b                                         ; $47f2: $04
    rst $18                                       ; $47f3: $df
    jr jr_0b7_4835                                ; $47f4: $18 $3f

    ld b, $74                                     ; $47f6: $06 $74
    ld [$0cc2], sp                                ; $47f8: $08 $c2 $0c
    ld a, [hl]                                    ; $47fb: $7e
    ld e, e                                       ; $47fc: $5b
    di                                            ; $47fd: $f3
    ld hl, $0fe0                                  ; $47fe: $21 $e0 $0f
    ld b, a                                       ; $4801: $47
    nop                                           ; $4802: $00
    ld e, a                                       ; $4803: $5f
    ld d, a                                       ; $4804: $57
    cpl                                           ; $4805: $2f
    ld [bc], a                                    ; $4806: $02
    di                                            ; $4807: $f3
    add hl, hl                                    ; $4808: $29
    nop                                           ; $4809: $00
    nop                                           ; $480a: $00

jr_0b7_480b:
    ld b, a                                       ; $480b: $47
    nop                                           ; $480c: $00
    ld hl, $f304                                  ; $480d: $21 $04 $f3
    add hl, hl                                    ; $4810: $29
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    rst $38                                       ; $4813: $ff
    ld a, a                                       ; $4814: $7f
    nop                                           ; $4815: $00
    jr nz, jr_0b7_480b                            ; $4816: $20 $f3

    add hl, hl                                    ; $4818: $29
    nop                                           ; $4819: $00
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    ld a, a                                       ; $481c: $7f
    nop                                           ; $481d: $00
    jr nz, @+$44                                  ; $481e: $20 $42

    ld [$1002], sp                                ; $4820: $08 $02 $10
    ld d, c                                       ; $4823: $51
    ld e, c                                       ; $4824: $59
    ld c, b                                       ; $4825: $48
    jr nc, jr_0b7_47c4                            ; $4826: $30 $9c

    ld a, d                                       ; $4828: $7a
    inc b                                         ; $4829: $04
    inc b                                         ; $482a: $04
    rst $38                                       ; $482b: $ff
    ld a, a                                       ; $482c: $7f
    sub h                                         ; $482d: $94
    dec d                                         ; $482e: $15
    ld c, h                                       ; $482f: $4c
    inc b                                         ; $4830: $04
    nop                                           ; $4831: $00
    nop                                           ; $4832: $00
    ld [hl], $3a                                  ; $4833: $36 $3a

jr_0b7_4835:
    ld e, a                                       ; $4835: $5f

jr_0b7_4836:
    ld d, a                                       ; $4836: $57
    adc l                                         ; $4837: $8d
    ld de, $0445                                  ; $4838: $11 $45 $04
    jr jr_0b7_486b                                ; $483b: $18 $2e

    ld e, $47                                     ; $483d: $1e $47
    ld a, a                                       ; $483f: $7f
    ld d, a                                       ; $4840: $57
    ld b, d                                       ; $4841: $42
    ld [$56bd], sp                                ; $4842: $08 $bd $56
    add h                                         ; $4845: $84
    db $10                                        ; $4846: $10
    add $18                                       ; $4847: $c6 $18
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    rst $38                                       ; $484b: $ff
    ld a, a                                       ; $484c: $7f
    nop                                           ; $484d: $00
    jr nz, @+$65                                  ; $484e: $20 $63

    inc c                                         ; $4850: $0c
    nop                                           ; $4851: $00
    ld [$7fff], sp                                ; $4852: $08 $ff $7f
    and h                                         ; $4855: $a4
    db $10                                        ; $4856: $10
    ld c, [hl]                                    ; $4857: $4e
    ld [$1002], sp                                ; $4858: $08 $02 $10
    ld a, [hl-]                                   ; $485b: $3a
    ld [hl], d                                    ; $485c: $72
    ld l, c                                       ; $485d: $69
    inc [hl]                                      ; $485e: $34
    ld c, [hl]                                    ; $485f: $4e
    ld [$0844], sp                                ; $4860: $08 $44 $08
    rst $38                                       ; $4863: $ff
    ld e, e                                       ; $4864: $5b
    jr nc, jr_0b7_4878                            ; $4865: $30 $11

    jr nc, jr_0b7_489f                            ; $4867: $30 $36

    ld l, b                                       ; $4869: $68
    nop                                           ; $486a: $00

jr_0b7_486b:
    ld a, [hl-]                                   ; $486b: $3a
    ld l, $fe                                     ; $486c: $2e $fe
    ld b, d                                       ; $486e: $42
    jr nc, jr_0b7_487e                            ; $486f: $30 $0d

    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    jr jr_0b7_489b                                ; $4873: $18 $26

    sbc $3a                                       ; $4875: $de $3a
    daa                                           ; $4877: $27

jr_0b7_4878:
    nop                                           ; $4878: $00
    rst $00                                       ; $4879: $c7
    jr jr_0b7_48bb                                ; $487a: $18 $3f

    ld h, e                                       ; $487c: $63
    push de                                       ; $487d: $d5

jr_0b7_487e:
    inc e                                         ; $487e: $1c
    ld c, b                                       ; $487f: $48
    jr nc, jr_0b7_4882                            ; $4880: $30 $00

jr_0b7_4882:
    nop                                           ; $4882: $00
    rst $38                                       ; $4883: $ff
    ld a, a                                       ; $4884: $7f
    rst $20                                       ; $4885: $e7
    inc e                                         ; $4886: $1c
    nop                                           ; $4887: $00
    jr nz, jr_0b7_488a                            ; $4888: $20 $00

jr_0b7_488a:
    nop                                           ; $488a: $00
    ld a, a                                       ; $488b: $7f
    dec l                                         ; $488c: $2d
    sbc a                                         ; $488d: $9f
    ld [hl], e                                    ; $488e: $73
    adc [hl]                                      ; $488f: $8e
    db $10                                        ; $4890: $10
    ld bc, $9408                                  ; $4891: $01 $08 $94
    ld l, l                                       ; $4894: $6d
    ret                                           ; $4895: $c9


    inc l                                         ; $4896: $2c
    rra                                           ; $4897: $1f
    ld e, e                                       ; $4898: $5b
    ld b, a                                       ; $4899: $47
    nop                                           ; $489a: $00

jr_0b7_489b:
    or l                                          ; $489b: $b5
    ld [bc], a                                    ; $489c: $02
    sbc $2b                                       ; $489d: $de $2b

jr_0b7_489f:
    adc h                                         ; $489f: $8c
    add hl, de                                    ; $48a0: $19
    inc h                                         ; $48a1: $24
    nop                                           ; $48a2: $00
    ld d, c                                       ; $48a3: $51
    ld c, [hl]                                    ; $48a4: $4e
    ld hl, sp+$21                                 ; $48a5: $f8 $21
    ld a, e                                       ; $48a7: $7b
    ld [hl], $26                                  ; $48a8: $36 $26
    nop                                           ; $48aa: $00
    ld d, c                                       ; $48ab: $51
    ld c, [hl]                                    ; $48ac: $4e
    ld a, h                                       ; $48ad: $7c
    db $10                                        ; $48ae: $10
    jr jr_0b7_48d7                                ; $48af: $18 $26

    ld b, [hl]                                    ; $48b1: $46
    jr z, @-$02                                   ; $48b2: $28 $fc

    halt                                          ; $48b4: $76
    ld [hl], l                                    ; $48b5: $75
    inc c                                         ; $48b6: $0c
    ld c, a                                       ; $48b7: $4f
    ld c, l                                       ; $48b8: $4d
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00

jr_0b7_48bb:
    rst $38                                       ; $48bb: $ff
    ld a, a                                       ; $48bc: $7f
    ld a, [hl+]                                   ; $48bd: $2a
    dec l                                         ; $48be: $2d
    nop                                           ; $48bf: $00
    jr nz, jr_0b7_48c3                            ; $48c0: $20 $01

    inc b                                         ; $48c2: $04

jr_0b7_48c3:
    rst $38                                       ; $48c3: $ff
    ld a, a                                       ; $48c4: $7f
    cpl                                           ; $48c5: $2f
    nop                                           ; $48c6: $00
    ld a, h                                       ; $48c7: $7c
    inc c                                         ; $48c8: $0c
    nop                                           ; $48c9: $00
    nop                                           ; $48ca: $00
    db $10                                        ; $48cb: $10
    ld e, c                                       ; $48cc: $59
    adc l                                         ; $48cd: $8d
    jr nz, jr_0b7_48ed                            ; $48ce: $20 $1d

    ld a, a                                       ; $48d0: $7f
    ld b, a                                       ; $48d1: $47
    nop                                           ; $48d2: $00
    xor [hl]                                      ; $48d3: $ae
    dec a                                         ; $48d4: $3d
    jr nc, jr_0b7_48db                            ; $48d5: $30 $04

jr_0b7_48d7:
    ld h, a                                       ; $48d7: $67
    jr z, jr_0b7_48fe                             ; $48d8: $28 $24

    nop                                           ; $48da: $00

jr_0b7_48db:
    dec [hl]                                      ; $48db: $35
    ld [hl-], a                                   ; $48dc: $32
    jr nc, jr_0b7_48ec                            ; $48dd: $30 $0d

    ld e, h                                       ; $48df: $5c
    ld c, a                                       ; $48e0: $4f
    ld b, l                                       ; $48e1: $45
    nop                                           ; $48e2: $00
    cp b                                          ; $48e3: $b8
    inc c                                         ; $48e4: $0c
    ld d, c                                       ; $48e5: $51
    ld c, [hl]                                    ; $48e6: $4e
    ccf                                           ; $48e7: $3f
    ld [hl], $04                                  ; $48e8: $36 $04
    inc b                                         ; $48ea: $04
    db $ec                                        ; $48eb: $ec

jr_0b7_48ec:
    inc a                                         ; $48ec: $3c

jr_0b7_48ed:
    db $f4                                        ; $48ed: $f4
    ld h, c                                       ; $48ee: $61
    inc bc                                        ; $48ef: $03
    jr nz, jr_0b7_48f2                            ; $48f0: $20 $00

jr_0b7_48f2:
    nop                                           ; $48f2: $00
    inc [hl]                                      ; $48f3: $34
    ld e, [hl]                                    ; $48f4: $5e
    cp [hl]                                       ; $48f5: $be
    ld a, a                                       ; $48f6: $7f
    nop                                           ; $48f7: $00
    jr nz, jr_0b7_48fa                            ; $48f8: $20 $00

jr_0b7_48fa:
    inc c                                         ; $48fa: $0c
    rst $38                                       ; $48fb: $ff
    ld a, a                                       ; $48fc: $7f
    xor l                                         ; $48fd: $ad

jr_0b7_48fe:
    dec [hl]                                      ; $48fe: $35
    rlca                                          ; $48ff: $07
    nop                                           ; $4900: $00
    dec h                                         ; $4901: $25
    db $10                                        ; $4902: $10
    ld d, d                                       ; $4903: $52
    ld h, c                                       ; $4904: $61
    cp $4f                                        ; $4905: $fe $4f
    ld [hl], h                                    ; $4907: $74
    ld [hl+], a                                   ; $4908: $22
    ld [bc], a                                    ; $4909: $02
    inc b                                         ; $490a: $04
    sub e                                         ; $490b: $93
    ld h, c                                       ; $490c: $61
    ld b, a                                       ; $490d: $47
    inc l                                         ; $490e: $2c
    db $fc                                        ; $490f: $fc
    halt                                          ; $4910: $76
    ld b, a                                       ; $4911: $47
    nop                                           ; $4912: $00
    cp h                                          ; $4913: $bc
    rrca                                          ; $4914: $0f
    ldh a, [$35]                                  ; $4915: $f0 $35
    ld a, [hl]                                    ; $4917: $7e
    ld d, a                                       ; $4918: $57
    inc bc                                        ; $4919: $03
    nop                                           ; $491a: $00
    ld a, l                                       ; $491b: $7d
    inc b                                         ; $491c: $04
    xor a                                         ; $491d: $af
    ld b, c                                       ; $491e: $41
    ld e, a                                       ; $491f: $5f
    ld c, [hl]                                    ; $4920: $4e
    jr z, @+$06                                   ; $4921: $28 $04

    dec d                                         ; $4923: $15
    ld h, [hl]                                    ; $4924: $66
    ld [$ba2c], a                                 ; $4925: $ea $2c $ba
    scf                                           ; $4928: $37
    nop                                           ; $4929: $00
    inc e                                         ; $492a: $1c
    or d                                          ; $492b: $b2
    ld e, c                                       ; $492c: $59
    rst $38                                       ; $492d: $ff
    ld a, a                                       ; $492e: $7f
    ld l, b                                       ; $492f: $68
    jr nc, jr_0b7_4932                            ; $4930: $30 $00

jr_0b7_4932:
    inc c                                         ; $4932: $0c
    sbc e                                         ; $4933: $9b
    rla                                           ; $4934: $17
    rst $38                                       ; $4935: $ff
    ld a, a                                       ; $4936: $7f
    xor l                                         ; $4937: $ad
    dec [hl]                                      ; $4938: $35
    ld [bc], a                                    ; $4939: $02
    nop                                           ; $493a: $00

jr_0b7_493b:
    cp $1b                                        ; $493b: $fe $1b
    rst $38                                       ; $493d: $ff
    ld l, e                                       ; $493e: $6b
    ld [hl], e                                    ; $493f: $73
    ld a, [bc]                                    ; $4940: $0a
    inc b                                         ; $4941: $04
    ld [$6dd6], sp                                ; $4942: $08 $d6 $6d
    sbc $43                                       ; $4945: $de $43
    db $ed                                        ; $4947: $ed
    ld b, h                                       ; $4948: $44
    ld b, a                                       ; $4949: $47
    nop                                           ; $494a: $00
    cp c                                          ; $494b: $b9
    ld [hl], $9f                                  ; $494c: $36 $9f
    ld h, e                                       ; $494e: $63
    db $ed                                        ; $494f: $ed
    ld bc, $0024                                  ; $4950: $01 $24 $00
    db $ed                                        ; $4953: $ed
    ld e, b                                       ; $4954: $58
    rra                                           ; $4955: $1f
    nop                                           ; $4956: $00
    rla                                           ; $4957: $17
    ld e, d                                       ; $4958: $5a
    daa                                           ; $4959: $27
    inc h                                         ; $495a: $24
    cp d                                          ; $495b: $ba
    halt                                          ; $495c: $76
    rst $38                                       ; $495d: $ff
    ld c, e                                       ; $495e: $4b
    ld l, h                                       ; $495f: $6c
    nop                                           ; $4960: $00
    ld [bc], a                                    ; $4961: $02
    nop                                           ; $4962: $00
    rst $38                                       ; $4963: $ff
    ld e, e                                       ; $4964: $5b
    nop                                           ; $4965: $00
    inc e                                         ; $4966: $1c

jr_0b7_4967:
    ld l, b                                       ; $4967: $68
    inc l                                         ; $4968: $2c
    inc hl                                        ; $4969: $23
    nop                                           ; $496a: $00
    push de                                       ; $496b: $d5
    ld a, [bc]                                    ; $496c: $0a
    rst $38                                       ; $496d: $ff
    ld a, a                                       ; $496e: $7f
    nop                                           ; $496f: $00
    jr nz, jr_0b7_493b                            ; $4970: $20 $c9

    nop                                           ; $4972: $00
    rla                                           ; $4973: $17
    rlca                                          ; $4974: $07
    rst $38                                       ; $4975: $ff
    ld b, e                                       ; $4976: $43
    sbc $13                                       ; $4977: $de $13
    add [hl]                                      ; $4979: $86
    nop                                           ; $497a: $00
    sbc h                                         ; $497b: $9c
    rla                                           ; $497c: $17
    ld e, h                                       ; $497d: $5c
    ld e, a                                       ; $497e: $5f
    xor h                                         ; $497f: $ac
    ld c, b                                       ; $4980: $48
    ld h, $00                                     ; $4981: $26 $00
    add hl, de                                    ; $4983: $19
    ld h, $db                                     ; $4984: $26 $db
    ld c, d                                       ; $4986: $4a
    db $10                                        ; $4987: $10
    add hl, bc                                    ; $4988: $09
    ld c, b                                       ; $4989: $48
    inc c                                         ; $498a: $0c
    ld a, e                                       ; $498b: $7b
    ld l, $18                                     ; $498c: $2e $18
    halt                                          ; $498e: $76
    cp a                                          ; $498f: $bf
    ld d, a                                       ; $4990: $57
    ld bc, $da00                                  ; $4991: $01 $00 $da

jr_0b7_4994:
    ld a, d                                       ; $4994: $7a
    ld c, b                                       ; $4995: $48
    jr nc, jr_0b7_4994                            ; $4996: $30 $fc

    ld a, [hl]                                    ; $4998: $7e
    dec h                                         ; $4999: $25
    nop                                           ; $499a: $00
    ld a, d                                       ; $499b: $7a
    inc hl                                        ; $499c: $23
    nop                                           ; $499d: $00
    inc e                                         ; $499e: $1c
    rst $38                                       ; $499f: $ff
    ld d, e                                       ; $49a0: $53
    inc hl                                        ; $49a1: $23
    nop                                           ; $49a2: $00
    rst $38                                       ; $49a3: $ff
    ld a, a                                       ; $49a4: $7f
    adc h                                         ; $49a5: $8c
    ld bc, $2000                                  ; $49a6: $01 $00 $20
    ld b, a                                       ; $49a9: $47
    nop                                           ; $49aa: $00
    ld d, d                                       ; $49ab: $52
    ld b, $ac                                     ; $49ac: $06 $ac
    ld bc, $0b38                                  ; $49ae: $01 $38 $0b
    ld h, $08                                     ; $49b1: $26 $08
    ld a, e                                       ; $49b3: $7b
    dec bc                                        ; $49b4: $0b
    cp [hl]                                       ; $49b5: $be
    ld c, a                                       ; $49b6: $4f
    call z, Call_0b7_4601                         ; $49b7: $cc $01 $46
    inc b                                         ; $49ba: $04
    ld d, l                                       ; $49bb: $55
    ld a, $df                                     ; $49bc: $3e $df
    ld [hl], a                                    ; $49be: $77
    sub h                                         ; $49bf: $94
    add hl, de                                    ; $49c0: $19
    ld h, $00                                     ; $49c1: $26 $00
    ld a, l                                       ; $49c3: $7d
    ld [hl+], a                                   ; $49c4: $22
    dec b                                         ; $49c5: $05
    jr z, jr_0b7_4a12                             ; $49c6: $28 $4a

    ld d, b                                       ; $49c8: $50
    ld b, a                                       ; $49c9: $47
    nop                                           ; $49ca: $00
    db $f4                                        ; $49cb: $f4
    ld e, l                                       ; $49cc: $5d
    cp e                                          ; $49cd: $bb
    ld a, d                                       ; $49ce: $7a
    ld c, b                                       ; $49cf: $48
    jr nc, jr_0b7_49d6                            ; $49d0: $30 $04

    nop                                           ; $49d2: $00

jr_0b7_49d3:
    push de                                       ; $49d3: $d5
    ld h, $de                                     ; $49d4: $26 $de

jr_0b7_49d6:
    ld b, a                                       ; $49d6: $47
    nop                                           ; $49d7: $00
    jr nz, jr_0b7_49da                            ; $49d8: $20 $00

jr_0b7_49da:
    nop                                           ; $49da: $00
    rst $38                                       ; $49db: $ff
    ld a, a                                       ; $49dc: $7f
    nop                                           ; $49dd: $00
    jr nz, jr_0b7_4967                            ; $49de: $20 $87

    nop                                           ; $49e0: $00

jr_0b7_49e1:
    inc b                                         ; $49e1: $04
    inc [hl]                                      ; $49e2: $34
    ld b, $01                                     ; $49e3: $06 $01
    ld b, [hl]                                    ; $49e5: $46
    nop                                           ; $49e6: $00
    add hl, hl                                    ; $49e7: $29
    ld bc, $0065                                  ; $49e8: $01 $65 $00
    ld d, e                                       ; $49eb: $53
    ld [de], a                                    ; $49ec: $12
    rst $38                                       ; $49ed: $ff
    ld e, e                                       ; $49ee: $5b
    ld a, d                                       ; $49ef: $7a
    rla                                           ; $49f0: $17
    ld b, l                                       ; $49f1: $45
    inc b                                         ; $49f2: $04

jr_0b7_49f3:
    sbc c                                         ; $49f3: $99
    ld a, [hl-]                                   ; $49f4: $3a
    sbc h                                         ; $49f5: $9c
    ld [hl], a                                    ; $49f6: $77
    or c                                          ; $49f7: $b1
    add hl, hl                                    ; $49f8: $29
    inc bc                                        ; $49f9: $03
    jr jr_0b7_49d3                                ; $49fa: $18 $d7

    dec d                                         ; $49fc: $15
    jr nc, jr_0b7_4a08                            ; $49fd: $30 $09

    cp l                                          ; $49ff: $bd
    ld a, [hl-]                                   ; $4a00: $3a
    ld b, a                                       ; $4a01: $47
    nop                                           ; $4a02: $00
    or e                                          ; $4a03: $b3
    ld d, c                                       ; $4a04: $51
    db $dd                                        ; $4a05: $dd
    ld a, [hl]                                    ; $4a06: $7e
    ld c, b                                       ; $4a07: $48

jr_0b7_4a08:
    jr nc, jr_0b7_4a0a                            ; $4a08: $30 $00

jr_0b7_4a0a:
    jr nz, jr_0b7_49e1                            ; $4a0a: $20 $d5

    ld b, $de                                     ; $4a0c: $06 $de
    ccf                                           ; $4a0e: $3f
    daa                                           ; $4a0f: $27
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00

jr_0b7_4a12:
    nop                                           ; $4a12: $00
    rst $38                                       ; $4a13: $ff
    ld a, a                                       ; $4a14: $7f
    rst $28                                       ; $4a15: $ef
    dec a                                         ; $4a16: $3d
    nop                                           ; $4a17: $00
    jr nz, @+$49                                  ; $4a18: $20 $47

    nop                                           ; $4a1a: $00
    rst $28                                       ; $4a1b: $ef
    dec a                                         ; $4a1c: $3d
    db $fc                                        ; $4a1d: $fc
    halt                                          ; $4a1e: $76
    inc b                                         ; $4a1f: $04
    jr z, jr_0b7_4a47                             ; $4a20: $28 $25

    nop                                           ; $4a22: $00
    add hl, sp                                    ; $4a23: $39
    rla                                           ; $4a24: $17
    cp [hl]                                       ; $4a25: $be
    ld d, a                                       ; $4a26: $57
    cpl                                           ; $4a27: $2f
    ld [bc], a                                    ; $4a28: $02
    ld b, h                                       ; $4a29: $44
    inc b                                         ; $4a2a: $04
    or h                                          ; $4a2b: $b4
    dec d                                         ; $4a2c: $15
    rst $38                                       ; $4a2d: $ff
    ld a, a                                       ; $4a2e: $7f
    jr nc, @+$4c                                  ; $4a2f: $30 $4a

    ld h, $04                                     ; $4a31: $26 $04
    sub l                                         ; $4a33: $95
    dec d                                         ; $4a34: $15
    cp l                                          ; $4a35: $bd
    ld [hl], $03                                  ; $4a36: $36 $03

jr_0b7_4a38:
    inc h                                         ; $4a38: $24
    daa                                           ; $4a39: $27
    nop                                           ; $4a3a: $00
    ld [hl], h                                    ; $4a3b: $74
    dec d                                         ; $4a3c: $15
    rrca                                          ; $4a3d: $0f
    ld d, l                                       ; $4a3e: $55
    ld h, $28                                     ; $4a3f: $26 $28
    nop                                           ; $4a41: $00
    jr nz, @+$39                                  ; $4a42: $20 $37

    rlca                                          ; $4a44: $07
    daa                                           ; $4a45: $27
    nop                                           ; $4a46: $00

jr_0b7_4a47:
    db $dd                                        ; $4a47: $dd
    scf                                           ; $4a48: $37
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    rst $38                                       ; $4a4b: $ff
    ld a, a                                       ; $4a4c: $7f
    nop                                           ; $4a4d: $00
    jr nz, jr_0b7_4a7f                            ; $4a4e: $20 $2f

    ld [bc], a                                    ; $4a50: $02
    ld b, a                                       ; $4a51: $47
    jr jr_0b7_49f3                                ; $4a52: $18 $9f

jr_0b7_4a54:
    ld [hl], e                                    ; $4a54: $73
    ld c, h                                       ; $4a55: $4c
    dec [hl]                                      ; $4a56: $35
    or e                                          ; $4a57: $b3
    ld e, l                                       ; $4a58: $5d
    inc h                                         ; $4a59: $24
    nop                                           ; $4a5a: $00
    ld e, d                                       ; $4a5b: $5a
    dec bc                                        ; $4a5c: $0b
    ld e, l                                       ; $4a5d: $5d
    ld c, e                                       ; $4a5e: $4b
    call z, $2001                                 ; $4a5f: $cc $01 $20
    inc b                                         ; $4a62: $04
    cp h                                          ; $4a63: $bc
    jr jr_0b7_4aad                                ; $4a64: $18 $47

    inc b                                         ; $4a66: $04

jr_0b7_4a67:
    and h                                         ; $4a67: $a4
    inc d                                         ; $4a68: $14
    ld bc, $fd20                                  ; $4a69: $01 $20 $fd
    ld b, d                                       ; $4a6c: $42
    rst $38                                       ; $4a6d: $ff
    ld a, a                                       ; $4a6e: $7f
    ld b, a                                       ; $4a6f: $47
    nop                                           ; $4a70: $00
    ld h, $00                                     ; $4a71: $26 $00
    ld d, h                                       ; $4a73: $54
    dec b                                         ; $4a74: $05
    dec b                                         ; $4a75: $05
    inc h                                         ; $4a76: $24
    ld [hl], a                                    ; $4a77: $77
    ld b, d                                       ; $4a78: $42
    nop                                           ; $4a79: $00
    jr nz, jr_0b7_4a38                            ; $4a7a: $20 $bc

    rla                                           ; $4a7c: $17
    xor c                                         ; $4a7d: $a9
    nop                                           ; $4a7e: $00

jr_0b7_4a7f:
    sbc h                                         ; $4a7f: $9c
    ld c, e                                       ; $4a80: $4b
    nop                                           ; $4a81: $00
    nop                                           ; $4a82: $00
    rst $38                                       ; $4a83: $ff
    ld a, a                                       ; $4a84: $7f
    nop                                           ; $4a85: $00
    jr nz, jr_0b7_4a54                            ; $4a86: $20 $cc

    ld bc, $0400                                  ; $4a88: $01 $00 $04
    ld d, [hl]                                    ; $4a8b: $56
    ld h, [hl]                                    ; $4a8c: $66
    ld l, b                                       ; $4a8d: $68
    jr nc, jr_0b7_4b0e                            ; $4a8e: $30 $7e

    ld a, a                                       ; $4a90: $7f
    ld l, b                                       ; $4a91: $68
    jr jr_0b7_4aef                                ; $4a92: $18 $5b

    ld l, $57                                     ; $4a94: $2e $57
    ld a, [hl]                                    ; $4a96: $7e
    cp a                                          ; $4a97: $bf
    ld h, e                                       ; $4a98: $63
    daa                                           ; $4a99: $27
    nop                                           ; $4a9a: $00
    sub l                                         ; $4a9b: $95
    db $10                                        ; $4a9c: $10
    cp a                                          ; $4a9d: $bf
    dec [hl]                                      ; $4a9e: $35
    rst $38                                       ; $4a9f: $ff
    inc e                                         ; $4aa0: $1c

jr_0b7_4aa1:
    ld b, a                                       ; $4aa1: $47
    nop                                           ; $4aa2: $00
    ld a, c                                       ; $4aa3: $79
    ld a, [hl-]                                   ; $4aa4: $3a
    ld sp, $ff0d                                  ; $4aa5: $31 $0d $ff
    ld b, [hl]                                    ; $4aa8: $46
    ld [bc], a                                    ; $4aa9: $02
    nop                                           ; $4aaa: $00
    dec b                                         ; $4aab: $05
    inc h                                         ; $4aac: $24

jr_0b7_4aad:
    ld l, d                                       ; $4aad: $6a
    ld bc, $1550                                  ; $4aae: $01 $50 $15
    nop                                           ; $4ab1: $00
    jr nz, jr_0b7_4a67                            ; $4ab2: $20 $b3

    ld b, $de                                     ; $4ab4: $06 $de
    daa                                           ; $4ab6: $27
    ld b, a                                       ; $4ab7: $47
    nop                                           ; $4ab8: $00
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    rst $38                                       ; $4abb: $ff
    ld a, a                                       ; $4abc: $7f
    nop                                           ; $4abd: $00
    jr nz, jr_0b7_4a7f                            ; $4abe: $20 $bf

    ld h, e                                       ; $4ac0: $63
    ld bc, $b204                                  ; $4ac1: $01 $04 $b2
    ld h, c                                       ; $4ac4: $61
    ld l, b                                       ; $4ac5: $68
    inc [hl]                                      ; $4ac6: $34
    ld a, [hl]                                    ; $4ac7: $7e
    ld a, a                                       ; $4ac8: $7f
    ld b, a                                       ; $4ac9: $47

jr_0b7_4aca:
    ld [$369d], sp                                ; $4aca: $08 $9d $36
    ld d, a                                       ; $4acd: $57
    dec d                                         ; $4ace: $15
    sbc a                                         ; $4acf: $9f
    ld e, e                                       ; $4ad0: $5b
    daa                                           ; $4ad1: $27
    nop                                           ; $4ad2: $00
    cp a                                          ; $4ad3: $bf
    inc d                                         ; $4ad4: $14
    cp c                                          ; $4ad5: $b9
    ld a, $bf                                     ; $4ad6: $3e $bf
    dec [hl]                                      ; $4ad8: $35
    ld [bc], a                                    ; $4ad9: $02
    nop                                           ; $4ada: $00
    push de                                       ; $4adb: $d5
    ld hl, $090f                                  ; $4adc: $21 $0f $09
    sbc $42                                       ; $4adf: $de $42
    nop                                           ; $4ae1: $00
    nop                                           ; $4ae2: $00
    ld d, b                                       ; $4ae3: $50
    ld b, $27                                     ; $4ae4: $06 $27
    inc l                                         ; $4ae6: $2c
    dec b                                         ; $4ae7: $05
    inc b                                         ; $4ae8: $04
    nop                                           ; $4ae9: $00
    jr nz, jr_0b7_4aca                            ; $4aea: $20 $de

    inc de                                        ; $4aec: $13
    ld b, a                                       ; $4aed: $47
    nop                                           ; $4aee: $00

jr_0b7_4aef:
    rst $38                                       ; $4aef: $ff
    scf                                           ; $4af0: $37
    nop                                           ; $4af1: $00
    nop                                           ; $4af2: $00
    nop                                           ; $4af3: $00
    jr nz, jr_0b7_4b4d                            ; $4af4: $20 $57

    dec d                                         ; $4af6: $15
    sbc a                                         ; $4af7: $9f
    ld e, e                                       ; $4af8: $5b
    ld [bc], a                                    ; $4af9: $02
    nop                                           ; $4afa: $00
    db $db                                        ; $4afb: $db
    ld a, [hl]                                    ; $4afc: $7e
    ld h, $30                                     ; $4afd: $26 $30
    rst $18                                       ; $4aff: $df
    ld l, a                                       ; $4b00: $6f
    ld b, a                                       ; $4b01: $47
    jr jr_0b7_4aa1                                ; $4b02: $18 $9d

    ld [hl], $df                                  ; $4b04: $36 $df
    ld [hl], e                                    ; $4b06: $73
    sub l                                         ; $4b07: $95
    add hl, bc                                    ; $4b08: $09
    ld b, a                                       ; $4b09: $47
    ld [$297f], sp                                ; $4b0a: $08 $7f $29

jr_0b7_4b0d:
    reti                                          ; $4b0d: $d9


jr_0b7_4b0e:
    ld b, d                                       ; $4b0e: $42
    ld e, a                                       ; $4b0f: $5f
    ld c, a                                       ; $4b10: $4f
    nop                                           ; $4b11: $00
    nop                                           ; $4b12: $00
    jr jr_0b7_4b3b                                ; $4b13: $18 $26

    sbc $42                                       ; $4b15: $de $42
    ld b, a                                       ; $4b17: $47
    nop                                           ; $4b18: $00

Call_0b7_4b19:
    ld b, e                                       ; $4b19: $43
    nop                                           ; $4b1a: $00
    ld d, c                                       ; $4b1b: $51
    ld b, $27                                     ; $4b1c: $06 $27
    jr nc, @-$41                                  ; $4b1e: $30 $bd

    rrca                                          ; $4b20: $0f

jr_0b7_4b21:
    nop                                           ; $4b21: $00
    jr nz, @+$01                                  ; $4b22: $20 $ff

    inc de                                        ; $4b24: $13
    ld b, a                                       ; $4b25: $47
    nop                                           ; $4b26: $00
    rst $38                                       ; $4b27: $ff
    dec hl                                        ; $4b28: $2b
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    jr nz, jr_0b7_4b0d                            ; $4b2c: $20 $df

    ld [hl], e                                    ; $4b2e: $73
    sub l                                         ; $4b2f: $95
    add hl, bc                                    ; $4b30: $09
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    rra                                           ; $4b33: $1f
    ld b, a                                       ; $4b34: $47
    rst $18                                       ; $4b35: $df
    ld l, a                                       ; $4b36: $6f
    ld b, [hl]                                    ; $4b37: $46
    inc b                                         ; $4b38: $04
    ld b, a                                       ; $4b39: $47
    nop                                           ; $4b3a: $00

jr_0b7_4b3b:
    cp l                                          ; $4b3b: $bd
    ld a, [hl-]                                   ; $4b3c: $3a
    db $db                                        ; $4b3d: $db
    ld a, d                                       ; $4b3e: $7a

jr_0b7_4b3f:
    sub $19                                       ; $4b3f: $d6 $19
    ld b, a                                       ; $4b41: $47
    nop                                           ; $4b42: $00
    ld a, b                                       ; $4b43: $78
    ld a, [hl-]                                   ; $4b44: $3a
    cp a                                          ; $4b45: $bf
    ld h, e                                       ; $4b46: $63
    xor d                                         ; $4b47: $aa
    jr z, jr_0b7_4b6f                             ; $4b48: $28 $25

    nop                                           ; $4b4a: $00
    jr jr_0b7_4b73                                ; $4b4b: $18 $26

jr_0b7_4b4d:
    db $fd                                        ; $4b4d: $fd
    ld b, [hl]                                    ; $4b4e: $46
    ret                                           ; $4b4f: $c9


    inc c                                         ; $4b50: $0c
    nop                                           ; $4b51: $00
    inc b                                         ; $4b52: $04
    cp l                                          ; $4b53: $bd
    inc de                                        ; $4b54: $13
    xor $01                                       ; $4b55: $ee $01

jr_0b7_4b57:
    dec h                                         ; $4b57: $25
    inc h                                         ; $4b58: $24
    nop                                           ; $4b59: $00

jr_0b7_4b5a:
    jr nz, jr_0b7_4b5a                            ; $4b5a: $20 $fe

    inc hl                                        ; $4b5c: $23
    ld b, a                                       ; $4b5d: $47
    nop                                           ; $4b5e: $00
    rst $38                                       ; $4b5f: $ff
    inc sp                                        ; $4b60: $33
    nop                                           ; $4b61: $00
    jr nz, jr_0b7_4b21                            ; $4b62: $20 $bd

    ld a, [hl-]                                   ; $4b64: $3a
    db $db                                        ; $4b65: $db
    ld a, d                                       ; $4b66: $7a
    sub $19                                       ; $4b67: $d6 $19
    nop                                           ; $4b69: $00
    nop                                           ; $4b6a: $00
    sbc h                                         ; $4b6b: $9c
    ld [hl], $df                                  ; $4b6c: $36 $df
    ld [hl], a                                    ; $4b6e: $77

jr_0b7_4b6f:
    rst $38                                       ; $4b6f: $ff
    ld b, d                                       ; $4b70: $42
    dec h                                         ; $4b71: $25
    inc d                                         ; $4b72: $14

jr_0b7_4b73:
    cp e                                          ; $4b73: $bb
    ld a, d                                       ; $4b74: $7a
    jr nc, jr_0b7_4bcc                            ; $4b75: $30 $55

    sub $1d                                       ; $4b77: $d6 $1d
    ld b, a                                       ; $4b79: $47
    nop                                           ; $4b7a: $00
    ld d, c                                       ; $4b7b: $51
    dec c                                         ; $4b7c: $0d
    ld c, b                                       ; $4b7d: $48
    jr nc, jr_0b7_4b3f                            ; $4b7e: $30 $bf

    inc d                                         ; $4b80: $14
    dec h                                         ; $4b81: $25
    nop                                           ; $4b82: $00
    ld e, a                                       ; $4b83: $5f
    ld d, a                                       ; $4b84: $57
    sub l                                         ; $4b85: $95
    dec d                                         ; $4b86: $15
    rst $38                                       ; $4b87: $ff
    ld [hl], e                                    ; $4b88: $73
    inc hl                                        ; $4b89: $23
    db $10                                        ; $4b8a: $10
    sub e                                         ; $4b8b: $93
    ld a, [bc]                                    ; $4b8c: $0a
    adc h                                         ; $4b8d: $8c
    ld bc, $13de                                  ; $4b8e: $01 $de $13
    nop                                           ; $4b91: $00
    jr nz, jr_0b7_4bdb                            ; $4b92: $20 $47

    nop                                           ; $4b94: $00
    adc h                                         ; $4b95: $8c
    ld bc, $13de                                  ; $4b96: $01 $de $13
    nop                                           ; $4b99: $00
    jr nz, jr_0b7_4b57                            ; $4b9a: $20 $bb

    ld a, d                                       ; $4b9c: $7a
    jr nc, jr_0b7_4bf4                            ; $4b9d: $30 $55

    sub $1d                                       ; $4b9f: $d6 $1d
    nop                                           ; $4ba1: $00
    ld [$1994], sp                                ; $4ba2: $08 $94 $19
    rst $38                                       ; $4ba5: $ff
    ld a, a                                       ; $4ba6: $7f
    sbc l                                         ; $4ba7: $9d
    ld [hl], $03                                  ; $4ba8: $36 $03
    db $10                                        ; $4baa: $10
    cp e                                          ; $4bab: $bb
    ld a, d                                       ; $4bac: $7a
    ld d, d                                       ; $4bad: $52
    ld de, $348a                                  ; $4bae: $11 $8a $34
    ld b, a                                       ; $4bb1: $47
    inc c                                         ; $4bb2: $0c
    sub l                                         ; $4bb3: $95
    halt                                          ; $4bb4: $76
    db $dd                                        ; $4bb5: $dd
    jr @+$51                                      ; $4bb6: $18 $4f

    add hl, bc                                    ; $4bb8: $09
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    daa                                           ; $4bbb: $27
    jr c, jr_0b7_4c05                             ; $4bbc: $38 $47

    nop                                           ; $4bbe: $00
    add hl, hl                                    ; $4bbf: $29
    inc d                                         ; $4bc0: $14
    nop                                           ; $4bc1: $00
    inc d                                         ; $4bc2: $14
    ld d, d                                       ; $4bc3: $52
    ld b, $e8                                     ; $4bc4: $06 $e8
    nop                                           ; $4bc6: $00
    cp $13                                        ; $4bc7: $fe $13
    nop                                           ; $4bc9: $00
    jr nz, jr_0b7_4c1e                            ; $4bca: $20 $52

jr_0b7_4bcc:
    ld b, $e8                                     ; $4bcc: $06 $e8
    nop                                           ; $4bce: $00
    cp $13                                        ; $4bcf: $fe $13
    nop                                           ; $4bd1: $00
    jr nz, @+$24                                  ; $4bd2: $20 $22

    inc e                                         ; $4bd4: $1c
    ld d, d                                       ; $4bd5: $52
    ld de, $348a                                  ; $4bd6: $11 $8a $34
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00

jr_0b7_4bdb:
    rst $38                                       ; $4bdb: $ff
    ld a, a                                       ; $4bdc: $7f
    ld d, c                                       ; $4bdd: $51
    ld de, $2000                                  ; $4bde: $11 $00 $20
    nop                                           ; $4be1: $00
    nop                                           ; $4be2: $00
    ld d, $6a                                     ; $4be3: $16 $6a
    dec h                                         ; $4be5: $25
    jr jr_0b7_4c19                                ; $4be6: $18 $31

    dec c                                         ; $4be8: $0d
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    rst $38                                       ; $4beb: $ff
    ld a, a                                       ; $4bec: $7f
    add sp, $00                                   ; $4bed: $e8 $00
    cp $13                                        ; $4bef: $fe $13
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    rst $38                                       ; $4bf3: $ff

jr_0b7_4bf4:
    ld a, a                                       ; $4bf4: $7f
    add sp, $00                                   ; $4bf5: $e8 $00
    cp $13                                        ; $4bf7: $fe $13
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00
    rst $38                                       ; $4bfb: $ff
    ld a, a                                       ; $4bfc: $7f
    nop                                           ; $4bfd: $00
    jr nz, @+$49                                  ; $4bfe: $20 $47

    nop                                           ; $4c00: $00
    nop                                           ; $4c01: $00
    jr nz, @+$01                                  ; $4c02: $20 $ff

    ld a, a                                       ; $4c04: $7f

jr_0b7_4c05:
    nop                                           ; $4c05: $00
    jr nz, @+$49                                  ; $4c06: $20 $47

    nop                                           ; $4c08: $00
    nop                                           ; $4c09: $00
    jr nz, jr_0b7_4c22                            ; $4c0a: $20 $16

    ld l, d                                       ; $4c0c: $6a
    dec h                                         ; $4c0d: $25
    jr jr_0b7_4c41                                ; $4c0e: $18 $31

    dec c                                         ; $4c10: $0d
    nop                                           ; $4c11: $00
    nop                                           ; $4c12: $00
    rst $38                                       ; $4c13: $ff
    ld a, a                                       ; $4c14: $7f
    nop                                           ; $4c15: $00
    jr nz, jr_0b7_4c49                            ; $4c16: $20 $31

    dec c                                         ; $4c18: $0d

jr_0b7_4c19:
    nop                                           ; $4c19: $00
    nop                                           ; $4c1a: $00
    rst $38                                       ; $4c1b: $ff
    ld a, a                                       ; $4c1c: $7f
    nop                                           ; $4c1d: $00

jr_0b7_4c1e:
    jr nz, jr_0b7_4c51                            ; $4c1e: $20 $31

    dec c                                         ; $4c20: $0d
    nop                                           ; $4c21: $00

jr_0b7_4c22:
    nop                                           ; $4c22: $00
    nop                                           ; $4c23: $00
    jr nz, jr_0b7_4c26                            ; $4c24: $20 $00

jr_0b7_4c26:
    jr nz, @+$49                                  ; $4c26: $20 $47

    nop                                           ; $4c28: $00
    nop                                           ; $4c29: $00
    nop                                           ; $4c2a: $00
    nop                                           ; $4c2b: $00
    jr nz, jr_0b7_4c2e                            ; $4c2c: $20 $00

jr_0b7_4c2e:
    jr nz, @+$49                                  ; $4c2e: $20 $47

    nop                                           ; $4c30: $00
    nop                                           ; $4c31: $00
    nop                                           ; $4c32: $00
    nop                                           ; $4c33: $00
    jr nz, jr_0b7_4c36                            ; $4c34: $20 $00

jr_0b7_4c36:
    jr nz, @+$49                                  ; $4c36: $20 $47

    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    jr nz, jr_0b7_4c3c                            ; $4c3a: $20 $00

jr_0b7_4c3c:
    jr nz, jr_0b7_4c3e                            ; $4c3c: $20 $00

jr_0b7_4c3e:
    jr nz, @+$49                                  ; $4c3e: $20 $47

    nop                                           ; $4c40: $00

jr_0b7_4c41:
    nop                                           ; $4c41: $00
    jr nz, jr_0b7_4c44                            ; $4c42: $20 $00

jr_0b7_4c44:
    jr nz, jr_0b7_4c46                            ; $4c44: $20 $00

jr_0b7_4c46:
    jr nz, jr_0b7_4cb0                            ; $4c46: $20 $68

    inc b                                         ; $4c48: $04

jr_0b7_4c49:
    nop                                           ; $4c49: $00
    jr nz, jr_0b7_4c4c                            ; $4c4a: $20 $00

jr_0b7_4c4c:
    jr nz, jr_0b7_4c4e                            ; $4c4c: $20 $00

jr_0b7_4c4e:
    jr nz, jr_0b7_4cb8                            ; $4c4e: $20 $68

    inc b                                         ; $4c50: $04

jr_0b7_4c51:
    nop                                           ; $4c51: $00
    jr nz, jr_0b7_4c54                            ; $4c52: $20 $00

jr_0b7_4c54:
    jr nz, jr_0b7_4c56                            ; $4c54: $20 $00

jr_0b7_4c56:
    jr nz, jr_0b7_4cc0                            ; $4c56: $20 $68

    inc b                                         ; $4c58: $04
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00

jr_0b7_4c5b:
    rst $38                                       ; $4c5b: $ff
    ld a, a                                       ; $4c5c: $7f
    nop                                           ; $4c5d: $00
    jr nz, jr_0b7_4c60                            ; $4c5e: $20 $00

jr_0b7_4c60:
    jr nz, jr_0b7_4c62                            ; $4c60: $20 $00

jr_0b7_4c62:
    jr nz, @+$01                                  ; $4c62: $20 $ff

    ld a, a                                       ; $4c64: $7f
    nop                                           ; $4c65: $00
    jr nz, jr_0b7_4c68                            ; $4c66: $20 $00

jr_0b7_4c68:
    jr nz, jr_0b7_4c6a                            ; $4c68: $20 $00

jr_0b7_4c6a:
    jr nz, @+$01                                  ; $4c6a: $20 $ff

    ld a, a                                       ; $4c6c: $7f
    nop                                           ; $4c6d: $00
    jr nz, jr_0b7_4c70                            ; $4c6e: $20 $00

jr_0b7_4c70:
    jr nz, jr_0b7_4c72                            ; $4c70: $20 $00

jr_0b7_4c72:
    jr nz, @+$01                                  ; $4c72: $20 $ff

    ld a, a                                       ; $4c74: $7f
    nop                                           ; $4c75: $00
    jr nz, jr_0b7_4c78                            ; $4c76: $20 $00

jr_0b7_4c78:
    jr nz, jr_0b7_4c7a                            ; $4c78: $20 $00

jr_0b7_4c7a:
    jr nz, jr_0b7_4c7c                            ; $4c7a: $20 $00

jr_0b7_4c7c:
    jr nz, jr_0b7_4c7e                            ; $4c7c: $20 $00

jr_0b7_4c7e:
    jr nz, jr_0b7_4ce8                            ; $4c7e: $20 $68

    inc b                                         ; $4c80: $04
    nop                                           ; $4c81: $00
    jr nz, jr_0b7_4c84                            ; $4c82: $20 $00

jr_0b7_4c84:
    jr nz, jr_0b7_4c86                            ; $4c84: $20 $00

jr_0b7_4c86:
    jr nz, jr_0b7_4cf0                            ; $4c86: $20 $68

    inc b                                         ; $4c88: $04
    nop                                           ; $4c89: $00
    jr nz, jr_0b7_4c8c                            ; $4c8a: $20 $00

jr_0b7_4c8c:
    jr nz, jr_0b7_4c8e                            ; $4c8c: $20 $00

jr_0b7_4c8e:
    jr nz, jr_0b7_4cf8                            ; $4c8e: $20 $68

    inc b                                         ; $4c90: $04
    nop                                           ; $4c91: $00
    inc c                                         ; $4c92: $0c
    rst $38                                       ; $4c93: $ff
    ld c, e                                       ; $4c94: $4b
    xor l                                         ; $4c95: $ad
    add hl, bc                                    ; $4c96: $09
    rst $38                                       ; $4c97: $ff
    ld l, a                                       ; $4c98: $6f
    nop                                           ; $4c99: $00
    nop                                           ; $4c9a: $00
    nop                                           ; $4c9b: $00
    jr nz, @-$51                                  ; $4c9c: $20 $ad

    add hl, bc                                    ; $4c9e: $09
    rst $38                                       ; $4c9f: $ff
    ld l, a                                       ; $4ca0: $6f
    nop                                           ; $4ca1: $00
    jr nz, jr_0b7_4ca4                            ; $4ca2: $20 $00

jr_0b7_4ca4:
    jr nz, @-$51                                  ; $4ca4: $20 $ad

    add hl, bc                                    ; $4ca6: $09
    rst $38                                       ; $4ca7: $ff
    ld l, a                                       ; $4ca8: $6f
    nop                                           ; $4ca9: $00
    jr nz, jr_0b7_4cac                            ; $4caa: $20 $00

jr_0b7_4cac:
    jr nz, jr_0b7_4c5b                            ; $4cac: $20 $ad

    add hl, bc                                    ; $4cae: $09
    rst $38                                       ; $4caf: $ff

jr_0b7_4cb0:
    ld l, a                                       ; $4cb0: $6f
    nop                                           ; $4cb1: $00
    jr nz, jr_0b7_4cb4                            ; $4cb2: $20 $00

jr_0b7_4cb4:
    jr nz, jr_0b7_4cb6                            ; $4cb4: $20 $00

jr_0b7_4cb6:
    jr nz, jr_0b7_4d20                            ; $4cb6: $20 $68

jr_0b7_4cb8:
    inc b                                         ; $4cb8: $04
    nop                                           ; $4cb9: $00
    jr nz, jr_0b7_4cbc                            ; $4cba: $20 $00

jr_0b7_4cbc:
    jr nz, jr_0b7_4cbe                            ; $4cbc: $20 $00

jr_0b7_4cbe:
    jr nz, jr_0b7_4d28                            ; $4cbe: $20 $68

jr_0b7_4cc0:
    inc b                                         ; $4cc0: $04
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    ld c, d                                       ; $4cc3: $4a
    dec b                                         ; $4cc4: $05
    nop                                           ; $4cc5: $00
    jr nz, jr_0b7_4d30                            ; $4cc6: $20 $68

    inc b                                         ; $4cc8: $04
    and l                                         ; $4cc9: $a5
    inc b                                         ; $4cca: $04
    db $dd                                        ; $4ccb: $dd
    rrca                                          ; $4ccc: $0f
    sbc $5b                                       ; $4ccd: $de $5b

jr_0b7_4ccf:
    rst $28                                       ; $4ccf: $ef
    add hl, bc                                    ; $4cd0: $09
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    rst $38                                       ; $4cd3: $ff
    ld a, a                                       ; $4cd4: $7f
    nop                                           ; $4cd5: $00
    jr nz, @-$0f                                  ; $4cd6: $20 $ef

    add hl, bc                                    ; $4cd8: $09
    nop                                           ; $4cd9: $00
    jr nz, @+$01                                  ; $4cda: $20 $ff

    ld a, a                                       ; $4cdc: $7f
    nop                                           ; $4cdd: $00
    jr nz, jr_0b7_4ccf                            ; $4cde: $20 $ef

    add hl, bc                                    ; $4ce0: $09
    nop                                           ; $4ce1: $00
    jr nz, @+$01                                  ; $4ce2: $20 $ff

    ld a, a                                       ; $4ce4: $7f
    nop                                           ; $4ce5: $00
    jr nz, @-$0f                                  ; $4ce6: $20 $ef

jr_0b7_4ce8:
    add hl, bc                                    ; $4ce8: $09
    nop                                           ; $4ce9: $00
    jr nz, @+$4c                                  ; $4cea: $20 $4a

    dec b                                         ; $4cec: $05
    nop                                           ; $4ced: $00
    jr nz, jr_0b7_4d58                            ; $4cee: $20 $68

jr_0b7_4cf0:
    inc b                                         ; $4cf0: $04
    nop                                           ; $4cf1: $00
    jr nz, jr_0b7_4d3e                            ; $4cf2: $20 $4a

    dec b                                         ; $4cf4: $05
    nop                                           ; $4cf5: $00
    jr nz, jr_0b7_4d60                            ; $4cf6: $20 $68

jr_0b7_4cf8:
    inc b                                         ; $4cf8: $04
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00

jr_0b7_4cfb:
    add hl, hl                                    ; $4cfb: $29
    ld bc, $2000                                  ; $4cfc: $01 $00 $20
    xor l                                         ; $4cff: $ad
    add hl, bc                                    ; $4d00: $09
    nop                                           ; $4d01: $00
    nop                                           ; $4d02: $00

jr_0b7_4d03:
    or h                                          ; $4d03: $b4
    ld d, $8a                                     ; $4d04: $16 $8a
    ld bc, $0fdd                                  ; $4d06: $01 $dd $0f
    nop                                           ; $4d09: $00
    nop                                           ; $4d0a: $00
    rst $38                                       ; $4d0b: $ff
    ld a, a                                       ; $4d0c: $7f
    xor l                                         ; $4d0d: $ad
    add hl, bc                                    ; $4d0e: $09
    nop                                           ; $4d0f: $00
    jr nz, jr_0b7_4d12                            ; $4d10: $20 $00

jr_0b7_4d12:
    jr nz, @+$01                                  ; $4d12: $20 $ff

    ld a, a                                       ; $4d14: $7f
    xor l                                         ; $4d15: $ad
    add hl, bc                                    ; $4d16: $09
    nop                                           ; $4d17: $00
    jr nz, jr_0b7_4d1a                            ; $4d18: $20 $00

jr_0b7_4d1a:
    jr nz, @+$01                                  ; $4d1a: $20 $ff

    ld a, a                                       ; $4d1c: $7f
    xor l                                         ; $4d1d: $ad
    add hl, bc                                    ; $4d1e: $09
    nop                                           ; $4d1f: $00

jr_0b7_4d20:
    jr nz, jr_0b7_4d22                            ; $4d20: $20 $00

jr_0b7_4d22:
    jr nz, @+$2b                                  ; $4d22: $20 $29

    ld bc, $2000                                  ; $4d24: $01 $00 $20
    xor l                                         ; $4d27: $ad

jr_0b7_4d28:
    add hl, bc                                    ; $4d28: $09
    nop                                           ; $4d29: $00
    jr nz, @+$2b                                  ; $4d2a: $20 $29

    ld bc, $2000                                  ; $4d2c: $01 $00 $20
    xor l                                         ; $4d2f: $ad

jr_0b7_4d30:
    add hl, bc                                    ; $4d30: $09
    nop                                           ; $4d31: $00
    db $10                                        ; $4d32: $10
    add hl, sp                                    ; $4d33: $39
    rrca                                          ; $4d34: $0f
    adc $05                                       ; $4d35: $ce $05
    rst $38                                       ; $4d37: $ff
    ld a, a                                       ; $4d38: $7f
    ld bc, $390c                                  ; $4d39: $01 $0c $39
    dec e                                         ; $4d3c: $1d
    cp c                                          ; $4d3d: $b9

jr_0b7_4d3e:
    ld l, l                                       ; $4d3e: $6d
    ld a, a                                       ; $4d3f: $7f
    ld c, [hl]                                    ; $4d40: $4e
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    rst $38                                       ; $4d43: $ff
    ld a, a                                       ; $4d44: $7f
    xor l                                         ; $4d45: $ad
    add hl, bc                                    ; $4d46: $09
    nop                                           ; $4d47: $00
    jr nz, jr_0b7_4d4a                            ; $4d48: $20 $00

jr_0b7_4d4a:
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    jr nz, jr_0b7_4cfb                            ; $4d4c: $20 $ad

    add hl, bc                                    ; $4d4e: $09
    nop                                           ; $4d4f: $00
    jr nz, jr_0b7_4d52                            ; $4d50: $20 $00

jr_0b7_4d52:
    jr nz, jr_0b7_4d54                            ; $4d52: $20 $00

jr_0b7_4d54:
    jr nz, jr_0b7_4d03                            ; $4d54: $20 $ad

    add hl, bc                                    ; $4d56: $09
    nop                                           ; $4d57: $00

jr_0b7_4d58:
    jr nz, jr_0b7_4d5a                            ; $4d58: $20 $00

jr_0b7_4d5a:
    jr nz, jr_0b7_4d95                            ; $4d5a: $20 $39

    rrca                                          ; $4d5c: $0f
    adc $05                                       ; $4d5d: $ce $05
    rst $38                                       ; $4d5f: $ff

jr_0b7_4d60:
    ld a, a                                       ; $4d60: $7f
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    rst $38                                       ; $4d63: $ff

jr_0b7_4d64:
    ld a, a                                       ; $4d64: $7f
    nop                                           ; $4d65: $00
    jr nz, @+$01                                  ; $4d66: $20 $ff

    ld a, a                                       ; $4d68: $7f
    add $04                                       ; $4d69: $c6 $04
    ret nc                                        ; $4d6b: $d0

    ld l, h                                       ; $4d6c: $6c
    cp $17                                        ; $4d6d: $fe $17
    sbc $7b                                       ; $4d6f: $de $7b
    nop                                           ; $4d71: $00
    ld [$6198], sp                                ; $4d72: $08 $98 $61
    ld h, $38                                     ; $4d75: $26 $38
    dec c                                         ; $4d77: $0d
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    rst $38                                       ; $4d7b: $ff
    ld a, a                                       ; $4d7c: $7f
    dec h                                         ; $4d7d: $25
    inc b                                         ; $4d7e: $04
    dec c                                         ; $4d7f: $0d
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    rst $38                                       ; $4d83: $ff
    ld a, a                                       ; $4d84: $7f
    nop                                           ; $4d85: $00
    jr nz, jr_0b7_4d95                            ; $4d86: $20 $0d

    nop                                           ; $4d88: $00
    nop                                           ; $4d89: $00
    jr nz, @+$01                                  ; $4d8a: $20 $ff

    ld a, a                                       ; $4d8c: $7f
    nop                                           ; $4d8d: $00
    jr nz, jr_0b7_4d9d                            ; $4d8e: $20 $0d

    nop                                           ; $4d90: $00
    nop                                           ; $4d91: $00
    jr nz, jr_0b7_4d64                            ; $4d92: $20 $d0

    ld l, h                                       ; $4d94: $6c

jr_0b7_4d95:
    cp $17                                        ; $4d95: $fe $17
    sbc $7b                                       ; $4d97: $de $7b
    nop                                           ; $4d99: $00
    nop                                           ; $4d9a: $00
    sbc $2b                                       ; $4d9b: $de $2b

jr_0b7_4d9d:
    xor l                                         ; $4d9d: $ad
    add hl, bc                                    ; $4d9e: $09
    nop                                           ; $4d9f: $00
    jr nz, jr_0b7_4dc4                            ; $4da0: $20 $22

    nop                                           ; $4da2: $00
    xor l                                         ; $4da3: $ad
    dec b                                         ; $4da4: $05
    sbc e                                         ; $4da5: $9b
    inc de                                        ; $4da6: $13
    ld d, a                                       ; $4da7: $57
    dec b                                         ; $4da8: $05
    inc h                                         ; $4da9: $24
    nop                                           ; $4daa: $00

jr_0b7_4dab:
    or l                                          ; $4dab: $b5
    ld hl, $017d                                  ; $4dac: $21 $7d $01
    cp h                                          ; $4daf: $bc
    ld b, d                                       ; $4db0: $42
    ld hl, $0804                                  ; $4db1: $21 $04 $08
    ld hl, $09ad                                  ; $4db4: $21 $ad $09
    ld b, d                                       ; $4db7: $42
    ld [$0000], sp                                ; $4db8: $08 $00 $00
    rst $38                                       ; $4dbb: $ff
    ld a, a                                       ; $4dbc: $7f
    nop                                           ; $4dbd: $00
    jr nz, jr_0b7_4dc8                            ; $4dbe: $20 $08

    ld hl, $2000                                  ; $4dc0: $21 $00 $20
    rst $38                                       ; $4dc3: $ff

jr_0b7_4dc4:
    ld a, a                                       ; $4dc4: $7f
    nop                                           ; $4dc5: $00
    jr nz, jr_0b7_4dd0                            ; $4dc6: $20 $08

jr_0b7_4dc8:
    ld hl, $2000                                  ; $4dc8: $21 $00 $20
    xor l                                         ; $4dcb: $ad
    add hl, bc                                    ; $4dcc: $09
    add hl, sp                                    ; $4dcd: $39
    ld b, e                                       ; $4dce: $43
    ld d, a                                       ; $4dcf: $57

jr_0b7_4dd0:
    dec b                                         ; $4dd0: $05
    ld h, e                                       ; $4dd1: $63
    nop                                           ; $4dd2: $00
    jr jr_0b7_4df0                                ; $4dd3: $18 $1b

    rst $38                                       ; $4dd5: $ff
    scf                                           ; $4dd6: $37
    adc $05                                       ; $4dd7: $ce $05
    dec h                                         ; $4dd9: $25
    nop                                           ; $4dda: $00
    ld d, b                                       ; $4ddb: $50
    ld de, $3e7a                                  ; $4ddc: $11 $7a $3e
    ld a, l                                       ; $4ddf: $7d
    ld bc, $0082                                  ; $4de0: $01 $82 $00
    cp h                                          ; $4de3: $bc
    ld b, d                                       ; $4de4: $42

jr_0b7_4de5:
    xor l                                         ; $4de5: $ad
    add hl, hl                                    ; $4de6: $29
    rst $38                                       ; $4de7: $ff
    ld a, a                                       ; $4de8: $7f
    adc h                                         ; $4de9: $8c
    dec b                                         ; $4dea: $05
    sbc h                                         ; $4deb: $9c
    inc de                                        ; $4dec: $13
    xor l                                         ; $4ded: $ad
    dec [hl]                                      ; $4dee: $35

jr_0b7_4def:
    rst $38                                       ; $4def: $ff

jr_0b7_4df0:
    ld b, a                                       ; $4df0: $47
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    rst $38                                       ; $4df3: $ff
    ld a, a                                       ; $4df4: $7f
    xor l                                         ; $4df5: $ad
    dec [hl]                                      ; $4df6: $35
    adc $39                                       ; $4df7: $ce $39
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    jr nz, jr_0b7_4dab                            ; $4dfc: $20 $ad

    dec [hl]                                      ; $4dfe: $35
    adc $39                                       ; $4dff: $ce $39
    ld b, d                                       ; $4e01: $42
    nop                                           ; $4e02: $00
    rst $38                                       ; $4e03: $ff
    ld d, e                                       ; $4e04: $53
    xor l                                         ; $4e05: $ad
    add hl, bc                                    ; $4e06: $09
    nop                                           ; $4e07: $00
    inc e                                         ; $4e08: $1c
    ld bc, $1008                                  ; $4e09: $01 $08 $10
    ld b, d                                       ; $4e0c: $42
    add hl, sp                                    ; $4e0d: $39
    inc de                                        ; $4e0e: $13
    ld h, e                                       ; $4e0f: $63
    nop                                           ; $4e10: $00
    ld [hl+], a                                   ; $4e11: $22
    inc b                                         ; $4e12: $04
    ld e, b                                       ; $4e13: $58
    add hl, de                                    ; $4e14: $19
    sbc l                                         ; $4e15: $9d
    ld b, [hl]                                    ; $4e16: $46
    xor a                                         ; $4e17: $af
    inc b                                         ; $4e18: $04
    ld hl, $9a04                                  ; $4e19: $21 $04 $9a
    ld a, $dd                                     ; $4e1c: $3e $dd
    ld bc, $10eb                                  ; $4e1e: $01 $eb $10
    ld h, e                                       ; $4e21: $63
    nop                                           ; $4e22: $00
    ld e, d                                       ; $4e23: $5a
    rrca                                          ; $4e24: $0f
    xor l                                         ; $4e25: $ad
    ld bc, $47ff                                  ; $4e26: $01 $ff $47
    nop                                           ; $4e29: $00
    nop                                           ; $4e2a: $00
    ld sp, $ff46                                  ; $4e2b: $31 $46 $ff
    ld a, a                                       ; $4e2e: $7f
    xor l                                         ; $4e2f: $ad
    add hl, bc                                    ; $4e30: $09
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    ld a, a                                       ; $4e34: $7f
    nop                                           ; $4e35: $00
    jr nz, jr_0b7_4de5                            ; $4e36: $20 $ad

    add hl, bc                                    ; $4e38: $09
    nop                                           ; $4e39: $00
    nop                                           ; $4e3a: $00
    rst $38                                       ; $4e3b: $ff
    ld a, a                                       ; $4e3c: $7f
    nop                                           ; $4e3d: $00
    jr nz, jr_0b7_4def                            ; $4e3e: $20 $af

    inc b                                         ; $4e40: $04
    ld bc, $1308                                  ; $4e41: $01 $08 $13
    ld l, l                                       ; $4e44: $6d
    ld d, d                                       ; $4e45: $52
    ld c, d                                       ; $4e46: $4a
    cp c                                          ; $4e47: $b9
    ld a, l                                       ; $4e48: $7d
    nop                                           ; $4e49: $00
    nop                                           ; $4e4a: $00
    cp $01                                        ; $4e4b: $fe $01
    cp $3b                                        ; $4e4d: $fe $3b
    inc l                                         ; $4e4f: $2c
    ld bc, $0842                                  ; $4e50: $01 $42 $08
    sbc l                                         ; $4e53: $9d
    ld bc, $00f0                                  ; $4e54: $01 $f0 $00
    sbc a                                         ; $4e57: $9f
    ld [bc], a                                    ; $4e58: $02
    ld b, d                                       ; $4e59: $42
    nop                                           ; $4e5a: $00
    sub h                                         ; $4e5b: $94
    ld d, d                                       ; $4e5c: $52
    rst $38                                       ; $4e5d: $ff
    inc de                                        ; $4e5e: $13
    xor $01                                       ; $4e5f: $ee $01
    xor l                                         ; $4e61: $ad
    add hl, bc                                    ; $4e62: $09
    sub h                                         ; $4e63: $94
    ld d, d                                       ; $4e64: $52
    rst $38                                       ; $4e65: $ff
    ld c, e                                       ; $4e66: $4b
    sub $06                                       ; $4e67: $d6 $06
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    or l                                          ; $4e6b: $b5
    ld d, [hl]                                    ; $4e6c: $56
    nop                                           ; $4e6d: $00
    jr nz, @+$01                                  ; $4e6e: $20 $ff

    ld a, a                                       ; $4e70: $7f
    nop                                           ; $4e71: $00
    nop                                           ; $4e72: $00
    sub $5a                                       ; $4e73: $d6 $5a
    rst $38                                       ; $4e75: $ff
    ld a, a                                       ; $4e76: $7f
    nop                                           ; $4e77: $00
    jr nz, jr_0b7_4e9b                            ; $4e78: $20 $21

    ld [$64d0], sp                                ; $4e7a: $08 $d0 $64
    ld a, d                                       ; $4e7d: $7a
    halt                                          ; $4e7e: $76
    add hl, bc                                    ; $4e7f: $09
    ld c, b                                       ; $4e80: $48
    nop                                           ; $4e81: $00
    nop                                           ; $4e82: $00
    rla                                           ; $4e83: $17
    rrca                                          ; $4e84: $0f
    rst $38                                       ; $4e85: $ff
    ld b, a                                       ; $4e86: $47
    ld e, [hl]                                    ; $4e87: $5e
    ld [bc], a                                    ; $4e88: $02
    inc hl                                        ; $4e89: $23
    ld [$0157], sp                                ; $4e8a: $08 $57 $01
    rra                                           ; $4e8d: $1f
    ld [bc], a                                    ; $4e8e: $02
    call $2200                                    ; $4e8f: $cd $00 $22
    inc c                                         ; $4e92: $0c
    sub $5a                                       ; $4e93: $d6 $5a
    inc b                                         ; $4e95: $04
    ld c, b                                       ; $4e96: $48
    jr jr_0b7_4efc                                ; $4e97: $18 $63

    ld b, d                                       ; $4e99: $42
    nop                                           ; $4e9a: $00

jr_0b7_4e9b:
    rst $30                                       ; $4e9b: $f7
    ld e, [hl]                                    ; $4e9c: $5e
    xor l                                         ; $4e9d: $ad
    add hl, bc                                    ; $4e9e: $09
    adc $25                                       ; $4e9f: $ce $25
    nop                                           ; $4ea1: $00
    nop                                           ; $4ea2: $00
    rst $30                                       ; $4ea3: $f7
    ld e, [hl]                                    ; $4ea4: $5e

jr_0b7_4ea5:
    rst $38                                       ; $4ea5: $ff
    ld a, a                                       ; $4ea6: $7f
    nop                                           ; $4ea7: $00
    jr nz, jr_0b7_4eaa                            ; $4ea8: $20 $00

jr_0b7_4eaa:
    nop                                           ; $4eaa: $00
    jr jr_0b7_4f10                                ; $4eab: $18 $63

    rst $38                                       ; $4ead: $ff
    ld a, a                                       ; $4eae: $7f
    ld [hl+], a                                   ; $4eaf: $22
    inc c                                         ; $4eb0: $0c
    ld hl, $3404                                  ; $4eb1: $21 $04 $34
    ld l, l                                       ; $4eb4: $6d
    ld a, [hl-]                                   ; $4eb5: $3a
    ld a, [hl]                                    ; $4eb6: $7e
    dec b                                         ; $4eb7: $05
    jr c, jr_0b7_4ea5                             ; $4eb8: $38 $eb

    nop                                           ; $4eba: $00
    ld e, $0a                                     ; $4ebb: $1e $0a
    rst $38                                       ; $4ebd: $ff
    ld c, e                                       ; $4ebe: $4b
    ld e, c                                       ; $4ebf: $59
    dec de                                        ; $4ec0: $1b
    db $ec                                        ; $4ec1: $ec
    nop                                           ; $4ec2: $00
    cp a                                          ; $4ec3: $bf
    ld bc, $0a5e                                  ; $4ec4: $01 $5e $0a
    ld d, l                                       ; $4ec7: $55
    ld bc, $0c22                                  ; $4ec8: $01 $22 $0c
    ld [hl], h                                    ; $4ecb: $74
    ld a, l                                       ; $4ecc: $7d
    ld a, [hl-]                                   ; $4ecd: $3a
    ld l, e                                       ; $4ece: $6b
    db $ec                                        ; $4ecf: $ec
    ld [$6739], sp                                ; $4ed0: $08 $39 $67
    ld e, d                                       ; $4ed3: $5a
    ld l, e                                       ; $4ed4: $6b
    ld a, [hl-]                                   ; $4ed5: $3a
    ld l, e                                       ; $4ed6: $6b
    db $ec                                        ; $4ed7: $ec
    ld [$0000], sp                                ; $4ed8: $08 $00 $00
    add hl, sp                                    ; $4edb: $39
    ld h, a                                       ; $4edc: $67
    nop                                           ; $4edd: $00
    jr nz, @+$01                                  ; $4ede: $20 $ff

    ld a, a                                       ; $4ee0: $7f
    nop                                           ; $4ee1: $00
    inc b                                         ; $4ee2: $04
    ld e, d                                       ; $4ee3: $5a
    ld l, e                                       ; $4ee4: $6b
    rst $38                                       ; $4ee5: $ff
    ld a, a                                       ; $4ee6: $7f
    nop                                           ; $4ee7: $00
    jr nz, jr_0b7_4eed                            ; $4ee8: $20 $03

    jr @+$14                                      ; $4eea: $18 $12

    ld l, c                                       ; $4eec: $69

jr_0b7_4eed:
    ccf                                           ; $4eed: $3f
    ld [bc], a                                    ; $4eee: $02
    rlc h                                         ; $4eef: $cb $04
    ld [hl+], a                                   ; $4ef1: $22
    nop                                           ; $4ef2: $00
    cp b                                          ; $4ef3: $b8
    inc h                                         ; $4ef4: $24
    rst $38                                       ; $4ef5: $ff
    ld h, d                                       ; $4ef6: $62
    ld a, h                                       ; $4ef7: $7c
    ld a, [bc]                                    ; $4ef8: $0a
    add [hl]                                      ; $4ef9: $86
    nop                                           ; $4efa: $00
    rst $18                                       ; $4efb: $df

jr_0b7_4efc:
    ld bc, $067e                                  ; $4efc: $01 $7e $06
    rlc b                                         ; $4eff: $cb $00
    ld [hl+], a                                   ; $4f01: $22
    inc c                                         ; $4f02: $0c
    dec sp                                        ; $4f03: $3b
    ld [hl], e                                    ; $4f04: $73
    xor c                                         ; $4f05: $a9
    ld c, b                                       ; $4f06: $48
    db $ec                                        ; $4f07: $ec
    ld [$6f7b], sp                                ; $4f08: $08 $7b $6f
    dec sp                                        ; $4f0b: $3b
    ld [hl], e                                    ; $4f0c: $73
    xor c                                         ; $4f0d: $a9
    ld c, b                                       ; $4f0e: $48
    db $ec                                        ; $4f0f: $ec

jr_0b7_4f10:
    ld [$0000], sp                                ; $4f10: $08 $00 $00
    ld a, e                                       ; $4f13: $7b
    ld l, a                                       ; $4f14: $6f
    nop                                           ; $4f15: $00
    jr nz, @+$01                                  ; $4f16: $20 $ff

    ld a, a                                       ; $4f18: $7f
    nop                                           ; $4f19: $00
    inc b                                         ; $4f1a: $04
    ld e, d                                       ; $4f1b: $5a
    ld l, e                                       ; $4f1c: $6b
    rst $38                                       ; $4f1d: $ff
    ld a, a                                       ; $4f1e: $7f
    nop                                           ; $4f1f: $00
    jr nz, jr_0b7_4f44                            ; $4f20: $20 $22

    inc c                                         ; $4f22: $0c
    inc [hl]                                      ; $4f23: $34
    ld l, l                                       ; $4f24: $6d
    ld a, a                                       ; $4f25: $7f
    ld [bc], a                                    ; $4f26: $02
    adc d                                         ; $4f27: $8a
    inc [hl]                                      ; $4f28: $34
    ld [bc], a                                    ; $4f29: $02
    nop                                           ; $4f2a: $00

Jump_0b7_4f2b:
    sbc [hl]                                      ; $4f2b: $9e
    ld hl, $529f                                  ; $4f2c: $21 $9f $52
    ld d, b                                       ; $4f2f: $50
    inc b                                         ; $4f30: $04
    ld b, h                                       ; $4f31: $44
    nop                                           ; $4f32: $00
    db $fd                                        ; $4f33: $fd
    ld bc, $0530                                  ; $4f34: $01 $30 $05
    sbc a                                         ; $4f37: $9f
    ld [bc], a                                    ; $4f38: $02
    add a                                         ; $4f39: $87
    ld [$5e95], sp                                ; $4f3a: $08 $95 $5e
    rst $18                                       ; $4f3d: $df
    ld bc, $448a                                  ; $4f3e: $01 $8a $44
    sub h                                         ; $4f41: $94
    ld d, d                                       ; $4f42: $52
    add hl, sp                                    ; $4f43: $39

jr_0b7_4f44:
    ld h, a                                       ; $4f44: $67
    rst $18                                       ; $4f45: $df
    ld bc, $448a                                  ; $4f46: $01 $8a $44
    nop                                           ; $4f49: $00
    nop                                           ; $4f4a: $00
    sub $5a                                       ; $4f4b: $d6 $5a
    rst $38                                       ; $4f4d: $ff
    ld a, a                                       ; $4f4e: $7f
    nop                                           ; $4f4f: $00
    jr nz, jr_0b7_4f52                            ; $4f50: $20 $00

jr_0b7_4f52:
    inc b                                         ; $4f52: $04
    ld d, d                                       ; $4f53: $52
    ld c, d                                       ; $4f54: $4a
    rst $38                                       ; $4f55: $ff
    ld a, a                                       ; $4f56: $7f
    nop                                           ; $4f57: $00
    jr nz, jr_0b7_4f7c                            ; $4f58: $20 $22

    inc b                                         ; $4f5a: $04
    inc [hl]                                      ; $4f5b: $34
    ld l, l                                       ; $4f5c: $6d
    sbc h                                         ; $4f5d: $9c
    inc de                                        ; $4f5e: $13
    ld [$0138], sp                                ; $4f5f: $08 $38 $01
    nop                                           ; $4f62: $00
    add hl, de                                    ; $4f63: $19
    dec h                                         ; $4f64: $25
    ld sp, $9f04                                  ; $4f65: $31 $04 $9f
    ld d, [hl]                                    ; $4f68: $56
    ld b, h                                       ; $4f69: $44
    nop                                           ; $4f6a: $00
    ld a, [hl]                                    ; $4f6b: $7e
    ld [bc], a                                    ; $4f6c: $02
    xor $00                                       ; $4f6d: $ee $00
    push af                                       ; $4f6f: $f5
    nop                                           ; $4f70: $00
    add a                                         ; $4f71: $87
    ld [$023f], sp                                ; $4f72: $08 $3f $02
    xor l                                         ; $4f75: $ad
    dec [hl]                                      ; $4f76: $35
    pop af                                        ; $4f77: $f1
    ld a, b                                       ; $4f78: $78
    db $ec                                        ; $4f79: $ec
    inc d                                         ; $4f7a: $14
    rra                                           ; $4f7b: $1f

jr_0b7_4f7c:
    ld [bc], a                                    ; $4f7c: $02
    adc h                                         ; $4f7d: $8c
    ld sp, $3def                                  ; $4f7e: $31 $ef $3d
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    rst $38                                       ; $4f83: $ff
    ld a, a                                       ; $4f84: $7f
    ld c, h                                       ; $4f85: $4c
    dec h                                         ; $4f86: $25
    nop                                           ; $4f87: $00
    jr nz, jr_0b7_4f8a                            ; $4f88: $20 $00

jr_0b7_4f8a:
    inc b                                         ; $4f8a: $04
    rst $38                                       ; $4f8b: $ff
    ld a, a                                       ; $4f8c: $7f
    ld l, e                                       ; $4f8d: $6b
    dec l                                         ; $4f8e: $2d
    nop                                           ; $4f8f: $00
    jr nz, @+$24                                  ; $4f90: $20 $22

    ld [$7977], sp                                ; $4f92: $08 $77 $79
    sbc h                                         ; $4f95: $9c
    inc de                                        ; $4f96: $13
    add hl, bc                                    ; $4f97: $09
    inc a                                         ; $4f98: $3c
    inc h                                         ; $4f99: $24
    inc b                                         ; $4f9a: $04
    db $dd                                        ; $4f9b: $dd
    daa                                           ; $4f9c: $27

jr_0b7_4f9d:
    ld c, d                                       ; $4f9d: $4a
    ld c, b                                       ; $4f9e: $48
    rst $38                                       ; $4f9f: $ff
    ld e, e                                       ; $4fa0: $5b
    ld h, [hl]                                    ; $4fa1: $66
    nop                                           ; $4fa2: $00
    sub $01                                       ; $4fa3: $d6 $01
    cp $1f                                        ; $4fa5: $fe $1f
    ld a, a                                       ; $4fa7: $7f
    ld [bc], a                                    ; $4fa8: $02
    ld [hl+], a                                   ; $4fa9: $22
    inc c                                         ; $4faa: $0c
    rra                                           ; $4fab: $1f
    ld [bc], a                                    ; $4fac: $02
    jr nc, jr_0b7_5018                            ; $4fad: $30 $69

    ld a, [bc]                                    ; $4faf: $0a
    dec e                                         ; $4fb0: $1d
    rst $20                                       ; $4fb1: $e7
    inc e                                         ; $4fb2: $1c
    sbc $18                                       ; $4fb3: $de $18
    ld a, a                                       ; $4fb5: $7f
    ld [bc], a                                    ; $4fb6: $02
    ld c, d                                       ; $4fb7: $4a
    add hl, hl                                    ; $4fb8: $29
    nop                                           ; $4fb9: $00
    nop                                           ; $4fba: $00
    rst $38                                       ; $4fbb: $ff
    ld a, a                                       ; $4fbc: $7f
    ld [$0021], sp                                ; $4fbd: $08 $21 $00
    jr nz, jr_0b7_4fc2                            ; $4fc0: $20 $00

jr_0b7_4fc2:
    inc b                                         ; $4fc2: $04
    rst $38                                       ; $4fc3: $ff
    ld a, a                                       ; $4fc4: $7f
    nop                                           ; $4fc5: $00
    jr nz, jr_0b7_4fd0                            ; $4fc6: $20 $08

    ld hl, $0422                                  ; $4fc8: $21 $22 $04
    xor a                                         ; $4fcb: $af
    ld e, b                                       ; $4fcc: $58
    sbc h                                         ; $4fcd: $9c
    inc de                                        ; $4fce: $13
    inc a                                         ; $4fcf: $3c

jr_0b7_4fd0:
    ld a, [hl]                                    ; $4fd0: $7e
    push bc                                       ; $4fd1: $c5
    nop                                           ; $4fd2: $00
    ld a, d                                       ; $4fd3: $7a
    inc de                                        ; $4fd4: $13
    ld a, [hl]                                    ; $4fd5: $7e
    ld e, a                                       ; $4fd6: $5f
    jr z, jr_0b7_501d                             ; $4fd7: $28 $44

    ld bc, $dd00                                  ; $4fd9: $01 $00 $dd
    ld b, $ff                                     ; $4fdc: $06 $ff
    ld d, e                                       ; $4fde: $53
    ld c, [hl]                                    ; $4fdf: $4e
    ld bc, $0444                                  ; $4fe0: $01 $44 $04
    rst $30                                       ; $4fe3: $f7
    ld [hl], l                                    ; $4fe4: $75
    cp $05                                        ; $4fe5: $fe $05
    dec h                                         ; $4fe7: $25
    inc a                                         ; $4fe8: $3c
    add h                                         ; $4fe9: $84
    db $10                                        ; $4fea: $10
    sbc $18                                       ; $4feb: $de $18
    rrca                                          ; $4fed: $0f
    nop                                           ; $4fee: $00
    sbc a                                         ; $4fef: $9f
    ld d, [hl]                                    ; $4ff0: $56
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00
    rst $38                                       ; $4ff3: $ff
    ld a, a                                       ; $4ff4: $7f
    nop                                           ; $4ff5: $00
    jr nz, jr_0b7_4f9d                            ; $4ff6: $20 $a5

    inc d                                         ; $4ff8: $14
    nop                                           ; $4ff9: $00
    nop                                           ; $4ffa: $00
    rst $38                                       ; $4ffb: $ff
    ld a, a                                       ; $4ffc: $7f
    nop                                           ; $4ffd: $00
    jr nz, @+$24                                  ; $4ffe: $20 $22

    inc c                                         ; $5000: $0c
    ld h, h                                       ; $5001: $64
    ld [$139c], sp                                ; $5002: $08 $9c $13
    pop de                                        ; $5005: $d1
    dec e                                         ; $5006: $1d
    cp l                                          ; $5007: $bd
    ld l, [hl]                                    ; $5008: $6e
    ld b, d                                       ; $5009: $42
    nop                                           ; $500a: $00
    db $fd                                        ; $500b: $fd
    dec a                                         ; $500c: $3d
    rst $38                                       ; $500d: $ff
    scf                                           ; $500e: $37
    xor $01                                       ; $500f: $ee $01
    nop                                           ; $5011: $00
    nop                                           ; $5012: $00
    ld [hl], h                                    ; $5013: $74
    jr nz, jr_0b7_5055                            ; $5014: $20 $3f

jr_0b7_5016:
    ld [hl+], a                                   ; $5016: $22
    ld d, e                                       ; $5017: $53

jr_0b7_5018:
    ld bc, $0822                                  ; $5018: $01 $22 $08
    ld e, a                                       ; $501b: $5f
    ld [bc], a                                    ; $501c: $02

jr_0b7_501d:
    ld d, h                                       ; $501d: $54
    ld l, l                                       ; $501e: $6d
    ld e, h                                       ; $501f: $5c
    ld a, [hl]                                    ; $5020: $7e
    ld hl, $5a04                                  ; $5021: $21 $04 $5a
    dec e                                         ; $5024: $1d
    rst $38                                       ; $5025: $ff
    ld d, e                                       ; $5026: $53
    ld c, $04                                     ; $5027: $0e $04
    nop                                           ; $5029: $00
    nop                                           ; $502a: $00
    rst $38                                       ; $502b: $ff
    ld a, a                                       ; $502c: $7f
    nop                                           ; $502d: $00
    jr nz, jr_0b7_5072                            ; $502e: $20 $42

    ld [$0401], sp                                ; $5030: $08 $01 $04
    ld e, a                                       ; $5033: $5f
    ld a, a                                       ; $5034: $7f
    nop                                           ; $5035: $00
    jr nz, jr_0b7_5016                            ; $5036: $20 $de

    ld a, e                                       ; $5038: $7b
    ld h, h                                       ; $5039: $64
    nop                                           ; $503a: $00
    ld d, l                                       ; $503b: $55
    rrca                                          ; $503c: $0f
    dec e                                         ; $503d: $1d
    ld l, a                                       ; $503e: $6f
    ld e, h                                       ; $503f: $5c
    db $10                                        ; $5040: $10
    ld bc, $f400                                  ; $5041: $01 $00 $f4
    inc c                                         ; $5044: $0c
    push af                                       ; $5045: $f5
    ld [hl+], a                                   ; $5046: $22
    sbc a                                         ; $5047: $9f
    ld d, d                                       ; $5048: $52
    ld [hl+], a                                   ; $5049: $22
    nop                                           ; $504a: $00
    ld a, l                                       ; $504b: $7d
    ld de, $4e9f                                  ; $504c: $11 $9f $4e
    ld de, $2204                                  ; $504f: $11 $04 $22
    inc b                                         ; $5052: $04
    ld hl, sp+$75                                 ; $5053: $f8 $75

jr_0b7_5055:
    ld e, a                                       ; $5055: $5f
    ld [bc], a                                    ; $5056: $02
    rst $38                                       ; $5057: $ff
    scf                                           ; $5058: $37
    inc b                                         ; $5059: $04
    nop                                           ; $505a: $00
    ld d, $03                                     ; $505b: $16 $03
    sbc $4f                                       ; $505d: $de $4f
    sbc $18                                       ; $505f: $de $18
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00
    sbc h                                         ; $5063: $9c
    ld [hl], e                                    ; $5064: $73
    nop                                           ; $5065: $00
    jr nz, @+$01                                  ; $5066: $20 $ff

    ld a, a                                       ; $5068: $7f
    ld hl, $9904                                  ; $5069: $21 $04 $99
    ld a, l                                       ; $506c: $7d
    rra                                           ; $506d: $1f
    ld a, a                                       ; $506e: $7f
    nop                                           ; $506f: $00
    jr nz, jr_0b7_5094                            ; $5070: $20 $22

jr_0b7_5072:
    nop                                           ; $5072: $00
    rst $38                                       ; $5073: $ff
    inc sp                                        ; $5074: $33
    call z, $5405                                 ; $5075: $cc $05 $54
    dec d                                         ; $5078: $15
    nop                                           ; $5079: $00
    nop                                           ; $507a: $00
    inc sp                                        ; $507b: $33
    ld e, $5e                                     ; $507c: $1e $5e
    ld c, e                                       ; $507e: $4b
    add hl, bc                                    ; $507f: $09
    nop                                           ; $5080: $00
    ld [bc], a                                    ; $5081: $02
    nop                                           ; $5082: $00
    rra                                           ; $5083: $1f
    ld c, $7f                                     ; $5084: $0e $7f
    ld c, [hl]                                    ; $5086: $4e
    sub c                                         ; $5087: $91
    ld [$0400], sp                                ; $5088: $08 $00 $04
    sbc c                                         ; $508b: $99
    ld c, $3c                                     ; $508c: $0e $3c
    ld e, e                                       ; $508e: $5b
    ld a, [bc]                                    ; $508f: $0a
    dec e                                         ; $5090: $1d
    ld bc, $bd00                                  ; $5091: $01 $00 $bd

jr_0b7_5094:
    ld b, a                                       ; $5094: $47
    inc c                                         ; $5095: $0c

jr_0b7_5096:
    ld [bc], a                                    ; $5096: $02
    rrca                                          ; $5097: $0f
    nop                                           ; $5098: $00
    ld [bc], a                                    ; $5099: $02
    nop                                           ; $509a: $00
    ld e, d                                       ; $509b: $5a
    ld l, e                                       ; $509c: $6b
    nop                                           ; $509d: $00
    jr nz, @+$01                                  ; $509e: $20 $ff

    ld a, a                                       ; $50a0: $7f
    nop                                           ; $50a1: $00
    jr nz, jr_0b7_5096                            ; $50a2: $20 $f2

    ld h, h                                       ; $50a4: $64
    cp $7d                                        ; $50a5: $fe $7d
    ld b, d                                       ; $50a7: $42
    inc b                                         ; $50a8: $04
    ld h, $00                                     ; $50a9: $26 $00
    cp b                                          ; $50ab: $b8
    ld d, $5e                                     ; $50ac: $16 $5e
    ld b, a                                       ; $50ae: $47
    ld l, $0a                                     ; $50af: $2e $0a
    inc b                                         ; $50b1: $04
    nop                                           ; $50b2: $00
    ld [hl], $1a                                  ; $50b3: $36 $1a
    rst $38                                       ; $50b5: $ff
    ld b, a                                       ; $50b6: $47
    dec bc                                        ; $50b7: $0b
    dec d                                         ; $50b8: $15
    nop                                           ; $50b9: $00
    nop                                           ; $50ba: $00
    ld e, e                                       ; $50bb: $5b
    add hl, de                                    ; $50bc: $19
    cp a                                          ; $50bd: $bf
    ld e, d                                       ; $50be: $5a
    ld c, h                                       ; $50bf: $4c
    nop                                           ; $50c0: $00
    nop                                           ; $50c1: $00
    inc b                                         ; $50c2: $04
    ld [hl], b                                    ; $50c3: $70
    ld d, $8a                                     ; $50c4: $16 $8a

jr_0b7_50c6:
    jr jr_0b7_50c6                                ; $50c6: $18 $fe

    dec sp                                        ; $50c8: $3b
    ld [bc], a                                    ; $50c9: $02
    nop                                           ; $50ca: $00
    ld e, $25                                     ; $50cb: $1e $25
    ccf                                           ; $50cd: $3f
    ld d, a                                       ; $50ce: $57
    ld [hl], b                                    ; $50cf: $70
    inc b                                         ; $50d0: $04
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    nop                                           ; $50d3: $00
    jr nz, jr_0b7_50dd                            ; $50d4: $20 $07

    nop                                           ; $50d6: $00
    ld [hl], b                                    ; $50d7: $70
    inc b                                         ; $50d8: $04
    nop                                           ; $50d9: $00
    jr nz, @-$70                                  ; $50da: $20 $8e

    ld e, b                                       ; $50dc: $58

jr_0b7_50dd:
    rra                                           ; $50dd: $1f
    ld d, a                                       ; $50de: $57
    ld b, d                                       ; $50df: $42
    inc b                                         ; $50e0: $04
    ld bc, $b100                                  ; $50e1: $01 $00 $b1
    dec l                                         ; $50e4: $2d
    adc a                                         ; $50e5: $8f
    ld [$365c], sp                                ; $50e6: $08 $5c $36
    inc hl                                        ; $50e9: $23
    nop                                           ; $50ea: $00
    ld [hl], l                                    ; $50eb: $75
    ld a, [hl+]                                   ; $50ec: $2a
    dec c                                         ; $50ed: $0d
    ld de, $33ff                                  ; $50ee: $11 $ff $33
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    rst $38                                       ; $50f3: $ff
    rra                                           ; $50f4: $1f
    xor d                                         ; $50f5: $aa
    ld bc, $4bdc                                  ; $50f6: $01 $dc $4b
    ld [bc], a                                    ; $50f9: $02
    nop                                           ; $50fa: $00
    ld [hl], c                                    ; $50fb: $71
    db $10                                        ; $50fc: $10
    ccf                                           ; $50fd: $3f
    ld b, [hl]                                    ; $50fe: $46
    sbc e                                         ; $50ff: $9b
    db $10                                        ; $5100: $10
    ld bc, $5900                                  ; $5101: $01 $00 $59
    ld hl, $52dd                                  ; $5104: $21 $dd $52
    call z, Call_000_000c                         ; $5107: $cc $0c $00
    jr nz, @+$09                                  ; $510a: $20 $07

    nop                                           ; $510c: $00
    db $dd                                        ; $510d: $dd
    ld d, d                                       ; $510e: $52
    call z, Call_000_000c                         ; $510f: $cc $0c $00
    jr nz, jr_0b7_5133                            ; $5112: $20 $1f

    ld e, e                                       ; $5114: $5b
    add hl, bc                                    ; $5115: $09
    ld b, b                                       ; $5116: $40
    ld b, d                                       ; $5117: $42
    inc b                                         ; $5118: $04
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    sub e                                         ; $511b: $93
    ld hl, $217e                                  ; $511c: $21 $7e $21
    add hl, hl                                    ; $511f: $29
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    ld a, e                                       ; $5123: $7b
    dec l                                         ; $5124: $2d
    cp a                                          ; $5125: $bf
    ld e, [hl]                                    ; $5126: $5e
    add hl, bc                                    ; $5127: $09
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    rst $38                                       ; $512b: $ff
    rla                                           ; $512c: $17
    ld [hl], d                                    ; $512d: $72
    ld [bc], a                                    ; $512e: $02
    rst $38                                       ; $512f: $ff
    ld b, a                                       ; $5130: $47
    inc b                                         ; $5131: $04
    nop                                           ; $5132: $00

jr_0b7_5133:
    or a                                          ; $5133: $b7
    dec l                                         ; $5134: $2d
    ld d, e                                       ; $5135: $53
    ld [$0bff], sp                                ; $5136: $08 $ff $0b
    ld [bc], a                                    ; $5139: $02
    nop                                           ; $513a: $00
    db $10                                        ; $513b: $10
    ld [hl-], a                                   ; $513c: $32
    ld a, [$c93a]                                 ; $513d: $fa $3a $c9
    stop                                          ; $5140: $10 $00
    inc d                                         ; $5142: $14
    ld h, e                                       ; $5143: $63
    stop                                          ; $5144: $10 $00
    jr nz, jr_0b7_514f                            ; $5146: $20 $07

    nop                                           ; $5148: $00
    ld hl, $0f04                                  ; $5149: $21 $04 $0f
    ld a, $db                                     ; $514c: $3e $db
    dec [hl]                                      ; $514e: $35

jr_0b7_514f:
    ld bc, $e91c                                  ; $514f: $01 $1c $e9
    jr jr_0b7_518c                                ; $5152: $18 $38

    ld h, a                                       ; $5154: $67
    ld c, $42                                     ; $5155: $0e $42
    rst $38                                       ; $5157: $ff
    ld a, a                                       ; $5158: $7f
    ld [hl+], a                                   ; $5159: $22
    inc b                                         ; $515a: $04
    or e                                          ; $515b: $b3
    ld e, d                                       ; $515c: $5a
    ld l, $1d                                     ; $515d: $2e $1d
    rst $38                                       ; $515f: $ff
    ld a, a                                       ; $5160: $7f
    nop                                           ; $5161: $00
    inc b                                         ; $5162: $04
    sbc h                                         ; $5163: $9c
    dec de                                        ; $5164: $1b
    xor e                                         ; $5165: $ab
    dec c                                         ; $5166: $0d
    ld a, e                                       ; $5167: $7b
    ld l, a                                       ; $5168: $6f
    ld b, h                                       ; $5169: $44
    ld [$5a92], sp                                ; $516a: $08 $92 $5a
    ld l, e                                       ; $516d: $6b
    ld sp, $739a                                  ; $516e: $31 $9a $73
    ld hl, $9308                                  ; $5171: $21 $08 $93
    ld d, [hl]                                    ; $5174: $56
    ld a, d                                       ; $5175: $7a
    ld [hl], e                                    ; $5176: $73
    jr z, @+$2b                                   ; $5177: $28 $29

    nop                                           ; $5179: $00
    inc e                                         ; $517a: $1c
    xor $3d                                       ; $517b: $ee $3d
    rst $30                                       ; $517d: $f7
    ld e, [hl]                                    ; $517e: $5e
    and l                                         ; $517f: $a5
    inc d                                         ; $5180: $14
    nop                                           ; $5181: $00
    nop                                           ; $5182: $00
    add hl, sp                                    ; $5183: $39
    ld h, a                                       ; $5184: $67
    ld c, c                                       ; $5185: $49
    dec l                                         ; $5186: $2d
    ld h, d                                       ; $5187: $62
    jr jr_0b7_51aa                                ; $5188: $18 $20

    inc b                                         ; $518a: $04
    adc e                                         ; $518b: $8b

jr_0b7_518c:
    dec [hl]                                      ; $518c: $35
    sub $5a                                       ; $518d: $d6 $5a
    jr nc, jr_0b7_51d7                            ; $518f: $30 $46

    ld hl, $5a04                                  ; $5191: $21 $04 $5a
    ld l, e                                       ; $5194: $6b
    and $1c                                       ; $5195: $e6 $1c
    ld l, e                                       ; $5197: $6b
    ld sp, $0001                                  ; $5198: $31 $01 $00
    rrca                                          ; $519b: $0f
    ld b, $7b                                     ; $519c: $06 $7b
    rrca                                          ; $519e: $0f
    rlca                                          ; $519f: $07
    add hl, bc                                    ; $51a0: $09
    ld bc, $2700                                  ; $51a1: $01 $00 $27
    nop                                           ; $51a4: $00
    cpl                                           ; $51a5: $2f
    inc b                                         ; $51a6: $04
    ld a, [hl+]                                   ; $51a7: $2a
    nop                                           ; $51a8: $00
    inc b                                         ; $51a9: $04

jr_0b7_51aa:
    nop                                           ; $51aa: $00
    adc $04                                       ; $51ab: $ce $04
    ld l, b                                       ; $51ad: $68
    nop                                           ; $51ae: $00
    ld [hl], e                                    ; $51af: $73
    ld de, $1c00                                  ; $51b0: $11 $00 $1c
    call z, $d808                                 ; $51b3: $cc $08 $d8
    dec e                                         ; $51b6: $1d
    ld h, [hl]                                    ; $51b7: $66
    inc b                                         ; $51b8: $04
    nop                                           ; $51b9: $00
    jr jr_0b7_51ca                                ; $51ba: $18 $0e

    ld de, $2e5c                                  ; $51bc: $11 $5c $2e
    or l                                          ; $51bf: $b5
    dec e                                         ; $51c0: $1d
    adc h                                         ; $51c1: $8c
    nop                                           ; $51c2: $00
    ld [hl-], a                                   ; $51c3: $32
    dec c                                         ; $51c4: $0d
    or [hl]                                       ; $51c5: $b6
    add hl, de                                    ; $51c6: $19
    rst $08                                       ; $51c7: $cf
    inc b                                         ; $51c8: $04
    inc bc                                        ; $51c9: $03

jr_0b7_51ca:
    nop                                           ; $51ca: $00
    ld l, c                                       ; $51cb: $69
    nop                                           ; $51cc: $00
    ld h, $00                                     ; $51cd: $26 $00
    xor e                                         ; $51cf: $ab
    ld [$0000], sp                                ; $51d0: $08 $00 $00
    ld [$0701], sp                                ; $51d3: $08 $01 $07
    nop                                           ; $51d6: $00

jr_0b7_51d7:
    call Call_000_0001                            ; $51d7: $cd $01 $00
    nop                                           ; $51da: $00
    daa                                           ; $51db: $27
    nop                                           ; $51dc: $00
    cpl                                           ; $51dd: $2f
    inc b                                         ; $51de: $04
    inc b                                         ; $51df: $04
    nop                                           ; $51e0: $00
    ld b, l                                       ; $51e1: $45
    nop                                           ; $51e2: $00
    xor $08                                       ; $51e3: $ee $08
    adc c                                         ; $51e5: $89
    inc b                                         ; $51e6: $04
    ld d, e                                       ; $51e7: $53
    ld de, $0401                                  ; $51e8: $11 $01 $04
    rrc h                                         ; $51eb: $cb $0c
    ret c                                         ; $51ed: $d8

    dec e                                         ; $51ee: $1d
    nop                                           ; $51ef: $00
    jr nz, jr_0b7_51f2                            ; $51f0: $20 $00

jr_0b7_51f2:
    jr nz, @+$53                                  ; $51f2: $20 $51

    add hl, de                                    ; $51f4: $19
    add a                                         ; $51f5: $87
    inc c                                         ; $51f6: $0c
    or $25                                        ; $51f7: $f6 $25
    nop                                           ; $51f9: $00
    nop                                           ; $51fa: $00
    rst $38                                       ; $51fb: $ff
    ld a, a                                       ; $51fc: $7f
    call z, RST_08                                ; $51fd: $cc $08 $00
    jr nz, jr_0b7_5202                            ; $5200: $20 $00

jr_0b7_5202:
    nop                                           ; $5202: $00
    inc b                                         ; $5203: $04

Call_0b7_5204:
    nop                                           ; $5204: $00
    ld b, [hl]                                    ; $5205: $46
    inc b                                         ; $5206: $04
    ld l, b                                       ; $5207: $68
    inc b                                         ; $5208: $04
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    rst $38                                       ; $520b: $ff
    ld a, a                                       ; $520c: $7f
    ret c                                         ; $520d: $d8

    dec e                                         ; $520e: $1d
    nop                                           ; $520f: $00

jr_0b7_5210:
    jr nz, jr_0b7_5212                            ; $5210: $20 $00

jr_0b7_5212:
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    ld a, a                                       ; $5214: $7f
    ret c                                         ; $5215: $d8

    dec e                                         ; $5216: $1d
    nop                                           ; $5217: $00

jr_0b7_5218:
    jr nz, jr_0b7_521a                            ; $5218: $20 $00

jr_0b7_521a:
    nop                                           ; $521a: $00
    rst $38                                       ; $521b: $ff
    ld a, a                                       ; $521c: $7f
    nop                                           ; $521d: $00
    jr nz, jr_0b7_5220                            ; $521e: $20 $00

jr_0b7_5220:
    jr nz, jr_0b7_5222                            ; $5220: $20 $00

jr_0b7_5222:
    jr nz, @+$01                                  ; $5222: $20 $ff

    ld a, a                                       ; $5224: $7f
    nop                                           ; $5225: $00
    jr nz, jr_0b7_5228                            ; $5226: $20 $00

jr_0b7_5228:
    jr nz, jr_0b7_522a                            ; $5228: $20 $00

jr_0b7_522a:
    jr nz, jr_0b7_5230                            ; $522a: $20 $04

    nop                                           ; $522c: $00
    ld b, [hl]                                    ; $522d: $46
    inc b                                         ; $522e: $04
    ld l, b                                       ; $522f: $68

jr_0b7_5230:
    inc b                                         ; $5230: $04
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    ld a, a                                       ; $5234: $7f
    nop                                           ; $5235: $00
    jr nz, jr_0b7_52a0                            ; $5236: $20 $68

    inc b                                         ; $5238: $04
    nop                                           ; $5239: $00
    nop                                           ; $523a: $00
    rst $38                                       ; $523b: $ff
    ld a, a                                       ; $523c: $7f
    nop                                           ; $523d: $00
    jr nz, jr_0b7_52a8                            ; $523e: $20 $68

    inc b                                         ; $5240: $04
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    jr nz, jr_0b7_5246                            ; $5244: $20 $00

jr_0b7_5246:
    jr nz, jr_0b7_5248                            ; $5246: $20 $00

jr_0b7_5248:
    jr nz, jr_0b7_524a                            ; $5248: $20 $00

jr_0b7_524a:
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    jr nz, jr_0b7_524e                            ; $524c: $20 $00

jr_0b7_524e:
    jr nz, jr_0b7_5250                            ; $524e: $20 $00

jr_0b7_5250:
    jr nz, jr_0b7_5252                            ; $5250: $20 $00

jr_0b7_5252:
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    jr nz, jr_0b7_5256                            ; $5254: $20 $00

jr_0b7_5256:
    jr nz, jr_0b7_5258                            ; $5256: $20 $00

jr_0b7_5258:
    jr nz, jr_0b7_525a                            ; $5258: $20 $00

jr_0b7_525a:
    jr nz, jr_0b7_525c                            ; $525a: $20 $00

jr_0b7_525c:
    jr nz, jr_0b7_525e                            ; $525c: $20 $00

jr_0b7_525e:
    jr nz, jr_0b7_5260                            ; $525e: $20 $00

jr_0b7_5260:
    jr nz, jr_0b7_5262                            ; $5260: $20 $00

jr_0b7_5262:
    jr nz, jr_0b7_5264                            ; $5262: $20 $00

jr_0b7_5264:
    jr nz, jr_0b7_527e                            ; $5264: $20 $18

    ld [hl], a                                    ; $5266: $77
    ld c, b                                       ; $5267: $48
    ld b, l                                       ; $5268: $45
    nop                                           ; $5269: $00
    jr nz, jr_0b7_526c                            ; $526a: $20 $00

jr_0b7_526c:
    jr nz, jr_0b7_5286                            ; $526c: $20 $18

    ld [hl], a                                    ; $526e: $77
    ld c, b                                       ; $526f: $48
    ld b, l                                       ; $5270: $45
    nop                                           ; $5271: $00
    jr nz, jr_0b7_5274                            ; $5272: $20 $00

jr_0b7_5274:
    jr nz, jr_0b7_528e                            ; $5274: $20 $18

    ld [hl], a                                    ; $5276: $77
    ld c, b                                       ; $5277: $48
    ld b, l                                       ; $5278: $45
    nop                                           ; $5279: $00
    jr nz, jr_0b7_5210                            ; $527a: $20 $94

    ld [hl], d                                    ; $527c: $72
    sbc h                                         ; $527d: $9c

jr_0b7_527e:
    ld a, e                                       ; $527e: $7b
    cp l                                          ; $527f: $bd
    ld a, e                                       ; $5280: $7b
    nop                                           ; $5281: $00
    jr nz, jr_0b7_5218                            ; $5282: $20 $94

    ld [hl], d                                    ; $5284: $72
    sbc h                                         ; $5285: $9c

jr_0b7_5286:
    ld a, e                                       ; $5286: $7b
    cp l                                          ; $5287: $bd
    ld a, e                                       ; $5288: $7b
    nop                                           ; $5289: $00
    jr nz, jr_0b7_5220                            ; $528a: $20 $94

    ld [hl], d                                    ; $528c: $72
    sbc h                                         ; $528d: $9c

jr_0b7_528e:
    ld a, e                                       ; $528e: $7b
    cp l                                          ; $528f: $bd
    ld a, e                                       ; $5290: $7b
    nop                                           ; $5291: $00
    jr nz, jr_0b7_5228                            ; $5292: $20 $94

    ld [hl], d                                    ; $5294: $72
    sbc h                                         ; $5295: $9c
    ld a, e                                       ; $5296: $7b
    cp l                                          ; $5297: $bd
    ld a, e                                       ; $5298: $7b
    nop                                           ; $5299: $00
    jr nz, jr_0b7_529c                            ; $529a: $20 $00

jr_0b7_529c:
    jr nz, jr_0b7_52b6                            ; $529c: $20 $18

    ld [hl], a                                    ; $529e: $77
    ld c, b                                       ; $529f: $48

jr_0b7_52a0:
    ld b, l                                       ; $52a0: $45
    nop                                           ; $52a1: $00
    jr nz, jr_0b7_52a4                            ; $52a2: $20 $00

jr_0b7_52a4:
    jr nz, @+$1a                                  ; $52a4: $20 $18

    ld [hl], a                                    ; $52a6: $77
    ld c, b                                       ; $52a7: $48

jr_0b7_52a8:
    ld b, l                                       ; $52a8: $45
    nop                                           ; $52a9: $00
    jr nz, jr_0b7_52ac                            ; $52aa: $20 $00

jr_0b7_52ac:
    jr nz, @+$1a                                  ; $52ac: $20 $18

    ld [hl], a                                    ; $52ae: $77
    ld c, b                                       ; $52af: $48
    ld b, l                                       ; $52b0: $45
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    ld l, c                                       ; $52b3: $69
    ld c, l                                       ; $52b4: $4d
    sub h                                         ; $52b5: $94

jr_0b7_52b6:
    ld [hl], d                                    ; $52b6: $72
    xor h                                         ; $52b7: $ac
    ld d, l                                       ; $52b8: $55
    nop                                           ; $52b9: $00
    jr nz, jr_0b7_52c2                            ; $52ba: $20 $06

    dec a                                         ; $52bc: $3d
    call $ac59                                    ; $52bd: $cd $59 $ac
    ld d, l                                       ; $52c0: $55
    nop                                           ; $52c1: $00

jr_0b7_52c2:
    jr nz, jr_0b7_52ca                            ; $52c2: $20 $06

    dec a                                         ; $52c4: $3d
    call $ac59                                    ; $52c5: $cd $59 $ac
    ld d, l                                       ; $52c8: $55

jr_0b7_52c9:
    nop                                           ; $52c9: $00

jr_0b7_52ca:
    jr nz, jr_0b7_52d2                            ; $52ca: $20 $06

    dec a                                         ; $52cc: $3d
    call $ac59                                    ; $52cd: $cd $59 $ac
    ld d, l                                       ; $52d0: $55
    nop                                           ; $52d1: $00

jr_0b7_52d2:
    jr nz, jr_0b7_52d4                            ; $52d2: $20 $00

jr_0b7_52d4:
    jr nz, @+$1a                                  ; $52d4: $20 $18

    ld [hl], a                                    ; $52d6: $77
    ld c, b                                       ; $52d7: $48
    ld b, l                                       ; $52d8: $45
    nop                                           ; $52d9: $00
    jr nz, jr_0b7_52dc                            ; $52da: $20 $00

jr_0b7_52dc:
    jr nz, jr_0b7_52f6                            ; $52dc: $20 $18

    ld [hl], a                                    ; $52de: $77
    ld c, b                                       ; $52df: $48
    ld b, l                                       ; $52e0: $45
    nop                                           ; $52e1: $00
    jr nz, jr_0b7_52c9                            ; $52e2: $20 $e5

    inc a                                         ; $52e4: $3c
    rst $28                                       ; $52e5: $ef
    ld h, c                                       ; $52e6: $61
    dec b                                         ; $52e7: $05
    dec a                                         ; $52e8: $3d
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    push hl                                       ; $52eb: $e5
    scf                                           ; $52ec: $37
    ld b, $3d                                     ; $52ed: $06 $3d

jr_0b7_52ef:
    daa                                           ; $52ef: $27
    ld b, c                                       ; $52f0: $41

jr_0b7_52f1:
    ld bc, $ed1c                                  ; $52f1: $01 $1c $ed
    ld c, l                                       ; $52f4: $4d
    db $fd                                        ; $52f5: $fd

jr_0b7_52f6:
    inc bc                                        ; $52f6: $03

jr_0b7_52f7:
    dec b                                         ; $52f7: $05
    dec a                                         ; $52f8: $3d

jr_0b7_52f9:
    nop                                           ; $52f9: $00
    jr nz, @+$81                                  ; $52fa: $20 $7f

    ld h, [hl]                                    ; $52fc: $66
    add hl, bc                                    ; $52fd: $09
    inc d                                         ; $52fe: $14
    rst $38                                       ; $52ff: $ff
    ld l, [hl]                                    ; $5300: $6e
    nop                                           ; $5301: $00
    jr nz, @+$81                                  ; $5302: $20 $7f

    ld h, [hl]                                    ; $5304: $66
    add hl, bc                                    ; $5305: $09
    inc d                                         ; $5306: $14
    rst $38                                       ; $5307: $ff
    ld l, [hl]                                    ; $5308: $6e

jr_0b7_5309:
    nop                                           ; $5309: $00
    jr nz, jr_0b7_52f1                            ; $530a: $20 $e5

    inc a                                         ; $530c: $3c

jr_0b7_530d:
    rst $28                                       ; $530d: $ef
    ld h, c                                       ; $530e: $61
    dec b                                         ; $530f: $05
    dec a                                         ; $5310: $3d
    nop                                           ; $5311: $00
    jr nz, jr_0b7_52f9                            ; $5312: $20 $e5

    inc a                                         ; $5314: $3c
    rst $28                                       ; $5315: $ef
    ld h, c                                       ; $5316: $61

jr_0b7_5317:
    dec b                                         ; $5317: $05
    dec a                                         ; $5318: $3d
    nop                                           ; $5319: $00
    nop                                           ; $531a: $00
    ld l, d                                       ; $531b: $6a
    ld b, l                                       ; $531c: $45
    jr nc, jr_0b7_5375                            ; $531d: $30 $56

    nop                                           ; $531f: $00
    jr nz, jr_0b7_5325                            ; $5320: $20 $03

    jr nz, jr_0b7_5309                            ; $5322: $20 $e5

    inc sp                                        ; $5324: $33

jr_0b7_5325:
    ld h, a                                       ; $5325: $67
    ld d, h                                       ; $5326: $54
    add hl, bc                                    ; $5327: $09
    inc d                                         ; $5328: $14

jr_0b7_5329:
    inc b                                         ; $5329: $04
    jr nz, jr_0b7_5329                            ; $532a: $20 $fd

    inc bc                                        ; $532c: $03
    xor d                                         ; $532d: $aa
    ld a, h                                       ; $532e: $7c
    scf                                           ; $532f: $37
    nop                                           ; $5330: $00
    dec b                                         ; $5331: $05
    jr jr_0b7_52ef                                ; $5332: $18 $bb

    inc a                                         ; $5334: $3c
    ccf                                           ; $5335: $3f
    ld h, d                                       ; $5336: $62
    scf                                           ; $5337: $37
    nop                                           ; $5338: $00
    nop                                           ; $5339: $00
    jr nz, jr_0b7_52f7                            ; $533a: $20 $bb

    inc a                                         ; $533c: $3c
    ccf                                           ; $533d: $3f
    ld h, d                                       ; $533e: $62
    scf                                           ; $533f: $37
    nop                                           ; $5340: $00
    nop                                           ; $5341: $00
    jr nz, jr_0b7_53ae                            ; $5342: $20 $6a

    ld b, l                                       ; $5344: $45
    jr nc, jr_0b7_539d                            ; $5345: $30 $56

    nop                                           ; $5347: $00
    jr nz, jr_0b7_534a                            ; $5348: $20 $00

jr_0b7_534a:
    jr nz, jr_0b7_53b6                            ; $534a: $20 $6a

    ld b, l                                       ; $534c: $45
    jr nc, jr_0b7_53a5                            ; $534d: $30 $56

    nop                                           ; $534f: $00
    jr nz, jr_0b7_5359                            ; $5350: $20 $07

    inc d                                         ; $5352: $14
    ld d, b                                       ; $5353: $50
    ld e, d                                       ; $5354: $5a
    sbc a                                         ; $5355: $9f
    ld l, d                                       ; $5356: $6a
    sbc c                                         ; $5357: $99
    ld c, l                                       ; $5358: $4d

jr_0b7_5359:
    add hl, bc                                    ; $5359: $09
    inc d                                         ; $535a: $14
    ld d, a                                       ; $535b: $57
    ld b, l                                       ; $535c: $45
    sbc $5d                                       ; $535d: $de $5d
    ld a, a                                       ; $535f: $7f
    ld l, d                                       ; $5360: $6a
    ld a, [bc]                                    ; $5361: $0a
    db $10                                        ; $5362: $10
    db $fd                                        ; $5363: $fd
    inc bc                                        ; $5364: $03
    xor $68                                       ; $5365: $ee $68

jr_0b7_5367:
    scf                                           ; $5367: $37
    nop                                           ; $5368: $00
    nop                                           ; $5369: $00
    db $10                                        ; $536a: $10
    sbc c                                         ; $536b: $99
    inc [hl]                                      ; $536c: $34
    add hl, hl                                    ; $536d: $29
    inc l                                         ; $536e: $2c
    ld a, l                                       ; $536f: $7d
    ld d, c                                       ; $5370: $51
    nop                                           ; $5371: $00
    jr nz, jr_0b7_530d                            ; $5372: $20 $99

    inc [hl]                                      ; $5374: $34

jr_0b7_5375:
    add hl, hl                                    ; $5375: $29
    inc l                                         ; $5376: $2c
    ld a, l                                       ; $5377: $7d
    ld d, c                                       ; $5378: $51
    nop                                           ; $5379: $00
    jr nz, jr_0b7_53cc                            ; $537a: $20 $50

    ld e, d                                       ; $537c: $5a
    sbc a                                         ; $537d: $9f
    ld l, d                                       ; $537e: $6a
    sbc c                                         ; $537f: $99
    ld c, l                                       ; $5380: $4d
    nop                                           ; $5381: $00
    jr nz, jr_0b7_5317                            ; $5382: $20 $93

    ld e, [hl]                                    ; $5384: $5e
    add hl, bc                                    ; $5385: $09
    inc d                                         ; $5386: $14
    db $dd                                        ; $5387: $dd
    ld l, d                                       ; $5388: $6a
    add hl, bc                                    ; $5389: $09
    inc d                                         ; $538a: $14
    rst $38                                       ; $538b: $ff
    ld e, l                                       ; $538c: $5d
    db $fc                                        ; $538d: $fc
    ld b, b                                       ; $538e: $40
    sbc a                                         ; $538f: $9f
    ld l, d                                       ; $5390: $6a
    cp e                                          ; $5391: $bb
    inc a                                         ; $5392: $3c

jr_0b7_5393:
    ld e, l                                       ; $5393: $5d
    ld c, l                                       ; $5394: $4d
    cp [hl]                                       ; $5395: $be
    ld e, c                                       ; $5396: $59
    db $fc                                        ; $5397: $fc
    ld b, b                                       ; $5398: $40
    add hl, bc                                    ; $5399: $09
    inc d                                         ; $539a: $14
    ld a, h                                       ; $539b: $7c
    ld c, l                                       ; $539c: $4d

jr_0b7_539d:
    xor d                                         ; $539d: $aa
    ld [hl], h                                    ; $539e: $74
    ld e, a                                       ; $539f: $5f
    ld h, [hl]                                    ; $53a0: $66
    ld bc, $6910                                  ; $53a1: $01 $10 $69
    ld h, b                                       ; $53a4: $60

jr_0b7_53a5:
    cp e                                          ; $53a5: $bb
    inc a                                         ; $53a6: $3c
    inc l                                         ; $53a7: $2c
    jr jr_0b7_53aa                                ; $53a8: $18 $00

jr_0b7_53aa:
    jr nz, jr_0b7_5415                            ; $53aa: $20 $69

    ld h, b                                       ; $53ac: $60
    cp e                                          ; $53ad: $bb

jr_0b7_53ae:
    inc a                                         ; $53ae: $3c
    inc l                                         ; $53af: $2c
    jr jr_0b7_53b2                                ; $53b0: $18 $00

jr_0b7_53b2:
    jr nz, @+$01                                  ; $53b2: $20 $ff

    ld e, l                                       ; $53b4: $5d
    db $fc                                        ; $53b5: $fc

jr_0b7_53b6:
    ld b, b                                       ; $53b6: $40

jr_0b7_53b7:
    sbc a                                         ; $53b7: $9f
    ld l, d                                       ; $53b8: $6a
    nop                                           ; $53b9: $00
    jr nz, jr_0b7_540d                            ; $53ba: $20 $51

    ld e, d                                       ; $53bc: $5a
    ld e, $5e                                     ; $53bd: $1e $5e
    add hl, bc                                    ; $53bf: $09
    inc d                                         ; $53c0: $14
    cp e                                          ; $53c1: $bb
    jr c, jr_0b7_5421                             ; $53c2: $38 $5d

    ld c, l                                       ; $53c4: $4d
    ccf                                           ; $53c5: $3f
    ld h, d                                       ; $53c6: $62
    inc e                                         ; $53c7: $1c
    ld b, l                                       ; $53c8: $45
    dec hl                                        ; $53c9: $2b
    db $10                                        ; $53ca: $10
    ld [hl], e                                    ; $53cb: $73

jr_0b7_53cc:
    jr z, jr_0b7_5367                             ; $53cc: $28 $99

    inc [hl]                                      ; $53ce: $34
    halt                                          ; $53cf: $76
    jr nc, jr_0b7_53dc                            ; $53d0: $30 $0a

    db $10                                        ; $53d2: $10
    db $db                                        ; $53d3: $db
    inc a                                         ; $53d4: $3c
    rst $38                                       ; $53d5: $ff
    ld e, l                                       ; $53d6: $5d
    halt                                          ; $53d7: $76
    jr nc, jr_0b7_53da                            ; $53d8: $30 $00

jr_0b7_53da:
    nop                                           ; $53da: $00
    ld l, c                                       ; $53db: $69

jr_0b7_53dc:
    ld h, h                                       ; $53dc: $64
    sbc d                                         ; $53dd: $9a
    ld d, c                                       ; $53de: $51
    dec b                                         ; $53df: $05
    inc e                                         ; $53e0: $1c
    nop                                           ; $53e1: $00
    jr nz, jr_0b7_544d                            ; $53e2: $20 $69

    ld h, h                                       ; $53e4: $64
    sbc d                                         ; $53e5: $9a
    ld d, c                                       ; $53e6: $51
    dec b                                         ; $53e7: $05
    inc e                                         ; $53e8: $1c
    nop                                           ; $53e9: $00
    jr nz, jr_0b7_5434                            ; $53ea: $20 $48

    ld b, l                                       ; $53ec: $45
    ccf                                           ; $53ed: $3f
    ld h, d                                       ; $53ee: $62
    inc e                                         ; $53ef: $1c
    ld b, l                                       ; $53f0: $45
    ld h, $18                                     ; $53f1: $26 $18
    rrca                                          ; $53f3: $0f
    ld d, [hl]                                    ; $53f4: $56
    sbc b                                         ; $53f5: $98
    jr nc, jr_0b7_5451                            ; $53f6: $30 $59

    ld [hl], e                                    ; $53f8: $73
    ld d, e                                       ; $53f9: $53
    jr z, jr_0b7_5393                             ; $53fa: $28 $97

    jr nc, jr_0b7_53b7                            ; $53fc: $30 $b9

    jr c, @+$76                                   ; $53fe: $38 $74

    inc l                                         ; $5400: $2c
    nop                                           ; $5401: $00
    nop                                           ; $5402: $00
    call c, Call_000_3001                         ; $5403: $dc $01 $30
    inc c                                         ; $5406: $0c
    sbc $3a                                       ; $5407: $de $3a

jr_0b7_5409:
    ld b, $0c                                     ; $5409: $06 $0c
    sub h                                         ; $540b: $94
    inc b                                         ; $540c: $04

jr_0b7_540d:
    ld e, [hl]                                    ; $540d: $5e
    ld d, $bb                                     ; $540e: $16 $bb
    inc a                                         ; $5410: $3c
    dec b                                         ; $5411: $05
    inc e                                         ; $5412: $1c
    db $fc                                        ; $5413: $fc
    ld b, b                                       ; $5414: $40

jr_0b7_5415:
    ld b, a                                       ; $5415: $47
    ld d, b                                       ; $5416: $50
    cp l                                          ; $5417: $bd
    ld e, c                                       ; $5418: $59
    nop                                           ; $5419: $00
    nop                                           ; $541a: $00
    nop                                           ; $541b: $00
    jr nz, jr_0b7_5465                            ; $541c: $20 $47

    ld d, b                                       ; $541e: $50
    cp l                                          ; $541f: $bd
    ld e, c                                       ; $5420: $59

jr_0b7_5421:
    nop                                           ; $5421: $00
    jr nz, jr_0b7_5409                            ; $5422: $20 $e5

    inc a                                         ; $5424: $3c
    adc e                                         ; $5425: $8b
    ld c, c                                       ; $5426: $49
    daa                                           ; $5427: $27
    ld b, c                                       ; $5428: $41
    ld b, $0c                                     ; $5429: $06 $0c
    db $eb                                        ; $542b: $eb
    inc sp                                        ; $542c: $33
    ld d, c                                       ; $542d: $51
    ld e, d                                       ; $542e: $5a
    sbc h                                         ; $542f: $9c
    ld [hl], a                                    ; $5430: $77
    ld c, l                                       ; $5431: $4d
    inc e                                         ; $5432: $1c
    ld d, c                                       ; $5433: $51

jr_0b7_5434:
    inc h                                         ; $5434: $24
    ld c, a                                       ; $5435: $4f
    jr nz, jr_0b7_548a                            ; $5436: $20 $52

    inc h                                         ; $5438: $24
    rlca                                          ; $5439: $07
    inc b                                         ; $543a: $04
    ld e, $47                                     ; $543b: $1e $47
    jr nc, jr_0b7_545f                            ; $543d: $30 $20

    ld [hl], $00                                  ; $543f: $36 $00
    dec b                                         ; $5441: $05
    ld [$021e], sp                                ; $5442: $08 $1e $02
    sub e                                         ; $5445: $93
    ld [$265a], sp                                ; $5446: $08 $5a $26
    rlca                                          ; $5449: $07
    db $10                                        ; $544a: $10
    db $db                                        ; $544b: $db
    inc a                                         ; $544c: $3c

jr_0b7_544d:
    ld a, $62                                     ; $544d: $3e $62
    dec b                                         ; $544f: $05
    inc a                                         ; $5450: $3c

jr_0b7_5451:
    nop                                           ; $5451: $00
    nop                                           ; $5452: $00
    daa                                           ; $5453: $27
    ld b, l                                       ; $5454: $45
    sub e                                         ; $5455: $93
    ld h, d                                       ; $5456: $62
    nop                                           ; $5457: $00
    jr nz, @+$22                                  ; $5458: $20 $20

    inc e                                         ; $545a: $1c
    ld d, c                                       ; $545b: $51
    ld h, [hl]                                    ; $545c: $66
    ld c, b                                       ; $545d: $48
    dec [hl]                                      ; $545e: $35

jr_0b7_545f:
    rst $30                                       ; $545f: $f7
    ld l, [hl]                                    ; $5460: $6e
    nop                                           ; $5461: $00
    nop                                           ; $5462: $00
    db $ec                                        ; $5463: $ec
    inc sp                                        ; $5464: $33

jr_0b7_5465:
    adc d                                         ; $5465: $8a
    ld sp, $1409                                  ; $5466: $31 $09 $14
    add hl, bc                                    ; $5469: $09
    inc d                                         ; $546a: $14
    inc l                                         ; $546b: $2c
    jr @+$30                                      ; $546c: $18 $2e

    jr nz, jr_0b7_549b                            ; $546e: $20 $2b

    jr @+$08                                      ; $5470: $18 $06

    ld [$7f99], sp                                ; $5472: $08 $99 $7f
    or e                                          ; $5475: $b3
    ld [$431f], sp                                ; $5476: $08 $1f $43
    ld [$3f04], sp                                ; $5479: $08 $04 $3f
    ld [bc], a                                    ; $547c: $02
    scf                                           ; $547d: $37
    nop                                           ; $547e: $00
    cp h                                          ; $547f: $bc
    ld [hl], $05                                  ; $5480: $36 $05
    ld [$3cdc], sp                                ; $5482: $08 $dc $3c
    dec a                                         ; $5485: $3d
    ld e, [hl]                                    ; $5486: $5e
    ld c, a                                       ; $5487: $4f
    dec d                                         ; $5488: $15
    ld [bc], a                                    ; $5489: $02

jr_0b7_548a:
    inc b                                         ; $548a: $04
    ld c, b                                       ; $548b: $48
    ld b, l                                       ; $548c: $45
    db $10                                        ; $548d: $10
    ld h, [hl]                                    ; $548e: $66
    nop                                           ; $548f: $00
    jr nz, @+$64                                  ; $5490: $20 $62

    db $10                                        ; $5492: $10
    rst $28                                       ; $5493: $ef
    inc sp                                        ; $5494: $33
    ld a, e                                       ; $5495: $7b
    ld [hl], a                                    ; $5496: $77
    ld sp, $4a5e                                  ; $5497: $31 $5e $4a
    dec h                                         ; $549a: $25

jr_0b7_549b:
    sbc $7b                                       ; $549b: $de $7b
    xor $33                                       ; $549d: $ee $33
    ld sp, $0846                                  ; $549f: $31 $46 $08
    db $10                                        ; $54a2: $10
    xor $33                                       ; $54a3: $ee $33
    ret                                           ; $54a5: $c9


    inc c                                         ; $54a6: $0c
    ld c, a                                       ; $54a7: $4f
    dec d                                         ; $54a8: $15
    ld h, l                                       ; $54a9: $65
    inc b                                         ; $54aa: $04
    ld a, l                                       ; $54ab: $7d
    ld h, e                                       ; $54ac: $63
    ld b, d                                       ; $54ad: $42
    dec de                                        ; $54ae: $1b
    scf                                           ; $54af: $37
    nop                                           ; $54b0: $00
    ld b, b                                       ; $54b1: $40
    rla                                           ; $54b2: $17
    rra                                           ; $54b3: $1f
    ld b, e                                       ; $54b4: $43
    ld a, [hl+]                                   ; $54b5: $2a
    ld [$7f9a], sp                                ; $54b6: $08 $9a $7f
    nop                                           ; $54b9: $00
    nop                                           ; $54ba: $00
    inc e                                         ; $54bb: $1c
    ld b, l                                       ; $54bc: $45
    sbc l                                         ; $54bd: $9d
    ld a, [hl+]                                   ; $54be: $2a
    dec l                                         ; $54bf: $2d
    ld [$0805], sp                                ; $54c0: $08 $05 $08
    push af                                       ; $54c3: $f5
    ld e, l                                       ; $54c4: $5d
    sbc h                                         ; $54c5: $9c
    ld a, e                                       ; $54c6: $7b
    nop                                           ; $54c7: $00
    jr nz, jr_0b7_550b                            ; $54c8: $20 $41

    ld [$33ef], sp                                ; $54ca: $08 $ef $33
    sub h                                         ; $54cd: $94
    ld l, [hl]                                    ; $54ce: $6e
    cp l                                          ; $54cf: $bd
    ld a, e                                       ; $54d0: $7b
    rst $00                                       ; $54d1: $c7
    db $10                                        ; $54d2: $10
    inc a                                         ; $54d3: $3c
    ccf                                           ; $54d4: $3f
    cp l                                          ; $54d5: $bd
    ld [hl], a                                    ; $54d6: $77
    adc a                                         ; $54d7: $8f
    ld hl, $0403                                  ; $54d8: $21 $03 $04
    ld e, a                                       ; $54db: $5f
    ld b, a                                       ; $54dc: $47
    rst $00                                       ; $54dd: $c7
    inc c                                         ; $54de: $0c
    ld c, a                                       ; $54df: $4f
    dec d                                         ; $54e0: $15
    ld h, c                                       ; $54e1: $61
    nop                                           ; $54e2: $00
    ld [hl], b                                    ; $54e3: $70
    add hl, de                                    ; $54e4: $19
    sbc d                                         ; $54e5: $9a
    ld [hl], $b9                                  ; $54e6: $36 $b9
    nop                                           ; $54e8: $00
    ld [bc], a                                    ; $54e9: $02
    ld bc, $7b77                                  ; $54ea: $01 $77 $7b
    ld b, b                                       ; $54ed: $40
    rla                                           ; $54ee: $17
    rra                                           ; $54ef: $1f
    ld b, e                                       ; $54f0: $43
    ld l, b                                       ; $54f1: $68
    ld [$21dc], sp                                ; $54f2: $08 $dc $21
    rst $38                                       ; $54f5: $ff
    ld b, d                                       ; $54f6: $42
    scf                                           ; $54f7: $37
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    inc e                                         ; $54fa: $1c
    ld a, [de]                                    ; $54fb: $1a
    ld b, c                                       ; $54fc: $41
    sub h                                         ; $54fd: $94
    ld l, [hl]                                    ; $54fe: $6e
    ld b, $41                                     ; $54ff: $06 $41
    nop                                           ; $5501: $00
    ld [$6610], sp                                ; $5502: $08 $10 $66
    ldh a, [$33]                                  ; $5505: $f0 $33
    jr jr_0b7_5580                                ; $5507: $18 $77

    and l                                         ; $5509: $a5
    inc d                                         ; $550a: $14

jr_0b7_550b:
    or [hl]                                       ; $550b: $b6
    ld c, [hl]                                    ; $550c: $4e
    pop af                                        ; $550d: $f1
    inc sp                                        ; $550e: $33
    adc d                                         ; $550f: $8a
    ld sp, $10e9                                  ; $5510: $31 $e9 $10
    push af                                       ; $5513: $f5
    ld h, d                                       ; $5514: $62
    rst $38                                       ; $5515: $ff
    ld a, a                                       ; $5516: $7f
    ld a, $43                                     ; $5517: $3e $43
    ld [$3a0c], a                                 ; $5519: $ea $0c $3a
    ld [hl+], a                                   ; $551c: $22
    rra                                           ; $551d: $1f
    ld b, e                                       ; $551e: $43
    scf                                           ; $551f: $37
    nop                                           ; $5520: $00
    ld c, a                                       ; $5521: $4f
    dec d                                         ; $5522: $15
    scf                                           ; $5523: $37
    ld l, $1f                                     ; $5524: $2e $1f
    ld b, e                                       ; $5526: $43
    ld e, b                                       ; $5527: $58
    ld [hl-], a                                   ; $5528: $32
    adc e                                         ; $5529: $8b
    ld [$163b], sp                                ; $552a: $08 $3b $16
    sub a                                         ; $552d: $97
    nop                                           ; $552e: $00
    sbc $3e                                       ; $552f: $de $3e
    nop                                           ; $5531: $00
    inc e                                         ; $5532: $1c
    ld d, c                                       ; $5533: $51
    inc h                                         ; $5534: $24
    sub a                                         ; $5535: $97
    ld d, l                                       ; $5536: $55
    or a                                          ; $5537: $b7
    jr c, jr_0b7_553a                             ; $5538: $38 $00

jr_0b7_553a:
    db $10                                        ; $553a: $10
    ld d, c                                       ; $553b: $51
    ld h, [hl]                                    ; $553c: $66
    ld a, [c]                                     ; $553d: $f2
    cpl                                           ; $553e: $2f
    ld b, $3d                                     ; $553f: $06 $3d
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    dec d                                         ; $5543: $15
    ld a, [hl+]                                   ; $5544: $2a
    ld a, [c]                                     ; $5545: $f2
    cpl                                           ; $5546: $2f
    ret z                                         ; $5547: $c8

    db $10                                        ; $5548: $10
    add h                                         ; $5549: $84
    db $10                                        ; $554a: $10
    call nc, $d05e                                ; $554b: $d4 $5e $d0
    inc l                                         ; $554e: $2c
    ld a, $47                                     ; $554f: $3e $47
    adc e                                         ; $5551: $8b
    ld [$6f9c], sp                                ; $5552: $08 $9c $6f
    rra                                           ; $5555: $1f
    nop                                           ; $5556: $00
    ld e, a                                       ; $5557: $5f
    ld a, [bc]                                    ; $5558: $0a
    dec e                                         ; $5559: $1d
    nop                                           ; $555a: $00
    ld d, [hl]                                    ; $555b: $56
    ld a, a                                       ; $555c: $7f
    ld e, c                                       ; $555d: $59
    ld hl, $431f                                  ; $555e: $21 $1f $43
    ld l, d                                       ; $5561: $6a
    ld [$1e3b], sp                                ; $5562: $08 $3b $1e
    scf                                           ; $5565: $37
    nop                                           ; $5566: $00
    cp a                                          ; $5567: $bf
    ld a, [hl-]                                   ; $5568: $3a
    nop                                           ; $5569: $00
    jr nz, jr_0b7_5575                            ; $556a: $20 $09

    inc d                                         ; $556c: $14
    ld l, $1c                                     ; $556d: $2e $1c
    db $10                                        ; $556f: $10
    inc h                                         ; $5570: $24
    nop                                           ; $5571: $00
    inc d                                         ; $5572: $14
    ld d, c                                       ; $5573: $51
    ld e, d                                       ; $5574: $5a

jr_0b7_5575:
    ld c, b                                       ; $5575: $48
    ld b, l                                       ; $5576: $45
    di                                            ; $5577: $f3
    cpl                                           ; $5578: $2f
    ret                                           ; $5579: $c9


    inc c                                         ; $557a: $0c
    di                                            ; $557b: $f3
    cpl                                           ; $557c: $2f
    cp $3e                                        ; $557d: $fe $3e
    db $f4                                        ; $557f: $f4

jr_0b7_5580:
    dec h                                         ; $5580: $25
    and a                                         ; $5581: $a7
    db $10                                        ; $5582: $10
    or e                                          ; $5583: $b3
    dec e                                         ; $5584: $1d
    ld a, $47                                     ; $5585: $3e $47
    cp d                                          ; $5587: $ba
    jr c, jr_0b7_55d4                             ; $5588: $38 $4a

    ld [$2edf], sp                                ; $558a: $08 $df $2e
    cp h                                          ; $558d: $bc
    nop                                           ; $558e: $00
    ld d, [hl]                                    ; $558f: $56
    ld a, e                                       ; $5590: $7b
    or h                                          ; $5591: $b4
    dec e                                         ; $5592: $1d
    cp $3e                                        ; $5593: $fe $3e
    ld a, c                                       ; $5595: $79
    ld a, e                                       ; $5596: $7b
    rra                                           ; $5597: $1f
    nop                                           ; $5598: $00
    ld a, [bc]                                    ; $5599: $0a
    inc c                                         ; $559a: $0c
    ld a, $16                                     ; $559b: $3e $16
    scf                                           ; $559d: $37
    nop                                           ; $559e: $00
    rrca                                          ; $559f: $0f
    jr nz, jr_0b7_55a2                            ; $55a0: $20 $00

jr_0b7_55a2:
    nop                                           ; $55a2: $00
    rrca                                          ; $55a3: $0f
    ld e, d                                       ; $55a4: $5a
    add hl, bc                                    ; $55a5: $09
    inc d                                         ; $55a6: $14
    nop                                           ; $55a7: $00
    jr nz, jr_0b7_55aa                            ; $55a8: $20 $00

jr_0b7_55aa:
    inc d                                         ; $55aa: $14
    ld d, c                                       ; $55ab: $51
    ld e, d                                       ; $55ac: $5a
    ld c, b                                       ; $55ad: $48
    ld b, l                                       ; $55ae: $45
    db $f4                                        ; $55af: $f4
    cpl                                           ; $55b0: $2f
    dec bc                                        ; $55b1: $0b
    ld de, $2a37                                  ; $55b2: $11 $37 $2a
    db $f4                                        ; $55b5: $f4
    cpl                                           ; $55b6: $2f
    rra                                           ; $55b7: $1f
    ld b, e                                       ; $55b8: $43
    adc c                                         ; $55b9: $89
    db $10                                        ; $55ba: $10
    ret nc                                        ; $55bb: $d0

    ld [hl+], a                                   ; $55bc: $22
    sbc b                                         ; $55bd: $98
    inc [hl]                                      ; $55be: $34
    push af                                       ; $55bf: $f5
    cpl                                           ; $55c0: $2f
    nop                                           ; $55c1: $00
    nop                                           ; $55c2: $00
    ei                                            ; $55c3: $fb
    ld e, $3a                                     ; $55c4: $1e $3a
    nop                                           ; $55c6: $00

jr_0b7_55c7:
    ld l, d                                       ; $55c7: $6a
    inc c                                         ; $55c8: $0c
    jp z, Jump_0b7_590c                           ; $55c9: $ca $0c $59

    ld l, $1c                                     ; $55cc: $2e $1c
    nop                                           ; $55ce: $00
    sbc $3e                                       ; $55cf: $de $3e
    nop                                           ; $55d1: $00
    nop                                           ; $55d2: $00
    ld e, e                                       ; $55d3: $5b

jr_0b7_55d4:
    add hl, bc                                    ; $55d4: $09
    inc c                                         ; $55d5: $0c
    inc d                                         ; $55d6: $14
    ld e, d                                       ; $55d7: $5a
    ld [hl], $00                                  ; $55d8: $36 $00
    nop                                           ; $55da: $00
    or l                                          ; $55db: $b5
    ld h, d                                       ; $55dc: $62
    push af                                       ; $55dd: $f5

jr_0b7_55de:
    cpl                                           ; $55de: $2f
    nop                                           ; $55df: $00
    jr nz, jr_0b7_55e2                            ; $55e0: $20 $00

jr_0b7_55e2:
    jr jr_0b7_5656                                ; $55e2: $18 $72

    ld e, [hl]                                    ; $55e4: $5e
    push af                                       ; $55e5: $f5
    cpl                                           ; $55e6: $2f
    daa                                           ; $55e7: $27
    ld b, c                                       ; $55e8: $41
    ret                                           ; $55e9: $c9


    inc c                                         ; $55ea: $0c
    push af                                       ; $55eb: $f5
    cpl                                           ; $55ec: $2f
    sbc e                                         ; $55ed: $9b
    ld [hl], $70                                  ; $55ee: $36 $70
    add hl, de                                    ; $55f0: $19
    ld a, [bc]                                    ; $55f1: $0a
    inc d                                         ; $55f2: $14
    push af                                       ; $55f3: $f5
    cpl                                           ; $55f4: $2f
    cp e                                          ; $55f5: $bb
    inc a                                         ; $55f6: $3c
    cpl                                           ; $55f7: $2f
    jr nz, jr_0b7_5641                            ; $55f8: $20 $47

    inc b                                         ; $55fa: $04
    or $2f                                        ; $55fb: $f6 $2f
    scf                                           ; $55fd: $37
    nop                                           ; $55fe: $00
    ccf                                           ; $55ff: $3f
    ld [bc], a                                    ; $5600: $02
    jp z, Jump_000_370c                           ; $5601: $ca $0c $37

    ld a, [hl+]                                   ; $5604: $2a
    scf                                           ; $5605: $37
    nop                                           ; $5606: $00
    ccf                                           ; $5607: $3f
    ld [bc], a                                    ; $5608: $02
    nop                                           ; $5609: $00
    nop                                           ; $560a: $00
    or $2f                                        ; $560b: $f6 $2f
    ret z                                         ; $560d: $c8

    inc c                                         ; $560e: $0c
    inc c                                         ; $560f: $0c
    nop                                           ; $5610: $00
    nop                                           ; $5611: $00
    inc e                                         ; $5612: $1c
    ld d, c                                       ; $5613: $51
    ld e, d                                       ; $5614: $5a
    ld a, e                                       ; $5615: $7b
    ld [hl], a                                    ; $5616: $77
    or $2f                                        ; $5617: $f6 $2f
    nop                                           ; $5619: $00
    jr jr_0b7_55c7                                ; $561a: $18 $ab

    ld c, l                                       ; $561c: $4d
    or $2f                                        ; $561d: $f6 $2f
    sub $66                                       ; $561f: $d6 $66
    ret z                                         ; $5621: $c8

    inc c                                         ; $5622: $0c
    ld d, [hl]                                    ; $5623: $56
    ld h, $f6                                     ; $5624: $26 $f6
    cpl                                           ; $5626: $2f
    cp $3e                                        ; $5627: $fe $3e
    nop                                           ; $5629: $00
    nop                                           ; $562a: $00
    rst $30                                       ; $562b: $f7
    cpl                                           ; $562c: $2f
    sbc b                                         ; $562d: $98
    inc [hl]                                      ; $562e: $34
    add hl, bc                                    ; $562f: $09
    inc d                                         ; $5630: $14
    ret z                                         ; $5631: $c8

    inc c                                         ; $5632: $0c
    rst $30                                       ; $5633: $f7
    cpl                                           ; $5634: $2f
    scf                                           ; $5635: $37
    nop                                           ; $5636: $00
    inc c                                         ; $5637: $0c
    nop                                           ; $5638: $00
    ld de, $3b00                                  ; $5639: $11 $00 $3b
    ld a, [de]                                    ; $563c: $1a
    cp $3e                                        ; $563d: $fe $3e
    sub e                                         ; $563f: $93
    add hl, de                                    ; $5640: $19

jr_0b7_5641:
    ret z                                         ; $5641: $c8

jr_0b7_5642:
    inc c                                         ; $5642: $0c
    rst $30                                       ; $5643: $f7
    cpl                                           ; $5644: $2f
    ld hl, sp+$2f                                 ; $5645: $f8 $2f
    sub e                                         ; $5647: $93
    add hl, de                                    ; $5648: $19
    nop                                           ; $5649: $00
    inc e                                         ; $564a: $1c
    or h                                          ; $564b: $b4
    ld h, d                                       ; $564c: $62
    cp l                                          ; $564d: $bd
    ld [hl], a                                    ; $564e: $77

jr_0b7_564f:
    rst $30                                       ; $564f: $f7
    cpl                                           ; $5650: $2f
    nop                                           ; $5651: $00
    jr jr_0b7_55de                                ; $5652: $18 $8a

jr_0b7_5654:
    ld c, c                                       ; $5654: $49
    ld a, d                                       ; $5655: $7a

jr_0b7_5656:
    ld [hl], e                                    ; $5656: $73
    ld [hl], d                                    ; $5657: $72
    ld e, d                                       ; $5658: $5a
    ld [$f80c], a                                 ; $5659: $ea $0c $f8
    cpl                                           ; $565c: $2f
    ld e, c                                       ; $565d: $59
    ld l, $fe                                     ; $565e: $2e $fe
    ld a, $00                                     ; $5660: $3e $00
    nop                                           ; $5662: $00
    ld hl, sp+$2f                                 ; $5663: $f8 $2f
    ld a, [bc]                                    ; $5665: $0a

jr_0b7_5666:
    inc d                                         ; $5666: $14
    cpl                                           ; $5667: $2f
    jr nz, jr_0b7_5654                            ; $5668: $20 $ea

    inc c                                         ; $566a: $0c
    sub a                                         ; $566b: $97
    dec hl                                        ; $566c: $2b
    ccf                                           ; $566d: $3f
    ld c, a                                       ; $566e: $4f
    ld l, $11                                     ; $566f: $2e $11
    sub c                                         ; $5671: $91
    ld [$2638], sp                                ; $5672: $08 $38 $26
    rst $38                                       ; $5675: $ff
    ld b, d                                       ; $5676: $42
    ccf                                           ; $5677: $3f
    ld [bc], a                                    ; $5678: $02
    add hl, bc                                    ; $5679: $09
    inc d                                         ; $567a: $14
    ld hl, sp+$2f                                 ; $567b: $f8 $2f
    xor b                                         ; $567d: $a8
    inc c                                         ; $567e: $0c
    ld sp, hl                                     ; $567f: $f9
    cpl                                           ; $5680: $2f

jr_0b7_5681:
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    rla                                           ; $5683: $17
    ld l, e                                       ; $5684: $6b

jr_0b7_5685:
    nop                                           ; $5685: $00
    jr nz, jr_0b7_5666                            ; $5686: $20 $de

    ld a, a                                       ; $5688: $7f
    nop                                           ; $5689: $00
    inc e                                         ; $568a: $1c
    xor h                                         ; $568b: $ac
    ld c, l                                       ; $568c: $4d
    or h                                          ; $568d: $b4
    ld h, d                                       ; $568e: $62
    sbc e                                         ; $568f: $9b
    ld [hl], a                                    ; $5690: $77
    nop                                           ; $5691: $00
    nop                                           ; $5692: $00
    ld a, d                                       ; $5693: $7a
    ld [hl-], a                                   ; $5694: $32
    reti                                          ; $5695: $d9


    dec hl                                        ; $5696: $2b

jr_0b7_5697:
    dec c                                         ; $5697: $0d
    ld de, $0000                                  ; $5698: $11 $00 $00
    db $f4                                        ; $569b: $f4
    ld [hl+], a                                   ; $569c: $22
    ld sp, hl                                     ; $569d: $f9
    cpl                                           ; $569e: $2f
    add hl, bc                                    ; $569f: $09
    inc d                                         ; $56a0: $14
    cpl                                           ; $56a1: $2f
    jr nz, jr_0b7_5642                            ; $56a2: $20 $9e

    ld d, l                                       ; $56a4: $55
    ccf                                           ; $56a5: $3f
    ld c, e                                       ; $56a6: $4b
    cp e                                          ; $56a7: $bb
    inc a                                         ; $56a8: $3c
    or b                                          ; $56a9: $b0
    inc e                                         ; $56aa: $1c
    jr c, jr_0b7_56d3                             ; $56ab: $38 $26

    rst $38                                       ; $56ad: $ff
    ld b, d                                       ; $56ae: $42
    inc e                                         ; $56af: $1c
    ld b, l                                       ; $56b0: $45
    ld b, l                                       ; $56b1: $45
    ld [$3630], sp                                ; $56b2: $08 $30 $36
    inc [hl]                                      ; $56b5: $34
    inc l                                         ; $56b6: $2c
    ld a, [$002f]                                 ; $56b7: $fa $2f $00
    jr nz, jr_0b7_564f                            ; $56ba: $20 $93

    ld e, [hl]                                    ; $56bc: $5e
    db $dd                                        ; $56bd: $dd
    ld a, e                                       ; $56be: $7b
    jr jr_0b7_572c                                ; $56bf: $18 $6b

    nop                                           ; $56c1: $00
    jr nz, jr_0b7_564f                            ; $56c2: $20 $8b

    ld c, c                                       ; $56c4: $49
    push de                                       ; $56c5: $d5
    ld h, [hl]                                    ; $56c6: $66
    cpl                                           ; $56c7: $2f
    ld d, [hl]                                    ; $56c8: $56
    nop                                           ; $56c9: $00
    nop                                           ; $56ca: $00
    cp e                                          ; $56cb: $bb
    ld [hl-], a                                   ; $56cc: $32
    jp c, Jump_0b7_4f2b                           ; $56cd: $da $2b $4f

    dec d                                         ; $56d0: $15
    ld l, [hl]                                    ; $56d1: $6e
    add hl, de                                    ; $56d2: $19

jr_0b7_56d3:
    ld d, $27                                     ; $56d3: $16 $27
    ld e, a                                       ; $56d5: $5f
    ld d, e                                       ; $56d6: $53
    ld a, [$0c2f]                                 ; $56d7: $fa $2f $0c
    jr jr_0b7_5697                                ; $56da: $18 $bb

    inc a                                         ; $56dc: $3c
    ld c, a                                       ; $56dd: $4f
    dec d                                         ; $56de: $15
    rra                                           ; $56df: $1f
    ld b, e                                       ; $56e0: $43
    xor c                                         ; $56e1: $a9
    inc c                                         ; $56e2: $0c
    cp e                                          ; $56e3: $bb
    jr c, jr_0b7_5681                             ; $56e4: $38 $9b

    ld [hl-], a                                   ; $56e6: $32
    ld de, $0424                                  ; $56e7: $11 $24 $04
    jr nz, jr_0b7_5685                            ; $56ea: $20 $99

    cpl                                           ; $56ec: $2f
    ld [hl], h                                    ; $56ed: $74
    jr nc, @-$20                                  ; $56ee: $30 $de

    ld a, a                                       ; $56f0: $7f
    nop                                           ; $56f1: $00
    jr nz, jr_0b7_5745                            ; $56f2: $20 $51

    ld e, d                                       ; $56f4: $5a
    rst $30                                       ; $56f5: $f7
    ld l, d                                       ; $56f6: $6a
    sbc h                                         ; $56f7: $9c
    ld [hl], a                                    ; $56f8: $77
    nop                                           ; $56f9: $00
    jr nz, jr_0b7_5744                            ; $56fa: $20 $48

    ld b, c                                       ; $56fc: $41
    cpl                                           ; $56fd: $2f
    ld d, [hl]                                    ; $56fe: $56
    adc e                                         ; $56ff: $8b
    ld c, c                                       ; $5700: $49
    and a                                         ; $5701: $a7
    ld [$2a59], sp                                ; $5702: $08 $59 $2a
    or h                                          ; $5705: $b4
    ld h, d                                       ; $5706: $62
    dec a                                         ; $5707: $3d
    dec sp                                        ; $5708: $3b
    xor $18                                       ; $5709: $ee $18
    sbc c                                         ; $570b: $99
    dec hl                                        ; $570c: $2b
    ccf                                           ; $570d: $3f
    ld c, e                                       ; $570e: $4b
    di                                            ; $570f: $f3
    ld hl, $1409                                  ; $5710: $21 $09 $14
    ld [hl], a                                    ; $5713: $77
    ld [hl-], a                                   ; $5714: $32
    cp e                                          ; $5715: $bb
    inc a                                         ; $5716: $3c
    ld a, $4b                                     ; $5717: $3e $4b

jr_0b7_5719:
    xor e                                         ; $5719: $ab
    inc d                                         ; $571a: $14
    ld [hl], $2e                                  ; $571b: $36 $2e
    ld [hl-], a                                   ; $571d: $32
    jr z, @+$1e                                   ; $571e: $28 $1c

    ld b, l                                       ; $5720: $45
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    ld e, b                                       ; $5723: $58
    ld c, e                                       ; $5724: $4b
    adc c                                         ; $5725: $89
    ld [hl], b                                    ; $5726: $70
    rlca                                          ; $5727: $07

jr_0b7_5728:
    inc [hl]                                      ; $5728: $34
    nop                                           ; $5729: $00
    jr nz, jr_0b7_5719                            ; $572a: $20 $ed

jr_0b7_572c:
    ld d, c                                       ; $572c: $51
    ld [hl], d                                    ; $572d: $72
    ld e, [hl]                                    ; $572e: $5e
    cpl                                           ; $572f: $2f
    ld d, [hl]                                    ; $5730: $56
    nop                                           ; $5731: $00
    jr nz, @+$08                                  ; $5732: $20 $06

    ld b, c                                       ; $5734: $41
    ld h, $41                                     ; $5735: $26 $41
    di                                            ; $5737: $f3
    ld hl, $0443                                  ; $5738: $21 $43 $04
    sbc $3a                                       ; $573b: $de $3a
    adc d                                         ; $573d: $8a
    ld c, c                                       ; $573e: $49
    ld [hl], b                                    ; $573f: $70
    add hl, de                                    ; $5740: $19
    ld c, $1c                                     ; $5741: $0e $1c
    rra                                           ; $5743: $1f

jr_0b7_5744:
    ld b, a                                       ; $5744: $47

jr_0b7_5745:
    ld d, $2a                                     ; $5745: $16 $2a
    cp e                                          ; $5747: $bb
    inc a                                         ; $5748: $3c

jr_0b7_5749:
    ret                                           ; $5749: $c9


    inc c                                         ; $574a: $0c
    scf                                           ; $574b: $37
    ld l, $ff                                     ; $574c: $2e $ff
    ld b, d                                       ; $574e: $42
    ld e, a                                       ; $574f: $5f
    ld d, e                                       ; $5750: $53
    inc b                                         ; $5751: $04
    jr nc, jr_0b7_5728                            ; $5752: $30 $d4

    dec h                                         ; $5754: $25
    adc c                                         ; $5755: $89
    ld [hl], b                                    ; $5756: $70
    ld a, [hl+]                                   ; $5757: $2a
    inc d                                         ; $5758: $14
    ld bc, $ff14                                  ; $5759: $01 $14 $ff
    inc bc                                        ; $575c: $03
    adc d                                         ; $575d: $8a
    ld a, h                                       ; $575e: $7c
    cpl                                           ; $575f: $2f
    ld c, [hl]                                    ; $5760: $4e
    nop                                           ; $5761: $00
    jr nz, jr_0b7_5749                            ; $5762: $20 $e5

    inc a                                         ; $5764: $3c
    ld c, b                                       ; $5765: $48
    ld b, l                                       ; $5766: $45
    cpl                                           ; $5767: $2f
    ld c, [hl]                                    ; $5768: $4e
    nop                                           ; $5769: $00
    jr nz, @-$10                                  ; $576a: $20 $ee

    ld e, l                                       ; $576c: $5d
    ld d, $2a                                     ; $576d: $16 $2a
    cp e                                          ; $576f: $bb
    inc a                                         ; $5770: $3c
    xor b                                         ; $5771: $a8
    ld [$21f5], sp                                ; $5772: $08 $f5 $21
    daa                                           ; $5775: $27
    ld b, l                                       ; $5776: $45
    cp $3e                                        ; $5777: $fe $3e
    ld l, $1c                                     ; $5779: $2e $1c
    rla                                           ; $577b: $17
    ld a, [hl+]                                   ; $577c: $2a
    rra                                           ; $577d: $1f
    ld b, a                                       ; $577e: $47
    inc e                                         ; $577f: $1c
    ld c, c                                       ; $5780: $49

jr_0b7_5781:
    or d                                          ; $5781: $b2
    ld hl, $367a                                  ; $5782: $21 $7a $36
    rra                                           ; $5785: $1f
    ld b, e                                       ; $5786: $43
    cp h                                          ; $5787: $bc
    ld a, [hl-]                                   ; $5788: $3a
    inc b                                         ; $5789: $04
    inc [hl]                                      ; $578a: $34
    ret z                                         ; $578b: $c8

    inc c                                         ; $578c: $0c
    adc c                                         ; $578d: $89
    ld l, b                                       ; $578e: $68
    call nc, $0025                                ; $578f: $d4 $25 $00
    nop                                           ; $5792: $00
    rst $38                                       ; $5793: $ff
    inc bc                                        ; $5794: $03
    xor d                                         ; $5795: $aa
    ld a, h                                       ; $5796: $7c
    adc d                                         ; $5797: $8a
    ld c, c                                       ; $5798: $49
    nop                                           ; $5799: $00
    jr nz, jr_0b7_5781                            ; $579a: $20 $e5

    inc a                                         ; $579c: $3c
    xor d                                         ; $579d: $aa
    ld a, h                                       ; $579e: $7c
    adc d                                         ; $579f: $8a
    ld c, c                                       ; $57a0: $49
    nop                                           ; $57a1: $00
    jr nz, @+$19                                  ; $57a2: $20 $17

    ld a, [hl+]                                   ; $57a4: $2a
    rra                                           ; $57a5: $1f
    ld b, a                                       ; $57a6: $47
    inc e                                         ; $57a7: $1c
    ld c, c                                       ; $57a8: $49
    dec b                                         ; $57a9: $05
    inc c                                         ; $57aa: $0c
    scf                                           ; $57ab: $37
    ld l, $31                                     ; $57ac: $2e $31
    ld h, [hl]                                    ; $57ae: $66
    rst $38                                       ; $57af: $ff
    ld a, $4d                                     ; $57b0: $3e $4d
    jr jr_0b7_57d0                                ; $57b2: $18 $1c

    ld b, l                                       ; $57b4: $45
    scf                                           ; $57b5: $37
    ld h, $9f                                     ; $57b6: $26 $9f
    ld d, d                                       ; $57b8: $52
    or e                                          ; $57b9: $b3
    ld hl, $3ebc                                  ; $57ba: $21 $bc $3e
    scf                                           ; $57bd: $37
    ld l, $ff                                     ; $57be: $2e $ff
    ld b, d                                       ; $57c0: $42
    xor b                                         ; $57c1: $a8
    inc d                                         ; $57c2: $14
    ld d, d                                       ; $57c3: $52
    ld a, $ff                                     ; $57c4: $3e $ff
    inc bc                                        ; $57c6: $03
    ld h, a                                       ; $57c7: $67
    ld d, h                                       ; $57c8: $54
    ld b, c                                       ; $57c9: $41
    inc d                                         ; $57ca: $14
    rst $38                                       ; $57cb: $ff
    inc bc                                        ; $57cc: $03
    ld c, e                                       ; $57cd: $4b
    ld h, c                                       ; $57ce: $61
    ld [hl], e                                    ; $57cf: $73

jr_0b7_57d0:
    ld l, [hl]                                    ; $57d0: $6e
    nop                                           ; $57d1: $00
    jr nz, @+$01                                  ; $57d2: $20 $ff

    inc bc                                        ; $57d4: $03
    ld c, e                                       ; $57d5: $4b
    ld h, c                                       ; $57d6: $61
    ld [hl], e                                    ; $57d7: $73
    ld l, [hl]                                    ; $57d8: $6e
    nop                                           ; $57d9: $00
    jr nz, jr_0b7_57f8                            ; $57da: $20 $1c

    ld b, l                                       ; $57dc: $45
    scf                                           ; $57dd: $37
    ld h, $9f                                     ; $57de: $26 $9f
    ld d, d                                       ; $57e0: $52
    ld [hl+], a                                   ; $57e1: $22
    ld [$3d9a], sp                                ; $57e2: $08 $9a $3d
    jr jr_0b7_585e                                ; $57e5: $18 $77

jr_0b7_57e7:
    ld de, $2a24                                  ; $57e7: $11 $24 $2a
    inc d                                         ; $57ea: $14
    inc e                                         ; $57eb: $1c
    ld b, l                                       ; $57ec: $45
    jp nc, $9b20                                  ; $57ed: $d2 $20 $9b

    ld [hl], $b3                                  ; $57f0: $36 $b3
    dec e                                         ; $57f2: $1d
    db $dd                                        ; $57f3: $dd
    ld a, $59                                     ; $57f4: $3e $59
    ld a, [hl+]                                   ; $57f6: $2a
    rra                                           ; $57f7: $1f

jr_0b7_57f8:
    ld b, e                                       ; $57f8: $43
    inc b                                         ; $57f9: $04
    jr nc, @+$01                                  ; $57fa: $30 $ff

    inc bc                                        ; $57fc: $03
    dec hl                                        ; $57fd: $2b
    ld l, c                                       ; $57fe: $69
    inc c                                         ; $57ff: $0c
    ld de, $1000                                  ; $5800: $11 $00 $10
    rst $38                                       ; $5803: $ff
    inc bc                                        ; $5804: $03
    jr jr_0b7_587e                                ; $5805: $18 $77

    ld [$007c], sp                                ; $5807: $08 $7c $00
    jr nz, @+$01                                  ; $580a: $20 $ff

    inc bc                                        ; $580c: $03
    jr jr_0b7_5886                                ; $580d: $18 $77

    ld [$007c], sp                                ; $580f: $08 $7c $00
    jr nz, jr_0b7_5830                            ; $5812: $20 $1c

    ld b, l                                       ; $5814: $45
    jp nc, $9b20                                  ; $5815: $d2 $20 $9b

    ld [hl], $00                                  ; $5818: $36 $00
    ld [$3cbb], sp                                ; $581a: $08 $bb $3c
    sbc h                                         ; $581d: $9c
    ld [hl], a                                    ; $581e: $77
    ld de, $0024                                  ; $581f: $11 $24 $00
    nop                                           ; $5822: $00
    xor a                                         ; $5823: $af

jr_0b7_5824:
    jr jr_0b7_5824                                ; $5824: $18 $fe

    ld a, $76                                     ; $5826: $3e $76
    jr nc, jr_0b7_582a                            ; $5828: $30 $00

jr_0b7_582a:
    nop                                           ; $582a: $00
    rrca                                          ; $582b: $0f
    ld h, d                                       ; $582c: $62
    sbc h                                         ; $582d: $9c
    ld a, e                                       ; $582e: $7b
    or l                                          ; $582f: $b5

jr_0b7_5830:
    ld l, [hl]                                    ; $5830: $6e
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    push hl                                       ; $5833: $e5
    inc a                                         ; $5834: $3c
    rrca                                          ; $5835: $0f
    ld e, d                                       ; $5836: $5a
    ld c, c                                       ; $5837: $49
    ld c, c                                       ; $5838: $49
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00

jr_0b7_583b:
    rst $30                                       ; $583b: $f7
    ld [hl], d                                    ; $583c: $72
    sbc $7b                                       ; $583d: $de $7b
    nop                                           ; $583f: $00
    jr nz, jr_0b7_5842                            ; $5840: $20 $00

jr_0b7_5842:
    jr nz, jr_0b7_583b                            ; $5842: $20 $f7

    ld [hl], d                                    ; $5844: $72
    sbc $7b                                       ; $5845: $de $7b
    nop                                           ; $5847: $00
    jr nz, jr_0b7_584a                            ; $5848: $20 $00

jr_0b7_584a:
    jr nz, @-$4f                                  ; $584a: $20 $af

jr_0b7_584c:
    jr jr_0b7_584c                                ; $584c: $18 $fe

    ld a, $76                                     ; $584e: $3e $76
    jr nc, jr_0b7_5852                            ; $5850: $30 $00

jr_0b7_5852:
    jr nz, jr_0b7_57e7                            ; $5852: $20 $93

jr_0b7_5854:
    ld h, d                                       ; $5854: $62
    sbc h                                         ; $5855: $9c
    ld [hl], a                                    ; $5856: $77
    ld l, c                                       ; $5857: $69
    ld b, l                                       ; $5858: $45
    push hl                                       ; $5859: $e5
    inc a                                         ; $585a: $3c
    ld sp, $f766                                  ; $585b: $31 $66 $f7

jr_0b7_585e:
    ld [hl], d                                    ; $585e: $72
    ld c, c                                       ; $585f: $49
    ld c, l                                       ; $5860: $4d
    daa                                           ; $5861: $27
    ld b, l                                       ; $5862: $45
    sub l                                         ; $5863: $95

jr_0b7_5864:
    ld [hl], d                                    ; $5864: $72
    sbc h                                         ; $5865: $9c
    ld a, e                                       ; $5866: $7b
    adc $5d                                       ; $5867: $ce $5d
    ld l, d                                       ; $5869: $6a
    ld c, l                                       ; $586a: $4d
    sub h                                         ; $586b: $94
    ld l, [hl]                                    ; $586c: $6e
    jr nc, jr_0b7_58cd                            ; $586d: $30 $5e

    ld e, d                                       ; $586f: $5a
    ld [hl], e                                    ; $5870: $73
    nop                                           ; $5871: $00
    jr nz, jr_0b7_58e7                            ; $5872: $20 $73

    ld e, [hl]                                    ; $5874: $5e
    cp h                                          ; $5875: $bc
    ld a, e                                       ; $5876: $7b
    push hl                                       ; $5877: $e5
    inc a                                         ; $5878: $3c
    nop                                           ; $5879: $00
    jr nz, jr_0b7_58ef                            ; $587a: $20 $73

    ld e, [hl]                                    ; $587c: $5e
    cp h                                          ; $587d: $bc

jr_0b7_587e:
    ld a, e                                       ; $587e: $7b
    push hl                                       ; $587f: $e5
    inc a                                         ; $5880: $3c
    nop                                           ; $5881: $00
    jr nz, jr_0b7_5884                            ; $5882: $20 $00

jr_0b7_5884:
    jr nz, jr_0b7_5886                            ; $5884: $20 $00

jr_0b7_5886:
    jr nz, jr_0b7_587e                            ; $5886: $20 $f6

    ld l, l                                       ; $5888: $6d
    nop                                           ; $5889: $00
    jr nz, jr_0b7_588c                            ; $588a: $20 $00

jr_0b7_588c:
    jr nz, jr_0b7_588e                            ; $588c: $20 $00

jr_0b7_588e:
    jr nz, jr_0b7_5886                            ; $588e: $20 $f6

    ld l, l                                       ; $5890: $6d
    nop                                           ; $5891: $00
    jr nz, jr_0b7_5894                            ; $5892: $20 $00

jr_0b7_5894:
    jr nz, jr_0b7_5896                            ; $5894: $20 $00

jr_0b7_5896:
    jr nz, jr_0b7_588e                            ; $5896: $20 $f6

    ld l, l                                       ; $5898: $6d
    ld hl, $b000                                  ; $5899: $21 $00 $b0
    ld c, l                                       ; $589c: $4d
    dec e                                         ; $589d: $1d
    inc de                                        ; $589e: $13
    nop                                           ; $589f: $00
    jr nz, jr_0b7_58a2                            ; $58a0: $20 $00

jr_0b7_58a2:
    jr nz, jr_0b7_5854                            ; $58a2: $20 $b0

    ld c, l                                       ; $58a4: $4d
    dec e                                         ; $58a5: $1d
    inc de                                        ; $58a6: $13
    nop                                           ; $58a7: $00
    jr nz, jr_0b7_58aa                            ; $58a8: $20 $00

jr_0b7_58aa:
    jr nz, @-$4e                                  ; $58aa: $20 $b0

    ld c, l                                       ; $58ac: $4d
    dec e                                         ; $58ad: $1d
    inc de                                        ; $58ae: $13
    nop                                           ; $58af: $00
    jr nz, jr_0b7_58b2                            ; $58b0: $20 $00

jr_0b7_58b2:
    jr nz, jr_0b7_5864                            ; $58b2: $20 $b0

    ld c, l                                       ; $58b4: $4d
    dec e                                         ; $58b5: $1d

jr_0b7_58b6:
    inc de                                        ; $58b6: $13
    nop                                           ; $58b7: $00
    jr nz, jr_0b7_58ba                            ; $58b8: $20 $00

jr_0b7_58ba:
    jr nz, jr_0b7_58bc                            ; $58ba: $20 $00

jr_0b7_58bc:
    jr nz, jr_0b7_58be                            ; $58bc: $20 $00

jr_0b7_58be:
    jr nz, jr_0b7_58b6                            ; $58be: $20 $f6

    ld l, l                                       ; $58c0: $6d
    nop                                           ; $58c1: $00
    jr nz, jr_0b7_58c4                            ; $58c2: $20 $00

jr_0b7_58c4:
    jr nz, jr_0b7_58c6                            ; $58c4: $20 $00

jr_0b7_58c6:
    jr nz, jr_0b7_58be                            ; $58c6: $20 $f6

    ld l, l                                       ; $58c8: $6d
    nop                                           ; $58c9: $00
    jr nz, @-$21                                  ; $58ca: $20 $dd

    dec de                                        ; $58cc: $1b

jr_0b7_58cd:
    nop                                           ; $58cd: $00
    jr nz, jr_0b7_58c6                            ; $58ce: $20 $f6

    ld l, l                                       ; $58d0: $6d

jr_0b7_58d1:
    ld b, d                                       ; $58d1: $42
    inc b                                         ; $58d2: $04
    or a                                          ; $58d3: $b7
    ld bc, $5d6c                                  ; $58d4: $01 $6c $5d
    db $dd                                        ; $58d7: $dd
    dec de                                        ; $58d8: $1b

jr_0b7_58d9:
    nop                                           ; $58d9: $00
    nop                                           ; $58da: $00
    nop                                           ; $58db: $00
    jr nz, jr_0b7_594a                            ; $58dc: $20 $6c

    ld e, l                                       ; $58de: $5d
    db $dd                                        ; $58df: $dd
    dec de                                        ; $58e0: $1b

jr_0b7_58e1:
    nop                                           ; $58e1: $00
    jr nz, jr_0b7_58e4                            ; $58e2: $20 $00

jr_0b7_58e4:
    jr nz, jr_0b7_5952                            ; $58e4: $20 $6c

    ld e, l                                       ; $58e6: $5d

jr_0b7_58e7:
    db $dd                                        ; $58e7: $dd
    dec de                                        ; $58e8: $1b
    nop                                           ; $58e9: $00
    jr nz, jr_0b7_58ec                            ; $58ea: $20 $00

jr_0b7_58ec:
    jr nz, jr_0b7_595a                            ; $58ec: $20 $6c

jr_0b7_58ee:
    ld e, l                                       ; $58ee: $5d

jr_0b7_58ef:
    db $dd                                        ; $58ef: $dd

jr_0b7_58f0:
    dec de                                        ; $58f0: $1b
    nop                                           ; $58f1: $00
    jr nz, jr_0b7_58d1                            ; $58f2: $20 $dd

    dec de                                        ; $58f4: $1b

jr_0b7_58f5:
    nop                                           ; $58f5: $00

jr_0b7_58f6:
    jr nz, jr_0b7_58ee                            ; $58f6: $20 $f6

jr_0b7_58f8:
    ld l, l                                       ; $58f8: $6d
    nop                                           ; $58f9: $00
    jr nz, jr_0b7_58d9                            ; $58fa: $20 $dd

    dec de                                        ; $58fc: $1b

jr_0b7_58fd:
    nop                                           ; $58fd: $00
    jr nz, jr_0b7_58f6                            ; $58fe: $20 $f6

    ld l, l                                       ; $5900: $6d
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    xor l                                         ; $5903: $ad
    ld bc, $1bdd                                  ; $5904: $01 $dd $1b
    nop                                           ; $5907: $00
    inc e                                         ; $5908: $1c
    nop                                           ; $5909: $00
    inc b                                         ; $590a: $04
    ld [hl], l                                    ; $590b: $75

Jump_0b7_590c:
    ld a, d                                       ; $590c: $7a
    ld c, [hl]                                    ; $590d: $4e
    dec c                                         ; $590e: $0d
    db $dd                                        ; $590f: $dd
    dec de                                        ; $5910: $1b
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    rst $38                                       ; $5913: $ff
    ld a, a                                       ; $5914: $7f
    nop                                           ; $5915: $00
    jr nz, jr_0b7_58f5                            ; $5916: $20 $dd

    dec de                                        ; $5918: $1b
    nop                                           ; $5919: $00
    jr nz, @+$01                                  ; $591a: $20 $ff

    ld a, a                                       ; $591c: $7f
    nop                                           ; $591d: $00
    jr nz, jr_0b7_58fd                            ; $591e: $20 $dd

    dec de                                        ; $5920: $1b
    nop                                           ; $5921: $00
    jr nz, @+$01                                  ; $5922: $20 $ff

    ld a, a                                       ; $5924: $7f
    nop                                           ; $5925: $00
    jr nz, @-$21                                  ; $5926: $20 $dd

    dec de                                        ; $5928: $1b
    nop                                           ; $5929: $00
    jr nz, jr_0b7_58d9                            ; $592a: $20 $ad

    ld bc, $1bdd                                  ; $592c: $01 $dd $1b
    nop                                           ; $592f: $00
    inc e                                         ; $5930: $1c
    nop                                           ; $5931: $00
    jr nz, jr_0b7_58e1                            ; $5932: $20 $ad

    ld bc, $1bdd                                  ; $5934: $01 $dd $1b
    nop                                           ; $5937: $00
    inc e                                         ; $5938: $1c
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00
    rst $38                                       ; $593b: $ff
    ld a, a                                       ; $593c: $7f
    xor l                                         ; $593d: $ad
    ld bc, $2000                                  ; $593e: $01 $00 $20
    nop                                           ; $5941: $00
    nop                                           ; $5942: $00
    xor l                                         ; $5943: $ad
    ld bc, $1bdd                                  ; $5944: $01 $dd $1b
    scf                                           ; $5947: $37
    nop                                           ; $5948: $00
    nop                                           ; $5949: $00

jr_0b7_594a:
    nop                                           ; $594a: $00
    sbc h                                         ; $594b: $9c
    ld e, e                                       ; $594c: $5b
    nop                                           ; $594d: $00
    jr nz, @+$01                                  ; $594e: $20 $ff

    ld a, a                                       ; $5950: $7f
    nop                                           ; $5951: $00

jr_0b7_5952:
    jr nz, jr_0b7_58f0                            ; $5952: $20 $9c

    ld e, e                                       ; $5954: $5b
    nop                                           ; $5955: $00
    jr nz, @+$01                                  ; $5956: $20 $ff

    ld a, a                                       ; $5958: $7f
    nop                                           ; $5959: $00

jr_0b7_595a:
    jr nz, jr_0b7_58f8                            ; $595a: $20 $9c

    ld e, e                                       ; $595c: $5b
    nop                                           ; $595d: $00
    jr nz, @+$01                                  ; $595e: $20 $ff

    ld a, a                                       ; $5960: $7f
    nop                                           ; $5961: $00
    jr nz, @+$01                                  ; $5962: $20 $ff

    ld a, a                                       ; $5964: $7f
    xor l                                         ; $5965: $ad
    ld bc, $2000                                  ; $5966: $01 $00 $20
    nop                                           ; $5969: $00
    jr nz, jr_0b7_5975                            ; $596a: $20 $09

    nop                                           ; $596c: $00
    xor l                                         ; $596d: $ad
    ld bc, $2000                                  ; $596e: $01 $00 $20
    ld bc, $d600                                  ; $5971: $01 $00 $d6
    ld e, d                                       ; $5974: $5a

jr_0b7_5975:
    rst $38                                       ; $5975: $ff
    ld a, a                                       ; $5976: $7f
    nop                                           ; $5977: $00
    jr nz, jr_0b7_597a                            ; $5978: $20 $00

jr_0b7_597a:
    nop                                           ; $597a: $00
    jr c, jr_0b7_59af                             ; $597b: $38 $32

jr_0b7_597d:
    or [hl]                                       ; $597d: $b6
    ld d, [hl]                                    ; $597e: $56
    adc h                                         ; $597f: $8c
    inc c                                         ; $5980: $0c
    ld b, d                                       ; $5981: $42
    nop                                           ; $5982: $00
    ld a, d                                       ; $5983: $7a
    rla                                           ; $5984: $17

jr_0b7_5985:
    rst $28                                       ; $5985: $ef
    dec a                                         ; $5986: $3d
    dec e                                         ; $5987: $1d
    ld c, a                                       ; $5988: $4f
    nop                                           ; $5989: $00
    nop                                           ; $598a: $00
    nop                                           ; $598b: $00
    jr nz, jr_0b7_597d                            ; $598c: $20 $ef

    dec a                                         ; $598e: $3d
    dec e                                         ; $598f: $1d
    ld c, a                                       ; $5990: $4f
    nop                                           ; $5991: $00
    jr nz, jr_0b7_5994                            ; $5992: $20 $00

jr_0b7_5994:
    jr nz, jr_0b7_5985                            ; $5994: $20 $ef

    dec a                                         ; $5996: $3d
    dec e                                         ; $5997: $1d
    ld c, a                                       ; $5998: $4f
    nop                                           ; $5999: $00
    jr nz, @-$28                                  ; $599a: $20 $d6

    ld e, d                                       ; $599c: $5a
    rst $38                                       ; $599d: $ff
    ld a, a                                       ; $599e: $7f

jr_0b7_599f:
    nop                                           ; $599f: $00
    jr nz, jr_0b7_59a2                            ; $59a0: $20 $00

jr_0b7_59a2:
    nop                                           ; $59a2: $00
    rst $38                                       ; $59a3: $ff
    ld a, a                                       ; $59a4: $7f
    nop                                           ; $59a5: $00
    jr nz, jr_0b7_59a8                            ; $59a6: $20 $00

jr_0b7_59a8:
    jr nz, jr_0b7_59aa                            ; $59a8: $20 $00

jr_0b7_59aa:
    nop                                           ; $59aa: $00
    sub $5a                                       ; $59ab: $d6 $5a
    rst $38                                       ; $59ad: $ff
    ld a, a                                       ; $59ae: $7f

jr_0b7_59af:
    add hl, bc                                    ; $59af: $09
    nop                                           ; $59b0: $00
    nop                                           ; $59b1: $00
    nop                                           ; $59b2: $00
    sub $5a                                       ; $59b3: $d6 $5a
    ld a, $2e                                     ; $59b5: $3e $2e
    call z, Call_000_000c                         ; $59b7: $cc $0c $00
    nop                                           ; $59ba: $00
    ld a, [$9c15]                                 ; $59bb: $fa $15 $9c
    ld a, $cb                                     ; $59be: $3e $cb
    inc c                                         ; $59c0: $0c
    nop                                           ; $59c1: $00
    nop                                           ; $59c2: $00
    sbc $3f                                       ; $59c3: $de $3f
    rst $38                                       ; $59c5: $ff
    ld a, a                                       ; $59c6: $7f
    nop                                           ; $59c7: $00
    inc e                                         ; $59c8: $1c
    nop                                           ; $59c9: $00
    jr nz, jr_0b7_59aa                            ; $59ca: $20 $de

    ccf                                           ; $59cc: $3f
    rst $38                                       ; $59cd: $ff
    ld a, a                                       ; $59ce: $7f
    nop                                           ; $59cf: $00
    inc e                                         ; $59d0: $1c
    nop                                           ; $59d1: $00
    nop                                           ; $59d2: $00
    ld h, a                                       ; $59d3: $67
    nop                                           ; $59d4: $00
    nop                                           ; $59d5: $00
    jr nz, jr_0b7_59e1                            ; $59d6: $20 $09

    nop                                           ; $59d8: $00
    nop                                           ; $59d9: $00
    nop                                           ; $59da: $00
    rst $38                                       ; $59db: $ff
    ld a, a                                       ; $59dc: $7f
    ld [$0000], sp                                ; $59dd: $08 $00 $00
    inc e                                         ; $59e0: $1c

jr_0b7_59e1:
    add hl, bc                                    ; $59e1: $09
    nop                                           ; $59e2: $00
    sub $5a                                       ; $59e3: $d6 $5a
    add hl, de                                    ; $59e5: $19
    dec b                                         ; $59e6: $05
    rra                                           ; $59e7: $1f
    ld bc, $0000                                  ; $59e8: $01 $00 $00
    or l                                          ; $59eb: $b5
    ld d, [hl]                                    ; $59ec: $56
    dec de                                        ; $59ed: $1b
    ld a, [hl+]                                   ; $59ee: $2a
    xor d                                         ; $59ef: $aa
    inc c                                         ; $59f0: $0c
    ld b, $00                                     ; $59f1: $06 $00
    rst $18                                       ; $59f3: $df
    ld [$263c], sp                                ; $59f4: $08 $3c $26
    rrca                                          ; $59f7: $0f
    dec d                                         ; $59f8: $15
    nop                                           ; $59f9: $00
    nop                                           ; $59fa: $00
    ld l, a                                       ; $59fb: $6f
    dec b                                         ; $59fc: $05
    sbc a                                         ; $59fd: $9f
    ld c, $00                                     ; $59fe: $0e $00
    jr nz, jr_0b7_5a02                            ; $5a00: $20 $00

jr_0b7_5a02:
    jr nz, jr_0b7_5a73                            ; $5a02: $20 $6f

Jump_0b7_5a04:
    dec b                                         ; $5a04: $05
    sbc a                                         ; $5a05: $9f
    ld c, $00                                     ; $5a06: $0e $00
    jr nz, jr_0b7_5a0a                            ; $5a08: $20 $00

jr_0b7_5a0a:
    jr jr_0b7_599f                                ; $5a0a: $18 $93

    nop                                           ; $5a0c: $00
    ld a, [hl+]                                   ; $5a0d: $2a
    nop                                           ; $5a0e: $00
    ld e, a                                       ; $5a0f: $5f
    ld bc, $0048                                  ; $5a10: $01 $48 $00
    rra                                           ; $5a13: $1f
    ld bc, $1bff                                  ; $5a14: $01 $ff $1b
    rra                                           ; $5a17: $1f
    ld a, [bc]                                    ; $5a18: $0a
    add hl, bc                                    ; $5a19: $09
    nop                                           ; $5a1a: $00
    sub $5a                                       ; $5a1b: $d6 $5a
    sbc [hl]                                      ; $5a1d: $9e
    dec b                                         ; $5a1e: $05
    ldh a, [rP1]                                  ; $5a1f: $f0 $00
    nop                                           ; $5a21: $00
    nop                                           ; $5a22: $00
    or l                                          ; $5a23: $b5
    ld d, [hl]                                    ; $5a24: $56
    db $fc                                        ; $5a25: $fc
    ld h, $28                                     ; $5a26: $26 $28
    inc b                                         ; $5a28: $04
    nop                                           ; $5a29: $00
    nop                                           ; $5a2a: $00
    inc a                                         ; $5a2b: $3c
    inc b                                         ; $5a2c: $04
    rst $38                                       ; $5a2d: $ff
    inc hl                                        ; $5a2e: $23
    dec c                                         ; $5a2f: $0d
    nop                                           ; $5a30: $00
    ld [hl+], a                                   ; $5a31: $22
    ld [$7319], sp                                ; $5a32: $08 $19 $73
    rra                                           ; $5a35: $1f
    ld c, $4d                                     ; $5a36: $0e $4d
    nop                                           ; $5a38: $00
    nop                                           ; $5a39: $00
    nop                                           ; $5a3a: $00
    nop                                           ; $5a3b: $00
    jr nz, jr_0b7_5a5d                            ; $5a3c: $20 $1f

    ld c, $4d                                     ; $5a3e: $0e $4d
    nop                                           ; $5a40: $00
    nop                                           ; $5a41: $00
    db $10                                        ; $5a42: $10
    reti                                          ; $5a43: $d9


    dec b                                         ; $5a44: $05
    add hl, bc                                    ; $5a45: $09
    nop                                           ; $5a46: $00
    ld a, a                                       ; $5a47: $7f
    rrca                                          ; $5a48: $0f
    ld c, e                                       ; $5a49: $4b
    nop                                           ; $5a4a: $00
    ld d, $0a                                     ; $5a4b: $16 $0a
    ld e, a                                       ; $5a4d: $5f
    rrca                                          ; $5a4e: $0f
    sbc $09                                       ; $5a4f: $de $09
    ld a, [hl+]                                   ; $5a51: $2a
    nop                                           ; $5a52: $00
    ld [hl], c                                    ; $5a53: $71
    ld [de], a                                    ; $5a54: $12
    or l                                          ; $5a55: $b5
    ld d, [hl]                                    ; $5a56: $56
    rst $38                                       ; $5a57: $ff
    dec b                                         ; $5a58: $05
    nop                                           ; $5a59: $00
    nop                                           ; $5a5a: $00
    sub h                                         ; $5a5b: $94
    ld d, d                                       ; $5a5c: $52

jr_0b7_5a5d:
    rst $38                                       ; $5a5d: $ff
    inc hl                                        ; $5a5e: $23
    add hl, bc                                    ; $5a5f: $09
    nop                                           ; $5a60: $00
    inc hl                                        ; $5a61: $23
    nop                                           ; $5a62: $00
    jp nc, $ff74                                  ; $5a63: $d2 $74 $ff

    inc hl                                        ; $5a66: $23
    ld b, d                                       ; $5a67: $42
    inc [hl]                                      ; $5a68: $34
    dec b                                         ; $5a69: $05
    nop                                           ; $5a6a: $00
    dec sp                                        ; $5a6b: $3b
    ld [hl], a                                    ; $5a6c: $77
    ld a, [hl-]                                   ; $5a6d: $3a
    inc b                                         ; $5a6e: $04
    add hl, bc                                    ; $5a6f: $09
    ld d, l                                       ; $5a70: $55
    nop                                           ; $5a71: $00
    nop                                           ; $5a72: $00

jr_0b7_5a73:
    nop                                           ; $5a73: $00
    jr nz, jr_0b7_5adb                            ; $5a74: $20 $65

    inc d                                         ; $5a76: $14
    add hl, bc                                    ; $5a77: $09
    ld d, l                                       ; $5a78: $55
    nop                                           ; $5a79: $00
    inc e                                         ; $5a7a: $1c
    rst $18                                       ; $5a7b: $df
    dec b                                         ; $5a7c: $05
    cp a                                          ; $5a7d: $bf
    inc de                                        ; $5a7e: $13
    add hl, bc                                    ; $5a7f: $09
    nop                                           ; $5a80: $00
    ld b, $00                                     ; $5a81: $06 $00
    rra                                           ; $5a83: $1f
    dec b                                         ; $5a84: $05
    rra                                           ; $5a85: $1f
    rrca                                          ; $5a86: $0f
    rst $38                                       ; $5a87: $ff
    add hl, bc                                    ; $5a88: $09
    ld b, e                                       ; $5a89: $43
    nop                                           ; $5a8a: $00
    ld a, e                                       ; $5a8b: $7b
    ld bc, $0ebf                                  ; $5a8c: $01 $bf $0e

jr_0b7_5a8f:
    add hl, hl                                    ; $5a8f: $29
    nop                                           ; $5a90: $00
    nop                                           ; $5a91: $00
    nop                                           ; $5a92: $00
    ld [hl], e                                    ; $5a93: $73
    ld c, [hl]                                    ; $5a94: $4e
    add hl, bc                                    ; $5a95: $09
    nop                                           ; $5a96: $00
    sub h                                         ; $5a97: $94
    ld d, d                                       ; $5a98: $52
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    cp h                                          ; $5a9b: $bc
    inc hl                                        ; $5a9c: $23
    adc h                                         ; $5a9d: $8c
    ld e, h                                       ; $5a9e: $5c
    ld l, e                                       ; $5a9f: $6b
    dec c                                         ; $5aa0: $0d
    rlca                                          ; $5aa1: $07
    nop                                           ; $5aa2: $00
    or [hl]                                       ; $5aa3: $b6
    ld a, [hl]                                    ; $5aa4: $7e
    rst $18                                       ; $5aa5: $df
    ld bc, $40a5                                  ; $5aa6: $01 $a5 $40
    ld [hl+], a                                   ; $5aa9: $22
    ld [$66f8], sp                                ; $5aaa: $08 $f8 $66
    nop                                           ; $5aad: $00
    jr nz, jr_0b7_5a8f                            ; $5aae: $20 $df

    ld a, a                                       ; $5ab0: $7f
    ld c, b                                       ; $5ab1: $48
    inc b                                         ; $5ab2: $04
    cp $00                                        ; $5ab3: $fe $00
    rst $38                                       ; $5ab5: $ff
    rla                                           ; $5ab6: $17
    ld sp, hl                                     ; $5ab7: $f9
    add hl, bc                                    ; $5ab8: $09
    jr z, jr_0b7_5abb                             ; $5ab9: $28 $00

jr_0b7_5abb:
    sub l                                         ; $5abb: $95
    nop                                           ; $5abc: $00
    ld a, b                                       ; $5abd: $78
    ld a, [bc]                                    ; $5abe: $0a
    ld a, $01                                     ; $5abf: $3e $01
    ld c, c                                       ; $5ac1: $49
    nop                                           ; $5ac2: $00
    call c, Call_0b7_5204                         ; $5ac3: $dc $04 $52
    ld [de], a                                    ; $5ac6: $12
    rra                                           ; $5ac7: $1f
    inc de                                        ; $5ac8: $13
    ld [$9800], sp                                ; $5ac9: $08 $00 $98
    ld a, [bc]                                    ; $5acc: $0a
    ld d, d                                       ; $5acd: $52
    ld c, d                                       ; $5ace: $4a
    dec [hl]                                      ; $5acf: $35
    ld bc, $0021                                  ; $5ad0: $01 $21 $00
    ld a, [c]                                     ; $5ad3: $f2
    ld h, c                                       ; $5ad4: $61
    rst $38                                       ; $5ad5: $ff
    inc hl                                        ; $5ad6: $23
    ld b, [hl]                                    ; $5ad7: $46
    ld e, b                                       ; $5ad8: $58
    rlca                                          ; $5ad9: $07
    nop                                           ; $5ada: $00

jr_0b7_5adb:
    ld c, $59                                     ; $5adb: $0e $59
    rst $18                                       ; $5add: $df
    inc b                                         ; $5ade: $04
    or e                                          ; $5adf: $b3
    ld a, c                                       ; $5ae0: $79
    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    or b                                          ; $5ae3: $b0
    ld c, c                                       ; $5ae4: $49
    cp a                                          ; $5ae5: $bf
    ld a, a                                       ; $5ae6: $7f
    nop                                           ; $5ae7: $00
    inc e                                         ; $5ae8: $1c
    add hl, bc                                    ; $5ae9: $09
    nop                                           ; $5aea: $00
    db $dd                                        ; $5aeb: $dd
    nop                                           ; $5aec: $00
    dec a                                         ; $5aed: $3d
    rrca                                          ; $5aee: $0f
    ld c, $01                                     ; $5aef: $0e $01
    add hl, bc                                    ; $5af1: $09
    nop                                           ; $5af2: $00
    cp a                                          ; $5af3: $bf
    ld a, [bc]                                    ; $5af4: $0a
    rst $18                                       ; $5af5: $df
    ld b, d                                       ; $5af6: $42
    ccf                                           ; $5af7: $3f
    inc de                                        ; $5af8: $13
    inc bc                                        ; $5af9: $03
    nop                                           ; $5afa: $00
    ld [hl], c                                    ; $5afb: $71
    dec e                                         ; $5afc: $1d
    ld e, $0f                                     ; $5afd: $1e $0f
    cp $00                                        ; $5aff: $fe $00
    dec bc                                        ; $5b01: $0b
    nop                                           ; $5b02: $00
    ld d, d                                       ; $5b03: $52
    ld c, d                                       ; $5b04: $4a
    ld e, [hl]                                    ; $5b05: $5e
    ld bc, $0f5f                                  ; $5b06: $01 $5f $0f
    ld [bc], a                                    ; $5b09: $02
    inc d                                         ; $5b0a: $14
    ld d, d                                       ; $5b0b: $52
    ld a, [hl-]                                   ; $5b0c: $3a
    rst $38                                       ; $5b0d: $ff
    inc hl                                        ; $5b0e: $23
    ld c, b                                       ; $5b0f: $48
    ld l, b                                       ; $5b10: $68
    add hl, bc                                    ; $5b11: $09
    nop                                           ; $5b12: $00
    sbc [hl]                                      ; $5b13: $9e
    inc b                                         ; $5b14: $04
    db $10                                        ; $5b15: $10
    ld l, c                                       ; $5b16: $69
    ld e, a                                       ; $5b17: $5f
    ld b, $00                                     ; $5b18: $06 $00
    inc e                                         ; $5b1a: $1c
    sub c                                         ; $5b1b: $91
    ld [hl], b                                    ; $5b1c: $70
    rst $38                                       ; $5b1d: $ff
    ld a, a                                       ; $5b1e: $7f
    adc $39                                       ; $5b1f: $ce $39
    ld a, [bc]                                    ; $5b21: $0a
    nop                                           ; $5b22: $00
    cp $00                                        ; $5b23: $fe $00
    sbc h                                         ; $5b25: $9c
    ld a, [bc]                                    ; $5b26: $0a
    ld a, a                                       ; $5b27: $7f
    inc de                                        ; $5b28: $13
    rlca                                          ; $5b29: $07
    nop                                           ; $5b2a: $00
    ld e, $06                                     ; $5b2b: $1e $06
    db $10                                        ; $5b2d: $10
    add hl, bc                                    ; $5b2e: $09
    ld a, l                                       ; $5b2f: $7d
    ld a, $04                                     ; $5b30: $3e $04
    nop                                           ; $5b32: $00
    rst $38                                       ; $5b33: $ff
    dec b                                         ; $5b34: $05
    ld a, $5b                                     ; $5b35: $3e $5b
    add hl, bc                                    ; $5b37: $09
    dec h                                         ; $5b38: $25
    add hl, bc                                    ; $5b39: $09
    nop                                           ; $5b3a: $00
    rra                                           ; $5b3b: $1f
    ld bc, $0091                                  ; $5b3c: $01 $91 $00
    cp a                                          ; $5b3f: $bf
    ld bc, $0c22                                  ; $5b40: $01 $22 $0c
    pop de                                        ; $5b43: $d1
    ld a, b                                       ; $5b44: $78
    rst $38                                       ; $5b45: $ff
    inc hl                                        ; $5b46: $23
    ld sp, $0846                                  ; $5b47: $31 $46 $08
    inc b                                         ; $5b4a: $04
    db $d3                                        ; $5b4b: $d3
    ld a, [hl]                                    ; $5b4c: $7e
    dec e                                         ; $5b4d: $1d
    dec b                                         ; $5b4e: $05
    xor d                                         ; $5b4f: $aa
    ld l, c                                       ; $5b50: $69
    ld [hl+], a                                   ; $5b51: $22
    ld [$7fff], sp                                ; $5b52: $08 $ff $7f
    xor l                                         ; $5b55: $ad
    dec [hl]                                      ; $5b56: $35
    nop                                           ; $5b57: $00
    jr nz, jr_0b7_5b5a                            ; $5b58: $20 $00

jr_0b7_5b5a:
    jr nz, @+$01                                  ; $5b5a: $20 $ff

    nop                                           ; $5b5c: $00
    db $dd                                        ; $5b5d: $dd
    ld c, $09                                     ; $5b5e: $0e $09
    nop                                           ; $5b60: $00
    nop                                           ; $5b61: $00
    nop                                           ; $5b62: $00
    ld [hl], h                                    ; $5b63: $74
    dec e                                         ; $5b64: $1d
    cp a                                          ; $5b65: $bf
    ld bc, $0849                                  ; $5b66: $01 $49 $08
    inc b                                         ; $5b69: $04
    nop                                           ; $5b6a: $00
    ld a, d                                       ; $5b6b: $7a
    ld b, [hl]                                    ; $5b6c: $46
    ld e, d                                       ; $5b6d: $5a
    add hl, bc                                    ; $5b6e: $09
    cp l                                          ; $5b6f: $bd
    ld l, e                                       ; $5b70: $6b
    daa                                           ; $5b71: $27
    inc b                                         ; $5b72: $04
    sbc [hl]                                      ; $5b73: $9e
    ld bc, $7cd0                                  ; $5b74: $01 $d0 $7c
    rst $38                                       ; $5b77: $ff
    inc de                                        ; $5b78: $13
    ld a, [hl+]                                   ; $5b79: $2a
    db $10                                        ; $5b7a: $10
    jp nc, $9f74                                  ; $5b7b: $d2 $74 $9f

    inc b                                         ; $5b7e: $04
    call nc, Call_000_2316                        ; $5b7f: $d4 $16 $23
    nop                                           ; $5b82: $00
    or $04                                        ; $5b83: $f6 $04
    sub c                                         ; $5b85: $91
    ld [hl], l                                    ; $5b86: $75
    db $fd                                        ; $5b87: $fd
    ld a, [bc]                                    ; $5b88: $0a
    ld hl, $ad04                                  ; $5b89: $21 $04 $ad
    dec [hl]                                      ; $5b8c: $35
    rst $38                                       ; $5b8d: $ff
    ld a, a                                       ; $5b8e: $7f
    nop                                           ; $5b8f: $00
    jr nz, jr_0b7_5b92                            ; $5b90: $20 $00

jr_0b7_5b92:
    inc e                                         ; $5b92: $1c
    ld e, a                                       ; $5b93: $5f
    ld bc, $12ff                                  ; $5b94: $01 $ff $12
    add hl, bc                                    ; $5b97: $09
    nop                                           ; $5b98: $00
    ld c, c                                       ; $5b99: $49
    inc b                                         ; $5b9a: $04
    dec a                                         ; $5b9b: $3d
    ld a, [de]                                    ; $5b9c: $1a
    sbc e                                         ; $5b9d: $9b
    nop                                           ; $5b9e: $00
    rst $38                                       ; $5b9f: $ff
    ld c, d                                       ; $5ba0: $4a
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    cp b                                          ; $5ba3: $b8
    dec [hl]                                      ; $5ba4: $35
    ccf                                           ; $5ba5: $3f
    ld e, e                                       ; $5ba6: $5b
    and a                                         ; $5ba7: $a7
    jr jr_0b7_5bf2                                ; $5ba8: $18 $48

    inc b                                         ; $5baa: $04
    sub [hl]                                      ; $5bab: $96
    ld [hl], l                                    ; $5bac: $75
    ld b, [hl]                                    ; $5bad: $46
    ld b, b                                       ; $5bae: $40
    ld a, a                                       ; $5baf: $7f
    ld a, a                                       ; $5bb0: $7f
    dec c                                         ; $5bb1: $0d
    nop                                           ; $5bb2: $00
    ld l, a                                       ; $5bb3: $6f
    ld c, $05                                     ; $5bb4: $0e $05
    add hl, hl                                    ; $5bb6: $29
    ei                                            ; $5bb7: $fb
    dec de                                        ; $5bb8: $1b
    ld l, c                                       ; $5bb9: $69
    ld [$067e], sp                                ; $5bba: $08 $7e $06
    ld a, [bc]                                    ; $5bbd: $0a
    ld e, l                                       ; $5bbe: $5d
    rst $38                                       ; $5bbf: $ff
    ld [hl], e                                    ; $5bc0: $73
    ld [bc], a                                    ; $5bc1: $02
    nop                                           ; $5bc2: $00
    rst $38                                       ; $5bc3: $ff
    ld a, a                                       ; $5bc4: $7f
    nop                                           ; $5bc5: $00
    jr nz, @-$51                                  ; $5bc6: $20 $ad

    dec [hl]                                      ; $5bc8: $35
    inc b                                         ; $5bc9: $04
    nop                                           ; $5bca: $00
    rst $38                                       ; $5bcb: $ff
    nop                                           ; $5bcc: $00
    rst $38                                       ; $5bcd: $ff
    ld c, $00                                     ; $5bce: $0e $00
    jr nz, jr_0b7_5c3e                            ; $5bd0: $20 $6c

    inc b                                         ; $5bd2: $04
    ld e, $01                                     ; $5bd3: $1e $01
    rst $38                                       ; $5bd5: $ff
    ld c, d                                       ; $5bd6: $4a

jr_0b7_5bd7:
    ei                                            ; $5bd7: $fb
    dec d                                         ; $5bd8: $15
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    or $29                                        ; $5bdb: $f6 $29
    cp a                                          ; $5bdd: $bf
    ld a, $9f                                     ; $5bde: $3e $9f
    ld h, e                                       ; $5be0: $63
    ld h, l                                       ; $5be1: $65
    inc d                                         ; $5be2: $14
    ld a, [hl]                                    ; $5be3: $7e
    dec hl                                        ; $5be4: $2b
    cp h                                          ; $5be5: $bc
    halt                                          ; $5be6: $76
    ld d, $00                                     ; $5be7: $16 $00
    add hl, hl                                    ; $5be9: $29
    nop                                           ; $5bea: $00
    inc a                                         ; $5beb: $3c
    ld a, [hl]                                    ; $5bec: $7e
    and a                                         ; $5bed: $a7
    ld c, b                                       ; $5bee: $48
    ld d, l                                       ; $5bef: $55
    rla                                           ; $5bf0: $17
    ld b, e                                       ; $5bf1: $43

jr_0b7_5bf2:
    ld [$0a5c], sp                                ; $5bf2: $08 $5c $0a
    db $f4                                        ; $5bf5: $f4
    ld a, l                                       ; $5bf6: $7d
    ld [$035d], sp                                ; $5bf7: $08 $5d $03
    nop                                           ; $5bfa: $00
    cp e                                          ; $5bfb: $bb
    ld c, $ff                                     ; $5bfc: $0e $ff
    ld a, a                                       ; $5bfe: $7f
    nop                                           ; $5bff: $00
    jr nz, jr_0b7_5c02                            ; $5c00: $20 $00

jr_0b7_5c02:
    jr nz, @-$01                                  ; $5c02: $20 $fd

    nop                                           ; $5c04: $00
    ld e, $13                                     ; $5c05: $1e $13
    add hl, bc                                    ; $5c07: $09
    nop                                           ; $5c08: $00
    rlca                                          ; $5c09: $07
    nop                                           ; $5c0a: $00
    ld [hl-], a                                   ; $5c0b: $32
    dec d                                         ; $5c0c: $15
    ld e, a                                       ; $5c0d: $5f
    ld bc, $1a7e                                  ; $5c0e: $01 $7e $1a
    inc hl                                        ; $5c11: $23
    nop                                           ; $5c12: $00
    sub l                                         ; $5c13: $95
    ld hl, $369e                                  ; $5c14: $21 $9e $36
    dec c                                         ; $5c17: $0d
    ld de, $0001                                  ; $5c18: $11 $01 $00
    ld a, [$ff25]                                 ; $5c1b: $fa $25 $ff
    inc hl                                        ; $5c1e: $23
    cp $57                                        ; $5c1f: $fe $57
    dec h                                         ; $5c21: $25
    ld [$6db4], sp                                ; $5c22: $08 $b4 $6d
    ld a, [hl]                                    ; $5c25: $7e
    inc b                                         ; $5c26: $04
    rst $18                                       ; $5c27: $df
    ld [de], a                                    ; $5c28: $12
    ld [hl+], a                                   ; $5c29: $22
    db $10                                        ; $5c2a: $10
    cp e                                          ; $5c2b: $bb
    ld h, e                                       ; $5c2c: $63
    rst $18                                       ; $5c2d: $df
    ld c, $ab                                     ; $5c2e: $0e $ab
    db $10                                        ; $5c30: $10
    inc b                                         ; $5c31: $04
    nop                                           ; $5c32: $00
    ld a, [hl]                                    ; $5c33: $7e
    add hl, bc                                    ; $5c34: $09
    nop                                           ; $5c35: $00
    jr nz, jr_0b7_5bd7                            ; $5c36: $20 $9f

    ld c, $00                                     ; $5c38: $0e $00
    jr nz, @+$01                                  ; $5c3a: $20 $ff

    nop                                           ; $5c3c: $00
    add hl, hl                                    ; $5c3d: $29

jr_0b7_5c3e:
    nop                                           ; $5c3e: $00
    ccf                                           ; $5c3f: $3f
    ld a, [bc]                                    ; $5c40: $0a
    ld c, h                                       ; $5c41: $4c
    nop                                           ; $5c42: $00
    sbc a                                         ; $5c43: $9f
    inc de                                        ; $5c44: $13
    ccf                                           ; $5c45: $3f
    ld bc, $00d6                                  ; $5c46: $01 $d6 $00
    ld [$1b00], sp                                ; $5c49: $08 $00 $1b
    ld l, $7f                                     ; $5c4c: $2e $7f
    ld [hl-], a                                   ; $5c4e: $32
    rra                                           ; $5c4f: $1f
    ld b, a                                       ; $5c50: $47
    ld b, d                                       ; $5c51: $42
    nop                                           ; $5c52: $00
    db $fc                                        ; $5c53: $fc
    rra                                           ; $5c54: $1f
    ld sp, $9000                                  ; $5c55: $31 $00 $90
    dec d                                         ; $5c58: $15
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    sub e                                         ; $5c5b: $93
    dec c                                         ; $5c5c: $0d
    ld e, $17                                     ; $5c5d: $1e $17
    ld b, l                                       ; $5c5f: $45
    inc h                                         ; $5c60: $24
    ld b, d                                       ; $5c61: $42
    ld [$0dbb], sp                                ; $5c62: $08 $bb $0d
    ld d, a                                       ; $5c65: $57
    ld a, [hl]                                    ; $5c66: $7e
    ccf                                           ; $5c67: $3f
    rrca                                          ; $5c68: $0f
    nop                                           ; $5c69: $00
    inc e                                         ; $5c6a: $1c
    rra                                           ; $5c6b: $1f
    add hl, bc                                    ; $5c6c: $09
    ld a, [bc]                                    ; $5c6d: $0a
    nop                                           ; $5c6e: $00
    ld e, $0e                                     ; $5c6f: $1e $0e
    nop                                           ; $5c71: $00
    nop                                           ; $5c72: $00
    cp l                                          ; $5c73: $bd
    ld [hl], a                                    ; $5c74: $77
    add hl, bc                                    ; $5c75: $09
    nop                                           ; $5c76: $00
    nop                                           ; $5c77: $00
    jr nz, jr_0b7_5c83                            ; $5c78: $20 $09

    nop                                           ; $5c7a: $00
    rst $18                                       ; $5c7b: $df
    nop                                           ; $5c7c: $00
    ld a, a                                       ; $5c7d: $7f
    ld a, [bc]                                    ; $5c7e: $0a
    sbc l                                         ; $5c7f: $9d
    dec b                                         ; $5c80: $05
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00

jr_0b7_5c83:
    dec e                                         ; $5c83: $1d
    ld a, [hl+]                                   ; $5c84: $2a
    ld l, e                                       ; $5c85: $6b
    ld [$1377], sp                                ; $5c86: $08 $77 $13
    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    cpl                                           ; $5c8b: $2f
    nop                                           ; $5c8c: $00
    db $eb                                        ; $5c8d: $eb
    add hl, bc                                    ; $5c8e: $09
    inc e                                         ; $5c8f: $1c
    nop                                           ; $5c90: $00
    ld [bc], a                                    ; $5c91: $02
    ld [$001b], sp                                ; $5c92: $08 $1b $00
    ld e, a                                       ; $5c95: $5f
    rra                                           ; $5c96: $1f
    sbc b                                         ; $5c97: $98
    dec b                                         ; $5c98: $05
    ld b, h                                       ; $5c99: $44
    ld [$1d93], sp                                ; $5c9a: $08 $93 $1d
    rst $18                                       ; $5c9d: $df
    ld a, [hl-]                                   ; $5c9e: $3a
    ld e, $04                                     ; $5c9f: $1e $04
    nop                                           ; $5ca1: $00
    jr nz, jr_0b7_5cff                            ; $5ca2: $20 $5b

    add hl, bc                                    ; $5ca4: $09
    sbc a                                         ; $5ca5: $9f
    rrca                                          ; $5ca6: $0f
    ld a, [bc]                                    ; $5ca7: $0a
    nop                                           ; $5ca8: $00
    nop                                           ; $5ca9: $00
    nop                                           ; $5caa: $00
    rst $38                                       ; $5cab: $ff
    ld a, a                                       ; $5cac: $7f
    nop                                           ; $5cad: $00
    jr nz, @+$79                                  ; $5cae: $20 $77

    inc de                                        ; $5cb0: $13
    rlca                                          ; $5cb1: $07
    nop                                           ; $5cb2: $00
    jp c, $5f15                                   ; $5cb3: $da $15 $5f

    inc de                                        ; $5cb6: $13
    sub $00                                       ; $5cb7: $d6 $00
    ld h, l                                       ; $5cb9: $65
    inc b                                         ; $5cba: $04
    db $dd                                        ; $5cbb: $dd
    dec c                                         ; $5cbc: $0d
    rst $38                                       ; $5cbd: $ff
    ld a, e                                       ; $5cbe: $7b
    cp h                                          ; $5cbf: $bc
    rra                                           ; $5cc0: $1f
    nop                                           ; $5cc1: $00
    ld [$1f59], sp                                ; $5cc2: $08 $59 $1f
    cp l                                          ; $5cc5: $bd
    ld l, e                                       ; $5cc6: $6b
    call z, Call_000_0004                         ; $5cc7: $cc $04 $00
    nop                                           ; $5cca: $00
    sbc b                                         ; $5ccb: $98
    inc b                                         ; $5ccc: $04
    rst $38                                       ; $5ccd: $ff
    dec de                                        ; $5cce: $1b
    ld c, d                                       ; $5ccf: $4a
    nop                                           ; $5cd0: $00
    ld h, l                                       ; $5cd1: $65
    ld [$365b], sp                                ; $5cd2: $08 $5b $36
    ld a, $57                                     ; $5cd5: $3e $57
    ld [hl], b                                    ; $5cd7: $70
    ld hl, $1c00                                  ; $5cd8: $21 $00 $1c
    call c, $3a09                                 ; $5cdb: $dc $09 $3a
    ld a, a                                       ; $5cde: $7f
    ld a, [bc]                                    ; $5cdf: $0a
    nop                                           ; $5ce0: $00
    nop                                           ; $5ce1: $00
    nop                                           ; $5ce2: $00
    rst $38                                       ; $5ce3: $ff
    ld a, a                                       ; $5ce4: $7f
    nop                                           ; $5ce5: $00
    jr nz, jr_0b7_5cf1                            ; $5ce6: $20 $09

    nop                                           ; $5ce8: $00
    rlca                                          ; $5ce9: $07
    nop                                           ; $5cea: $00
    rst $28                                       ; $5ceb: $ef
    dec a                                         ; $5cec: $3d
    ld a, $0a                                     ; $5ced: $3e $0a
    rst $18                                       ; $5cef: $df
    inc de                                        ; $5cf0: $13

jr_0b7_5cf1:
    ld h, $00                                     ; $5cf1: $26 $00
    rst $38                                       ; $5cf3: $ff
    inc hl                                        ; $5cf4: $23
    ld a, c                                       ; $5cf5: $79
    inc b                                         ; $5cf6: $04
    adc h                                         ; $5cf7: $8c
    ld bc, $1001                                  ; $5cf8: $01 $01 $10
    cp h                                          ; $5cfb: $bc
    dec de                                        ; $5cfc: $1b
    dec c                                         ; $5cfd: $0d
    dec a                                         ; $5cfe: $3d

jr_0b7_5cff:
    ld h, l                                       ; $5cff: $65
    inc d                                         ; $5d00: $14
    nop                                           ; $5d01: $00
    ld [$1b7a], sp                                ; $5d02: $08 $7a $1b
    rst $38                                       ; $5d05: $ff
    ld a, a                                       ; $5d06: $7f
    and [hl]                                      ; $5d07: $a6
    nop                                           ; $5d08: $00
    rlca                                          ; $5d09: $07

jr_0b7_5d0a:
    nop                                           ; $5d0a: $00
    db $db                                        ; $5d0b: $db
    ld hl, $3edf                                  ; $5d0c: $21 $df $3e
    rst $38                                       ; $5d0f: $ff
    dec de                                        ; $5d10: $1b
    ld [$d300], sp                                ; $5d11: $08 $00 $d3
    ld a, l                                       ; $5d14: $7d
    inc a                                         ; $5d15: $3c
    ld a, [bc]                                    ; $5d16: $0a
    nop                                           ; $5d17: $00
    jr nz, jr_0b7_5d1a                            ; $5d18: $20 $00

jr_0b7_5d1a:
    jr jr_0b7_5d25                                ; $5d1a: $18 $09

    nop                                           ; $5d1c: $00
    inc sp                                        ; $5d1d: $33
    ld bc, $2000                                  ; $5d1e: $01 $00 $20
    ld [$d100], sp                                ; $5d21: $08 $00 $d1
    dec h                                         ; $5d24: $25

jr_0b7_5d25:
    ld a, l                                       ; $5d25: $7d
    ld bc, $131f                                  ; $5d26: $01 $1f $13
    ld b, l                                       ; $5d29: $45
    jr jr_0b7_5d79                                ; $5d2a: $18 $4d

    ld h, h                                       ; $5d2c: $64
    rst $28                                       ; $5d2d: $ef
    dec a                                         ; $5d2e: $3d
    add hl, bc                                    ; $5d2f: $09
    nop                                           ; $5d30: $00
    ld [hl+], a                                   ; $5d31: $22
    jr jr_0b7_5d63                                ; $5d32: $18 $2f

    ld [hl], b                                    ; $5d34: $70
    ld [$1448], sp                                ; $5d35: $08 $48 $14
    ld [hl], l                                    ; $5d38: $75
    ld h, l                                       ; $5d39: $65
    inc d                                         ; $5d3a: $14
    sub c                                         ; $5d3b: $91
    ld b, $d8                                     ; $5d3c: $06 $d8
    ld l, l                                       ; $5d3e: $6d
    rst $38                                       ; $5d3f: $ff
    ld c, a                                       ; $5d40: $4f
    nop                                           ; $5d41: $00
    ld [$0edf], sp                                ; $5d42: $08 $df $0e
    db $d3                                        ; $5d45: $d3
    nop                                           ; $5d46: $00
    ld [$0000], sp                                ; $5d47: $08 $00 $00
    jr nz, jr_0b7_5d0a                            ; $5d4a: $20 $be

    ld [$0e7b], sp                                ; $5d4c: $08 $7b $0e
    ld a, [bc]                                    ; $5d4f: $0a
    nop                                           ; $5d50: $00
    nop                                           ; $5d51: $00
    nop                                           ; $5d52: $00
    nop                                           ; $5d53: $00
    jr nz, jr_0b7_5d5f                            ; $5d54: $20 $09

    nop                                           ; $5d56: $00
    add hl, bc                                    ; $5d57: $09
    nop                                           ; $5d58: $00
    nop                                           ; $5d59: $00
    nop                                           ; $5d5a: $00
    rst $28                                       ; $5d5b: $ef
    dec a                                         ; $5d5c: $3d
    rst $38                                       ; $5d5d: $ff
    ld a, a                                       ; $5d5e: $7f

jr_0b7_5d5f:
    add hl, bc                                    ; $5d5f: $09
    nop                                           ; $5d60: $00
    ld h, l                                       ; $5d61: $65
    inc d                                         ; $5d62: $14

jr_0b7_5d63:
    sub e                                         ; $5d63: $93
    ld a, b                                       ; $5d64: $78
    ld l, l                                       ; $5d65: $6d
    dec a                                         ; $5d66: $3d
    ld [hl], l                                    ; $5d67: $75
    ld l, l                                       ; $5d68: $6d
    sub e                                         ; $5d69: $93
    ld a, h                                       ; $5d6a: $7c
    or $6d                                        ; $5d6b: $f6 $6d
    ld a, b                                       ; $5d6d: $78
    ld [hl], d                                    ; $5d6e: $72
    inc sp                                        ; $5d6f: $33
    ld [hl], c                                    ; $5d70: $71
    ld hl, $7100                                  ; $5d71: $21 $00 $71
    ld [hl], b                                    ; $5d74: $70
    call Call_000_0601                            ; $5d75: $cd $01 $06
    inc [hl]                                      ; $5d78: $34

jr_0b7_5d79:
    daa                                           ; $5d79: $27
    nop                                           ; $5d7a: $00
    sbc l                                         ; $5d7b: $9d
    add hl, bc                                    ; $5d7c: $09
    ld a, a                                       ; $5d7d: $7f
    inc de                                        ; $5d7e: $13
    ld [de], a                                    ; $5d7f: $12
    nop                                           ; $5d80: $00
    nop                                           ; $5d81: $00
    jr nz, jr_0b7_5dc1                            ; $5d82: $20 $3d

    inc b                                         ; $5d84: $04
    sbc h                                         ; $5d85: $9c
    add hl, bc                                    ; $5d86: $09
    add hl, bc                                    ; $5d87: $09
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    nop                                           ; $5d8a: $00
    nop                                           ; $5d8b: $00
    jr nz, @+$6f                                  ; $5d8c: $20 $6d

    dec a                                         ; $5d8e: $3d
    ld [hl], l                                    ; $5d8f: $75
    ld l, l                                       ; $5d90: $6d
    nop                                           ; $5d91: $00
    nop                                           ; $5d92: $00
    rst $28                                       ; $5d93: $ef
    dec a                                         ; $5d94: $3d
    rst $38                                       ; $5d95: $ff

jr_0b7_5d96:
    ld a, a                                       ; $5d96: $7f
    ld h, l                                       ; $5d97: $65
    inc d                                         ; $5d98: $14
    ld b, [hl]                                    ; $5d99: $46
    inc h                                         ; $5d9a: $24
    jp nc, $b570                                  ; $5d9b: $d2 $70 $b5

    ld l, c                                       ; $5d9e: $69
    xor l                                         ; $5d9f: $ad
    ld c, h                                       ; $5da0: $4c
    ld hl, $7004                                  ; $5da1: $21 $04 $70
    ld d, c                                       ; $5da4: $51
    rla                                           ; $5da5: $17
    ld l, [hl]                                    ; $5da6: $6e
    sbc d                                         ; $5da7: $9a
    halt                                          ; $5da8: $76
    ld b, l                                       ; $5da9: $45

jr_0b7_5daa:
    nop                                           ; $5daa: $00
    or [hl]                                       ; $5dab: $b6
    ld [hl], l                                    ; $5dac: $75
    sbc $08                                       ; $5dad: $de $08
    rst $38                                       ; $5daf: $ff
    dec de                                        ; $5db0: $1b
    ld b, $00                                     ; $5db1: $06 $00
    cpl                                           ; $5db3: $2f
    ld c, $51                                     ; $5db4: $0e $51
    nop                                           ; $5db6: $00
    cp a                                          ; $5db7: $bf
    ld c, $00                                     ; $5db8: $0e $00
    jr nz, jr_0b7_5dd3                            ; $5dba: $20 $17

    add hl, bc                                    ; $5dbc: $09
    ld e, a                                       ; $5dbd: $5f
    inc de                                        ; $5dbe: $13
    add hl, bc                                    ; $5dbf: $09
    nop                                           ; $5dc0: $00

jr_0b7_5dc1:
    nop                                           ; $5dc1: $00
    jr nz, jr_0b7_5d96                            ; $5dc2: $20 $d2

    ld [hl], b                                    ; $5dc4: $70
    or l                                          ; $5dc5: $b5
    ld l, c                                       ; $5dc6: $69
    xor l                                         ; $5dc7: $ad
    ld c, h                                       ; $5dc8: $4c
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    rst $38                                       ; $5dcb: $ff
    ld a, a                                       ; $5dcc: $7f
    adc $39                                       ; $5dcd: $ce $39
    ld h, l                                       ; $5dcf: $65
    inc d                                         ; $5dd0: $14
    ld b, e                                       ; $5dd1: $43
    db $10                                        ; $5dd2: $10

jr_0b7_5dd3:
    ld l, $6c                                     ; $5dd3: $2e $6c
    inc [hl]                                      ; $5dd5: $34
    ld [hl], c                                    ; $5dd6: $71
    ld b, $34                                     ; $5dd7: $06 $34
    ld [bc], a                                    ; $5dd9: $02
    db $10                                        ; $5dda: $10
    adc $54                                       ; $5ddb: $ce $54
    sub l                                         ; $5ddd: $95
    ld l, l                                       ; $5dde: $6d
    ld e, b                                       ; $5ddf: $58
    ld [hl], d                                    ; $5de0: $72
    ld hl, $5300                                  ; $5de1: $21 $00 $53
    dec b                                         ; $5de4: $05
    sub l                                         ; $5de5: $95
    ld l, c                                       ; $5de6: $69
    ccf                                           ; $5de7: $3f
    ld c, $00                                     ; $5de8: $0e $00
    inc b                                         ; $5dea: $04
    or [hl]                                       ; $5deb: $b6
    add hl, bc                                    ; $5dec: $09
    rst $38                                       ; $5ded: $ff
    rra                                           ; $5dee: $1f
    ld c, $00                                     ; $5def: $0e $00
    nop                                           ; $5df1: $00
    jr nz, jr_0b7_5daa                            ; $5df2: $20 $b6

    add hl, bc                                    ; $5df4: $09
    rst $38                                       ; $5df5: $ff
    rra                                           ; $5df6: $1f
    ld c, $00                                     ; $5df7: $0e $00
    nop                                           ; $5df9: $00
    jr nz, jr_0b7_5e2a                            ; $5dfa: $20 $2e

    ld l, h                                       ; $5dfc: $6c
    inc [hl]                                      ; $5dfd: $34
    ld [hl], c                                    ; $5dfe: $71
    ld b, $34                                     ; $5dff: $06 $34
    nop                                           ; $5e01: $00
    nop                                           ; $5e02: $00
    adc $39                                       ; $5e03: $ce $39
    rst $38                                       ; $5e05: $ff
    ld a, a                                       ; $5e06: $7f
    nop                                           ; $5e07: $00
    jr nz, jr_0b7_5e2c                            ; $5e08: $20 $22

    ld [$706f], sp                                ; $5e0a: $08 $6f $70
    xor l                                         ; $5e0d: $ad
    dec [hl]                                      ; $5e0e: $35
    ld e, b                                       ; $5e0f: $58
    ld l, [hl]                                    ; $5e10: $6e
    ld [hl+], a                                   ; $5e11: $22
    ld [$7515], sp                                ; $5e12: $08 $15 $75
    xor h                                         ; $5e15: $ac
    ld b, h                                       ; $5e16: $44
    sbc c                                         ; $5e17: $99
    ld [hl], d                                    ; $5e18: $72
    ld hl, $0f08                                  ; $5e19: $21 $08 $0f
    ld d, c                                       ; $5e1c: $51
    sub a                                         ; $5e1d: $97
    dec b                                         ; $5e1e: $05
    or e                                          ; $5e1f: $b3
    ld a, h                                       ; $5e20: $7c
    jr nz, jr_0b7_5e2f                            ; $5e21: $20 $0c

    db $10                                        ; $5e23: $10
    ld b, $6b                                     ; $5e24: $06 $6b
    nop                                           ; $5e26: $00
    inc a                                         ; $5e27: $3c
    inc de                                        ; $5e28: $13
    nop                                           ; $5e29: $00

jr_0b7_5e2a:
    jr nz, jr_0b7_5e3c                            ; $5e2a: $20 $10

jr_0b7_5e2c:
    ld b, $6b                                     ; $5e2c: $06 $6b
    nop                                           ; $5e2e: $00

jr_0b7_5e2f:
    inc a                                         ; $5e2f: $3c
    inc de                                        ; $5e30: $13
    nop                                           ; $5e31: $00
    jr nz, @+$71                                  ; $5e32: $20 $6f

    ld [hl], b                                    ; $5e34: $70
    xor l                                         ; $5e35: $ad
    dec [hl]                                      ; $5e36: $35
    ld e, b                                       ; $5e37: $58
    ld l, [hl]                                    ; $5e38: $6e
    nop                                           ; $5e39: $00
    nop                                           ; $5e3a: $00
    rst $38                                       ; $5e3b: $ff

jr_0b7_5e3c:
    ld a, a                                       ; $5e3c: $7f
    xor l                                         ; $5e3d: $ad
    dec [hl]                                      ; $5e3e: $35
    nop                                           ; $5e3f: $00
    jr nz, jr_0b7_5e42                            ; $5e40: $20 $00

jr_0b7_5e42:
    nop                                           ; $5e42: $00
    ld l, $6c                                     ; $5e43: $2e $6c
    xor l                                         ; $5e45: $ad
    dec [hl]                                      ; $5e46: $35
    or $6d                                        ; $5e47: $f6 $6d
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rst $38                                       ; $5e4b: $ff
    ld a, a                                       ; $5e4c: $7f
    ld l, e                                       ; $5e4d: $6b
    nop                                           ; $5e4e: $00
    inc a                                         ; $5e4f: $3c
    inc de                                        ; $5e50: $13
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    rst $38                                       ; $5e53: $ff
    ld a, a                                       ; $5e54: $7f

jr_0b7_5e55:
    ld l, e                                       ; $5e55: $6b
    nop                                           ; $5e56: $00
    inc a                                         ; $5e57: $3c
    inc de                                        ; $5e58: $13
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00
    rst $38                                       ; $5e5b: $ff
    ld a, a                                       ; $5e5c: $7f
    nop                                           ; $5e5d: $00
    jr nz, jr_0b7_5e9c                            ; $5e5e: $20 $3c

    inc de                                        ; $5e60: $13
    nop                                           ; $5e61: $00
    jr nz, @+$01                                  ; $5e62: $20 $ff

    ld a, a                                       ; $5e64: $7f
    nop                                           ; $5e65: $00
    jr nz, jr_0b7_5ea4                            ; $5e66: $20 $3c

    inc de                                        ; $5e68: $13
    nop                                           ; $5e69: $00
    jr nz, jr_0b7_5e9a                            ; $5e6a: $20 $2e

    ld l, h                                       ; $5e6c: $6c
    xor l                                         ; $5e6d: $ad

jr_0b7_5e6e:
    dec [hl]                                      ; $5e6e: $35
    or $6d                                        ; $5e6f: $f6 $6d
    nop                                           ; $5e71: $00
    nop                                           ; $5e72: $00
    rst $38                                       ; $5e73: $ff
    ld a, a                                       ; $5e74: $7f
    nop                                           ; $5e75: $00

jr_0b7_5e76:
    jr nz, jr_0b7_5e6e                            ; $5e76: $20 $f6

    ld l, l                                       ; $5e78: $6d
    nop                                           ; $5e79: $00
    nop                                           ; $5e7a: $00
    rst $38                                       ; $5e7b: $ff
    ld a, a                                       ; $5e7c: $7f
    nop                                           ; $5e7d: $00
    jr nz, jr_0b7_5e76                            ; $5e7e: $20 $f6

    ld l, l                                       ; $5e80: $6d
    nop                                           ; $5e81: $00
    nop                                           ; $5e82: $00
    nop                                           ; $5e83: $00
    jr nz, jr_0b7_5e86                            ; $5e84: $20 $00

jr_0b7_5e86:
    jr nz, jr_0b7_5ec4                            ; $5e86: $20 $3c

    inc de                                        ; $5e88: $13
    nop                                           ; $5e89: $00
    nop                                           ; $5e8a: $00
    nop                                           ; $5e8b: $00
    jr nz, jr_0b7_5e8e                            ; $5e8c: $20 $00

jr_0b7_5e8e:
    jr nz, jr_0b7_5ecc                            ; $5e8e: $20 $3c

    inc de                                        ; $5e90: $13
    nop                                           ; $5e91: $00
    nop                                           ; $5e92: $00
    nop                                           ; $5e93: $00
    jr nz, jr_0b7_5e96                            ; $5e94: $20 $00

jr_0b7_5e96:
    jr nz, jr_0b7_5ed4                            ; $5e96: $20 $3c

    inc de                                        ; $5e98: $13
    nop                                           ; $5e99: $00

jr_0b7_5e9a:
    jr nz, jr_0b7_5e9c                            ; $5e9a: $20 $00

jr_0b7_5e9c:
    jr nz, jr_0b7_5e9e                            ; $5e9c: $20 $00

jr_0b7_5e9e:
    jr nz, jr_0b7_5edc                            ; $5e9e: $20 $3c

    inc de                                        ; $5ea0: $13
    nop                                           ; $5ea1: $00
    jr nz, jr_0b7_5ea4                            ; $5ea2: $20 $00

jr_0b7_5ea4:
    jr nz, jr_0b7_5ea6                            ; $5ea4: $20 $00

jr_0b7_5ea6:
    jr nz, @+$6a                                  ; $5ea6: $20 $68

    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    jr nz, jr_0b7_5eac                            ; $5eaa: $20 $00

jr_0b7_5eac:
    jr nz, jr_0b7_5eae                            ; $5eac: $20 $00

jr_0b7_5eae:
    jr nz, jr_0b7_5f18                            ; $5eae: $20 $68

    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    jr nz, jr_0b7_5eb4                            ; $5eb2: $20 $00

jr_0b7_5eb4:
    jr nz, jr_0b7_5eb6                            ; $5eb4: $20 $00

jr_0b7_5eb6:
    jr nz, jr_0b7_5f20                            ; $5eb6: $20 $68

    nop                                           ; $5eb8: $00
    nop                                           ; $5eb9: $00
    nop                                           ; $5eba: $00
    rst $38                                       ; $5ebb: $ff
    ld a, a                                       ; $5ebc: $7f
    nop                                           ; $5ebd: $00
    jr nz, jr_0b7_5ec0                            ; $5ebe: $20 $00

jr_0b7_5ec0:
    jr nz, jr_0b7_5ec2                            ; $5ec0: $20 $00

jr_0b7_5ec2:
    jr nz, jr_0b7_5e55                            ; $5ec2: $20 $91

jr_0b7_5ec4:
    ld d, d                                       ; $5ec4: $52
    ld a, c                                       ; $5ec5: $79
    dec b                                         ; $5ec6: $05
    inc hl                                        ; $5ec7: $23
    nop                                           ; $5ec8: $00
    ld hl, $9c00                                  ; $5ec9: $21 $00 $9c

jr_0b7_5ecc:
    add hl, bc                                    ; $5ecc: $09
    cp e                                          ; $5ecd: $bb
    dec de                                        ; $5ece: $1b
    nop                                           ; $5ecf: $00
    jr jr_0b7_5ed2                                ; $5ed0: $18 $00

jr_0b7_5ed2:
    nop                                           ; $5ed2: $00
    nop                                           ; $5ed3: $00

jr_0b7_5ed4:
    inc d                                         ; $5ed4: $14
    nop                                           ; $5ed5: $00
    jr nz, jr_0b7_5ed8                            ; $5ed6: $20 $00

jr_0b7_5ed8:
    jr jr_0b7_5eda                                ; $5ed8: $18 $00

jr_0b7_5eda:
    jr nz, jr_0b7_5edc                            ; $5eda: $20 $00

jr_0b7_5edc:
    jr nz, jr_0b7_5ede                            ; $5edc: $20 $00

jr_0b7_5ede:
    jr nz, jr_0b7_5f48                            ; $5ede: $20 $68

    nop                                           ; $5ee0: $00
    nop                                           ; $5ee1: $00
    jr nz, jr_0b7_5ee4                            ; $5ee2: $20 $00

jr_0b7_5ee4:
    jr nz, jr_0b7_5ee6                            ; $5ee4: $20 $00

jr_0b7_5ee6:
    jr nz, jr_0b7_5f50                            ; $5ee6: $20 $68

    nop                                           ; $5ee8: $00
    nop                                           ; $5ee9: $00
    jr nz, jr_0b7_5eec                            ; $5eea: $20 $00

jr_0b7_5eec:
    jr nz, jr_0b7_5eee                            ; $5eec: $20 $00

jr_0b7_5eee:
    jr nz, jr_0b7_5f58                            ; $5eee: $20 $68

    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    nop                                           ; $5ef2: $00
    rst $38                                       ; $5ef3: $ff
    ld a, a                                       ; $5ef4: $7f
    nop                                           ; $5ef5: $00
    jr nz, jr_0b7_5ef8                            ; $5ef6: $20 $00

jr_0b7_5ef8:
    jr jr_0b7_5efa                                ; $5ef8: $18 $00

jr_0b7_5efa:
    ld [$051c], sp                                ; $5efa: $08 $1c $05
    xor e                                         ; $5efd: $ab
    inc c                                         ; $5efe: $0c
    ccf                                           ; $5eff: $3f
    ld [bc], a                                    ; $5f00: $02
    nop                                           ; $5f01: $00
    nop                                           ; $5f02: $00
    dec sp                                        ; $5f03: $3b
    dec c                                         ; $5f04: $0d
    reti                                          ; $5f05: $d9


    dec de                                        ; $5f06: $1b
    xor h                                         ; $5f07: $ac
    inc b                                         ; $5f08: $04
    nop                                           ; $5f09: $00
    ld [$4f79], sp                                ; $5f0a: $08 $79 $4f
    adc b                                         ; $5f0d: $88
    ld [$1c00], sp                                ; $5f0e: $08 $00 $1c
    nop                                           ; $5f11: $00
    jr nz, jr_0b7_5f14                            ; $5f12: $20 $00

jr_0b7_5f14:
    jr nz, jr_0b7_5f16                            ; $5f14: $20 $00

jr_0b7_5f16:
    jr nz, @+$6a                                  ; $5f16: $20 $68

jr_0b7_5f18:
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    jr nz, jr_0b7_5f1c                            ; $5f1a: $20 $00

jr_0b7_5f1c:
    jr nz, jr_0b7_5f1e                            ; $5f1c: $20 $00

jr_0b7_5f1e:
    jr nz, jr_0b7_5f88                            ; $5f1e: $20 $68

jr_0b7_5f20:
    nop                                           ; $5f20: $00
    nop                                           ; $5f21: $00
    nop                                           ; $5f22: $00
    rst $38                                       ; $5f23: $ff
    ld a, a                                       ; $5f24: $7f
    nop                                           ; $5f25: $00
    jr nz, jr_0b7_5f90                            ; $5f26: $20 $68

    nop                                           ; $5f28: $00
    nop                                           ; $5f29: $00
    nop                                           ; $5f2a: $00
    ld [hl], e                                    ; $5f2b: $73
    ld c, [hl]                                    ; $5f2c: $4e
    rst $38                                       ; $5f2d: $ff
    ld a, a                                       ; $5f2e: $7f
    ld hl, $2104                                  ; $5f2f: $21 $04 $21
    inc b                                         ; $5f32: $04
    ld a, [hl-]                                   ; $5f33: $3a
    ld bc, $008a                                  ; $5f34: $01 $8a $00
    cp $01                                        ; $5f37: $fe $01
    ld bc, $1200                                  ; $5f39: $01 $00 $12
    ld h, a                                       ; $5f3c: $67
    rst $18                                       ; $5f3d: $df
    dec b                                         ; $5f3e: $05
    ld h, a                                       ; $5f3f: $67
    nop                                           ; $5f40: $00
    nop                                           ; $5f41: $00
    nop                                           ; $5f42: $00
    rst $38                                       ; $5f43: $ff
    rla                                           ; $5f44: $17
    ld a, d                                       ; $5f45: $7a
    ld d, a                                       ; $5f46: $57
    nop                                           ; $5f47: $00

jr_0b7_5f48:
    jr nz, jr_0b7_5f4a                            ; $5f48: $20 $00

jr_0b7_5f4a:
    jr nz, @+$01                                  ; $5f4a: $20 $ff

    ld a, a                                       ; $5f4c: $7f
    nop                                           ; $5f4d: $00
    jr nz, jr_0b7_5fb8                            ; $5f4e: $20 $68

jr_0b7_5f50:
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    jr nz, @+$01                                  ; $5f52: $20 $ff

    ld a, a                                       ; $5f54: $7f
    nop                                           ; $5f55: $00
    jr nz, jr_0b7_5fc0                            ; $5f56: $20 $68

jr_0b7_5f58:
    nop                                           ; $5f58: $00
    nop                                           ; $5f59: $00
    nop                                           ; $5f5a: $00
    rst $38                                       ; $5f5b: $ff
    ld a, a                                       ; $5f5c: $7f
    nop                                           ; $5f5d: $00
    jr nz, jr_0b7_5fc8                            ; $5f5e: $20 $68

    nop                                           ; $5f60: $00
    nop                                           ; $5f61: $00
    nop                                           ; $5f62: $00
    ld [hl], e                                    ; $5f63: $73
    ld c, [hl]                                    ; $5f64: $4e
    ld a, l                                       ; $5f65: $7d
    dec b                                         ; $5f66: $05
    and l                                         ; $5f67: $a5
    inc d                                         ; $5f68: $14
    ld bc, $9b00                                  ; $5f69: $01 $00 $9b
    ld bc, $00ac                                  ; $5f6c: $01 $ac $00
    ccf                                           ; $5f6f: $3f
    ld [bc], a                                    ; $5f70: $02
    inc b                                         ; $5f71: $04
    nop                                           ; $5f72: $00
    sbc l                                         ; $5f73: $9d
    ld bc, $294b                                  ; $5f74: $01 $4b $29
    ld d, b                                       ; $5f77: $50
    ld c, [hl]                                    ; $5f78: $4e
    nop                                           ; $5f79: $00
    ld [$4f79], sp                                ; $5f7a: $08 $79 $4f
    rlca                                          ; $5f7d: $07
    ld hl, $2000                                  ; $5f7e: $21 $00 $20
    nop                                           ; $5f81: $00
    jr nz, @+$01                                  ; $5f82: $20 $ff

    ld a, a                                       ; $5f84: $7f
    nop                                           ; $5f85: $00
    jr nz, @+$6a                                  ; $5f86: $20 $68

jr_0b7_5f88:
    nop                                           ; $5f88: $00
    nop                                           ; $5f89: $00
    jr nz, @+$01                                  ; $5f8a: $20 $ff

    ld a, a                                       ; $5f8c: $7f
    nop                                           ; $5f8d: $00
    jr nz, jr_0b7_5ff8                            ; $5f8e: $20 $68

jr_0b7_5f90:
    nop                                           ; $5f90: $00
    nop                                           ; $5f91: $00
    nop                                           ; $5f92: $00
    ld [hl], e                                    ; $5f93: $73
    ld c, [hl]                                    ; $5f94: $4e
    rst $38                                       ; $5f95: $ff
    ld a, a                                       ; $5f96: $7f
    nop                                           ; $5f97: $00
    jr nz, jr_0b7_5fbf                            ; $5f98: $20 $25

    nop                                           ; $5f9a: $00
    ld [de], a                                    ; $5f9b: $12
    ld bc, $4a72                                  ; $5f9c: $01 $72 $4a
    sbc a                                         ; $5f9f: $9f
    dec b                                         ; $5fa0: $05
    ld bc, $7e08                                  ; $5fa1: $01 $08 $7e
    ld a, $c0                                     ; $5fa4: $3e $c0
    ld [hl], l                                    ; $5fa6: $75
    adc d                                         ; $5fa7: $8a
    ld [$0006], sp                                ; $5fa8: $08 $06 $00
    or c                                          ; $5fab: $b1
    dec l                                         ; $5fac: $2d
    ld a, l                                       ; $5fad: $7d
    dec b                                         ; $5fae: $05
    ld b, h                                       ; $5faf: $44
    ld sp, $0001                                  ; $5fb0: $31 $01 $00
    ld [hl-], a                                   ; $5fb3: $32
    ld b, d                                       ; $5fb4: $42
    ei                                            ; $5fb5: $fb
    inc sp                                        ; $5fb6: $33
    nop                                           ; $5fb7: $00

jr_0b7_5fb8:
    inc e                                         ; $5fb8: $1c
    nop                                           ; $5fb9: $00
    jr nz, jr_0b7_602f                            ; $5fba: $20 $73

    ld c, [hl]                                    ; $5fbc: $4e
    rst $38                                       ; $5fbd: $ff
    ld a, a                                       ; $5fbe: $7f

jr_0b7_5fbf:
    nop                                           ; $5fbf: $00

jr_0b7_5fc0:
    jr nz, jr_0b7_5fc2                            ; $5fc0: $20 $00

jr_0b7_5fc2:
    jr nz, jr_0b7_601e                            ; $5fc2: $20 $5a

    rra                                           ; $5fc4: $1f
    ld hl, $ff00                                  ; $5fc5: $21 $00 $ff

jr_0b7_5fc8:
    ld c, e                                       ; $5fc8: $4b
    nop                                           ; $5fc9: $00
    nop                                           ; $5fca: $00
    ld sp, $de46                                  ; $5fcb: $31 $46 $de
    ld [hl], e                                    ; $5fce: $73
    and l                                         ; $5fcf: $a5
    inc d                                         ; $5fd0: $14
    ld b, a                                       ; $5fd1: $47
    inc b                                         ; $5fd2: $04
    ld d, d                                       ; $5fd3: $52
    ld c, d                                       ; $5fd4: $4a
    rst $18                                       ; $5fd5: $df
    dec b                                         ; $5fd6: $05
    ld d, b                                       ; $5fd7: $50
    inc c                                         ; $5fd8: $0c
    nop                                           ; $5fd9: $00
    inc e                                         ; $5fda: $1c
    ret nc                                        ; $5fdb: $d0

    add hl, sp                                    ; $5fdc: $39
    ld a, $5f                                     ; $5fdd: $3e $5f
    and a                                         ; $5fdf: $a7
    ld c, c                                       ; $5fe0: $49
    inc bc                                        ; $5fe1: $03
    nop                                           ; $5fe2: $00
    or l                                          ; $5fe3: $b5
    ld hl, $01bf                                  ; $5fe4: $21 $bf $01
    adc a                                         ; $5fe7: $8f
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    nop                                           ; $5fea: $00
    nop                                           ; $5feb: $00
    jr nz, jr_0b7_600f                            ; $5fec: $20 $21

    inc d                                         ; $5fee: $14
    ld hl, $0004                                  ; $5fef: $21 $04 $00
    jr nz, jr_0b7_6025                            ; $5ff2: $20 $31

    ld b, [hl]                                    ; $5ff4: $46
    sbc $73                                       ; $5ff5: $de $73
    and l                                         ; $5ff7: $a5

jr_0b7_5ff8:
    inc d                                         ; $5ff8: $14
    nop                                           ; $5ff9: $00
    inc d                                         ; $5ffa: $14
    ld de, $691e                                  ; $5ffb: $11 $1e $69
    ld bc, $5279                                  ; $5ffe: $01 $79 $52
    ld b, d                                       ; $6001: $42
    nop                                           ; $6002: $00
    ld e, [hl]                                    ; $6003: $5e
    inc c                                         ; $6004: $0c
    ld e, c                                       ; $6005: $59
    inc de                                        ; $6006: $13
    rra                                           ; $6007: $1f
    ld h, e                                       ; $6008: $63
    ld hl, $5f04                                  ; $6009: $21 $04 $5f
    add hl, bc                                    ; $600c: $09
    ld d, e                                       ; $600d: $53
    ld c, d                                       ; $600e: $4a

jr_0b7_600f:
    ld l, h                                       ; $600f: $6c
    nop                                           ; $6010: $00
    ld hl, $600c                                  ; $6011: $21 $0c $60
    ld h, c                                       ; $6014: $61
    add hl, de                                    ; $6015: $19
    ld h, a                                       ; $6016: $67
    ldh [$3c], a                                  ; $6017: $e0 $3c
    ld [hl+], a                                   ; $6019: $22

jr_0b7_601a:
    ld [$0931], sp                                ; $601a: $08 $31 $09
    cp [hl]                                       ; $601d: $be

jr_0b7_601e:
    dec b                                         ; $601e: $05
    or [hl]                                       ; $601f: $b6
    ld c, [hl]                                    ; $6020: $4e
    nop                                           ; $6021: $00
    jr nz, jr_0b7_601a                            ; $6022: $20 $f6

    ld c, [hl]                                    ; $6024: $4e

jr_0b7_6025:
    rst $38                                       ; $6025: $ff
    cpl                                           ; $6026: $2f
    ld hl, $0004                                  ; $6027: $21 $04 $00
    jr nz, @+$60                                  ; $602a: $20 $5e

    inc c                                         ; $602c: $0c
    ld e, c                                       ; $602d: $59
    inc de                                        ; $602e: $13

jr_0b7_602f:
    rra                                           ; $602f: $1f
    ld h, e                                       ; $6030: $63
    ld b, d                                       ; $6031: $42
    ld [$253f], sp                                ; $6032: $08 $3f $25
    ld e, $63                                     ; $6035: $1e $63
    cp $17                                        ; $6037: $fe $17
    nop                                           ; $6039: $00
    nop                                           ; $603a: $00
    ld a, [hl-]                                   ; $603b: $3a
    ld b, e                                       ; $603c: $43
    ld e, e                                       ; $603d: $5b
    ld [$7fff], sp                                ; $603e: $08 $ff $7f
    ld hl, $5800                                  ; $6041: $21 $00 $58
    ld [hl-], a                                   ; $6044: $32
    rra                                           ; $6045: $1f
    ld h, e                                       ; $6046: $63

jr_0b7_6047:
    cpl                                           ; $6047: $2f
    dec e                                         ; $6048: $1d
    jr nz, @+$1e                                  ; $6049: $20 $1c

    ld d, a                                       ; $604b: $57
    ld b, d                                       ; $604c: $42
    ld l, $1d                                     ; $604d: $2e $1d
    rra                                           ; $604f: $1f
    ld d, a                                       ; $6050: $57
    ld hl, $de04                                  ; $6051: $21 $04 $de
    ld a, e                                       ; $6054: $7b
    sbc l                                         ; $6055: $9d
    dec b                                         ; $6056: $05
    rst $20                                       ; $6057: $e7
    jr z, jr_0b7_605a                             ; $6058: $28 $00

jr_0b7_605a:
    nop                                           ; $605a: $00
    db $fd                                        ; $605b: $fd
    ld d, e                                       ; $605c: $53
    nop                                           ; $605d: $00
    jr nz, jr_0b7_6047                            ; $605e: $20 $e7

    jr z, jr_0b7_6062                             ; $6060: $28 $00

jr_0b7_6062:
    nop                                           ; $6062: $00
    rst $38                                       ; $6063: $ff
    ld a, a                                       ; $6064: $7f
    nop                                           ; $6065: $00
    jr nz, @+$01                                  ; $6066: $20 $ff

    ld a, a                                       ; $6068: $7f
    ld b, $00                                     ; $6069: $06 $00
    cp l                                          ; $606b: $bd
    inc de                                        ; $606c: $13
    xor h                                         ; $606d: $ac
    ld a, [bc]                                    ; $606e: $0a
    ccf                                           ; $606f: $3f
    inc b                                         ; $6070: $04
    and h                                         ; $6071: $a4
    inc b                                         ; $6072: $04
    sbc $1f                                       ; $6073: $de $1f
    add hl, de                                    ; $6075: $19
    nop                                           ; $6076: $00
    db $dd                                        ; $6077: $dd
    ld e, e                                       ; $6078: $5b
    nop                                           ; $6079: $00
    ld [$0c79], sp                                ; $607a: $08 $79 $0c
    dec e                                         ; $607d: $1d
    ld b, d                                       ; $607e: $42
    inc c                                         ; $607f: $0c
    nop                                           ; $6080: $00
    ld l, $21                                     ; $6081: $2e $21
    rst $38                                       ; $6083: $ff
    ld d, d                                       ; $6084: $52
    rst $38                                       ; $6085: $ff
    ld a, a                                       ; $6086: $7f
    or [hl]                                       ; $6087: $b6
    dec h                                         ; $6088: $25
    ld hl, $1304                                  ; $6089: $21 $04 $13
    nop                                           ; $608c: $00
    sub h                                         ; $608d: $94
    add hl, hl                                    ; $608e: $29
    ccf                                           ; $608f: $3f
    dec h                                         ; $6090: $25
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    rst $38                                       ; $6093: $ff
    ld a, a                                       ; $6094: $7f
    nop                                           ; $6095: $00
    jr nz, @+$23                                  ; $6096: $20 $21

    inc b                                         ; $6098: $04
    nop                                           ; $6099: $00
    nop                                           ; $609a: $00
    rst $38                                       ; $609b: $ff
    ld a, a                                       ; $609c: $7f
    nop                                           ; $609d: $00
    jr nz, @+$23                                  ; $609e: $20 $21

    inc b                                         ; $60a0: $04
    nop                                           ; $60a1: $00
    nop                                           ; $60a2: $00
    ld e, l                                       ; $60a3: $5d
    ld [$0009], sp                                ; $60a4: $08 $09 $00
    jr nc, jr_0b7_60ad                            ; $60a7: $30 $04

    jr nz, jr_0b7_60ab                            ; $60a9: $20 $00

jr_0b7_60ab:
    rst $18                                       ; $60ab: $df
    ld b, a                                       ; $60ac: $47

jr_0b7_60ad:
    dec bc                                        ; $60ad: $0b
    ld [$096b], sp                                ; $60ae: $08 $6b $09
    ld [bc], a                                    ; $60b1: $02
    ld [$020d], sp                                ; $60b2: $08 $0d $02
    db $dd                                        ; $60b5: $dd
    dec de                                        ; $60b6: $1b
    ld e, h                                       ; $60b7: $5c
    ld [$0000], sp                                ; $60b8: $08 $00 $00
    sub l                                         ; $60bb: $95
    dec e                                         ; $60bc: $1d
    rst $38                                       ; $60bd: $ff
    ld d, d                                       ; $60be: $52
    rst $30                                       ; $60bf: $f7
    ld sp, $0424                                  ; $60c0: $31 $24 $04
    dec [hl]                                      ; $60c3: $35
    ld a, $3c                                     ; $60c4: $3e $3c
    inc b                                         ; $60c6: $04
    ccf                                           ; $60c7: $3f
    ld e, a                                       ; $60c8: $5f
    nop                                           ; $60c9: $00
    nop                                           ; $60ca: $00
    rst $38                                       ; $60cb: $ff
    ld a, a                                       ; $60cc: $7f
    nop                                           ; $60cd: $00
    jr nz, jr_0b7_6137                            ; $60ce: $20 $67

    jr jr_0b7_60d2                                ; $60d0: $18 $00

jr_0b7_60d2:
    nop                                           ; $60d2: $00
    rst $38                                       ; $60d3: $ff
    ld a, a                                       ; $60d4: $7f
    adc $39                                       ; $60d5: $ce $39
    nop                                           ; $60d7: $00
    jr nz, jr_0b7_60db                            ; $60d8: $20 $01

    nop                                           ; $60da: $00

jr_0b7_60db:
    jr c, jr_0b7_60e1                             ; $60db: $38 $04

    adc e                                         ; $60dd: $8b
    ld b, b                                       ; $60de: $40
    ld [hl], e                                    ; $60df: $73
    ld h, c                                       ; $60e0: $61

jr_0b7_60e1:
    ld bc, $fa00                                  ; $60e1: $01 $00 $fa
    inc c                                         ; $60e4: $0c
    cp l                                          ; $60e5: $bd
    ld d, [hl]                                    ; $60e6: $56
    ld l, d                                       ; $60e7: $6a
    inc a                                         ; $60e8: $3c
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    ld a, d                                       ; $60eb: $7a
    daa                                           ; $60ec: $27
    rst $38                                       ; $60ed: $ff
    ld [hl], a                                    ; $60ee: $77
    ld b, $30                                     ; $60ef: $06 $30
    ld bc, $3700                                  ; $60f1: $01 $00 $37
    inc bc                                        ; $60f4: $03
    ld e, a                                       ; $60f5: $5f
    ld d, a                                       ; $60f6: $57
    ld a, e                                       ; $60f7: $7b
    db $10                                        ; $60f8: $10
    ld hl, $1100                                  ; $60f9: $21 $00 $11
    ld a, $9e                                     ; $60fc: $3e $9e
    ld e, a                                       ; $60fe: $5f
    inc l                                         ; $60ff: $2c
    ld hl, $0000                                  ; $6100: $21 $00 $00
    ld e, d                                       ; $6103: $5a
    ccf                                           ; $6104: $3f
    rst $38                                       ; $6105: $ff
    ld [hl], a                                    ; $6106: $77
    nop                                           ; $6107: $00
    jr nz, jr_0b7_610a                            ; $6108: $20 $00

jr_0b7_610a:
    nop                                           ; $610a: $00
    rst $38                                       ; $610b: $ff
    ld a, a                                       ; $610c: $7f
    xor l                                         ; $610d: $ad
    dec [hl]                                      ; $610e: $35
    ld hl, $2104                                  ; $610f: $21 $04 $21
    inc b                                         ; $6112: $04
    call nc, $dd61                                ; $6113: $d4 $61 $dd
    dec de                                        ; $6116: $1b
    sbc d                                         ; $6117: $9a
    ld a, d                                       ; $6118: $7a
    ld [bc], a                                    ; $6119: $02
    nop                                           ; $611a: $00
    ld a, [hl-]                                   ; $611b: $3a
    inc b                                         ; $611c: $04
    ld l, c                                       ; $611d: $69
    jr c, jr_0b7_619a                             ; $611e: $38 $7a

    dec a                                         ; $6120: $3d
    inc hl                                        ; $6121: $23
    inc c                                         ; $6122: $0c
    ld [hl], l                                    ; $6123: $75
    ld [hl], l                                    ; $6124: $75
    cp h                                          ; $6125: $bc
    dec de                                        ; $6126: $1b
    rst $38                                       ; $6127: $ff
    ld [hl], a                                    ; $6128: $77
    ld [hl+], a                                   ; $6129: $22
    inc b                                         ; $612a: $04
    rst $38                                       ; $612b: $ff
    daa                                           ; $612c: $27
    or e                                          ; $612d: $b3
    inc d                                         ; $612e: $14
    rst $38                                       ; $612f: $ff
    ld a, e                                       ; $6130: $7b
    inc hl                                        ; $6131: $23
    nop                                           ; $6132: $00
    dec d                                         ; $6133: $15
    ld a, [hl-]                                   ; $6134: $3a
    xor l                                         ; $6135: $ad
    dec e                                         ; $6136: $1d

jr_0b7_6137:
    sbc a                                         ; $6137: $9f
    ld h, e                                       ; $6138: $63
    ld b, c                                       ; $6139: $41
    inc b                                         ; $613a: $04
    ld e, d                                       ; $613b: $5a
    dec hl                                        ; $613c: $2b
    rst $38                                       ; $613d: $ff
    ld l, a                                       ; $613e: $6f
    nop                                           ; $613f: $00
    jr nz, jr_0b7_6142                            ; $6140: $20 $00

jr_0b7_6142:
    nop                                           ; $6142: $00
    rst $38                                       ; $6143: $ff
    ld a, a                                       ; $6144: $7f
    adc h                                         ; $6145: $8c
    ld sp, $2000                                  ; $6146: $31 $00 $20
    ld b, d                                       ; $6149: $42
    nop                                           ; $614a: $00
    cp h                                          ; $614b: $bc
    dec de                                        ; $614c: $1b
    ld [hl], b                                    ; $614d: $70
    ld h, c                                       ; $614e: $61
    cp h                                          ; $614f: $bc
    ld a, [hl]                                    ; $6150: $7e
    ld bc, $3a08                                  ; $6151: $01 $08 $3a
    ld [$5551], sp                                ; $6154: $08 $51 $55
    ld c, b                                       ; $6157: $48
    inc [hl]                                      ; $6158: $34
    ld b, d                                       ; $6159: $42
    ld [$7e9c], sp                                ; $615a: $08 $9c $7e
    ldh a, [rNR24]                                ; $615d: $f0 $19
    rst $18                                       ; $615f: $df
    ld l, $01                                     ; $6160: $2e $01
    inc c                                         ; $6162: $0c
    or e                                          ; $6163: $b3
    ld sp, $579f                                  ; $6164: $31 $9f $57
    ld c, $00                                     ; $6167: $0e $00
    ld bc, $bf00                                  ; $6169: $01 $00 $bf
    ld c, d                                       ; $616c: $4a
    ld [hl], l                                    ; $616d: $75
    add hl, de                                    ; $616e: $19
    sbc a                                         ; $616f: $9f
    ld l, e                                       ; $6170: $6b
    inc hl                                        ; $6171: $23
    inc b                                         ; $6172: $04

jr_0b7_6173:
    ld e, a                                       ; $6173: $5f
    ld [$2000], sp                                ; $6174: $08 $00 $20
    inc e                                         ; $6177: $1c
    inc sp                                        ; $6178: $33
    nop                                           ; $6179: $00
    nop                                           ; $617a: $00
    rst $38                                       ; $617b: $ff
    ld a, a                                       ; $617c: $7f
    ld l, e                                       ; $617d: $6b
    dec l                                         ; $617e: $2d
    nop                                           ; $617f: $00
    jr nz, jr_0b7_6182                            ; $6180: $20 $00

jr_0b7_6182:
    nop                                           ; $6182: $00
    ld d, $76                                     ; $6183: $16 $76
    db $dd                                        ; $6185: $dd
    rla                                           ; $6186: $17
    cp h                                          ; $6187: $bc
    ld a, [hl]                                    ; $6188: $7e
    nop                                           ; $6189: $00
    nop                                           ; $618a: $00
    rst $38                                       ; $618b: $ff
    ld a, a                                       ; $618c: $7f
    push bc                                       ; $618d: $c5
    jr jr_0b7_61b8                                ; $618e: $18 $28

    inc [hl]                                      ; $6190: $34
    add e                                         ; $6191: $83
    inc b                                         ; $6192: $04
    cp h                                          ; $6193: $bc
    ld sp, $7e9a                                  ; $6194: $31 $9a $7e
    add hl, de                                    ; $6197: $19
    nop                                           ; $6198: $00
    nop                                           ; $6199: $00

jr_0b7_619a:
    nop                                           ; $619a: $00
    db $d3                                        ; $619b: $d3
    inc c                                         ; $619c: $0c
    cp l                                          ; $619d: $bd
    ld b, d                                       ; $619e: $42
    ld h, [hl]                                    ; $619f: $66
    inc b                                         ; $61a0: $04
    nop                                           ; $61a1: $00
    nop                                           ; $61a2: $00
    cp a                                          ; $61a3: $bf
    ld b, [hl]                                    ; $61a4: $46
    cp a                                          ; $61a5: $bf
    ld l, e                                       ; $61a6: $6b
    ld h, [hl]                                    ; $61a7: $66
    inc h                                         ; $61a8: $24
    jr nz, jr_0b7_61ab                            ; $61a9: $20 $00

jr_0b7_61ab:
    rst $08                                       ; $61ab: $cf
    nop                                           ; $61ac: $00
    sub h                                         ; $61ad: $94
    ld a, [bc]                                    ; $61ae: $0a
    nop                                           ; $61af: $00
    jr nz, jr_0b7_61b2                            ; $61b0: $20 $00

jr_0b7_61b2:
    nop                                           ; $61b2: $00
    rst $38                                       ; $61b3: $ff
    ld a, a                                       ; $61b4: $7f
    ld l, e                                       ; $61b5: $6b
    dec l                                         ; $61b6: $2d
    nop                                           ; $61b7: $00

jr_0b7_61b8:
    jr nz, jr_0b7_61bb                            ; $61b8: $20 $01

    inc b                                         ; $61ba: $04

jr_0b7_61bb:
    sub c                                         ; $61bb: $91
    ld d, l                                       ; $61bc: $55
    ld l, e                                       ; $61bd: $6b
    dec l                                         ; $61be: $2d
    ld e, d                                       ; $61bf: $5a
    ld a, d                                       ; $61c0: $7a
    ld [bc], a                                    ; $61c1: $02
    inc c                                         ; $61c2: $0c
    or h                                          ; $61c3: $b4
    ld l, c                                       ; $61c4: $69
    xor l                                         ; $61c5: $ad
    dec c                                         ; $61c6: $0d
    rst $38                                       ; $61c7: $ff
    ld b, e                                       ; $61c8: $43
    ld bc, $3800                                  ; $61c9: $01 $00 $38
    ld h, d                                       ; $61cc: $62
    dec l                                         ; $61cd: $2d
    dec h                                         ; $61ce: $25
    ccf                                           ; $61cf: $3f
    ld a, a                                       ; $61d0: $7f
    nop                                           ; $61d1: $00
    inc b                                         ; $61d2: $04
    ld [hl], c                                    ; $61d3: $71
    dec e                                         ; $61d4: $1d
    sbc d                                         ; $61d5: $9a
    ld a, [hl-]                                   ; $61d6: $3a
    ld [$010c], a                                 ; $61d7: $ea $0c $01
    inc b                                         ; $61da: $04
    ld l, a                                       ; $61db: $6f
    add hl, de                                    ; $61dc: $19
    or $0e                                        ; $61dd: $f6 $0e
    sbc h                                         ; $61df: $9c
    ld [hl], $00                                  ; $61e0: $36 $00
    nop                                           ; $61e2: $00
    or e                                          ; $61e3: $b3
    ld c, $00                                     ; $61e4: $0e $00
    jr nz, jr_0b7_6173                            ; $61e6: $20 $8b

    jr nz, jr_0b7_61ea                            ; $61e8: $20 $00

jr_0b7_61ea:
    nop                                           ; $61ea: $00
    rst $38                                       ; $61eb: $ff
    ld a, a                                       ; $61ec: $7f
    ld l, e                                       ; $61ed: $6b
    dec l                                         ; $61ee: $2d
    nop                                           ; $61ef: $00
    jr nz, jr_0b7_61f2                            ; $61f0: $20 $00

jr_0b7_61f2:
    nop                                           ; $61f2: $00
    ld [hl-], a                                   ; $61f3: $32
    ld h, c                                       ; $61f4: $61
    rst $30                                       ; $61f5: $f7
    ld [hl], c                                    ; $61f6: $71
    ld h, a                                       ; $61f7: $67
    jr z, jr_0b7_621b                             ; $61f8: $28 $21

    nop                                           ; $61fa: $00
    call nc, $ff65                                ; $61fb: $d4 $65 $ff
    inc de                                        ; $61fe: $13
    xor h                                         ; $61ff: $ac
    dec b                                         ; $6200: $05
    nop                                           ; $6201: $00
    nop                                           ; $6202: $00
    add hl, de                                    ; $6203: $19
    ld a, d                                       ; $6204: $7a
    ret z                                         ; $6205: $c8

    inc l                                         ; $6206: $2c
    ld c, $11                                     ; $6207: $0e $11
    nop                                           ; $6209: $00
    nop                                           ; $620a: $00
    ld c, a                                       ; $620b: $4f
    dec e                                         ; $620c: $1d
    ld a, d                                       ; $620d: $7a
    ld a, [hl-]                                   ; $620e: $3a
    sub d                                         ; $620f: $92
    ld hl, $0000                                  ; $6210: $21 $00 $00
    ld d, c                                       ; $6213: $51
    ld a, [bc]                                    ; $6214: $0a
    ld e, d                                       ; $6215: $5a

jr_0b7_6216:
    dec bc                                        ; $6216: $0b
    db $eb                                        ; $6217: $eb
    jr jr_0b7_621a                                ; $6218: $18 $00

jr_0b7_621a:
    inc e                                         ; $621a: $1c

jr_0b7_621b:
    ld d, $00                                     ; $621b: $16 $00
    dec de                                        ; $621d: $1b
    dec sp                                        ; $621e: $3b
    halt                                          ; $621f: $76
    dec l                                         ; $6220: $2d
    nop                                           ; $6221: $00
    nop                                           ; $6222: $00
    rst $38                                       ; $6223: $ff
    ld a, a                                       ; $6224: $7f
    ld l, e                                       ; $6225: $6b
    dec l                                         ; $6226: $2d
    nop                                           ; $6227: $00
    jr nz, jr_0b7_622a                            ; $6228: $20 $00

jr_0b7_622a:
    nop                                           ; $622a: $00
    adc l                                         ; $622b: $8d
    ld c, h                                       ; $622c: $4c
    ld de, $5461                                  ; $622d: $11 $61 $54
    ld l, c                                       ; $6230: $69
    ld bc, $f700                                  ; $6231: $01 $00 $f7
    ld [hl], c                                    ; $6234: $71
    srl b                                         ; $6235: $cb $38
    sbc h                                         ; $6237: $9c
    ld a, [hl]                                    ; $6238: $7e
    nop                                           ; $6239: $00
    nop                                           ; $623a: $00
    ld d, h                                       ; $623b: $54
    ld l, l                                       ; $623c: $6d
    adc d                                         ; $623d: $8a
    ld b, h                                       ; $623e: $44
    ld l, $15                                     ; $623f: $2e $15
    nop                                           ; $6241: $00
    nop                                           ; $6242: $00
    db $d3                                        ; $6243: $d3
    ld hl, $46df                                  ; $6244: $21 $df $46
    sbc e                                         ; $6247: $9b
    inc de                                        ; $6248: $13
    ld [hl+], a                                   ; $6249: $22
    inc b                                         ; $624a: $04
    ld a, c                                       ; $624b: $79
    dec bc                                        ; $624c: $0b
    jp c, $df52                                   ; $624d: $da $52 $df

    ld [hl], a                                    ; $6250: $77
    ld [bc], a                                    ; $6251: $02
    nop                                           ; $6252: $00
    ld [hl], h                                    ; $6253: $74
    scf                                           ; $6254: $37
    nop                                           ; $6255: $00
    jr nz, @+$01                                  ; $6256: $20 $ff

    ld [hl], a                                    ; $6258: $77
    nop                                           ; $6259: $00
    nop                                           ; $625a: $00
    rst $38                                       ; $625b: $ff
    ld a, a                                       ; $625c: $7f
    nop                                           ; $625d: $00
    jr nz, jr_0b7_62a0                            ; $625e: $20 $40

    inc c                                         ; $6260: $0c
    ld hl, $9304                                  ; $6261: $21 $04 $93
    ld a, $de                                     ; $6264: $3e $de
    ld [hl], e                                    ; $6266: $73
    adc e                                         ; $6267: $8b
    ld hl, $0c43                                  ; $6268: $21 $43 $0c
    xor [hl]                                      ; $626b: $ae
    ld e, b                                       ; $626c: $58
    sbc h                                         ; $626d: $9c
    ld a, d                                       ; $626e: $7a
    sub h                                         ; $626f: $94
    ld l, c                                       ; $6270: $69
    nop                                           ; $6271: $00
    nop                                           ; $6272: $00
    ld l, c                                       ; $6273: $69
    inc a                                         ; $6274: $3c
    sub e                                         ; $6275: $93
    ld hl, $0ccb                                  ; $6276: $21 $cb $0c
    ld hl, $b300                                  ; $6279: $21 $00 $b3
    ld a, [bc]                                    ; $627c: $0a
    xor h                                         ; $627d: $ac
    dec b                                         ; $627e: $05
    ld a, l                                       ; $627f: $7d
    inc hl                                        ; $6280: $23
    nop                                           ; $6281: $00
    inc b                                         ; $6282: $04
    cp d                                          ; $6283: $ba
    ld c, d                                       ; $6284: $4a
    sbc [hl]                                      ; $6285: $9e
    ld l, e                                       ; $6286: $6b
    inc c                                         ; $6287: $0c
    add hl, de                                    ; $6288: $19
    nop                                           ; $6289: $00
    nop                                           ; $628a: $00
    jr jr_0b7_62bb                                ; $628b: $18 $2e

    nop                                           ; $628d: $00
    jr nz, jr_0b7_6216                            ; $628e: $20 $86

    inc c                                         ; $6290: $0c
    nop                                           ; $6291: $00
    nop                                           ; $6292: $00
    rst $38                                       ; $6293: $ff
    ld a, a                                       ; $6294: $7f
    nop                                           ; $6295: $00
    jr nz, jr_0b7_62b9                            ; $6296: $20 $21

    inc b                                         ; $6298: $04
    cp $17                                        ; $6299: $fe $17
    rst $38                                       ; $629b: $ff
    ld b, a                                       ; $629c: $47
    rst $38                                       ; $629d: $ff
    ld h, a                                       ; $629e: $67
    rst $38                                       ; $629f: $ff

jr_0b7_62a0:
    inc hl                                        ; $62a0: $23
    nop                                           ; $62a1: $00
    nop                                           ; $62a2: $00
    ld [hl-], a                                   ; $62a3: $32
    ld h, l                                       ; $62a4: $65
    sbc b                                         ; $62a5: $98
    ld l, [hl]                                    ; $62a6: $6e
    rlca                                          ; $62a7: $07
    inc a                                         ; $62a8: $3c
    nop                                           ; $62a9: $00
    nop                                           ; $62aa: $00
    dec l                                         ; $62ab: $2d
    dec c                                         ; $62ac: $0d
    ld [hl], d                                    ; $62ad: $72
    ld c, $ba                                     ; $62ae: $0e $ba
    inc de                                        ; $62b0: $13
    nop                                           ; $62b1: $00
    inc b                                         ; $62b2: $04
    rrca                                          ; $62b3: $0f
    ld c, $ff                                     ; $62b4: $0e $ff
    dec de                                        ; $62b6: $1b
    rla                                           ; $62b7: $17
    ld [hl-], a                                   ; $62b8: $32

jr_0b7_62b9:
    nop                                           ; $62b9: $00
    nop                                           ; $62ba: $00

jr_0b7_62bb:
    ld a, b                                       ; $62bb: $78
    ld a, $fb                                     ; $62bc: $3e $fb
    ld d, d                                       ; $62be: $52
    ld e, l                                       ; $62bf: $5d
    ld h, e                                       ; $62c0: $63
    nop                                           ; $62c1: $00
    inc b                                         ; $62c2: $04
    dec c                                         ; $62c3: $0d
    add hl, de                                    ; $62c4: $19
    push de                                       ; $62c5: $d5
    dec h                                         ; $62c6: $25
    nop                                           ; $62c7: $00
    jr nz, jr_0b7_62ca                            ; $62c8: $20 $00

jr_0b7_62ca:
    nop                                           ; $62ca: $00
    rst $38                                       ; $62cb: $ff
    ld a, a                                       ; $62cc: $7f
    nop                                           ; $62cd: $00
    jr nz, jr_0b7_62d7                            ; $62ce: $20 $07

    inc a                                         ; $62d0: $3c
    nop                                           ; $62d1: $00
    nop                                           ; $62d2: $00
    ld c, $02                                     ; $62d3: $0e $02
    rla                                           ; $62d5: $17
    dec bc                                        ; $62d6: $0b

jr_0b7_62d7:
    rst $38                                       ; $62d7: $ff
    dec de                                        ; $62d8: $1b
    nop                                           ; $62d9: $00
    nop                                           ; $62da: $00
    push de                                       ; $62db: $d5
    dec h                                         ; $62dc: $25
    ld [hl], d                                    ; $62dd: $72
    ld h, c                                       ; $62de: $61
    rst $38                                       ; $62df: $ff
    ld h, d                                       ; $62e0: $62
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    ld [hl], d                                    ; $62e3: $72
    ld c, $59                                     ; $62e4: $0e $59
    inc de                                        ; $62e6: $13
    rst $10                                       ; $62e7: $d7
    dec l                                         ; $62e8: $2d
    nop                                           ; $62e9: $00
    inc b                                         ; $62ea: $04
    ld l, $19                                     ; $62eb: $2e $19
    push af                                       ; $62ed: $f5
    dec l                                         ; $62ee: $2d
    ld e, c                                       ; $62ef: $59
    ld [hl], $00                                  ; $62f0: $36 $00
    nop                                           ; $62f2: $00
    or $2d                                        ; $62f3: $f6 $2d
    ld a, b                                       ; $62f5: $78
    ld b, d                                       ; $62f6: $42
    scf                                           ; $62f7: $37
    ld [hl], $00                                  ; $62f8: $36 $00
    inc b                                         ; $62fa: $04
    cpl                                           ; $62fb: $2f
    dec d                                         ; $62fc: $15
    nop                                           ; $62fd: $00
    jr nz, jr_0b7_6350                            ; $62fe: $20 $50

    add hl, de                                    ; $6300: $19
    nop                                           ; $6301: $00
    nop                                           ; $6302: $00
    rst $38                                       ; $6303: $ff
    ld a, a                                       ; $6304: $7f
    nop                                           ; $6305: $00
    jr nz, @+$01                                  ; $6306: $20 $ff

    ld h, d                                       ; $6308: $62
    nop                                           ; $6309: $00
    inc b                                         ; $630a: $04
    or a                                          ; $630b: $b7
    add hl, hl                                    ; $630c: $29
    ld a, a                                       ; $630d: $7f
    ld h, e                                       ; $630e: $63
    dec a                                         ; $630f: $3d
    ld a, [hl-]                                   ; $6310: $3a
    inc hl                                        ; $6311: $23
    nop                                           ; $6312: $00
    sbc a                                         ; $6313: $9f
    inc d                                         ; $6314: $14
    ld a, e                                       ; $6315: $7b
    inc de                                        ; $6316: $13
    cp a                                          ; $6317: $bf
    ld [hl], e                                    ; $6318: $73
    nop                                           ; $6319: $00
    nop                                           ; $631a: $00
    sub c                                         ; $631b: $91
    add hl, de                                    ; $631c: $19
    sbc e                                         ; $631d: $9b
    ld a, $c9                                     ; $631e: $3e $c9
    stop                                          ; $6320: $10 $00
    inc b                                         ; $6322: $04
    or e                                          ; $6323: $b3
    dec h                                         ; $6324: $25
    or $2d                                        ; $6325: $f6 $2d
    jr c, jr_0b7_635b                             ; $6327: $38 $32

    ld bc, $0c00                                  ; $6329: $01 $00 $0c
    add hl, de                                    ; $632c: $19
    or e                                          ; $632d: $b3
    dec h                                         ; $632e: $25
    push af                                       ; $632f: $f5
    add hl, hl                                    ; $6330: $29
    nop                                           ; $6331: $00
    inc b                                         ; $6332: $04
    ld c, $15                                     ; $6333: $0e $15

jr_0b7_6335:
    nop                                           ; $6335: $00
    jr nz, @+$31                                  ; $6336: $20 $2f

    dec d                                         ; $6338: $15
    nop                                           ; $6339: $00
    nop                                           ; $633a: $00
    rst $38                                       ; $633b: $ff
    ld a, a                                       ; $633c: $7f
    nop                                           ; $633d: $00
    jr nz, @-$3f                                  ; $633e: $20 $bf

    ld [hl], e                                    ; $6340: $73
    ld bc, $5d04                                  ; $6341: $01 $04 $5d
    ld [hl], $fe                                  ; $6344: $36 $fe
    ld d, [hl]                                    ; $6346: $56
    rst $38                                       ; $6347: $ff
    ld [hl], e                                    ; $6348: $73
    nop                                           ; $6349: $00
    nop                                           ; $634a: $00
    or h                                          ; $634b: $b4
    ld h, $bf                                     ; $634c: $26 $bf
    ld l, e                                       ; $634e: $6b
    ld l, c                                       ; $634f: $69

jr_0b7_6350:
    jr jr_0b7_6352                                ; $6350: $18 $00

jr_0b7_6352:
    nop                                           ; $6352: $00
    or $25                                        ; $6353: $f6 $25
    ccf                                           ; $6355: $3f
    ld c, a                                       ; $6356: $4f
    xor c                                         ; $6357: $a9
    stop                                          ; $6358: $10 $00
    nop                                           ; $635a: $00

jr_0b7_635b:
    push de                                       ; $635b: $d5

jr_0b7_635c:
    add hl, hl                                    ; $635c: $29
    sbc h                                         ; $635d: $9c
    ld a, $a7                                     ; $635e: $3e $a7
    inc c                                         ; $6360: $0c
    nop                                           ; $6361: $00
    inc b                                         ; $6362: $04
    sub e                                         ; $6363: $93
    dec h                                         ; $6364: $25
    xor d                                         ; $6365: $aa
    ld [$29f7], sp                                ; $6366: $08 $f7 $29
    nop                                           ; $6369: $00
    inc b                                         ; $636a: $04
    jp z, RST_08                                  ; $636b: $ca $08 $00

    jr nz, jr_0b7_635c                            ; $636e: $20 $ec

    inc c                                         ; $6370: $0c
    nop                                           ; $6371: $00
    nop                                           ; $6372: $00
    nop                                           ; $6373: $00
    jr nz, jr_0b7_6335                            ; $6374: $20 $bf

    ld l, e                                       ; $6376: $6b
    ld l, c                                       ; $6377: $69
    jr jr_0b7_637a                                ; $6378: $18 $00

jr_0b7_637a:
    inc b                                         ; $637a: $04
    ld e, $57                                     ; $637b: $1e $57
    ld [hl], c                                    ; $637d: $71
    dec h                                         ; $637e: $25
    rst $38                                       ; $637f: $ff
    ld [hl], a                                    ; $6380: $77
    nop                                           ; $6381: $00
    nop                                           ; $6382: $00
    ld [hl], a                                    ; $6383: $77
    ld a, $25                                     ; $6384: $3e $25
    jr z, jr_0b7_6407                             ; $6386: $28 $7f

    ld h, a                                       ; $6388: $67
    ld bc, $b300                                  ; $6389: $01 $00 $b3
    ld hl, $42bc                                  ; $638c: $21 $bc $42
    ret                                           ; $638f: $c9


    inc c                                         ; $6390: $0c
    ld bc, $7100                                  ; $6391: $01 $00 $71
    ld hl, $2df7                                  ; $6394: $21 $f7 $2d
    ld a, e                                       ; $6397: $7b
    ld a, [hl-]                                   ; $6398: $3a
    nop                                           ; $6399: $00
    nop                                           ; $639a: $00
    sub c                                         ; $639b: $91
    ld hl, $0467                                  ; $639c: $21 $67 $04
    push de                                       ; $639f: $d5
    add hl, hl                                    ; $63a0: $29
    nop                                           ; $63a1: $00
    inc b                                         ; $63a2: $04
    adc b                                         ; $63a3: $88
    inc b                                         ; $63a4: $04
    nop                                           ; $63a5: $00
    jr nz, @-$55                                  ; $63a6: $20 $a9

    ld [$0000], sp                                ; $63a8: $08 $00 $00
    nop                                           ; $63ab: $00
    jr nz, jr_0b7_63ae                            ; $63ac: $20 $00

jr_0b7_63ae:
    inc b                                         ; $63ae: $04
    ld a, a                                       ; $63af: $7f
    ld h, a                                       ; $63b0: $67
    nop                                           ; $63b1: $00
    inc b                                         ; $63b2: $04
    push de                                       ; $63b3: $d5
    ld sp, $637f                                  ; $63b4: $31 $7f $63
    xor b                                         ; $63b7: $a8
    inc c                                         ; $63b8: $0c
    ld hl, $d504                                  ; $63b9: $21 $04 $d5
    dec l                                         ; $63bc: $2d
    rst $18                                       ; $63bd: $df
    ld e, a                                       ; $63be: $5f
    xor c                                         ; $63bf: $a9
    inc e                                         ; $63c0: $1c
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    call nc, $0c29                                ; $63c3: $d4 $29 $0c
    dec d                                         ; $63c6: $15
    sbc h                                         ; $63c7: $9c
    ld a, $00                                     ; $63c8: $3e $00
    nop                                           ; $63ca: $00
    sub d                                         ; $63cb: $92
    ld hl, $42bd                                  ; $63cc: $21 $bd $42
    rst $30                                       ; $63cf: $f7
    add hl, hl                                    ; $63d0: $29
    nop                                           ; $63d1: $00
    nop                                           ; $63d2: $00
    adc c                                         ; $63d3: $89
    nop                                           ; $63d4: $00
    inc h                                         ; $63d5: $24
    nop                                           ; $63d6: $00
    ld l, $19                                     ; $63d7: $2e $19
    nop                                           ; $63d9: $00
    inc b                                         ; $63da: $04
    nop                                           ; $63db: $00
    jr nz, @-$33                                  ; $63dc: $20 $cb

    ld [$0444], sp                                ; $63de: $08 $44 $04
    nop                                           ; $63e1: $00
    inc b                                         ; $63e2: $04
    adc e                                         ; $63e3: $8b
    ld bc, $0bba                                  ; $63e4: $01 $ba $0b
    nop                                           ; $63e7: $00
    jr nz, jr_0b7_640d                            ; $63e8: $20 $23

    inc b                                         ; $63ea: $04
    push af                                       ; $63eb: $f5
    dec e                                         ; $63ec: $1d
    rst $38                                       ; $63ed: $ff
    ld c, d                                       ; $63ee: $4a
    db $ec                                        ; $63ef: $ec
    inc d                                         ; $63f0: $14
    ld [hl+], a                                   ; $63f1: $22
    nop                                           ; $63f2: $00
    ld e, c                                       ; $63f3: $59
    dec de                                        ; $63f4: $1b
    jp hl                                         ; $63f5: $e9


    ld [$63ff], sp                                ; $63f6: $08 $ff $63
    ld b, d                                       ; $63f9: $42
    ld [$3217], sp                                ; $63fa: $08 $17 $32
    cpl                                           ; $63fd: $2f
    add hl, de                                    ; $63fe: $19
    db $dd                                        ; $63ff: $dd
    ld b, [hl]                                    ; $6400: $46
    nop                                           ; $6401: $00
    nop                                           ; $6402: $00
    db $eb                                        ; $6403: $eb
    inc d                                         ; $6404: $14
    or h                                          ; $6405: $b4
    dec h                                         ; $6406: $25

jr_0b7_6407:
    add a                                         ; $6407: $87
    inc c                                         ; $6408: $0c
    nop                                           ; $6409: $00
    nop                                           ; $640a: $00
    rst $38                                       ; $640b: $ff
    ld a, a                                       ; $640c: $7f

jr_0b7_640d:
    ld b, a                                       ; $640d: $47
    nop                                           ; $640e: $00
    nop                                           ; $640f: $00
    jr nz, jr_0b7_6412                            ; $6410: $20 $00

jr_0b7_6412:
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    jr nz, jr_0b7_6416                            ; $6414: $20 $00

jr_0b7_6416:
    inc b                                         ; $6416: $04
    nop                                           ; $6417: $00
    jr nz, jr_0b7_641a                            ; $6418: $20 $00

jr_0b7_641a:
    inc b                                         ; $641a: $04
    and $00                                       ; $641b: $e6 $00
    nop                                           ; $641d: $00
    jr nz, jr_0b7_646b                            ; $641e: $20 $4b

    dec c                                         ; $6420: $0d
    ld bc, $ff00                                  ; $6421: $01 $00 $ff
    ld a, a                                       ; $6424: $7f
    ld de, $0000                                  ; $6425: $11 $00 $00
    jr nz, jr_0b7_6491                            ; $6428: $20 $67

    inc b                                         ; $642a: $04
    ld [hl], c                                    ; $642b: $71
    dec l                                         ; $642c: $2d
    ld a, a                                       ; $642d: $7f
    ld [hl], e                                    ; $642e: $73
    ld a, a                                       ; $642f: $7f
    inc d                                         ; $6430: $14
    nop                                           ; $6431: $00
    inc b                                         ; $6432: $04
    rla                                           ; $6433: $17
    ld [hl-], a                                   ; $6434: $32
    db $eb                                        ; $6435: $eb
    db $10                                        ; $6436: $10
    call c, $0046                                 ; $6437: $dc $46 $00
    nop                                           ; $643a: $00
    ld [hl], d                                    ; $643b: $72
    dec e                                         ; $643c: $1d
    jr jr_0b7_6469                                ; $643d: $18 $2a

    add a                                         ; $643f: $87
    inc c                                         ; $6440: $0c
    nop                                           ; $6441: $00
    nop                                           ; $6442: $00
    rst $38                                       ; $6443: $ff
    ld a, a                                       ; $6444: $7f
    ld b, a                                       ; $6445: $47
    nop                                           ; $6446: $00
    nop                                           ; $6447: $00
    jr nz, jr_0b7_644a                            ; $6448: $20 $00

jr_0b7_644a:
    jr nz, @+$01                                  ; $644a: $20 $ff

    ld a, a                                       ; $644c: $7f
    ld b, a                                       ; $644d: $47
    nop                                           ; $644e: $00
    nop                                           ; $644f: $00
    jr nz, jr_0b7_6452                            ; $6450: $20 $00

jr_0b7_6452:
    jr nz, @+$73                                  ; $6452: $20 $71

    dec l                                         ; $6454: $2d
    ld a, a                                       ; $6455: $7f
    ld [hl], e                                    ; $6456: $73
    ld a, a                                       ; $6457: $7f
    inc d                                         ; $6458: $14
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00
    rst $38                                       ; $645b: $ff
    ld a, a                                       ; $645c: $7f
    inc d                                         ; $645d: $14
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    jr nz, jr_0b7_6462                            ; $6460: $20 $00

jr_0b7_6462:
    nop                                           ; $6462: $00
    ld a, a                                       ; $6463: $7f
    inc c                                         ; $6464: $0c
    rst $38                                       ; $6465: $ff
    ld e, [hl]                                    ; $6466: $5e
    ld l, b                                       ; $6467: $68
    nop                                           ; $6468: $00

jr_0b7_6469:
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00

jr_0b7_646b:
    rst $38                                       ; $646b: $ff
    ld a, a                                       ; $646c: $7f
    ld b, a                                       ; $646d: $47
    nop                                           ; $646e: $00
    nop                                           ; $646f: $00
    jr nz, jr_0b7_6472                            ; $6470: $20 $00

jr_0b7_6472:
    nop                                           ; $6472: $00
    rst $38                                       ; $6473: $ff
    ld a, a                                       ; $6474: $7f
    ld b, a                                       ; $6475: $47
    nop                                           ; $6476: $00
    nop                                           ; $6477: $00
    jr nz, jr_0b7_647a                            ; $6478: $20 $00

jr_0b7_647a:
    nop                                           ; $647a: $00
    rst $38                                       ; $647b: $ff
    ld a, a                                       ; $647c: $7f
    nop                                           ; $647d: $00
    jr nz, jr_0b7_6480                            ; $647e: $20 $00

jr_0b7_6480:
    jr nz, jr_0b7_6482                            ; $6480: $20 $00

jr_0b7_6482:
    jr nz, @+$01                                  ; $6482: $20 $ff

    ld a, a                                       ; $6484: $7f
    nop                                           ; $6485: $00
    jr nz, jr_0b7_6488                            ; $6486: $20 $00

jr_0b7_6488:
    jr nz, jr_0b7_648a                            ; $6488: $20 $00

jr_0b7_648a:
    jr nz, jr_0b7_650b                            ; $648a: $20 $7f

    inc c                                         ; $648c: $0c
    rst $38                                       ; $648d: $ff
    ld e, [hl]                                    ; $648e: $5e
    ld l, b                                       ; $648f: $68
    nop                                           ; $6490: $00

jr_0b7_6491:
    nop                                           ; $6491: $00
    nop                                           ; $6492: $00
    rst $38                                       ; $6493: $ff
    ld a, a                                       ; $6494: $7f
    nop                                           ; $6495: $00
    jr nz, jr_0b7_6500                            ; $6496: $20 $68

    nop                                           ; $6498: $00
    nop                                           ; $6499: $00
    nop                                           ; $649a: $00
    rst $38                                       ; $649b: $ff
    ld a, a                                       ; $649c: $7f
    nop                                           ; $649d: $00
    jr nz, jr_0b7_6508                            ; $649e: $20 $68

    nop                                           ; $64a0: $00
    nop                                           ; $64a1: $00
    nop                                           ; $64a2: $00
    nop                                           ; $64a3: $00
    jr nz, jr_0b7_64a6                            ; $64a4: $20 $00

jr_0b7_64a6:
    jr nz, jr_0b7_64a8                            ; $64a6: $20 $00

jr_0b7_64a8:
    jr nz, jr_0b7_64aa                            ; $64a8: $20 $00

jr_0b7_64aa:
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    jr nz, jr_0b7_64ae                            ; $64ac: $20 $00

jr_0b7_64ae:
    jr nz, jr_0b7_64b0                            ; $64ae: $20 $00

jr_0b7_64b0:
    jr nz, jr_0b7_64b2                            ; $64b0: $20 $00

jr_0b7_64b2:
    nop                                           ; $64b2: $00

jr_0b7_64b3:
    nop                                           ; $64b3: $00
    jr nz, jr_0b7_64b6                            ; $64b4: $20 $00

jr_0b7_64b6:
    jr nz, jr_0b7_64b8                            ; $64b6: $20 $00

jr_0b7_64b8:
    jr nz, jr_0b7_64ba                            ; $64b8: $20 $00

jr_0b7_64ba:
    jr nz, jr_0b7_64bc                            ; $64ba: $20 $00

jr_0b7_64bc:
    jr nz, jr_0b7_64be                            ; $64bc: $20 $00

jr_0b7_64be:
    jr nz, jr_0b7_64c0                            ; $64be: $20 $00

jr_0b7_64c0:
    jr nz, jr_0b7_64c2                            ; $64c0: $20 $00

jr_0b7_64c2:
    jr nz, jr_0b7_64c4                            ; $64c2: $20 $00

jr_0b7_64c4:
    jr nz, @+$01                                  ; $64c4: $20 $ff

    ld l, a                                       ; $64c6: $6f
    cp [hl]                                       ; $64c7: $be
    dec hl                                        ; $64c8: $2b
    nop                                           ; $64c9: $00
    jr nz, jr_0b7_64cc                            ; $64ca: $20 $00

jr_0b7_64cc:
    jr nz, @+$01                                  ; $64cc: $20 $ff

    ld l, a                                       ; $64ce: $6f
    cp [hl]                                       ; $64cf: $be
    dec hl                                        ; $64d0: $2b
    nop                                           ; $64d1: $00
    jr nz, jr_0b7_64d4                            ; $64d2: $20 $00

jr_0b7_64d4:
    jr nz, @+$01                                  ; $64d4: $20 $ff

    ld l, a                                       ; $64d6: $6f
    cp [hl]                                       ; $64d7: $be
    dec hl                                        ; $64d8: $2b
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    dec d                                         ; $64db: $15
    ld h, d                                       ; $64dc: $62
    nop                                           ; $64dd: $00
    jr nz, @-$1f                                  ; $64de: $20 $df

    ld a, [hl]                                    ; $64e0: $7e
    nop                                           ; $64e1: $00

jr_0b7_64e2:
    nop                                           ; $64e2: $00
    or $6d                                        ; $64e3: $f6 $6d
    nop                                           ; $64e5: $00
    jr nz, jr_0b7_6542                            ; $64e6: $20 $5a

    ld a, [hl]                                    ; $64e8: $7e
    nop                                           ; $64e9: $00

jr_0b7_64ea:
    jr nz, jr_0b7_64e2                            ; $64ea: $20 $f6

    ld l, l                                       ; $64ec: $6d
    nop                                           ; $64ed: $00
    jr nz, jr_0b7_654a                            ; $64ee: $20 $5a

    ld a, [hl]                                    ; $64f0: $7e
    nop                                           ; $64f1: $00
    jr nz, jr_0b7_64ea                            ; $64f2: $20 $f6

    ld l, l                                       ; $64f4: $6d
    nop                                           ; $64f5: $00
    jr nz, jr_0b7_6552                            ; $64f6: $20 $5a

    ld a, [hl]                                    ; $64f8: $7e
    nop                                           ; $64f9: $00
    jr nz, jr_0b7_64fc                            ; $64fa: $20 $00

jr_0b7_64fc:
    jr nz, @+$01                                  ; $64fc: $20 $ff

    ld l, a                                       ; $64fe: $6f
    cp [hl]                                       ; $64ff: $be

jr_0b7_6500:
    dec hl                                        ; $6500: $2b
    nop                                           ; $6501: $00
    jr nz, jr_0b7_6504                            ; $6502: $20 $00

jr_0b7_6504:
    jr nz, @+$01                                  ; $6504: $20 $ff

    ld l, a                                       ; $6506: $6f
    cp [hl]                                       ; $6507: $be

jr_0b7_6508:
    dec hl                                        ; $6508: $2b
    nop                                           ; $6509: $00
    nop                                           ; $650a: $00

jr_0b7_650b:
    nop                                           ; $650b: $00
    jr nz, @+$01                                  ; $650c: $20 $ff

    ld l, a                                       ; $650e: $6f
    cp [hl]                                       ; $650f: $be
    dec hl                                        ; $6510: $2b

jr_0b7_6511:
    ld bc, $d408                                  ; $6511: $01 $08 $d4
    ld h, c                                       ; $6514: $61
    ld h, a                                       ; $6515: $67
    jr z, jr_0b7_64b3                             ; $6516: $28 $9b

    ld a, d                                       ; $6518: $7a

jr_0b7_6519:
    nop                                           ; $6519: $00
    nop                                           ; $651a: $00
    sbc e                                         ; $651b: $9b
    halt                                          ; $651c: $76
    db $eb                                        ; $651d: $eb
    inc a                                         ; $651e: $3c

jr_0b7_651f:
    ld b, l                                       ; $651f: $45

jr_0b7_6520:
    jr nz, jr_0b7_6522                            ; $6520: $20 $00

jr_0b7_6522:
    nop                                           ; $6522: $00
    nop                                           ; $6523: $00
    jr nz, jr_0b7_6511                            ; $6524: $20 $eb

    inc a                                         ; $6526: $3c

jr_0b7_6527:
    ld b, l                                       ; $6527: $45

jr_0b7_6528:
    jr nz, jr_0b7_652a                            ; $6528: $20 $00

jr_0b7_652a:
    jr nz, jr_0b7_652c                            ; $652a: $20 $00

jr_0b7_652c:
    jr nz, jr_0b7_6519                            ; $652c: $20 $eb

    inc a                                         ; $652e: $3c

jr_0b7_652f:
    ld b, l                                       ; $652f: $45
    jr nz, jr_0b7_6532                            ; $6530: $20 $00

jr_0b7_6532:
    jr nz, jr_0b7_6534                            ; $6532: $20 $00

jr_0b7_6534:
    jr nz, @+$01                                  ; $6534: $20 $ff

    ld l, a                                       ; $6536: $6f
    cp [hl]                                       ; $6537: $be
    dec hl                                        ; $6538: $2b
    nop                                           ; $6539: $00
    jr nz, jr_0b7_653c                            ; $653a: $20 $00

jr_0b7_653c:
    jr nz, @+$01                                  ; $653c: $20 $ff

    ld l, a                                       ; $653e: $6f
    cp [hl]                                       ; $653f: $be
    dec hl                                        ; $6540: $2b
    nop                                           ; $6541: $00

jr_0b7_6542:
    nop                                           ; $6542: $00
    or e                                          ; $6543: $b3
    ld e, c                                       ; $6544: $59
    or a                                          ; $6545: $b7
    ld a, [bc]                                    ; $6546: $0a
    nop                                           ; $6547: $00
    inc e                                         ; $6548: $1c
    ld [bc], a                                    ; $6549: $02

jr_0b7_654a:
    db $10                                        ; $654a: $10
    sub e                                         ; $654b: $93
    ld h, c                                       ; $654c: $61
    xor e                                         ; $654d: $ab
    jr c, jr_0b7_652f                             ; $654e: $38 $df

    ld a, [hl]                                    ; $6550: $7e
    ld [bc], a                                    ; $6551: $02

jr_0b7_6552:
    inc c                                         ; $6552: $0c
    ld c, $4d                                     ; $6553: $0e $4d
    ld b, [hl]                                    ; $6555: $46
    jr z, @+$72                                   ; $6556: $28 $70

    ld h, h                                       ; $6558: $64
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    cp h                                          ; $655b: $bc
    ld a, [hl]                                    ; $655c: $7e
    inc l                                         ; $655d: $2c
    add hl, sp                                    ; $655e: $39
    nop                                           ; $655f: $00
    inc e                                         ; $6560: $1c
    nop                                           ; $6561: $00
    jr nz, jr_0b7_6520                            ; $6562: $20 $bc

    ld a, [hl]                                    ; $6564: $7e
    inc l                                         ; $6565: $2c
    add hl, sp                                    ; $6566: $39
    nop                                           ; $6567: $00
    inc e                                         ; $6568: $1c
    nop                                           ; $6569: $00
    jr nz, jr_0b7_651f                            ; $656a: $20 $b3

    ld e, c                                       ; $656c: $59
    or a                                          ; $656d: $b7
    ld a, [bc]                                    ; $656e: $0a
    nop                                           ; $656f: $00
    inc e                                         ; $6570: $1c
    nop                                           ; $6571: $00
    jr nz, jr_0b7_6527                            ; $6572: $20 $b3

    ld e, c                                       ; $6574: $59
    or a                                          ; $6575: $b7
    ld a, [bc]                                    ; $6576: $0a
    nop                                           ; $6577: $00
    inc e                                         ; $6578: $1c

jr_0b7_6579:
    nop                                           ; $6579: $00
    inc d                                         ; $657a: $14
    ld l, a                                       ; $657b: $6f
    ld b, l                                       ; $657c: $45
    sbc e                                         ; $657d: $9b
    ld a, d                                       ; $657e: $7a
    or a                                          ; $657f: $b7
    ld a, [bc]                                    ; $6580: $0a
    nop                                           ; $6581: $00
    inc b                                         ; $6582: $04
    ld c, e                                       ; $6583: $4b
    ld c, b                                       ; $6584: $48
    daa                                           ; $6585: $27
    inc l                                         ; $6586: $2c
    ld c, a                                       ; $6587: $4f
    ld h, b                                       ; $6588: $60
    nop                                           ; $6589: $00
    nop                                           ; $658a: $00
    or b                                          ; $658b: $b0
    ld e, h                                       ; $658c: $5c
    inc b                                         ; $658d: $04
    jr z, jr_0b7_6528                             ; $658e: $28 $98

    ld a, l                                       ; $6590: $7d
    nop                                           ; $6591: $00
    nop                                           ; $6592: $00

jr_0b7_6593:
    rst $30                                       ; $6593: $f7
    ld [hl], c                                    ; $6594: $71
    jp z, RST_30                                  ; $6595: $ca $30 $00

    jr nz, jr_0b7_659a                            ; $6598: $20 $00

jr_0b7_659a:
    jr nz, jr_0b7_6593                            ; $659a: $20 $f7

    ld [hl], c                                    ; $659c: $71
    jp z, RST_30                                  ; $659d: $ca $30 $00

    jr nz, jr_0b7_65a2                            ; $65a0: $20 $00

jr_0b7_65a2:
    jr nz, @+$71                                  ; $65a2: $20 $6f

    ld b, l                                       ; $65a4: $45
    sbc e                                         ; $65a5: $9b
    ld a, d                                       ; $65a6: $7a
    or a                                          ; $65a7: $b7
    ld a, [bc]                                    ; $65a8: $0a
    nop                                           ; $65a9: $00
    jr nz, @+$71                                  ; $65aa: $20 $6f

    ld b, l                                       ; $65ac: $45
    sbc e                                         ; $65ad: $9b
    ld a, d                                       ; $65ae: $7a
    or a                                          ; $65af: $b7
    ld a, [bc]                                    ; $65b0: $0a
    ld [hl+], a                                   ; $65b1: $22
    inc c                                         ; $65b2: $0c
    ld c, [hl]                                    ; $65b3: $4e
    ld b, l                                       ; $65b4: $45
    ld a, d                                       ; $65b5: $7a

jr_0b7_65b6:
    ld a, d                                       ; $65b6: $7a
    or a                                          ; $65b7: $b7
    ld a, [bc]                                    ; $65b8: $0a
    ld hl, $b400                                  ; $65b9: $21 $00 $b4
    ld hl, $58af                                  ; $65bc: $21 $af $58
    ld h, a                                       ; $65bf: $67
    jr jr_0b7_65c2                                ; $65c0: $18 $00

jr_0b7_65c2:
    nop                                           ; $65c2: $00
    ld d, b                                       ; $65c3: $50
    add hl, de                                    ; $65c4: $19
    or h                                          ; $65c5: $b4
    ld hl, $1972                                  ; $65c6: $21 $72 $19
    nop                                           ; $65c9: $00
    nop                                           ; $65ca: $00
    ld c, [hl]                                    ; $65cb: $4e
    ld c, c                                       ; $65cc: $49
    sbc e                                         ; $65cd: $9b
    ld a, d                                       ; $65ce: $7a
    nop                                           ; $65cf: $00
    jr nz, jr_0b7_65d2                            ; $65d0: $20 $00

jr_0b7_65d2:
    jr nz, jr_0b7_6622                            ; $65d2: $20 $4e

    ld c, c                                       ; $65d4: $49
    sbc e                                         ; $65d5: $9b
    ld a, d                                       ; $65d6: $7a
    nop                                           ; $65d7: $00
    jr nz, jr_0b7_65da                            ; $65d8: $20 $00

jr_0b7_65da:
    jr nz, jr_0b7_662a                            ; $65da: $20 $4e

    ld b, l                                       ; $65dc: $45
    ld a, d                                       ; $65dd: $7a
    ld a, d                                       ; $65de: $7a
    or a                                          ; $65df: $b7
    ld a, [bc]                                    ; $65e0: $0a
    nop                                           ; $65e1: $00
    jr nz, jr_0b7_6579                            ; $65e2: $20 $95

    ld c, $7c                                     ; $65e4: $0e $7c
    inc bc                                        ; $65e6: $03
    ret c                                         ; $65e7: $d8

    ld a, [bc]                                    ; $65e8: $0a
    ld hl, $b304                                  ; $65e9: $21 $04 $b3
    ld e, l                                       ; $65ec: $5d
    ld a, l                                       ; $65ed: $7d
    rla                                           ; $65ee: $17
    ld l, c                                       ; $65ef: $69
    inc [hl]                                      ; $65f0: $34
    ld bc, $f004                                  ; $65f1: $01 $04 $f0
    inc c                                         ; $65f4: $0c
    ld c, b                                       ; $65f5: $48
    nop                                           ; $65f6: $00
    ld [hl], d                                    ; $65f7: $72
    dec e                                         ; $65f8: $1d
    nop                                           ; $65f9: $00
    inc b                                         ; $65fa: $04
    ld e, c                                       ; $65fb: $59
    ld [hl], $8b                                  ; $65fc: $36 $8b
    nop                                           ; $65fe: $00
    pop af                                        ; $65ff: $f1
    ld [$0000], sp                                ; $6600: $08 $00 $00
    xor d                                         ; $6603: $aa
    jr c, jr_0b7_6606                             ; $6604: $38 $00

jr_0b7_6606:
    inc e                                         ; $6606: $1c
    sub c                                         ; $6607: $91
    ld d, l                                       ; $6608: $55
    nop                                           ; $6609: $00
    jr nz, jr_0b7_65b6                            ; $660a: $20 $aa

    jr c, jr_0b7_660e                             ; $660c: $38 $00

jr_0b7_660e:
    inc e                                         ; $660e: $1c
    sub c                                         ; $660f: $91
    ld d, l                                       ; $6610: $55
    nop                                           ; $6611: $00
    jr nz, @-$4b                                  ; $6612: $20 $b3

    ld e, l                                       ; $6614: $5d
    ld a, l                                       ; $6615: $7d
    rla                                           ; $6616: $17
    ld l, c                                       ; $6617: $69
    inc [hl]                                      ; $6618: $34
    nop                                           ; $6619: $00
    jr jr_0b7_666f                                ; $661a: $18 $53

    ld c, $5b                                     ; $661c: $0e $5b
    inc bc                                        ; $661e: $03
    cp [hl]                                       ; $661f: $be
    inc sp                                        ; $6620: $33
    nop                                           ; $6621: $00

jr_0b7_6622:
    nop                                           ; $6622: $00
    xor $3d                                       ; $6623: $ee $3d
    ld e, $7f                                     ; $6625: $1e $7f
    ld b, [hl]                                    ; $6627: $46
    jr z, jr_0b7_664d                             ; $6628: $28 $23

jr_0b7_662a:
    nop                                           ; $662a: $00
    ld e, c                                       ; $662b: $59
    ld [hl], $2b                                  ; $662c: $36 $2b
    add hl, sp                                    ; $662e: $39
    call c, Call_0b7_447f                         ; $662f: $dc $7f $44
    inc b                                         ; $6632: $04
    push af                                       ; $6633: $f5
    dec h                                         ; $6634: $25
    ld h, d                                       ; $6635: $62
    ld e, h                                       ; $6636: $5c
    call c, $007f                                 ; $6637: $dc $7f $00
    nop                                           ; $663a: $00
    ld e, h                                       ; $663b: $5c
    rlca                                          ; $663c: $07
    db $ed                                        ; $663d: $ed
    ld b, h                                       ; $663e: $44
    nop                                           ; $663f: $00
    inc e                                         ; $6640: $1c
    nop                                           ; $6641: $00
    jr nz, @+$5e                                  ; $6642: $20 $5c

    rlca                                          ; $6644: $07
    db $ed                                        ; $6645: $ed
    ld b, h                                       ; $6646: $44
    nop                                           ; $6647: $00
    inc e                                         ; $6648: $1c
    nop                                           ; $6649: $00
    jr nz, jr_0b7_665d                            ; $664a: $20 $11

    ld [de], a                                    ; $664c: $12

jr_0b7_664d:
    ld e, $7f                                     ; $664d: $1e $7f
    ld b, [hl]                                    ; $664f: $46
    jr z, jr_0b7_6652                             ; $6650: $28 $00

jr_0b7_6652:
    ld [$2e6c], sp                                ; $6652: $08 $6c $2e
    ld e, h                                       ; $6655: $5c
    rlca                                          ; $6656: $07
    ld [hl-], a                                   ; $6657: $32
    ld c, $00                                     ; $6658: $0e $00
    inc b                                         ; $665a: $04
    ld e, $7f                                     ; $665b: $1e $7f

jr_0b7_665d:
    adc h                                         ; $665d: $8c
    dec [hl]                                      ; $665e: $35
    ret                                           ; $665f: $c9


    nop                                           ; $6660: $00
    add a                                         ; $6661: $87
    inc b                                         ; $6662: $04
    sub e                                         ; $6663: $93
    ld hl, $3659                                  ; $6664: $21 $59 $36
    xor l                                         ; $6667: $ad
    nop                                           ; $6668: $00
    nop                                           ; $6669: $00
    nop                                           ; $666a: $00
    ld [hl], b                                    ; $666b: $70

jr_0b7_666c:
    dec e                                         ; $666c: $1d
    xor c                                         ; $666d: $a9
    inc d                                         ; $666e: $14

jr_0b7_666f:
    ld e, c                                       ; $666f: $59
    ld [hl], $24                                  ; $6670: $36 $24
    jr jr_0b7_66ea                                ; $6672: $18 $76

    ld [hl], l                                    ; $6674: $75
    ld l, $1e                                     ; $6675: $2e $1e
    ld e, h                                       ; $6677: $5c
    rla                                           ; $6678: $17
    nop                                           ; $6679: $00
    jr nz, jr_0b7_666c                            ; $667a: $20 $f0

    dec d                                         ; $667c: $15
    ld [hl-], a                                   ; $667d: $32
    ld [de], a                                    ; $667e: $12
    ld e, h                                       ; $667f: $5c
    rla                                           ; $6680: $17
    nop                                           ; $6681: $00
    jr nz, @-$2f                                  ; $6682: $20 $cf

    dec d                                         ; $6684: $15
    sub l                                         ; $6685: $95
    ld c, $19                                     ; $6686: $0e $19
    inc bc                                        ; $6688: $03
    nop                                           ; $6689: $00
    nop                                           ; $668a: $00
    dec hl                                        ; $668b: $2b
    ld h, $b6                                     ; $668c: $26 $b6
    ld a, [bc]                                    ; $668e: $0a
    sbc l                                         ; $668f: $9d
    inc bc                                        ; $6690: $03
    nop                                           ; $6691: $00
    nop                                           ; $6692: $00
    sbc e                                         ; $6693: $9b
    ld a, d                                       ; $6694: $7a
    rrca                                          ; $6695: $0f
    ld bc, $7f1f                                  ; $6696: $01 $1f $7f
    xor l                                         ; $6699: $ad
    nop                                           ; $669a: $00
    ld e, c                                       ; $669b: $59
    ld [hl], $f1                                  ; $669c: $36 $f1
    ld [$0533], sp                                ; $669e: $08 $33 $05
    dec b                                         ; $66a1: $05
    jr z, jr_0b7_66fd                             ; $66a2: $28 $59

    ld [hl], $0c                                  ; $66a4: $36 $0c
    ld de, $606f                                  ; $66a6: $11 $6f $60
    nop                                           ; $66a9: $00
    nop                                           ; $66aa: $00
    ld a, [hl+]                                   ; $66ab: $2a
    ld h, $5c                                     ; $66ac: $26 $5c
    inc bc                                        ; $66ae: $03
    ld a, [c]                                     ; $66af: $f2
    ld l, b                                       ; $66b0: $68
    nop                                           ; $66b1: $00
    jr nz, @-$2f                                  ; $66b2: $20 $cf

    dec d                                         ; $66b4: $15
    ld e, h                                       ; $66b5: $5c
    inc bc                                        ; $66b6: $03
    ld d, e                                       ; $66b7: $53
    ld c, $00                                     ; $66b8: $0e $00
    jr jr_0b7_66cd                                ; $66ba: $18 $11

    ld [de], a                                    ; $66bc: $12
    rst $18                                       ; $66bd: $df
    ld l, e                                       ; $66be: $6b
    ld e, h                                       ; $66bf: $5c
    rrca                                          ; $66c0: $0f
    nop                                           ; $66c1: $00
    nop                                           ; $66c2: $00
    add hl, hl                                    ; $66c3: $29
    ld [hl+], a                                   ; $66c4: $22
    ld a, [hl+]                                   ; $66c5: $2a
    ld h, $5c                                     ; $66c6: $26 $5c
    rrca                                          ; $66c8: $0f
    nop                                           ; $66c9: $00
    nop                                           ; $66ca: $00
    push de                                       ; $66cb: $d5
    ld h, l                                       ; $66cc: $65

jr_0b7_66cd:
    xor d                                         ; $66cd: $aa
    inc d                                         ; $66ce: $14
    db $fd                                        ; $66cf: $fd
    ld a, [hl]                                    ; $66d0: $7e
    ld b, l                                       ; $66d1: $45
    nop                                           ; $66d2: $00
    ld e, c                                       ; $66d3: $59
    ld [hl], $12                                  ; $66d4: $36 $12
    dec b                                         ; $66d6: $05
    xor l                                         ; $66d7: $ad
    nop                                           ; $66d8: $00
    inc hl                                        ; $66d9: $23
    nop                                           ; $66da: $00
    pop de                                        ; $66db: $d1
    inc b                                         ; $66dc: $04
    ld [$5934], sp                                ; $66dd: $08 $34 $59
    ld [hl], $21                                  ; $66e0: $36 $21
    nop                                           ; $66e2: $00
    scf                                           ; $66e3: $37
    ld a, l                                       ; $66e4: $7d
    add hl, bc                                    ; $66e5: $09
    ld [hl+], a                                   ; $66e6: $22
    sbc a                                         ; $66e7: $9f
    ld a, [hl]                                    ; $66e8: $7e
    nop                                           ; $66e9: $00

jr_0b7_66ea:
    inc e                                         ; $66ea: $1c
    ld d, c                                       ; $66eb: $51
    ld [de], a                                    ; $66ec: $12
    cp [hl]                                       ; $66ed: $be
    rra                                           ; $66ee: $1f
    rst $38                                       ; $66ef: $ff
    ld h, e                                       ; $66f0: $63
    nop                                           ; $66f1: $00
    ld [$1b9d], sp                                ; $66f2: $08 $9d $1b
    rst $18                                       ; $66f5: $df
    ld h, a                                       ; $66f6: $67
    ld [$081e], sp                                ; $66f7: $08 $1e $08
    ld e, $09                                     ; $66fa: $1e $09
    ld [hl+], a                                   ; $66fc: $22

jr_0b7_66fd:
    add hl, hl                                    ; $66fd: $29
    ld [hl+], a                                   ; $66fe: $22
    ld [$001e], sp                                ; $66ff: $08 $1e $00
    nop                                           ; $6702: $00
    sbc h                                         ; $6703: $9c
    ld a, [hl]                                    ; $6704: $7e
    add hl, hl                                    ; $6705: $29
    ld [hl+], a                                   ; $6706: $22
    ld h, $24                                     ; $6707: $26 $24
    ld [hl+], a                                   ; $6709: $22
    nop                                           ; $670a: $00
    sub l                                         ; $670b: $95
    dec d                                         ; $670c: $15
    adc $00                                       ; $670d: $ce $00
    ld e, c                                       ; $670f: $59
    ld [hl], $00                                  ; $6710: $36 $00
    nop                                           ; $6712: $00
    jp z, Jump_0b7_590c                           ; $6713: $ca $0c $59

    ld [hl], $d1                                  ; $6716: $36 $d1
    nop                                           ; $6718: $00
    nop                                           ; $6719: $00
    inc b                                         ; $671a: $04
    ld e, [hl]                                    ; $671b: $5e
    ld a, [hl]                                    ; $671c: $7e
    rlca                                          ; $671d: $07
    ld a, [de]                                    ; $671e: $1a
    daa                                           ; $671f: $27
    inc l                                         ; $6720: $2c
    nop                                           ; $6721: $00
    inc e                                         ; $6722: $1c
    sbc l                                         ; $6723: $9d
    daa                                           ; $6724: $27
    ld [$ff1a], sp                                ; $6725: $08 $1a $ff
    ld a, e                                       ; $6728: $7b
    nop                                           ; $6729: $00
    nop                                           ; $672a: $00
    ld a, l                                       ; $672b: $7d
    inc bc                                        ; $672c: $03
    rst $18                                       ; $672d: $df
    ld e, a                                       ; $672e: $5f
    rst $20                                       ; $672f: $e7
    add hl, de                                    ; $6730: $19
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    rst $20                                       ; $6733: $e7
    add hl, de                                    ; $6734: $19
    cpl                                           ; $6735: $2f
    jr @+$0a                                      ; $6736: $18 $08

    ld a, [de]                                    ; $6738: $1a
    ld bc, $5700                                  ; $6739: $01 $00 $57
    ld c, l                                       ; $673c: $4d
    xor [hl]                                      ; $673d: $ae
    inc h                                         ; $673e: $24
    cp $7e                                        ; $673f: $fe $7e
    nop                                           ; $6741: $00
    nop                                           ; $6742: $00
    sub l                                         ; $6743: $95
    dec e                                         ; $6744: $1d
    ld h, [hl]                                    ; $6745: $66
    inc b                                         ; $6746: $04
    xor h                                         ; $6747: $ac
    nop                                           ; $6748: $00
    nop                                           ; $6749: $00
    nop                                           ; $674a: $00
    xor c                                         ; $674b: $a9
    nop                                           ; $674c: $00
    pop de                                        ; $674d: $d1
    nop                                           ; $674e: $00
    ld [de], a                                    ; $674f: $12
    ld bc, $0401                                  ; $6750: $01 $01 $04
    jr jr_0b7_67cb                                ; $6753: $18 $76

    rst $20                                       ; $6755: $e7
    dec d                                         ; $6756: $15
    rst $18                                       ; $6757: $df
    ld a, [hl]                                    ; $6758: $7e
    nop                                           ; $6759: $00
    inc e                                         ; $675a: $1c
    ld a, l                                       ; $675b: $7d
    dec bc                                        ; $675c: $0b
    rst $20                                       ; $675d: $e7
    dec d                                         ; $675e: $15
    rst $18                                       ; $675f: $df
    ld d, a                                       ; $6760: $57
    nop                                           ; $6761: $00
    ld [$2bbe], sp                                ; $6762: $08 $be $2b
    and $15                                       ; $6765: $e6 $15
    rst $38                                       ; $6767: $ff
    ld [hl], a                                    ; $6768: $77
    ld bc, $dc00                                  ; $6769: $01 $00 $dc
    ld b, b                                       ; $676c: $40
    and $15                                       ; $676d: $e6 $15
    ld c, $14                                     ; $676f: $0e $14
    ld [bc], a                                    ; $6771: $02
    inc b                                         ; $6772: $04
    inc a                                         ; $6773: $3c
    ld b, l                                       ; $6774: $45
    ld e, a                                       ; $6775: $5f
    ld a, a                                       ; $6776: $7f
    adc e                                         ; $6777: $8b
    inc h                                         ; $6778: $24
    ld bc, $1800                                  ; $6779: $01 $00 $18
    ld l, $5f                                     ; $677c: $2e $5f
    ld a, a                                       ; $677e: $7f
    ret                                           ; $677f: $c9


    jr nz, jr_0b7_6782                            ; $6780: $20 $00

jr_0b7_6782:
    nop                                           ; $6782: $00
    ld c, l                                       ; $6783: $4d
    ld c, l                                       ; $6784: $4d
    ld [hl], e                                    ; $6785: $73
    ld l, c                                       ; $6786: $69
    inc bc                                        ; $6787: $03
    jr nz, jr_0b7_678a                            ; $6788: $20 $00

jr_0b7_678a:
    nop                                           ; $678a: $00
    sbc [hl]                                      ; $678b: $9e
    ld a, [hl]                                    ; $678c: $7e
    add $11                                       ; $678d: $c6 $11
    and $15                                       ; $678f: $e6 $15
    nop                                           ; $6791: $00
    inc e                                         ; $6792: $1c
    rst $00                                       ; $6793: $c7
    ld de, $06d7                                  ; $6794: $11 $d7 $06
    cp [hl]                                       ; $6797: $be
    daa                                           ; $6798: $27
    nop                                           ; $6799: $00
    db $10                                        ; $679a: $10
    ld a, [hl-]                                   ; $679b: $3a
    rla                                           ; $679c: $17
    rst $38                                       ; $679d: $ff
    ld a, a                                       ; $679e: $7f
    push bc                                       ; $679f: $c5
    ld de, $0402                                  ; $67a0: $11 $02 $04
    ld d, l                                       ; $67a3: $55
    jr z, @-$39                                   ; $67a4: $28 $c5

    ld de, $495d                                  ; $67a6: $11 $5d $49
    ld bc, $300c                                  ; $67a9: $01 $0c $30
    ld d, l                                       ; $67ac: $55
    inc c                                         ; $67ad: $0c
    inc c                                         ; $67ae: $0c
    ld a, [de]                                    ; $67af: $1a
    dec a                                         ; $67b0: $3d
    ld [bc], a                                    ; $67b1: $02
    ld [$325a], sp                                ; $67b2: $08 $5a $32
    ld d, l                                       ; $67b5: $55
    ld [hl], c                                    ; $67b6: $71
    rra                                           ; $67b7: $1f
    ld a, a                                       ; $67b8: $7f
    ld [bc], a                                    ; $67b9: $02
    inc c                                         ; $67ba: $0c
    ld sp, $4f14                                  ; $67bb: $31 $14 $4f
    ld h, h                                       ; $67be: $64
    ld e, a                                       ; $67bf: $5f
    ld b, l                                       ; $67c0: $45
    nop                                           ; $67c1: $00
    nop                                           ; $67c2: $00

jr_0b7_67c3:
    push bc                                       ; $67c3: $c5
    dec c                                         ; $67c4: $0d
    push bc                                       ; $67c5: $c5
    ld de, $0001                                  ; $67c6: $11 $01 $00
    nop                                           ; $67c9: $00
    inc e                                         ; $67ca: $1c

jr_0b7_67cb:
    push bc                                       ; $67cb: $c5
    dec c                                         ; $67cc: $0d
    ld [hl-], a                                   ; $67cd: $32
    ld c, $be                                     ; $67ce: $0e $be
    rra                                           ; $67d0: $1f
    nop                                           ; $67d1: $00
    inc d                                         ; $67d2: $14
    ld [hl-], a                                   ; $67d3: $32
    ld c, $a4                                     ; $67d4: $0e $a4
    dec c                                         ; $67d6: $0d
    sbc [hl]                                      ; $67d7: $9e
    rlca                                          ; $67d8: $07
    nop                                           ; $67d9: $00
    nop                                           ; $67da: $00
    ld a, [bc]                                    ; $67db: $0a
    inc c                                         ; $67dc: $0c
    and h                                         ; $67dd: $a4
    dec c                                         ; $67de: $0d
    ld a, c                                       ; $67df: $79
    inc l                                         ; $67e0: $2c
    nop                                           ; $67e1: $00
    inc b                                         ; $67e2: $04
    inc c                                         ; $67e3: $0c
    inc d                                         ; $67e4: $14
    ld [$540c], sp                                ; $67e5: $08 $0c $54
    inc h                                         ; $67e8: $24
    ld bc, $5b04                                  ; $67e9: $01 $04 $5b
    ld e, d                                       ; $67ec: $5a
    dec hl                                        ; $67ed: $2b
    ld c, b                                       ; $67ee: $48
    ld c, a                                       ; $67ef: $4f
    ld de, $0000                                  ; $67f0: $11 $00 $00
    dec l                                         ; $67f3: $2d
    ld d, h                                       ; $67f4: $54
    sub h                                         ; $67f5: $94
    jr nc, jr_0b7_67c3                            ; $67f6: $30 $cb

    ld bc, $0000                                  ; $67f8: $01 $00 $00
    and h                                         ; $67fb: $a4
    add hl, bc                                    ; $67fc: $09
    and l                                         ; $67fd: $a5
    nop                                           ; $67fe: $00
    add hl, bc                                    ; $67ff: $09
    stop                                          ; $6800: $10 $00
    inc e                                         ; $6802: $1c
    ld d, d                                       ; $6803: $52
    ld c, $a4                                     ; $6804: $0e $a4
    add hl, bc                                    ; $6806: $09
    ld a, h                                       ; $6807: $7c
    inc bc                                        ; $6808: $03
    nop                                           ; $6809: $00
    inc d                                         ; $680a: $14
    ld [hl-], a                                   ; $680b: $32
    ld c, $a3                                     ; $680c: $0e $a3
    add hl, bc                                    ; $680e: $09
    sbc [hl]                                      ; $680f: $9e
    rlca                                          ; $6810: $07
    ld bc, $b000                                  ; $6811: $01 $00 $b0
    ld d, l                                       ; $6814: $55
    dec a                                         ; $6815: $3d
    ld a, e                                       ; $6816: $7b
    inc c                                         ; $6817: $0c
    dec a                                         ; $6818: $3d
    inc hl                                        ; $6819: $23
    inc c                                         ; $681a: $0c
    db $eb                                        ; $681b: $eb
    ld a, h                                       ; $681c: $7c
    xor l                                         ; $681d: $ad
    dec h                                         ; $681e: $25
    ld e, d                                       ; $681f: $5a
    ld [hl], a                                    ; $6820: $77
    nop                                           ; $6821: $00
    inc b                                         ; $6822: $04
    push de                                       ; $6823: $d5
    dec e                                         ; $6824: $1d
    or c                                          ; $6825: $b1
    ld e, c                                       ; $6826: $59
    ld b, a                                       ; $6827: $47
    jr nz, jr_0b7_682b                            ; $6828: $20 $01

    inc b                                         ; $682a: $04

jr_0b7_682b:
    ld e, c                                       ; $682b: $59
    inc bc                                        ; $682c: $03
    dec b                                         ; $682d: $05
    jr z, @+$4a                                   ; $682e: $28 $48

    ld c, h                                       ; $6830: $4c
    nop                                           ; $6831: $00
    nop                                           ; $6832: $00
    rst $30                                       ; $6833: $f7
    ld a, [hl]                                    ; $6834: $7e
    and e                                         ; $6835: $a3
    dec b                                         ; $6836: $05
    cp [hl]                                       ; $6837: $be
    ld a, a                                       ; $6838: $7f
    nop                                           ; $6839: $00
    inc e                                         ; $683a: $1c
    ld d, e                                       ; $683b: $53
    ld c, $a3                                     ; $683c: $0e $a3
    dec b                                         ; $683e: $05
    ld e, h                                       ; $683f: $5c
    inc bc                                        ; $6840: $03
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    ld [hl], h                                    ; $6843: $74
    ld a, [bc]                                    ; $6844: $0a
    sub $6d                                       ; $6845: $d6 $6d
    nop                                           ; $6847: $00
    jr nz, jr_0b7_684a                            ; $6848: $20 $00

jr_0b7_684a:
    nop                                           ; $684a: $00
    db $f4                                        ; $684b: $f4
    ld a, c                                       ; $684c: $79
    reti                                          ; $684d: $d9


    ld a, [hl]                                    ; $684e: $7e
    ld l, l                                       ; $684f: $6d
    add hl, de                                    ; $6850: $19
    ld h, h                                       ; $6851: $64
    inc b                                         ; $6852: $04
    ld b, h                                       ; $6853: $44
    ld [hl], b                                    ; $6854: $70
    rst $38                                       ; $6855: $ff
    inc bc                                        ; $6856: $03
    ld [de], a                                    ; $6857: $12
    ld a, d                                       ; $6858: $7a
    nop                                           ; $6859: $00
    inc b                                         ; $685a: $04
    dec c                                         ; $685b: $0d
    dec d                                         ; $685c: $15
    call nc, Call_000_2761                        ; $685d: $d4 $61 $27
    inc l                                         ; $6860: $2c
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    or [hl]                                       ; $6863: $b6
    ld [bc], a                                    ; $6864: $02
    inc bc                                        ; $6865: $03
    ld l, h                                       ; $6866: $6c
    inc bc                                        ; $6867: $03
    inc e                                         ; $6868: $1c
    ld bc, $8810                                  ; $6869: $01 $10 $88
    ld l, b                                       ; $686c: $68
    add d                                         ; $686d: $82
    ld bc, $7df1                                  ; $686e: $01 $f1 $7d
    nop                                           ; $6871: $00
    inc e                                         ; $6872: $1c
    ld [hl-], a                                   ; $6873: $32
    ld [de], a                                    ; $6874: $12
    add d                                         ; $6875: $82
    ld bc, $135c                                  ; $6876: $01 $5c $13
    nop                                           ; $6879: $00
    jr jr_0b7_688d                                ; $687a: $18 $11

    ld [de], a                                    ; $687c: $12
    add hl, de                                    ; $687d: $19
    ld a, [hl]                                    ; $687e: $7e
    ld sp, hl                                     ; $687f: $f9
    ld [bc], a                                    ; $6880: $02
    ld [hl+], a                                   ; $6881: $22
    jr c, jr_0b7_6891                             ; $6882: $38 $0d

    ld [hl], c                                    ; $6884: $71
    adc l                                         ; $6885: $8d

jr_0b7_6886:
    dec b                                         ; $6886: $05
    or h                                          ; $6887: $b4
    ld a, c                                       ; $6888: $79
    ld b, e                                       ; $6889: $43
    nop                                           ; $688a: $00
    rst $38                                       ; $688b: $ff
    inc bc                                        ; $688c: $03

jr_0b7_688d:
    ld [bc], a                                    ; $688d: $02
    ld c, h                                       ; $688e: $4c
    ld b, $24                                     ; $688f: $06 $24

jr_0b7_6891:
    nop                                           ; $6891: $00
    nop                                           ; $6892: $00
    ld d, b                                       ; $6893: $50
    dec c                                         ; $6894: $0d
    add hl, hl                                    ; $6895: $29
    inc d                                         ; $6896: $14
    ld sp, hl                                     ; $6897: $f9
    jr c, jr_0b7_689a                             ; $6898: $38 $00

jr_0b7_689a:
    nop                                           ; $689a: $00
    sub a                                         ; $689b: $97
    inc a                                         ; $689c: $3c
    add hl, sp                                    ; $689d: $39
    inc bc                                        ; $689e: $03
    ld b, a                                       ; $689f: $47
    ld [$1401], sp                                ; $68a0: $08 $01 $14
    inc b                                         ; $68a3: $04
    ld d, b                                       ; $68a4: $50
    ld b, e                                       ; $68a5: $43
    ld bc, $5593                                  ; $68a6: $01 $93 $55
    add b                                         ; $68a9: $80
    nop                                           ; $68aa: $00
    ld a, [hl-]                                   ; $68ab: $3a
    rlca                                          ; $68ac: $07
    rst $18                                       ; $68ad: $df
    ld c, e                                       ; $68ae: $4b
    nop                                           ; $68af: $00
    jr nz, jr_0b7_68b2                            ; $68b0: $20 $00

jr_0b7_68b2:
    nop                                           ; $68b2: $00
    ld [hl-], a                                   ; $68b3: $32
    ld c, $7c                                     ; $68b4: $0e $7c
    inc bc                                        ; $68b6: $03
    nop                                           ; $68b7: $00
    jr nz, jr_0b7_68dd                            ; $68b8: $20 $23

    inc c                                         ; $68ba: $0c
    ld hl, sp+$02                                 ; $68bb: $f8 $02
    adc a                                         ; $68bd: $8f
    ld h, b                                       ; $68be: $60
    ld [bc], a                                    ; $68bf: $02
    inc h                                         ; $68c0: $24
    ld [bc], a                                    ; $68c1: $02
    db $10                                        ; $68c2: $10
    ld sp, $0e02                                  ; $68c3: $31 $02 $0e
    jr nz, jr_0b7_6886                            ; $68c6: $20 $be

    inc bc                                        ; $68c8: $03
    inc bc                                        ; $68c9: $03
    inc b                                         ; $68ca: $04
    sub [hl]                                      ; $68cb: $96
    inc l                                         ; $68cc: $2c
    cpl                                           ; $68cd: $2f
    inc e                                         ; $68ce: $1c
    inc a                                         ; $68cf: $3c
    ld b, l                                       ; $68d0: $45
    nop                                           ; $68d1: $00

jr_0b7_68d2:
    nop                                           ; $68d2: $00
    ld hl, sp+$38                                 ; $68d3: $f8 $38
    sub h                                         ; $68d5: $94
    ld [bc], a                                    ; $68d6: $02
    ld c, e                                       ; $68d7: $4b
    inc d                                         ; $68d8: $14
    ld hl, $1500                                  ; $68d9: $21 $00 $15
    ld [hl], l                                    ; $68dc: $75

jr_0b7_68dd:
    ld c, e                                       ; $68dd: $4b
    dec b                                         ; $68de: $05
    nop                                           ; $68df: $00
    inc d                                         ; $68e0: $14
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    ld e, h                                       ; $68e3: $5c
    rlca                                          ; $68e4: $07
    cp [hl]                                       ; $68e5: $be
    inc sp                                        ; $68e6: $33
    nop                                           ; $68e7: $00
    jr nz, jr_0b7_68ea                            ; $68e8: $20 $00

jr_0b7_68ea:
    nop                                           ; $68ea: $00
    ldh a, [rNR11]                                ; $68eb: $f0 $11
    add hl, de                                    ; $68ed: $19
    rlca                                          ; $68ee: $07
    nop                                           ; $68ef: $00
    jr nz, @+$03                                  ; $68f0: $20 $01

    ld [$03bd], sp                                ; $68f2: $08 $bd $03
    add hl, hl                                    ; $68f5: $29
    ld c, b                                       ; $68f6: $48
    add hl, hl                                    ; $68f7: $29
    ld bc, $0422                                  ; $68f8: $01 $22 $04
    halt                                          ; $68fb: $76
    inc l                                         ; $68fc: $2c
    rst $28                                       ; $68fd: $ef
    ld bc, $02d7                                  ; $68fe: $01 $d7 $02
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    dec a                                         ; $6903: $3d
    ld b, l                                       ; $6904: $45
    dec bc                                        ; $6905: $0b
    db $10                                        ; $6906: $10
    adc l                                         ; $6907: $8d
    jr nz, jr_0b7_690b                            ; $6908: $20 $01

    nop                                           ; $690a: $00

jr_0b7_690b:
    sub [hl]                                      ; $690b: $96
    jr nc, jr_0b7_6915                            ; $690c: $30 $07

    inc c                                         ; $690e: $0c
    ld a, [hl+]                                   ; $690f: $2a
    db $10                                        ; $6910: $10
    ld bc, $0700                                  ; $6911: $01 $00 $07
    inc [hl]                                      ; $6914: $34

jr_0b7_6915:
    ld c, [hl]                                    ; $6915: $4e
    ld e, b                                       ; $6916: $58
    ld b, $01                                     ; $6917: $06 $01
    nop                                           ; $6919: $00
    jr nz, jr_0b7_68d2                            ; $691a: $20 $b6

    ld a, [bc]                                    ; $691c: $0a
    cp [hl]                                       ; $691d: $be
    cpl                                           ; $691e: $2f
    dec sp                                        ; $691f: $3b
    inc bc                                        ; $6920: $03
    nop                                           ; $6921: $00
    jr nz, @-$2f                                  ; $6922: $20 $cf

    dec d                                         ; $6924: $15
    ld hl, sp+$06                                 ; $6925: $f8 $06
    ld d, e                                       ; $6927: $53
    ld [de], a                                    ; $6928: $12

jr_0b7_6929:
    ld hl, $f000                                  ; $6929: $21 $00 $f0
    ld bc, $2403                                  ; $692c: $01 $03 $24
    jr z, @+$36                                   ; $692f: $28 $34

    nop                                           ; $6931: $00
    nop                                           ; $6932: $00
    ld l, h                                       ; $6933: $6c
    ld bc, $0486                                  ; $6934: $01 $86 $04
    or a                                          ; $6937: $b7
    jr nc, jr_0b7_693b                            ; $6938: $30 $01

    nop                                           ; $693a: $00

jr_0b7_693b:
    or h                                          ; $693b: $b4
    inc l                                         ; $693c: $2c
    dec a                                         ; $693d: $3d
    ld b, l                                       ; $693e: $45
    ld c, l                                       ; $693f: $4d
    inc e                                         ; $6940: $1c
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    or l                                          ; $6943: $b5
    inc l                                         ; $6944: $2c
    ld [$1b0c], sp                                ; $6945: $08 $0c $1b
    ld b, c                                       ; $6948: $41
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    cp [hl]                                       ; $694b: $be
    inc de                                        ; $694c: $13
    ld b, $0c                                     ; $694d: $06 $0c
    dec c                                         ; $694f: $0d
    stop                                          ; $6950: $10 $00
    jr nz, jr_0b7_6986                            ; $6952: $20 $32

    ld [de], a                                    ; $6954: $12
    ld e, e                                       ; $6955: $5b
    inc bc                                        ; $6956: $03
    or a                                          ; $6957: $b7
    ld a, [bc]                                    ; $6958: $0a
    nop                                           ; $6959: $00
    jr nz, @-$2f                                  ; $695a: $20 $cf

    dec d                                         ; $695c: $15
    ld [hl-], a                                   ; $695d: $32
    ld [de], a                                    ; $695e: $12
    or a                                          ; $695f: $b7
    jr nc, jr_0b7_6963                            ; $6960: $30 $01

    nop                                           ; $6962: $00

jr_0b7_6963:
    ret c                                         ; $6963: $d8

    ld b, $2e                                     ; $6964: $06 $2e
    jr jr_0b7_696b                                ; $6966: $18 $03

    inc d                                         ; $6968: $14
    nop                                           ; $6969: $00
    nop                                           ; $696a: $00

jr_0b7_696b:
    inc c                                         ; $696b: $0c
    db $10                                        ; $696c: $10
    ld d, d                                       ; $696d: $52
    jr nz, jr_0b7_6975                            ; $696e: $20 $05

    inc b                                         ; $6970: $04
    ld c, l                                       ; $6971: $4d
    inc e                                         ; $6972: $1c
    ret c                                         ; $6973: $d8

    inc [hl]                                      ; $6974: $34

jr_0b7_6975:
    inc e                                         ; $6975: $1c
    ld b, c                                       ; $6976: $41
    sub d                                         ; $6977: $92
    inc h                                         ; $6978: $24
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    or l                                          ; $697b: $b5
    inc l                                         ; $697c: $2c
    ld e, l                                       ; $697d: $5d
    ld c, c                                       ; $697e: $49
    dec b                                         ; $697f: $05
    jr jr_0b7_6983                                ; $6980: $18 $01

    inc b                                         ; $6982: $04

jr_0b7_6983:
    ld e, h                                       ; $6983: $5c
    ld b, l                                       ; $6984: $45
    ld a, [de]                                    ; $6985: $1a

jr_0b7_6986:
    rlca                                          ; $6986: $07
    ld c, e                                       ; $6987: $4b
    inc d                                         ; $6988: $14
    nop                                           ; $6989: $00

jr_0b7_698a:
    jr nz, @+$12                                  ; $698a: $20 $10

    ld d, $96                                     ; $698c: $16 $96
    ld c, $4b                                     ; $698e: $0e $4b
    inc d                                         ; $6990: $14
    nop                                           ; $6991: $00
    jr nz, jr_0b7_6929                            ; $6992: $20 $95

    ld c, $7c                                     ; $6994: $0e $7c
    inc bc                                        ; $6996: $03
    dec b                                         ; $6997: $05
    inc b                                         ; $6998: $04
    nop                                           ; $6999: $00
    nop                                           ; $699a: $00
    ldh a, [rNR11]                                ; $699b: $f0 $11
    rst $10                                       ; $699d: $d7
    inc [hl]                                      ; $699e: $34
    inc bc                                        ; $699f: $03
    jr jr_0b7_69a2                                ; $69a0: $18 $00

jr_0b7_69a2:
    nop                                           ; $69a2: $00
    ld l, $18                                     ; $69a3: $2e $18
    ld sp, hl                                     ; $69a5: $f9
    jr c, jr_0b7_69af                             ; $69a6: $38 $07

    ld [$0000], sp                                ; $69a8: $08 $00 $00
    inc b                                         ; $69ab: $04
    jr nz, jr_0b7_69b5                            ; $69ac: $20 $07

    inc b                                         ; $69ae: $04

jr_0b7_69af:
    inc bc                                        ; $69af: $03
    nop                                           ; $69b0: $00
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    ld [bc], a                                    ; $69b3: $02
    inc d                                         ; $69b4: $14

jr_0b7_69b5:
    inc b                                         ; $69b5: $04
    jr nz, jr_0b7_69b8                            ; $69b6: $20 $00

jr_0b7_69b8:
    inc c                                         ; $69b8: $0c
    ld bc, $1600                                  ; $69b9: $01 $00 $16
    dec [hl]                                      ; $69bc: $35
    ld de, $0b12                                  ; $69bd: $11 $12 $0b
    stop                                          ; $69c0: $10 $00
    jr nz, jr_0b7_69d5                            ; $69c2: $20 $11

    ld [de], a                                    ; $69c4: $12
    ld a, [de]                                    ; $69c5: $1a
    inc bc                                        ; $69c6: $03
    dec bc                                        ; $69c7: $0b
    stop                                          ; $69c8: $10 $00
    jr nz, jr_0b7_698a                            ; $69ca: $20 $be

    dec hl                                        ; $69cc: $2b
    ld sp, hl                                     ; $69cd: $f9
    jr c, jr_0b7_69d7                             ; $69ce: $38 $07

    ld [$0000], sp                                ; $69d0: $08 $00 $00
    jr jr_0b7_6a0e                                ; $69d3: $18 $39

jr_0b7_69d5:
    rst $28                                       ; $69d5: $ef
    dec d                                         ; $69d6: $15

jr_0b7_69d7:
    ld a, [hl-]                                   ; $69d7: $3a
    dec bc                                        ; $69d8: $0b
    ld [bc], a                                    ; $69d9: $02
    nop                                           ; $69da: $00
    ld [hl], l                                    ; $69db: $75
    inc l                                         ; $69dc: $2c
    rlca                                          ; $69dd: $07
    ld [$34f8], sp                                ; $69de: $08 $f8 $34
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    inc b                                         ; $69e3: $04
    inc e                                         ; $69e4: $1c
    jr z, @+$36                                   ; $69e5: $28 $34

    dec b                                         ; $69e7: $05
    inc h                                         ; $69e8: $24
    nop                                           ; $69e9: $00
    nop                                           ; $69ea: $00
    dec b                                         ; $69eb: $05
    inc h                                         ; $69ec: $24
    add hl, hl                                    ; $69ed: $29
    inc a                                         ; $69ee: $3c
    ld b, $2c                                     ; $69ef: $06 $2c
    nop                                           ; $69f1: $00
    nop                                           ; $69f2: $00
    add hl, sp                                    ; $69f3: $39
    ld b, c                                       ; $69f4: $41
    rst $10                                       ; $69f5: $d7
    ld a, [bc]                                    ; $69f6: $0a
    dec bc                                        ; $69f7: $0b
    stop                                          ; $69f8: $10 $00
    jr nz, jr_0b7_6a16                            ; $69fa: $20 $1a

    inc bc                                        ; $69fc: $03
    rst $10                                       ; $69fd: $d7
    ld a, [bc]                                    ; $69fe: $0a
    dec bc                                        ; $69ff: $0b
    stop                                          ; $6a00: $10 $00
    jr nz, jr_0b7_6a79                            ; $6a02: $20 $75

    inc l                                         ; $6a04: $2c
    rlca                                          ; $6a05: $07
    ld [$34f8], sp                                ; $6a06: $08 $f8 $34
    ld [bc], a                                    ; $6a09: $02

jr_0b7_6a0a:
    inc b                                         ; $6a0a: $04
    ld a, [de]                                    ; $6a0b: $1a
    dec a                                         ; $6a0c: $3d
    cp [hl]                                       ; $6a0d: $be

jr_0b7_6a0e:
    inc de                                        ; $6a0e: $13
    rst $18                                       ; $6a0f: $df
    ld h, e                                       ; $6a10: $63
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    ld d, [hl]                                    ; $6a13: $56
    jr z, jr_0b7_6a52                             ; $6a14: $28 $3c

jr_0b7_6a16:
    ld b, c                                       ; $6a16: $41
    rlca                                          ; $6a17: $07
    inc c                                         ; $6a18: $0c
    ld bc, $2908                                  ; $6a19: $01 $08 $29
    inc a                                         ; $6a1c: $3c
    dec b                                         ; $6a1d: $05
    jr nz, jr_0b7_6a4b                            ; $6a1e: $20 $2b

    ld c, h                                       ; $6a20: $4c
    ld [bc], a                                    ; $6a21: $02
    nop                                           ; $6a22: $00
    ld [$2c38], sp                                ; $6a23: $08 $38 $2c
    ld d, h                                       ; $6a26: $54
    ld d, c                                       ; $6a27: $51
    ld l, h                                       ; $6a28: $6c
    dec b                                         ; $6a29: $05
    inc b                                         ; $6a2a: $04
    ld a, h                                       ; $6a2b: $7c
    rrca                                          ; $6a2c: $0f
    sbc $56                                       ; $6a2d: $de $56
    sub d                                         ; $6a2f: $92
    inc h                                         ; $6a30: $24
    nop                                           ; $6a31: $00
    jr nz, jr_0b7_6ab0                            ; $6a32: $20 $7c

    rrca                                          ; $6a34: $0f
    sbc $56                                       ; $6a35: $de $56
    sub d                                         ; $6a37: $92
    inc h                                         ; $6a38: $24
    nop                                           ; $6a39: $00
    jr nz, jr_0b7_6a92                            ; $6a3a: $20 $56

    jr z, jr_0b7_6a7a                             ; $6a3c: $28 $3c

    ld b, c                                       ; $6a3e: $41
    rlca                                          ; $6a3f: $07
    inc c                                         ; $6a40: $0c
    nop                                           ; $6a41: $00
    inc b                                         ; $6a42: $04
    ld a, l                                       ; $6a43: $7d
    ld c, c                                       ; $6a44: $49
    sbc $4f                                       ; $6a45: $de $4f
    dec l                                         ; $6a47: $2d
    jr jr_0b7_6a4a                                ; $6a48: $18 $00

jr_0b7_6a4a:
    nop                                           ; $6a4a: $00

jr_0b7_6a4b:
    sub [hl]                                      ; $6a4b: $96
    inc l                                         ; $6a4c: $2c
    dec bc                                        ; $6a4d: $0b
    inc d                                         ; $6a4e: $14
    ld e, l                                       ; $6a4f: $5d
    ld b, l                                       ; $6a50: $45
    nop                                           ; $6a51: $00

jr_0b7_6a52:
    inc b                                         ; $6a52: $04
    dec hl                                        ; $6a53: $2b
    ld c, b                                       ; $6a54: $48
    ld b, $28                                     ; $6a55: $06 $28
    ld d, b                                       ; $6a57: $50
    ld l, b                                       ; $6a58: $68
    nop                                           ; $6a59: $00
    inc b                                         ; $6a5a: $04
    rlca                                          ; $6a5b: $07
    jr nc, jr_0b7_6a8a                            ; $6a5c: $30 $2c

    ld c, h                                       ; $6a5e: $4c
    ld a, [bc]                                    ; $6a5f: $0a
    inc c                                         ; $6a60: $0c
    ld [bc], a                                    ; $6a61: $02

jr_0b7_6a62:
    db $10                                        ; $6a62: $10
    ld e, l                                       ; $6a63: $5d
    ld b, d                                       ; $6a64: $42
    push de                                       ; $6a65: $d5
    jr nc, @+$01                                  ; $6a66: $30 $ff

    ld l, a                                       ; $6a68: $6f
    nop                                           ; $6a69: $00
    jr nz, jr_0b7_6ac9                            ; $6a6a: $20 $5d

    ld b, d                                       ; $6a6c: $42
    push de                                       ; $6a6d: $d5
    jr nc, @+$01                                  ; $6a6e: $30 $ff

    ld l, a                                       ; $6a70: $6f
    nop                                           ; $6a71: $00
    jr nz, jr_0b7_6a0a                            ; $6a72: $20 $96

    inc l                                         ; $6a74: $2c
    dec bc                                        ; $6a75: $0b
    inc d                                         ; $6a76: $14
    ld e, l                                       ; $6a77: $5d
    ld b, l                                       ; $6a78: $45

jr_0b7_6a79:
    nop                                           ; $6a79: $00

jr_0b7_6a7a:
    ld [$0f7d], sp                                ; $6a7a: $08 $7d $0f
    sbc h                                         ; $6a7d: $9c
    ld d, d                                       ; $6a7e: $52
    ld c, [hl]                                    ; $6a7f: $4e
    inc e                                         ; $6a80: $1c
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    or [hl]                                       ; $6a83: $b6
    jr nc, jr_0b7_6a92                            ; $6a84: $30 $0c

    inc d                                         ; $6a86: $14
    ld a, [hl]                                    ; $6a87: $7e
    ld c, l                                       ; $6a88: $4d
    nop                                           ; $6a89: $00

jr_0b7_6a8a:
    nop                                           ; $6a8a: $00
    ld de, $5312                                  ; $6a8b: $11 $12 $53
    ld c, $74                                     ; $6a8e: $0e $74

jr_0b7_6a90:
    ld c, $00                                     ; $6a90: $0e $00

jr_0b7_6a92:
    nop                                           ; $6a92: $00
    ld de, $5c12                                  ; $6a93: $11 $12 $5c
    inc bc                                        ; $6a96: $03
    cp [hl]                                       ; $6a97: $be

jr_0b7_6a98:
    dec hl                                        ; $6a98: $2b
    nop                                           ; $6a99: $00
    inc c                                         ; $6a9a: $0c
    ld e, h                                       ; $6a9b: $5c
    rlca                                          ; $6a9c: $07
    rst $18                                       ; $6a9d: $df
    ld h, e                                       ; $6a9e: $63
    cp [hl]                                       ; $6a9f: $be

jr_0b7_6aa0:
    daa                                           ; $6aa0: $27
    nop                                           ; $6aa1: $00
    jr nz, jr_0b7_6b00                            ; $6aa2: $20 $5c

    rlca                                          ; $6aa4: $07
    rst $18                                       ; $6aa5: $df
    ld h, e                                       ; $6aa6: $63
    cp [hl]                                       ; $6aa7: $be

jr_0b7_6aa8:
    daa                                           ; $6aa8: $27
    nop                                           ; $6aa9: $00
    jr nz, jr_0b7_6a62                            ; $6aaa: $20 $b6

    jr nc, @+$0e                                  ; $6aac: $30 $0c

    inc d                                         ; $6aae: $14
    ld a, [hl]                                    ; $6aaf: $7e

jr_0b7_6ab0:
    ld c, l                                       ; $6ab0: $4d
    nop                                           ; $6ab1: $00
    jr nz, @-$05                                  ; $6ab2: $20 $f9

    ld a, [bc]                                    ; $6ab4: $0a
    sbc $57                                       ; $6ab5: $de $57
    xor [hl]                                      ; $6ab7: $ae
    dec b                                         ; $6ab8: $05
    ld de, $be12                                  ; $6ab9: $11 $12 $be
    ld b, a                                       ; $6abc: $47
    ld a, h                                       ; $6abd: $7c
    dec bc                                        ; $6abe: $0b
    rst $38                                       ; $6abf: $ff
    ld l, a                                       ; $6ac0: $6f
    ld de, $7412                                  ; $6ac1: $11 $12 $74
    ld c, $b6                                     ; $6ac4: $0e $b6
    ld a, [bc]                                    ; $6ac6: $0a
    ld [hl-], a                                   ; $6ac7: $32
    ld [de], a                                    ; $6ac8: $12

jr_0b7_6ac9:
    rst $10                                       ; $6ac9: $d7
    ld b, $be                                     ; $6aca: $06 $be
    dec sp                                        ; $6acc: $3b
    rst $38                                       ; $6acd: $ff
    ld l, a                                       ; $6ace: $6f
    ld a, l                                       ; $6acf: $7d
    dec bc                                        ; $6ad0: $0b
    nop                                           ; $6ad1: $00
    jr nz, jr_0b7_6b2f                            ; $6ad2: $20 $5b

    dec bc                                        ; $6ad4: $0b
    sbc $53                                       ; $6ad5: $de $53
    xor [hl]                                      ; $6ad7: $ae
    dec b                                         ; $6ad8: $05
    nop                                           ; $6ad9: $00
    jr nz, jr_0b7_6b37                            ; $6ada: $20 $5b

    dec bc                                        ; $6adc: $0b
    sbc $53                                       ; $6add: $de $53
    xor [hl]                                      ; $6adf: $ae
    dec b                                         ; $6ae0: $05
    nop                                           ; $6ae1: $00
    jr nz, jr_0b7_6ae4                            ; $6ae2: $20 $00

jr_0b7_6ae4:
    jr nz, jr_0b7_6afe                            ; $6ae4: $20 $18

    ld [hl], a                                    ; $6ae6: $77
    ld c, b                                       ; $6ae7: $48
    ld b, l                                       ; $6ae8: $45
    nop                                           ; $6ae9: $00
    jr nz, jr_0b7_6aec                            ; $6aea: $20 $00

jr_0b7_6aec:
    jr nz, jr_0b7_6b06                            ; $6aec: $20 $18

    ld [hl], a                                    ; $6aee: $77
    ld c, b                                       ; $6aef: $48
    ld b, l                                       ; $6af0: $45
    nop                                           ; $6af1: $00
    jr nz, jr_0b7_6af4                            ; $6af2: $20 $00

jr_0b7_6af4:
    jr nz, jr_0b7_6b0e                            ; $6af4: $20 $18

    ld [hl], a                                    ; $6af6: $77
    ld c, b                                       ; $6af7: $48
    ld b, l                                       ; $6af8: $45
    nop                                           ; $6af9: $00
    jr nz, jr_0b7_6a90                            ; $6afa: $20 $94

    ld [hl], d                                    ; $6afc: $72
    sbc h                                         ; $6afd: $9c

jr_0b7_6afe:
    ld a, e                                       ; $6afe: $7b
    cp l                                          ; $6aff: $bd

jr_0b7_6b00:
    ld a, e                                       ; $6b00: $7b
    nop                                           ; $6b01: $00
    jr nz, jr_0b7_6a98                            ; $6b02: $20 $94

    ld [hl], d                                    ; $6b04: $72
    sbc h                                         ; $6b05: $9c

jr_0b7_6b06:
    ld a, e                                       ; $6b06: $7b
    cp l                                          ; $6b07: $bd
    ld a, e                                       ; $6b08: $7b
    nop                                           ; $6b09: $00
    jr nz, jr_0b7_6aa0                            ; $6b0a: $20 $94

    ld [hl], d                                    ; $6b0c: $72
    sbc h                                         ; $6b0d: $9c

jr_0b7_6b0e:
    ld a, e                                       ; $6b0e: $7b
    cp l                                          ; $6b0f: $bd
    ld a, e                                       ; $6b10: $7b
    nop                                           ; $6b11: $00
    jr nz, jr_0b7_6aa8                            ; $6b12: $20 $94

    ld [hl], d                                    ; $6b14: $72
    sbc h                                         ; $6b15: $9c
    ld a, e                                       ; $6b16: $7b
    cp l                                          ; $6b17: $bd
    ld a, e                                       ; $6b18: $7b
    nop                                           ; $6b19: $00
    jr nz, jr_0b7_6b1c                            ; $6b1a: $20 $00

jr_0b7_6b1c:
    jr nz, jr_0b7_6b36                            ; $6b1c: $20 $18

    ld [hl], a                                    ; $6b1e: $77
    ld c, b                                       ; $6b1f: $48
    ld b, l                                       ; $6b20: $45
    nop                                           ; $6b21: $00
    jr nz, jr_0b7_6b24                            ; $6b22: $20 $00

jr_0b7_6b24:
    jr nz, @+$1a                                  ; $6b24: $20 $18

    ld [hl], a                                    ; $6b26: $77
    ld c, b                                       ; $6b27: $48
    ld b, l                                       ; $6b28: $45
    nop                                           ; $6b29: $00
    jr nz, jr_0b7_6b2c                            ; $6b2a: $20 $00

jr_0b7_6b2c:
    jr nz, @+$1a                                  ; $6b2c: $20 $18

    ld [hl], a                                    ; $6b2e: $77

jr_0b7_6b2f:
    ld c, b                                       ; $6b2f: $48
    ld b, l                                       ; $6b30: $45
    nop                                           ; $6b31: $00
    nop                                           ; $6b32: $00
    ld l, c                                       ; $6b33: $69
    ld c, l                                       ; $6b34: $4d
    sub h                                         ; $6b35: $94

jr_0b7_6b36:
    ld [hl], d                                    ; $6b36: $72

jr_0b7_6b37:
    xor h                                         ; $6b37: $ac
    ld d, l                                       ; $6b38: $55
    nop                                           ; $6b39: $00
    jr nz, jr_0b7_6b42                            ; $6b3a: $20 $06

    dec a                                         ; $6b3c: $3d
    call $ac59                                    ; $6b3d: $cd $59 $ac
    ld d, l                                       ; $6b40: $55
    nop                                           ; $6b41: $00

jr_0b7_6b42:
    jr nz, jr_0b7_6b4a                            ; $6b42: $20 $06

    dec a                                         ; $6b44: $3d
    call $ac59                                    ; $6b45: $cd $59 $ac
    ld d, l                                       ; $6b48: $55
    nop                                           ; $6b49: $00

jr_0b7_6b4a:
    jr nz, jr_0b7_6b52                            ; $6b4a: $20 $06

    dec a                                         ; $6b4c: $3d
    call $ac59                                    ; $6b4d: $cd $59 $ac
    ld d, l                                       ; $6b50: $55
    nop                                           ; $6b51: $00

jr_0b7_6b52:
    jr nz, jr_0b7_6b54                            ; $6b52: $20 $00

jr_0b7_6b54:
    jr nz, @+$1a                                  ; $6b54: $20 $18

    ld [hl], a                                    ; $6b56: $77
    ld c, b                                       ; $6b57: $48
    ld b, l                                       ; $6b58: $45
    nop                                           ; $6b59: $00
    nop                                           ; $6b5a: $00
    sbc $7b                                       ; $6b5b: $de $7b
    nop                                           ; $6b5d: $00
    inc e                                         ; $6b5e: $1c
    ld b, d                                       ; $6b5f: $42
    ld [$1400], sp                                ; $6b60: $08 $00 $14
    db $10                                        ; $6b63: $10
    ld e, d                                       ; $6b64: $5a
    push hl                                       ; $6b65: $e5
    inc a                                         ; $6b66: $3c
    rst $38                                       ; $6b67: $ff

jr_0b7_6b68:
    ld a, a                                       ; $6b68: $7f
    nop                                           ; $6b69: $00
    nop                                           ; $6b6a: $00
    or h                                          ; $6b6b: $b4
    ld c, e                                       ; $6b6c: $4b
    ld b, $3d                                     ; $6b6d: $06 $3d
    daa                                           ; $6b6f: $27

jr_0b7_6b70:
    ld b, c                                       ; $6b70: $41
    nop                                           ; $6b71: $00
    jr nz, @+$29                                  ; $6b72: $20 $27

    ld b, c                                       ; $6b74: $41
    call z, $934d                                 ; $6b75: $cc $4d $93
    ld e, [hl]                                    ; $6b78: $5e
    nop                                           ; $6b79: $00
    jr nz, jr_0b7_6ba3                            ; $6b7a: $20 $27

    ld b, c                                       ; $6b7c: $41
    call z, $934d                                 ; $6b7d: $cc $4d $93
    ld e, [hl]                                    ; $6b80: $5e
    nop                                           ; $6b81: $00
    jr nz, jr_0b7_6bab                            ; $6b82: $20 $27

    ld b, c                                       ; $6b84: $41
    call z, $934d                                 ; $6b85: $cc $4d $93
    ld e, [hl]                                    ; $6b88: $5e
    nop                                           ; $6b89: $00
    jr nz, jr_0b7_6b9c                            ; $6b8a: $20 $10

    ld e, d                                       ; $6b8c: $5a
    push hl                                       ; $6b8d: $e5
    inc a                                         ; $6b8e: $3c

jr_0b7_6b8f:
    rst $38                                       ; $6b8f: $ff
    ld a, a                                       ; $6b90: $7f
    nop                                           ; $6b91: $00
    jr jr_0b7_6c07                                ; $6b92: $18 $73

    ld c, [hl]                                    ; $6b94: $4e
    ld l, e                                       ; $6b95: $6b
    dec l                                         ; $6b96: $2d
    ld a, [hl-]                                   ; $6b97: $3a
    ld h, a                                       ; $6b98: $67
    ld hl, $6c08                                  ; $6b99: $21 $08 $6c

jr_0b7_6b9c:
    dec l                                         ; $6b9c: $2d
    sub h                                         ; $6b9d: $94
    ld e, d                                       ; $6b9e: $5a
    adc d                                         ; $6b9f: $8a
    ld c, c                                       ; $6ba0: $49
    nop                                           ; $6ba1: $00
    nop                                           ; $6ba2: $00

jr_0b7_6ba3:
    sub h                                         ; $6ba3: $94
    ld b, a                                       ; $6ba4: $47
    ld h, d                                       ; $6ba5: $62
    inc b                                         ; $6ba6: $04
    sub h                                         ; $6ba7: $94
    ld c, e                                       ; $6ba8: $4b
    nop                                           ; $6ba9: $00
    nop                                           ; $6baa: $00

jr_0b7_6bab:
    or h                                          ; $6bab: $b4
    ld h, d                                       ; $6bac: $62
    sbc a                                         ; $6bad: $9f
    halt                                          ; $6bae: $76
    sub h                                         ; $6baf: $94
    ld b, a                                       ; $6bb0: $47
    nop                                           ; $6bb1: $00
    jr nz, jr_0b7_6b68                            ; $6bb2: $20 $b4

    ld h, d                                       ; $6bb4: $62
    sbc a                                         ; $6bb5: $9f
    halt                                          ; $6bb6: $76
    sub h                                         ; $6bb7: $94
    ld b, a                                       ; $6bb8: $47
    nop                                           ; $6bb9: $00
    jr nz, jr_0b7_6b70                            ; $6bba: $20 $b4

    ld h, d                                       ; $6bbc: $62
    sbc a                                         ; $6bbd: $9f
    halt                                          ; $6bbe: $76
    sub h                                         ; $6bbf: $94
    ld b, a                                       ; $6bc0: $47
    nop                                           ; $6bc1: $00
    jr nz, @+$6e                                  ; $6bc2: $20 $6c

    dec l                                         ; $6bc4: $2d
    sub h                                         ; $6bc5: $94

jr_0b7_6bc6:
    ld e, d                                       ; $6bc6: $5a
    adc d                                         ; $6bc7: $8a
    ld c, c                                       ; $6bc8: $49
    nop                                           ; $6bc9: $00
    nop                                           ; $6bca: $00
    add hl, hl                                    ; $6bcb: $29
    dec h                                         ; $6bcc: $25
    nop                                           ; $6bcd: $00
    jr nz, @+$65                                  ; $6bce: $20 $63

    inc c                                         ; $6bd0: $0c
    nop                                           ; $6bd1: $00
    nop                                           ; $6bd2: $00
    sub e                                         ; $6bd3: $93
    ld b, a                                       ; $6bd4: $47
    ld l, e                                       ; $6bd5: $6b
    dec l                                         ; $6bd6: $2d
    rla                                           ; $6bd7: $17
    ld l, e                                       ; $6bd8: $6b
    ld bc, $9300                                  ; $6bd9: $01 $00 $93
    ld b, e                                       ; $6bdc: $43
    db $fc                                        ; $6bdd: $fc
    dec d                                         ; $6bde: $15
    xor l                                         ; $6bdf: $ad
    ld [$0022], sp                                ; $6be0: $08 $22 $00
    ld a, c                                       ; $6be3: $79
    dec h                                         ; $6be4: $25
    ld e, $6a                                     ; $6be5: $1e $6a
    ld e, a                                       ; $6be7: $5f
    ld a, a                                       ; $6be8: $7f
    nop                                           ; $6be9: $00
    jr nz, jr_0b7_6c0c                            ; $6bea: $20 $20

    nop                                           ; $6bec: $00
    ld e, $6a                                     ; $6bed: $1e $6a
    ld e, a                                       ; $6bef: $5f
    ld a, a                                       ; $6bf0: $7f
    nop                                           ; $6bf1: $00
    jr nz, jr_0b7_6c14                            ; $6bf2: $20 $20

    nop                                           ; $6bf4: $00
    ld e, $6a                                     ; $6bf5: $1e $6a
    ld e, a                                       ; $6bf7: $5f
    ld a, a                                       ; $6bf8: $7f
    nop                                           ; $6bf9: $00
    jr nz, jr_0b7_6b8f                            ; $6bfa: $20 $93

    ld b, a                                       ; $6bfc: $47

jr_0b7_6bfd:
    ld l, e                                       ; $6bfd: $6b
    dec l                                         ; $6bfe: $2d
    rla                                           ; $6bff: $17
    ld l, e                                       ; $6c00: $6b
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    nop                                           ; $6c03: $00
    jr nz, jr_0b7_6c71                            ; $6c04: $20 $6b

    dec l                                         ; $6c06: $2d

jr_0b7_6c07:
    rla                                           ; $6c07: $17
    ld l, e                                       ; $6c08: $6b
    nop                                           ; $6c09: $00
    nop                                           ; $6c0a: $00
    sub d                                         ; $6c0b: $92

jr_0b7_6c0c:
    ld b, e                                       ; $6c0c: $43
    sub e                                         ; $6c0d: $93
    ld b, e                                       ; $6c0e: $43
    sub e                                         ; $6c0f: $93
    ld b, a                                       ; $6c10: $47
    inc h                                         ; $6c11: $24
    nop                                           ; $6c12: $00
    halt                                          ; $6c13: $76

jr_0b7_6c14:
    ld de, $0910                                  ; $6c14: $11 $10 $09
    ld e, $16                                     ; $6c17: $1e $16
    ld b, e                                       ; $6c19: $43
    nop                                           ; $6c1a: $00
    sbc e                                         ; $6c1b: $9b
    add hl, de                                    ; $6c1c: $19
    cp a                                          ; $6c1d: $bf
    ld [hl], d                                    ; $6c1e: $72
    rrca                                          ; $6c1f: $0f
    add hl, bc                                    ; $6c20: $09
    nop                                           ; $6c21: $00
    jr nz, jr_0b7_6c40                            ; $6c22: $20 $1c

    ld l, d                                       ; $6c24: $6a
    cp l                                          ; $6c25: $bd
    ld a, e                                       ; $6c26: $7b
    jr nz, jr_0b7_6c29                            ; $6c27: $20 $00

jr_0b7_6c29:
    nop                                           ; $6c29: $00
    jr nz, jr_0b7_6c48                            ; $6c2a: $20 $1c

    ld l, d                                       ; $6c2c: $6a
    cp l                                          ; $6c2d: $bd
    ld a, e                                       ; $6c2e: $7b
    jr nz, jr_0b7_6c31                            ; $6c2f: $20 $00

jr_0b7_6c31:
    nop                                           ; $6c31: $00
    jr nz, jr_0b7_6bc6                            ; $6c32: $20 $92

    ld b, e                                       ; $6c34: $43
    sub e                                         ; $6c35: $93
    ld b, e                                       ; $6c36: $43
    sub e                                         ; $6c37: $93
    ld b, a                                       ; $6c38: $47
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    ld d, c                                       ; $6c3b: $51
    ld e, d                                       ; $6c3c: $5a
    sbc $7b                                       ; $6c3d: $de $7b
    nop                                           ; $6c3f: $00

jr_0b7_6c40:
    jr nz, jr_0b7_6c42                            ; $6c40: $20 $00

jr_0b7_6c42:
    nop                                           ; $6c42: $00
    ld [hl], c                                    ; $6c43: $71
    ccf                                           ; $6c44: $3f
    ld h, l                                       ; $6c45: $65

jr_0b7_6c46:
    nop                                           ; $6c46: $00
    ld [hl+], a                                   ; $6c47: $22

jr_0b7_6c48:
    nop                                           ; $6c48: $00
    ld b, e                                       ; $6c49: $43
    nop                                           ; $6c4a: $00
    ld [hl], l                                    ; $6c4b: $75
    dec c                                         ; $6c4c: $0d
    db $ed                                        ; $6c4d: $ed
    inc b                                         ; $6c4e: $04
    ld e, $1a                                     ; $6c4f: $1e $1a
    ld bc, $1c00                                  ; $6c51: $01 $00 $1c
    ld a, [de]                                    ; $6c54: $1a
    db $fd                                        ; $6c55: $fd
    ld d, h                                       ; $6c56: $54
    dec c                                         ; $6c57: $0d
    dec b                                         ; $6c58: $05
    nop                                           ; $6c59: $00
    db $10                                        ; $6c5a: $10
    sbc c                                         ; $6c5b: $99
    ld l, d                                       ; $6c5c: $6a
    ld d, d                                       ; $6c5d: $52
    jr z, @-$20                                   ; $6c5e: $28 $de

    ld a, e                                       ; $6c60: $7b
    nop                                           ; $6c61: $00
    jr nz, jr_0b7_6bfd                            ; $6c62: $20 $99

    ld l, d                                       ; $6c64: $6a
    ld d, d                                       ; $6c65: $52
    jr z, jr_0b7_6c46                             ; $6c66: $28 $de

    ld a, e                                       ; $6c68: $7b
    nop                                           ; $6c69: $00
    nop                                           ; $6c6a: $00
    nop                                           ; $6c6b: $00
    inc e                                         ; $6c6c: $1c
    daa                                           ; $6c6d: $27
    ld [$2000], sp                                ; $6c6e: $08 $00 $20

jr_0b7_6c71:
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    ld d, c                                       ; $6c73: $51
    dec sp                                        ; $6c74: $3b
    ld e, d                                       ; $6c75: $5a
    ld [hl], e                                    ; $6c76: $73
    ld c, e                                       ; $6c77: $4b
    inc c                                         ; $6c78: $0c
    nop                                           ; $6c79: $00
    nop                                           ; $6c7a: $00
    ld d, b                                       ; $6c7b: $50
    dec sp                                        ; $6c7c: $3b
    ld d, c                                       ; $6c7d: $51
    dec sp                                        ; $6c7e: $3b
    ld [hl], c                                    ; $6c7f: $71
    dec sp                                        ; $6c80: $3b
    nop                                           ; $6c81: $00
    nop                                           ; $6c82: $00
    ld de, $cb11                                  ; $6c83: $11 $11 $cb
    nop                                           ; $6c86: $00
    dec e                                         ; $6c87: $1d
    ld a, [de]                                    ; $6c88: $1a

jr_0b7_6c89:
    ld bc, $0e00                                  ; $6c89: $01 $00 $0e
    dec b                                         ; $6c8c: $05
    sub a                                         ; $6c8d: $97
    ld de, $2c34                                  ; $6c8e: $11 $34 $2c
    nop                                           ; $6c91: $00
    nop                                           ; $6c92: $00
    ld [hl], e                                    ; $6c93: $73
    ld e, [hl]                                    ; $6c94: $5e
    sbc $7b                                       ; $6c95: $de $7b
    ld d, b                                       ; $6c97: $50
    scf                                           ; $6c98: $37
    nop                                           ; $6c99: $00
    jr nz, jr_0b7_6c89                            ; $6c9a: $20 $ed

    ld d, c                                       ; $6c9c: $51
    or h                                          ; $6c9d: $b4
    ld h, d                                       ; $6c9e: $62
    rst $30                                       ; $6c9f: $f7
    ld l, d                                       ; $6ca0: $6a
    ld bc, $7100                                  ; $6ca1: $01 $00 $71
    db $10                                        ; $6ca4: $10
    sbc h                                         ; $6ca5: $9c
    inc d                                         ; $6ca6: $14
    nop                                           ; $6ca7: $00
    jr nz, jr_0b7_6caa                            ; $6ca8: $20 $00

jr_0b7_6caa:
    nop                                           ; $6caa: $00
    sbc l                                         ; $6cab: $9d
    inc d                                         ; $6cac: $14
    ld d, b                                       ; $6cad: $50
    scf                                           ; $6cae: $37
    sub a                                         ; $6caf: $97
    add hl, sp                                    ; $6cb0: $39
    ld d, b                                       ; $6cb1: $50
    inc sp                                        ; $6cb2: $33
    ld d, b                                       ; $6cb3: $50
    scf                                           ; $6cb4: $37
    ld d, b                                       ; $6cb5: $50
    scf                                           ; $6cb6: $37
    sub a                                         ; $6cb7: $97
    add hl, sp                                    ; $6cb8: $39
    ld c, c                                       ; $6cb9: $49
    nop                                           ; $6cba: $00
    add hl, de                                    ; $6cbb: $19
    ld h, $ff                                     ; $6cbc: $26 $ff
    ld a, a                                       ; $6cbe: $7f
    add hl, bc                                    ; $6cbf: $09
    ld c, b                                       ; $6cc0: $48
    ld bc, $b700                                  ; $6cc1: $01 $00 $b7
    add hl, de                                    ; $6cc4: $19
    ld e, a                                       ; $6cc5: $5f
    ld e, a                                       ; $6cc6: $5f
    adc d                                         ; $6cc7: $8a
    nop                                           ; $6cc8: $00
    nop                                           ; $6cc9: $00
    nop                                           ; $6cca: $00
    ld c, a                                       ; $6ccb: $4f
    inc sp                                        ; $6ccc: $33
    ld e, d                                       ; $6ccd: $5a
    ld [hl], e                                    ; $6cce: $73
    ld c, d                                       ; $6ccf: $4a
    dec b                                         ; $6cd0: $05
    nop                                           ; $6cd1: $00
    jr nz, jr_0b7_6d1d                            ; $6cd2: $20 $49

    ld c, c                                       ; $6cd4: $49
    ld [hl], d                                    ; $6cd5: $72
    ld e, [hl]                                    ; $6cd6: $5e
    dec b                                         ; $6cd7: $05
    dec a                                         ; $6cd8: $3d
    nop                                           ; $6cd9: $00
    db $10                                        ; $6cda: $10
    sbc e                                         ; $6cdb: $9b
    db $10                                        ; $6cdc: $10
    ld a, [hl+]                                   ; $6cdd: $2a
    inc b                                         ; $6cde: $04
    ld e, e                                       ; $6cdf: $5b
    dec l                                         ; $6ce0: $2d
    inc bc                                        ; $6ce1: $03
    nop                                           ; $6ce2: $00
    ld d, e                                       ; $6ce3: $53
    ld [$399f], sp                                ; $6ce4: $08 $9f $39
    ld a, c                                       ; $6ce7: $79
    stop                                          ; $6ce8: $10 $00
    nop                                           ; $6cea: $00
    ld c, a                                       ; $6ceb: $4f
    cpl                                           ; $6cec: $2f
    ld e, d                                       ; $6ced: $5a
    ld a, [hl+]                                   ; $6cee: $2a
    ld b, c                                       ; $6cef: $41
    inc b                                         ; $6cf0: $04
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    sbc a                                         ; $6cf3: $9f
    ld l, e                                       ; $6cf4: $6b
    ld d, c                                       ; $6cf5: $51
    dec d                                         ; $6cf6: $15
    adc e                                         ; $6cf7: $8b
    nop                                           ; $6cf8: $00
    daa                                           ; $6cf9: $27
    nop                                           ; $6cfa: $00
    sbc a                                         ; $6cfb: $9f
    ld e, $75                                     ; $6cfc: $1e $75
    dec d                                         ; $6cfe: $15
    ld e, a                                       ; $6cff: $5f
    ld e, a                                       ; $6d00: $5f
    jr nz, jr_0b7_6d03                            ; $6d01: $20 $00

jr_0b7_6d03:
    ld l, $2f                                     ; $6d03: $2e $2f
    rst $38                                       ; $6d05: $ff
    inc de                                        ; $6d06: $13
    ld c, a                                       ; $6d07: $4f
    cpl                                           ; $6d08: $2f
    nop                                           ; $6d09: $00
    inc e                                         ; $6d0a: $1c
    ld c, b                                       ; $6d0b: $48
    ld b, l                                       ; $6d0c: $45
    ld sp, $2e62                                  ; $6d0d: $31 $62 $2e
    cpl                                           ; $6d10: $2f
    ld [bc], a                                    ; $6d11: $02
    inc b                                         ; $6d12: $04
    ld a, d                                       ; $6d13: $7a
    inc c                                         ; $6d14: $0c
    adc [hl]                                      ; $6d15: $8e
    db $10                                        ; $6d16: $10
    ld e, e                                       ; $6d17: $5b
    dec l                                         ; $6d18: $2d
    ld a, c                                       ; $6d19: $79
    ld [$45d9], sp                                ; $6d1a: $08 $d9 $45

jr_0b7_6d1d:
    ld hl, sp+$24                                 ; $6d1d: $f8 $24
    ld e, a                                       ; $6d1f: $5f
    dec l                                         ; $6d20: $2d
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    ld l, $2b                                     ; $6d23: $2e $2b
    or c                                          ; $6d25: $b1
    dec e                                         ; $6d26: $1d
    ld b, c                                       ; $6d27: $41
    inc b                                         ; $6d28: $04
    ld b, a                                       ; $6d29: $47
    nop                                           ; $6d2a: $00
    ld a, a                                       ; $6d2b: $7f
    ld e, $d9                                     ; $6d2c: $1e $d9
    ld [$5f5f], sp                                ; $6d2e: $08 $5f $5f
    ld c, b                                       ; $6d31: $48
    nop                                           ; $6d32: $00
    sbc a                                         ; $6d33: $9f
    ld d, $71                                     ; $6d34: $16 $71
    dec d                                         ; $6d36: $15
    ld e, a                                       ; $6d37: $5f
    ld e, a                                       ; $6d38: $5f
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    dec l                                         ; $6d3b: $2d
    dec hl                                        ; $6d3c: $2b
    ld c, d                                       ; $6d3d: $4a
    dec b                                         ; $6d3e: $05
    ld l, $2b                                     ; $6d3f: $2e $2b
    nop                                           ; $6d41: $00
    inc e                                         ; $6d42: $1c
    db $ed                                        ; $6d43: $ed
    ld l, $94                                     ; $6d44: $2e $94
    ld l, [hl]                                    ; $6d46: $6e
    sbc $7f                                       ; $6d47: $de $7f
    nop                                           ; $6d49: $00
    nop                                           ; $6d4a: $00
    sub [hl]                                      ; $6d4b: $96
    db $10                                        ; $6d4c: $10
    ld e, d                                       ; $6d4d: $5a
    dec l                                         ; $6d4e: $2d
    ld a, d                                       ; $6d4f: $7a
    ld [$0c45], sp                                ; $6d50: $08 $45 $0c
    halt                                          ; $6d53: $76
    db $10                                        ; $6d54: $10
    sub l                                         ; $6d55: $95
    dec [hl]                                      ; $6d56: $35
    ei                                            ; $6d57: $fb
    jr nz, jr_0b7_6d7a                            ; $6d58: $20 $20

    nop                                           ; $6d5a: $00
    dec l                                         ; $6d5b: $2d
    daa                                           ; $6d5c: $27
    ld a, [hl]                                    ; $6d5d: $7e
    ld l, $ff                                     ; $6d5e: $2e $ff
    inc de                                        ; $6d60: $13
    ld l, b                                       ; $6d61: $68
    nop                                           ; $6d62: $00
    ld d, l                                       ; $6d63: $55
    ld b, l                                       ; $6d64: $45
    sbc d                                         ; $6d65: $9a
    rlca                                          ; $6d66: $07
    rst $38                                       ; $6d67: $ff
    ld c, [hl]                                    ; $6d68: $4e
    ld b, l                                       ; $6d69: $45
    nop                                           ; $6d6a: $00
    sbc l                                         ; $6d6b: $9d
    ld d, $fc                                     ; $6d6c: $16 $fc
    ld l, a                                       ; $6d6e: $6f
    ret nc                                        ; $6d6f: $d0

    db $10                                        ; $6d70: $10
    ld b, d                                       ; $6d71: $42
    ld [$2b0f], sp                                ; $6d72: $08 $0f $2b
    dec a                                         ; $6d75: $3d
    ld h, [hl]                                    ; $6d76: $66
    rst $38                                       ; $6d77: $ff
    inc de                                        ; $6d78: $13
    nop                                           ; $6d79: $00

jr_0b7_6d7a:
    inc e                                         ; $6d7a: $1c
    dec l                                         ; $6d7b: $2d
    daa                                           ; $6d7c: $27
    ld c, b                                       ; $6d7d: $48
    ld c, c                                       ; $6d7e: $49
    sub h                                         ; $6d7f: $94
    ld l, [hl]                                    ; $6d80: $6e
    nop                                           ; $6d81: $00
    nop                                           ; $6d82: $00
    sub [hl]                                      ; $6d83: $96
    db $10                                        ; $6d84: $10
    ld a, [de]                                    ; $6d85: $1a
    dec h                                         ; $6d86: $25
    ld a, h                                       ; $6d87: $7c
    ld [$0c44], sp                                ; $6d88: $08 $44 $0c
    halt                                          ; $6d8b: $76
    db $10                                        ; $6d8c: $10
    dec a                                         ; $6d8d: $3d
    add hl, hl                                    ; $6d8e: $29
    adc l                                         ; $6d8f: $8d
    inc d                                         ; $6d90: $14
    ld [hl+], a                                   ; $6d91: $22
    inc b                                         ; $6d92: $04
    inc l                                         ; $6d93: $2c
    inc hl                                        ; $6d94: $23
    or a                                          ; $6d95: $b7
    dec h                                         ; $6d96: $25
    rst $38                                       ; $6d97: $ff
    inc de                                        ; $6d98: $13
    daa                                           ; $6d99: $27
    db $10                                        ; $6d9a: $10
    sub e                                         ; $6d9b: $93
    ld a, [bc]                                    ; $6d9c: $0a
    dec de                                        ; $6d9d: $1b
    ld b, b                                       ; $6d9e: $40
    call c, $4346                                 ; $6d9f: $dc $46 $43
    nop                                           ; $6da2: $00
    rra                                           ; $6da3: $1f
    ld d, b                                       ; $6da4: $50
    ei                                            ; $6da5: $fb
    dec d                                         ; $6da6: $15
    ld l, [hl]                                    ; $6da7: $6e
    ld bc, $0000                                  ; $6da8: $01 $00 $00
    ld a, [hl-]                                   ; $6dab: $3a
    ld d, d                                       ; $6dac: $52
    rst $38                                       ; $6dad: $ff
    inc de                                        ; $6dae: $13
    rrca                                          ; $6daf: $0f
    jr nz, jr_0b7_6db2                            ; $6db0: $20 $00

jr_0b7_6db2:
    inc e                                         ; $6db2: $1c
    inc c                                         ; $6db3: $0c
    inc hl                                        ; $6db4: $23
    adc $59                                       ; $6db5: $ce $59
    push hl                                       ; $6db7: $e5
    inc a                                         ; $6db8: $3c
    nop                                           ; $6db9: $00
    inc c                                         ; $6dba: $0c
    ld a, h                                       ; $6dbb: $7c
    inc c                                         ; $6dbc: $0c
    ld l, b                                       ; $6dbd: $68
    db $10                                        ; $6dbe: $10
    jr jr_0b7_6de6                                ; $6dbf: $18 $25

    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    sub b                                         ; $6dc3: $90
    inc d                                         ; $6dc4: $14
    ld sp, hl                                     ; $6dc5: $f9
    jr nz, jr_0b7_6e2e                            ; $6dc6: $20 $66

    db $10                                        ; $6dc8: $10
    jr nz, jr_0b7_6dcb                            ; $6dc9: $20 $00

jr_0b7_6dcb:
    dec bc                                        ; $6dcb: $0b
    rra                                           ; $6dcc: $1f
    or $25                                        ; $6dcd: $f6 $25
    sbc [hl]                                      ; $6dcf: $9e
    ld l, $21                                     ; $6dd0: $2e $21
    nop                                           ; $6dd2: $00
    adc $2d                                       ; $6dd3: $ce $2d

jr_0b7_6dd5:
    rst $38                                       ; $6dd5: $ff
    ld l, l                                       ; $6dd6: $6d
    add hl, bc                                    ; $6dd7: $09
    inc d                                         ; $6dd8: $14
    jr nz, jr_0b7_6ddb                            ; $6dd9: $20 $00

jr_0b7_6ddb:
    inc de                                        ; $6ddb: $13
    inc h                                         ; $6ddc: $24
    xor e                                         ; $6ddd: $ab
    ld bc, $0375                                  ; $6dde: $01 $75 $03
    ld bc, $0b00                                  ; $6de1: $01 $00 $0b
    rra                                           ; $6de4: $1f
    ld [de], a                                    ; $6de5: $12

jr_0b7_6de6:
    jr z, jr_0b7_6dd5                             ; $6de6: $28 $ed

    ld bc, $1c00                                  ; $6de8: $01 $00 $1c
    xor e                                         ; $6deb: $ab
    ld c, c                                       ; $6dec: $49
    dec bc                                        ; $6ded: $0b
    rra                                           ; $6dee: $1f
    ld b, $3d                                     ; $6def: $06 $3d
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    jr c, jr_0b7_6e1e                             ; $6df3: $38 $29

    ld h, a                                       ; $6df5: $67
    stop                                          ; $6df6: $10 $00
    jr nz, @+$24                                  ; $6df8: $20 $22

    inc b                                         ; $6dfa: $04

jr_0b7_6dfb:
    ld [$891a], a                                 ; $6dfb: $ea $1a $89
    inc d                                         ; $6dfe: $14
    ld [hl], c                                    ; $6dff: $71
    dec [hl]                                      ; $6e00: $35
    ld b, c                                       ; $6e01: $41
    inc b                                         ; $6e02: $04
    ld [$b81a], a                                 ; $6e03: $ea $1a $b8
    add hl, de                                    ; $6e06: $19
    and a                                         ; $6e07: $a7
    inc c                                         ; $6e08: $0c
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    or l                                          ; $6e0b: $b5
    ld e, b                                       ; $6e0c: $58
    ccf                                           ; $6e0d: $3f
    ld a, [hl]                                    ; $6e0e: $7e
    ld b, $18                                     ; $6e0f: $06 $18
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    ld sp, hl                                     ; $6e13: $f9
    ld l, b                                       ; $6e14: $68
    inc l                                         ; $6e15: $2c
    inc [hl]                                      ; $6e16: $34
    ld a, $7e                                     ; $6e17: $3e $7e
    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    ld [$2c1a], a                                 ; $6e1b: $ea $1a $2c

jr_0b7_6e1e:
    inc [hl]                                      ; $6e1e: $34
    ld a, $7e                                     ; $6e1f: $3e $7e
    nop                                           ; $6e21: $00
    inc e                                         ; $6e22: $1c
    adc c                                         ; $6e23: $89
    ld [hl+], a                                   ; $6e24: $22
    rrca                                          ; $6e25: $0f
    ld e, d                                       ; $6e26: $5a
    ld e, d                                       ; $6e27: $5a
    ld [hl], e                                    ; $6e28: $73
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    ld c, b                                       ; $6e2b: $48
    ld c, c                                       ; $6e2c: $49
    nop                                           ; $6e2d: $00

jr_0b7_6e2e:
    jr nz, jr_0b7_6e81                            ; $6e2e: $20 $51

    ld e, d                                       ; $6e30: $5a
    nop                                           ; $6e31: $00
    nop                                           ; $6e32: $00
    ret                                           ; $6e33: $c9


    ld a, [de]                                    ; $6e34: $1a
    jp hl                                         ; $6e35: $e9


    jr nz, jr_0b7_6e7a                            ; $6e36: $20 $42

    inc b                                         ; $6e38: $04
    ld hl, $c904                                  ; $6e39: $21 $04 $c9
    ld a, [de]                                    ; $6e3c: $1a
    ld [hl], e                                    ; $6e3d: $73
    dec d                                         ; $6e3e: $15
    rst $28                                       ; $6e3f: $ef
    inc c                                         ; $6e40: $0c
    ld [$9a24], sp                                ; $6e41: $08 $24 $9a
    ld l, l                                       ; $6e44: $6d
    ld a, a                                       ; $6e45: $7f
    ld a, [hl]                                    ; $6e46: $7e
    ld [hl-], a                                   ; $6e47: $32
    ld c, c                                       ; $6e48: $49
    ld bc, $7504                                  ; $6e49: $01 $04 $75
    ld e, b                                       ; $6e4c: $58
    dec sp                                        ; $6e4d: $3b
    ld l, l                                       ; $6e4e: $6d
    add hl, bc                                    ; $6e4f: $09
    jr z, jr_0b7_6dfb                             ; $6e50: $28 $a9

    ld d, $c9                                     ; $6e52: $16 $c9
    ld a, [de]                                    ; $6e54: $1a
    jp z, Jump_000_091a                           ; $6e55: $ca $1a $09

    jr z, jr_0b7_6e5a                             ; $6e58: $28 $00

jr_0b7_6e5a:
    inc e                                         ; $6e5a: $1c
    xor c                                         ; $6e5b: $a9
    ld d, $30                                     ; $6e5c: $16 $30

jr_0b7_6e5e:
    ld e, d                                       ; $6e5e: $5a
    ld e, c                                       ; $6e5f: $59
    ld l, a                                       ; $6e60: $6f
    nop                                           ; $6e61: $00
    jr jr_0b7_6e8b                                ; $6e62: $18 $27

    ld b, c                                       ; $6e64: $41
    ld [hl], d                                    ; $6e65: $72
    ld e, [hl]                                    ; $6e66: $5e
    xor c                                         ; $6e67: $a9
    ld d, $41                                     ; $6e68: $16 $41
    inc b                                         ; $6e6a: $04
    xor c                                         ; $6e6b: $a9
    ld d, $72                                     ; $6e6c: $16 $72
    ld e, [hl]                                    ; $6e6e: $5e
    xor c                                         ; $6e6f: $a9
    ld d, $20                                     ; $6e70: $16 $20
    nop                                           ; $6e72: $00
    xor c                                         ; $6e73: $a9
    ld d, $0c                                     ; $6e74: $16 $0c
    dec d                                         ; $6e76: $15
    ld [hl], b                                    ; $6e77: $70
    add hl, de                                    ; $6e78: $19
    nop                                           ; $6e79: $00

jr_0b7_6e7a:
    nop                                           ; $6e7a: $00
    ld d, c                                       ; $6e7b: $51
    ld b, h                                       ; $6e7c: $44
    rlca                                          ; $6e7d: $07
    inc e                                         ; $6e7e: $1c
    push af                                       ; $6e7f: $f5
    ld e, b                                       ; $6e80: $58

jr_0b7_6e81:
    ld bc, $9704                                  ; $6e81: $01 $04 $97
    ld h, b                                       ; $6e84: $60
    rlca                                          ; $6e85: $07
    inc e                                         ; $6e86: $1c
    dec bc                                        ; $6e87: $0b
    jr nc, jr_0b7_6eaa                            ; $6e88: $30 $20

    nop                                           ; $6e8a: $00

jr_0b7_6e8b:
    adc b                                         ; $6e8b: $88
    ld d, $a9                                     ; $6e8c: $16 $a9
    ld d, $0b                                     ; $6e8e: $16 $0b
    jr nc, jr_0b7_6e92                            ; $6e90: $30 $00

jr_0b7_6e92:
    inc e                                         ; $6e92: $1c
    or h                                          ; $6e93: $b4
    ld h, d                                       ; $6e94: $62
    adc b                                         ; $6e95: $88
    ld d, $ff                                     ; $6e96: $16 $ff
    ld a, a                                       ; $6e98: $7f
    nop                                           ; $6e99: $00
    jr jr_0b7_6f04                                ; $6e9a: $18 $68

    ld [de], a                                    ; $6e9c: $12
    xor e                                         ; $6e9d: $ab
    ld c, l                                       ; $6e9e: $4d
    sub $66                                       ; $6e9f: $d6 $66
    ld b, c                                       ; $6ea1: $41
    inc b                                         ; $6ea2: $04
    ld l, b                                       ; $6ea3: $68
    ld [de], a                                    ; $6ea4: $12
    ld [hl], h                                    ; $6ea5: $74
    add hl, de                                    ; $6ea6: $19
    ld a, [hl]                                    ; $6ea7: $7e
    ld l, $41                                     ; $6ea8: $2e $41

jr_0b7_6eaa:
    nop                                           ; $6eaa: $00
    ld l, b                                       ; $6eab: $68
    ld [de], a                                    ; $6eac: $12
    cp $13                                        ; $6ead: $fe $13
    cpl                                           ; $6eaf: $2f
    dec d                                         ; $6eb0: $15
    dec b                                         ; $6eb1: $05
    jr jr_0b7_6ed0                                ; $6eb2: $18 $1c

    ld [hl], c                                    ; $6eb4: $71
    inc l                                         ; $6eb5: $2c
    inc [hl]                                      ; $6eb6: $34
    ld sp, HeaderROMSize                          ; $6eb7: $31 $48 $01
    inc b                                         ; $6eba: $04
    sub [hl]                                      ; $6ebb: $96
    ld e, h                                       ; $6ebc: $5c
    cp $13                                        ; $6ebd: $fe $13
    ld c, c                                       ; $6ebf: $49
    inc e                                         ; $6ec0: $1c
    jr nz, jr_0b7_6ec3                            ; $6ec1: $20 $00

jr_0b7_6ec3:
    ld b, a                                       ; $6ec3: $47
    ld [de], a                                    ; $6ec4: $12
    db $ec                                        ; $6ec5: $ec
    ld bc, $1268                                  ; $6ec6: $01 $68 $12
    nop                                           ; $6ec9: $00
    inc e                                         ; $6eca: $1c
    or h                                          ; $6ecb: $b4
    ld h, d                                       ; $6ecc: $62
    ld l, b                                       ; $6ecd: $68
    ld d, $bd                                     ; $6ece: $16 $bd

jr_0b7_6ed0:
    ld [hl], a                                    ; $6ed0: $77
    nop                                           ; $6ed1: $00
    jr jr_0b7_6e5e                                ; $6ed2: $18 $8a

    ld c, c                                       ; $6ed4: $49
    ld a, d                                       ; $6ed5: $7a
    ld [hl], e                                    ; $6ed6: $73
    ld [hl], d                                    ; $6ed7: $72
    ld e, d                                       ; $6ed8: $5a
    ld b, c                                       ; $6ed9: $41
    inc b                                         ; $6eda: $04
    cp h                                          ; $6edb: $bc
    ld [hl], $27                                  ; $6edc: $36 $27
    ld [de], a                                    ; $6ede: $12
    inc l                                         ; $6edf: $2c
    add hl, de                                    ; $6ee0: $19
    jr nz, jr_0b7_6ee3                            ; $6ee1: $20 $00

jr_0b7_6ee3:
    ld b, a                                       ; $6ee3: $47
    ld [de], a                                    ; $6ee4: $12
    cp $13                                        ; $6ee5: $fe $13
    dec bc                                        ; $6ee7: $0b
    inc [hl]                                      ; $6ee8: $34
    inc b                                         ; $6ee9: $04
    db $10                                        ; $6eea: $10
    ld d, $5d                                     ; $6eeb: $16 $5d
    ld c, a                                       ; $6eed: $4f
    inc a                                         ; $6eee: $3c
    cp $79                                        ; $6eef: $fe $79
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    ld [hl], l                                    ; $6ef3: $75
    ld e, b                                       ; $6ef4: $58
    db $ec                                        ; $6ef5: $ec
    ld bc, $300b                                  ; $6ef6: $01 $0b $30
    jr nz, jr_0b7_6efb                            ; $6ef9: $20 $00

jr_0b7_6efb:
    cp $13                                        ; $6efb: $fe $13
    ld h, $12                                     ; $6efd: $26 $12
    db $ec                                        ; $6eff: $ec
    ld bc, $0000                                  ; $6f00: $01 $00 $00
    rla                                           ; $6f03: $17

jr_0b7_6f04:
    ld l, e                                       ; $6f04: $6b
    nop                                           ; $6f05: $00
    jr nz, @-$20                                  ; $6f06: $20 $de

    ld a, a                                       ; $6f08: $7f
    nop                                           ; $6f09: $00
    inc e                                         ; $6f0a: $1c
    xor h                                         ; $6f0b: $ac

Jump_0b7_6f0c:
    ld c, l                                       ; $6f0c: $4d
    or h                                          ; $6f0d: $b4
    ld h, d                                       ; $6f0e: $62
    sbc e                                         ; $6f0f: $9b
    ld [hl], a                                    ; $6f10: $77
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    ld b, $0e                                     ; $6f13: $06 $0e
    ld e, a                                       ; $6f15: $5f
    ccf                                           ; $6f16: $3f
    add a                                         ; $6f17: $87
    inc b                                         ; $6f18: $04
    ld bc, $3304                                  ; $6f19: $01 $04 $33
    ld c, b                                       ; $6f1c: $48
    cp $13                                        ; $6f1d: $fe $13
    ld h, $12                                     ; $6f1f: $26 $12
    ld [bc], a                                    ; $6f21: $02
    ld [$6899], sp                                ; $6f22: $08 $99 $68

jr_0b7_6f25:
    push hl                                       ; $6f25: $e5
    dec c                                         ; $6f26: $0d
    ld e, $7a                                     ; $6f27: $1e $7a
    jr nz, jr_0b7_6f2b                            ; $6f29: $20 $00

jr_0b7_6f2b:
    cp $79                                        ; $6f2b: $fe $79
    dec bc                                        ; $6f2d: $0b
    jr nc, jr_0b7_6f81                            ; $6f2e: $30 $51

    ld c, b                                       ; $6f30: $48
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    push hl                                       ; $6f33: $e5
    dec c                                         ; $6f34: $0d
    ld [hl+], a                                   ; $6f35: $22
    ld [$0e06], sp                                ; $6f36: $08 $06 $0e
    nop                                           ; $6f39: $00
    jr nz, @-$6b                                  ; $6f3a: $20 $93

    ld e, [hl]                                    ; $6f3c: $5e
    db $dd                                        ; $6f3d: $dd
    ld a, e                                       ; $6f3e: $7b
    jr jr_0b7_6fac                                ; $6f3f: $18 $6b

    nop                                           ; $6f41: $00
    jr nz, @-$73                                  ; $6f42: $20 $8b

    ld c, c                                       ; $6f44: $49
    push de                                       ; $6f45: $d5
    ld h, [hl]                                    ; $6f46: $66
    cpl                                           ; $6f47: $2f
    ld d, [hl]                                    ; $6f48: $56
    nop                                           ; $6f49: $00
    nop                                           ; $6f4a: $00
    jp c, $e542                                   ; $6f4b: $da $42 $e5

    dec c                                         ; $6f4e: $0d
    db $ed                                        ; $6f4f: $ed
    inc c                                         ; $6f50: $0c
    nop                                           ; $6f51: $00
    nop                                           ; $6f52: $00
    or e                                          ; $6f53: $b3
    ld b, h                                       ; $6f54: $44
    db $fd                                        ; $6f55: $fd
    dec hl                                        ; $6f56: $2b
    ld a, h                                       ; $6f57: $7c
    ld [hl], c                                    ; $6f58: $71
    ld bc, $5004                                  ; $6f59: $01 $04 $50
    ld b, b                                       ; $6f5c: $40
    call nz, $9709                                ; $6f5d: $c4 $09 $97
    ld h, b                                       ; $6f60: $60
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    sub a                                         ; $6f63: $97
    ld h, b                                       ; $6f64: $60
    add hl, bc                                    ; $6f65: $09
    jr z, @+$1f                                   ; $6f66: $28 $1d

    ld a, d                                       ; $6f68: $7a
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    dec e                                         ; $6f6b: $1d
    ld a, e                                       ; $6f6c: $7b
    push hl                                       ; $6f6d: $e5
    dec c                                         ; $6f6e: $0d
    cpl                                           ; $6f6f: $2f
    dec a                                         ; $6f70: $3d
    nop                                           ; $6f71: $00
    jr nz, jr_0b7_6fc5                            ; $6f72: $20 $51

    ld e, d                                       ; $6f74: $5a
    rst $30                                       ; $6f75: $f7
    ld l, d                                       ; $6f76: $6a
    sbc h                                         ; $6f77: $9c
    ld [hl], a                                    ; $6f78: $77
    nop                                           ; $6f79: $00
    jr nz, jr_0b7_6fc4                            ; $6f7a: $20 $48

    ld b, c                                       ; $6f7c: $41
    cpl                                           ; $6f7d: $2f
    ld d, [hl]                                    ; $6f7e: $56
    adc e                                         ; $6f7f: $8b
    ld c, c                                       ; $6f80: $49

jr_0b7_6f81:
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    rla                                           ; $6f83: $17
    jr c, jr_0b7_6f25                             ; $6f84: $38 $9f

    ld a, [hl-]                                   ; $6f86: $3a
    cp b                                          ; $6f87: $b8
    ld l, d                                       ; $6f88: $6a
    ld [bc], a                                    ; $6f89: $02
    inc b                                         ; $6f8a: $04
    cp b                                          ; $6f8b: $b8
    ld e, h                                       ; $6f8c: $5c
    cp [hl]                                       ; $6f8d: $be
    ld a, [hl]                                    ; $6f8e: $7e
    dec c                                         ; $6f8f: $0d
    jr c, jr_0b7_6fb2                             ; $6f90: $38 $20

    nop                                           ; $6f92: $00
    and l                                         ; $6f93: $a5
    dec c                                         ; $6f94: $0d
    ld l, l                                       ; $6f95: $6d
    jr z, jr_0b7_6f9d                             ; $6f96: $28 $05

    inc e                                         ; $6f98: $1c
    nop                                           ; $6f99: $00
    inc b                                         ; $6f9a: $04
    push de                                       ; $6f9b: $d5
    ld c, h                                       ; $6f9c: $4c

jr_0b7_6f9d:
    cp $13                                        ; $6f9d: $fe $13
    rra                                           ; $6f9f: $1f
    halt                                          ; $6fa0: $76
    nop                                           ; $6fa1: $00
    nop                                           ; $6fa2: $00
    rst $38                                       ; $6fa3: $ff
    inc de                                        ; $6fa4: $13
    rla                                           ; $6fa5: $17
    jr c, jr_0b7_6fc5                             ; $6fa6: $38 $1d

    ld l, a                                       ; $6fa8: $6f
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    cpl                                           ; $6fab: $2f

jr_0b7_6fac:
    ld d, [hl]                                    ; $6fac: $56
    nop                                           ; $6fad: $00
    jr nz, jr_0b7_7022                            ; $6fae: $20 $72

    ld e, [hl]                                    ; $6fb0: $5e
    nop                                           ; $6fb1: $00

jr_0b7_6fb2:
    jr nz, jr_0b7_6fba                            ; $6fb2: $20 $06

    ld b, c                                       ; $6fb4: $41
    ld h, $41                                     ; $6fb5: $26 $41

jr_0b7_6fb7:
    dec c                                         ; $6fb7: $0d
    jr c, jr_0b7_6ffc                             ; $6fb8: $38 $42

jr_0b7_6fba:
    inc b                                         ; $6fba: $04
    rla                                           ; $6fbb: $17
    jr c, @+$01                                   ; $6fbc: $38 $ff

    halt                                          ; $6fbe: $76
    inc [hl]                                      ; $6fbf: $34
    ld b, d                                       ; $6fc0: $42
    ld bc, $1204                                  ; $6fc1: $01 $04 $12

jr_0b7_6fc4:
    inc a                                         ; $6fc4: $3c

jr_0b7_6fc5:
    jp c, $636c                                   ; $6fc5: $da $6c $63

    dec b                                         ; $6fc8: $05
    add d                                         ; $6fc9: $82
    inc b                                         ; $6fca: $04
    sbc h                                         ; $6fcb: $9c
    inc de                                        ; $6fcc: $13
    inc e                                         ; $6fcd: $1c
    ld e, [hl]                                    ; $6fce: $5e
    pop de                                        ; $6fcf: $d1
    inc h                                         ; $6fd0: $24
    jr nz, jr_0b7_6fd3                            ; $6fd1: $20 $00

jr_0b7_6fd3:
    ld a, a                                       ; $6fd3: $7f
    ld e, b                                       ; $6fd4: $58
    db $ec                                        ; $6fd5: $ec
    jr @-$20                                      ; $6fd6: $18 $de

    ld b, a                                       ; $6fd8: $47
    ld h, e                                       ; $6fd9: $63
    nop                                           ; $6fda: $00
    cp a                                          ; $6fdb: $bf
    ld a, d                                       ; $6fdc: $7a
    inc de                                        ; $6fdd: $13
    inc l                                         ; $6fde: $2c
    rst $38                                       ; $6fdf: $ff
    inc de                                        ; $6fe0: $13
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    jr nz, jr_0b7_6ff9                            ; $6fe4: $20 $13

    inc l                                         ; $6fe6: $2c
    rst $38                                       ; $6fe7: $ff
    inc de                                        ; $6fe8: $13
    nop                                           ; $6fe9: $00
    inc e                                         ; $6fea: $1c
    xor $5d                                       ; $6feb: $ee $5d
    nop                                           ; $6fed: $00
    jr nz, jr_0b7_7053                            ; $6fee: $20 $63

    dec b                                         ; $6ff0: $05
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    ld e, b                                       ; $6ff3: $58
    ld a, [bc]                                    ; $6ff4: $0a

jr_0b7_6ff5:
    db $10                                        ; $6ff5: $10
    add hl, bc                                    ; $6ff6: $09
    cp $13                                        ; $6ff7: $fe $13

jr_0b7_6ff9:
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    dec l                                         ; $6ffb: $2d

jr_0b7_6ffc:
    inc [hl]                                      ; $6ffc: $34
    cp $13                                        ; $6ffd: $fe $13
    inc hl                                        ; $6fff: $23
    ld bc, $0080                                  ; $7000: $01 $80 $00
    cp $0f                                        ; $7003: $fe $0f
    db $10                                        ; $7005: $10
    ld b, $69                                     ; $7006: $06 $69
    inc c                                         ; $7008: $0c
    jr nz, jr_0b7_700b                            ; $7009: $20 $00

jr_0b7_700b:
    rst $38                                       ; $700b: $ff
    dec hl                                        ; $700c: $2b
    dec d                                         ; $700d: $15
    jr nc, jr_0b7_6fb7                            ; $700e: $30 $a7

    inc b                                         ; $7010: $04
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    ccf                                           ; $7013: $3f
    ld e, l                                       ; $7014: $5d
    ld c, $1c                                     ; $7015: $0e $1c
    rst $38                                       ; $7017: $ff
    inc de                                        ; $7018: $13
    nop                                           ; $7019: $00
    nop                                           ; $701a: $00
    rst $38                                       ; $701b: $ff
    inc de                                        ; $701c: $13
    nop                                           ; $701d: $00
    jr nz, jr_0b7_7020                            ; $701e: $20 $00

jr_0b7_7020:
    inc b                                         ; $7020: $04
    nop                                           ; $7021: $00

jr_0b7_7022:
    nop                                           ; $7022: $00
    reti                                          ; $7023: $d9


    ld de, $2000                                  ; $7024: $11 $00 $20

jr_0b7_7027:
    inc hl                                        ; $7027: $23
    ld bc, $0022                                  ; $7028: $01 $22 $00
    ld [hl], h                                    ; $702b: $74
    jr jr_0b7_7027                                ; $702c: $18 $f9

    dec c                                         ; $702e: $0d
    cp $13                                        ; $702f: $fe $13
    ld bc, $0d04                                  ; $7031: $01 $04 $0d
    inc [hl]                                      ; $7034: $34
    ld bc, $1501                                  ; $7035: $01 $01 $15
    jr nc, jr_0b7_707a                            ; $7038: $30 $40

    nop                                           ; $703a: $00
    rst $10                                       ; $703b: $d7
    ld e, h                                       ; $703c: $5c
    db $ed                                        ; $703d: $ed
    ld bc, $07bc                                  ; $703e: $01 $bc $07
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    ld e, a                                       ; $7043: $5f
    ld a, [hl]                                    ; $7044: $7e
    ld c, [hl]                                    ; $7045: $4e
    inc l                                         ; $7046: $2c
    rst $38                                       ; $7047: $ff
    inc de                                        ; $7048: $13
    ld bc, $b300                                  ; $7049: $01 $00 $b3
    inc e                                         ; $704c: $1c
    sbc a                                         ; $704d: $9f
    ld a, [hl-]                                   ; $704e: $3a
    inc c                                         ; $704f: $0c
    jr jr_0b7_7052                                ; $7050: $18 $00

jr_0b7_7052:
    inc c                                         ; $7052: $0c

jr_0b7_7053:
    nop                                           ; $7053: $00
    jr nz, jr_0b7_6ff5                            ; $7054: $20 $9f

    ld a, [hl-]                                   ; $7056: $3a
    inc c                                         ; $7057: $0c
    jr jr_0b7_705a                                ; $7058: $18 $00

jr_0b7_705a:
    nop                                           ; $705a: $00
    nop                                           ; $705b: $00
    jr nz, @+$03                                  ; $705c: $20 $01

    ld bc, $3015                                  ; $705e: $01 $15 $30
    jr nz, jr_0b7_7063                            ; $7061: $20 $00

jr_0b7_7063:
    halt                                          ; $7063: $76
    dec c                                         ; $7064: $0d
    rrca                                          ; $7065: $0f
    dec b                                         ; $7066: $05
    db $fd                                        ; $7067: $fd
    ld [de], a                                    ; $7068: $12
    ld bc, $9b04                                  ; $7069: $01 $04 $9b
    dec bc                                        ; $706c: $0b
    nop                                           ; $706d: $00
    ld bc, $182c                                  ; $706e: $01 $2c $18
    nop                                           ; $7071: $00
    nop                                           ; $7072: $00
    sub l                                         ; $7073: $95
    ld e, b                                       ; $7074: $58
    nop                                           ; $7075: $00
    ld bc, $6cb9                                  ; $7076: $01 $b9 $6c
    nop                                           ; $7079: $00

jr_0b7_707a:
    nop                                           ; $707a: $00
    ld d, [hl]                                    ; $707b: $56
    ld b, h                                       ; $707c: $44
    halt                                          ; $707d: $76
    dec e                                         ; $707e: $1d
    add hl, bc                                    ; $707f: $09
    jr z, @+$03                                   ; $7080: $28 $01

    ld [$1d96], sp                                ; $7082: $08 $96 $1d
    rst $18                                       ; $7085: $df
    ld l, $ff                                     ; $7086: $2e $ff
    ld a, a                                       ; $7088: $7f
    nop                                           ; $7089: $00
    jr nz, jr_0b7_7022                            ; $708a: $20 $96

    dec e                                         ; $708c: $1d
    rst $18                                       ; $708d: $df
    ld l, $ff                                     ; $708e: $2e $ff

jr_0b7_7090:
    ld a, a                                       ; $7090: $7f
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    reti                                          ; $7093: $d9


    ld de, $2000                                  ; $7094: $11 $00 $20
    inc l                                         ; $7097: $2c
    jr jr_0b7_709a                                ; $7098: $18 $00

jr_0b7_709a:
    nop                                           ; $709a: $00
    or a                                          ; $709b: $b7
    ld de, $135f                                  ; $709c: $11 $5f $13
    inc hl                                        ; $709f: $23
    ld bc, $0000                                  ; $70a0: $01 $00 $00
    nop                                           ; $70a3: $00
    ld bc, $135f                                  ; $70a4: $01 $5f $13
    inc hl                                        ; $70a7: $23
    ld bc, $0000                                  ; $70a8: $01 $00 $00
    rrca                                          ; $70ab: $0f
    ld h, d                                       ; $70ac: $62
    sbc h                                         ; $70ad: $9c
    ld a, e                                       ; $70ae: $7b
    or l                                          ; $70af: $b5
    ld l, [hl]                                    ; $70b0: $6e
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    push hl                                       ; $70b3: $e5
    inc a                                         ; $70b4: $3c
    rrca                                          ; $70b5: $0f
    ld e, d                                       ; $70b6: $5a
    ld c, c                                       ; $70b7: $49
    ld c, c                                       ; $70b8: $49
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00

jr_0b7_70bb:
    rst $30                                       ; $70bb: $f7
    ld [hl], d                                    ; $70bc: $72
    sbc $7b                                       ; $70bd: $de $7b
    nop                                           ; $70bf: $00
    jr nz, jr_0b7_70c2                            ; $70c0: $20 $00

jr_0b7_70c2:
    jr nz, jr_0b7_70bb                            ; $70c2: $20 $f7

    ld [hl], d                                    ; $70c4: $72
    sbc $7b                                       ; $70c5: $de $7b
    nop                                           ; $70c7: $00
    jr nz, jr_0b7_70ca                            ; $70c8: $20 $00

jr_0b7_70ca:
    jr nz, jr_0b7_70cc                            ; $70ca: $20 $00

jr_0b7_70cc:
    ld bc, $135f                                  ; $70cc: $01 $5f $13
    inc hl                                        ; $70cf: $23
    ld bc, $0800                                  ; $70d0: $01 $00 $08
    reti                                          ; $70d3: $d9


    ld de, $7338                                  ; $70d4: $11 $38 $73
    ld l, c                                       ; $70d7: $69
    ld b, l                                       ; $70d8: $45
    push hl                                       ; $70d9: $e5
    inc a                                         ; $70da: $3c
    ld sp, $f766                                  ; $70db: $31 $66 $f7
    ld [hl], d                                    ; $70de: $72
    ld c, c                                       ; $70df: $49
    ld c, l                                       ; $70e0: $4d
    daa                                           ; $70e1: $27
    ld b, l                                       ; $70e2: $45
    sub l                                         ; $70e3: $95
    ld [hl], d                                    ; $70e4: $72
    sbc h                                         ; $70e5: $9c
    ld a, e                                       ; $70e6: $7b
    adc $5d                                       ; $70e7: $ce $5d
    ld l, d                                       ; $70e9: $6a
    ld c, l                                       ; $70ea: $4d
    sub h                                         ; $70eb: $94
    ld l, [hl]                                    ; $70ec: $6e
    jr nc, jr_0b7_714d                            ; $70ed: $30 $5e

    ld e, d                                       ; $70ef: $5a
    ld [hl], e                                    ; $70f0: $73
    nop                                           ; $70f1: $00
    jr nz, @+$75                                  ; $70f2: $20 $73

    ld e, [hl]                                    ; $70f4: $5e
    cp h                                          ; $70f5: $bc
    ld a, e                                       ; $70f6: $7b
    push hl                                       ; $70f7: $e5

jr_0b7_70f8:
    inc a                                         ; $70f8: $3c
    nop                                           ; $70f9: $00
    jr nz, @+$75                                  ; $70fa: $20 $73

    ld e, [hl]                                    ; $70fc: $5e
    cp h                                          ; $70fd: $bc
    ld a, e                                       ; $70fe: $7b
    push hl                                       ; $70ff: $e5

jr_0b7_7100:
    inc a                                         ; $7100: $3c
    nop                                           ; $7101: $00
    jr nz, jr_0b7_7104                            ; $7102: $20 $00

jr_0b7_7104:
    jr nz, jr_0b7_7106                            ; $7104: $20 $00

jr_0b7_7106:
    jr nz, jr_0b7_7090                            ; $7106: $20 $88

    ld [hl-], a                                   ; $7108: $32
    nop                                           ; $7109: $00
    jr nz, jr_0b7_70f8                            ; $710a: $20 $ec

    ld c, c                                       ; $710c: $49
    jr nz, @+$06                                  ; $710d: $20 $04

    inc h                                         ; $710f: $24
    inc b                                         ; $7110: $04
    nop                                           ; $7111: $00
    jr nz, jr_0b7_7100                            ; $7112: $20 $ec

    ld c, c                                       ; $7114: $49
    inc h                                         ; $7115: $24
    inc b                                         ; $7116: $04
    inc h                                         ; $7117: $24
    inc b                                         ; $7118: $04
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    rst $38                                       ; $711b: $ff
    ld a, a                                       ; $711c: $7f
    nop                                           ; $711d: $00
    jr nz, @+$03                                  ; $711e: $20 $01

    ld [$0001], sp                                ; $7120: $08 $01 $00
    ld c, c                                       ; $7123: $49
    ld l, d                                       ; $7124: $6a
    ccf                                           ; $7125: $3f
    ld hl, $2041                                  ; $7126: $21 $41 $20
    nop                                           ; $7129: $00
    nop                                           ; $712a: $00
    nop                                           ; $712b: $00
    jr nz, @+$41                                  ; $712c: $20 $3f

    ld hl, $2041                                  ; $712e: $21 $41 $20
    nop                                           ; $7131: $00
    jr nz, jr_0b7_7134                            ; $7132: $20 $00

jr_0b7_7134:
    jr nz, jr_0b7_7175                            ; $7134: $20 $3f

    ld hl, $2041                                  ; $7136: $21 $41 $20
    nop                                           ; $7139: $00
    jr nz, @-$12                                  ; $713a: $20 $ec

    ld c, c                                       ; $713c: $49
    inc h                                         ; $713d: $24
    inc b                                         ; $713e: $04
    inc h                                         ; $713f: $24
    inc b                                         ; $7140: $04
    nop                                           ; $7141: $00
    nop                                           ; $7142: $00
    rst $38                                       ; $7143: $ff
    ld a, a                                       ; $7144: $7f
    ld l, b                                       ; $7145: $68
    ld sp, $2000                                  ; $7146: $31 $00 $20
    nop                                           ; $7149: $00
    jr nz, jr_0b7_71b5                            ; $714a: $20 $69

    dec [hl]                                      ; $714c: $35

jr_0b7_714d:
    inc h                                         ; $714d: $24
    inc b                                         ; $714e: $04
    xor e                                         ; $714f: $ab
    dec a                                         ; $7150: $3d
    nop                                           ; $7151: $00
    inc b                                         ; $7152: $04
    sbc e                                         ; $7153: $9b
    ld [de], a                                    ; $7154: $12
    rst $18                                       ; $7155: $df
    ld [hl], e                                    ; $7156: $73
    sbc a                                         ; $7157: $9f
    ccf                                           ; $7158: $3f
    ld bc, $8404                                  ; $7159: $01 $04 $84
    ld d, c                                       ; $715c: $51
    scf                                           ; $715d: $37
    ld [de], a                                    ; $715e: $12
    ccf                                           ; $715f: $3f
    ld hl, $1000                                  ; $7160: $21 $00 $10
    nop                                           ; $7163: $00
    jr nz, @+$03                                  ; $7164: $20 $01

    ld [$213f], sp                                ; $7166: $08 $3f $21
    nop                                           ; $7169: $00
    jr nz, jr_0b7_716c                            ; $716a: $20 $00

jr_0b7_716c:
    jr nz, @+$03                                  ; $716c: $20 $01

    ld [$213f], sp                                ; $716e: $08 $3f $21
    nop                                           ; $7171: $00
    jr nz, jr_0b7_71dd                            ; $7172: $20 $69

    dec [hl]                                      ; $7174: $35

jr_0b7_7175:
    inc h                                         ; $7175: $24
    inc b                                         ; $7176: $04

jr_0b7_7177:
    xor e                                         ; $7177: $ab
    dec a                                         ; $7178: $3d
    nop                                           ; $7179: $00
    inc d                                         ; $717a: $14
    ld a, [hl+]                                   ; $717b: $2a
    ld d, d                                       ; $717c: $52
    ld l, a                                       ; $717d: $6f
    inc c                                         ; $717e: $0c
    ld a, $25                                     ; $717f: $3e $25
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    db $fc                                        ; $7183: $fc
    ld a, a                                       ; $7184: $7f
    ld b, a                                       ; $7185: $47
    ld sp, $49a8                                  ; $7186: $31 $a8 $49
    nop                                           ; $7189: $00
    nop                                           ; $718a: $00
    sbc [hl]                                      ; $718b: $9e
    rra                                           ; $718c: $1f
    rst $08                                       ; $718d: $cf

jr_0b7_718e:
    ld de, $0444                                  ; $718e: $11 $44 $04
    nop                                           ; $7191: $00
    nop                                           ; $7192: $00
    jp c, $aa22                                   ; $7193: $da $22 $aa

    nop                                           ; $7196: $00
    dec a                                         ; $7197: $3d
    rla                                           ; $7198: $17
    nop                                           ; $7199: $00
    inc d                                         ; $719a: $14
    db $d3                                        ; $719b: $d3
    dec l                                         ; $719c: $2d
    xor d                                         ; $719d: $aa
    inc c                                         ; $719e: $0c
    cp $4a                                        ; $719f: $fe $4a
    nop                                           ; $71a1: $00
    jr nz, jr_0b7_7177                            ; $71a2: $20 $d3

    dec l                                         ; $71a4: $2d
    xor d                                         ; $71a5: $aa
    inc c                                         ; $71a6: $0c
    cp $4a                                        ; $71a7: $fe $4a
    nop                                           ; $71a9: $00
    jr nz, @-$02                                  ; $71aa: $20 $fc

    ld a, a                                       ; $71ac: $7f
    ld b, a                                       ; $71ad: $47
    ld sp, $49a8                                  ; $71ae: $31 $a8 $49
    nop                                           ; $71b1: $00
    nop                                           ; $71b2: $00
    sbc c                                         ; $71b3: $99
    inc c                                         ; $71b4: $0c

jr_0b7_71b5:
    sbc b                                         ; $71b5: $98
    ld e, d                                       ; $71b6: $5a
    nop                                           ; $71b7: $00
    inc e                                         ; $71b8: $1c
    nop                                           ; $71b9: $00
    nop                                           ; $71ba: $00
    ld b, [hl]                                    ; $71bb: $46
    halt                                          ; $71bc: $76
    push hl                                       ; $71bd: $e5
    inc l                                         ; $71be: $2c
    or a                                          ; $71bf: $b7
    ld a, e                                       ; $71c0: $7b
    ld hl, $ff08                                  ; $71c1: $21 $08 $ff
    cpl                                           ; $71c4: $2f
    ld c, a                                       ; $71c5: $4f
    dec b                                         ; $71c6: $05
    cp h                                          ; $71c7: $bc
    ld e, a                                       ; $71c8: $5f
    ld bc, $3504                                  ; $71c9: $01 $04 $35
    ld d, $5e                                     ; $71cc: $16 $5e
    dec hl                                        ; $71ce: $2b
    jp z, $0108                                   ; $71cf: $ca $08 $01

    inc c                                         ; $71d2: $0c
    or d                                          ; $71d3: $b2
    add hl, hl                                    ; $71d4: $29
    jp z, $9c14                                   ; $71d5: $ca $14 $9c

    ld b, d                                       ; $71d8: $42
    nop                                           ; $71d9: $00
    jr nz, jr_0b7_718e                            ; $71da: $20 $b2

    add hl, hl                                    ; $71dc: $29

jr_0b7_71dd:
    jp z, $9c14                                   ; $71dd: $ca $14 $9c

    ld b, d                                       ; $71e0: $42
    nop                                           ; $71e1: $00
    jr nz, @+$48                                  ; $71e2: $20 $46

    halt                                          ; $71e4: $76
    push hl                                       ; $71e5: $e5
    inc l                                         ; $71e6: $2c
    or a                                          ; $71e7: $b7
    ld a, e                                       ; $71e8: $7b
    nop                                           ; $71e9: $00
    nop                                           ; $71ea: $00
    ei                                            ; $71eb: $fb
    ld a, a                                       ; $71ec: $7f
    nop                                           ; $71ed: $00
    jr nz, @-$5e                                  ; $71ee: $20 $a0

    inc e                                         ; $71f0: $1c
    jr nz, jr_0b7_71ff                            ; $71f1: $20 $0c

    jp c, $8210                                   ; $71f3: $da $10 $82

jr_0b7_71f6:
    ld c, l                                       ; $71f6: $4d
    ccf                                           ; $71f7: $3f
    ld h, e                                       ; $71f8: $63
    inc hl                                        ; $71f9: $23
    inc b                                         ; $71fa: $04
    ld d, l                                       ; $71fb: $55
    ld [hl+], a                                   ; $71fc: $22
    rst $18                                       ; $71fd: $df
    ld l, e                                       ; $71fe: $6b

jr_0b7_71ff:
    cp $0e                                        ; $71ff: $fe $0e
    ld h, [hl]                                    ; $7201: $66
    inc b                                         ; $7202: $04
    db $db                                        ; $7203: $db
    ld [de], a                                    ; $7204: $12
    ld l, a                                       ; $7205: $6f
    dec e                                         ; $7206: $1d
    cp e                                          ; $7207: $bb
    ld b, d                                       ; $7208: $42
    nop                                           ; $7209: $00
    inc c                                         ; $720a: $0c
    sbc e                                         ; $720b: $9b
    ld a, $aa                                     ; $720c: $3e $aa
    inc c                                         ; $720e: $0c
    ld l, $1d                                     ; $720f: $2e $1d
    nop                                           ; $7211: $00
    jr nz, @-$63                                  ; $7212: $20 $9b

    ld a, $aa                                     ; $7214: $3e $aa
    inc c                                         ; $7216: $0c
    ld l, $1d                                     ; $7217: $2e $1d
    nop                                           ; $7219: $00
    jr nz, jr_0b7_71f6                            ; $721a: $20 $da

    db $10                                        ; $721c: $10
    add d                                         ; $721d: $82
    ld c, l                                       ; $721e: $4d
    ccf                                           ; $721f: $3f
    ld h, e                                       ; $7220: $63
    nop                                           ; $7221: $00
    nop                                           ; $7222: $00
    rst $30                                       ; $7223: $f7
    inc d                                         ; $7224: $14
    nop                                           ; $7225: $00
    jr nz, jr_0b7_724c                            ; $7226: $20 $24

    inc b                                         ; $7228: $04
    ld b, $04                                     ; $7229: $06 $04
    ret nz                                        ; $722b: $c0

    ld e, l                                       ; $722c: $5d
    call c, $ca14                                 ; $722d: $dc $14 $ca
    ld a, [hl]                                    ; $7230: $7e
    ld b, h                                       ; $7231: $44
    nop                                           ; $7232: $00
    ld a, b                                       ; $7233: $78
    ld d, $bf                                     ; $7234: $16 $bf
    ld b, a                                       ; $7236: $47
    xor $09                                       ; $7237: $ee $09
    ld [bc], a                                    ; $7239: $02
    nop                                           ; $723a: $00
    ld e, b                                       ; $723b: $58
    ld [hl], $9f                                  ; $723c: $36 $9f
    ld e, e                                       ; $723e: $5b
    xor d                                         ; $723f: $aa
    inc b                                         ; $7240: $04
    nop                                           ; $7241: $00
    inc d                                         ; $7242: $14
    or d                                          ; $7243: $b2
    dec h                                         ; $7244: $25
    sbc $46                                       ; $7245: $de $46
    xor e                                         ; $7247: $ab
    ld [$2000], sp                                ; $7248: $08 $00 $20
    or d                                          ; $724b: $b2

jr_0b7_724c:
    dec h                                         ; $724c: $25
    sbc $46                                       ; $724d: $de $46
    xor e                                         ; $724f: $ab
    ld [$2000], sp                                ; $7250: $08 $00 $20
    ret nz                                        ; $7253: $c0

    ld e, l                                       ; $7254: $5d
    call c, $ca14                                 ; $7255: $dc $14 $ca
    ld a, [hl]                                    ; $7258: $7e
    nop                                           ; $7259: $00
    nop                                           ; $725a: $00
    rst $38                                       ; $725b: $ff
    ld a, a                                       ; $725c: $7f
    nop                                           ; $725d: $00
    jr nz, @-$34                                  ; $725e: $20 $ca

    ld a, [hl]                                    ; $7260: $7e
    ld [bc], a                                    ; $7261: $02
    nop                                           ; $7262: $00
    cp l                                          ; $7263: $bd
    dec l                                         ; $7264: $2d
    jr nz, jr_0b7_72a4                            ; $7265: $20 $3d

    cp a                                          ; $7267: $bf
    ld d, d                                       ; $7268: $52
    ld h, [hl]                                    ; $7269: $66
    nop                                           ; $726a: $00
    ld e, $37                                     ; $726b: $1e $37
    di                                            ; $726d: $f3
    dec c                                         ; $726e: $0d
    cp a                                          ; $726f: $bf
    ld h, a                                       ; $7270: $67
    ld [bc], a                                    ; $7271: $02
    nop                                           ; $7272: $00
    dec a                                         ; $7273: $3d
    ld c, a                                       ; $7274: $4f
    or h                                          ; $7275: $b4
    dec c                                         ; $7276: $0d
    ret                                           ; $7277: $c9


    inc b                                         ; $7278: $04
    nop                                           ; $7279: $00
    inc d                                         ; $727a: $14
    sbc $46                                       ; $727b: $de $46
    jp z, Jump_0b7_6f0c                           ; $727d: $ca $0c $6f

    ld hl, $2000                                  ; $7280: $21 $00 $20
    sbc $46                                       ; $7283: $de $46
    jp z, Jump_0b7_6f0c                           ; $7285: $ca $0c $6f

    ld hl, $2000                                  ; $7288: $21 $00 $20
    cp l                                          ; $728b: $bd
    dec l                                         ; $728c: $2d
    jr nz, jr_0b7_72cc                            ; $728d: $20 $3d

    cp a                                          ; $728f: $bf
    ld d, d                                       ; $7290: $52
    nop                                           ; $7291: $00
    nop                                           ; $7292: $00
    rst $38                                       ; $7293: $ff
    ld a, a                                       ; $7294: $7f
    and c                                         ; $7295: $a1
    dec d                                         ; $7296: $15
    nop                                           ; $7297: $00
    jr nz, jr_0b7_72ba                            ; $7298: $20 $20

    db $10                                        ; $729a: $10
    sbc b                                         ; $729b: $98
    ld hl, $7fff                                  ; $729c: $21 $ff $7f
    inc de                                        ; $729f: $13
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    nop                                           ; $72a2: $00
    rst $18                                       ; $72a3: $df

jr_0b7_72a4:
    ld e, a                                       ; $72a4: $5f
    add e                                         ; $72a5: $83
    ld d, l                                       ; $72a6: $55
    ld a, [bc]                                    ; $72a7: $0a
    add hl, bc                                    ; $72a8: $09
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    sbc a                                         ; $72ab: $9f
    ld e, a                                       ; $72ac: $5f
    ld hl, $2e49                                  ; $72ad: $21 $49 $2e
    ld de, $2000                                  ; $72b0: $11 $00 $20
    ld e, b                                       ; $72b3: $58
    ld a, [hl-]                                   ; $72b4: $3a
    xor d                                         ; $72b5: $aa
    ld [$4aff], sp                                ; $72b6: $08 $ff $4a
    nop                                           ; $72b9: $00

jr_0b7_72ba:
    jr nz, jr_0b7_7314                            ; $72ba: $20 $58

    ld a, [hl-]                                   ; $72bc: $3a
    xor d                                         ; $72bd: $aa
    ld [$4aff], sp                                ; $72be: $08 $ff $4a
    nop                                           ; $72c1: $00
    nop                                           ; $72c2: $00
    rst $38                                       ; $72c3: $ff
    ld a, a                                       ; $72c4: $7f
    nop                                           ; $72c5: $00
    jr nz, @+$15                                  ; $72c6: $20 $13

    nop                                           ; $72c8: $00
    nop                                           ; $72c9: $00
    nop                                           ; $72ca: $00
    ccf                                           ; $72cb: $3f

jr_0b7_72cc:
    rla                                           ; $72cc: $17
    xor c                                         ; $72cd: $a9
    ld de, $7fff                                  ; $72ce: $11 $ff $7f
    ld [bc], a                                    ; $72d1: $02

jr_0b7_72d2:
    nop                                           ; $72d2: $00
    ld e, [hl]                                    ; $72d3: $5e
    dec de                                        ; $72d4: $1b
    rst $38                                       ; $72d5: $ff
    ld h, e                                       ; $72d6: $63
    dec c                                         ; $72d7: $0d
    dec b                                         ; $72d8: $05
    ld bc, $1504                                  ; $72d9: $01 $04 $15
    ld a, [hl+]                                   ; $72dc: $2a
    rst $38                                       ; $72dd: $ff
    cpl                                           ; $72de: $2f
    rst $38                                       ; $72df: $ff
    ld a, a                                       ; $72e0: $7f
    jr nz, jr_0b7_72ef                            ; $72e1: $20 $0c

    push af                                       ; $72e3: $f5
    dec l                                         ; $72e4: $2d
    db $10                                        ; $72e5: $10
    dec c                                         ; $72e6: $0d
    dec a                                         ; $72e7: $3d
    ld b, a                                       ; $72e8: $47
    nop                                           ; $72e9: $00
    inc c                                         ; $72ea: $0c
    or l                                          ; $72eb: $b5
    ld hl, $42dc                                  ; $72ec: $21 $dc $42

jr_0b7_72ef:
    call z, RST_10                                ; $72ef: $cc $10 $00
    jr nz, jr_0b7_7337                            ; $72f2: $20 $43

    jr nz, jr_0b7_72d2                            ; $72f4: $20 $dc

    ld b, d                                       ; $72f6: $42
    call z, RST_10                                ; $72f7: $cc $10 $00
    nop                                           ; $72fa: $00
    rst $38                                       ; $72fb: $ff
    ld a, a                                       ; $72fc: $7f
    nop                                           ; $72fd: $00
    jr nz, jr_0b7_730d                            ; $72fe: $20 $0d

    dec b                                         ; $7300: $05
    nop                                           ; $7301: $00
    nop                                           ; $7302: $00
    cp l                                          ; $7303: $bd
    ld c, $0c                                     ; $7304: $0e $0c
    ld bc, $1bdf                                  ; $7306: $01 $df $1b
    inc hl                                        ; $7309: $23
    inc b                                         ; $730a: $04
    ret c                                         ; $730b: $d8

    add hl, bc                                    ; $730c: $09

jr_0b7_730d:
    rst $38                                       ; $730d: $ff
    daa                                           ; $730e: $27
    ld c, b                                       ; $730f: $48
    dec c                                         ; $7310: $0d
    ld bc, $1900                                  ; $7311: $01 $00 $19

jr_0b7_7314:
    dec hl                                        ; $7314: $2b
    sbc a                                         ; $7315: $9f
    ld h, a                                       ; $7316: $67
    xor e                                         ; $7317: $ab
    dec h                                         ; $7318: $25
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    dec de                                        ; $731b: $1b
    dec sp                                        ; $731c: $3b
    ld c, a                                       ; $731d: $4f
    dec d                                         ; $731e: $15
    ld e, a                                       ; $731f: $5f
    ld d, a                                       ; $7320: $57
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    ld sp, hl                                     ; $7323: $f9
    dec h                                         ; $7324: $25
    dec e                                         ; $7325: $1d
    ld b, a                                       ; $7326: $47
    jp nz, $0019                                  ; $7327: $c2 $19 $00

    jr nz, @-$48                                  ; $732a: $20 $b6

    ld hl, $4f1e                                  ; $732c: $21 $1e $4f
    db $ed                                        ; $732f: $ed
    stop                                          ; $7330: $10 $00
    ld [$22ff], sp                                ; $7332: $08 $ff $22
    rst $38                                       ; $7335: $ff
    ld [hl], e                                    ; $7336: $73

jr_0b7_7337:
    dec hl                                        ; $7337: $2b
    dec c                                         ; $7338: $0d
    ld h, [hl]                                    ; $7339: $66
    nop                                           ; $733a: $00
    ld a, [hl]                                    ; $733b: $7e
    rra                                           ; $733c: $1f
    sub l                                         ; $733d: $95
    dec b                                         ; $733e: $05
    cp [hl]                                       ; $733f: $be
    ld d, e                                       ; $7340: $53
    ld h, h                                       ; $7341: $64
    inc b                                         ; $7342: $04
    dec [hl]                                      ; $7343: $35
    ld [de], a                                    ; $7344: $12
    sbc [hl]                                      ; $7345: $9e
    ld c, $7d                                     ; $7346: $0e $7d
    dec de                                        ; $7348: $1b
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    cp a                                          ; $734b: $bf
    dec a                                         ; $734c: $3d
    sbc a                                         ; $734d: $9f
    ld d, e                                       ; $734e: $53
    xor $08                                       ; $734f: $ee $08
    nop                                           ; $7351: $00
    nop                                           ; $7352: $00
    ld a, [$5f31]                                 ; $7353: $fa $31 $5f
    ld c, a                                       ; $7356: $4f
    xor $08                                       ; $7357: $ee $08
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    cp [hl]                                       ; $735b: $be
    ld a, $c3                                     ; $735c: $3e $c3
    add hl, de                                    ; $735e: $19
    rst $38                                       ; $735f: $ff
    ld c, a                                       ; $7360: $4f
    nop                                           ; $7361: $00
    jr nz, jr_0b7_73d6                            ; $7362: $20 $72

    dec e                                         ; $7364: $1d
    cp $4a                                        ; $7365: $fe $4a
    xor $10                                       ; $7367: $ee $10
    nop                                           ; $7369: $00
    nop                                           ; $736a: $00
    sbc b                                         ; $736b: $98
    ld h, $be                                     ; $736c: $26 $be
    ld d, e                                       ; $736e: $53
    rst $38                                       ; $736f: $ff
    ld a, e                                       ; $7370: $7b
    ld b, e                                       ; $7371: $43
    inc b                                         ; $7372: $04
    ld d, $12                                     ; $7373: $16 $12
    sbc [hl]                                      ; $7375: $9e
    daa                                           ; $7376: $27
    ld a, a                                       ; $7377: $7f
    ld l, e                                       ; $7378: $6b
    ld [bc], a                                    ; $7379: $02
    nop                                           ; $737a: $00
    rst $30                                       ; $737b: $f7
    dec c                                         ; $737c: $0d
    cp a                                          ; $737d: $bf
    ld a, [bc]                                    ; $737e: $0a
    di                                            ; $737f: $f3
    ld e, $01                                     ; $7380: $1e $01
    nop                                           ; $7382: $00
    ld [hl], d                                    ; $7383: $72
    ld a, [hl+]                                   ; $7384: $2a
    db $d3                                        ; $7385: $d3
    inc c                                         ; $7386: $0c
    ld a, a                                       ; $7387: $7f
    ld b, e                                       ; $7388: $43
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    rst $38                                       ; $738b: $ff
    ld c, $92                                     ; $738c: $0e $92
    ld [$427d], sp                                ; $738e: $08 $7d $42
    nop                                           ; $7391: $00
    nop                                           ; $7392: $00
    sbc d                                         ; $7393: $9a
    ld [hl+], a                                   ; $7394: $22
    add a                                         ; $7395: $87
    add hl, de                                    ; $7396: $19
    rst $38                                       ; $7397: $ff
    daa                                           ; $7398: $27
    nop                                           ; $7399: $00
    inc e                                         ; $739a: $1c
    ld e, l                                       ; $739b: $5d
    ld a, [hl+]                                   ; $739c: $2a
    xor $0c                                       ; $739d: $ee $0c
    cp $4a                                        ; $739f: $fe $4a
    nop                                           ; $73a1: $00
    nop                                           ; $73a2: $00
    cp $1a                                        ; $73a3: $fe $1a
    rst $18                                       ; $73a5: $df
    ld [hl], e                                    ; $73a6: $73
    nop                                           ; $73a7: $00
    jr nz, jr_0b7_73cc                            ; $73a8: $20 $22

    nop                                           ; $73aa: $00
    inc e                                         ; $73ab: $1c
    daa                                           ; $73ac: $27
    rst $18                                       ; $73ad: $df
    ld [hl], a                                    ; $73ae: $77
    pop af                                        ; $73af: $f1
    dec d                                         ; $73b0: $15
    ld bc, $f200                                  ; $73b1: $01 $00 $f2
    dec c                                         ; $73b4: $0d
    ld b, b                                       ; $73b5: $40
    jr z, jr_0b7_7435                             ; $73b6: $28 $7d

    rla                                           ; $73b8: $17
    nop                                           ; $73b9: $00
    nop                                           ; $73ba: $00
    cp c                                          ; $73bb: $b9
    add hl, de                                    ; $73bc: $19
    sbc [hl]                                      ; $73bd: $9e
    ld b, e                                       ; $73be: $43
    ld l, $11                                     ; $73bf: $2e $11
    ld hl, $5c00                                  ; $73c1: $21 $00 $5c
    rra                                           ; $73c4: $1f
    sub h                                         ; $73c5: $94
    db $10                                        ; $73c6: $10
    ccf                                           ; $73c7: $3f
    ld c, a                                       ; $73c8: $4f
    ld bc, $bd00                                  ; $73c9: $01 $00 $bd

jr_0b7_73cc:
    ld e, $93                                     ; $73cc: $1e $93
    dec b                                         ; $73ce: $05
    rst $18                                       ; $73cf: $df
    ld e, a                                       ; $73d0: $5f
    nop                                           ; $73d1: $00
    inc e                                         ; $73d2: $1c
    or a                                          ; $73d3: $b7
    dec e                                         ; $73d4: $1d
    rst $38                                       ; $73d5: $ff

jr_0b7_73d6:
    ld c, d                                       ; $73d6: $4a
    adc c                                         ; $73d7: $89
    ld [$0400], sp                                ; $73d8: $08 $00 $04
    cp h                                          ; $73db: $bc
    ld d, $be                                     ; $73dc: $16 $be
    ld d, e                                       ; $73de: $53
    xor [hl]                                      ; $73df: $ae
    dec h                                         ; $73e0: $25
    inc hl                                        ; $73e1: $23
    nop                                           ; $73e2: $00
    or [hl]                                       ; $73e3: $b6
    ld b, d                                       ; $73e4: $42
    rst $38                                       ; $73e5: $ff
    ld e, a                                       ; $73e6: $5f
    xor l                                         ; $73e7: $ad
    ld hl, $0001                                  ; $73e8: $21 $01 $00
    scf                                           ; $73eb: $37
    dec h                                         ; $73ec: $25
    ld l, e                                       ; $73ed: $6b
    ld l, d                                       ; $73ee: $6a
    sbc a                                         ; $73ef: $9f
    ld c, [hl]                                    ; $73f0: $4e
    jr nz, @+$06                                  ; $73f1: $20 $04

    xor h                                         ; $73f3: $ac
    ld [hl], d                                    ; $73f4: $72
    ld [hl], e                                    ; $73f5: $73
    ld hl, $3f7f                                  ; $73f6: $21 $7f $3f
    jr nz, jr_0b7_73fb                            ; $73f9: $20 $00

jr_0b7_73fb:
    xor l                                         ; $73fb: $ad
    ld [hl], $7f                                  ; $73fc: $36 $7f
    ld sp, $044a                                  ; $73fe: $31 $4a $04
    ld h, e                                       ; $7401: $63
    nop                                           ; $7402: $00
    sbc $4b                                       ; $7403: $de $4b
    or b                                          ; $7405: $b0
    ld de, $77ff                                  ; $7406: $11 $ff $77
    nop                                           ; $7409: $00
    nop                                           ; $740a: $00
    cp [hl]                                       ; $740b: $be
    ld a, $cc                                     ; $740c: $3e $cc
    inc b                                         ; $740e: $04
    nop                                           ; $740f: $00
    jr nz, jr_0b7_7412                            ; $7410: $20 $00

jr_0b7_7412:
    nop                                           ; $7412: $00
    ld e, $13                                     ; $7413: $1e $13
    sbc [hl]                                      ; $7415: $9e
    ld d, e                                       ; $7416: $53
    ld c, a                                       ; $7417: $4f
    add hl, bc                                    ; $7418: $09
    rlca                                          ; $7419: $07
    nop                                           ; $741a: $00
    rst $18                                       ; $741b: $df
    ld h, a                                       ; $741c: $67
    inc de                                        ; $741d: $13
    ld a, [hl+]                                   ; $741e: $2a
    db $db                                        ; $741f: $db
    jr jr_0b7_7422                                ; $7420: $18 $00

jr_0b7_7422:
    nop                                           ; $7422: $00
    sbc $39                                       ; $7423: $de $39
    or l                                          ; $7425: $b5
    inc d                                         ; $7426: $14
    rra                                           ; $7427: $1f
    ld h, e                                       ; $7428: $63
    nop                                           ; $7429: $00
    nop                                           ; $742a: $00
    add hl, de                                    ; $742b: $19
    ld l, $54                                     ; $742c: $2e $54
    ld a, e                                       ; $742e: $7b
    db $ed                                        ; $742f: $ed
    db $10                                        ; $7430: $10
    ld bc, $0900                                  ; $7431: $01 $00 $09
    ld e, d                                       ; $7434: $5a

jr_0b7_7435:
    rst $18                                       ; $7435: $df
    dec [hl]                                      ; $7436: $35
    rst $38                                       ; $7437: $ff
    ld [hl], e                                    ; $7438: $73
    nop                                           ; $7439: $00
    inc b                                         ; $743a: $04
    inc l                                         ; $743b: $2c
    ld a, a                                       ; $743c: $7f
    add hl, de                                    ; $743d: $19
    dec e                                         ; $743e: $1d
    rst $38                                       ; $743f: $ff
    dec a                                         ; $7440: $3d
    nop                                           ; $7441: $00
    inc e                                         ; $7442: $1c
    sbc d                                         ; $7443: $9a
    ld hl, $048c                                  ; $7444: $21 $8c $04
    rst $38                                       ; $7447: $ff
    ld b, [hl]                                    ; $7448: $46
    ld bc, $3800                                  ; $7449: $01 $00 $38
    ld a, [bc]                                    ; $744c: $0a
    ld e, [hl]                                    ; $744d: $5e
    rra                                           ; $744e: $1f
    dec l                                         ; $744f: $2d
    add hl, bc                                    ; $7450: $09
    dec b                                         ; $7451: $05
    nop                                           ; $7452: $00
    sbc h                                         ; $7453: $9c
    dec h                                         ; $7454: $25
    rst $38                                       ; $7455: $ff
    ld a, a                                       ; $7456: $7f
    cp a                                          ; $7457: $bf
    ld [de], a                                    ; $7458: $12
    inc hl                                        ; $7459: $23
    inc b                                         ; $745a: $04
    sbc d                                         ; $745b: $9a
    ld sp, $5ade                                  ; $745c: $31 $de $5a
    add hl, bc                                    ; $745f: $09
    ld hl, $0000                                  ; $7460: $21 $00 $00
    sub b                                         ; $7463: $90
    ld h, [hl]                                    ; $7464: $66
    sbc b                                         ; $7465: $98
    db $10                                        ; $7466: $10
    ld b, $29                                     ; $7467: $06 $29
    ld [bc], a                                    ; $7469: $02
    nop                                           ; $746a: $00
    sbc h                                         ; $746b: $9c
    ld sp, $5e08                                  ; $746c: $31 $08 $5e
    ld a, e                                       ; $746f: $7b
    ld l, e                                       ; $7470: $6b
    nop                                           ; $7471: $00
    inc b                                         ; $7472: $04
    cp [hl]                                       ; $7473: $be
    rla                                           ; $7474: $17
    rst $38                                       ; $7475: $ff
    ld a, e                                       ; $7476: $7b
    di                                            ; $7477: $f3
    inc c                                         ; $7478: $0c
    nop                                           ; $7479: $00
    inc e                                         ; $747a: $1c
    rst $28                                       ; $747b: $ef
    ld [$6799], sp                                ; $747c: $08 $99 $67
    ld d, a                                       ; $747f: $57
    ld e, $23                                     ; $7480: $1e $23
    nop                                           ; $7482: $00
    ld a, d                                       ; $7483: $7a
    ld [de], a                                    ; $7484: $12
    ld e, [hl]                                    ; $7485: $5e
    rla                                           ; $7486: $17
    dec l                                         ; $7487: $2d
    add hl, bc                                    ; $7488: $09
    nop                                           ; $7489: $00
    nop                                           ; $748a: $00
    ld e, $0b                                     ; $748b: $1e $0b
    rst $18                                       ; $748d: $df
    scf                                           ; $748e: $37
    jp z, Jump_000_0004                           ; $748f: $ca $04 $00

    nop                                           ; $7492: $00
    ld a, a                                       ; $7493: $7f
    dec l                                         ; $7494: $2d
    rra                                           ; $7495: $1f
    ld h, e                                       ; $7496: $63
    ld c, e                                       ; $7497: $4b
    inc b                                         ; $7498: $04
    ld [bc], a                                    ; $7499: $02
    nop                                           ; $749a: $00
    ld [hl], a                                    ; $749b: $77
    ld a, e                                       ; $749c: $7b
    halt                                          ; $749d: $76
    inc c                                         ; $749e: $0c
    sbc $7f                                       ; $749f: $de $7f
    jr nz, jr_0b7_74ab                            ; $74a1: $20 $08

    call z, Call_000_3641                         ; $74a3: $cc $41 $36
    ld l, e                                       ; $74a6: $6b
    sbc a                                         ; $74a7: $9f
    ld sp, $0004                                  ; $74a8: $31 $04 $00

jr_0b7_74ab:
    sbc d                                         ; $74ab: $9a
    ld bc, $32fe                                  ; $74ac: $01 $fe $32
    jr nz, jr_0b7_74fa                            ; $74af: $20 $49

    nop                                           ; $74b1: $00
    nop                                           ; $74b2: $00
    cp h                                          ; $74b3: $bc
    ld bc, $2000                                  ; $74b4: $01 $00 $20
    sbc h                                         ; $74b7: $9c
    ld [hl], $00                                  ; $74b8: $36 $00
    nop                                           ; $74ba: $00
    or d                                          ; $74bb: $b2
    dec c                                         ; $74bc: $0d
    cp h                                          ; $74bd: $bc
    ld [de], a                                    ; $74be: $12
    sbc [hl]                                      ; $74bf: $9e
    rra                                           ; $74c0: $1f
    nop                                           ; $74c1: $00
    nop                                           ; $74c2: $00
    rst $38                                       ; $74c3: $ff
    dec sp                                        ; $74c4: $3b
    rst $38                                       ; $74c5: $ff
    ld [hl], a                                    ; $74c6: $77

jr_0b7_74c7:
    add sp, $00                                   ; $74c7: $e8 $00
    inc b                                         ; $74c9: $04
    nop                                           ; $74ca: $00
    sbc c                                         ; $74cb: $99
    dec h                                         ; $74cc: $25
    rst $38                                       ; $74cd: $ff
    ld a, e                                       ; $74ce: $7b
    cp l                                          ; $74cf: $bd
    ld c, $04                                     ; $74d0: $0e $04
    nop                                           ; $74d2: $00
    add c                                         ; $74d3: $81
    ld d, c                                       ; $74d4: $51
    ld [hl], e                                    ; $74d5: $73
    inc c                                         ; $74d6: $0c
    and $61                                       ; $74d7: $e6 $61
    ld b, b                                       ; $74d9: $40
    db $10                                        ; $74da: $10
    add $55                                       ; $74db: $c6 $55
    ld l, h                                       ; $74dd: $6c
    ld l, d                                       ; $74de: $6a
    sub [hl]                                      ; $74df: $96
    ld a, a                                       ; $74e0: $7f
    nop                                           ; $74e1: $00
    nop                                           ; $74e2: $00
    dec b                                         ; $74e3: $05
    halt                                          ; $74e4: $76
    ld a, [hl+]                                   ; $74e5: $2a
    ld bc, $1c41                                  ; $74e6: $01 $41 $1c
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    ld a, l                                       ; $74eb: $7d
    ld c, [hl]                                    ; $74ec: $4e
    db $e4                                        ; $74ed: $e4
    ld h, c                                       ; $74ee: $61
    nop                                           ; $74ef: $00
    jr nz, jr_0b7_74f2                            ; $74f0: $20 $00

jr_0b7_74f2:
    nop                                           ; $74f2: $00
    dec [hl]                                      ; $74f3: $35
    ld [de], a                                    ; $74f4: $12
    ccf                                           ; $74f5: $3f
    rla                                           ; $74f6: $17
    ld [$0004], a                                 ; $74f7: $ea $04 $00

jr_0b7_74fa:
    nop                                           ; $74fa: $00
    ld sp, $de0a                                  ; $74fb: $31 $0a $de
    inc hl                                        ; $74fe: $23
    ld e, h                                       ; $74ff: $5c
    ld [de], a                                    ; $7500: $12
    dec h                                         ; $7501: $25
    inc b                                         ; $7502: $04
    ld e, a                                       ; $7503: $5f
    add hl, hl                                    ; $7504: $29
    rst $38                                       ; $7505: $ff
    ld [hl], a                                    ; $7506: $77
    rst $18                                       ; $7507: $df
    scf                                           ; $7508: $37
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    ld bc, $0e3d                                  ; $750b: $01 $3d $0e
    inc b                                         ; $750e: $04
    call nz, Call_0b7_435d                        ; $750f: $c4 $5d $43
    ld b, l                                       ; $7512: $45
    and h                                         ; $7513: $a4
    ld d, l                                       ; $7514: $55
    call nz, $845d                                ; $7515: $c4 $5d $84
    ld d, c                                       ; $7518: $51
    nop                                           ; $7519: $00
    ld [$2673], sp                                ; $751a: $08 $73 $26
    rst $38                                       ; $751d: $ff
    ld d, e                                       ; $751e: $53
    ld l, h                                       ; $751f: $6c
    dec b                                         ; $7520: $05
    ld [hl+], a                                   ; $7521: $22
    inc b                                         ; $7522: $04
    cp b                                          ; $7523: $b8
    dec [hl]                                      ; $7524: $35
    nop                                           ; $7525: $00
    jr nz, jr_0b7_74c7                            ; $7526: $20 $9f

    ld [hl], e                                    ; $7528: $73
    ld b, e                                       ; $7529: $43
    nop                                           ; $752a: $00
    sbc d                                         ; $752b: $9a
    dec d                                         ; $752c: $15
    rst $18                                       ; $752d: $df
    ld e, d                                       ; $752e: $5a
    ld a, a                                       ; $752f: $7f
    inc de                                        ; $7530: $13
    ld [hl+], a                                   ; $7531: $22
    inc b                                         ; $7532: $04
    add hl, sp                                    ; $7533: $39
    ld a, [bc]                                    ; $7534: $0a
    and h                                         ; $7535: $a4
    ld e, l                                       ; $7536: $5d
    rst $18                                       ; $7537: $df
    ld e, d                                       ; $7538: $5a
    nop                                           ; $7539: $00
    nop                                           ; $753a: $00
    ld a, [$df16]                                 ; $753b: $fa $16 $df
    ld h, e                                       ; $753e: $63
    adc l                                         ; $753f: $8d
    ld bc, $0000                                  ; $7540: $01 $00 $00
    sub e                                         ; $7543: $93
    ld a, [de]                                    ; $7544: $1a
    pop hl                                        ; $7545: $e1
    inc [hl]                                      ; $7546: $34
    rst $38                                       ; $7547: $ff
    ld l, a                                       ; $7548: $6f
    nop                                           ; $7549: $00
    inc b                                         ; $754a: $04
    ret nz                                        ; $754b: $c0

    inc l                                         ; $754c: $2c
    ld h, b                                       ; $754d: $60
    inc e                                         ; $754e: $1c
    ld [hl+], a                                   ; $754f: $22
    ld b, c                                       ; $7550: $41
    ld b, e                                       ; $7551: $43
    ld [$0e9e], sp                                ; $7552: $08 $9e $0e
    rst $18                                       ; $7555: $df
    scf                                           ; $7556: $37
    rst $38                                       ; $7557: $ff
    ld a, a                                       ; $7558: $7f
    nop                                           ; $7559: $00
    nop                                           ; $755a: $00
    sbc [hl]                                      ; $755b: $9e
    ld d, d                                       ; $755c: $52
    ret                                           ; $755d: $c9


    ld [$2000], sp                                ; $755e: $08 $00 $20
    ld bc, $fa0c                                  ; $7561: $01 $0c $fa
    jr nz, jr_0b7_75e5                            ; $7564: $20 $7f

    inc de                                        ; $7566: $13
    xor d                                         ; $7567: $aa
    inc c                                         ; $7568: $0c
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00
    xor c                                         ; $756b: $a9
    ld a, d                                       ; $756c: $7a
    ld e, [hl]                                    ; $756d: $5e
    ld c, d                                       ; $756e: $4a
    adc [hl]                                      ; $756f: $8e
    inc b                                         ; $7570: $04
    ld bc, $5900                                  ; $7571: $01 $00 $59
    ld d, $5a                                     ; $7574: $16 $5a
    ld h, a                                       ; $7576: $67
    ld c, a                                       ; $7577: $4f
    ld bc, $0000                                  ; $7578: $01 $00 $00
    rst $38                                       ; $757b: $ff
    rra                                           ; $757c: $1f
    di                                            ; $757d: $f3
    ld bc, $6bdf                                  ; $757e: $01 $df $6b
    nop                                           ; $7581: $00
    nop                                           ; $7582: $00
    ld b, a                                       ; $7583: $47
    ld l, $20                                     ; $7584: $2e $20
    inc b                                         ; $7586: $04
    jr nz, jr_0b7_7591                            ; $7587: $20 $08

    nop                                           ; $7589: $00
    nop                                           ; $758a: $00
    ld b, a                                       ; $758b: $47
    ld a, [hl+]                                   ; $758c: $2a
    ld [hl], e                                    ; $758d: $73
    add hl, bc                                    ; $758e: $09
    ld a, a                                       ; $758f: $7f
    ld [de], a                                    ; $7590: $12

jr_0b7_7591:
    nop                                           ; $7591: $00
    nop                                           ; $7592: $00
    sbc a                                         ; $7593: $9f
    ld sp, $2000                                  ; $7594: $31 $00 $20
    xor h                                         ; $7597: $ac
    db $10                                        ; $7598: $10
    ld bc, $3f00                                  ; $7599: $01 $00 $3f
    inc de                                        ; $759c: $13
    dec bc                                        ; $759d: $0b
    inc c                                         ; $759e: $0c
    nop                                           ; $759f: $00
    jr nz, jr_0b7_75a2                            ; $75a0: $20 $00

jr_0b7_75a2:
    nop                                           ; $75a2: $00
    adc b                                         ; $75a3: $88
    ld a, [hl]                                    ; $75a4: $7e
    sbc [hl]                                      ; $75a5: $9e
    ld b, [hl]                                    ; $75a6: $46
    xor a                                         ; $75a7: $af
    inc b                                         ; $75a8: $04
    ld h, e                                       ; $75a9: $63
    nop                                           ; $75aa: $00
    ld sp, $5d7f                                  ; $75ab: $31 $7f $5d
    rra                                           ; $75ae: $1f
    rst $38                                       ; $75af: $ff
    ld e, e                                       ; $75b0: $5b
    nop                                           ; $75b1: $00
    nop                                           ; $75b2: $00
    ld h, e                                       ; $75b3: $63
    ld c, l                                       ; $75b4: $4d

jr_0b7_75b5:
    ld d, l                                       ; $75b5: $55
    ld a, [bc]                                    ; $75b6: $0a
    ld b, b                                       ; $75b7: $40
    db $10                                        ; $75b8: $10
    ld b, b                                       ; $75b9: $40
    db $10                                        ; $75ba: $10
    db $f4                                        ; $75bb: $f4
    ld l, [hl]                                    ; $75bc: $6e
    add h                                         ; $75bd: $84
    ld d, c                                       ; $75be: $51
    ld b, a                                       ; $75bf: $47
    ld l, $00                                     ; $75c0: $2e $00
    nop                                           ; $75c2: $00
    ld b, a                                       ; $75c3: $47
    ld a, [hl+]                                   ; $75c4: $2a
    or h                                          ; $75c5: $b4
    db $10                                        ; $75c6: $10
    ld h, b                                       ; $75c7: $60
    inc e                                         ; $75c8: $1c
    nop                                           ; $75c9: $00
    inc b                                         ; $75ca: $04
    dec h                                         ; $75cb: $25
    inc b                                         ; $75cc: $04
    nop                                           ; $75cd: $00
    jr nz, @+$6f                                  ; $75ce: $20 $6d

    inc c                                         ; $75d0: $0c
    nop                                           ; $75d1: $00
    jr nz, @+$01                                  ; $75d2: $20 $ff

    ld c, $25                                     ; $75d4: $0e $25
    inc b                                         ; $75d6: $04
    ld c, a                                       ; $75d7: $4f
    inc c                                         ; $75d8: $0c
    nop                                           ; $75d9: $00
    nop                                           ; $75da: $00
    cp d                                          ; $75db: $ba
    add hl, de                                    ; $75dc: $19
    cp l                                          ; $75dd: $bd
    ld b, [hl]                                    ; $75de: $46
    adc l                                         ; $75df: $8d
    ld [$0001], sp                                ; $75e0: $08 $01 $00
    ld d, l                                       ; $75e3: $55
    ld a, a                                       ; $75e4: $7f

jr_0b7_75e5:
    db $ec                                        ; $75e5: $ec
    db $10                                        ; $75e6: $10
    call c, $0016                                 ; $75e7: $dc $16 $00
    nop                                           ; $75ea: $00
    and h                                         ; $75eb: $a4
    ld e, c                                       ; $75ec: $59
    pop bc                                        ; $75ed: $c1
    jr nc, jr_0b7_75b5                            ; $75ee: $30 $c5

    ld h, c                                       ; $75f0: $61
    ld h, b                                       ; $75f1: $60
    jr jr_0b7_766d                                ; $75f2: $18 $79

    ld a, e                                       ; $75f4: $7b
    ret                                           ; $75f5: $c9


    ld sp, $61c5                                  ; $75f6: $31 $c5 $61
    nop                                           ; $75f9: $00

jr_0b7_75fa:
    nop                                           ; $75fa: $00
    ld b, a                                       ; $75fb: $47
    ld l, $bb                                     ; $75fc: $2e $bb
    inc d                                         ; $75fe: $14
    ld h, a                                       ; $75ff: $67
    ld l, $00                                     ; $7600: $2e $00
    inc b                                         ; $7602: $04
    nop                                           ; $7603: $00
    jr nz, @-$43                                  ; $7604: $20 $bb

    inc d                                         ; $7606: $14
    ld h, a                                       ; $7607: $67
    ld l, $00                                     ; $7608: $2e $00
    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    jr nz, jr_0b7_75fa                            ; $760c: $20 $ec

    db $10                                        ; $760e: $10
    call c, $0116                                 ; $760f: $dc $16 $01
    nop                                           ; $7612: $00
    ld e, h                                       ; $7613: $5c
    ld [hl-], a                                   ; $7614: $32
    ccf                                           ; $7615: $3f
    ld d, a                                       ; $7616: $57
    ld sp, $0009                                  ; $7617: $31 $09 $00
    nop                                           ; $761a: $00
    ld b, a                                       ; $761b: $47
    ld l, $7d                                     ; $761c: $2e $7d
    ld sp, $2d7f                                  ; $761e: $31 $7f $2d
    inc bc                                        ; $7621: $03
    nop                                           ; $7622: $00
    rst $28                                       ; $7623: $ef
    ld a, d                                       ; $7624: $7a
    add e                                         ; $7625: $83
    ld d, l                                       ; $7626: $55
    jp nz, Jump_000_0128                          ; $7627: $c2 $28 $01

    nop                                           ; $762a: $00
    rst $08                                       ; $762b: $cf
    halt                                          ; $762c: $76
    ld c, c                                       ; $762d: $49
    dec l                                         ; $762e: $2d
    push af                                       ; $762f: $f5
    nop                                           ; $7630: $00
    nop                                           ; $7631: $00
    nop                                           ; $7632: $00
    rst $38                                       ; $7633: $ff
    ld a, a                                       ; $7634: $7f
    ld b, a                                       ; $7635: $47
    ld l, $68                                     ; $7636: $2e $68
    ld l, $00                                     ; $7638: $2e $00
    inc e                                         ; $763a: $1c
    nop                                           ; $763b: $00
    jr nz, jr_0b7_7685                            ; $763c: $20 $47

    ld l, $68                                     ; $763e: $2e $68
    ld l, $00                                     ; $7640: $2e $00
    jr nz, jr_0b7_768b                            ; $7642: $20 $47

    ld l, $7d                                     ; $7644: $2e $7d
    ld sp, $2d7f                                  ; $7646: $31 $7f $2d
    nop                                           ; $7649: $00
    nop                                           ; $764a: $00
    rst $38                                       ; $764b: $ff
    ld c, [hl]                                    ; $764c: $4e
    rst $18                                       ; $764d: $df
    ld [hl], a                                    ; $764e: $77
    ld c, l                                       ; $764f: $4d
    dec e                                         ; $7650: $1d
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00
    ld b, a                                       ; $7653: $47
    ld l, $ff                                     ; $7654: $2e $ff
    ld [hl], a                                    ; $7656: $77
    dec sp                                        ; $7657: $3b
    dec h                                         ; $7658: $25
    inc h                                         ; $7659: $24
    ld [$6608], sp                                ; $765a: $08 $08 $66
    ld [hl], $09                                  ; $765d: $36 $09
    ld [hl], h                                    ; $765f: $74
    ld a, a                                       ; $7660: $7f
    ld [bc], a                                    ; $7661: $02
    nop                                           ; $7662: $00
    ld b, a                                       ; $7663: $47
    ld l, $75                                     ; $7664: $2e $75
    dec d                                         ; $7666: $15
    dec e                                         ; $7667: $1d
    ld d, a                                       ; $7668: $57
    nop                                           ; $7669: $00
    nop                                           ; $766a: $00
    rst $38                                       ; $766b: $ff
    ld a, a                                       ; $766c: $7f

jr_0b7_766d:
    ld h, a                                       ; $766d: $67
    ld l, $00                                     ; $766e: $2e $00

jr_0b7_7670:
    jr nz, jr_0b7_7672                            ; $7670: $20 $00

jr_0b7_7672:
    jr nz, @+$01                                  ; $7672: $20 $ff

    ld a, a                                       ; $7674: $7f
    ld h, a                                       ; $7675: $67
    ld l, $00                                     ; $7676: $2e $00
    jr nz, jr_0b7_767a                            ; $7678: $20 $00

jr_0b7_767a:
    jr nz, jr_0b7_76c3                            ; $767a: $20 $47

    ld l, $ff                                     ; $767c: $2e $ff
    ld [hl], a                                    ; $767e: $77
    dec sp                                        ; $767f: $3b

jr_0b7_7680:
    dec h                                         ; $7680: $25
    nop                                           ; $7681: $00
    nop                                           ; $7682: $00
    jr c, @+$30                                   ; $7683: $38 $2e

jr_0b7_7685:
    cp a                                          ; $7685: $bf
    ld [hl], e                                    ; $7686: $73
    nop                                           ; $7687: $00

jr_0b7_7688:
    jr nz, jr_0b7_76ca                            ; $7688: $20 $40

    inc c                                         ; $768a: $0c

jr_0b7_768b:
    ld h, [hl]                                    ; $768b: $66
    ld a, [hl]                                    ; $768c: $7e
    inc l                                         ; $768d: $2c
    inc b                                         ; $768e: $04
    ld b, a                                       ; $768f: $47
    ld l, $84                                     ; $7690: $2e $84
    inc d                                         ; $7692: $14
    inc e                                         ; $7693: $1c
    ld h, $af                                     ; $7694: $26 $af
    inc b                                         ; $7696: $04
    cp $4a                                        ; $7697: $fe $4a
    ld c, b                                       ; $7699: $48
    nop                                           ; $769a: $00
    dec e                                         ; $769b: $1d
    ld d, a                                       ; $769c: $57
    ld h, a                                       ; $769d: $67
    ld l, $df                                     ; $769e: $2e $df
    ld l, a                                       ; $76a0: $6f
    nop                                           ; $76a1: $00
    nop                                           ; $76a2: $00
    rst $38                                       ; $76a3: $ff
    ld a, a                                       ; $76a4: $7f
    adc b                                         ; $76a5: $88
    ld [hl-], a                                   ; $76a6: $32
    nop                                           ; $76a7: $00
    jr nz, jr_0b7_76aa                            ; $76a8: $20 $00

jr_0b7_76aa:
    jr nz, @+$01                                  ; $76aa: $20 $ff

    ld a, a                                       ; $76ac: $7f
    adc b                                         ; $76ad: $88
    ld [hl-], a                                   ; $76ae: $32
    nop                                           ; $76af: $00
    jr nz, jr_0b7_76b2                            ; $76b0: $20 $00

jr_0b7_76b2:
    jr nz, jr_0b7_771a                            ; $76b2: $20 $66

    ld a, [hl]                                    ; $76b4: $7e
    inc l                                         ; $76b5: $2c
    inc b                                         ; $76b6: $04
    ld b, a                                       ; $76b7: $47
    ld l, $00                                     ; $76b8: $2e $00
    nop                                           ; $76ba: $00
    rst $38                                       ; $76bb: $ff
    ld c, d                                       ; $76bc: $4a
    rst $18                                       ; $76bd: $df
    ld a, e                                       ; $76be: $7b
    nop                                           ; $76bf: $00
    jr nz, jr_0b7_76c2                            ; $76c0: $20 $00

jr_0b7_76c2:
    nop                                           ; $76c2: $00

jr_0b7_76c3:
    add h                                         ; $76c3: $84
    ld c, l                                       ; $76c4: $4d
    ld b, a                                       ; $76c5: $47
    ld l, $88                                     ; $76c6: $2e $88
    ld [hl-], a                                   ; $76c8: $32
    nop                                           ; $76c9: $00

jr_0b7_76ca:
    nop                                           ; $76ca: $00
    rst $38                                       ; $76cb: $ff
    ld a, a                                       ; $76cc: $7f
    adc b                                         ; $76cd: $88
    ld [hl-], a                                   ; $76ce: $32
    nop                                           ; $76cf: $00

jr_0b7_76d0:
    jr nz, jr_0b7_76d2                            ; $76d0: $20 $00

jr_0b7_76d2:
    nop                                           ; $76d2: $00
    rst $38                                       ; $76d3: $ff
    ld a, a                                       ; $76d4: $7f
    adc b                                         ; $76d5: $88
    ld [hl-], a                                   ; $76d6: $32
    nop                                           ; $76d7: $00

jr_0b7_76d8:
    jr nz, jr_0b7_76da                            ; $76d8: $20 $00

jr_0b7_76da:
    nop                                           ; $76da: $00
    rst $38                                       ; $76db: $ff
    ld a, a                                       ; $76dc: $7f
    nop                                           ; $76dd: $00
    jr nz, jr_0b7_76e0                            ; $76de: $20 $00

jr_0b7_76e0:
    jr nz, jr_0b7_76e2                            ; $76e0: $20 $00

jr_0b7_76e2:
    jr nz, @+$01                                  ; $76e2: $20 $ff

    ld a, a                                       ; $76e4: $7f
    nop                                           ; $76e5: $00
    jr nz, jr_0b7_76e8                            ; $76e6: $20 $00

jr_0b7_76e8:
    jr nz, jr_0b7_76ea                            ; $76e8: $20 $00

jr_0b7_76ea:
    jr nz, jr_0b7_7670                            ; $76ea: $20 $84

    ld c, l                                       ; $76ec: $4d
    ld b, a                                       ; $76ed: $47
    ld l, $88                                     ; $76ee: $2e $88
    ld [hl-], a                                   ; $76f0: $32
    nop                                           ; $76f1: $00
    nop                                           ; $76f2: $00
    rst $38                                       ; $76f3: $ff
    ld a, a                                       ; $76f4: $7f
    nop                                           ; $76f5: $00
    jr nz, jr_0b7_7680                            ; $76f6: $20 $88

    ld [hl-], a                                   ; $76f8: $32
    nop                                           ; $76f9: $00
    nop                                           ; $76fa: $00
    rst $38                                       ; $76fb: $ff
    ld a, a                                       ; $76fc: $7f
    nop                                           ; $76fd: $00
    jr nz, jr_0b7_7688                            ; $76fe: $20 $88

    ld [hl-], a                                   ; $7700: $32
    nop                                           ; $7701: $00
    nop                                           ; $7702: $00
    nop                                           ; $7703: $00
    jr nz, jr_0b7_7706                            ; $7704: $20 $00

jr_0b7_7706:
    jr nz, jr_0b7_7708                            ; $7706: $20 $00

jr_0b7_7708:
    jr nz, jr_0b7_770a                            ; $7708: $20 $00

jr_0b7_770a:
    nop                                           ; $770a: $00
    nop                                           ; $770b: $00
    jr nz, jr_0b7_770e                            ; $770c: $20 $00

jr_0b7_770e:
    jr nz, jr_0b7_7710                            ; $770e: $20 $00

jr_0b7_7710:
    jr nz, jr_0b7_7712                            ; $7710: $20 $00

jr_0b7_7712:
    nop                                           ; $7712: $00
    nop                                           ; $7713: $00
    jr nz, jr_0b7_7716                            ; $7714: $20 $00

jr_0b7_7716:
    jr nz, jr_0b7_7718                            ; $7716: $20 $00

jr_0b7_7718:
    jr nz, jr_0b7_771a                            ; $7718: $20 $00

jr_0b7_771a:
    jr nz, jr_0b7_771c                            ; $771a: $20 $00

jr_0b7_771c:
    jr nz, jr_0b7_771e                            ; $771c: $20 $00

jr_0b7_771e:
    jr nz, jr_0b7_7720                            ; $771e: $20 $00

jr_0b7_7720:
    jr nz, jr_0b7_7722                            ; $7720: $20 $00

jr_0b7_7722:
    jr nz, jr_0b7_7745                            ; $7722: $20 $21

    inc l                                         ; $7724: $2c
    nop                                           ; $7725: $00
    inc h                                         ; $7726: $24
    ld c, b                                       ; $7727: $48
    ld b, l                                       ; $7728: $45
    nop                                           ; $7729: $00
    jr nz, @+$65                                  ; $772a: $20 $63

    jr c, jr_0b7_7735                             ; $772c: $38 $07

    ld b, l                                       ; $772e: $45
    push bc                                       ; $772f: $c5
    ld b, b                                       ; $7730: $40
    nop                                           ; $7731: $00
    jr nz, jr_0b7_7754                            ; $7732: $20 $20

    inc l                                         ; $7734: $2c

jr_0b7_7735:
    nop                                           ; $7735: $00
    inc h                                         ; $7736: $24
    ld b, c                                       ; $7737: $41
    inc [hl]                                      ; $7738: $34
    nop                                           ; $7739: $00

jr_0b7_773a:
    jr nz, jr_0b7_76d0                            ; $773a: $20 $94

    ld [hl], d                                    ; $773c: $72
    sbc h                                         ; $773d: $9c
    ld a, e                                       ; $773e: $7b
    cp l                                          ; $773f: $bd
    ld a, e                                       ; $7740: $7b
    nop                                           ; $7741: $00
    jr nz, jr_0b7_76d8                            ; $7742: $20 $94

    ld [hl], d                                    ; $7744: $72

jr_0b7_7745:
    sbc h                                         ; $7745: $9c
    ld a, e                                       ; $7746: $7b
    cp l                                          ; $7747: $bd
    ld a, e                                       ; $7748: $7b
    nop                                           ; $7749: $00
    jr nz, jr_0b7_76e0                            ; $774a: $20 $94

    ld [hl], d                                    ; $774c: $72
    sbc h                                         ; $774d: $9c
    ld a, e                                       ; $774e: $7b
    cp l                                          ; $774f: $bd
    ld a, e                                       ; $7750: $7b
    nop                                           ; $7751: $00
    jr nz, jr_0b7_76e8                            ; $7752: $20 $94

jr_0b7_7754:
    ld [hl], d                                    ; $7754: $72
    sbc h                                         ; $7755: $9c
    ld a, e                                       ; $7756: $7b
    cp l                                          ; $7757: $bd
    ld a, e                                       ; $7758: $7b
    nop                                           ; $7759: $00
    jr nz, jr_0b7_779d                            ; $775a: $20 $41

    inc [hl]                                      ; $775c: $34
    nop                                           ; $775d: $00
    jr z, @-$7b                                   ; $775e: $28 $83

    ld b, b                                       ; $7760: $40
    nop                                           ; $7761: $00
    nop                                           ; $7762: $00
    jr z, @+$53                                   ; $7763: $28 $51

    xor $61                                       ; $7765: $ee $61
    ld [hl], c                                    ; $7767: $71
    ld h, [hl]                                    ; $7768: $66
    nop                                           ; $7769: $00
    inc h                                         ; $776a: $24
    add e                                         ; $776b: $83
    ld b, h                                       ; $776c: $44
    jr z, jr_0b7_77c8                             ; $776d: $28 $59

    ld hl, $0034                                  ; $776f: $21 $34 $00
    nop                                           ; $7772: $00
    ld l, d                                       ; $7773: $6a
    ld c, l                                       ; $7774: $4d
    sub h                                         ; $7775: $94
    ld [hl], d                                    ; $7776: $72
    xor h                                         ; $7777: $ac
    ld d, l                                       ; $7778: $55
    nop                                           ; $7779: $00
    jr nz, jr_0b7_7782                            ; $777a: $20 $06

    dec a                                         ; $777c: $3d
    call $ac59                                    ; $777d: $cd $59 $ac
    ld d, l                                       ; $7780: $55
    nop                                           ; $7781: $00

jr_0b7_7782:
    jr nz, jr_0b7_778a                            ; $7782: $20 $06

    dec a                                         ; $7784: $3d
    call $ac59                                    ; $7785: $cd $59 $ac
    ld d, l                                       ; $7788: $55
    nop                                           ; $7789: $00

jr_0b7_778a:
    jr nz, jr_0b7_7792                            ; $778a: $20 $06

    dec a                                         ; $778c: $3d
    call $ac59                                    ; $778d: $cd $59 $ac
    ld d, l                                       ; $7790: $55
    nop                                           ; $7791: $00

jr_0b7_7792:
    jr nz, jr_0b7_77d5                            ; $7792: $20 $41

    jr c, jr_0b7_773a                             ; $7794: $38 $a4

    ld b, h                                       ; $7796: $44
    jr nz, jr_0b7_77c5                            ; $7797: $20 $2c

    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    ld l, c                                       ; $779b: $69
    ld h, c                                       ; $779c: $61

jr_0b7_779d:
    or h                                          ; $779d: $b4
    ld l, [hl]                                    ; $779e: $6e
    and l                                         ; $779f: $a5
    inc l                                         ; $77a0: $2c
    nop                                           ; $77a1: $00
    nop                                           ; $77a2: $00
    xor h                                         ; $77a3: $ac
    ld e, l                                       ; $77a4: $5d

jr_0b7_77a5:
    ld a, b                                       ; $77a5: $78
    ld [hl], a                                    ; $77a6: $77
    add e                                         ; $77a7: $83
    ld b, b                                       ; $77a8: $40
    nop                                           ; $77a9: $00
    nop                                           ; $77aa: $00
    daa                                           ; $77ab: $27
    ld b, c                                       ; $77ac: $41

jr_0b7_77ad:
    xor h                                         ; $77ad: $ac
    ld d, l                                       ; $77ae: $55
    ld d, d                                       ; $77af: $52
    ld d, [hl]                                    ; $77b0: $56
    nop                                           ; $77b1: $00
    inc h                                         ; $77b2: $24
    ld c, b                                       ; $77b3: $48
    ld b, c                                       ; $77b4: $41
    xor $51                                       ; $77b5: $ee $51
    push hl                                       ; $77b7: $e5
    jr c, jr_0b7_77ba                             ; $77b8: $38 $00

jr_0b7_77ba:
    jr nz, jr_0b7_77bc                            ; $77ba: $20 $00

jr_0b7_77bc:
    inc h                                         ; $77bc: $24
    nop                                           ; $77bd: $00
    jr z, jr_0b7_77a5                             ; $77be: $28 $e5

    jr c, jr_0b7_77c2                             ; $77c0: $38 $00

jr_0b7_77c2:
    jr nz, jr_0b7_77c4                            ; $77c2: $20 $00

jr_0b7_77c4:
    inc h                                         ; $77c4: $24

jr_0b7_77c5:
    nop                                           ; $77c5: $00
    jr z, jr_0b7_77ad                             ; $77c6: $28 $e5

jr_0b7_77c8:
    jr c, jr_0b7_77ca                             ; $77c8: $38 $00

jr_0b7_77ca:
    jr nz, jr_0b7_780d                            ; $77ca: $20 $41

    inc [hl]                                      ; $77cc: $34
    jr nz, @+$2e                                  ; $77cd: $20 $2c

    ld h, d                                       ; $77cf: $62
    inc a                                         ; $77d0: $3c
    ld hl, $4910                                  ; $77d1: $21 $10 $49
    ld d, c                                       ; $77d4: $51

jr_0b7_77d5:
    scf                                           ; $77d5: $37
    ld [hl], a                                    ; $77d6: $77
    xor e                                         ; $77d7: $ab

jr_0b7_77d8:
    ld [hl], c                                    ; $77d8: $71
    nop                                           ; $77d9: $00
    inc b                                         ; $77da: $04
    and $44                                       ; $77db: $e6 $44
    ld d, a                                       ; $77dd: $57
    ld a, e                                       ; $77de: $7b
    adc e                                         ; $77df: $8b
    ld h, c                                       ; $77e0: $61
    ld b, c                                       ; $77e1: $41
    jr c, jr_0b7_77ca                             ; $77e2: $38 $e6

    ld c, b                                       ; $77e4: $48
    jr z, jr_0b7_783c                             ; $77e5: $28 $55

    jr z, jr_0b7_7832                             ; $77e7: $28 $49

    nop                                           ; $77e9: $00
    ld [$4dab], sp                                ; $77ea: $08 $ab $4d
    sub e                                         ; $77ed: $93
    ld h, d                                       ; $77ee: $62
    ld hl, $0030                                  ; $77ef: $21 $30 $00
    jr nz, jr_0b7_7814                            ; $77f2: $20 $20

    inc l                                         ; $77f4: $2c
    ld b, c                                       ; $77f5: $41
    inc [hl]                                      ; $77f6: $34
    nop                                           ; $77f7: $00
    inc h                                         ; $77f8: $24
    nop                                           ; $77f9: $00
    jr nz, @+$22                                  ; $77fa: $20 $20

    inc l                                         ; $77fc: $2c
    ld b, c                                       ; $77fd: $41
    inc [hl]                                      ; $77fe: $34
    nop                                           ; $77ff: $00
    inc h                                         ; $7800: $24
    nop                                           ; $7801: $00
    jr nz, jr_0b7_7825                            ; $7802: $20 $21

    inc [hl]                                      ; $7804: $34
    nop                                           ; $7805: $00
    jr z, jr_0b7_7849                             ; $7806: $28 $41

    inc a                                         ; $7808: $3c
    nop                                           ; $7809: $00
    ld [$662f], sp                                ; $780a: $08 $2f $66

jr_0b7_780d:
    push bc                                       ; $780d: $c5
    ld b, h                                       ; $780e: $44

jr_0b7_780f:
    ld e, c                                       ; $780f: $59
    ld [hl], a                                    ; $7810: $77
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    adc d                                         ; $7813: $8a

jr_0b7_7814:
    ld b, l                                       ; $7814: $45
    ld a, b                                       ; $7815: $78
    ld [hl], e                                    ; $7816: $73
    adc e                                         ; $7817: $8b
    ld l, l                                       ; $7818: $6d
    nop                                           ; $7819: $00
    nop                                           ; $781a: $00
    call nc, $dc6e                                ; $781b: $d4 $6e $dc
    ld a, a                                       ; $781e: $7f
    ld [hl], $7b                                  ; $781f: $36 $7b
    and l                                         ; $7821: $a5
    jr nz, jr_0b7_77d8                            ; $7822: $20 $b4

    ld l, [hl]                                    ; $7824: $6e

jr_0b7_7825:
    sbc d                                         ; $7825: $9a
    ld a, e                                       ; $7826: $7b
    ld l, d                                       ; $7827: $6a
    ld sp, $2400                                  ; $7828: $31 $00 $24
    ld [hl], d                                    ; $782b: $72
    ld h, d                                       ; $782c: $62
    ld hl, $412c                                  ; $782d: $21 $2c $41
    jr c, jr_0b7_7832                             ; $7830: $38 $00

jr_0b7_7832:
    jr nz, jr_0b7_78a6                            ; $7832: $20 $72

    ld h, d                                       ; $7834: $62
    ld hl, $412c                                  ; $7835: $21 $2c $41
    jr c, jr_0b7_783a                             ; $7838: $38 $00

jr_0b7_783a:
    jr nz, jr_0b7_785d                            ; $783a: $20 $21

jr_0b7_783c:
    inc [hl]                                      ; $783c: $34
    ld h, d                                       ; $783d: $62
    ld c, b                                       ; $783e: $48
    ld b, c                                       ; $783f: $41
    inc a                                         ; $7840: $3c
    nop                                           ; $7841: $00
    ld [$6251], sp                                ; $7842: $08 $51 $62
    and h                                         ; $7845: $a4
    ld c, h                                       ; $7846: $4c
    jr c, jr_0b7_78bc                             ; $7847: $38 $73

jr_0b7_7849:
    nop                                           ; $7849: $00
    inc b                                         ; $784a: $04
    and $40                                       ; $784b: $e6 $40
    add h                                         ; $784d: $84
    inc l                                         ; $784e: $2c
    ld l, d                                       ; $784f: $6a
    ld l, c                                       ; $7850: $69
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    adc d                                         ; $7853: $8a
    ld l, c                                       ; $7854: $69
    sub c                                         ; $7855: $91
    ld h, d                                       ; $7856: $62
    jp nc, Jump_000_007a                          ; $7857: $d2 $7a $00

    nop                                           ; $785a: $00
    xor e                                         ; $785b: $ab
    dec [hl]                                      ; $785c: $35

jr_0b7_785d:
    or $76                                        ; $785d: $f6 $76
    ld l, e                                       ; $785f: $6b
    ld d, l                                       ; $7860: $55
    ld b, c                                       ; $7861: $41
    inc [hl]                                      ; $7862: $34
    rrca                                          ; $7863: $0f
    ld d, [hl]                                    ; $7864: $56
    scf                                           ; $7865: $37
    ld [hl], e                                    ; $7866: $73
    sub e                                         ; $7867: $93
    ld h, [hl]                                    ; $7868: $66
    nop                                           ; $7869: $00
    jr nz, jr_0b7_780f                            ; $786a: $20 $a3

    ld c, h                                       ; $786c: $4c
    ld h, d                                       ; $786d: $62
    inc l                                         ; $786e: $2c
    push hl                                       ; $786f: $e5
    ld e, b                                       ; $7870: $58

jr_0b7_7871:
    nop                                           ; $7871: $00
    jr nz, @+$43                                  ; $7872: $20 $41

    ld b, b                                       ; $7874: $40
    and h                                         ; $7875: $a4
    ld d, h                                       ; $7876: $54
    jr nz, jr_0b7_78a9                            ; $7877: $20 $30

    jr nz, jr_0b7_788b                            ; $7879: $20 $10

    ld c, $5e                                     ; $787b: $0e $5e
    rla                                           ; $787d: $17
    ld l, a                                       ; $787e: $6f
    push hl                                       ; $787f: $e5
    ld e, b                                       ; $7880: $58
    nop                                           ; $7881: $00
    nop                                           ; $7882: $00
    push bc                                       ; $7883: $c5
    inc [hl]                                      ; $7884: $34
    ld c, b                                       ; $7885: $48
    ld d, c                                       ; $7886: $51
    ld b, c                                       ; $7887: $41
    inc d                                         ; $7888: $14
    nop                                           ; $7889: $00
    nop                                           ; $788a: $00

jr_0b7_788b:
    and a                                         ; $788b: $a7
    ld h, h                                       ; $788c: $64
    call z, $c341                                 ; $788d: $cc $41 $c3
    inc e                                         ; $7890: $1c
    nop                                           ; $7891: $00
    inc c                                         ; $7892: $0c
    call nz, Call_000_385c                        ; $7893: $c4 $5c $38
    ld a, a                                       ; $7896: $7f
    adc e                                         ; $7897: $8b
    ld [hl], c                                    ; $7898: $71
    rlca                                          ; $7899: $07
    add hl, hl                                    ; $789a: $29
    ld [hl], d                                    ; $789b: $72
    ld h, [hl]                                    ; $789c: $66
    ld e, c                                       ; $789d: $59
    ld [hl], a                                    ; $789e: $77
    push hl                                       ; $789f: $e5
    ld d, h                                       ; $78a0: $54
    nop                                           ; $78a1: $00
    jr nz, jr_0b7_78cc                            ; $78a2: $20 $28

    ld c, l                                       ; $78a4: $4d
    db $ed                                        ; $78a5: $ed

jr_0b7_78a6:
    ld [hl], c                                    ; $78a6: $71
    add h                                         ; $78a7: $84
    inc l                                         ; $78a8: $2c

jr_0b7_78a9:
    nop                                           ; $78a9: $00
    jr nz, jr_0b7_7871                            ; $78aa: $20 $c5

    ld d, h                                       ; $78ac: $54
    ld b, b                                       ; $78ad: $40
    ld b, b                                       ; $78ae: $40
    adc d                                         ; $78af: $8a
    ld e, l                                       ; $78b0: $5d
    nop                                           ; $78b1: $00
    nop                                           ; $78b2: $00
    call z, $bb39                                 ; $78b3: $cc $39 $bb
    ld a, a                                       ; $78b6: $7f
    ld d, b                                       ; $78b7: $50
    ld l, [hl]                                    ; $78b8: $6e
    nop                                           ; $78b9: $00
    nop                                           ; $78ba: $00
    inc d                                         ; $78bb: $14

jr_0b7_78bc:
    ld h, a                                       ; $78bc: $67
    push hl                                       ; $78bd: $e5
    inc [hl]                                      ; $78be: $34
    nop                                           ; $78bf: $00
    inc d                                         ; $78c0: $14
    nop                                           ; $78c1: $00
    nop                                           ; $78c2: $00
    xor d                                         ; $78c3: $aa
    ld e, l                                       ; $78c4: $5d
    inc h                                         ; $78c5: $24
    ld b, h                                       ; $78c6: $44
    cp b                                          ; $78c7: $b8
    ld a, a                                       ; $78c8: $7f
    nop                                           ; $78c9: $00
    nop                                           ; $78ca: $00
    add h                                         ; $78cb: $84

jr_0b7_78cc:
    ld c, b                                       ; $78cc: $48
    add d                                         ; $78cd: $82
    ld [hl], b                                    ; $78ce: $70
    inc hl                                        ; $78cf: $23
    jr nz, jr_0b7_78d2                            ; $78d0: $20 $00

jr_0b7_78d2:
    nop                                           ; $78d2: $00
    jr nc, @+$5c                                  ; $78d3: $30 $5a

    ld [hl], $77                                  ; $78d5: $36 $77
    push bc                                       ; $78d7: $c5
    jr nz, jr_0b7_78da                            ; $78d8: $20 $00

jr_0b7_78da:
    nop                                           ; $78da: $00
    ld l, d                                       ; $78db: $6a
    ld b, c                                       ; $78dc: $41
    nop                                           ; $78dd: $00
    jr nz, @+$51                                  ; $78de: $20 $4f

    ld h, [hl]                                    ; $78e0: $66
    nop                                           ; $78e1: $00
    nop                                           ; $78e2: $00
    rlca                                          ; $78e3: $07
    ld d, c                                       ; $78e4: $51
    nop                                           ; $78e5: $00
    inc l                                         ; $78e6: $2c
    rrca                                          ; $78e7: $0f
    ld [hl], $00                                  ; $78e8: $36 $00
    inc b                                         ; $78ea: $04
    db $dd                                        ; $78eb: $dd
    ld a, a                                       ; $78ec: $7f
    add d                                         ; $78ed: $82
    ld e, b                                       ; $78ee: $58
    rrca                                          ; $78ef: $0f
    ld [hl], $00                                  ; $78f0: $36 $00
    ld [$5548], sp                                ; $78f2: $08 $48 $55
    sub d                                         ; $78f5: $92
    ld l, d                                       ; $78f6: $6a
    cp h                                          ; $78f7: $bc
    ld a, a                                       ; $78f8: $7f
    nop                                           ; $78f9: $00
    inc b                                         ; $78fa: $04
    ld b, a                                       ; $78fb: $47
    add hl, sp                                    ; $78fc: $39
    ld sp, hl                                     ; $78fd: $f9
    ld a, a                                       ; $78fe: $7f
    ld l, d                                       ; $78ff: $6a
    ld l, l                                       ; $7900: $6d
    nop                                           ; $7901: $00
    nop                                           ; $7902: $00
    ld b, c                                       ; $7903: $41
    ld d, b                                       ; $7904: $50
    ld b, c                                       ; $7905: $41
    inc l                                         ; $7906: $2c
    dec b                                         ; $7907: $05
    ld h, c                                       ; $7908: $61
    ld h, d                                       ; $7909: $62
    db $10                                        ; $790a: $10
    ld l, c                                       ; $790b: $69
    ld [hl], c                                    ; $790c: $71
    dec d                                         ; $790d: $15
    ld [hl], a                                    ; $790e: $77
    jr nc, jr_0b7_7957                            ; $790f: $30 $46

    nop                                           ; $7911: $00
    inc e                                         ; $7912: $1c
    adc d                                         ; $7913: $8a
    ld c, l                                       ; $7914: $4d
    rst $30                                       ; $7915: $f7
    ld h, d                                       ; $7916: $62
    add h                                         ; $7917: $84
    inc [hl]                                      ; $7918: $34
    nop                                           ; $7919: $00
    nop                                           ; $791a: $00
    call $dd61                                    ; $791b: $cd $61 $dd
    ld a, a                                       ; $791e: $7f
    nop                                           ; $791f: $00
    inc h                                         ; $7920: $24
    nop                                           ; $7921: $00
    nop                                           ; $7922: $00
    db $dd                                        ; $7923: $dd
    ld a, a                                       ; $7924: $7f
    add d                                         ; $7925: $82
    ld c, b                                       ; $7926: $48
    rrca                                          ; $7927: $0f
    ld [hl], $00                                  ; $7928: $36 $00
    nop                                           ; $792a: $00
    db $eb                                        ; $792b: $eb
    ld [hl], c                                    ; $792c: $71
    call c, $ee7f                                 ; $792d: $dc $7f $ee
    ld b, c                                       ; $7930: $41
    nop                                           ; $7931: $00
    nop                                           ; $7932: $00
    ld l, c                                       ; $7933: $69
    ld [hl], c                                    ; $7934: $71
    cp e                                          ; $7935: $bb
    ld a, e                                       ; $7936: $7b
    dec h                                         ; $7937: $25
    dec a                                         ; $7938: $3d
    nop                                           ; $7939: $00
    db $10                                        ; $793a: $10
    dec b                                         ; $793b: $05
    ld a, l                                       ; $793c: $7d
    dec [hl]                                      ; $793d: $35
    ld a, e                                       ; $793e: $7b
    db $ed                                        ; $793f: $ed
    dec a                                         ; $7940: $3d
    nop                                           ; $7941: $00
    nop                                           ; $7942: $00
    xor e                                         ; $7943: $ab
    ld [hl], c                                    ; $7944: $71
    ld a, b                                       ; $7945: $78
    ld [hl], a                                    ; $7946: $77
    add $48                                       ; $7947: $c6 $48
    nop                                           ; $7949: $00
    inc e                                         ; $794a: $1c
    ld l, d                                       ; $794b: $6a
    ld c, c                                       ; $794c: $49
    ld e, d                                       ; $794d: $5a
    ld l, e                                       ; $794e: $6b
    db $10                                        ; $794f: $10
    ld h, d                                       ; $7950: $62
    nop                                           ; $7951: $00
    inc c                                         ; $7952: $0c
    xor $61                                       ; $7953: $ee $61
    jr c, jr_0b7_79ca                             ; $7955: $38 $73

jr_0b7_7957:
    and $40                                       ; $7957: $e6 $40
    nop                                           ; $7959: $00
    nop                                           ; $795a: $00
    db $ed                                        ; $795b: $ed
    ld e, c                                       ; $795c: $59
    db $dd                                        ; $795d: $dd
    ld a, a                                       ; $795e: $7f
    add d                                         ; $795f: $82
    ld h, b                                       ; $7960: $60
    ld hl, $2f04                                  ; $7961: $21 $04 $2f
    ld c, d                                       ; $7964: $4a
    ld h, $41                                     ; $7965: $26 $41
    call c, $007f                                 ; $7967: $dc $7f $00
    nop                                           ; $796a: $00
    db $fd                                        ; $796b: $fd
    ld a, a                                       ; $796c: $7f
    adc b                                         ; $796d: $88
    add hl, sp                                    ; $796e: $39
    inc c                                         ; $796f: $0c
    ld c, d                                       ; $7970: $4a
    jr nz, jr_0b7_7973                            ; $7971: $20 $00

jr_0b7_7973:
    add d                                         ; $7973: $82
    ld l, b                                       ; $7974: $68
    sub c                                         ; $7975: $91
    ld e, d                                       ; $7976: $5a
    ld l, d                                       ; $7977: $6a
    ld l, l                                       ; $7978: $6d
    nop                                           ; $7979: $00
    nop                                           ; $797a: $00
    rrca                                          ; $797b: $0f
    ld h, [hl]                                    ; $797c: $66
    and $44                                       ; $797d: $e6 $44
    db $dd                                        ; $797f: $dd
    ld a, e                                       ; $7980: $7b
    nop                                           ; $7981: $00
    inc e                                         ; $7982: $1c
    ld c, $62                                     ; $7983: $0e $62
    ld e, d                                       ; $7985: $5a
    ld [hl], e                                    ; $7986: $73
    jr z, @+$47                                   ; $7987: $28 $45

    ld hl, $1014                                  ; $7989: $21 $14 $10
    ld l, d                                       ; $798c: $6a
    adc d                                         ; $798d: $8a
    ld d, c                                       ; $798e: $51
    ld a, d                                       ; $798f: $7a
    ld [hl], a                                    ; $7990: $77
    nop                                           ; $7991: $00
    nop                                           ; $7992: $00
    sbc c                                         ; $7993: $99
    ld a, a                                       ; $7994: $7f
    and e                                         ; $7995: $a3
    ld d, h                                       ; $7996: $54
    db $ec                                        ; $7997: $ec
    ld d, l                                       ; $7998: $55
    nop                                           ; $7999: $00
    nop                                           ; $799a: $00
    ld a, e                                       ; $799b: $7b
    ld [hl], e                                    ; $799c: $73
    rlca                                          ; $799d: $07
    dec e                                         ; $799e: $1d
    ld b, l                                       ; $799f: $45
    dec a                                         ; $79a0: $3d
    jr nz, @+$0a                                  ; $79a1: $20 $08

    xor c                                         ; $79a3: $a9
    ld d, l                                       ; $79a4: $55
    sbc h                                         ; $79a5: $9c
    ld [hl], a                                    ; $79a6: $77
    or d                                          ; $79a7: $b2
    ld d, [hl]                                    ; $79a8: $56
    nop                                           ; $79a9: $00
    ld [$4845], sp                                ; $79aa: $08 $45 $48
    ld h, l                                       ; $79ad: $65
    ld l, h                                       ; $79ae: $6c
    ld c, c                                       ; $79af: $49
    ld l, c                                       ; $79b0: $69
    jr nz, jr_0b7_79bf                            ; $79b1: $20 $0c

    ld l, e                                       ; $79b3: $6b
    dec a                                         ; $79b4: $3d
    sbc e                                         ; $79b5: $9b
    ld [hl], e                                    ; $79b6: $73
    ld c, b                                       ; $79b7: $48
    ld l, l                                       ; $79b8: $6d
    nop                                           ; $79b9: $00
    inc e                                         ; $79ba: $1c
    ld c, b                                       ; $79bb: $48
    ld d, c                                       ; $79bc: $51
    and $38                                       ; $79bd: $e6 $38

jr_0b7_79bf:
    or h                                          ; $79bf: $b4
    ld [hl], d                                    ; $79c0: $72
    nop                                           ; $79c1: $00
    db $10                                        ; $79c2: $10
    ld d, d                                       ; $79c3: $52
    ld h, [hl]                                    ; $79c4: $66
    and $5c                                       ; $79c5: $e6 $5c
    db $dd                                        ; $79c7: $dd
    ld a, a                                       ; $79c8: $7f
    nop                                           ; $79c9: $00

jr_0b7_79ca:
    nop                                           ; $79ca: $00
    db $f4                                        ; $79cb: $f4
    ld [hl], d                                    ; $79cc: $72
    call nz, $dc58                                ; $79cd: $c4 $58 $dc
    ld a, a                                       ; $79d0: $7f
    jr nz, jr_0b7_79e3                            ; $79d1: $20 $10

    adc a                                         ; $79d3: $8f
    ld h, [hl]                                    ; $79d4: $66
    xor b                                         ; $79d5: $a8
    ld b, c                                       ; $79d6: $41
    ei                                            ; $79d7: $fb
    ld a, a                                       ; $79d8: $7f
    ld hl, $2d04                                  ; $79d9: $21 $04 $2d
    ld d, d                                       ; $79dc: $52
    cp c                                          ; $79dd: $b9
    ld a, e                                       ; $79de: $7b
    daa                                           ; $79df: $27
    dec l                                         ; $79e0: $2d
    nop                                           ; $79e1: $00
    nop                                           ; $79e2: $00

jr_0b7_79e3:
    dec h                                         ; $79e3: $25
    ld c, b                                       ; $79e4: $48
    jr z, jr_0b7_7a50                             ; $79e5: $28 $69

    ld [bc], a                                    ; $79e7: $02
    jr nz, jr_0b7_79ea                            ; $79e8: $20 $00

jr_0b7_79ea:
    nop                                           ; $79ea: $00
    jr z, jr_0b7_7a52                             ; $79eb: $28 $65

    ld e, d                                       ; $79ed: $5a
    ld l, e                                       ; $79ee: $6b
    db $ed                                        ; $79ef: $ed
    ld [hl], l                                    ; $79f0: $75
    nop                                           ; $79f1: $00
    inc e                                         ; $79f2: $1c
    xor h                                         ; $79f3: $ac
    ld d, c                                       ; $79f4: $51
    push bc                                       ; $79f5: $c5
    inc [hl]                                      ; $79f6: $34
    ld [hl], b                                    ; $79f7: $70
    halt                                          ; $79f8: $76
    nop                                           ; $79f9: $00
    db $10                                        ; $79fa: $10
    ld [hl-], a                                   ; $79fb: $32
    ld h, d                                       ; $79fc: $62
    ld c, b                                       ; $79fd: $48
    ld c, c                                       ; $79fe: $49
    db $dd                                        ; $79ff: $dd
    ld a, a                                       ; $7a00: $7f
    nop                                           ; $7a01: $00
    inc b                                         ; $7a02: $04
    sub d                                         ; $7a03: $92
    ld a, d                                       ; $7a04: $7a
    and e                                         ; $7a05: $a3
    ld e, b                                       ; $7a06: $58
    cp e                                          ; $7a07: $bb
    ld a, a                                       ; $7a08: $7f
    nop                                           ; $7a09: $00
    inc b                                         ; $7a0a: $04
    jp hl                                         ; $7a0b: $e9


    ld c, l                                       ; $7a0c: $4d
    ld d, [hl]                                    ; $7a0d: $56
    ld l, a                                       ; $7a0e: $6f
    db $e3                                        ; $7a0f: $e3
    inc h                                         ; $7a10: $24
    ld hl, $0904                                  ; $7a11: $21 $04 $09
    ld d, d                                       ; $7a14: $52
    ld [de], a                                    ; $7a15: $12
    ld [hl], a                                    ; $7a16: $77
    rst $10                                       ; $7a17: $d7
    ld a, a                                       ; $7a18: $7f
    nop                                           ; $7a19: $00
    nop                                           ; $7a1a: $00
    add hl, hl                                    ; $7a1b: $29
    ld h, c                                       ; $7a1c: $61
    dec c                                         ; $7a1d: $0d
    ld b, d                                       ; $7a1e: $42
    ld hl, $421c                                  ; $7a1f: $21 $1c $42
    ld [$75ee], sp                                ; $7a22: $08 $ee $75
    ld hl, sp+$5e                                 ; $7a25: $f8 $5e
    and h                                         ; $7a27: $a4
    ld b, b                                       ; $7a28: $40
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    daa                                           ; $7a2b: $27
    ld b, l                                       ; $7a2c: $45
    sub d                                         ; $7a2d: $92
    ld h, [hl]                                    ; $7a2e: $66
    nop                                           ; $7a2f: $00
    jr nz, jr_0b7_7a32                            ; $7a30: $20 $00

jr_0b7_7a32:
    inc d                                         ; $7a32: $14
    ld c, c                                       ; $7a33: $49
    ld c, c                                       ; $7a34: $49
    db $dd                                        ; $7a35: $dd
    ld a, a                                       ; $7a36: $7f
    rrca                                          ; $7a37: $0f
    ld c, d                                       ; $7a38: $4a
    nop                                           ; $7a39: $00
    ld [$68c4], sp                                ; $7a3a: $08 $c4 $68
    ld a, b                                       ; $7a3d: $78
    ld [hl], a                                    ; $7a3e: $77
    call z, $0059                                 ; $7a3f: $cc $59 $00
    nop                                           ; $7a42: $00
    ld h, c                                       ; $7a43: $61
    ld c, b                                       ; $7a44: $48
    adc b                                         ; $7a45: $88
    ld d, l                                       ; $7a46: $55
    push bc                                       ; $7a47: $c5
    inc [hl]                                      ; $7a48: $34
    ld bc, $c400                                  ; $7a49: $01 $00 $c4
    inc [hl]                                      ; $7a4c: $34
    jp z, $8261                                   ; $7a4d: $ca $61 $82

jr_0b7_7a50:
    inc e                                         ; $7a50: $1c
    nop                                           ; $7a51: $00

jr_0b7_7a52:
    nop                                           ; $7a52: $00
    ld b, [hl]                                    ; $7a53: $46
    ld c, c                                       ; $7a54: $49
    adc c                                         ; $7a55: $89
    ld h, l                                       ; $7a56: $65
    ld c, b                                       ; $7a57: $48
    ld d, b                                       ; $7a58: $50
    nop                                           ; $7a59: $00
    nop                                           ; $7a5a: $00
    db $ed                                        ; $7a5b: $ed
    ld [hl], l                                    ; $7a5c: $75
    ld hl, sp+$5e                                 ; $7a5d: $f8 $5e
    and l                                         ; $7a5f: $a5
    jr z, jr_0b7_7a62                             ; $7a60: $28 $00

jr_0b7_7a62:
    inc e                                         ; $7a62: $1c
    db $ed                                        ; $7a63: $ed
    ld d, c                                       ; $7a64: $51
    ld b, $41                                     ; $7a65: $06 $41
    push af                                       ; $7a67: $f5
    ld l, [hl]                                    ; $7a68: $6e
    nop                                           ; $7a69: $00
    inc e                                         ; $7a6a: $1c
    rlca                                          ; $7a6b: $07
    ld b, l                                       ; $7a6c: $45
    ld h, d                                       ; $7a6d: $62
    ld b, h                                       ; $7a6e: $44
    jr nc, jr_0b7_7acf                            ; $7a6f: $30 $5e

    nop                                           ; $7a71: $00
    nop                                           ; $7a72: $00
    call z, Call_0b7_425d                         ; $7a73: $cc $5d $42
    ld b, b                                       ; $7a76: $40
    dec d                                         ; $7a77: $15
    ld [hl], a                                    ; $7a78: $77
    nop                                           ; $7a79: $00
    nop                                           ; $7a7a: $00
    adc d                                         ; $7a7b: $8a
    ld d, l                                       ; $7a7c: $55
    call nc, $cc72                                ; $7a7d: $d4 $72 $cc
    ld [hl], l                                    ; $7a80: $75
    nop                                           ; $7a81: $00
    nop                                           ; $7a82: $00
    adc d                                         ; $7a83: $8a
    ld e, l                                       ; $7a84: $5d
    pop de                                        ; $7a85: $d1
    ld a, d                                       ; $7a86: $7a
    add e                                         ; $7a87: $83
    inc e                                         ; $7a88: $1c
    nop                                           ; $7a89: $00

jr_0b7_7a8a:
    nop                                           ; $7a8a: $00
    ld c, b                                       ; $7a8b: $48
    ld d, b                                       ; $7a8c: $50
    ld l, c                                       ; $7a8d: $69
    ld l, c                                       ; $7a8e: $69
    ld hl, $201c                                  ; $7a8f: $21 $1c $20
    inc d                                         ; $7a92: $14
    adc d                                         ; $7a93: $8a
    ld [hl], c                                    ; $7a94: $71
    ld e, d                                       ; $7a95: $5a
    ld l, e                                       ; $7a96: $6b
    rst $28                                       ; $7a97: $ef
    add hl, sp                                    ; $7a98: $39
    nop                                           ; $7a99: $00
    jr nz, jr_0b7_7a8a                            ; $7a9a: $20 $ee

    ld c, l                                       ; $7a9c: $4d
    push af                                       ; $7a9d: $f5

jr_0b7_7a9e:
    ld l, [hl]                                    ; $7a9e: $6e
    ld b, $45                                     ; $7a9f: $06 $45
    nop                                           ; $7aa1: $00
    jr @+$31                                      ; $7aa2: $18 $2f

    ld e, d                                       ; $7aa4: $5a
    ld b, $45                                     ; $7aa5: $06 $45
    scf                                           ; $7aa7: $37
    ld [hl], a                                    ; $7aa8: $77
    nop                                           ; $7aa9: $00
    nop                                           ; $7aaa: $00
    ld a, b                                       ; $7aab: $78
    ld a, e                                       ; $7aac: $7b
    db $eb                                        ; $7aad: $eb
    inc [hl]                                      ; $7aae: $34
    inc hl                                        ; $7aaf: $23
    inc d                                         ; $7ab0: $14
    nop                                           ; $7ab1: $00
    inc b                                         ; $7ab2: $04
    ld b, $75                                     ; $7ab3: $06 $75
    jr c, @+$7d                                   ; $7ab5: $38 $7b

    ld c, $7e                                     ; $7ab7: $0e $7e
    nop                                           ; $7ab9: $00
    nop                                           ; $7aba: $00
    db $ec                                        ; $7abb: $ec
    ld l, c                                       ; $7abc: $69
    or $7a                                        ; $7abd: $f6 $7a
    ld h, d                                       ; $7abf: $62
    jr z, jr_0b7_7ac2                             ; $7ac0: $28 $00

jr_0b7_7ac2:
    nop                                           ; $7ac2: $00
    adc e                                         ; $7ac3: $8b
    ld e, l                                       ; $7ac4: $5d
    rst $38                                       ; $7ac5: $ff
    ld a, a                                       ; $7ac6: $7f
    dec b                                         ; $7ac7: $05
    ld sp, $1020                                  ; $7ac8: $31 $20 $10
    add e                                         ; $7acb: $83
    ld e, h                                       ; $7acc: $5c
    ld e, d                                       ; $7acd: $5a

jr_0b7_7ace:
    ld l, e                                       ; $7ace: $6b

jr_0b7_7acf:
    ld l, d                                       ; $7acf: $6a
    ld a, c                                       ; $7ad0: $79
    nop                                           ; $7ad1: $00
    jr nz, @-$32                                  ; $7ad2: $20 $cc

    ld d, c                                       ; $7ad4: $51
    push af                                       ; $7ad5: $f5
    ld l, [hl]                                    ; $7ad6: $6e
    rlca                                          ; $7ad7: $07
    add hl, hl                                    ; $7ad8: $29
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    xor e                                         ; $7adb: $ab
    ld c, l                                       ; $7adc: $4d
    ld d, $6f                                     ; $7add: $16 $6f
    nop                                           ; $7adf: $00
    jr nz, jr_0b7_7ae2                            ; $7ae0: $20 $00

jr_0b7_7ae2:
    nop                                           ; $7ae2: $00
    xor $44                                       ; $7ae3: $ee $44
    ld e, h                                       ; $7ae5: $5c
    ld a, [hl]                                    ; $7ae6: $7e
    inc sp                                        ; $7ae7: $33
    ld l, l                                       ; $7ae8: $6d
    nop                                           ; $7ae9: $00
    nop                                           ; $7aea: $00
    ld [hl], c                                    ; $7aeb: $71
    ld d, c                                       ; $7aec: $51
    add $34                                       ; $7aed: $c6 $34
    sbc a                                         ; $7aef: $9f
    ld a, [hl]                                    ; $7af0: $7e
    nop                                           ; $7af1: $00
    nop                                           ; $7af2: $00
    xor a                                         ; $7af3: $af
    ld [hl], d                                    ; $7af4: $72
    add h                                         ; $7af5: $84
    inc a                                         ; $7af6: $3c
    ld a, d                                       ; $7af7: $7a
    ld a, e                                       ; $7af8: $7b

jr_0b7_7af9:
    nop                                           ; $7af9: $00
    nop                                           ; $7afa: $00
    ld l, d                                       ; $7afb: $6a
    ld l, l                                       ; $7afc: $6d
    sbc b                                         ; $7afd: $98
    ld a, e                                       ; $7afe: $7b
    ld c, c                                       ; $7aff: $49
    ld sp, $0000                                  ; $7b00: $31 $00 $00
    ld c, b                                       ; $7b03: $48
    ld a, l                                       ; $7b04: $7d
    ld e, d                                       ; $7b05: $5a
    ld l, e                                       ; $7b06: $6b
    jr nz, jr_0b7_7b49                            ; $7b07: $20 $40

    nop                                           ; $7b09: $00
    jr nz, jr_0b7_7af9                            ; $7b0a: $20 $ed

    ld e, c                                       ; $7b0c: $59
    and l                                         ; $7b0d: $a5
    inc [hl]                                      ; $7b0e: $34

jr_0b7_7b0f:
    or e                                          ; $7b0f: $b3
    ld h, [hl]                                    ; $7b10: $66
    nop                                           ; $7b11: $00
    jr jr_0b7_7a9e                                ; $7b12: $18 $8a

    ld c, c                                       ; $7b14: $49
    ld a, d                                       ; $7b15: $7a
    ld [hl], e                                    ; $7b16: $73
    ld [hl], d                                    ; $7b17: $72
    ld e, d                                       ; $7b18: $5a
    adc [hl]                                      ; $7b19: $8e
    ld e, h                                       ; $7b1a: $5c
    rst $38                                       ; $7b1b: $ff
    ld a, [hl]                                    ; $7b1c: $7e
    ld d, h                                       ; $7b1d: $54
    ld l, l                                       ; $7b1e: $6d
    or c                                          ; $7b1f: $b1
    ld l, b                                       ; $7b20: $68
    nop                                           ; $7b21: $00
    nop                                           ; $7b22: $00
    rrca                                          ; $7b23: $0f
    ld e, l                                       ; $7b24: $5d
    ld a, [hl]                                    ; $7b25: $7e
    ld a, [hl]                                    ; $7b26: $7e
    ld b, e                                       ; $7b27: $43
    jr nz, jr_0b7_7b2b                            ; $7b28: $20 $01

    inc b                                         ; $7b2a: $04

jr_0b7_7b2b:
    jr z, jr_0b7_7b9a                             ; $7b2b: $28 $6d

    inc b                                         ; $7b2d: $04
    inc [hl]                                      ; $7b2e: $34
    ld [hl], b                                    ; $7b2f: $70
    ld a, d                                       ; $7b30: $7a
    jr nz, jr_0b7_7b33                            ; $7b31: $20 $00

jr_0b7_7b33:
    dec hl                                        ; $7b33: $2b
    ld l, c                                       ; $7b34: $69

jr_0b7_7b35:
    or e                                          ; $7b35: $b3
    halt                                          ; $7b36: $76
    ld b, h                                       ; $7b37: $44
    inc h                                         ; $7b38: $24
    nop                                           ; $7b39: $00
    inc b                                         ; $7b3a: $04
    push de                                       ; $7b3b: $d5
    ld [hl], d                                    ; $7b3c: $72
    ld b, b                                       ; $7b3d: $40
    ld e, b                                       ; $7b3e: $58
    ld l, d                                       ; $7b3f: $6a
    add hl, hl                                    ; $7b40: $29
    nop                                           ; $7b41: $00
    jr nz, jr_0b7_7ace                            ; $7b42: $20 $8a

    ld c, c                                       ; $7b44: $49
    sub c                                         ; $7b45: $91
    ld h, [hl]                                    ; $7b46: $66
    add $34                                       ; $7b47: $c6 $34

jr_0b7_7b49:
    nop                                           ; $7b49: $00
    inc e                                         ; $7b4a: $1c
    xor h                                         ; $7b4b: $ac
    ld c, l                                       ; $7b4c: $4d
    or h                                          ; $7b4d: $b4
    ld h, d                                       ; $7b4e: $62
    sbc e                                         ; $7b4f: $9b
    ld [hl], a                                    ; $7b50: $77
    nop                                           ; $7b51: $00
    inc b                                         ; $7b52: $04
    ld c, d                                       ; $7b53: $4a
    ld b, h                                       ; $7b54: $44
    inc b                                         ; $7b55: $04
    jr nz, @-$4e                                  ; $7b56: $20 $b0

    ld h, h                                       ; $7b58: $64
    ld hl, $f110                                  ; $7b59: $21 $10 $f1
    ld l, b                                       ; $7b5c: $68
    ld a, h                                       ; $7b5d: $7c
    ld a, [hl]                                    ; $7b5e: $7e

jr_0b7_7b5f:
    ld b, h                                       ; $7b5f: $44
    ld d, b                                       ; $7b60: $50
    nop                                           ; $7b61: $00
    nop                                           ; $7b62: $00
    ld l, d                                       ; $7b63: $6a
    ld d, l                                       ; $7b64: $55
    ld b, d                                       ; $7b65: $42
    jr jr_0b7_7b35                                ; $7b66: $18 $cd

    ld [hl], l                                    ; $7b68: $75
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    ld l, c                                       ; $7b6b: $69
    ld d, h                                       ; $7b6c: $54
    ld [hl], d                                    ; $7b6d: $72
    ld d, [hl]                                    ; $7b6e: $56
    inc b                                         ; $7b6f: $04
    jr z, @+$23                                   ; $7b70: $28 $21

    inc b                                         ; $7b72: $04
    ld l, c                                       ; $7b73: $69
    ld l, c                                       ; $7b74: $69
    ld e, d                                       ; $7b75: $5a
    ld l, e                                       ; $7b76: $6b
    ld c, a                                       ; $7b77: $4f
    ld a, [hl]                                    ; $7b78: $7e
    nop                                           ; $7b79: $00
    jr nz, @+$09                                  ; $7b7a: $20 $07

    dec [hl]                                      ; $7b7c: $35
    or d                                          ; $7b7d: $b2
    halt                                          ; $7b7e: $76
    adc e                                         ; $7b7f: $8b
    ld c, l                                       ; $7b80: $4d
    nop                                           ; $7b81: $00
    jr nz, jr_0b7_7b0f                            ; $7b82: $20 $8b

    ld c, c                                       ; $7b84: $49
    push de                                       ; $7b85: $d5
    ld h, [hl]                                    ; $7b86: $66
    cpl                                           ; $7b87: $2f
    ld d, [hl]                                    ; $7b88: $56
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    ld [bc], a                                    ; $7b8b: $02
    inc c                                         ; $7b8c: $0c
    inc bc                                        ; $7b8d: $03
    inc d                                         ; $7b8e: $14
    nop                                           ; $7b8f: $00
    inc b                                         ; $7b90: $04
    ld bc, $8908                                  ; $7b91: $01 $08 $89
    ld e, h                                       ; $7b94: $5c
    add hl, de                                    ; $7b95: $19
    halt                                          ; $7b96: $76
    ld c, b                                       ; $7b97: $48
    inc l                                         ; $7b98: $2c
    nop                                           ; $7b99: $00

jr_0b7_7b9a:
    nop                                           ; $7b9a: $00
    and e                                         ; $7b9b: $a3
    ld d, b                                       ; $7b9c: $50
    cpl                                           ; $7b9d: $2f
    ld a, [hl]                                    ; $7b9e: $7e
    ld hl, $0028                                  ; $7b9f: $21 $28 $00
    ld [$7ffc], sp                                ; $7ba2: $08 $fc $7f
    ld [$0648], sp                                ; $7ba5: $08 $48 $06
    dec h                                         ; $7ba8: $25
    nop                                           ; $7ba9: $00
    nop                                           ; $7baa: $00
    call z, $e679                                 ; $7bab: $cc $79 $e6
    inc l                                         ; $7bae: $2c
    ld e, d                                       ; $7baf: $5a
    ld l, e                                       ; $7bb0: $6b
    nop                                           ; $7bb1: $00
    jr nz, jr_0b7_7b5f                            ; $7bb2: $20 $ab

    ld c, l                                       ; $7bb4: $4d
    rst $20                                       ; $7bb5: $e7
    inc l                                         ; $7bb6: $2c
    sub d                                         ; $7bb7: $92
    halt                                          ; $7bb8: $76
    nop                                           ; $7bb9: $00
    jr nz, jr_0b7_7c04                            ; $7bba: $20 $48

    ld b, c                                       ; $7bbc: $41
    cpl                                           ; $7bbd: $2f
    ld d, [hl]                                    ; $7bbe: $56
    adc e                                         ; $7bbf: $8b
    ld c, c                                       ; $7bc0: $49
    nop                                           ; $7bc1: $00
    nop                                           ; $7bc2: $00
    ld [hl], d                                    ; $7bc3: $72
    ld e, [hl]                                    ; $7bc4: $5e
    nop                                           ; $7bc5: $00
    inc c                                         ; $7bc6: $0c
    rst $30                                       ; $7bc7: $f7
    ld l, d                                       ; $7bc8: $6a
    nop                                           ; $7bc9: $00
    inc b                                         ; $7bca: $04
    ld sp, $2961                                  ; $7bcb: $31 $61 $29
    inc a                                         ; $7bce: $3c
    ld a, h                                       ; $7bcf: $7c
    ld a, [hl]                                    ; $7bd0: $7e
    nop                                           ; $7bd1: $00
    nop                                           ; $7bd2: $00
    add [hl]                                      ; $7bd3: $86
    ld h, h                                       ; $7bd4: $64
    call $217d                                    ; $7bd5: $cd $7d $21
    inc h                                         ; $7bd8: $24
    nop                                           ; $7bd9: $00
    inc b                                         ; $7bda: $04
    ld c, d                                       ; $7bdb: $4a
    ld e, [hl]                                    ; $7bdc: $5e
    ld h, a                                       ; $7bdd: $67
    inc [hl]                                      ; $7bde: $34
    db $db                                        ; $7bdf: $db
    ld a, a                                       ; $7be0: $7f
    nop                                           ; $7be1: $00
    inc b                                         ; $7be2: $04
    and $48                                       ; $7be3: $e6 $48
    sub e                                         ; $7be5: $93
    ld d, [hl]                                    ; $7be6: $56
    db $ed                                        ; $7be7: $ed
    ld a, l                                       ; $7be8: $7d
    nop                                           ; $7be9: $00
    inc e                                         ; $7bea: $1c
    ld l, c                                       ; $7beb: $69
    ld d, c                                       ; $7bec: $51
    rst $20                                       ; $7bed: $e7
    inc [hl]                                      ; $7bee: $34
    ld d, b                                       ; $7bef: $50
    halt                                          ; $7bf0: $76
    nop                                           ; $7bf1: $00
    jr nz, jr_0b7_7bfa                            ; $7bf2: $20 $06

    ld b, c                                       ; $7bf4: $41
    ld h, $41                                     ; $7bf5: $26 $41
    ld a, h                                       ; $7bf7: $7c
    ld a, [hl]                                    ; $7bf8: $7e
    nop                                           ; $7bf9: $00

jr_0b7_7bfa:
    ld [$3c41], sp                                ; $7bfa: $08 $41 $3c
    adc d                                         ; $7bfd: $8a
    ld c, c                                       ; $7bfe: $49
    jr nz, @+$22                                  ; $7bff: $20 $20

    nop                                           ; $7c01: $00
    nop                                           ; $7c02: $00
    and e                                         ; $7c03: $a3

jr_0b7_7c04:
    ld e, b                                       ; $7c04: $58
    ld a, e                                       ; $7c05: $7b
    ld a, [hl]                                    ; $7c06: $7e
    inc c                                         ; $7c07: $0c
    ld l, c                                       ; $7c08: $69
    ld bc, $4b0c                                  ; $7c09: $01 $0c $4b
    ld c, h                                       ; $7c0c: $4c
    ld b, a                                       ; $7c0d: $47
    ld [hl], c                                    ; $7c0e: $71
    jr c, jr_0b7_7c8b                             ; $7c0f: $38 $7a

    nop                                           ; $7c11: $00
    inc b                                         ; $7c12: $04
    ldh a, [$72]                                  ; $7c13: $f0 $72
    ld h, l                                       ; $7c15: $65
    inc h                                         ; $7c16: $24
    ld [$0044], sp                                ; $7c17: $08 $44 $00

jr_0b7_7c1a:
    nop                                           ; $7c1a: $00
    bit 2, l                                      ; $7c1b: $cb $55
    rst $38                                       ; $7c1d: $ff
    ld a, a                                       ; $7c1e: $7f
    rlca                                          ; $7c1f: $07
    ld hl, $2000                                  ; $7c20: $21 $00 $20
    ld b, $55                                     ; $7c23: $06 $55
    ld [hl], b                                    ; $7c25: $70
    ld a, d                                       ; $7c26: $7a
    and h                                         ; $7c27: $a4
    jr nz, jr_0b7_7c2a                            ; $7c28: $20 $00

jr_0b7_7c2a:
    jr nz, jr_0b7_7c1a                            ; $7c2a: $20 $ee

    ld e, l                                       ; $7c2c: $5d
    ld a, e                                       ; $7c2d: $7b
    ld a, [hl]                                    ; $7c2e: $7e
    inc c                                         ; $7c2f: $0c
    ld l, c                                       ; $7c30: $69
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    add e                                         ; $7c33: $83
    ld b, h                                       ; $7c34: $44
    adc d                                         ; $7c35: $8a
    ld c, l                                       ; $7c36: $4d
    jr nz, jr_0b7_7c61                            ; $7c37: $20 $28

    ld [bc], a                                    ; $7c39: $02
    inc c                                         ; $7c3a: $0c
    add hl, bc                                    ; $7c3b: $09
    ld h, c                                       ; $7c3c: $61
    db $ed                                        ; $7c3d: $ed
    ld [hl], l                                    ; $7c3e: $75
    ld d, e                                       ; $7c3f: $53
    ld a, [hl]                                    ; $7c40: $7e
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    ld l, c                                       ; $7c43: $69
    ld d, b                                       ; $7c44: $50
    cp c                                          ; $7c45: $b9
    ld a, l                                       ; $7c46: $7d

jr_0b7_7c47:
    ld b, c                                       ; $7c47: $41
    jr c, jr_0b7_7c4b                             ; $7c48: $38 $01

    inc c                                         ; $7c4a: $0c

jr_0b7_7c4b:
    rst $10                                       ; $7c4b: $d7
    ld a, a                                       ; $7c4c: $7f
    rlca                                          ; $7c4d: $07
    ld c, d                                       ; $7c4e: $4a
    add hl, bc                                    ; $7c4f: $09
    ld c, b                                       ; $7c50: $48
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    db $10                                        ; $7c53: $10
    ld b, [hl]                                    ; $7c54: $46
    inc [hl]                                      ; $7c55: $34
    ld [hl], a                                    ; $7c56: $77
    call nz, $002c                                ; $7c57: $c4 $2c $00
    jr nz, @-$39                                  ; $7c5a: $20 $c5

    ld c, h                                       ; $7c5c: $4c
    ld [hl], b                                    ; $7c5d: $70
    ld a, [hl]                                    ; $7c5e: $7e
    ld c, c                                       ; $7c5f: $49
    dec l                                         ; $7c60: $2d

jr_0b7_7c61:
    nop                                           ; $7c61: $00
    jr nz, jr_0b7_7c6d                            ; $7c62: $20 $09

    ld h, c                                       ; $7c64: $61
    db $ed                                        ; $7c65: $ed
    ld [hl], l                                    ; $7c66: $75
    ld d, e                                       ; $7c67: $53
    ld a, [hl]                                    ; $7c68: $7e
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    xor h                                         ; $7c6b: $ac
    ld d, l                                       ; $7c6c: $55

jr_0b7_7c6d:
    ld h, d                                       ; $7c6d: $62
    ld c, h                                       ; $7c6e: $4c
    sub h                                         ; $7c6f: $94

jr_0b7_7c70:
    ld l, [hl]                                    ; $7c70: $6e
    ld b, c                                       ; $7c71: $41
    ld [$69ab], sp                                ; $7c72: $08 $ab $69
    ld d, c                                       ; $7c75: $51
    halt                                          ; $7c76: $76
    rla                                           ; $7c77: $17
    ld a, a                                       ; $7c78: $7f
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00

jr_0b7_7c7b:
    ld [$3440], sp                                ; $7c7b: $08 $40 $34
    ld [hl], c                                    ; $7c7e: $71
    add hl, bc                                    ; $7c7f: $09
    ld c, h                                       ; $7c80: $4c
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    ld [hl], a                                    ; $7c83: $77
    ld [hl], e                                    ; $7c84: $73
    and l                                         ; $7c85: $a5
    inc h                                         ; $7c86: $24
    add hl, hl                                    ; $7c87: $29
    ld c, h                                       ; $7c88: $4c
    nop                                           ; $7c89: $00
    nop                                           ; $7c8a: $00

jr_0b7_7c8b:
    ld c, $5e                                     ; $7c8b: $0e $5e
    call c, $c37f                                 ; $7c8d: $dc $7f $c3
    jr z, jr_0b7_7cb3                             ; $7c90: $28 $21

    inc b                                         ; $7c92: $04
    push bc                                       ; $7c93: $c5
    ld b, h                                       ; $7c94: $44
    call z, Call_000_0061                         ; $7c95: $cc $61 $00
    jr nz, jr_0b7_7c9a                            ; $7c98: $20 $00

jr_0b7_7c9a:
    jr nz, jr_0b7_7c47                            ; $7c9a: $20 $ab

    ld l, c                                       ; $7c9c: $69
    ld d, c                                       ; $7c9d: $51
    halt                                          ; $7c9e: $76
    rla                                           ; $7c9f: $17
    ld a, a                                       ; $7ca0: $7f
    nop                                           ; $7ca1: $00
    ld [$72f7], sp                                ; $7ca2: $08 $f7 $72
    add d                                         ; $7ca5: $82
    ld e, h                                       ; $7ca6: $5c

jr_0b7_7ca7:
    rst $38                                       ; $7ca7: $ff
    ld a, a                                       ; $7ca8: $7f
    adc d                                         ; $7ca9: $8a
    ld l, l                                       ; $7caa: $6d
    cpl                                           ; $7cab: $2f
    halt                                          ; $7cac: $76
    or $7e                                        ; $7cad: $f6 $7e
    sub d                                         ; $7caf: $92
    ld a, d                                       ; $7cb0: $7a
    nop                                           ; $7cb1: $00
    inc b                                         ; $7cb2: $04

jr_0b7_7cb3:
    ld [$4f40], sp                                ; $7cb3: $08 $40 $4f
    ld a, d                                       ; $7cb6: $7a
    db $e4                                        ; $7cb7: $e4
    jr nz, jr_0b7_7cba                            ; $7cb8: $20 $00

jr_0b7_7cba:
    inc b                                         ; $7cba: $04
    add hl, bc                                    ; $7cbb: $09
    ld c, b                                       ; $7cbc: $48
    ld a, [hl+]                                   ; $7cbd: $2a
    add hl, hl                                    ; $7cbe: $29
    rrca                                          ; $7cbf: $0f
    ld b, d                                       ; $7cc0: $42
    ld hl, $7008                                  ; $7cc1: $21 $08 $70
    ld h, d                                       ; $7cc4: $62
    ld a, e                                       ; $7cc5: $7b
    ld [hl], a                                    ; $7cc6: $77
    ld c, c                                       ; $7cc7: $49
    ld b, l                                       ; $7cc8: $45
    nop                                           ; $7cc9: $00
    jr nz, jr_0b7_7c70                            ; $7cca: $20 $a4

    inc a                                         ; $7ccc: $3c
    ld b, d                                       ; $7ccd: $42
    jr jr_0b7_7c7b                                ; $7cce: $18 $ab

    ld d, l                                       ; $7cd0: $55
    nop                                           ; $7cd1: $00
    jr nz, @+$31                                  ; $7cd2: $20 $2f

    halt                                          ; $7cd4: $76
    or $7e                                        ; $7cd5: $f6 $7e
    sub d                                         ; $7cd7: $92
    ld a, d                                       ; $7cd8: $7a
    nop                                           ; $7cd9: $00
    nop                                           ; $7cda: $00
    sbc h                                         ; $7cdb: $9c
    ld [hl], a                                    ; $7cdc: $77
    and e                                         ; $7cdd: $a3
    ld h, b                                       ; $7cde: $60
    nop                                           ; $7cdf: $00
    jr nz, jr_0b7_7ce2                            ; $7ce0: $20 $00

jr_0b7_7ce2:
    nop                                           ; $7ce2: $00
    ld c, c                                       ; $7ce3: $49
    ld l, c                                       ; $7ce4: $69
    ld [hl], c                                    ; $7ce5: $71
    ld a, d                                       ; $7ce6: $7a
    xor $71                                       ; $7ce7: $ee $71
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    rrca                                          ; $7ceb: $0f
    ld h, d                                       ; $7cec: $62
    sbc h                                         ; $7ced: $9c
    ld a, e                                       ; $7cee: $7b
    or l                                          ; $7cef: $b5
    ld l, [hl]                                    ; $7cf0: $6e
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    push hl                                       ; $7cf3: $e5
    inc a                                         ; $7cf4: $3c
    rrca                                          ; $7cf5: $0f
    ld e, d                                       ; $7cf6: $5a
    ld c, c                                       ; $7cf7: $49
    ld c, c                                       ; $7cf8: $49
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    rst $30                                       ; $7cfb: $f7
    ld [hl], d                                    ; $7cfc: $72
    sbc $7b                                       ; $7cfd: $de $7b
    nop                                           ; $7cff: $00
    jr nz, jr_0b7_7d02                            ; $7d00: $20 $00

jr_0b7_7d02:
    jr nz, jr_0b7_7d25                            ; $7d02: $20 $21

    inc h                                         ; $7d04: $24
    sbc $7b                                       ; $7d05: $de $7b
    nop                                           ; $7d07: $00
    jr nz, jr_0b7_7d0a                            ; $7d08: $20 $00

jr_0b7_7d0a:
    jr nz, @+$4b                                  ; $7d0a: $20 $49

    ld l, c                                       ; $7d0c: $69
    ld [hl], c                                    ; $7d0d: $71
    ld a, d                                       ; $7d0e: $7a
    xor $71                                       ; $7d0f: $ee $71
    nop                                           ; $7d11: $00
    jr nz, jr_0b7_7ca7                            ; $7d12: $20 $93

    ld h, d                                       ; $7d14: $62
    sbc h                                         ; $7d15: $9c
    ld [hl], a                                    ; $7d16: $77
    ld l, c                                       ; $7d17: $69
    ld b, l                                       ; $7d18: $45
    push hl                                       ; $7d19: $e5
    inc a                                         ; $7d1a: $3c
    ld sp, $f766                                  ; $7d1b: $31 $66 $f7
    ld [hl], d                                    ; $7d1e: $72
    ld c, c                                       ; $7d1f: $49
    ld c, l                                       ; $7d20: $4d
    daa                                           ; $7d21: $27
    ld b, l                                       ; $7d22: $45
    sub l                                         ; $7d23: $95
    ld [hl], d                                    ; $7d24: $72

jr_0b7_7d25:
    sbc h                                         ; $7d25: $9c
    ld a, e                                       ; $7d26: $7b
    adc $5d                                       ; $7d27: $ce $5d
    ld l, d                                       ; $7d29: $6a
    ld c, l                                       ; $7d2a: $4d
    sub h                                         ; $7d2b: $94
    ld l, [hl]                                    ; $7d2c: $6e
    jr nc, @+$60                                  ; $7d2d: $30 $5e

    ld e, d                                       ; $7d2f: $5a
    ld [hl], e                                    ; $7d30: $73
    nop                                           ; $7d31: $00
    jr nz, @+$75                                  ; $7d32: $20 $73

    ld e, [hl]                                    ; $7d34: $5e
    cp h                                          ; $7d35: $bc
    ld a, e                                       ; $7d36: $7b
    push hl                                       ; $7d37: $e5
    inc a                                         ; $7d38: $3c
    nop                                           ; $7d39: $00
    jr nz, @+$75                                  ; $7d3a: $20 $73

    ld e, [hl]                                    ; $7d3c: $5e
    cp h                                          ; $7d3d: $bc
    ld a, e                                       ; $7d3e: $7b
    push hl                                       ; $7d3f: $e5
    inc a                                         ; $7d40: $3c

    db $50, $03, $a3, $01, $00, $06, $00, $3c, $00, $1e, $00, $00, $00, $10, $79, $00
    db $f3, $06, $00, $03, $00, $18, $00, $11, $c0, $00, $66, $10, $00, $e0, $00, $0f
    db $16, $00, $14, $ff, $00, $f8, $08, $00, $ff, $1c, $00, $ff, $00, $45, $cc, $0e
    db $00, $3c, $00, $1f, $20, $00, $ff, $28, $00, $10, $9f, $00, $33, $04, $00, $fc
    db $00, $e7, $18, $00, $cc, $33, $fe, $01, $cf, $30, $f8, $07, $00, $ff, $00, $61
    db $9e, $ff, $00, $9f, $60, $00, $f3, $0c, $1f, $e0, $ff, $00, $79, $86, $00, $f0
    db $0f, $98, $67, $33, $cc, $1f, $e0, $00, $c3, $3c, $e0, $1f, $03, $fc, $00, $ff
    db $00, $0f, $f0, $81, $7e, $0c, $f3, $80, $7f, $00, $33, $cc, $01, $fe, $fc, $03
    db $00, $ff, $00, $30, $cf, $99, $66, $00, $ff, $01, $ff, $02, $cc, $ff, $00, $ff
    db $03, $ff, $33, $00, $ff, $45, $1f, $0a, $00, $80, $ff, $3c, $10, $00, $cf, $18
    db $00, $51, $0c, $0c, $00, $0f, $14, $00, $fc, $ff, $66, $04, $00, $41, $ff, $28
    db $00, $fe, $ff, $f3, $ff, $f8, $2c, $00, $05, $7e, $ff, $c3, $ff, $f9, $24, $00
    db $67, $28, $00, $41, $18, $88, $00, $19, $00, $30, $00, $07, $c4, $00, $55, $9e
    db $c8, $00, $18, $c4, $00, $e0, $d0, $00, $86, $c0, $00, $59, $67, $b4, $00, $e0
    db $b4, $10, $7f, $00, $00, $f0, $b4, $00, $16, $f3, $00, $7f, $c8, $00, $fe, $e8
    db $00, $75, $00, $00, $40, $87, $e0, $00, $fe, $01, $cc, $33, $e7, $18, $28, $fc
    db $03, $b4, $08, $e0, $81, $00, $7f, $80, $f3, $00, $0c, $9f, $60, $30, $cf, $fe
    db $01, $f3, $04, $0c, $7f, $80, $f0, $0f, $bc, $08, $99, $66, $00, $03, $fc, $01
    db $fe, $3c, $c3, $01, $fe, $00, $0c, $f3, $07, $f8, $fc, $03, $81, $7e, $0e, $3c
    db $c3, $80, $7f, $ac, $00, $04, $00, $a8, $08, $01, $e2, $c2, $00, $fb, $00, $c0
    db $10, $86, $ff, $30, $a8, $00, $00, $0a, $ff, $19, $ff, $33, $08, $10, $98, $b4
    db $00, $7e, $aa, $be, $00, $e0, $d4, $00, $f8, $c0, $00, $07, $dc, $00, $06, $28
    db $ff, $f0, $ec, $00, $ff, $24, $00, $3f, $ff, $60, $a8, $b4, $40, $1f, $c0, $10
    db $33, $8e, $01, $cf, $00, $01, $0d, $00, $0c, $00, $80, $84, $01, $bc, $08, $66
    db $68, $01, $60, $7f, $84, $11, $90, $09, $03, $00, $7e, $00, $c3, $df, $98, $01
    db $c2, $08, $ff, $a3, $09, $02, $58, $01, $60, $22, $10, $10, $50, $0c, $80, $7f
    db $80, $40, $02, $38, $02, $01, $00, $fc, $0f, $01, $83, $0f, $7f, $62, $01, $03
    db $10, $1a, $11, $e6, $01, $81, $10, $20, $3f, $00, $e3, $f8, $f8, $fc, $80, $09
    db $81, $20, $28, $f0, $03, $c7, $1f, $1f, $7f, $30, $58, $03, $ff, $00, $1c, $81
    db $81, $e7, $40, $28, $be, $00, $20, $7c, $fe, $50, $50, $fc, $00, $c3, $0f, $0f
    db $40, $3f, $60, $18, $3f, $00, $c7, $f0, $f3, $f8, $66, $f9, $54, $28, $62, $02
    db $87, $1f, $1b, $18, $30, $48, $e1, $62, $07, $93, $20, $e1, $30, $3c, $00, $81
    db $a0, $20, $3f, $04, $00, $8f, $c0, $e1, $f8, $40, $28, $ff, $00, $08, $e4, $0f
    db $9f, $3f, $c0, $60, $80, $c0, $f1, $8b, $d0, $48, $22, $07, $8f, $e0, $30, $73
    db $7c, $00, $9e, $30, $98, $80, $08, $01, $c3, $9b, $20, $00, $39, $1c, $80, $87
    db $e1, $10, $21, $ac, $08, $2f, $48, $9b, $7c, $7d, $fe, $3e, $40, $60, $ff, $4c
    db $49, $58, $09

    stop                                          ; $7f84: $10 $00
    ld [bc], a                                    ; $7f86: $02
    nop                                           ; $7f87: $00
    db $f4                                        ; $7f88: $f4
    xor $ef                                       ; $7f89: $ee $ef
    ldh a, [$f1]                                  ; $7f8b: $f0 $f1
    ld a, [c]                                     ; $7f8d: $f2
    di                                            ; $7f8e: $f3
    db $ed                                        ; $7f8f: $ed
    db $ed                                        ; $7f90: $ed
    db $ed                                        ; $7f91: $ed
    db $ed                                        ; $7f92: $ed
    db $ed                                        ; $7f93: $ed
    db $ed                                        ; $7f94: $ed
    db $ed                                        ; $7f95: $ed
    db $ed                                        ; $7f96: $ed
    db $ed                                        ; $7f97: $ed
    push af                                       ; $7f98: $f5
    or $f7                                        ; $7f99: $f6 $f7
    ld hl, sp-$07                                 ; $7f9b: $f8 $f9
    ld a, [$edfb]                                 ; $7f9d: $fa $fb $ed
    db $ed                                        ; $7fa0: $ed
    db $ed                                        ; $7fa1: $ed
    db $ed                                        ; $7fa2: $ed
    db $ed                                        ; $7fa3: $ed
    db $ed                                        ; $7fa4: $ed
    db $ed                                        ; $7fa5: $ed
    db $ed                                        ; $7fa6: $ed
    db $ed                                        ; $7fa7: $ed
    ld [$0808], sp                                ; $7fa8: $08 $08 $08
    ld [$0808], sp                                ; $7fab: $08 $08 $08
    ld [$0808], sp                                ; $7fae: $08 $08 $08
    ld [$0808], sp                                ; $7fb1: $08 $08 $08
    ld [$0808], sp                                ; $7fb4: $08 $08 $08
    ld [$0808], sp                                ; $7fb7: $08 $08 $08
    ld [$0808], sp                                ; $7fba: $08 $08 $08
    ld [$0808], sp                                ; $7fbd: $08 $08 $08
    ld [$0808], sp                                ; $7fc0: $08 $08 $08
    ld [$0808], sp                                ; $7fc3: $08 $08 $08
    ld [$a708], sp                                ; $7fc6: $08 $08 $a7
    add hl, sp                                    ; $7fc9: $39
    rst $38                                       ; $7fca: $ff
    ld bc, $4092                                  ; $7fcb: $01 $92 $40
    ld bc, $2c00                                  ; $7fce: $01 $00 $2c
    dec a                                         ; $7fd1: $3d
    ld b, h                                       ; $7fd2: $44
    inc bc                                        ; $7fd3: $03
    add b                                         ; $7fd4: $80
    dec b                                         ; $7fd5: $05
    nop                                           ; $7fd6: $00
    nop                                           ; $7fd7: $00
    ld sp, $3f51                                  ; $7fd8: $31 $51 $3f
    ld a, $0f                                     ; $7fdb: $3e $0f
    ld c, h                                       ; $7fdd: $4c
    nop                                           ; $7fde: $00
    nop                                           ; $7fdf: $00
    ld d, [hl]                                    ; $7fe0: $56
    ld d, a                                       ; $7fe1: $57
    rst $18                                       ; $7fe2: $df
    ld h, e                                       ; $7fe3: $63
    ld e, b                                       ; $7fe4: $58
    ld [hl+], a                                   ; $7fe5: $22
    or c                                          ; $7fe6: $b1
    add hl, de                                    ; $7fe7: $19
    sub l                                         ; $7fe8: $95
    ld d, [hl]                                    ; $7fe9: $56
    rra                                           ; $7fea: $1f
    nop                                           ; $7feb: $00
    ld e, a                                       ; $7fec: $5f
    inc bc                                        ; $7fed: $03
    sub e                                         ; $7fee: $93
    ld [$7d1f], sp                                ; $7fef: $08 $1f $7d
    rst $18                                       ; $7ff2: $df
    ld c, [hl]                                    ; $7ff3: $4e
    sub $34                                       ; $7ff4: $d6 $34
    ld c, l                                       ; $7ff6: $4d
    db $18                                        ; $7ff7: $18

    db $c0, $2c, $1b, $00, $36, $22, $9f, $65
