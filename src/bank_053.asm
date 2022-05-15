; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

    ld d, e                                       ; $4000: $53
    nop                                           ; $4001: $00
    sub a                                         ; $4002: $97
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    and l                                         ; $4005: $a5
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    or d                                          ; $4008: $b2
    inc h                                         ; $4009: $24
    nop                                           ; $400a: $00
    call $0024                                    ; $400b: $cd $24 $00
    jp nc, $0024                                  ; $400e: $d2 $24 $00

    sub $24                                       ; $4011: $d6 $24
    nop                                           ; $4013: $00
    db $db                                        ; $4014: $db
    inc h                                         ; $4015: $24
    nop                                           ; $4016: $00
    ldh [rNR50], a                                ; $4017: $e0 $24
    nop                                           ; $4019: $00
    db $ec                                        ; $401a: $ec
    inc h                                         ; $401b: $24
    nop                                           ; $401c: $00
    ld hl, sp+$24                                 ; $401d: $f8 $24
    nop                                           ; $401f: $00
    ld bc, $0025                                  ; $4020: $01 $25 $00
    ld a, [bc]                                    ; $4023: $0a
    dec h                                         ; $4024: $25
    nop                                           ; $4025: $00
    inc d                                         ; $4026: $14
    dec h                                         ; $4027: $25
    nop                                           ; $4028: $00
    rra                                           ; $4029: $1f
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    ld a, [hl+]                                   ; $402c: $2a
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    dec [hl]                                      ; $402f: $35
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld b, b                                       ; $4032: $40
    dec h                                         ; $4033: $25
    nop                                           ; $4034: $00
    ld c, e                                       ; $4035: $4b
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld d, [hl]                                    ; $4038: $56
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld e, a                                       ; $403b: $5f
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld l, b                                       ; $403e: $68
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld [hl], d                                    ; $4041: $72
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    ld a, a                                       ; $4044: $7f
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    adc h                                         ; $4047: $8c
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    sbc b                                         ; $404a: $98
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    and l                                         ; $404d: $a5
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    or d                                          ; $4050: $b2
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    sla l                                         ; $4053: $cb $25
    nop                                           ; $4055: $00
    db $eb                                        ; $4056: $eb
    dec h                                         ; $4057: $25
    nop                                           ; $4058: $00
    ld sp, hl                                     ; $4059: $f9
    dec h                                         ; $405a: $25
    nop                                           ; $405b: $00
    inc de                                        ; $405c: $13
    ld h, $00                                     ; $405d: $26 $00
    daa                                           ; $405f: $27
    ld h, $00                                     ; $4060: $26 $00
    sub d                                         ; $4062: $92
    ld h, $00                                     ; $4063: $26 $00
    call c, $0026                                 ; $4065: $dc $26 $00
    ld [$0026], a                                 ; $4068: $ea $26 $00
    db $fc                                        ; $406b: $fc
    ld h, $00                                     ; $406c: $26 $00
    ld c, $27                                     ; $406e: $0e $27
    nop                                           ; $4070: $00
    rra                                           ; $4071: $1f
    daa                                           ; $4072: $27
    nop                                           ; $4073: $00
    ld l, $27                                     ; $4074: $2e $27
    nop                                           ; $4076: $00
    ld c, [hl]                                    ; $4077: $4e
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    ld [hl], b                                    ; $407a: $70
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    sub h                                         ; $407d: $94
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    xor c                                         ; $4080: $a9
    daa                                           ; $4081: $27
    nop                                           ; $4082: $00
    call nz, Call_000_0027                        ; $4083: $c4 $27 $00
    rst $08                                       ; $4086: $cf
    daa                                           ; $4087: $27
    nop                                           ; $4088: $00
    db $eb                                        ; $4089: $eb
    daa                                           ; $408a: $27
    nop                                           ; $408b: $00
    ld b, $28                                     ; $408c: $06 $28
    nop                                           ; $408e: $00
    inc d                                         ; $408f: $14
    jr z, jr_053_4092                             ; $4090: $28 $00

jr_053_4092:
    jr c, jr_053_40bc                             ; $4092: $38 $28

    nop                                           ; $4094: $00
    ld d, c                                       ; $4095: $51
    jr z, jr_053_4098                             ; $4096: $28 $00

jr_053_4098:
    ld h, h                                       ; $4098: $64
    jr z, jr_053_409b                             ; $4099: $28 $00

jr_053_409b:
    ld l, [hl]                                    ; $409b: $6e
    jr z, jr_053_409e                             ; $409c: $28 $00

jr_053_409e:
    ld a, h                                       ; $409e: $7c
    jr z, jr_053_40a1                             ; $409f: $28 $00

jr_053_40a1:
    adc [hl]                                      ; $40a1: $8e
    jr z, jr_053_40a4                             ; $40a2: $28 $00

jr_053_40a4:
    xor c                                         ; $40a4: $a9
    jr z, jr_053_40a7                             ; $40a5: $28 $00

jr_053_40a7:
    db $e3                                        ; $40a7: $e3
    jr z, jr_053_40aa                             ; $40a8: $28 $00

jr_053_40aa:
    add hl, bc                                    ; $40aa: $09
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    jr nz, jr_053_40d8                            ; $40ad: $20 $29

    nop                                           ; $40af: $00
    ld b, e                                       ; $40b0: $43
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    ld h, b                                       ; $40b3: $60
    add hl, hl                                    ; $40b4: $29
    nop                                           ; $40b5: $00
    add c                                         ; $40b6: $81
    add hl, hl                                    ; $40b7: $29
    nop                                           ; $40b8: $00
    and b                                         ; $40b9: $a0
    add hl, hl                                    ; $40ba: $29
    nop                                           ; $40bb: $00

jr_053_40bc:
    or d                                          ; $40bc: $b2
    add hl, hl                                    ; $40bd: $29
    nop                                           ; $40be: $00
    ret c                                         ; $40bf: $d8

    add hl, hl                                    ; $40c0: $29
    nop                                           ; $40c1: $00
    rst $20                                       ; $40c2: $e7
    add hl, hl                                    ; $40c3: $29
    nop                                           ; $40c4: $00
    ld a, [hl+]                                   ; $40c5: $2a
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    ld c, b                                       ; $40c8: $48
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    or a                                          ; $40cb: $b7
    ld a, [hl+]                                   ; $40cc: $2a
    nop                                           ; $40cd: $00
    call nz, $002a                                ; $40ce: $c4 $2a $00
    db $eb                                        ; $40d1: $eb
    ld a, [hl+]                                   ; $40d2: $2a
    nop                                           ; $40d3: $00
    rst $30                                       ; $40d4: $f7
    ld a, [hl+]                                   ; $40d5: $2a
    nop                                           ; $40d6: $00
    ld [bc], a                                    ; $40d7: $02

jr_053_40d8:
    dec hl                                        ; $40d8: $2b
    nop                                           ; $40d9: $00
    rrca                                          ; $40da: $0f
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    jr c, jr_053_410a                             ; $40dd: $38 $2b

    nop                                           ; $40df: $00
    ld d, l                                       ; $40e0: $55
    dec hl                                        ; $40e1: $2b
    nop                                           ; $40e2: $00
    ld e, c                                       ; $40e3: $59
    dec hl                                        ; $40e4: $2b
    nop                                           ; $40e5: $00
    ld e, l                                       ; $40e6: $5d
    dec hl                                        ; $40e7: $2b
    nop                                           ; $40e8: $00
    ld h, d                                       ; $40e9: $62
    dec hl                                        ; $40ea: $2b
    nop                                           ; $40eb: $00
    sub c                                         ; $40ec: $91
    dec hl                                        ; $40ed: $2b
    nop                                           ; $40ee: $00
    or a                                          ; $40ef: $b7
    dec hl                                        ; $40f0: $2b
    nop                                           ; $40f1: $00
    call c, $002b                                 ; $40f2: $dc $2b $00
    inc e                                         ; $40f5: $1c
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    ld c, d                                       ; $40f8: $4a
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    ld l, h                                       ; $40fb: $6c
    inc l                                         ; $40fc: $2c
    nop                                           ; $40fd: $00
    sub a                                         ; $40fe: $97
    inc l                                         ; $40ff: $2c
    nop                                           ; $4100: $00
    or e                                          ; $4101: $b3
    inc l                                         ; $4102: $2c
    nop                                           ; $4103: $00
    ld a, [c]                                     ; $4104: $f2
    inc l                                         ; $4105: $2c
    nop                                           ; $4106: $00
    db $fc                                        ; $4107: $fc
    inc l                                         ; $4108: $2c
    nop                                           ; $4109: $00

jr_053_410a:
    rra                                           ; $410a: $1f
    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    inc l                                         ; $410d: $2c
    dec l                                         ; $410e: $2d
    nop                                           ; $410f: $00
    ld c, c                                       ; $4110: $49
    dec l                                         ; $4111: $2d
    nop                                           ; $4112: $00
    ld h, b                                       ; $4113: $60
    dec l                                         ; $4114: $2d
    nop                                           ; $4115: $00
    adc l                                         ; $4116: $8d
    dec l                                         ; $4117: $2d
    nop                                           ; $4118: $00
    reti                                          ; $4119: $d9


    dec l                                         ; $411a: $2d
    nop                                           ; $411b: $00
    rst $38                                       ; $411c: $ff
    dec l                                         ; $411d: $2d
    nop                                           ; $411e: $00
    jr nc, jr_053_414f                            ; $411f: $30 $2e

    nop                                           ; $4121: $00
    add d                                         ; $4122: $82
    ld l, $00                                     ; $4123: $2e $00
    sub l                                         ; $4125: $95
    ld l, $00                                     ; $4126: $2e $00
    pop hl                                        ; $4128: $e1
    ld l, $00                                     ; $4129: $2e $00
    ld a, [c]                                     ; $412b: $f2
    ld l, $00                                     ; $412c: $2e $00
    jr jr_053_415f                                ; $412e: $18 $2f

    nop                                           ; $4130: $00
    ld [hl-], a                                   ; $4131: $32
    cpl                                           ; $4132: $2f
    nop                                           ; $4133: $00
    add hl, sp                                    ; $4134: $39
    cpl                                           ; $4135: $2f
    nop                                           ; $4136: $00
    ld l, b                                       ; $4137: $68
    cpl                                           ; $4138: $2f
    nop                                           ; $4139: $00
    sbc [hl]                                      ; $413a: $9e
    cpl                                           ; $413b: $2f
    nop                                           ; $413c: $00
    and c                                         ; $413d: $a1
    cpl                                           ; $413e: $2f
    nop                                           ; $413f: $00
    ret                                           ; $4140: $c9


    cpl                                           ; $4141: $2f
    nop                                           ; $4142: $00
    di                                            ; $4143: $f3
    cpl                                           ; $4144: $2f
    nop                                           ; $4145: $00
    nop                                           ; $4146: $00
    jr nc, jr_053_4149                            ; $4147: $30 $00

jr_053_4149:
    inc de                                        ; $4149: $13
    jr nc, jr_053_414c                            ; $414a: $30 $00

jr_053_414c:
    ld l, $30                                     ; $414c: $2e $30
    nop                                           ; $414e: $00

jr_053_414f:
    ld d, h                                       ; $414f: $54
    jr nc, jr_053_4152                            ; $4150: $30 $00

jr_053_4152:
    ld l, d                                       ; $4152: $6a
    jr nc, jr_053_4155                            ; $4153: $30 $00

jr_053_4155:
    add $30                                       ; $4155: $c6 $30
    nop                                           ; $4157: $00
    and $30                                       ; $4158: $e6 $30
    nop                                           ; $415a: $00
    db $ed                                        ; $415b: $ed
    jr nc, jr_053_415e                            ; $415c: $30 $00

jr_053_415e:
    db $10                                        ; $415e: $10

jr_053_415f:
    ld sp, $1c00                                  ; $415f: $31 $00 $1c
    ld sp, $5d00                                  ; $4162: $31 $00 $5d
    ld sp, $8100                                  ; $4165: $31 $00 $81
    ld sp, $8f00                                  ; $4168: $31 $00 $8f
    ld sp, $b000                                  ; $416b: $31 $00 $b0
    ld sp, $c100                                  ; $416e: $31 $00 $c1
    ld sp, $df00                                  ; $4171: $31 $00 $df
    ld sp, $ef00                                  ; $4174: $31 $00 $ef
    ld sp, $1200                                  ; $4177: $31 $00 $12
    ld [hl-], a                                   ; $417a: $32
    nop                                           ; $417b: $00
    add hl, de                                    ; $417c: $19
    ld [hl-], a                                   ; $417d: $32
    nop                                           ; $417e: $00
    dec l                                         ; $417f: $2d
    ld [hl-], a                                   ; $4180: $32
    nop                                           ; $4181: $00
    inc sp                                        ; $4182: $33
    ld [hl-], a                                   ; $4183: $32
    nop                                           ; $4184: $00
    inc a                                         ; $4185: $3c
    ld [hl-], a                                   ; $4186: $32
    nop                                           ; $4187: $00
    ld b, l                                       ; $4188: $45
    ld [hl-], a                                   ; $4189: $32
    nop                                           ; $418a: $00
    ld c, [hl]                                    ; $418b: $4e
    ld [hl-], a                                   ; $418c: $32
    nop                                           ; $418d: $00
    ld e, d                                       ; $418e: $5a
    ld [hl-], a                                   ; $418f: $32
    nop                                           ; $4190: $00
    ld h, h                                       ; $4191: $64
    ld [hl-], a                                   ; $4192: $32
    nop                                           ; $4193: $00
    ld [hl], l                                    ; $4194: $75
    ld [hl-], a                                   ; $4195: $32
    nop                                           ; $4196: $00
    ld a, l                                       ; $4197: $7d
    ld [hl-], a                                   ; $4198: $32
    nop                                           ; $4199: $00
    add [hl]                                      ; $419a: $86
    ld [hl-], a                                   ; $419b: $32
    nop                                           ; $419c: $00
    xor d                                         ; $419d: $aa
    ld [hl-], a                                   ; $419e: $32
    nop                                           ; $419f: $00
    rst $18                                       ; $41a0: $df
    ld [hl-], a                                   ; $41a1: $32
    nop                                           ; $41a2: $00
    ld [bc], a                                    ; $41a3: $02
    inc sp                                        ; $41a4: $33
    nop                                           ; $41a5: $00
    ld de, $0033                                  ; $41a6: $11 $33 $00
    jr z, jr_053_41de                             ; $41a9: $28 $33

    nop                                           ; $41ab: $00
    ld a, [hl-]                                   ; $41ac: $3a
    inc sp                                        ; $41ad: $33
    nop                                           ; $41ae: $00
    ld e, e                                       ; $41af: $5b
    inc sp                                        ; $41b0: $33
    nop                                           ; $41b1: $00
    ld a, e                                       ; $41b2: $7b
    inc sp                                        ; $41b3: $33
    nop                                           ; $41b4: $00
    sub d                                         ; $41b5: $92
    inc sp                                        ; $41b6: $33
    nop                                           ; $41b7: $00
    cp [hl]                                       ; $41b8: $be
    inc sp                                        ; $41b9: $33
    nop                                           ; $41ba: $00
    add $33                                       ; $41bb: $c6 $33
    nop                                           ; $41bd: $00
    db $db                                        ; $41be: $db
    inc sp                                        ; $41bf: $33
    nop                                           ; $41c0: $00
    inc de                                        ; $41c1: $13
    inc [hl]                                      ; $41c2: $34
    nop                                           ; $41c3: $00
    inc l                                         ; $41c4: $2c
    inc [hl]                                      ; $41c5: $34
    nop                                           ; $41c6: $00
    ld c, h                                       ; $41c7: $4c
    inc [hl]                                      ; $41c8: $34
    nop                                           ; $41c9: $00
    ld h, d                                       ; $41ca: $62
    inc [hl]                                      ; $41cb: $34
    nop                                           ; $41cc: $00
    ld a, a                                       ; $41cd: $7f
    inc [hl]                                      ; $41ce: $34
    nop                                           ; $41cf: $00
    sub h                                         ; $41d0: $94
    inc [hl]                                      ; $41d1: $34
    nop                                           ; $41d2: $00
    xor e                                         ; $41d3: $ab
    inc [hl]                                      ; $41d4: $34
    nop                                           ; $41d5: $00
    or e                                          ; $41d6: $b3
    inc [hl]                                      ; $41d7: $34
    nop                                           ; $41d8: $00
    jp z, Jump_000_0034                           ; $41d9: $ca $34 $00

    ldh [$34], a                                  ; $41dc: $e0 $34

jr_053_41de:
    nop                                           ; $41de: $00
    add sp, $34                                   ; $41df: $e8 $34
    nop                                           ; $41e1: $00
    inc bc                                        ; $41e2: $03
    dec [hl]                                      ; $41e3: $35
    nop                                           ; $41e4: $00
    rla                                           ; $41e5: $17
    dec [hl]                                      ; $41e6: $35
    nop                                           ; $41e7: $00
    dec [hl]                                      ; $41e8: $35
    dec [hl]                                      ; $41e9: $35
    nop                                           ; $41ea: $00
    ld h, d                                       ; $41eb: $62
    dec [hl]                                      ; $41ec: $35
    nop                                           ; $41ed: $00
    adc a                                         ; $41ee: $8f
    dec [hl]                                      ; $41ef: $35
    nop                                           ; $41f0: $00
    or l                                          ; $41f1: $b5
    dec [hl]                                      ; $41f2: $35
    nop                                           ; $41f3: $00
    db $db                                        ; $41f4: $db
    dec [hl]                                      ; $41f5: $35
    nop                                           ; $41f6: $00
    or $35                                        ; $41f7: $f6 $35

Call_053_41f9:
    nop                                           ; $41f9: $00
    db $10                                        ; $41fa: $10
    ld [hl], $00                                  ; $41fb: $36 $00
    add hl, hl                                    ; $41fd: $29
    ld [hl], $00                                  ; $41fe: $36 $00
    ld b, l                                       ; $4200: $45
    ld [hl], $00                                  ; $4201: $36 $00
    ld e, b                                       ; $4203: $58
    ld [hl], $00                                  ; $4204: $36 $00
    ld [hl], l                                    ; $4206: $75
    ld [hl], $00                                  ; $4207: $36 $00
    add e                                         ; $4209: $83
    ld [hl], $00                                  ; $420a: $36 $00
    and l                                         ; $420c: $a5
    ld [hl], $00                                  ; $420d: $36 $00
    ret nz                                        ; $420f: $c0

    ld [hl], $00                                  ; $4210: $36 $00
    sbc $36                                       ; $4212: $de $36
    nop                                           ; $4214: $00
    ld a, [c]                                     ; $4215: $f2
    ld [hl], $00                                  ; $4216: $36 $00
    ld bc, $0037                                  ; $4218: $01 $37 $00
    ld c, $37                                     ; $421b: $0e $37
    nop                                           ; $421d: $00
    dec de                                        ; $421e: $1b
    scf                                           ; $421f: $37
    nop                                           ; $4220: $00
    cpl                                           ; $4221: $2f
    scf                                           ; $4222: $37
    nop                                           ; $4223: $00
    ld l, l                                       ; $4224: $6d
    scf                                           ; $4225: $37
    nop                                           ; $4226: $00
    adc b                                         ; $4227: $88
    scf                                           ; $4228: $37
    nop                                           ; $4229: $00
    xor d                                         ; $422a: $aa
    scf                                           ; $422b: $37
    nop                                           ; $422c: $00
    cp b                                          ; $422d: $b8
    scf                                           ; $422e: $37
    nop                                           ; $422f: $00
    ret                                           ; $4230: $c9


    scf                                           ; $4231: $37
    nop                                           ; $4232: $00
    ret c                                         ; $4233: $d8

    scf                                           ; $4234: $37
    nop                                           ; $4235: $00
    db $ed                                        ; $4236: $ed
    scf                                           ; $4237: $37
    nop                                           ; $4238: $00
    rst $38                                       ; $4239: $ff
    scf                                           ; $423a: $37
    nop                                           ; $423b: $00
    ld e, $38                                     ; $423c: $1e $38
    nop                                           ; $423e: $00
    inc l                                         ; $423f: $2c
    jr c, jr_053_4242                             ; $4240: $38 $00

jr_053_4242:
    ld d, d                                       ; $4242: $52
    jr c, jr_053_4245                             ; $4243: $38 $00

jr_053_4245:
    ld l, b                                       ; $4245: $68
    jr c, jr_053_4248                             ; $4246: $38 $00

jr_053_4248:
    ld a, h                                       ; $4248: $7c
    jr c, jr_053_424b                             ; $4249: $38 $00

jr_053_424b:
    cp b                                          ; $424b: $b8
    jr c, jr_053_424e                             ; $424c: $38 $00

jr_053_424e:
    call z, $0038                                 ; $424e: $cc $38 $00
    di                                            ; $4251: $f3
    jr c, jr_053_4254                             ; $4252: $38 $00

jr_053_4254:
    ld bc, $0039                                  ; $4254: $01 $39 $00
    dec bc                                        ; $4257: $0b
    add hl, sp                                    ; $4258: $39
    nop                                           ; $4259: $00
    scf                                           ; $425a: $37
    add hl, sp                                    ; $425b: $39
    nop                                           ; $425c: $00
    ld l, c                                       ; $425d: $69
    add hl, sp                                    ; $425e: $39
    nop                                           ; $425f: $00
    ld [hl], d                                    ; $4260: $72
    add hl, sp                                    ; $4261: $39
    nop                                           ; $4262: $00
    sbc l                                         ; $4263: $9d
    add hl, sp                                    ; $4264: $39
    nop                                           ; $4265: $00
    xor [hl]                                      ; $4266: $ae
    add hl, sp                                    ; $4267: $39
    nop                                           ; $4268: $00
    add sp, $39                                   ; $4269: $e8 $39
    nop                                           ; $426b: $00
    dec c                                         ; $426c: $0d
    ld a, [hl-]                                   ; $426d: $3a
    nop                                           ; $426e: $00
    db $10                                        ; $426f: $10
    ld a, [hl-]                                   ; $4270: $3a
    nop                                           ; $4271: $00
    ld [hl], $3a                                  ; $4272: $36 $3a
    nop                                           ; $4274: $00
    ld e, d                                       ; $4275: $5a
    ld a, [hl-]                                   ; $4276: $3a
    nop                                           ; $4277: $00
    ld e, [hl]                                    ; $4278: $5e
    ld a, [hl-]                                   ; $4279: $3a
    nop                                           ; $427a: $00
    ld a, c                                       ; $427b: $79
    ld a, [hl-]                                   ; $427c: $3a
    nop                                           ; $427d: $00
    add h                                         ; $427e: $84
    ld a, [hl-]                                   ; $427f: $3a
    nop                                           ; $4280: $00
    sbc h                                         ; $4281: $9c
    ld a, [hl-]                                   ; $4282: $3a
    nop                                           ; $4283: $00
    and a                                         ; $4284: $a7
    ld a, [hl-]                                   ; $4285: $3a
    nop                                           ; $4286: $00
    or b                                          ; $4287: $b0
    ld a, [hl-]                                   ; $4288: $3a
    nop                                           ; $4289: $00
    ld b, c                                       ; $428a: $41
    dec sp                                        ; $428b: $3b
    nop                                           ; $428c: $00
    ld a, e                                       ; $428d: $7b
    dec sp                                        ; $428e: $3b
    nop                                           ; $428f: $00
    xor a                                         ; $4290: $af
    dec sp                                        ; $4291: $3b
    nop                                           ; $4292: $00
    jp nz, Jump_000_003b                          ; $4293: $c2 $3b $00

    jp hl                                         ; $4296: $e9


    dec sp                                        ; $4297: $3b
    nop                                           ; $4298: $00
    dec e                                         ; $4299: $1d
    inc a                                         ; $429a: $3c
    nop                                           ; $429b: $00
    ld [hl], $3c                                  ; $429c: $36 $3c
    nop                                           ; $429e: $00
    and [hl]                                      ; $429f: $a6
    inc a                                         ; $42a0: $3c
    nop                                           ; $42a1: $00
    ldh a, [$3c]                                  ; $42a2: $f0 $3c
    nop                                           ; $42a4: $00
    ld [hl+], a                                   ; $42a5: $22
    dec a                                         ; $42a6: $3d
    nop                                           ; $42a7: $00
    ld b, h                                       ; $42a8: $44
    dec a                                         ; $42a9: $3d
    nop                                           ; $42aa: $00
    ld [hl], c                                    ; $42ab: $71
    dec a                                         ; $42ac: $3d
    nop                                           ; $42ad: $00
    adc d                                         ; $42ae: $8a
    dec a                                         ; $42af: $3d
    nop                                           ; $42b0: $00
    push de                                       ; $42b1: $d5
    dec a                                         ; $42b2: $3d
    nop                                           ; $42b3: $00
    jp hl                                         ; $42b4: $e9


    dec a                                         ; $42b5: $3d
    nop                                           ; $42b6: $00
    rst $38                                       ; $42b7: $ff
    dec a                                         ; $42b8: $3d
    nop                                           ; $42b9: $00
    add hl, de                                    ; $42ba: $19
    ld a, $00                                     ; $42bb: $3e $00
    inc a                                         ; $42bd: $3c
    ld a, $00                                     ; $42be: $3e $00
    ld e, l                                       ; $42c0: $5d
    ld a, $00                                     ; $42c1: $3e $00
    ld a, l                                       ; $42c3: $7d
    ld a, $00                                     ; $42c4: $3e $00
    adc a                                         ; $42c6: $8f
    ld a, $00                                     ; $42c7: $3e $00
    sub a                                         ; $42c9: $97
    ld a, $00                                     ; $42ca: $3e $00
    or [hl]                                       ; $42cc: $b6
    ld a, $00                                     ; $42cd: $3e $00
    cp e                                          ; $42cf: $bb
    ld a, $00                                     ; $42d0: $3e $00
    ret nz                                        ; $42d2: $c0

    ld a, $00                                     ; $42d3: $3e $00
    ld hl, sp+$3e                                 ; $42d5: $f8 $3e
    nop                                           ; $42d7: $00
    inc de                                        ; $42d8: $13
    ccf                                           ; $42d9: $3f
    nop                                           ; $42da: $00
    ccf                                           ; $42db: $3f
    ccf                                           ; $42dc: $3f
    nop                                           ; $42dd: $00
    ld c, b                                       ; $42de: $48
    ccf                                           ; $42df: $3f
    nop                                           ; $42e0: $00
    ld a, [hl]                                    ; $42e1: $7e
    ccf                                           ; $42e2: $3f
    nop                                           ; $42e3: $00
    add e                                         ; $42e4: $83
    ccf                                           ; $42e5: $3f
    nop                                           ; $42e6: $00
    sub [hl]                                      ; $42e7: $96
    ccf                                           ; $42e8: $3f
    nop                                           ; $42e9: $00
    xor e                                         ; $42ea: $ab
    ccf                                           ; $42eb: $3f
    ld bc, $0001                                  ; $42ec: $01 $01 $00
    ld bc, $0038                                  ; $42ef: $01 $38 $00
    ld bc, $004a                                  ; $42f2: $01 $4a $00
    ld bc, $0057                                  ; $42f5: $01 $57 $00
    ld bc, $006d                                  ; $42f8: $01 $6d $00
    ld bc, $0089                                  ; $42fb: $01 $89 $00
    ld bc, $00a8                                  ; $42fe: $01 $a8 $00
    ld bc, $00c0                                  ; $4301: $01 $c0 $00
    ld bc, $00f4                                  ; $4304: $01 $f4 $00
    ld bc, $0101                                  ; $4307: $01 $01 $01
    ld bc, $0174                                  ; $430a: $01 $74 $01
    ld bc, $017d                                  ; $430d: $01 $7d $01
    ld bc, $0198                                  ; $4310: $01 $98 $01
    ld bc, $01ab                                  ; $4313: $01 $ab $01
    ld bc, $01c8                                  ; $4316: $01 $c8 $01
    ld bc, $01d7                                  ; $4319: $01 $d7 $01
    ld bc, $0200                                  ; $431c: $01 $00 $02
    ld bc, $0210                                  ; $431f: $01 $10 $02
    ld bc, $0220                                  ; $4322: $01 $20 $02
    ld bc, $02af                                  ; $4325: $01 $af $02
    ld bc, $02c6                                  ; $4328: $01 $c6 $02
    ld bc, $02e1                                  ; $432b: $01 $e1 $02
    ld bc, $030b                                  ; $432e: $01 $0b $03
    ld bc, $0322                                  ; $4331: $01 $22 $03
    ld bc, $034d                                  ; $4334: $01 $4d $03
    ld bc, $035c                                  ; $4337: $01 $5c $03
    ld bc, $0382                                  ; $433a: $01 $82 $03
    ld bc, $039d                                  ; $433d: $01 $9d $03
    ld bc, $03b7                                  ; $4340: $01 $b7 $03
    ld bc, $03d5                                  ; $4343: $01 $d5 $03
    ld bc, $03f0                                  ; $4346: $01 $f0 $03
    ld bc, $0482                                  ; $4349: $01 $82 $04
    ld bc, $0496                                  ; $434c: $01 $96 $04
    ld bc, $04f7                                  ; $434f: $01 $f7 $04
    ld bc, $0509                                  ; $4352: $01 $09 $05
    ld bc, $051d                                  ; $4355: $01 $1d $05
    ld bc, $052a                                  ; $4358: $01 $2a $05
    ld bc, $056b                                  ; $435b: $01 $6b $05
    ld bc, $05cc                                  ; $435e: $01 $cc $05
    ld bc, $05e9                                  ; $4361: $01 $e9 $05
    ld bc, $05fc                                  ; $4364: $01 $fc $05
    ld bc, $0611                                  ; $4367: $01 $11 $06
    ld bc, $0621                                  ; $436a: $01 $21 $06
    ld bc, $0636                                  ; $436d: $01 $36 $06
    ld bc, $0646                                  ; $4370: $01 $46 $06
    ld bc, $065c                                  ; $4373: $01 $5c $06
    ld bc, $0670                                  ; $4376: $01 $70 $06
    ld bc, $067b                                  ; $4379: $01 $7b $06
    ld bc, $0683                                  ; $437c: $01 $83 $06
    ld bc, $068e                                  ; $437f: $01 $8e $06
    ld bc, $06a2                                  ; $4382: $01 $a2 $06
    ld bc, $06ca                                  ; $4385: $01 $ca $06
    ld bc, $06f7                                  ; $4388: $01 $f7 $06
    ld bc, $071c                                  ; $438b: $01 $1c $07
    ld bc, $0729                                  ; $438e: $01 $29 $07
    ld bc, $074b                                  ; $4391: $01 $4b $07
    ld bc, $0780                                  ; $4394: $01 $80 $07
    ld bc, $07a4                                  ; $4397: $01 $a4 $07
    ld bc, $07b5                                  ; $439a: $01 $b5 $07
    ld bc, $07c3                                  ; $439d: $01 $c3 $07
    ld bc, $07ce                                  ; $43a0: $01 $ce $07
    ld bc, $07df                                  ; $43a3: $01 $df $07
    ld bc, $07ed                                  ; $43a6: $01 $ed $07
    ld bc, $0803                                  ; $43a9: $01 $03 $08
    ld bc, $080e                                  ; $43ac: $01 $0e $08
    ld bc, $081a                                  ; $43af: $01 $1a $08
    ld bc, $082e                                  ; $43b2: $01 $2e $08
    ld bc, $0849                                  ; $43b5: $01 $49 $08
    ld bc, $087a                                  ; $43b8: $01 $7a $08
    ld bc, $0893                                  ; $43bb: $01 $93 $08
    ld bc, $0896                                  ; $43be: $01 $96 $08
    ld bc, $08bb                                  ; $43c1: $01 $bb $08
    ld bc, $08cd                                  ; $43c4: $01 $cd $08
    ld bc, $08e9                                  ; $43c7: $01 $e9 $08
    ld bc, $08f4                                  ; $43ca: $01 $f4 $08
    ld bc, $090a                                  ; $43cd: $01 $0a $09
    ld bc, $0936                                  ; $43d0: $01 $36 $09
    ld bc, $09a5                                  ; $43d3: $01 $a5 $09
    ld bc, $09b7                                  ; $43d6: $01 $b7 $09
    ld bc, $09c2                                  ; $43d9: $01 $c2 $09
    ld bc, $09d9                                  ; $43dc: $01 $d9 $09
    ld bc, $09eb                                  ; $43df: $01 $eb $09
    ld bc, $0a1d                                  ; $43e2: $01 $1d $0a
    ld bc, $0a3d                                  ; $43e5: $01 $3d $0a
    ld bc, $0a61                                  ; $43e8: $01 $61 $0a
    ld bc, $0a87                                  ; $43eb: $01 $87 $0a
    ld bc, $0abc                                  ; $43ee: $01 $bc $0a
    ld bc, $0afc                                  ; $43f1: $01 $fc $0a
    ld bc, $0b23                                  ; $43f4: $01 $23 $0b
    ld bc, $0b55                                  ; $43f7: $01 $55 $0b
    ld bc, $0b86                                  ; $43fa: $01 $86 $0b
    ld bc, $0bce                                  ; $43fd: $01 $ce $0b
    ld bc, $0c08                                  ; $4400: $01 $08 $0c
    ld bc, $0c37                                  ; $4403: $01 $37 $0c
    ld bc, $0c76                                  ; $4406: $01 $76 $0c
    ld bc, $0cbe                                  ; $4409: $01 $be $0c
    ld bc, $0ce5                                  ; $440c: $01 $e5 $0c
    ld bc, $0d0f                                  ; $440f: $01 $0f $0d
    ld bc, $0d33                                  ; $4412: $01 $33 $0d
    ld bc, $0d76                                  ; $4415: $01 $76 $0d
    ld bc, $0da1                                  ; $4418: $01 $a1 $0d
    ld bc, $0ddb                                  ; $441b: $01 $db $0d
    ld bc, $0e1a                                  ; $441e: $01 $1a $0e
    ld bc, $0e48                                  ; $4421: $01 $48 $0e
    ld bc, $0e89                                  ; $4424: $01 $89 $0e
    ld bc, $0ec9                                  ; $4427: $01 $c9 $0e
    ld bc, $0eea                                  ; $442a: $01 $ea $0e
    ld bc, $0f19                                  ; $442d: $01 $19 $0f
    ld bc, $0f47                                  ; $4430: $01 $47 $0f
    ld bc, $0f69                                  ; $4433: $01 $69 $0f
    ld bc, $0fa0                                  ; $4436: $01 $a0 $0f
    ld bc, $0fd3                                  ; $4439: $01 $d3 $0f
    ld bc, $1010                                  ; $443c: $01 $10 $10
    ld bc, $1051                                  ; $443f: $01 $51 $10
    ld bc, $1098                                  ; $4442: $01 $98 $10
    ld bc, $10bd                                  ; $4445: $01 $bd $10
    ld bc, $10ed                                  ; $4448: $01 $ed $10
    ld bc, $111c                                  ; $444b: $01 $1c $11
    ld bc, $114c                                  ; $444e: $01 $4c $11
    ld bc, $1190                                  ; $4451: $01 $90 $11
    ld bc, $11e1                                  ; $4454: $01 $e1 $11
    ld bc, $120f                                  ; $4457: $01 $0f $12
    ld bc, $1243                                  ; $445a: $01 $43 $12
    ld bc, $1278                                  ; $445d: $01 $78 $12
    ld bc, $12b1                                  ; $4460: $01 $b1 $12
    ld bc, $12dd                                  ; $4463: $01 $dd $12
    ld bc, $1310                                  ; $4466: $01 $10 $13
    ld bc, $1345                                  ; $4469: $01 $45 $13
    ld bc, $1351                                  ; $446c: $01 $51 $13
    ld bc, $1369                                  ; $446f: $01 $69 $13
    ld bc, $1378                                  ; $4472: $01 $78 $13
    ld bc, $1393                                  ; $4475: $01 $93 $13
    ld bc, $13b9                                  ; $4478: $01 $b9 $13
    ld bc, $13c1                                  ; $447b: $01 $c1 $13
    ld bc, $13d2                                  ; $447e: $01 $d2 $13
    ld bc, $13d8                                  ; $4481: $01 $d8 $13
    ld bc, $1400                                  ; $4484: $01 $00 $14
    ld bc, $1423                                  ; $4487: $01 $23 $14
    ld bc, $1445                                  ; $448a: $01 $45 $14
    ld bc, $146c                                  ; $448d: $01 $6c $14
    ld bc, $1480                                  ; $4490: $01 $80 $14
    ld bc, $1489                                  ; $4493: $01 $89 $14
    ld bc, $14cd                                  ; $4496: $01 $cd $14
    ld bc, $14ec                                  ; $4499: $01 $ec $14
    ld bc, $1516                                  ; $449c: $01 $16 $15
    ld bc, $1521                                  ; $449f: $01 $21 $15
    ld bc, $153e                                  ; $44a2: $01 $3e $15
    ld bc, $154f                                  ; $44a5: $01 $4f $15
    ld bc, $1564                                  ; $44a8: $01 $64 $15
    ld bc, $156e                                  ; $44ab: $01 $6e $15
    ld bc, $1585                                  ; $44ae: $01 $85 $15
    ld bc, $1595                                  ; $44b1: $01 $95 $15
    ld bc, $15b5                                  ; $44b4: $01 $b5 $15
    ld bc, $15c4                                  ; $44b7: $01 $c4 $15
    ld bc, $15d9                                  ; $44ba: $01 $d9 $15
    ld bc, $15ef                                  ; $44bd: $01 $ef $15
    ld bc, $1622                                  ; $44c0: $01 $22 $16
    ld bc, $1636                                  ; $44c3: $01 $36 $16
    ld bc, $1645                                  ; $44c6: $01 $45 $16
    ld bc, $165b                                  ; $44c9: $01 $5b $16
    ld bc, $1676                                  ; $44cc: $01 $76 $16
    ld bc, $169f                                  ; $44cf: $01 $9f $16
    ld bc, $16a9                                  ; $44d2: $01 $a9 $16
    ld bc, $16c7                                  ; $44d5: $01 $c7 $16
    ld bc, $16d4                                  ; $44d8: $01 $d4 $16
    ld bc, $1711                                  ; $44db: $01 $11 $17
    ld bc, $172f                                  ; $44de: $01 $2f $17
    ld bc, $173d                                  ; $44e1: $01 $3d $17
    ld bc, $1756                                  ; $44e4: $01 $56 $17
    ld bc, $1760                                  ; $44e7: $01 $60 $17
    ld bc, $179a                                  ; $44ea: $01 $9a $17
    ld bc, $17ae                                  ; $44ed: $01 $ae $17
    ld bc, $17c4                                  ; $44f0: $01 $c4 $17
    ld bc, $17d9                                  ; $44f3: $01 $d9 $17
    ld bc, $17e4                                  ; $44f6: $01 $e4 $17
    ld bc, $1837                                  ; $44f9: $01 $37 $18
    ld bc, $1845                                  ; $44fc: $01 $45 $18
    ld bc, $1856                                  ; $44ff: $01 $56 $18
    ld bc, $1860                                  ; $4502: $01 $60 $18
    ld bc, $1867                                  ; $4505: $01 $67 $18
    ld bc, $1888                                  ; $4508: $01 $88 $18
    ld bc, $1893                                  ; $450b: $01 $93 $18
    ld bc, $189a                                  ; $450e: $01 $9a $18
    ld bc, $18a6                                  ; $4511: $01 $a6 $18
    ld bc, $18c1                                  ; $4514: $01 $c1 $18
    ld bc, $18c8                                  ; $4517: $01 $c8 $18
    ld bc, $18e7                                  ; $451a: $01 $e7 $18
    ld bc, $1903                                  ; $451d: $01 $03 $19
    ld bc, $1915                                  ; $4520: $01 $15 $19
    ld bc, $1936                                  ; $4523: $01 $36 $19
    ld bc, $1948                                  ; $4526: $01 $48 $19
    ld bc, $197a                                  ; $4529: $01 $7a $19
    ld bc, $1990                                  ; $452c: $01 $90 $19
    ld bc, $19c8                                  ; $452f: $01 $c8 $19
    ld bc, $19f3                                  ; $4532: $01 $f3 $19
    ld bc, $1a26                                  ; $4535: $01 $26 $1a
    ld bc, $1a68                                  ; $4538: $01 $68 $1a
    ld bc, $1a92                                  ; $453b: $01 $92 $1a
    ld bc, $1abd                                  ; $453e: $01 $bd $1a
    ld bc, $1b02                                  ; $4541: $01 $02 $1b
    ld bc, $1b2a                                  ; $4544: $01 $2a $1b
    ld bc, $1b79                                  ; $4547: $01 $79 $1b
    ld bc, $1b8b                                  ; $454a: $01 $8b $1b
    ld bc, $1bb1                                  ; $454d: $01 $b1 $1b
    ld bc, $1c77                                  ; $4550: $01 $77 $1c
    ld bc, $1ca3                                  ; $4553: $01 $a3 $1c
    ld bc, $1cb6                                  ; $4556: $01 $b6 $1c
    ld bc, $1cde                                  ; $4559: $01 $de $1c
    ld bc, $1d01                                  ; $455c: $01 $01 $1d
    ld bc, $1d15                                  ; $455f: $01 $15 $1d
    ld bc, $1d20                                  ; $4562: $01 $20 $1d
    ld bc, $1d51                                  ; $4565: $01 $51 $1d
    ld bc, $1d56                                  ; $4568: $01 $56 $1d
    ld bc, $1d64                                  ; $456b: $01 $64 $1d
    ld bc, $1da8                                  ; $456e: $01 $a8 $1d
    ld bc, $1dc7                                  ; $4571: $01 $c7 $1d
    ld bc, $1deb                                  ; $4574: $01 $eb $1d
    ld bc, $1df7                                  ; $4577: $01 $f7 $1d
    ld bc, $1e18                                  ; $457a: $01 $18 $1e
    ld bc, $1e3f                                  ; $457d: $01 $3f $1e
    ld bc, $1e55                                  ; $4580: $01 $55 $1e
    ld bc, $1e7f                                  ; $4583: $01 $7f $1e
    ld bc, $1e97                                  ; $4586: $01 $97 $1e
    ld bc, $1ead                                  ; $4589: $01 $ad $1e
    ld bc, $1ec1                                  ; $458c: $01 $c1 $1e
    ld bc, $1ee9                                  ; $458f: $01 $e9 $1e
    ld bc, $1efa                                  ; $4592: $01 $fa $1e
    ld bc, $1f1f                                  ; $4595: $01 $1f $1f
    ld bc, $1f46                                  ; $4598: $01 $46 $1f
    ld bc, $1f55                                  ; $459b: $01 $55 $1f
    ld bc, $1f88                                  ; $459e: $01 $88 $1f
    ld bc, $1f9f                                  ; $45a1: $01 $9f $1f
    ld bc, $1fa8                                  ; $45a4: $01 $a8 $1f
    ld bc, $1fe2                                  ; $45a7: $01 $e2 $1f
    ld bc, $1fe7                                  ; $45aa: $01 $e7 $1f
    ld bc, $2081                                  ; $45ad: $01 $81 $20
    ld bc, $208e                                  ; $45b0: $01 $8e $20
    ld bc, $209c                                  ; $45b3: $01 $9c $20
    ld bc, $20b8                                  ; $45b6: $01 $b8 $20
    ld bc, $20d7                                  ; $45b9: $01 $d7 $20
    ld bc, $210a                                  ; $45bc: $01 $0a $21
    ld bc, $2146                                  ; $45bf: $01 $46 $21
    ld bc, $216b                                  ; $45c2: $01 $6b $21
    ld bc, $2186                                  ; $45c5: $01 $86 $21
    ld bc, $21c4                                  ; $45c8: $01 $c4 $21
    ld bc, $2226                                  ; $45cb: $01 $26 $22
    ld bc, $224c                                  ; $45ce: $01 $4c $22
    ld bc, $2271                                  ; $45d1: $01 $71 $22
    ld bc, $2286                                  ; $45d4: $01 $86 $22
    ld bc, $229f                                  ; $45d7: $01 $9f $22
    ld bc, $22b9                                  ; $45da: $01 $b9 $22
    ld bc, $22da                                  ; $45dd: $01 $da $22
    ld bc, $22f3                                  ; $45e0: $01 $f3 $22
    ld bc, $2314                                  ; $45e3: $01 $14 $23
    ld bc, $2345                                  ; $45e6: $01 $45 $23
    ld bc, $236b                                  ; $45e9: $01 $6b $23
    ld bc, $2386                                  ; $45ec: $01 $86 $23
    ld bc, $23cb                                  ; $45ef: $01 $cb $23
    ld bc, $23fa                                  ; $45f2: $01 $fa $23
    ld bc, $244b                                  ; $45f5: $01 $4b $24
    ld bc, $247b                                  ; $45f8: $01 $7b $24
    ld bc, $24a3                                  ; $45fb: $01 $a3 $24
    ld bc, $24cb                                  ; $45fe: $01 $cb $24
    ld bc, $2503                                  ; $4601: $01 $03 $25
    ld bc, $251f                                  ; $4604: $01 $1f $25
    ld bc, $253d                                  ; $4607: $01 $3d $25
    ld bc, $255f                                  ; $460a: $01 $5f $25
    ld bc, $2589                                  ; $460d: $01 $89 $25
    ld bc, $259c                                  ; $4610: $01 $9c $25
    ld bc, $25b2                                  ; $4613: $01 $b2 $25
    ld bc, $25c3                                  ; $4616: $01 $c3 $25
    ld bc, $25f2                                  ; $4619: $01 $f2 $25
    ld bc, $262d                                  ; $461c: $01 $2d $26
    ld bc, $2644                                  ; $461f: $01 $44 $26
    ld bc, $2663                                  ; $4622: $01 $63 $26
    ld bc, $268e                                  ; $4625: $01 $8e $26
    ld bc, $26b1                                  ; $4628: $01 $b1 $26
    ld bc, $26fd                                  ; $462b: $01 $fd $26
    ld bc, $2710                                  ; $462e: $01 $10 $27
    ld bc, $2746                                  ; $4631: $01 $46 $27
    ld bc, $2770                                  ; $4634: $01 $70 $27
    ld bc, $2796                                  ; $4637: $01 $96 $27
    ld bc, $27c4                                  ; $463a: $01 $c4 $27
    ld bc, $27dc                                  ; $463d: $01 $dc $27
    ld bc, $280b                                  ; $4640: $01 $0b $28
    ld bc, $2824                                  ; $4643: $01 $24 $28
    ld bc, $2861                                  ; $4646: $01 $61 $28
    ld bc, $2878                                  ; $4649: $01 $78 $28
    ld bc, $28b4                                  ; $464c: $01 $b4 $28
    ld bc, $28d8                                  ; $464f: $01 $d8 $28
    ld bc, $28e9                                  ; $4652: $01 $e9 $28
    ld bc, $2902                                  ; $4655: $01 $02 $29
    ld bc, $292a                                  ; $4658: $01 $2a $29
    ld bc, $294a                                  ; $465b: $01 $4a $29
    ld bc, $2972                                  ; $465e: $01 $72 $29
    ld bc, $29a3                                  ; $4661: $01 $a3 $29
    ld bc, $29c6                                  ; $4664: $01 $c6 $29
    ld bc, $29eb                                  ; $4667: $01 $eb $29
    ld bc, $2a27                                  ; $466a: $01 $27 $2a
    ld bc, $2a5e                                  ; $466d: $01 $5e $2a
    ld bc, $2a92                                  ; $4670: $01 $92 $2a
    ld bc, $2ab4                                  ; $4673: $01 $b4 $2a
    ld bc, $2ad3                                  ; $4676: $01 $d3 $2a
    ld bc, $2af6                                  ; $4679: $01 $f6 $2a
    ld bc, $2b14                                  ; $467c: $01 $14 $2b
    ld bc, $2b48                                  ; $467f: $01 $48 $2b
    ld bc, $2b6b                                  ; $4682: $01 $6b $2b
    ld bc, $2ba0                                  ; $4685: $01 $a0 $2b
    ld bc, $2bb9                                  ; $4688: $01 $b9 $2b
    ld bc, $2bda                                  ; $468b: $01 $da $2b
    ld bc, $2c09                                  ; $468e: $01 $09 $2c
    ld bc, $2c31                                  ; $4691: $01 $31 $2c
    ld bc, $2c38                                  ; $4694: $01 $38 $2c
    ld bc, $2c6d                                  ; $4697: $01 $6d $2c
    ld bc, $2c7b                                  ; $469a: $01 $7b $2c
    ld bc, $2c98                                  ; $469d: $01 $98 $2c
    ld bc, $2cab                                  ; $46a0: $01 $ab $2c
    ld bc, $2cb5                                  ; $46a3: $01 $b5 $2c
    ld bc, $2cc6                                  ; $46a6: $01 $c6 $2c
    ld bc, $2cd7                                  ; $46a9: $01 $d7 $2c
    ld bc, $2d05                                  ; $46ac: $01 $05 $2d
    ld bc, $2d4f                                  ; $46af: $01 $4f $2d
    ld bc, $2d55                                  ; $46b2: $01 $55 $2d
    ld bc, $2da9                                  ; $46b5: $01 $a9 $2d
    ld bc, $2db7                                  ; $46b8: $01 $b7 $2d
    ld bc, $2e11                                  ; $46bb: $01 $11 $2e
    ld bc, $2e33                                  ; $46be: $01 $33 $2e
    ld bc, $2e47                                  ; $46c1: $01 $47 $2e
    ld bc, $2e6e                                  ; $46c4: $01 $6e $2e
    ld bc, $2eb9                                  ; $46c7: $01 $b9 $2e
    ld bc, $2ef1                                  ; $46ca: $01 $f1 $2e
    ld bc, $2eff                                  ; $46cd: $01 $ff $2e
    ld bc, $2f14                                  ; $46d0: $01 $14 $2f
    ld bc, $2f2f                                  ; $46d3: $01 $2f $2f
    ld bc, $2f64                                  ; $46d6: $01 $64 $2f
    ld bc, $2f7f                                  ; $46d9: $01 $7f $2f
    ld bc, $2f92                                  ; $46dc: $01 $92 $2f
    ld bc, $2f9f                                  ; $46df: $01 $9f $2f
    ld bc, $2fd5                                  ; $46e2: $01 $d5 $2f
    ld bc, $3013                                  ; $46e5: $01 $13 $30
    ld bc, $302d                                  ; $46e8: $01 $2d $30
    ld bc, $3064                                  ; $46eb: $01 $64 $30
    ld bc, $30a1                                  ; $46ee: $01 $a1 $30
    ld bc, $30bc                                  ; $46f1: $01 $bc $30
    ld bc, $30df                                  ; $46f4: $01 $df $30
    ld bc, $30f2                                  ; $46f7: $01 $f2 $30
    ld bc, $3111                                  ; $46fa: $01 $11 $31
    ld bc, $3125                                  ; $46fd: $01 $25 $31
    ld bc, $3139                                  ; $4700: $01 $39 $31
    ld bc, $3151                                  ; $4703: $01 $51 $31
    ld bc, $3178                                  ; $4706: $01 $78 $31
    ld bc, $31ce                                  ; $4709: $01 $ce $31
    ld bc, $31de                                  ; $470c: $01 $de $31
    ld bc, $323e                                  ; $470f: $01 $3e $32
    ld bc, $327c                                  ; $4712: $01 $7c $32
    ld bc, $329f                                  ; $4715: $01 $9f $32
    ld bc, $32d0                                  ; $4718: $01 $d0 $32
    ld bc, $3308                                  ; $471b: $01 $08 $33
    ld bc, $3353                                  ; $471e: $01 $53 $33
    ld bc, $3388                                  ; $4721: $01 $88 $33
    ld bc, $339a                                  ; $4724: $01 $9a $33
    ld bc, $33a8                                  ; $4727: $01 $a8 $33
    ld bc, $33c5                                  ; $472a: $01 $c5 $33
    ld bc, $33dc                                  ; $472d: $01 $dc $33
    ld bc, $33e5                                  ; $4730: $01 $e5 $33
    ld bc, $33f3                                  ; $4733: $01 $f3 $33
    ld bc, $3409                                  ; $4736: $01 $09 $34
    ld bc, $341a                                  ; $4739: $01 $1a $34
    ld bc, $3442                                  ; $473c: $01 $42 $34
    ld bc, $3454                                  ; $473f: $01 $54 $34
    ld bc, $3466                                  ; $4742: $01 $66 $34
    ld bc, $347e                                  ; $4745: $01 $7e $34
    ld bc, $34e7                                  ; $4748: $01 $e7 $34
    ld bc, $34f9                                  ; $474b: $01 $f9 $34
    ld bc, $3514                                  ; $474e: $01 $14 $35
    ld bc, $3548                                  ; $4751: $01 $48 $35
    ld bc, $3561                                  ; $4754: $01 $61 $35
    ld bc, $3599                                  ; $4757: $01 $99 $35
    ld bc, $35ca                                  ; $475a: $01 $ca $35
    ld bc, $35eb                                  ; $475d: $01 $eb $35
    ld bc, $3642                                  ; $4760: $01 $42 $36
    ld bc, $3649                                  ; $4763: $01 $49 $36
    ld bc, $3668                                  ; $4766: $01 $68 $36
    ld bc, $3674                                  ; $4769: $01 $74 $36
    ld bc, $3694                                  ; $476c: $01 $94 $36
    ld bc, $36bc                                  ; $476f: $01 $bc $36
    ld bc, $36e7                                  ; $4772: $01 $e7 $36
    ld bc, $3716                                  ; $4775: $01 $16 $37
    ld bc, $3733                                  ; $4778: $01 $33 $37
    ld bc, $3767                                  ; $477b: $01 $67 $37
    ld bc, $3779                                  ; $477e: $01 $79 $37
    ld bc, $378b                                  ; $4781: $01 $8b $37
    ld bc, $3799                                  ; $4784: $01 $99 $37
    ld bc, $37af                                  ; $4787: $01 $af $37
    ld bc, $37dd                                  ; $478a: $01 $dd $37
    ld bc, $3846                                  ; $478d: $01 $46 $38
    ld bc, $3880                                  ; $4790: $01 $80 $38
    ld bc, $38ad                                  ; $4793: $01 $ad $38
    ld bc, $38d9                                  ; $4796: $01 $d9 $38
    ld bc, $3909                                  ; $4799: $01 $09 $39
    ld bc, $3925                                  ; $479c: $01 $25 $39
    ld bc, $3943                                  ; $479f: $01 $43 $39
    ld bc, $396f                                  ; $47a2: $01 $6f $39
    ld bc, $398c                                  ; $47a5: $01 $8c $39
    ld bc, $3993                                  ; $47a8: $01 $93 $39
    ld bc, $39a6                                  ; $47ab: $01 $a6 $39
    ld bc, $39bb                                  ; $47ae: $01 $bb $39
    ld bc, $39da                                  ; $47b1: $01 $da $39
    ld bc, $39f8                                  ; $47b4: $01 $f8 $39
    ld bc, $3a0f                                  ; $47b7: $01 $0f $3a
    ld bc, $3a29                                  ; $47ba: $01 $29 $3a
    ld bc, $3a4e                                  ; $47bd: $01 $4e $3a
    ld bc, $3a72                                  ; $47c0: $01 $72 $3a
    ld bc, $3a88                                  ; $47c3: $01 $88 $3a
    ld bc, $3aad                                  ; $47c6: $01 $ad $3a
    ld bc, $3ac4                                  ; $47c9: $01 $c4 $3a
    ld bc, $3ad8                                  ; $47cc: $01 $d8 $3a
    ld bc, $3af5                                  ; $47cf: $01 $f5 $3a
    ld bc, $3b0b                                  ; $47d2: $01 $0b $3b
    ld bc, $3b25                                  ; $47d5: $01 $25 $3b
    ld bc, $3b3d                                  ; $47d8: $01 $3d $3b
    ld bc, $3b5a                                  ; $47db: $01 $5a $3b
    ld bc, $3b7c                                  ; $47de: $01 $7c $3b
    ld bc, $3ba6                                  ; $47e1: $01 $a6 $3b
    ld bc, $3bd8                                  ; $47e4: $01 $d8 $3b
    ld bc, $3c06                                  ; $47e7: $01 $06 $3c
    ld bc, $3c39                                  ; $47ea: $01 $39 $3c
    ld bc, $3c4d                                  ; $47ed: $01 $4d $3c
    ld bc, $3c71                                  ; $47f0: $01 $71 $3c
    ld bc, $3c8c                                  ; $47f3: $01 $8c $3c
    ld bc, $3c9c                                  ; $47f6: $01 $9c $3c
    ld bc, $3cc8                                  ; $47f9: $01 $c8 $3c
    ld bc, $3ce7                                  ; $47fc: $01 $e7 $3c
    ld bc, $3d02                                  ; $47ff: $01 $02 $3d
    ld bc, $3d07                                  ; $4802: $01 $07 $3d
    ld bc, $3d0c                                  ; $4805: $01 $0c $3d
    ld bc, $3d11                                  ; $4808: $01 $11 $3d
    ld bc, $3d22                                  ; $480b: $01 $22 $3d
    ld bc, $3d2a                                  ; $480e: $01 $2a $3d
    ld bc, $3d6c                                  ; $4811: $01 $6c $3d
    ld bc, $3d8d                                  ; $4814: $01 $8d $3d
    ld bc, $3d9c                                  ; $4817: $01 $9c $3d
    ld bc, $3da5                                  ; $481a: $01 $a5 $3d
    ld bc, $3dcc                                  ; $481d: $01 $cc $3d
    ld bc, $3de7                                  ; $4820: $01 $e7 $3d
    ld bc, $3df6                                  ; $4823: $01 $f6 $3d
    ld bc, $3dff                                  ; $4826: $01 $ff $3d
    ld bc, $3e20                                  ; $4829: $01 $20 $3e
    ld bc, $3e34                                  ; $482c: $01 $34 $3e
    ld bc, $3e53                                  ; $482f: $01 $53 $3e
    ld bc, $3e70                                  ; $4832: $01 $70 $3e
    ld bc, $3e7e                                  ; $4835: $01 $7e $3e
    ld bc, $3eac                                  ; $4838: $01 $ac $3e
    ld bc, $3eb5                                  ; $483b: $01 $b5 $3e
    ld bc, $3ed7                                  ; $483e: $01 $d7 $3e
    ld bc, $3edf                                  ; $4841: $01 $df $3e
    ld bc, $3efc                                  ; $4844: $01 $fc $3e
    ld bc, $3f0f                                  ; $4847: $01 $0f $3f
    ld bc, $3f1d                                  ; $484a: $01 $1d $3f
    ld bc, $3f82                                  ; $484d: $01 $82 $3f
    ld bc, $3f8c                                  ; $4850: $01 $8c $3f
    ld bc, $3f91                                  ; $4853: $01 $91 $3f
    ld bc, $3f9d                                  ; $4856: $01 $9d $3f
    ld [bc], a                                    ; $4859: $02
    ld bc, $0200                                  ; $485a: $01 $00 $02
    cp h                                          ; $485d: $bc
    nop                                           ; $485e: $00
    ld [bc], a                                    ; $485f: $02
    rst $18                                       ; $4860: $df
    nop                                           ; $4861: $00
    ld [bc], a                                    ; $4862: $02
    or $00                                        ; $4863: $f6 $00
    ld [bc], a                                    ; $4865: $02
    inc b                                         ; $4866: $04
    ld bc, $0c02                                  ; $4867: $01 $02 $0c
    ld bc, $1902                                  ; $486a: $01 $02 $19
    ld bc, $2d02                                  ; $486d: $01 $02 $2d
    ld bc, $4102                                  ; $4870: $01 $02 $41
    ld bc, $5f02                                  ; $4873: $01 $02 $5f
    ld bc, $7d02                                  ; $4876: $01 $02 $7d
    ld bc, $b702                                  ; $4879: $01 $02 $b7
    ld bc, $ed02                                  ; $487c: $01 $02 $ed
    ld bc, $0d02                                  ; $487f: $01 $02 $0d
    ld [bc], a                                    ; $4882: $02
    ld [bc], a                                    ; $4883: $02
    ld l, h                                       ; $4884: $6c
    ld [bc], a                                    ; $4885: $02
    ld [bc], a                                    ; $4886: $02
    ld [hl], d                                    ; $4887: $72
    ld [bc], a                                    ; $4888: $02
    ld [bc], a                                    ; $4889: $02
    xor e                                         ; $488a: $ab
    ld [bc], a                                    ; $488b: $02
    ld [bc], a                                    ; $488c: $02
    cp a                                          ; $488d: $bf
    ld [bc], a                                    ; $488e: $02
    ld [bc], a                                    ; $488f: $02
    reti                                          ; $4890: $d9


    ld [bc], a                                    ; $4891: $02
    ld [bc], a                                    ; $4892: $02
    inc de                                        ; $4893: $13
    inc bc                                        ; $4894: $03
    ld [bc], a                                    ; $4895: $02
    dec h                                         ; $4896: $25
    inc bc                                        ; $4897: $03
    ld [bc], a                                    ; $4898: $02
    add hl, sp                                    ; $4899: $39
    inc bc                                        ; $489a: $03
    ld [bc], a                                    ; $489b: $02
    ld e, c                                       ; $489c: $59
    inc bc                                        ; $489d: $03
    ld [bc], a                                    ; $489e: $02
    ld h, [hl]                                    ; $489f: $66
    inc bc                                        ; $48a0: $03
    ld [bc], a                                    ; $48a1: $02
    ld [hl], l                                    ; $48a2: $75
    inc bc                                        ; $48a3: $03
    ld [bc], a                                    ; $48a4: $02
    adc c                                         ; $48a5: $89
    inc bc                                        ; $48a6: $03
    ld [bc], a                                    ; $48a7: $02
    sub h                                         ; $48a8: $94
    inc bc                                        ; $48a9: $03
    ld [bc], a                                    ; $48aa: $02
    cp [hl]                                       ; $48ab: $be
    inc bc                                        ; $48ac: $03
    ld [bc], a                                    ; $48ad: $02
    jp c, Jump_000_0203                           ; $48ae: $da $03 $02

    db $ec                                        ; $48b1: $ec
    inc bc                                        ; $48b2: $03
    ld [bc], a                                    ; $48b3: $02
    cp $03                                        ; $48b4: $fe $03
    ld [bc], a                                    ; $48b6: $02
    ld a, [de]                                    ; $48b7: $1a
    inc b                                         ; $48b8: $04
    ld [bc], a                                    ; $48b9: $02
    ld a, [hl+]                                   ; $48ba: $2a
    inc b                                         ; $48bb: $04
    ld [bc], a                                    ; $48bc: $02
    ld a, $04                                     ; $48bd: $3e $04
    ld [bc], a                                    ; $48bf: $02
    ld e, e                                       ; $48c0: $5b
    inc b                                         ; $48c1: $04
    ld [bc], a                                    ; $48c2: $02
    ld [hl], d                                    ; $48c3: $72
    inc b                                         ; $48c4: $04
    ld [bc], a                                    ; $48c5: $02
    jp nc, $0204                                  ; $48c6: $d2 $04 $02

    cpl                                           ; $48c9: $2f
    dec b                                         ; $48ca: $05
    ld [bc], a                                    ; $48cb: $02
    dec sp                                        ; $48cc: $3b
    dec b                                         ; $48cd: $05
    ld [bc], a                                    ; $48ce: $02
    ld a, l                                       ; $48cf: $7d
    dec b                                         ; $48d0: $05
    ld [bc], a                                    ; $48d1: $02
    adc e                                         ; $48d2: $8b
    dec b                                         ; $48d3: $05
    ld [bc], a                                    ; $48d4: $02
    sbc $05                                       ; $48d5: $de $05
    ld [bc], a                                    ; $48d7: $02
    ld a, [bc]                                    ; $48d8: $0a
    ld b, $02                                     ; $48d9: $06 $02
    inc [hl]                                      ; $48db: $34
    ld b, $02                                     ; $48dc: $06 $02
    ld l, c                                       ; $48de: $69
    ld b, $02                                     ; $48df: $06 $02
    add [hl]                                      ; $48e1: $86
    ld b, $02                                     ; $48e2: $06 $02
    sbc h                                         ; $48e4: $9c
    ld b, $02                                     ; $48e5: $06 $02
    ldh [rTMA], a                                 ; $48e7: $e0 $06
    ld [bc], a                                    ; $48e9: $02
    push hl                                       ; $48ea: $e5
    ld b, $02                                     ; $48eb: $06 $02
    ld a, [c]                                     ; $48ed: $f2
    ld b, $02                                     ; $48ee: $06 $02
    ld [de], a                                    ; $48f0: $12
    rlca                                          ; $48f1: $07
    ld [bc], a                                    ; $48f2: $02
    add hl, hl                                    ; $48f3: $29
    rlca                                          ; $48f4: $07
    ld [bc], a                                    ; $48f5: $02
    ld b, h                                       ; $48f6: $44
    rlca                                          ; $48f7: $07
    ld [bc], a                                    ; $48f8: $02
    ld [hl], c                                    ; $48f9: $71
    rlca                                          ; $48fa: $07
    ld [bc], a                                    ; $48fb: $02
    adc c                                         ; $48fc: $89
    rlca                                          ; $48fd: $07
    ld [bc], a                                    ; $48fe: $02
    sub d                                         ; $48ff: $92
    rlca                                          ; $4900: $07
    ld [bc], a                                    ; $4901: $02
    sbc l                                         ; $4902: $9d
    rlca                                          ; $4903: $07
    ld [bc], a                                    ; $4904: $02
    cp c                                          ; $4905: $b9
    rlca                                          ; $4906: $07
    ld [bc], a                                    ; $4907: $02
    call Call_000_0207                            ; $4908: $cd $07 $02
    jp c, Jump_000_0207                           ; $490b: $da $07 $02

    ld [$0207], a                                 ; $490e: $ea $07 $02
    ld h, $08                                     ; $4911: $26 $08
    ld [bc], a                                    ; $4913: $02
    adc a                                         ; $4914: $8f
    ld [$9e02], sp                                ; $4915: $08 $02 $9e
    ld [$0502], sp                                ; $4918: $08 $02 $05
    add hl, bc                                    ; $491b: $09
    ld [bc], a                                    ; $491c: $02
    cpl                                           ; $491d: $2f
    add hl, bc                                    ; $491e: $09
    ld [bc], a                                    ; $491f: $02
    ld h, [hl]                                    ; $4920: $66
    add hl, bc                                    ; $4921: $09
    ld [bc], a                                    ; $4922: $02
    ld [hl], h                                    ; $4923: $74
    add hl, bc                                    ; $4924: $09
    ld [bc], a                                    ; $4925: $02
    jp nc, Jump_000_0209                          ; $4926: $d2 $09 $02

    db $db                                        ; $4929: $db
    add hl, bc                                    ; $492a: $09
    ld [bc], a                                    ; $492b: $02
    inc b                                         ; $492c: $04
    ld a, [bc]                                    ; $492d: $0a
    ld [bc], a                                    ; $492e: $02

Jump_053_492f:
    jr nz, jr_053_493b                            ; $492f: $20 $0a

    ld [bc], a                                    ; $4931: $02
    ld d, [hl]                                    ; $4932: $56
    ld a, [bc]                                    ; $4933: $0a
    ld [bc], a                                    ; $4934: $02
    cp b                                          ; $4935: $b8
    ld a, [bc]                                    ; $4936: $0a
    ld [bc], a                                    ; $4937: $02
    reti                                          ; $4938: $d9


    ld a, [bc]                                    ; $4939: $0a
    ld [bc], a                                    ; $493a: $02

jr_053_493b:
    inc bc                                        ; $493b: $03
    dec bc                                        ; $493c: $0b
    ld [bc], a                                    ; $493d: $02
    ld [hl-], a                                   ; $493e: $32
    dec bc                                        ; $493f: $0b
    ld [bc], a                                    ; $4940: $02
    ld c, l                                       ; $4941: $4d
    dec bc                                        ; $4942: $0b
    ld [bc], a                                    ; $4943: $02
    ld e, [hl]                                    ; $4944: $5e
    dec bc                                        ; $4945: $0b
    ld [bc], a                                    ; $4946: $02
    ld l, a                                       ; $4947: $6f
    dec bc                                        ; $4948: $0b
    ld [bc], a                                    ; $4949: $02
    sub l                                         ; $494a: $95
    dec bc                                        ; $494b: $0b
    ld [bc], a                                    ; $494c: $02
    xor l                                         ; $494d: $ad
    dec bc                                        ; $494e: $0b
    ld [bc], a                                    ; $494f: $02
    pop bc                                        ; $4950: $c1
    dec bc                                        ; $4951: $0b
    ld [bc], a                                    ; $4952: $02
    db $dd                                        ; $4953: $dd
    dec bc                                        ; $4954: $0b
    ld [bc], a                                    ; $4955: $02
    ld d, c                                       ; $4956: $51
    inc c                                         ; $4957: $0c
    ld [bc], a                                    ; $4958: $02
    ld e, c                                       ; $4959: $59
    inc c                                         ; $495a: $0c
    ld [bc], a                                    ; $495b: $02
    sub b                                         ; $495c: $90
    inc c                                         ; $495d: $0c
    ld [bc], a                                    ; $495e: $02
    sbc a                                         ; $495f: $9f
    inc c                                         ; $4960: $0c
    ld [bc], a                                    ; $4961: $02
    pop bc                                        ; $4962: $c1
    inc c                                         ; $4963: $0c
    ld [bc], a                                    ; $4964: $02
    rst $28                                       ; $4965: $ef
    inc c                                         ; $4966: $0c
    ld [bc], a                                    ; $4967: $02
    ld a, [c]                                     ; $4968: $f2
    inc c                                         ; $4969: $0c
    ld [bc], a                                    ; $496a: $02
    ld [bc], a                                    ; $496b: $02
    dec c                                         ; $496c: $0d
    ld [bc], a                                    ; $496d: $02
    ld b, b                                       ; $496e: $40
    dec c                                         ; $496f: $0d
    ld [bc], a                                    ; $4970: $02
    ld c, a                                       ; $4971: $4f
    dec c                                         ; $4972: $0d
    ld [bc], a                                    ; $4973: $02
    ld [hl], d                                    ; $4974: $72
    dec c                                         ; $4975: $0d
    ld [bc], a                                    ; $4976: $02
    sbc d                                         ; $4977: $9a
    dec c                                         ; $4978: $0d
    ld [bc], a                                    ; $4979: $02
    db $ed                                        ; $497a: $ed
    dec c                                         ; $497b: $0d
    ld [bc], a                                    ; $497c: $02
    ld [$020e], sp                                ; $497d: $08 $0e $02
    ld a, [de]                                    ; $4980: $1a
    ld c, $02                                     ; $4981: $0e $02
    ld h, $0e                                     ; $4983: $26 $0e
    ld [bc], a                                    ; $4985: $02
    inc sp                                        ; $4986: $33
    ld c, $02                                     ; $4987: $0e $02
    ld c, e                                       ; $4989: $4b
    ld c, $02                                     ; $498a: $0e $02
    ld h, c                                       ; $498c: $61
    ld c, $02                                     ; $498d: $0e $02
    ld l, e                                       ; $498f: $6b
    ld c, $02                                     ; $4990: $0e $02
    ld l, a                                       ; $4992: $6f
    ld c, $02                                     ; $4993: $0e $02
    sub c                                         ; $4995: $91
    ld c, $02                                     ; $4996: $0e $02
    or d                                          ; $4998: $b2
    ld c, $02                                     ; $4999: $0e $02
    rrc [hl]                                      ; $499b: $cb $0e
    ld [bc], a                                    ; $499d: $02
    sbc $0e                                       ; $499e: $de $0e
    ld [bc], a                                    ; $49a0: $02
    push af                                       ; $49a1: $f5
    ld c, $02                                     ; $49a2: $0e $02
    db $10                                        ; $49a4: $10
    rrca                                          ; $49a5: $0f
    ld [bc], a                                    ; $49a6: $02
    dec sp                                        ; $49a7: $3b
    rrca                                          ; $49a8: $0f
    ld [bc], a                                    ; $49a9: $02
    ld d, d                                       ; $49aa: $52
    rrca                                          ; $49ab: $0f
    ld [bc], a                                    ; $49ac: $02
    ld l, a                                       ; $49ad: $6f
    rrca                                          ; $49ae: $0f
    ld [bc], a                                    ; $49af: $02
    add d                                         ; $49b0: $82
    rrca                                          ; $49b1: $0f
    ld [bc], a                                    ; $49b2: $02
    sbc a                                         ; $49b3: $9f
    rrca                                          ; $49b4: $0f
    ld [bc], a                                    ; $49b5: $02
    or a                                          ; $49b6: $b7
    rrca                                          ; $49b7: $0f
    ld [bc], a                                    ; $49b8: $02
    ret nc                                        ; $49b9: $d0

    rrca                                          ; $49ba: $0f
    ld [bc], a                                    ; $49bb: $02
    jp hl                                         ; $49bc: $e9


    rrca                                          ; $49bd: $0f
    ld [bc], a                                    ; $49be: $02
    rst $30                                       ; $49bf: $f7
    rrca                                          ; $49c0: $0f
    ld [bc], a                                    ; $49c1: $02
    ld h, $10                                     ; $49c2: $26 $10
    ld [bc], a                                    ; $49c4: $02
    ld [hl], a                                    ; $49c5: $77
    db $10                                        ; $49c6: $10
    ld [bc], a                                    ; $49c7: $02
    adc d                                         ; $49c8: $8a
    db $10                                        ; $49c9: $10
    ld [bc], a                                    ; $49ca: $02
    xor d                                         ; $49cb: $aa
    db $10                                        ; $49cc: $10
    ld [bc], a                                    ; $49cd: $02
    call Call_000_0210                            ; $49ce: $cd $10 $02
    db $db                                        ; $49d1: $db
    db $10                                        ; $49d2: $10
    ld [bc], a                                    ; $49d3: $02
    dec de                                        ; $49d4: $1b
    ld de, $4b02                                  ; $49d5: $11 $02 $4b
    ld de, $8902                                  ; $49d8: $11 $02 $89
    ld de, $ce02                                  ; $49db: $11 $02 $ce
    ld de, $fc02                                  ; $49de: $11 $02 $fc
    ld de, $1002                                  ; $49e1: $11 $02 $10
    ld [de], a                                    ; $49e4: $12
    ld [bc], a                                    ; $49e5: $02
    ld sp, $0212                                  ; $49e6: $31 $12 $02
    dec a                                         ; $49e9: $3d
    ld [de], a                                    ; $49ea: $12
    ld [bc], a                                    ; $49eb: $02
    halt                                          ; $49ec: $76
    ld [de], a                                    ; $49ed: $12
    ld [bc], a                                    ; $49ee: $02
    and d                                         ; $49ef: $a2
    ld [de], a                                    ; $49f0: $12
    ld [bc], a                                    ; $49f1: $02
    call nc, $0212                                ; $49f2: $d4 $12 $02
    db $e4                                        ; $49f5: $e4
    ld [de], a                                    ; $49f6: $12
    ld [bc], a                                    ; $49f7: $02
    ld a, [$0212]                                 ; $49f8: $fa $12 $02
    ld [bc], a                                    ; $49fb: $02
    inc de                                        ; $49fc: $13
    ld [bc], a                                    ; $49fd: $02
    ld a, [de]                                    ; $49fe: $1a
    inc de                                        ; $49ff: $13
    ld [bc], a                                    ; $4a00: $02
    dec sp                                        ; $4a01: $3b
    inc de                                        ; $4a02: $13
    ld [bc], a                                    ; $4a03: $02
    ld c, l                                       ; $4a04: $4d
    inc de                                        ; $4a05: $13
    ld [bc], a                                    ; $4a06: $02
    sub e                                         ; $4a07: $93
    inc de                                        ; $4a08: $13
    ld [bc], a                                    ; $4a09: $02
    cp c                                          ; $4a0a: $b9
    inc de                                        ; $4a0b: $13
    ld [bc], a                                    ; $4a0c: $02
    jp hl                                         ; $4a0d: $e9


    inc de                                        ; $4a0e: $13
    ld [bc], a                                    ; $4a0f: $02
    inc b                                         ; $4a10: $04
    inc d                                         ; $4a11: $14
    ld [bc], a                                    ; $4a12: $02
    jr c, jr_053_4a29                             ; $4a13: $38 $14

    ld [bc], a                                    ; $4a15: $02
    ld e, e                                       ; $4a16: $5b
    inc d                                         ; $4a17: $14
    ld [bc], a                                    ; $4a18: $02
    adc d                                         ; $4a19: $8a
    inc d                                         ; $4a1a: $14
    ld [bc], a                                    ; $4a1b: $02
    ret nz                                        ; $4a1c: $c0

    inc d                                         ; $4a1d: $14
    ld [bc], a                                    ; $4a1e: $02
    pop hl                                        ; $4a1f: $e1
    inc d                                         ; $4a20: $14
    ld [bc], a                                    ; $4a21: $02
    cp $14                                        ; $4a22: $fe $14
    ld [bc], a                                    ; $4a24: $02
    ld d, b                                       ; $4a25: $50
    dec d                                         ; $4a26: $15
    ld [bc], a                                    ; $4a27: $02
    add c                                         ; $4a28: $81

jr_053_4a29:
    dec d                                         ; $4a29: $15
    ld [bc], a                                    ; $4a2a: $02
    sub h                                         ; $4a2b: $94
    dec d                                         ; $4a2c: $15
    ld [bc], a                                    ; $4a2d: $02
    cp a                                          ; $4a2e: $bf
    dec d                                         ; $4a2f: $15
    ld [bc], a                                    ; $4a30: $02
    sbc $15                                       ; $4a31: $de $15
    ld [bc], a                                    ; $4a33: $02
    dec c                                         ; $4a34: $0d
    ld d, $02                                     ; $4a35: $16 $02
    dec hl                                        ; $4a37: $2b
    ld d, $02                                     ; $4a38: $16 $02
    ld a, $16                                     ; $4a3a: $3e $16
    ld [bc], a                                    ; $4a3c: $02
    ld d, a                                       ; $4a3d: $57
    ld d, $02                                     ; $4a3e: $16 $02
    ld a, a                                       ; $4a40: $7f
    ld d, $02                                     ; $4a41: $16 $02
    sub h                                         ; $4a43: $94
    ld d, $02                                     ; $4a44: $16 $02
    db $db                                        ; $4a46: $db
    ld d, $02                                     ; $4a47: $16 $02
    rst $30                                       ; $4a49: $f7
    ld d, $02                                     ; $4a4a: $16 $02
    ld b, e                                       ; $4a4c: $43
    rla                                           ; $4a4d: $17
    ld [bc], a                                    ; $4a4e: $02
    ld h, d                                       ; $4a4f: $62
    rla                                           ; $4a50: $17
    ld [bc], a                                    ; $4a51: $02
    add c                                         ; $4a52: $81
    rla                                           ; $4a53: $17
    ld [bc], a                                    ; $4a54: $02
    and d                                         ; $4a55: $a2
    rla                                           ; $4a56: $17
    ld [bc], a                                    ; $4a57: $02
    or e                                          ; $4a58: $b3
    rla                                           ; $4a59: $17
    ld [bc], a                                    ; $4a5a: $02
    rst $00                                       ; $4a5b: $c7
    rla                                           ; $4a5c: $17
    ld [bc], a                                    ; $4a5d: $02
    db $fc                                        ; $4a5e: $fc
    rla                                           ; $4a5f: $17
    ld [bc], a                                    ; $4a60: $02
    rla                                           ; $4a61: $17
    jr @+$04                                      ; $4a62: $18 $02

    dec l                                         ; $4a64: $2d
    jr @+$04                                      ; $4a65: $18 $02

    ld d, h                                       ; $4a67: $54
    jr @+$04                                      ; $4a68: $18 $02

    ld a, h                                       ; $4a6a: $7c
    jr @+$04                                      ; $4a6b: $18 $02

    sub c                                         ; $4a6d: $91
    jr @+$04                                      ; $4a6e: $18 $02

    and a                                         ; $4a70: $a7
    jr @+$04                                      ; $4a71: $18 $02

    cp e                                          ; $4a73: $bb
    jr @+$04                                      ; $4a74: $18 $02

    call nz, $0218                                ; $4a76: $c4 $18 $02
    db $d3                                        ; $4a79: $d3
    jr jr_053_4a7e                                ; $4a7a: $18 $02

    ldh [rNR23], a                                ; $4a7c: $e0 $18

jr_053_4a7e:
    ld [bc], a                                    ; $4a7e: $02
    ldh a, [rNR23]                                ; $4a7f: $f0 $18
    ld [bc], a                                    ; $4a81: $02
    inc bc                                        ; $4a82: $03
    add hl, de                                    ; $4a83: $19
    ld [bc], a                                    ; $4a84: $02
    ld hl, $0219                                  ; $4a85: $21 $19 $02
    dec h                                         ; $4a88: $25
    add hl, de                                    ; $4a89: $19
    ld [bc], a                                    ; $4a8a: $02
    dec sp                                        ; $4a8b: $3b
    add hl, de                                    ; $4a8c: $19
    ld [bc], a                                    ; $4a8d: $02
    ld d, l                                       ; $4a8e: $55
    add hl, de                                    ; $4a8f: $19
    ld [bc], a                                    ; $4a90: $02
    ld a, l                                       ; $4a91: $7d
    add hl, de                                    ; $4a92: $19
    ld [bc], a                                    ; $4a93: $02
    add $19                                       ; $4a94: $c6 $19
    ld [bc], a                                    ; $4a96: $02
    di                                            ; $4a97: $f3
    add hl, de                                    ; $4a98: $19
    ld [bc], a                                    ; $4a99: $02
    rlca                                          ; $4a9a: $07
    ld a, [de]                                    ; $4a9b: $1a
    ld [bc], a                                    ; $4a9c: $02
    dec d                                         ; $4a9d: $15
    ld a, [de]                                    ; $4a9e: $1a
    ld [bc], a                                    ; $4a9f: $02
    jr c, jr_053_4abc                             ; $4aa0: $38 $1a

    ld [bc], a                                    ; $4aa2: $02
    ld h, h                                       ; $4aa3: $64
    ld a, [de]                                    ; $4aa4: $1a
    ld [bc], a                                    ; $4aa5: $02
    sub d                                         ; $4aa6: $92
    ld a, [de]                                    ; $4aa7: $1a
    ld [bc], a                                    ; $4aa8: $02
    jp $021a                                      ; $4aa9: $c3 $1a $02


    rst $30                                       ; $4aac: $f7
    ld a, [de]                                    ; $4aad: $1a
    ld [bc], a                                    ; $4aae: $02
    ld [bc], a                                    ; $4aaf: $02
    dec de                                        ; $4ab0: $1b
    ld [bc], a                                    ; $4ab1: $02
    rra                                           ; $4ab2: $1f
    dec de                                        ; $4ab3: $1b
    ld [bc], a                                    ; $4ab4: $02
    jr c, jr_053_4ad2                             ; $4ab5: $38 $1b

    ld [bc], a                                    ; $4ab7: $02
    ld [hl], d                                    ; $4ab8: $72
    dec de                                        ; $4ab9: $1b
    ld [bc], a                                    ; $4aba: $02
    add c                                         ; $4abb: $81

jr_053_4abc:
    dec de                                        ; $4abc: $1b
    ld [bc], a                                    ; $4abd: $02
    adc a                                         ; $4abe: $8f
    dec de                                        ; $4abf: $1b
    ld [bc], a                                    ; $4ac0: $02
    cp l                                          ; $4ac1: $bd
    dec de                                        ; $4ac2: $1b
    ld [bc], a                                    ; $4ac3: $02
    db $d3                                        ; $4ac4: $d3
    dec de                                        ; $4ac5: $1b
    ld [bc], a                                    ; $4ac6: $02
    and $1b                                       ; $4ac7: $e6 $1b
    ld [bc], a                                    ; $4ac9: $02
    ld bc, $021c                                  ; $4aca: $01 $1c $02
    daa                                           ; $4acd: $27
    inc e                                         ; $4ace: $1c
    ld [bc], a                                    ; $4acf: $02
    ld h, d                                       ; $4ad0: $62
    inc e                                         ; $4ad1: $1c

jr_053_4ad2:
    ld [bc], a                                    ; $4ad2: $02
    xor b                                         ; $4ad3: $a8
    inc e                                         ; $4ad4: $1c
    ld [bc], a                                    ; $4ad5: $02
    rst $10                                       ; $4ad6: $d7
    inc e                                         ; $4ad7: $1c
    ld [bc], a                                    ; $4ad8: $02
    rlca                                          ; $4ad9: $07
    dec e                                         ; $4ada: $1d
    ld [bc], a                                    ; $4adb: $02
    rra                                           ; $4adc: $1f
    dec e                                         ; $4add: $1d
    ld [bc], a                                    ; $4ade: $02
    ld d, c                                       ; $4adf: $51
    dec e                                         ; $4ae0: $1d
    ld [bc], a                                    ; $4ae1: $02
    ld a, e                                       ; $4ae2: $7b
    dec e                                         ; $4ae3: $1d
    ld [bc], a                                    ; $4ae4: $02
    and h                                         ; $4ae5: $a4
    dec e                                         ; $4ae6: $1d
    ld [bc], a                                    ; $4ae7: $02
    or h                                          ; $4ae8: $b4
    dec e                                         ; $4ae9: $1d
    ld [bc], a                                    ; $4aea: $02
    ret c                                         ; $4aeb: $d8

    dec e                                         ; $4aec: $1d
    ld [bc], a                                    ; $4aed: $02
    ld [$021d], a                                 ; $4aee: $ea $1d $02
    ei                                            ; $4af1: $fb
    dec e                                         ; $4af2: $1d
    ld [bc], a                                    ; $4af3: $02
    ld hl, $021e                                  ; $4af4: $21 $1e $02
    ld c, l                                       ; $4af7: $4d
    ld e, $02                                     ; $4af8: $1e $02
    ld [hl], d                                    ; $4afa: $72
    ld e, $02                                     ; $4afb: $1e $02
    ld a, a                                       ; $4afd: $7f
    ld e, $02                                     ; $4afe: $1e $02
    sbc a                                         ; $4b00: $9f
    ld e, $02                                     ; $4b01: $1e $02
    xor b                                         ; $4b03: $a8
    ld e, $02                                     ; $4b04: $1e $02
    jp $021e                                      ; $4b06: $c3 $1e $02


    db $d3                                        ; $4b09: $d3
    ld e, $02                                     ; $4b0a: $1e $02
    ld sp, hl                                     ; $4b0c: $f9
    ld e, $02                                     ; $4b0d: $1e $02
    ld a, [de]                                    ; $4b0f: $1a
    rra                                           ; $4b10: $1f
    ld [bc], a                                    ; $4b11: $02
    dec l                                         ; $4b12: $2d
    rra                                           ; $4b13: $1f
    ld [bc], a                                    ; $4b14: $02
    ld e, l                                       ; $4b15: $5d
    rra                                           ; $4b16: $1f
    ld [bc], a                                    ; $4b17: $02
    ld l, d                                       ; $4b18: $6a
    rra                                           ; $4b19: $1f
    ld [bc], a                                    ; $4b1a: $02
    add h                                         ; $4b1b: $84
    rra                                           ; $4b1c: $1f
    ld [bc], a                                    ; $4b1d: $02
    xor b                                         ; $4b1e: $a8
    rra                                           ; $4b1f: $1f
    ld [bc], a                                    ; $4b20: $02
    ret nc                                        ; $4b21: $d0

    rra                                           ; $4b22: $1f
    ld [bc], a                                    ; $4b23: $02
    or $1f                                        ; $4b24: $f6 $1f
    ld [bc], a                                    ; $4b26: $02
    ld de, $0220                                  ; $4b27: $11 $20 $02
    daa                                           ; $4b2a: $27
    jr nz, @+$04                                  ; $4b2b: $20 $02

    ld b, b                                       ; $4b2d: $40
    jr nz, @+$04                                  ; $4b2e: $20 $02

    ld d, l                                       ; $4b30: $55
    jr nz, @+$04                                  ; $4b31: $20 $02

    ld [hl], e                                    ; $4b33: $73
    jr nz, @+$04                                  ; $4b34: $20 $02

    sub a                                         ; $4b36: $97
    jr nz, @+$04                                  ; $4b37: $20 $02

    cp b                                          ; $4b39: $b8
    jr nz, @+$04                                  ; $4b3a: $20 $02

    db $d3                                        ; $4b3c: $d3
    jr nz, @+$04                                  ; $4b3d: $20 $02

    pop af                                        ; $4b3f: $f1
    jr nz, @+$04                                  ; $4b40: $20 $02

    ld a, [bc]                                    ; $4b42: $0a
    ld hl, $2102                                  ; $4b43: $21 $02 $21
    ld hl, $3e02                                  ; $4b46: $21 $02 $3e
    ld hl, $7502                                  ; $4b49: $21 $02 $75
    ld hl, $9e02                                  ; $4b4c: $21 $02 $9e
    ld hl, $c802                                  ; $4b4f: $21 $02 $c8
    ld hl, $ff02                                  ; $4b52: $21 $02 $ff
    ld hl, $0a02                                  ; $4b55: $21 $02 $0a
    ld [hl+], a                                   ; $4b58: $22
    ld [bc], a                                    ; $4b59: $02
    ld hl, $0222                                  ; $4b5a: $21 $22 $02
    ld b, c                                       ; $4b5d: $41
    ld [hl+], a                                   ; $4b5e: $22
    ld [bc], a                                    ; $4b5f: $02
    ld e, c                                       ; $4b60: $59
    ld [hl+], a                                   ; $4b61: $22
    ld [bc], a                                    ; $4b62: $02
    xor l                                         ; $4b63: $ad
    ld [hl+], a                                   ; $4b64: $22
    ld [bc], a                                    ; $4b65: $02
    ret z                                         ; $4b66: $c8

    ld [hl+], a                                   ; $4b67: $22
    ld [bc], a                                    ; $4b68: $02
    rst $28                                       ; $4b69: $ef
    ld [hl+], a                                   ; $4b6a: $22
    ld [bc], a                                    ; $4b6b: $02
    ld bc, $0223                                  ; $4b6c: $01 $23 $02
    ld hl, $0223                                  ; $4b6f: $21 $23 $02
    dec hl                                        ; $4b72: $2b
    inc hl                                        ; $4b73: $23
    ld [bc], a                                    ; $4b74: $02
    ld c, e                                       ; $4b75: $4b
    inc hl                                        ; $4b76: $23
    ld [bc], a                                    ; $4b77: $02
    ld d, d                                       ; $4b78: $52
    inc hl                                        ; $4b79: $23
    ld [bc], a                                    ; $4b7a: $02
    ld h, [hl]                                    ; $4b7b: $66
    inc hl                                        ; $4b7c: $23
    ld [bc], a                                    ; $4b7d: $02
    xor b                                         ; $4b7e: $a8
    inc hl                                        ; $4b7f: $23
    ld [bc], a                                    ; $4b80: $02
    or [hl]                                       ; $4b81: $b6
    inc hl                                        ; $4b82: $23
    ld [bc], a                                    ; $4b83: $02
    jp Jump_000_0223                              ; $4b84: $c3 $23 $02


    jp hl                                         ; $4b87: $e9


    inc hl                                        ; $4b88: $23
    ld [bc], a                                    ; $4b89: $02
    ld c, $24                                     ; $4b8a: $0e $24
    ld [bc], a                                    ; $4b8c: $02
    dec de                                        ; $4b8d: $1b
    inc h                                         ; $4b8e: $24

Jump_053_4b8f:
    ld [bc], a                                    ; $4b8f: $02
    inc hl                                        ; $4b90: $23
    inc h                                         ; $4b91: $24

Call_053_4b92:
    ld [bc], a                                    ; $4b92: $02
    ld a, [hl-]                                   ; $4b93: $3a
    inc h                                         ; $4b94: $24
    ld [bc], a                                    ; $4b95: $02
    ld d, a                                       ; $4b96: $57
    inc h                                         ; $4b97: $24
    ld [bc], a                                    ; $4b98: $02
    ld a, [hl]                                    ; $4b99: $7e
    inc h                                         ; $4b9a: $24
    ld [bc], a                                    ; $4b9b: $02

Jump_053_4b9c:
    add [hl]                                      ; $4b9c: $86
    inc h                                         ; $4b9d: $24
    ld [bc], a                                    ; $4b9e: $02
    sbc a                                         ; $4b9f: $9f
    inc h                                         ; $4ba0: $24
    ld [bc], a                                    ; $4ba1: $02
    pop bc                                        ; $4ba2: $c1
    inc h                                         ; $4ba3: $24
    ld [bc], a                                    ; $4ba4: $02
    push de                                       ; $4ba5: $d5
    inc h                                         ; $4ba6: $24
    ld [bc], a                                    ; $4ba7: $02
    ld b, e                                       ; $4ba8: $43
    dec h                                         ; $4ba9: $25
    ld [bc], a                                    ; $4baa: $02
    ld c, h                                       ; $4bab: $4c
    dec h                                         ; $4bac: $25
    ld [bc], a                                    ; $4bad: $02
    ld d, c                                       ; $4bae: $51
    dec h                                         ; $4baf: $25
    ld [bc], a                                    ; $4bb0: $02
    ld l, b                                       ; $4bb1: $68
    dec h                                         ; $4bb2: $25
    ld [bc], a                                    ; $4bb3: $02
    and h                                         ; $4bb4: $a4
    dec h                                         ; $4bb5: $25
    ld [bc], a                                    ; $4bb6: $02
    add $25                                       ; $4bb7: $c6 $25
    ld [bc], a                                    ; $4bb9: $02
    db $e3                                        ; $4bba: $e3
    dec h                                         ; $4bbb: $25
    ld [bc], a                                    ; $4bbc: $02
    db $10                                        ; $4bbd: $10
    ld h, $02                                     ; $4bbe: $26 $02
    cpl                                           ; $4bc0: $2f
    ld h, $02                                     ; $4bc1: $26 $02
    ld e, a                                       ; $4bc3: $5f
    ld h, $02                                     ; $4bc4: $26 $02
    ld [hl], c                                    ; $4bc6: $71
    ld h, $02                                     ; $4bc7: $26 $02
    ld a, a                                       ; $4bc9: $7f
    ld h, $02                                     ; $4bca: $26 $02
    sbc l                                         ; $4bcc: $9d
    ld h, $02                                     ; $4bcd: $26 $02
    xor [hl]                                      ; $4bcf: $ae
    ld h, $02                                     ; $4bd0: $26 $02
    cp c                                          ; $4bd2: $b9
    ld h, $02                                     ; $4bd3: $26 $02
    ret                                           ; $4bd5: $c9


    ld h, $02                                     ; $4bd6: $26 $02
    add sp, $26                                   ; $4bd8: $e8 $26
    ld [bc], a                                    ; $4bda: $02
    rst $28                                       ; $4bdb: $ef
    ld h, $02                                     ; $4bdc: $26 $02
    inc c                                         ; $4bde: $0c
    daa                                           ; $4bdf: $27
    ld [bc], a                                    ; $4be0: $02
    inc l                                         ; $4be1: $2c
    daa                                           ; $4be2: $27
    ld [bc], a                                    ; $4be3: $02
    ld c, b                                       ; $4be4: $48
    daa                                           ; $4be5: $27
    ld [bc], a                                    ; $4be6: $02

Call_053_4be7:
    ld h, c                                       ; $4be7: $61
    daa                                           ; $4be8: $27
    ld [bc], a                                    ; $4be9: $02
    sbc h                                         ; $4bea: $9c
    daa                                           ; $4beb: $27
    ld [bc], a                                    ; $4bec: $02
    or b                                          ; $4bed: $b0
    daa                                           ; $4bee: $27
    ld [bc], a                                    ; $4bef: $02
    cp [hl]                                       ; $4bf0: $be
    daa                                           ; $4bf1: $27
    ld [bc], a                                    ; $4bf2: $02
    db $fd                                        ; $4bf3: $fd
    daa                                           ; $4bf4: $27
    ld [bc], a                                    ; $4bf5: $02
    dec de                                        ; $4bf6: $1b
    jr z, @+$04                                   ; $4bf7: $28 $02

    ld [hl-], a                                   ; $4bf9: $32
    jr z, @+$04                                   ; $4bfa: $28 $02

    ld [hl], d                                    ; $4bfc: $72
    jr z, @+$04                                   ; $4bfd: $28 $02

    adc b                                         ; $4bff: $88
    jr z, jr_053_4c04                             ; $4c00: $28 $02

    add $28                                       ; $4c02: $c6 $28

jr_053_4c04:
    ld [bc], a                                    ; $4c04: $02
    inc b                                         ; $4c05: $04
    add hl, hl                                    ; $4c06: $29
    ld [bc], a                                    ; $4c07: $02
    rrca                                          ; $4c08: $0f
    add hl, hl                                    ; $4c09: $29
    ld [bc], a                                    ; $4c0a: $02
    ld [hl], $29                                  ; $4c0b: $36 $29
    ld [bc], a                                    ; $4c0d: $02
    ld e, b                                       ; $4c0e: $58
    add hl, hl                                    ; $4c0f: $29
    ld [bc], a                                    ; $4c10: $02
    ld [hl], a                                    ; $4c11: $77
    add hl, hl                                    ; $4c12: $29
    ld [bc], a                                    ; $4c13: $02
    ld a, a                                       ; $4c14: $7f
    add hl, hl                                    ; $4c15: $29
    ld [bc], a                                    ; $4c16: $02
    sbc b                                         ; $4c17: $98
    add hl, hl                                    ; $4c18: $29
    ld [bc], a                                    ; $4c19: $02
    and h                                         ; $4c1a: $a4
    add hl, hl                                    ; $4c1b: $29
    ld [bc], a                                    ; $4c1c: $02
    pop bc                                        ; $4c1d: $c1
    add hl, hl                                    ; $4c1e: $29
    ld [bc], a                                    ; $4c1f: $02
    rst $20                                       ; $4c20: $e7
    add hl, hl                                    ; $4c21: $29
    ld [bc], a                                    ; $4c22: $02
    ld [$022a], sp                                ; $4c23: $08 $2a $02
    jr jr_053_4c52                                ; $4c26: $18 $2a

    ld [bc], a                                    ; $4c28: $02
    ld [hl], $2a                                  ; $4c29: $36 $2a
    ld [bc], a                                    ; $4c2b: $02
    ld b, h                                       ; $4c2c: $44
    ld a, [hl+]                                   ; $4c2d: $2a
    ld [bc], a                                    ; $4c2e: $02
    add [hl]                                      ; $4c2f: $86
    ld a, [hl+]                                   ; $4c30: $2a
    ld [bc], a                                    ; $4c31: $02
    or l                                          ; $4c32: $b5
    ld a, [hl+]                                   ; $4c33: $2a
    ld [bc], a                                    ; $4c34: $02
    db $ed                                        ; $4c35: $ed
    ld a, [hl+]                                   ; $4c36: $2a
    ld [bc], a                                    ; $4c37: $02
    ei                                            ; $4c38: $fb
    ld a, [hl+]                                   ; $4c39: $2a
    ld [bc], a                                    ; $4c3a: $02
    jr jr_053_4c68                                ; $4c3b: $18 $2b

    ld [bc], a                                    ; $4c3d: $02
    dec [hl]                                      ; $4c3e: $35
    dec hl                                        ; $4c3f: $2b
    ld [bc], a                                    ; $4c40: $02
    ld h, [hl]                                    ; $4c41: $66
    dec hl                                        ; $4c42: $2b
    ld [bc], a                                    ; $4c43: $02
    add e                                         ; $4c44: $83
    dec hl                                        ; $4c45: $2b
    ld [bc], a                                    ; $4c46: $02
    xor a                                         ; $4c47: $af
    dec hl                                        ; $4c48: $2b
    ld [bc], a                                    ; $4c49: $02
    cp h                                          ; $4c4a: $bc
    dec hl                                        ; $4c4b: $2b
    ld [bc], a                                    ; $4c4c: $02
    db $eb                                        ; $4c4d: $eb
    dec hl                                        ; $4c4e: $2b
    ld [bc], a                                    ; $4c4f: $02
    dec e                                         ; $4c50: $1d
    inc l                                         ; $4c51: $2c

jr_053_4c52:
    ld [bc], a                                    ; $4c52: $02
    add hl, sp                                    ; $4c53: $39
    inc l                                         ; $4c54: $2c
    ld [bc], a                                    ; $4c55: $02
    ld e, a                                       ; $4c56: $5f
    inc l                                         ; $4c57: $2c
    ld [bc], a                                    ; $4c58: $02
    add e                                         ; $4c59: $83
    inc l                                         ; $4c5a: $2c
    ld [bc], a                                    ; $4c5b: $02
    or l                                          ; $4c5c: $b5
    inc l                                         ; $4c5d: $2c
    ld [bc], a                                    ; $4c5e: $02
    call c, $022c                                 ; $4c5f: $dc $2c $02
    db $ed                                        ; $4c62: $ed
    inc l                                         ; $4c63: $2c
    ld [bc], a                                    ; $4c64: $02
    cpl                                           ; $4c65: $2f
    dec l                                         ; $4c66: $2d
    ld [bc], a                                    ; $4c67: $02

jr_053_4c68:
    ld d, c                                       ; $4c68: $51
    dec l                                         ; $4c69: $2d
    ld [bc], a                                    ; $4c6a: $02
    ld h, e                                       ; $4c6b: $63
    dec l                                         ; $4c6c: $2d
    ld [bc], a                                    ; $4c6d: $02
    ld h, a                                       ; $4c6e: $67
    dec l                                         ; $4c6f: $2d
    ld [bc], a                                    ; $4c70: $02
    sub e                                         ; $4c71: $93
    dec l                                         ; $4c72: $2d
    ld [bc], a                                    ; $4c73: $02
    xor e                                         ; $4c74: $ab
    dec l                                         ; $4c75: $2d
    ld [bc], a                                    ; $4c76: $02
    cp d                                          ; $4c77: $ba
    dec l                                         ; $4c78: $2d
    ld [bc], a                                    ; $4c79: $02
    ret                                           ; $4c7a: $c9


    dec l                                         ; $4c7b: $2d
    ld [bc], a                                    ; $4c7c: $02
    jp hl                                         ; $4c7d: $e9


    dec l                                         ; $4c7e: $2d
    ld [bc], a                                    ; $4c7f: $02
    db $fd                                        ; $4c80: $fd
    dec l                                         ; $4c81: $2d
    ld [bc], a                                    ; $4c82: $02
    rra                                           ; $4c83: $1f
    ld l, $02                                     ; $4c84: $2e $02
    jr z, jr_053_4cb6                             ; $4c86: $28 $2e

    ld [bc], a                                    ; $4c88: $02
    dec a                                         ; $4c89: $3d
    ld l, $02                                     ; $4c8a: $2e $02
    ld h, d                                       ; $4c8c: $62
    ld l, $02                                     ; $4c8d: $2e $02
    cp c                                          ; $4c8f: $b9
    ld l, $02                                     ; $4c90: $2e $02
    pop de                                        ; $4c92: $d1
    ld l, $02                                     ; $4c93: $2e $02
    jr nz, jr_053_4cc6                            ; $4c95: $20 $2f

    ld [bc], a                                    ; $4c97: $02
    ld b, b                                       ; $4c98: $40
    cpl                                           ; $4c99: $2f
    ld [bc], a                                    ; $4c9a: $02
    ld h, b                                       ; $4c9b: $60
    cpl                                           ; $4c9c: $2f
    ld [bc], a                                    ; $4c9d: $02
    ld l, e                                       ; $4c9e: $6b
    cpl                                           ; $4c9f: $2f
    ld [bc], a                                    ; $4ca0: $02
    sub a                                         ; $4ca1: $97
    cpl                                           ; $4ca2: $2f
    ld [bc], a                                    ; $4ca3: $02
    and b                                         ; $4ca4: $a0
    cpl                                           ; $4ca5: $2f
    ld [bc], a                                    ; $4ca6: $02
    ret                                           ; $4ca7: $c9


    cpl                                           ; $4ca8: $2f
    ld [bc], a                                    ; $4ca9: $02
    rst $10                                       ; $4caa: $d7
    cpl                                           ; $4cab: $2f
    ld [bc], a                                    ; $4cac: $02
    rst $28                                       ; $4cad: $ef
    cpl                                           ; $4cae: $2f
    ld [bc], a                                    ; $4caf: $02
    ld b, b                                       ; $4cb0: $40
    jr nc, @+$04                                  ; $4cb1: $30 $02

    ld e, e                                       ; $4cb3: $5b
    jr nc, @+$04                                  ; $4cb4: $30 $02

jr_053_4cb6:
    ld [hl], c                                    ; $4cb6: $71
    jr nc, @+$04                                  ; $4cb7: $30 $02

    add d                                         ; $4cb9: $82
    jr nc, @+$04                                  ; $4cba: $30 $02

    xor c                                         ; $4cbc: $a9
    jr nc, @+$04                                  ; $4cbd: $30 $02

    cp c                                          ; $4cbf: $b9
    jr nc, @+$04                                  ; $4cc0: $30 $02

    call nz, $0230                                ; $4cc2: $c4 $30 $02
    ld a, [bc]                                    ; $4cc5: $0a

jr_053_4cc6:
    ld sp, $2202                                  ; $4cc6: $31 $02 $22
    ld sp, $3002                                  ; $4cc9: $31 $02 $30
    ld sp, $3b02                                  ; $4ccc: $31 $02 $3b
    ld sp, $5c02                                  ; $4ccf: $31 $02 $5c
    ld sp, $a402                                  ; $4cd2: $31 $02 $a4
    ld sp, $bc02                                  ; $4cd5: $31 $02 $bc
    ld sp, $d202                                  ; $4cd8: $31 $02 $d2
    ld sp, $dc02                                  ; $4cdb: $31 $02 $dc
    ld sp, $0e02                                  ; $4cde: $31 $02 $0e
    ld [hl-], a                                   ; $4ce1: $32
    ld [bc], a                                    ; $4ce2: $02
    dec l                                         ; $4ce3: $2d
    ld [hl-], a                                   ; $4ce4: $32
    ld [bc], a                                    ; $4ce5: $02
    ld b, c                                       ; $4ce6: $41
    ld [hl-], a                                   ; $4ce7: $32
    ld [bc], a                                    ; $4ce8: $02
    ld c, a                                       ; $4ce9: $4f
    ld [hl-], a                                   ; $4cea: $32
    ld [bc], a                                    ; $4ceb: $02
    ld [hl], b                                    ; $4cec: $70
    ld [hl-], a                                   ; $4ced: $32
    ld [bc], a                                    ; $4cee: $02
    ld a, a                                       ; $4cef: $7f
    ld [hl-], a                                   ; $4cf0: $32
    ld [bc], a                                    ; $4cf1: $02
    and [hl]                                      ; $4cf2: $a6
    ld [hl-], a                                   ; $4cf3: $32
    ld [bc], a                                    ; $4cf4: $02
    call z, Call_000_0232                         ; $4cf5: $cc $32 $02
    db $e4                                        ; $4cf8: $e4
    ld [hl-], a                                   ; $4cf9: $32
    ld [bc], a                                    ; $4cfa: $02
    dec [hl]                                      ; $4cfb: $35
    inc sp                                        ; $4cfc: $33
    ld [bc], a                                    ; $4cfd: $02
    ld e, c                                       ; $4cfe: $59
    inc sp                                        ; $4cff: $33
    ld [bc], a                                    ; $4d00: $02
    add b                                         ; $4d01: $80
    inc sp                                        ; $4d02: $33
    ld [bc], a                                    ; $4d03: $02
    sbc e                                         ; $4d04: $9b
    inc sp                                        ; $4d05: $33
    ld [bc], a                                    ; $4d06: $02
    or d                                          ; $4d07: $b2
    inc sp                                        ; $4d08: $33
    ld [bc], a                                    ; $4d09: $02
    db $eb                                        ; $4d0a: $eb
    inc sp                                        ; $4d0b: $33
    ld [bc], a                                    ; $4d0c: $02
    push af                                       ; $4d0d: $f5
    inc sp                                        ; $4d0e: $33
    ld [bc], a                                    ; $4d0f: $02
    ld [hl], c                                    ; $4d10: $71
    inc [hl]                                      ; $4d11: $34
    ld [bc], a                                    ; $4d12: $02
    ld a, c                                       ; $4d13: $79
    inc [hl]                                      ; $4d14: $34
    ld [bc], a                                    ; $4d15: $02
    adc e                                         ; $4d16: $8b
    inc [hl]                                      ; $4d17: $34
    ld [bc], a                                    ; $4d18: $02
    and d                                         ; $4d19: $a2
    inc [hl]                                      ; $4d1a: $34
    ld [bc], a                                    ; $4d1b: $02
    or d                                          ; $4d1c: $b2
    inc [hl]                                      ; $4d1d: $34
    ld [bc], a                                    ; $4d1e: $02
    db $e3                                        ; $4d1f: $e3
    inc [hl]                                      ; $4d20: $34
    ld [bc], a                                    ; $4d21: $02
    add hl, hl                                    ; $4d22: $29
    dec [hl]                                      ; $4d23: $35
    ld [bc], a                                    ; $4d24: $02
    dec sp                                        ; $4d25: $3b
    dec [hl]                                      ; $4d26: $35
    ld [bc], a                                    ; $4d27: $02
    ld l, l                                       ; $4d28: $6d
    dec [hl]                                      ; $4d29: $35
    ld [bc], a                                    ; $4d2a: $02
    sub h                                         ; $4d2b: $94
    dec [hl]                                      ; $4d2c: $35
    ld [bc], a                                    ; $4d2d: $02
    and h                                         ; $4d2e: $a4
    dec [hl]                                      ; $4d2f: $35
    ld [bc], a                                    ; $4d30: $02
    cp e                                          ; $4d31: $bb
    dec [hl]                                      ; $4d32: $35
    ld [bc], a                                    ; $4d33: $02
    ld [$0235], a                                 ; $4d34: $ea $35 $02
    inc de                                        ; $4d37: $13
    ld [hl], $02                                  ; $4d38: $36 $02
    scf                                           ; $4d3a: $37
    ld [hl], $02                                  ; $4d3b: $36 $02
    ld e, c                                       ; $4d3d: $59
    ld [hl], $02                                  ; $4d3e: $36 $02
    ld e, [hl]                                    ; $4d40: $5e
    ld [hl], $02                                  ; $4d41: $36 $02
    or a                                          ; $4d43: $b7
    ld [hl], $02                                  ; $4d44: $36 $02
    cp h                                          ; $4d46: $bc
    ld [hl], $02                                  ; $4d47: $36 $02
    db $ed                                        ; $4d49: $ed
    ld [hl], $02                                  ; $4d4a: $36 $02
    jr nz, jr_053_4d85                            ; $4d4c: $20 $37

    ld [bc], a                                    ; $4d4e: $02
    inc [hl]                                      ; $4d4f: $34
    scf                                           ; $4d50: $37
    ld [bc], a                                    ; $4d51: $02
    ld b, e                                       ; $4d52: $43
    scf                                           ; $4d53: $37
    ld [bc], a                                    ; $4d54: $02
    ld d, c                                       ; $4d55: $51
    scf                                           ; $4d56: $37
    ld [bc], a                                    ; $4d57: $02
    ld l, c                                       ; $4d58: $69
    scf                                           ; $4d59: $37
    ld [bc], a                                    ; $4d5a: $02
    jp $0237                                      ; $4d5b: $c3 $37 $02


    call $0237                                    ; $4d5e: $cd $37 $02
    db $e3                                        ; $4d61: $e3
    scf                                           ; $4d62: $37
    ld [bc], a                                    ; $4d63: $02
    ld [$0237], a                                 ; $4d64: $ea $37 $02
    ld a, [de]                                    ; $4d67: $1a
    jr c, @+$04                                   ; $4d68: $38 $02

    ld c, h                                       ; $4d6a: $4c
    jr c, @+$04                                   ; $4d6b: $38 $02

    ld h, [hl]                                    ; $4d6d: $66
    jr c, @+$04                                   ; $4d6e: $38 $02

    jp nc, Jump_000_0238                          ; $4d70: $d2 $38 $02

    push af                                       ; $4d73: $f5
    jr c, @+$04                                   ; $4d74: $38 $02

    ld [$0239], sp                                ; $4d76: $08 $39 $02
    dec l                                         ; $4d79: $2d
    add hl, sp                                    ; $4d7a: $39
    ld [bc], a                                    ; $4d7b: $02
    add [hl]                                      ; $4d7c: $86
    add hl, sp                                    ; $4d7d: $39
    ld [bc], a                                    ; $4d7e: $02
    cp [hl]                                       ; $4d7f: $be
    add hl, sp                                    ; $4d80: $39
    ld [bc], a                                    ; $4d81: $02
    ld sp, hl                                     ; $4d82: $f9
    add hl, sp                                    ; $4d83: $39
    ld [bc], a                                    ; $4d84: $02

jr_053_4d85:
    dec e                                         ; $4d85: $1d
    ld a, [hl-]                                   ; $4d86: $3a
    ld [bc], a                                    ; $4d87: $02
    scf                                           ; $4d88: $37
    ld a, [hl-]                                   ; $4d89: $3a
    ld [bc], a                                    ; $4d8a: $02
    ld c, a                                       ; $4d8b: $4f
    ld a, [hl-]                                   ; $4d8c: $3a
    ld [bc], a                                    ; $4d8d: $02
    ld d, [hl]                                    ; $4d8e: $56
    ld a, [hl-]                                   ; $4d8f: $3a
    ld [bc], a                                    ; $4d90: $02
    add [hl]                                      ; $4d91: $86
    ld a, [hl-]                                   ; $4d92: $3a
    ld [bc], a                                    ; $4d93: $02
    and d                                         ; $4d94: $a2
    ld a, [hl-]                                   ; $4d95: $3a
    ld [bc], a                                    ; $4d96: $02
    ret nc                                        ; $4d97: $d0

    ld a, [hl-]                                   ; $4d98: $3a
    ld [bc], a                                    ; $4d99: $02
    ld [c], a                                     ; $4d9a: $e2
    ld a, [hl-]                                   ; $4d9b: $3a
    ld [bc], a                                    ; $4d9c: $02
    ld a, [de]                                    ; $4d9d: $1a
    dec sp                                        ; $4d9e: $3b
    ld [bc], a                                    ; $4d9f: $02
    dec hl                                        ; $4da0: $2b
    dec sp                                        ; $4da1: $3b
    ld [bc], a                                    ; $4da2: $02
    ld c, e                                       ; $4da3: $4b
    dec sp                                        ; $4da4: $3b
    ld [bc], a                                    ; $4da5: $02
    ld e, b                                       ; $4da6: $58
    dec sp                                        ; $4da7: $3b
    ld [bc], a                                    ; $4da8: $02
    ld [bc], a                                    ; $4da9: $02
    inc a                                         ; $4daa: $3c
    ld [bc], a                                    ; $4dab: $02
    ld c, $3c                                     ; $4dac: $0e $3c
    ld [bc], a                                    ; $4dae: $02
    add l                                         ; $4daf: $85
    inc a                                         ; $4db0: $3c
    ld [bc], a                                    ; $4db1: $02
    xor h                                         ; $4db2: $ac
    inc a                                         ; $4db3: $3c
    ld [bc], a                                    ; $4db4: $02
    push de                                       ; $4db5: $d5
    inc a                                         ; $4db6: $3c
    ld [bc], a                                    ; $4db7: $02
    db $fd                                        ; $4db8: $fd
    inc a                                         ; $4db9: $3c
    ld [bc], a                                    ; $4dba: $02
    scf                                           ; $4dbb: $37
    dec a                                         ; $4dbc: $3d
    ld [bc], a                                    ; $4dbd: $02
    ld b, [hl]                                    ; $4dbe: $46
    dec a                                         ; $4dbf: $3d
    ld [bc], a                                    ; $4dc0: $02
    ld d, d                                       ; $4dc1: $52
    dec a                                         ; $4dc2: $3d
    ld [bc], a                                    ; $4dc3: $02
    ld e, c                                       ; $4dc4: $59
    dec a                                         ; $4dc5: $3d
    ld [bc], a                                    ; $4dc6: $02
    ld a, b                                       ; $4dc7: $78
    dec a                                         ; $4dc8: $3d
    ld [bc], a                                    ; $4dc9: $02
    adc b                                         ; $4dca: $88
    dec a                                         ; $4dcb: $3d
    ld [bc], a                                    ; $4dcc: $02
    or h                                          ; $4dcd: $b4
    dec a                                         ; $4dce: $3d
    ld [bc], a                                    ; $4dcf: $02
    rst $10                                       ; $4dd0: $d7
    dec a                                         ; $4dd1: $3d
    ld [bc], a                                    ; $4dd2: $02
    db $ed                                        ; $4dd3: $ed
    dec a                                         ; $4dd4: $3d
    ld [bc], a                                    ; $4dd5: $02
    ei                                            ; $4dd6: $fb
    dec a                                         ; $4dd7: $3d
    ld [bc], a                                    ; $4dd8: $02
    ld a, [hl-]                                   ; $4dd9: $3a
    ld a, $02                                     ; $4dda: $3e $02
    ld d, a                                       ; $4ddc: $57
    ld a, $02                                     ; $4ddd: $3e $02
    ld a, h                                       ; $4ddf: $7c
    ld a, $02                                     ; $4de0: $3e $02
    sbc d                                         ; $4de2: $9a
    ld a, $02                                     ; $4de3: $3e $02
    push bc                                       ; $4de5: $c5
    ld a, $02                                     ; $4de6: $3e $02
    ld a, [c]                                     ; $4de8: $f2
    ld a, $02                                     ; $4de9: $3e $02
    ld de, $023f                                  ; $4deb: $11 $3f $02
    ld a, [de]                                    ; $4dee: $1a
    ccf                                           ; $4def: $3f
    ld [bc], a                                    ; $4df0: $02
    inc hl                                        ; $4df1: $23
    ccf                                           ; $4df2: $3f
    ld [bc], a                                    ; $4df3: $02
    jr c, jr_053_4e35                             ; $4df4: $38 $3f

    ld [bc], a                                    ; $4df6: $02
    ld l, b                                       ; $4df7: $68
    ccf                                           ; $4df8: $3f
    ld [bc], a                                    ; $4df9: $02
    adc e                                         ; $4dfa: $8b
    ccf                                           ; $4dfb: $3f
    ld [bc], a                                    ; $4dfc: $02
    sub a                                         ; $4dfd: $97
    ccf                                           ; $4dfe: $3f
    ld [bc], a                                    ; $4dff: $02
    cp c                                          ; $4e00: $b9
    ccf                                           ; $4e01: $3f
    inc bc                                        ; $4e02: $03
    ld bc, $0300                                  ; $4e03: $01 $00 $03
    inc sp                                        ; $4e06: $33
    nop                                           ; $4e07: $00
    inc bc                                        ; $4e08: $03
    ld h, [hl]                                    ; $4e09: $66
    nop                                           ; $4e0a: $00
    inc bc                                        ; $4e0b: $03
    add h                                         ; $4e0c: $84
    nop                                           ; $4e0d: $00
    inc bc                                        ; $4e0e: $03
    or c                                          ; $4e0f: $b1
    nop                                           ; $4e10: $00
    inc bc                                        ; $4e11: $03
    dec de                                        ; $4e12: $1b
    ld bc, $4b03                                  ; $4e13: $01 $03 $4b
    ld bc, $6603                                  ; $4e16: $01 $03 $66
    ld bc, $8903                                  ; $4e19: $01 $03 $89
    ld bc, $9a03                                  ; $4e1c: $01 $03 $9a
    ld bc, $b003                                  ; $4e1f: $01 $03 $b0
    ld bc, $cc03                                  ; $4e22: $01 $03 $cc
    ld bc, $e703                                  ; $4e25: $01 $03 $e7
    ld bc, $1103                                  ; $4e28: $01 $03 $11
    ld [bc], a                                    ; $4e2b: $02
    inc bc                                        ; $4e2c: $03
    dec l                                         ; $4e2d: $2d
    ld [bc], a                                    ; $4e2e: $02
    inc bc                                        ; $4e2f: $03
    ld d, h                                       ; $4e30: $54
    ld [bc], a                                    ; $4e31: $02
    inc bc                                        ; $4e32: $03
    ld l, a                                       ; $4e33: $6f
    ld [bc], a                                    ; $4e34: $02

jr_053_4e35:
    inc bc                                        ; $4e35: $03
    or b                                          ; $4e36: $b0
    ld [bc], a                                    ; $4e37: $02
    inc bc                                        ; $4e38: $03
    jp nz, Jump_000_0302                          ; $4e39: $c2 $02 $03

    ret nc                                        ; $4e3c: $d0

    ld [bc], a                                    ; $4e3d: $02
    inc bc                                        ; $4e3e: $03
    ld a, [$0302]                                 ; $4e3f: $fa $02 $03
    ccf                                           ; $4e42: $3f
    inc bc                                        ; $4e43: $03
    inc bc                                        ; $4e44: $03
    ld [hl], l                                    ; $4e45: $75
    inc bc                                        ; $4e46: $03
    inc bc                                        ; $4e47: $03
    sub b                                         ; $4e48: $90
    inc bc                                        ; $4e49: $03
    inc bc                                        ; $4e4a: $03
    sbc c                                         ; $4e4b: $99
    inc bc                                        ; $4e4c: $03
    inc bc                                        ; $4e4d: $03
    and c                                         ; $4e4e: $a1
    inc bc                                        ; $4e4f: $03
    inc bc                                        ; $4e50: $03
    cp l                                          ; $4e51: $bd
    inc bc                                        ; $4e52: $03
    inc bc                                        ; $4e53: $03
    db $dd                                        ; $4e54: $dd
    inc bc                                        ; $4e55: $03
    inc bc                                        ; $4e56: $03
    jp hl                                         ; $4e57: $e9


    inc bc                                        ; $4e58: $03
    inc bc                                        ; $4e59: $03
    rst $38                                       ; $4e5a: $ff
    inc bc                                        ; $4e5b: $03
    inc bc                                        ; $4e5c: $03
    inc de                                        ; $4e5d: $13
    inc b                                         ; $4e5e: $04
    inc bc                                        ; $4e5f: $03
    dec a                                         ; $4e60: $3d
    inc b                                         ; $4e61: $04
    inc bc                                        ; $4e62: $03
    ld d, c                                       ; $4e63: $51
    inc b                                         ; $4e64: $04
    inc bc                                        ; $4e65: $03
    adc a                                         ; $4e66: $8f
    inc b                                         ; $4e67: $04
    inc bc                                        ; $4e68: $03
    or c                                          ; $4e69: $b1
    inc b                                         ; $4e6a: $04
    inc bc                                        ; $4e6b: $03
    push bc                                       ; $4e6c: $c5
    inc b                                         ; $4e6d: $04
    inc bc                                        ; $4e6e: $03
    ld [c], a                                     ; $4e6f: $e2
    inc b                                         ; $4e70: $04
    inc bc                                        ; $4e71: $03
    di                                            ; $4e72: $f3
    inc b                                         ; $4e73: $04
    inc bc                                        ; $4e74: $03
    ld c, $05                                     ; $4e75: $0e $05
    inc bc                                        ; $4e77: $03
    ld h, $05                                     ; $4e78: $26 $05
    inc bc                                        ; $4e7a: $03
    ld sp, $0305                                  ; $4e7b: $31 $05 $03
    ld d, b                                       ; $4e7e: $50
    dec b                                         ; $4e7f: $05
    inc bc                                        ; $4e80: $03
    ld h, c                                       ; $4e81: $61
    dec b                                         ; $4e82: $05
    inc bc                                        ; $4e83: $03
    ld [hl], l                                    ; $4e84: $75
    dec b                                         ; $4e85: $05
    inc bc                                        ; $4e86: $03
    adc d                                         ; $4e87: $8a
    dec b                                         ; $4e88: $05
    inc bc                                        ; $4e89: $03
    and e                                         ; $4e8a: $a3
    dec b                                         ; $4e8b: $05
    inc bc                                        ; $4e8c: $03
    or [hl]                                       ; $4e8d: $b6
    dec b                                         ; $4e8e: $05
    inc bc                                        ; $4e8f: $03
    rst $10                                       ; $4e90: $d7
    dec b                                         ; $4e91: $05
    inc bc                                        ; $4e92: $03
    ld a, [c]                                     ; $4e93: $f2
    dec b                                         ; $4e94: $05
    inc bc                                        ; $4e95: $03
    dec bc                                        ; $4e96: $0b
    ld b, $03                                     ; $4e97: $06 $03
    ld [hl-], a                                   ; $4e99: $32
    ld b, $03                                     ; $4e9a: $06 $03
    ld c, l                                       ; $4e9c: $4d
    ld b, $03                                     ; $4e9d: $06 $03
    ld h, [hl]                                    ; $4e9f: $66
    ld b, $03                                     ; $4ea0: $06 $03
    ld a, [hl]                                    ; $4ea2: $7e
    ld b, $03                                     ; $4ea3: $06 $03
    sbc b                                         ; $4ea5: $98
    ld b, $03                                     ; $4ea6: $06 $03
    or a                                          ; $4ea8: $b7
    ld b, $03                                     ; $4ea9: $06 $03
    reti                                          ; $4eab: $d9


    ld b, $03                                     ; $4eac: $06 $03
    pop af                                        ; $4eae: $f1
    ld b, $03                                     ; $4eaf: $06 $03
    inc c                                         ; $4eb1: $0c
    rlca                                          ; $4eb2: $07
    inc bc                                        ; $4eb3: $03
    jr c, jr_053_4ebd                             ; $4eb4: $38 $07

    inc bc                                        ; $4eb6: $03
    ld d, c                                       ; $4eb7: $51
    rlca                                          ; $4eb8: $07
    inc bc                                        ; $4eb9: $03
    ld [hl], h                                    ; $4eba: $74
    rlca                                          ; $4ebb: $07
    inc bc                                        ; $4ebc: $03

jr_053_4ebd:
    sub d                                         ; $4ebd: $92
    rlca                                          ; $4ebe: $07
    inc bc                                        ; $4ebf: $03
    and [hl]                                      ; $4ec0: $a6
    rlca                                          ; $4ec1: $07
    inc bc                                        ; $4ec2: $03
    cp l                                          ; $4ec3: $bd
    rlca                                          ; $4ec4: $07
    inc bc                                        ; $4ec5: $03
    db $db                                        ; $4ec6: $db
    rlca                                          ; $4ec7: $07
    inc bc                                        ; $4ec8: $03
    di                                            ; $4ec9: $f3
    rlca                                          ; $4eca: $07
    inc bc                                        ; $4ecb: $03
    dec [hl]                                      ; $4ecc: $35
    ld [$5b03], sp                                ; $4ecd: $08 $03 $5b
    ld [$7b03], sp                                ; $4ed0: $08 $03 $7b
    ld [$a303], sp                                ; $4ed3: $08 $03 $a3
    ld [$b903], sp                                ; $4ed6: $08 $03 $b9
    ld [$d303], sp                                ; $4ed9: $08 $03 $d3
    ld [$e403], sp                                ; $4edc: $08 $03 $e4
    ld [$fb03], sp                                ; $4edf: $08 $03 $fb
    ld [$0003], sp                                ; $4ee2: $08 $03 $00
    add hl, bc                                    ; $4ee5: $09
    inc bc                                        ; $4ee6: $03
    inc c                                         ; $4ee7: $0c
    add hl, bc                                    ; $4ee8: $09
    inc bc                                        ; $4ee9: $03
    ld a, [de]                                    ; $4eea: $1a
    add hl, bc                                    ; $4eeb: $09
    inc bc                                        ; $4eec: $03
    ld l, d                                       ; $4eed: $6a
    add hl, bc                                    ; $4eee: $09
    inc bc                                        ; $4eef: $03
    adc c                                         ; $4ef0: $89
    add hl, bc                                    ; $4ef1: $09
    inc bc                                        ; $4ef2: $03
    xor c                                         ; $4ef3: $a9
    add hl, bc                                    ; $4ef4: $09
    inc bc                                        ; $4ef5: $03
    add $09                                       ; $4ef6: $c6 $09
    inc bc                                        ; $4ef8: $03
    push af                                       ; $4ef9: $f5
    add hl, bc                                    ; $4efa: $09
    inc bc                                        ; $4efb: $03
    rrca                                          ; $4efc: $0f
    ld a, [bc]                                    ; $4efd: $0a
    inc bc                                        ; $4efe: $03
    dec l                                         ; $4eff: $2d
    ld a, [bc]                                    ; $4f00: $0a
    inc bc                                        ; $4f01: $03
    ld [hl], $0a                                  ; $4f02: $36 $0a
    inc bc                                        ; $4f04: $03
    ld d, a                                       ; $4f05: $57
    ld a, [bc]                                    ; $4f06: $0a
    inc bc                                        ; $4f07: $03
    ld a, b                                       ; $4f08: $78
    ld a, [bc]                                    ; $4f09: $0a
    inc bc                                        ; $4f0a: $03
    sub h                                         ; $4f0b: $94
    ld a, [bc]                                    ; $4f0c: $0a
    inc bc                                        ; $4f0d: $03
    cp a                                          ; $4f0e: $bf
    ld a, [bc]                                    ; $4f0f: $0a
    inc bc                                        ; $4f10: $03
    rst $08                                       ; $4f11: $cf
    ld a, [bc]                                    ; $4f12: $0a
    inc bc                                        ; $4f13: $03
    db $f4                                        ; $4f14: $f4
    ld a, [bc]                                    ; $4f15: $0a
    inc bc                                        ; $4f16: $03
    rlca                                          ; $4f17: $07
    dec bc                                        ; $4f18: $0b
    inc bc                                        ; $4f19: $03
    inc hl                                        ; $4f1a: $23
    dec bc                                        ; $4f1b: $0b
    inc bc                                        ; $4f1c: $03
    scf                                           ; $4f1d: $37
    dec bc                                        ; $4f1e: $0b
    inc bc                                        ; $4f1f: $03
    ld [hl], b                                    ; $4f20: $70
    dec bc                                        ; $4f21: $0b
    inc bc                                        ; $4f22: $03
    sbc [hl]                                      ; $4f23: $9e
    dec bc                                        ; $4f24: $0b
    inc bc                                        ; $4f25: $03
    and a                                         ; $4f26: $a7
    dec bc                                        ; $4f27: $0b
    inc bc                                        ; $4f28: $03
    or e                                          ; $4f29: $b3
    dec bc                                        ; $4f2a: $0b
    inc bc                                        ; $4f2b: $03
    call nc, Call_000_030b                        ; $4f2c: $d4 $0b $03
    rst $18                                       ; $4f2f: $df
    dec bc                                        ; $4f30: $0b
    inc bc                                        ; $4f31: $03
    rst $28                                       ; $4f32: $ef
    dec bc                                        ; $4f33: $0b
    inc bc                                        ; $4f34: $03
    inc d                                         ; $4f35: $14
    inc c                                         ; $4f36: $0c
    inc bc                                        ; $4f37: $03
    ld c, a                                       ; $4f38: $4f
    inc c                                         ; $4f39: $0c
    inc bc                                        ; $4f3a: $03
    ld h, b                                       ; $4f3b: $60
    inc c                                         ; $4f3c: $0c
    inc bc                                        ; $4f3d: $03
    adc d                                         ; $4f3e: $8a
    inc c                                         ; $4f3f: $0c
    inc bc                                        ; $4f40: $03
    sbc l                                         ; $4f41: $9d
    inc c                                         ; $4f42: $0c
    inc bc                                        ; $4f43: $03
    adc $0c                                       ; $4f44: $ce $0c
    inc bc                                        ; $4f46: $03
    reti                                          ; $4f47: $d9


    inc c                                         ; $4f48: $0c
    inc bc                                        ; $4f49: $03
    ld [hl], a                                    ; $4f4a: $77
    dec c                                         ; $4f4b: $0d
    inc bc                                        ; $4f4c: $03
    add [hl]                                      ; $4f4d: $86
    dec c                                         ; $4f4e: $0d
    inc bc                                        ; $4f4f: $03
    or l                                          ; $4f50: $b5
    dec c                                         ; $4f51: $0d
    inc bc                                        ; $4f52: $03
    rst $38                                       ; $4f53: $ff
    dec c                                         ; $4f54: $0d
    inc bc                                        ; $4f55: $03
    ld [hl+], a                                   ; $4f56: $22
    ld c, $03                                     ; $4f57: $0e $03
    inc a                                         ; $4f59: $3c
    ld c, $03                                     ; $4f5a: $0e $03
    ld h, e                                       ; $4f5c: $63
    ld c, $03                                     ; $4f5d: $0e $03
    adc d                                         ; $4f5f: $8a
    ld c, $03                                     ; $4f60: $0e $03
    call nz, $030e                                ; $4f62: $c4 $0e $03
    db $fc                                        ; $4f65: $fc
    ld c, $03                                     ; $4f66: $0e $03
    dec e                                         ; $4f68: $1d
    rrca                                          ; $4f69: $0f
    inc bc                                        ; $4f6a: $03
    ld c, a                                       ; $4f6b: $4f
    rrca                                          ; $4f6c: $0f
    inc bc                                        ; $4f6d: $03
    ld l, d                                       ; $4f6e: $6a
    rrca                                          ; $4f6f: $0f
    inc bc                                        ; $4f70: $03
    add a                                         ; $4f71: $87
    rrca                                          ; $4f72: $0f
    inc bc                                        ; $4f73: $03
    ldh [rIF], a                                  ; $4f74: $e0 $0f
    inc bc                                        ; $4f76: $03
    ld a, [de]                                    ; $4f77: $1a
    db $10                                        ; $4f78: $10
    inc bc                                        ; $4f79: $03
    jr z, jr_053_4f8c                             ; $4f7a: $28 $10

    inc bc                                        ; $4f7c: $03
    ld b, c                                       ; $4f7d: $41
    db $10                                        ; $4f7e: $10
    inc bc                                        ; $4f7f: $03
    ld e, d                                       ; $4f80: $5a
    db $10                                        ; $4f81: $10
    inc bc                                        ; $4f82: $03
    ld e, a                                       ; $4f83: $5f
    db $10                                        ; $4f84: $10
    inc bc                                        ; $4f85: $03
    halt                                          ; $4f86: $76
    db $10                                        ; $4f87: $10
    inc bc                                        ; $4f88: $03
    sbc e                                         ; $4f89: $9b
    db $10                                        ; $4f8a: $10
    inc bc                                        ; $4f8b: $03

jr_053_4f8c:
    sbc d                                         ; $4f8c: $9a
    ld de, $a203                                  ; $4f8d: $11 $03 $a2
    ld de, $b103                                  ; $4f90: $11 $03 $b1
    ld de, $c103                                  ; $4f93: $11 $03 $c1
    ld de, $f503                                  ; $4f96: $11 $03 $f5
    ld de, $0e03                                  ; $4f99: $11 $03 $0e
    ld [de], a                                    ; $4f9c: $12
    inc bc                                        ; $4f9d: $03
    ld b, d                                       ; $4f9e: $42
    ld [de], a                                    ; $4f9f: $12
    inc bc                                        ; $4fa0: $03
    ld h, e                                       ; $4fa1: $63
    ld [de], a                                    ; $4fa2: $12
    inc bc                                        ; $4fa3: $03
    add [hl]                                      ; $4fa4: $86
    ld [de], a                                    ; $4fa5: $12
    inc bc                                        ; $4fa6: $03
    sub a                                         ; $4fa7: $97
    ld [de], a                                    ; $4fa8: $12
    inc bc                                        ; $4fa9: $03
    sbc [hl]                                      ; $4faa: $9e
    ld [de], a                                    ; $4fab: $12
    inc bc                                        ; $4fac: $03
    cp [hl]                                       ; $4fad: $be
    ld [de], a                                    ; $4fae: $12
    inc bc                                        ; $4faf: $03
    ld a, [de]                                    ; $4fb0: $1a
    inc de                                        ; $4fb1: $13
    inc bc                                        ; $4fb2: $03
    ld [hl-], a                                   ; $4fb3: $32
    inc de                                        ; $4fb4: $13
    inc bc                                        ; $4fb5: $03
    sbc b                                         ; $4fb6: $98
    inc de                                        ; $4fb7: $13
    inc bc                                        ; $4fb8: $03
    ld [c], a                                     ; $4fb9: $e2
    inc de                                        ; $4fba: $13
    inc bc                                        ; $4fbb: $03
    dec a                                         ; $4fbc: $3d
    inc d                                         ; $4fbd: $14
    inc bc                                        ; $4fbe: $03
    adc [hl]                                      ; $4fbf: $8e
    inc d                                         ; $4fc0: $14
    inc bc                                        ; $4fc1: $03
    sbc $14                                       ; $4fc2: $de $14
    inc bc                                        ; $4fc4: $03
    rla                                           ; $4fc5: $17
    dec d                                         ; $4fc6: $15
    inc bc                                        ; $4fc7: $03
    ld d, e                                       ; $4fc8: $53
    dec d                                         ; $4fc9: $15
    inc bc                                        ; $4fca: $03
    add e                                         ; $4fcb: $83
    dec d                                         ; $4fcc: $15
    inc bc                                        ; $4fcd: $03
    ret nc                                        ; $4fce: $d0

    dec d                                         ; $4fcf: $15
    inc bc                                        ; $4fd0: $03
    db $db                                        ; $4fd1: $db
    dec d                                         ; $4fd2: $15
    inc bc                                        ; $4fd3: $03
    pop hl                                        ; $4fd4: $e1
    dec d                                         ; $4fd5: $15
    inc bc                                        ; $4fd6: $03
    ld a, [c]                                     ; $4fd7: $f2
    dec d                                         ; $4fd8: $15
    inc bc                                        ; $4fd9: $03
    ld c, $16                                     ; $4fda: $0e $16
    inc bc                                        ; $4fdc: $03
    dec e                                         ; $4fdd: $1d
    ld d, $03                                     ; $4fde: $16 $03
    jr nc, jr_053_4ff8                            ; $4fe0: $30 $16

    inc bc                                        ; $4fe2: $03
    ld a, $16                                     ; $4fe3: $3e $16
    inc bc                                        ; $4fe5: $03
    ld e, b                                       ; $4fe6: $58
    ld d, $03                                     ; $4fe7: $16 $03
    ld l, c                                       ; $4fe9: $69
    ld d, $03                                     ; $4fea: $16 $03
    add b                                         ; $4fec: $80
    ld d, $03                                     ; $4fed: $16 $03
    or d                                          ; $4fef: $b2
    ld d, $03                                     ; $4ff0: $16 $03
    rst $00                                       ; $4ff2: $c7
    ld d, $03                                     ; $4ff3: $16 $03
    db $dd                                        ; $4ff5: $dd
    ld d, $03                                     ; $4ff6: $16 $03

jr_053_4ff8:
    push hl                                       ; $4ff8: $e5
    ld d, $03                                     ; $4ff9: $16 $03
    ld a, [$0316]                                 ; $4ffb: $fa $16 $03
    inc l                                         ; $4ffe: $2c
    rla                                           ; $4fff: $17
    inc bc                                        ; $5000: $03
    ld b, h                                       ; $5001: $44
    rla                                           ; $5002: $17
    inc bc                                        ; $5003: $03
    ld l, [hl]                                    ; $5004: $6e
    rla                                           ; $5005: $17
    inc bc                                        ; $5006: $03
    adc l                                         ; $5007: $8d
    rla                                           ; $5008: $17
    inc bc                                        ; $5009: $03
    reti                                          ; $500a: $d9


    rla                                           ; $500b: $17
    inc bc                                        ; $500c: $03
    db $f4                                        ; $500d: $f4
    rla                                           ; $500e: $17
    inc bc                                        ; $500f: $03
    ld a, [de]                                    ; $5010: $1a
    jr jr_053_5016                                ; $5011: $18 $03

    ld b, b                                       ; $5013: $40
    jr jr_053_5019                                ; $5014: $18 $03

jr_053_5016:
    ld l, b                                       ; $5016: $68
    jr jr_053_501c                                ; $5017: $18 $03

jr_053_5019:
    ld a, l                                       ; $5019: $7d
    jr jr_053_501f                                ; $501a: $18 $03

jr_053_501c:
    add a                                         ; $501c: $87
    jr jr_053_5022                                ; $501d: $18 $03

jr_053_501f:
    and c                                         ; $501f: $a1
    jr jr_053_5025                                ; $5020: $18 $03

jr_053_5022:
    xor b                                         ; $5022: $a8
    jr jr_053_5028                                ; $5023: $18 $03

jr_053_5025:
    cp h                                          ; $5025: $bc
    jr jr_053_502b                                ; $5026: $18 $03

jr_053_5028:
    jp z, $0318                                   ; $5028: $ca $18 $03

jr_053_502b:
    ldh [rNR23], a                                ; $502b: $e0 $18
    inc bc                                        ; $502d: $03
    di                                            ; $502e: $f3
    jr jr_053_5034                                ; $502f: $18 $03

    nop                                           ; $5031: $00
    add hl, de                                    ; $5032: $19
    inc bc                                        ; $5033: $03

jr_053_5034:
    ld b, $19                                     ; $5034: $06 $19
    inc bc                                        ; $5036: $03
    ld de, $0319                                  ; $5037: $11 $19 $03
    inc e                                         ; $503a: $1c
    add hl, de                                    ; $503b: $19
    inc bc                                        ; $503c: $03
    ld hl, $0319                                  ; $503d: $21 $19 $03
    inc sp                                        ; $5040: $33
    add hl, de                                    ; $5041: $19
    inc bc                                        ; $5042: $03
    dec sp                                        ; $5043: $3b
    add hl, de                                    ; $5044: $19
    inc bc                                        ; $5045: $03
    ld b, [hl]                                    ; $5046: $46
    add hl, de                                    ; $5047: $19
    inc bc                                        ; $5048: $03
    ld c, [hl]                                    ; $5049: $4e
    add hl, de                                    ; $504a: $19
    inc bc                                        ; $504b: $03
    ld d, d                                       ; $504c: $52
    add hl, de                                    ; $504d: $19
    inc bc                                        ; $504e: $03
    ld e, b                                       ; $504f: $58
    add hl, de                                    ; $5050: $19
    inc bc                                        ; $5051: $03
    ld e, a                                       ; $5052: $5f
    add hl, de                                    ; $5053: $19
    inc bc                                        ; $5054: $03
    ld h, h                                       ; $5055: $64
    add hl, de                                    ; $5056: $19
    inc bc                                        ; $5057: $03
    ld l, c                                       ; $5058: $69
    add hl, de                                    ; $5059: $19
    inc bc                                        ; $505a: $03
    ld l, l                                       ; $505b: $6d
    add hl, de                                    ; $505c: $19
    inc bc                                        ; $505d: $03
    ld [hl], d                                    ; $505e: $72
    add hl, de                                    ; $505f: $19
    inc bc                                        ; $5060: $03
    ld a, b                                       ; $5061: $78
    add hl, de                                    ; $5062: $19
    inc bc                                        ; $5063: $03
    ld a, a                                       ; $5064: $7f
    add hl, de                                    ; $5065: $19
    inc bc                                        ; $5066: $03
    adc b                                         ; $5067: $88
    add hl, de                                    ; $5068: $19
    inc bc                                        ; $5069: $03
    sub d                                         ; $506a: $92
    add hl, de                                    ; $506b: $19
    inc bc                                        ; $506c: $03
    sbc d                                         ; $506d: $9a
    add hl, de                                    ; $506e: $19
    inc bc                                        ; $506f: $03
    and l                                         ; $5070: $a5
    add hl, de                                    ; $5071: $19
    inc bc                                        ; $5072: $03
    or c                                          ; $5073: $b1
    add hl, de                                    ; $5074: $19
    inc bc                                        ; $5075: $03
    cp d                                          ; $5076: $ba
    add hl, de                                    ; $5077: $19
    inc bc                                        ; $5078: $03
    call nz, Call_000_0319                        ; $5079: $c4 $19 $03
    adc $19                                       ; $507c: $ce $19
    inc bc                                        ; $507e: $03
    ret c                                         ; $507f: $d8

    add hl, de                                    ; $5080: $19
    inc bc                                        ; $5081: $03
    db $e4                                        ; $5082: $e4
    add hl, de                                    ; $5083: $19
    inc bc                                        ; $5084: $03
    xor $19                                       ; $5085: $ee $19
    inc bc                                        ; $5087: $03
    push af                                       ; $5088: $f5
    add hl, de                                    ; $5089: $19
    inc bc                                        ; $508a: $03
    cp $19                                        ; $508b: $fe $19
    inc bc                                        ; $508d: $03
    dec b                                         ; $508e: $05
    ld a, [de]                                    ; $508f: $1a
    inc bc                                        ; $5090: $03
    inc c                                         ; $5091: $0c
    ld a, [de]                                    ; $5092: $1a
    inc bc                                        ; $5093: $03
    inc d                                         ; $5094: $14
    ld a, [de]                                    ; $5095: $1a
    inc bc                                        ; $5096: $03
    dec e                                         ; $5097: $1d
    ld a, [de]                                    ; $5098: $1a
    inc bc                                        ; $5099: $03
    daa                                           ; $509a: $27
    ld a, [de]                                    ; $509b: $1a
    inc bc                                        ; $509c: $03
    inc sp                                        ; $509d: $33
    ld a, [de]                                    ; $509e: $1a
    inc bc                                        ; $509f: $03
    dec sp                                        ; $50a0: $3b
    ld a, [de]                                    ; $50a1: $1a
    inc bc                                        ; $50a2: $03
    ld b, [hl]                                    ; $50a3: $46
    ld a, [de]                                    ; $50a4: $1a
    inc bc                                        ; $50a5: $03
    ld d, e                                       ; $50a6: $53
    ld a, [de]                                    ; $50a7: $1a
    inc bc                                        ; $50a8: $03
    ld e, l                                       ; $50a9: $5d
    ld a, [de]                                    ; $50aa: $1a
    inc bc                                        ; $50ab: $03
    ld h, h                                       ; $50ac: $64
    ld a, [de]                                    ; $50ad: $1a
    inc bc                                        ; $50ae: $03
    ld l, [hl]                                    ; $50af: $6e
    ld a, [de]                                    ; $50b0: $1a
    inc bc                                        ; $50b1: $03
    ld [hl], l                                    ; $50b2: $75
    ld a, [de]                                    ; $50b3: $1a
    inc bc                                        ; $50b4: $03
    ld a, a                                       ; $50b5: $7f
    ld a, [de]                                    ; $50b6: $1a
    inc bc                                        ; $50b7: $03
    adc b                                         ; $50b8: $88
    ld a, [de]                                    ; $50b9: $1a
    inc bc                                        ; $50ba: $03
    sub b                                         ; $50bb: $90
    ld a, [de]                                    ; $50bc: $1a
    inc bc                                        ; $50bd: $03
    sub a                                         ; $50be: $97
    ld a, [de]                                    ; $50bf: $1a
    inc bc                                        ; $50c0: $03
    and b                                         ; $50c1: $a0
    ld a, [de]                                    ; $50c2: $1a
    inc bc                                        ; $50c3: $03
    xor h                                         ; $50c4: $ac
    ld a, [de]                                    ; $50c5: $1a
    inc bc                                        ; $50c6: $03
    or l                                          ; $50c7: $b5
    ld a, [de]                                    ; $50c8: $1a
    inc bc                                        ; $50c9: $03
    cp [hl]                                       ; $50ca: $be
    ld a, [de]                                    ; $50cb: $1a
    inc bc                                        ; $50cc: $03
    add $1a                                       ; $50cd: $c6 $1a
    inc bc                                        ; $50cf: $03
    rst $08                                       ; $50d0: $cf
    ld a, [de]                                    ; $50d1: $1a
    inc bc                                        ; $50d2: $03
    reti                                          ; $50d3: $d9


    ld a, [de]                                    ; $50d4: $1a
    inc bc                                        ; $50d5: $03
    db $e4                                        ; $50d6: $e4
    ld a, [de]                                    ; $50d7: $1a
    inc bc                                        ; $50d8: $03
    xor $1a                                       ; $50d9: $ee $1a
    inc bc                                        ; $50db: $03
    or $1a                                        ; $50dc: $f6 $1a
    inc bc                                        ; $50de: $03
    db $fc                                        ; $50df: $fc
    ld a, [de]                                    ; $50e0: $1a
    inc bc                                        ; $50e1: $03
    rlca                                          ; $50e2: $07
    dec de                                        ; $50e3: $1b
    inc bc                                        ; $50e4: $03
    inc de                                        ; $50e5: $13
    dec de                                        ; $50e6: $1b
    inc bc                                        ; $50e7: $03
    ld a, [de]                                    ; $50e8: $1a
    dec de                                        ; $50e9: $1b
    inc bc                                        ; $50ea: $03
    jr nz, jr_053_5108                            ; $50eb: $20 $1b

    inc bc                                        ; $50ed: $03

Jump_053_50ee:
    ld h, $1b                                     ; $50ee: $26 $1b
    inc bc                                        ; $50f0: $03
    inc sp                                        ; $50f1: $33
    dec de                                        ; $50f2: $1b
    inc bc                                        ; $50f3: $03
    ld b, h                                       ; $50f4: $44
    dec de                                        ; $50f5: $1b
    inc bc                                        ; $50f6: $03
    ld d, d                                       ; $50f7: $52
    dec de                                        ; $50f8: $1b
    inc bc                                        ; $50f9: $03
    ld e, d                                       ; $50fa: $5a
    dec de                                        ; $50fb: $1b
    inc bc                                        ; $50fc: $03
    ld h, l                                       ; $50fd: $65
    dec de                                        ; $50fe: $1b
    inc bc                                        ; $50ff: $03
    ld [hl], h                                    ; $5100: $74
    dec de                                        ; $5101: $1b
    inc bc                                        ; $5102: $03
    ld a, l                                       ; $5103: $7d
    dec de                                        ; $5104: $1b
    inc bc                                        ; $5105: $03
    adc h                                         ; $5106: $8c
    dec de                                        ; $5107: $1b

jr_053_5108:
    inc bc                                        ; $5108: $03
    sub a                                         ; $5109: $97
    dec de                                        ; $510a: $1b
    inc bc                                        ; $510b: $03
    and d                                         ; $510c: $a2
    dec de                                        ; $510d: $1b
    inc bc                                        ; $510e: $03
    xor h                                         ; $510f: $ac
    dec de                                        ; $5110: $1b
    inc bc                                        ; $5111: $03
    cp c                                          ; $5112: $b9
    dec de                                        ; $5113: $1b
    inc bc                                        ; $5114: $03
    ret nz                                        ; $5115: $c0

    dec de                                        ; $5116: $1b
    inc bc                                        ; $5117: $03
    ret z                                         ; $5118: $c8

    dec de                                        ; $5119: $1b
    inc bc                                        ; $511a: $03
    call nc, $031b                                ; $511b: $d4 $1b $03
    call c, $031b                                 ; $511e: $dc $1b $03
    db $e3                                        ; $5121: $e3
    dec de                                        ; $5122: $1b
    inc bc                                        ; $5123: $03
    xor $1b                                       ; $5124: $ee $1b
    inc bc                                        ; $5126: $03
    ld a, [$031b]                                 ; $5127: $fa $1b $03
    ld bc, $031c                                  ; $512a: $01 $1c $03
    ld a, [bc]                                    ; $512d: $0a
    inc e                                         ; $512e: $1c
    inc bc                                        ; $512f: $03
    ld [de], a                                    ; $5130: $12
    inc e                                         ; $5131: $1c
    inc bc                                        ; $5132: $03
    dec e                                         ; $5133: $1d
    inc e                                         ; $5134: $1c
    inc bc                                        ; $5135: $03
    daa                                           ; $5136: $27
    inc e                                         ; $5137: $1c
    inc bc                                        ; $5138: $03
    dec l                                         ; $5139: $2d
    inc e                                         ; $513a: $1c
    inc bc                                        ; $513b: $03
    ld [hl], $1c                                  ; $513c: $36 $1c
    inc bc                                        ; $513e: $03
    dec sp                                        ; $513f: $3b
    inc e                                         ; $5140: $1c
    inc bc                                        ; $5141: $03
    ld b, b                                       ; $5142: $40
    inc e                                         ; $5143: $1c
    inc bc                                        ; $5144: $03
    ld b, a                                       ; $5145: $47
    inc e                                         ; $5146: $1c
    inc bc                                        ; $5147: $03
    ld d, c                                       ; $5148: $51
    inc e                                         ; $5149: $1c
    inc bc                                        ; $514a: $03
    ld e, e                                       ; $514b: $5b
    inc e                                         ; $514c: $1c
    inc bc                                        ; $514d: $03
    ld h, [hl]                                    ; $514e: $66
    inc e                                         ; $514f: $1c
    inc bc                                        ; $5150: $03
    ld l, l                                       ; $5151: $6d
    inc e                                         ; $5152: $1c
    inc bc                                        ; $5153: $03
    ld a, b                                       ; $5154: $78
    inc e                                         ; $5155: $1c
    inc bc                                        ; $5156: $03
    add b                                         ; $5157: $80
    inc e                                         ; $5158: $1c
    inc bc                                        ; $5159: $03
    adc c                                         ; $515a: $89
    inc e                                         ; $515b: $1c
    inc bc                                        ; $515c: $03
    sub [hl]                                      ; $515d: $96
    inc e                                         ; $515e: $1c
    inc bc                                        ; $515f: $03
    sbc l                                         ; $5160: $9d
    inc e                                         ; $5161: $1c
    inc bc                                        ; $5162: $03
    and e                                         ; $5163: $a3
    inc e                                         ; $5164: $1c
    inc bc                                        ; $5165: $03
    xor l                                         ; $5166: $ad
    inc e                                         ; $5167: $1c
    inc bc                                        ; $5168: $03
    cp b                                          ; $5169: $b8
    inc e                                         ; $516a: $1c
    inc bc                                        ; $516b: $03
    rst $00                                       ; $516c: $c7
    inc e                                         ; $516d: $1c
    inc bc                                        ; $516e: $03
    rst $08                                       ; $516f: $cf
    inc e                                         ; $5170: $1c
    inc bc                                        ; $5171: $03
    sub $1c                                       ; $5172: $d6 $1c
    inc bc                                        ; $5174: $03
    rst $18                                       ; $5175: $df
    inc e                                         ; $5176: $1c
    inc bc                                        ; $5177: $03
    rst $20                                       ; $5178: $e7
    inc e                                         ; $5179: $1c
    inc bc                                        ; $517a: $03
    or $1c                                        ; $517b: $f6 $1c
    inc bc                                        ; $517d: $03
    rst $38                                       ; $517e: $ff
    inc e                                         ; $517f: $1c
    inc bc                                        ; $5180: $03
    ld b, $1d                                     ; $5181: $06 $1d
    inc bc                                        ; $5183: $03
    ld a, [bc]                                    ; $5184: $0a
    dec e                                         ; $5185: $1d
    inc bc                                        ; $5186: $03
    ld de, $031d                                  ; $5187: $11 $1d $03
    ld a, [de]                                    ; $518a: $1a
    dec e                                         ; $518b: $1d
    inc bc                                        ; $518c: $03
    ld hl, $031d                                  ; $518d: $21 $1d $03
    ld a, [hl+]                                   ; $5190: $2a
    dec e                                         ; $5191: $1d
    inc bc                                        ; $5192: $03
    ld [hl-], a                                   ; $5193: $32
    dec e                                         ; $5194: $1d
    inc bc                                        ; $5195: $03
    ld b, d                                       ; $5196: $42
    dec e                                         ; $5197: $1d
    inc bc                                        ; $5198: $03
    ld c, e                                       ; $5199: $4b
    dec e                                         ; $519a: $1d
    inc bc                                        ; $519b: $03
    ld d, [hl]                                    ; $519c: $56
    dec e                                         ; $519d: $1d
    inc bc                                        ; $519e: $03
    ld e, l                                       ; $519f: $5d
    dec e                                         ; $51a0: $1d
    inc bc                                        ; $51a1: $03
    ld l, b                                       ; $51a2: $68
    dec e                                         ; $51a3: $1d
    inc bc                                        ; $51a4: $03
    ld [hl], c                                    ; $51a5: $71
    dec e                                         ; $51a6: $1d
    inc bc                                        ; $51a7: $03
    ld a, b                                       ; $51a8: $78
    dec e                                         ; $51a9: $1d
    inc bc                                        ; $51aa: $03
    add h                                         ; $51ab: $84
    dec e                                         ; $51ac: $1d
    inc bc                                        ; $51ad: $03
    adc d                                         ; $51ae: $8a
    dec e                                         ; $51af: $1d
    inc bc                                        ; $51b0: $03
    sub h                                         ; $51b1: $94
    dec e                                         ; $51b2: $1d
    inc bc                                        ; $51b3: $03
    sbc c                                         ; $51b4: $99
    dec e                                         ; $51b5: $1d
    inc bc                                        ; $51b6: $03
    and d                                         ; $51b7: $a2
    dec e                                         ; $51b8: $1d
    inc bc                                        ; $51b9: $03
    xor l                                         ; $51ba: $ad
    dec e                                         ; $51bb: $1d
    inc bc                                        ; $51bc: $03
    cp c                                          ; $51bd: $b9
    dec e                                         ; $51be: $1d
    inc bc                                        ; $51bf: $03
    rst $00                                       ; $51c0: $c7
    dec e                                         ; $51c1: $1d
    inc bc                                        ; $51c2: $03
    db $db                                        ; $51c3: $db
    dec e                                         ; $51c4: $1d
    inc bc                                        ; $51c5: $03
    add sp, $1d                                   ; $51c6: $e8 $1d
    inc bc                                        ; $51c8: $03
    db $ed                                        ; $51c9: $ed
    dec e                                         ; $51ca: $1d
    inc bc                                        ; $51cb: $03
    ld hl, sp+$1d                                 ; $51cc: $f8 $1d
    inc bc                                        ; $51ce: $03
    ld [$031e], sp                                ; $51cf: $08 $1e $03
    daa                                           ; $51d2: $27
    ld e, $03                                     ; $51d3: $1e $03
    dec a                                         ; $51d5: $3d
    ld e, $03                                     ; $51d6: $1e $03
    ld d, c                                       ; $51d8: $51
    ld e, $03                                     ; $51d9: $1e $03
    ld [hl], e                                    ; $51db: $73
    ld e, $03                                     ; $51dc: $1e $03
    sub b                                         ; $51de: $90
    ld e, $03                                     ; $51df: $1e $03
    or h                                          ; $51e1: $b4
    ld e, $03                                     ; $51e2: $1e $03
    call z, Call_000_031e                         ; $51e4: $cc $1e $03
    db $e4                                        ; $51e7: $e4
    ld e, $03                                     ; $51e8: $1e $03
    db $fc                                        ; $51ea: $fc
    ld e, $03                                     ; $51eb: $1e $03
    rst $38                                       ; $51ed: $ff
    ld e, $03                                     ; $51ee: $1e $03
    ld [bc], a                                    ; $51f0: $02
    rra                                           ; $51f1: $1f
    inc bc                                        ; $51f2: $03
    ld [$031f], sp                                ; $51f3: $08 $1f $03
    ld a, [bc]                                    ; $51f6: $0a
    rra                                           ; $51f7: $1f
    inc bc                                        ; $51f8: $03
    rrca                                          ; $51f9: $0f
    rra                                           ; $51fa: $1f
    inc bc                                        ; $51fb: $03
    inc de                                        ; $51fc: $13
    rra                                           ; $51fd: $1f
    inc bc                                        ; $51fe: $03
    add hl, de                                    ; $51ff: $19
    rra                                           ; $5200: $1f
    inc bc                                        ; $5201: $03
    ld h, $1f                                     ; $5202: $26 $1f
    inc bc                                        ; $5204: $03
    dec sp                                        ; $5205: $3b
    rra                                           ; $5206: $1f
    inc bc                                        ; $5207: $03
    ld d, a                                       ; $5208: $57
    rra                                           ; $5209: $1f
    inc bc                                        ; $520a: $03
    ld h, d                                       ; $520b: $62
    rra                                           ; $520c: $1f
    inc bc                                        ; $520d: $03
    ld [hl], d                                    ; $520e: $72
    rra                                           ; $520f: $1f
    inc bc                                        ; $5210: $03
    ld a, h                                       ; $5211: $7c
    rra                                           ; $5212: $1f
    inc bc                                        ; $5213: $03
    adc e                                         ; $5214: $8b
    rra                                           ; $5215: $1f
    inc bc                                        ; $5216: $03
    and l                                         ; $5217: $a5
    rra                                           ; $5218: $1f
    inc bc                                        ; $5219: $03
    or b                                          ; $521a: $b0
    rra                                           ; $521b: $1f
    inc bc                                        ; $521c: $03
    call nz, $031f                                ; $521d: $c4 $1f $03
    jp nc, $031f                                  ; $5220: $d2 $1f $03

    db $ed                                        ; $5223: $ed
    rra                                           ; $5224: $1f
    inc bc                                        ; $5225: $03
    ld a, [$031f]                                 ; $5226: $fa $1f $03
    dec d                                         ; $5229: $15
    jr nz, jr_053_522f                            ; $522a: $20 $03

    ld l, $20                                     ; $522c: $2e $20
    inc bc                                        ; $522e: $03

jr_053_522f:
    ld c, h                                       ; $522f: $4c
    jr nz, jr_053_5235                            ; $5230: $20 $03

    ld e, d                                       ; $5232: $5a
    jr nz, jr_053_5238                            ; $5233: $20 $03

jr_053_5235:
    ld [hl], l                                    ; $5235: $75
    jr nz, jr_053_523b                            ; $5236: $20 $03

jr_053_5238:
    ld a, [hl]                                    ; $5238: $7e
    jr nz, jr_053_523e                            ; $5239: $20 $03

jr_053_523b:
    adc a                                         ; $523b: $8f
    jr nz, jr_053_5241                            ; $523c: $20 $03

jr_053_523e:
    sbc e                                         ; $523e: $9b
    jr nz, jr_053_5244                            ; $523f: $20 $03

jr_053_5241:
    or e                                          ; $5241: $b3
    jr nz, jr_053_5247                            ; $5242: $20 $03

jr_053_5244:
    rst $10                                       ; $5244: $d7
    jr nz, jr_053_524a                            ; $5245: $20 $03

jr_053_5247:
    and $20                                       ; $5247: $e6 $20
    inc bc                                        ; $5249: $03

jr_053_524a:
    db $fc                                        ; $524a: $fc
    jr nz, @+$05                                  ; $524b: $20 $03

    ld [de], a                                    ; $524d: $12
    ld hl, $1b03                                  ; $524e: $21 $03 $1b
    ld hl, $2e03                                  ; $5251: $21 $03 $2e
    ld hl, $3a03                                  ; $5254: $21 $03 $3a
    ld hl, $5703                                  ; $5257: $21 $03 $57
    ld hl, $6003                                  ; $525a: $21 $03 $60
    ld hl, $8203                                  ; $525d: $21 $03 $82
    ld hl, $9c03                                  ; $5260: $21 $03 $9c
    ld hl, $bd03                                  ; $5263: $21 $03 $bd
    ld hl, $d403                                  ; $5266: $21 $03 $d4
    ld hl, $e603                                  ; $5269: $21 $03 $e6
    ld hl, $f403                                  ; $526c: $21 $03 $f4
    ld hl, $1003                                  ; $526f: $21 $03 $10
    ld [hl+], a                                   ; $5272: $22
    inc bc                                        ; $5273: $03
    jr jr_053_5298                                ; $5274: $18 $22

    inc bc                                        ; $5276: $03
    ld sp, $0322                                  ; $5277: $31 $22 $03
    dec sp                                        ; $527a: $3b
    ld [hl+], a                                   ; $527b: $22
    inc bc                                        ; $527c: $03
    ld e, h                                       ; $527d: $5c
    ld [hl+], a                                   ; $527e: $22
    inc bc                                        ; $527f: $03
    ld l, l                                       ; $5280: $6d
    ld [hl+], a                                   ; $5281: $22
    inc bc                                        ; $5282: $03
    ld a, l                                       ; $5283: $7d
    ld [hl+], a                                   ; $5284: $22
    inc bc                                        ; $5285: $03
    sub a                                         ; $5286: $97
    ld [hl+], a                                   ; $5287: $22
    inc bc                                        ; $5288: $03
    xor l                                         ; $5289: $ad
    ld [hl+], a                                   ; $528a: $22
    inc bc                                        ; $528b: $03
    pop bc                                        ; $528c: $c1
    ld [hl+], a                                   ; $528d: $22
    inc bc                                        ; $528e: $03
    jp nc, $0322                                  ; $528f: $d2 $22 $03

    rst $18                                       ; $5292: $df
    ld [hl+], a                                   ; $5293: $22
    inc bc                                        ; $5294: $03
    ld hl, sp+$22                                 ; $5295: $f8 $22
    inc bc                                        ; $5297: $03

jr_053_5298:
    rlca                                          ; $5298: $07
    inc hl                                        ; $5299: $23
    inc bc                                        ; $529a: $03
    ld e, $23                                     ; $529b: $1e $23
    inc bc                                        ; $529d: $03
    daa                                           ; $529e: $27
    inc hl                                        ; $529f: $23
    inc bc                                        ; $52a0: $03
    ld sp, $0323                                  ; $52a1: $31 $23 $03
    ld c, d                                       ; $52a4: $4a
    inc hl                                        ; $52a5: $23
    inc bc                                        ; $52a6: $03
    ld h, l                                       ; $52a7: $65
    inc hl                                        ; $52a8: $23
    inc bc                                        ; $52a9: $03
    ld [hl], l                                    ; $52aa: $75
    inc hl                                        ; $52ab: $23
    inc bc                                        ; $52ac: $03
    adc l                                         ; $52ad: $8d
    inc hl                                        ; $52ae: $23
    inc bc                                        ; $52af: $03
    sbc b                                         ; $52b0: $98
    inc hl                                        ; $52b1: $23
    inc bc                                        ; $52b2: $03
    xor e                                         ; $52b3: $ab
    inc hl                                        ; $52b4: $23
    inc bc                                        ; $52b5: $03
    pop bc                                        ; $52b6: $c1
    inc hl                                        ; $52b7: $23
    inc bc                                        ; $52b8: $03
    db $dd                                        ; $52b9: $dd
    inc hl                                        ; $52ba: $23
    inc bc                                        ; $52bb: $03
    and $23                                       ; $52bc: $e6 $23
    inc bc                                        ; $52be: $03
    ldh a, [rNR44]                                ; $52bf: $f0 $23
    inc bc                                        ; $52c1: $03
    add hl, bc                                    ; $52c2: $09
    inc h                                         ; $52c3: $24
    inc bc                                        ; $52c4: $03
    dec de                                        ; $52c5: $1b
    inc h                                         ; $52c6: $24
    inc bc                                        ; $52c7: $03
    dec hl                                        ; $52c8: $2b
    inc h                                         ; $52c9: $24
    inc bc                                        ; $52ca: $03
    ld b, e                                       ; $52cb: $43
    inc h                                         ; $52cc: $24
    inc bc                                        ; $52cd: $03
    ld c, [hl]                                    ; $52ce: $4e
    inc h                                         ; $52cf: $24
    inc bc                                        ; $52d0: $03
    ld l, h                                       ; $52d1: $6c
    inc h                                         ; $52d2: $24
    inc bc                                        ; $52d3: $03
    sbc l                                         ; $52d4: $9d
    inc h                                         ; $52d5: $24
    inc bc                                        ; $52d6: $03
    adc $24                                       ; $52d7: $ce $24
    inc bc                                        ; $52d9: $03
    push af                                       ; $52da: $f5
    inc h                                         ; $52db: $24
    inc bc                                        ; $52dc: $03
    jr nc, jr_053_5304                            ; $52dd: $30 $25

    inc bc                                        ; $52df: $03
    ld d, l                                       ; $52e0: $55
    dec h                                         ; $52e1: $25
    inc bc                                        ; $52e2: $03
    ld [hl], a                                    ; $52e3: $77
    dec h                                         ; $52e4: $25
    inc bc                                        ; $52e5: $03
    or e                                          ; $52e6: $b3
    dec h                                         ; $52e7: $25
    inc bc                                        ; $52e8: $03
    db $fc                                        ; $52e9: $fc
    dec h                                         ; $52ea: $25
    inc bc                                        ; $52eb: $03
    ld l, $26                                     ; $52ec: $2e $26
    inc bc                                        ; $52ee: $03
    ld c, [hl]                                    ; $52ef: $4e
    ld h, $03                                     ; $52f0: $26 $03
    sbc d                                         ; $52f2: $9a
    ld h, $03                                     ; $52f3: $26 $03
    jp Jump_000_0326                              ; $52f5: $c3 $26 $03


    or $26                                        ; $52f8: $f6 $26
    inc bc                                        ; $52fa: $03
    ld h, $27                                     ; $52fb: $26 $27
    inc bc                                        ; $52fd: $03
    ld l, d                                       ; $52fe: $6a
    daa                                           ; $52ff: $27
    inc bc                                        ; $5300: $03
    cp c                                          ; $5301: $b9
    daa                                           ; $5302: $27
    inc bc                                        ; $5303: $03

jr_053_5304:
    jp Jump_000_0327                              ; $5304: $c3 $27 $03


    sla a                                         ; $5307: $cb $27
    inc bc                                        ; $5309: $03
    rst $10                                       ; $530a: $d7
    daa                                           ; $530b: $27
    inc bc                                        ; $530c: $03
    db $e4                                        ; $530d: $e4
    daa                                           ; $530e: $27
    inc bc                                        ; $530f: $03
    ldh a, [$27]                                  ; $5310: $f0 $27
    inc bc                                        ; $5312: $03
    ei                                            ; $5313: $fb
    daa                                           ; $5314: $27
    inc bc                                        ; $5315: $03
    rlca                                          ; $5316: $07
    jr z, jr_053_531c                             ; $5317: $28 $03

    ld d, $28                                     ; $5319: $16 $28
    inc bc                                        ; $531b: $03

jr_053_531c:
    ld [hl+], a                                   ; $531c: $22
    jr z, jr_053_5322                             ; $531d: $28 $03

    jr nc, jr_053_5349                            ; $531f: $30 $28

    inc bc                                        ; $5321: $03

jr_053_5322:
    ld a, [hl-]                                   ; $5322: $3a
    jr z, jr_053_5328                             ; $5323: $28 $03

    ld b, h                                       ; $5325: $44
    jr z, jr_053_532b                             ; $5326: $28 $03

jr_053_5328:
    ld c, a                                       ; $5328: $4f
    jr z, jr_053_532e                             ; $5329: $28 $03

jr_053_532b:
    ld e, d                                       ; $532b: $5a
    jr z, jr_053_5331                             ; $532c: $28 $03

jr_053_532e:
    ld h, a                                       ; $532e: $67
    jr z, jr_053_5334                             ; $532f: $28 $03

jr_053_5331:
    ld [hl], d                                    ; $5331: $72
    jr z, jr_053_5337                             ; $5332: $28 $03

jr_053_5334:
    ld a, h                                       ; $5334: $7c
    jr z, jr_053_533a                             ; $5335: $28 $03

jr_053_5337:
    add e                                         ; $5337: $83
    jr z, jr_053_533d                             ; $5338: $28 $03

jr_053_533a:
    sub b                                         ; $533a: $90
    jr z, jr_053_5340                             ; $533b: $28 $03

jr_053_533d:
    sbc l                                         ; $533d: $9d
    jr z, jr_053_5343                             ; $533e: $28 $03

jr_053_5340:
    and a                                         ; $5340: $a7
    jr z, jr_053_5346                             ; $5341: $28 $03

jr_053_5343:
    or c                                          ; $5343: $b1
    jr z, jr_053_5349                             ; $5344: $28 $03

jr_053_5346:
    cp [hl]                                       ; $5346: $be
    jr z, jr_053_534c                             ; $5347: $28 $03

jr_053_5349:
    ret                                           ; $5349: $c9


    jr z, jr_053_534f                             ; $534a: $28 $03

jr_053_534c:
    push de                                       ; $534c: $d5
    jr z, jr_053_5352                             ; $534d: $28 $03

jr_053_534f:
    ldh [$28], a                                  ; $534f: $e0 $28
    inc bc                                        ; $5351: $03

jr_053_5352:
    ld [$0328], a                                 ; $5352: $ea $28 $03
    push af                                       ; $5355: $f5
    jr z, jr_053_535b                             ; $5356: $28 $03

    inc bc                                        ; $5358: $03
    add hl, hl                                    ; $5359: $29
    inc bc                                        ; $535a: $03

jr_053_535b:
    ld c, $29                                     ; $535b: $0e $29
    inc bc                                        ; $535d: $03
    ld d, $29                                     ; $535e: $16 $29
    inc bc                                        ; $5360: $03
    ld [hl+], a                                   ; $5361: $22
    add hl, hl                                    ; $5362: $29
    inc bc                                        ; $5363: $03
    dec l                                         ; $5364: $2d
    add hl, hl                                    ; $5365: $29
    inc bc                                        ; $5366: $03
    add hl, sp                                    ; $5367: $39
    add hl, hl                                    ; $5368: $29
    inc bc                                        ; $5369: $03
    ld b, h                                       ; $536a: $44
    add hl, hl                                    ; $536b: $29
    inc bc                                        ; $536c: $03
    ld d, d                                       ; $536d: $52
    add hl, hl                                    ; $536e: $29
    inc bc                                        ; $536f: $03
    ld e, h                                       ; $5370: $5c
    add hl, hl                                    ; $5371: $29
    inc bc                                        ; $5372: $03
    ld h, a                                       ; $5373: $67
    add hl, hl                                    ; $5374: $29
    inc bc                                        ; $5375: $03
    ld [hl], e                                    ; $5376: $73
    add hl, hl                                    ; $5377: $29
    inc bc                                        ; $5378: $03
    ld a, [hl]                                    ; $5379: $7e
    add hl, hl                                    ; $537a: $29
    inc bc                                        ; $537b: $03
    adc b                                         ; $537c: $88
    add hl, hl                                    ; $537d: $29
    inc bc                                        ; $537e: $03
    sub e                                         ; $537f: $93
    add hl, hl                                    ; $5380: $29
    inc bc                                        ; $5381: $03
    sbc a                                         ; $5382: $9f
    add hl, hl                                    ; $5383: $29
    inc bc                                        ; $5384: $03
    xor e                                         ; $5385: $ab
    add hl, hl                                    ; $5386: $29
    inc bc                                        ; $5387: $03
    cp c                                          ; $5388: $b9
    add hl, hl                                    ; $5389: $29
    inc bc                                        ; $538a: $03
    cp a                                          ; $538b: $bf
    add hl, hl                                    ; $538c: $29
    inc bc                                        ; $538d: $03
    ret                                           ; $538e: $c9


    add hl, hl                                    ; $538f: $29
    inc bc                                        ; $5390: $03
    call nc, $0329                                ; $5391: $d4 $29 $03
    reti                                          ; $5394: $d9


    add hl, hl                                    ; $5395: $29
    inc bc                                        ; $5396: $03
    db $e3                                        ; $5397: $e3
    add hl, hl                                    ; $5398: $29
    inc bc                                        ; $5399: $03
    db $ec                                        ; $539a: $ec
    add hl, hl                                    ; $539b: $29
    inc bc                                        ; $539c: $03
    ld hl, sp+$29                                 ; $539d: $f8 $29
    inc bc                                        ; $539f: $03
    ld b, $2a                                     ; $53a0: $06 $2a
    inc bc                                        ; $53a2: $03
    ld [de], a                                    ; $53a3: $12
    ld a, [hl+]                                   ; $53a4: $2a
    inc bc                                        ; $53a5: $03
    rra                                           ; $53a6: $1f
    ld a, [hl+]                                   ; $53a7: $2a
    inc bc                                        ; $53a8: $03
    inc l                                         ; $53a9: $2c
    ld a, [hl+]                                   ; $53aa: $2a
    inc bc                                        ; $53ab: $03
    dec [hl]                                      ; $53ac: $35
    ld a, [hl+]                                   ; $53ad: $2a
    inc bc                                        ; $53ae: $03
    ld b, c                                       ; $53af: $41
    ld a, [hl+]                                   ; $53b0: $2a
    inc bc                                        ; $53b1: $03
    ld d, b                                       ; $53b2: $50
    ld a, [hl+]                                   ; $53b3: $2a
    inc bc                                        ; $53b4: $03
    ld d, [hl]                                    ; $53b5: $56
    ld a, [hl+]                                   ; $53b6: $2a
    inc bc                                        ; $53b7: $03
    ld h, l                                       ; $53b8: $65
    ld a, [hl+]                                   ; $53b9: $2a
    inc bc                                        ; $53ba: $03
    ld [hl], d                                    ; $53bb: $72
    ld a, [hl+]                                   ; $53bc: $2a
    inc bc                                        ; $53bd: $03
    ld a, h                                       ; $53be: $7c
    ld a, [hl+]                                   ; $53bf: $2a
    inc bc                                        ; $53c0: $03
    adc b                                         ; $53c1: $88
    ld a, [hl+]                                   ; $53c2: $2a
    inc bc                                        ; $53c3: $03
    sub e                                         ; $53c4: $93
    ld a, [hl+]                                   ; $53c5: $2a
    inc bc                                        ; $53c6: $03
    sbc [hl]                                      ; $53c7: $9e
    ld a, [hl+]                                   ; $53c8: $2a
    inc bc                                        ; $53c9: $03
    xor e                                         ; $53ca: $ab
    ld a, [hl+]                                   ; $53cb: $2a
    inc bc                                        ; $53cc: $03
    or [hl]                                       ; $53cd: $b6
    ld a, [hl+]                                   ; $53ce: $2a
    inc bc                                        ; $53cf: $03
    ret nz                                        ; $53d0: $c0

    ld a, [hl+]                                   ; $53d1: $2a
    inc bc                                        ; $53d2: $03
    jp z, Jump_000_032a                           ; $53d3: $ca $2a $03

    call nc, Call_000_032a                        ; $53d6: $d4 $2a $03
    ld [c], a                                     ; $53d9: $e2
    ld a, [hl+]                                   ; $53da: $2a
    inc bc                                        ; $53db: $03
    db $ed                                        ; $53dc: $ed
    ld a, [hl+]                                   ; $53dd: $2a
    inc bc                                        ; $53de: $03
    ld sp, hl                                     ; $53df: $f9
    ld a, [hl+]                                   ; $53e0: $2a
    inc bc                                        ; $53e1: $03
    inc b                                         ; $53e2: $04
    dec hl                                        ; $53e3: $2b
    inc bc                                        ; $53e4: $03
    ld de, $032b                                  ; $53e5: $11 $2b $03
    ld a, [de]                                    ; $53e8: $1a
    dec hl                                        ; $53e9: $2b
    inc bc                                        ; $53ea: $03
    ld h, $2b                                     ; $53eb: $26 $2b
    inc bc                                        ; $53ed: $03
    ld l, $2b                                     ; $53ee: $2e $2b
    inc bc                                        ; $53f0: $03
    jr c, jr_053_541e                             ; $53f1: $38 $2b

    inc bc                                        ; $53f3: $03
    ld b, e                                       ; $53f4: $43
    dec hl                                        ; $53f5: $2b
    inc bc                                        ; $53f6: $03
    ld c, a                                       ; $53f7: $4f
    dec hl                                        ; $53f8: $2b
    inc bc                                        ; $53f9: $03
    ld e, h                                       ; $53fa: $5c
    dec hl                                        ; $53fb: $2b
    inc bc                                        ; $53fc: $03
    ld h, l                                       ; $53fd: $65
    dec hl                                        ; $53fe: $2b
    inc bc                                        ; $53ff: $03
    ld l, a                                       ; $5400: $6f
    dec hl                                        ; $5401: $2b
    inc bc                                        ; $5402: $03
    ld a, l                                       ; $5403: $7d
    dec hl                                        ; $5404: $2b
    inc bc                                        ; $5405: $03
    add [hl]                                      ; $5406: $86
    dec hl                                        ; $5407: $2b
    inc bc                                        ; $5408: $03
    sub c                                         ; $5409: $91
    dec hl                                        ; $540a: $2b
    inc bc                                        ; $540b: $03
    sbc h                                         ; $540c: $9c
    dec hl                                        ; $540d: $2b
    inc bc                                        ; $540e: $03
    xor b                                         ; $540f: $a8
    dec hl                                        ; $5410: $2b
    inc bc                                        ; $5411: $03
    or a                                          ; $5412: $b7
    dec hl                                        ; $5413: $2b
    inc bc                                        ; $5414: $03
    call nz, Call_000_032b                        ; $5415: $c4 $2b $03
    call z, Call_000_032b                         ; $5418: $cc $2b $03
    sub $2b                                       ; $541b: $d6 $2b
    inc bc                                        ; $541d: $03

jr_053_541e:
    push hl                                       ; $541e: $e5
    dec hl                                        ; $541f: $2b
    inc bc                                        ; $5420: $03
    rst $28                                       ; $5421: $ef
    dec hl                                        ; $5422: $2b
    inc bc                                        ; $5423: $03
    db $fd                                        ; $5424: $fd
    dec hl                                        ; $5425: $2b
    inc bc                                        ; $5426: $03
    ld bc, $032c                                  ; $5427: $01 $2c $03
    ld c, $2c                                     ; $542a: $0e $2c
    inc bc                                        ; $542c: $03
    rla                                           ; $542d: $17
    inc l                                         ; $542e: $2c
    inc bc                                        ; $542f: $03
    inc hl                                        ; $5430: $23
    inc l                                         ; $5431: $2c
    inc bc                                        ; $5432: $03
    jr z, @+$2e                                   ; $5433: $28 $2c

    inc bc                                        ; $5435: $03
    add hl, hl                                    ; $5436: $29
    inc l                                         ; $5437: $2c
    inc bc                                        ; $5438: $03
    ld [hl-], a                                   ; $5439: $32
    inc l                                         ; $543a: $2c
    inc bc                                        ; $543b: $03
    ld d, e                                       ; $543c: $53
    inc l                                         ; $543d: $2c
    inc bc                                        ; $543e: $03
    ld l, l                                       ; $543f: $6d
    inc l                                         ; $5440: $2c
    inc bc                                        ; $5441: $03
    and b                                         ; $5442: $a0
    inc l                                         ; $5443: $2c
    inc bc                                        ; $5444: $03
    ret z                                         ; $5445: $c8

    inc l                                         ; $5446: $2c
    inc bc                                        ; $5447: $03
    and $2c                                       ; $5448: $e6 $2c
    inc bc                                        ; $544a: $03
    ld a, [bc]                                    ; $544b: $0a
    dec l                                         ; $544c: $2d
    inc bc                                        ; $544d: $03
    ld l, $2d                                     ; $544e: $2e $2d
    inc bc                                        ; $5450: $03
    ld b, [hl]                                    ; $5451: $46
    dec l                                         ; $5452: $2d
    inc bc                                        ; $5453: $03
    ld e, c                                       ; $5454: $59
    dec l                                         ; $5455: $2d
    inc bc                                        ; $5456: $03
    ld a, d                                       ; $5457: $7a
    dec l                                         ; $5458: $2d
    inc bc                                        ; $5459: $03
    sub h                                         ; $545a: $94
    dec l                                         ; $545b: $2d
    inc bc                                        ; $545c: $03
    xor a                                         ; $545d: $af
    dec l                                         ; $545e: $2d
    inc bc                                        ; $545f: $03
    jp nz, $032d                                  ; $5460: $c2 $2d $03

    db $db                                        ; $5463: $db
    dec l                                         ; $5464: $2d
    inc bc                                        ; $5465: $03
    db $fc                                        ; $5466: $fc
    dec l                                         ; $5467: $2d
    inc bc                                        ; $5468: $03
    inc h                                         ; $5469: $24
    ld l, $03                                     ; $546a: $2e $03
    ld b, l                                       ; $546c: $45
    ld l, $03                                     ; $546d: $2e $03
    ld a, e                                       ; $546f: $7b
    ld l, $03                                     ; $5470: $2e $03
    sbc h                                         ; $5472: $9c
    ld l, $03                                     ; $5473: $2e $03
    cp a                                          ; $5475: $bf
    ld l, $03                                     ; $5476: $2e $03
    db $e4                                        ; $5478: $e4
    ld l, $03                                     ; $5479: $2e $03
    rlca                                          ; $547b: $07
    cpl                                           ; $547c: $2f
    inc bc                                        ; $547d: $03
    ccf                                           ; $547e: $3f
    cpl                                           ; $547f: $2f
    inc bc                                        ; $5480: $03
    add [hl]                                      ; $5481: $86
    cpl                                           ; $5482: $2f
    inc bc                                        ; $5483: $03
    and [hl]                                      ; $5484: $a6
    cpl                                           ; $5485: $2f
    inc bc                                        ; $5486: $03
    rst $08                                       ; $5487: $cf
    cpl                                           ; $5488: $2f
    inc bc                                        ; $5489: $03
    sbc $2f                                       ; $548a: $de $2f
    inc bc                                        ; $548c: $03
    ld de, $0330                                  ; $548d: $11 $30 $03
    ld b, d                                       ; $5490: $42
    jr nc, jr_053_5496                            ; $5491: $30 $03

    ld [hl], c                                    ; $5493: $71
    jr nc, jr_053_5499                            ; $5494: $30 $03

jr_053_5496:
    sbc e                                         ; $5496: $9b
    jr nc, jr_053_549c                            ; $5497: $30 $03

jr_053_5499:
    reti                                          ; $5499: $d9


    jr nc, jr_053_549f                            ; $549a: $30 $03

jr_053_549c:
    db $eb                                        ; $549c: $eb
    jr nc, jr_053_54a2                            ; $549d: $30 $03

jr_053_549f:
    ld h, $31                                     ; $549f: $26 $31
    inc bc                                        ; $54a1: $03

jr_053_54a2:
    ld c, l                                       ; $54a2: $4d
    ld sp, $6d03                                  ; $54a3: $31 $03 $6d
    ld sp, $8d03                                  ; $54a6: $31 $03 $8d
    ld sp, $a803                                  ; $54a9: $31 $03 $a8
    ld sp, $ce03                                  ; $54ac: $31 $03 $ce
    ld sp, $0703                                  ; $54af: $31 $03 $07
    ld [hl-], a                                   ; $54b2: $32
    inc bc                                        ; $54b3: $03
    ld a, [hl+]                                   ; $54b4: $2a
    ld [hl-], a                                   ; $54b5: $32
    inc bc                                        ; $54b6: $03
    ld e, d                                       ; $54b7: $5a
    ld [hl-], a                                   ; $54b8: $32
    inc bc                                        ; $54b9: $03
    halt                                          ; $54ba: $76
    ld [hl-], a                                   ; $54bb: $32
    inc bc                                        ; $54bc: $03
    adc b                                         ; $54bd: $88
    ld [hl-], a                                   ; $54be: $32
    inc bc                                        ; $54bf: $03
    or e                                          ; $54c0: $b3
    ld [hl-], a                                   ; $54c1: $32
    inc bc                                        ; $54c2: $03
    db $e3                                        ; $54c3: $e3
    ld [hl-], a                                   ; $54c4: $32
    inc bc                                        ; $54c5: $03
    inc de                                        ; $54c6: $13
    inc sp                                        ; $54c7: $33
    inc bc                                        ; $54c8: $03
    dec h                                         ; $54c9: $25
    inc sp                                        ; $54ca: $33
    inc bc                                        ; $54cb: $03
    ld c, l                                       ; $54cc: $4d
    inc sp                                        ; $54cd: $33
    inc bc                                        ; $54ce: $03
    ld h, h                                       ; $54cf: $64
    inc sp                                        ; $54d0: $33
    inc bc                                        ; $54d1: $03
    ld a, a                                       ; $54d2: $7f
    inc sp                                        ; $54d3: $33
    inc bc                                        ; $54d4: $03
    sub [hl]                                      ; $54d5: $96
    inc sp                                        ; $54d6: $33
    inc bc                                        ; $54d7: $03
    call nz, $0333                                ; $54d8: $c4 $33 $03
    pop hl                                        ; $54db: $e1
    inc sp                                        ; $54dc: $33
    inc bc                                        ; $54dd: $03
    rrca                                          ; $54de: $0f
    inc [hl]                                      ; $54df: $34
    inc bc                                        ; $54e0: $03
    ld a, [hl+]                                   ; $54e1: $2a
    inc [hl]                                      ; $54e2: $34
    inc bc                                        ; $54e3: $03
    add hl, sp                                    ; $54e4: $39
    inc [hl]                                      ; $54e5: $34
    inc bc                                        ; $54e6: $03
    ld l, b                                       ; $54e7: $68
    inc [hl]                                      ; $54e8: $34
    inc bc                                        ; $54e9: $03
    adc e                                         ; $54ea: $8b
    inc [hl]                                      ; $54eb: $34
    inc bc                                        ; $54ec: $03
    xor e                                         ; $54ed: $ab
    inc [hl]                                      ; $54ee: $34
    inc bc                                        ; $54ef: $03
    ret nc                                        ; $54f0: $d0

    inc [hl]                                      ; $54f1: $34
    inc bc                                        ; $54f2: $03
    and $34                                       ; $54f3: $e6 $34
    inc bc                                        ; $54f5: $03
    dec c                                         ; $54f6: $0d
    dec [hl]                                      ; $54f7: $35
    inc bc                                        ; $54f8: $03
    ld [hl-], a                                   ; $54f9: $32
    dec [hl]                                      ; $54fa: $35
    inc bc                                        ; $54fb: $03
    ld e, c                                       ; $54fc: $59
    dec [hl]                                      ; $54fd: $35
    inc bc                                        ; $54fe: $03
    add l                                         ; $54ff: $85
    dec [hl]                                      ; $5500: $35
    inc bc                                        ; $5501: $03
    sbc e                                         ; $5502: $9b
    dec [hl]                                      ; $5503: $35
    inc bc                                        ; $5504: $03
    rst $00                                       ; $5505: $c7
    dec [hl]                                      ; $5506: $35
    inc bc                                        ; $5507: $03
    rst $20                                       ; $5508: $e7
    dec [hl]                                      ; $5509: $35
    inc bc                                        ; $550a: $03
    inc de                                        ; $550b: $13
    ld [hl], $03                                  ; $550c: $36 $03
    ld b, d                                       ; $550e: $42
    ld [hl], $03                                  ; $550f: $36 $03
    ld d, [hl]                                    ; $5511: $56
    ld [hl], $03                                  ; $5512: $36 $03
    ld l, [hl]                                    ; $5514: $6e
    ld [hl], $03                                  ; $5515: $36 $03
    sbc h                                         ; $5517: $9c
    ld [hl], $03                                  ; $5518: $36 $03
    jp nz, Jump_000_0336                          ; $551a: $c2 $36 $03

    db $fc                                        ; $551d: $fc

Jump_053_551e:
    ld [hl], $03                                  ; $551e: $36 $03
    inc hl                                        ; $5520: $23
    scf                                           ; $5521: $37
    inc bc                                        ; $5522: $03
    ld c, c                                       ; $5523: $49
    scf                                           ; $5524: $37
    inc bc                                        ; $5525: $03
    ld [hl], e                                    ; $5526: $73
    scf                                           ; $5527: $37
    inc bc                                        ; $5528: $03
    sbc c                                         ; $5529: $99
    scf                                           ; $552a: $37
    inc bc                                        ; $552b: $03
    pop bc                                        ; $552c: $c1
    scf                                           ; $552d: $37
    inc bc                                        ; $552e: $03
    rst $08                                       ; $552f: $cf
    scf                                           ; $5530: $37
    inc bc                                        ; $5531: $03
    ld hl, sp+$37                                 ; $5532: $f8 $37
    inc bc                                        ; $5534: $03
    ld e, $38                                     ; $5535: $1e $38
    inc bc                                        ; $5537: $03
    jr c, @+$3a                                   ; $5538: $38 $38

    inc bc                                        ; $553a: $03
    ld l, a                                       ; $553b: $6f
    jr c, jr_053_5541                             ; $553c: $38 $03

    sbc a                                         ; $553e: $9f
    jr c, jr_053_5544                             ; $553f: $38 $03

jr_053_5541:
    push bc                                       ; $5541: $c5
    jr c, jr_053_5547                             ; $5542: $38 $03

jr_053_5544:
    sbc $38                                       ; $5544: $de $38
    inc bc                                        ; $5546: $03

jr_053_5547:
    inc b                                         ; $5547: $04
    add hl, sp                                    ; $5548: $39
    inc bc                                        ; $5549: $03
    ld h, $39                                     ; $554a: $26 $39
    inc bc                                        ; $554c: $03
    ld d, c                                       ; $554d: $51
    add hl, sp                                    ; $554e: $39
    inc bc                                        ; $554f: $03
    ld [hl], l                                    ; $5550: $75
    add hl, sp                                    ; $5551: $39
    inc bc                                        ; $5552: $03
    adc a                                         ; $5553: $8f
    add hl, sp                                    ; $5554: $39
    inc bc                                        ; $5555: $03
    cp e                                          ; $5556: $bb
    add hl, sp                                    ; $5557: $39
    inc bc                                        ; $5558: $03
    add sp, $39                                   ; $5559: $e8 $39
    inc bc                                        ; $555b: $03
    ld a, [$0339]                                 ; $555c: $fa $39 $03
    cpl                                           ; $555f: $2f
    ld a, [hl-]                                   ; $5560: $3a
    inc bc                                        ; $5561: $03
    ld e, l                                       ; $5562: $5d
    ld a, [hl-]                                   ; $5563: $3a
    inc bc                                        ; $5564: $03
    ld [hl], c                                    ; $5565: $71
    ld a, [hl-]                                   ; $5566: $3a
    inc bc                                        ; $5567: $03
    sbc h                                         ; $5568: $9c
    ld a, [hl-]                                   ; $5569: $3a
    inc bc                                        ; $556a: $03
    or e                                          ; $556b: $b3
    ld a, [hl-]                                   ; $556c: $3a
    inc bc                                        ; $556d: $03
    jp nz, $033a                                  ; $556e: $c2 $3a $03

    jp nc, $033a                                  ; $5571: $d2 $3a $03

    ret c                                         ; $5574: $d8

    ld a, [hl-]                                   ; $5575: $3a
    inc bc                                        ; $5576: $03
    sbc $3a                                       ; $5577: $de $3a
    inc bc                                        ; $5579: $03
    and $3a                                       ; $557a: $e6 $3a
    inc bc                                        ; $557c: $03
    xor $3a                                       ; $557d: $ee $3a
    inc bc                                        ; $557f: $03
    rst $30                                       ; $5580: $f7
    ld a, [hl-]                                   ; $5581: $3a
    inc bc                                        ; $5582: $03
    db $fc                                        ; $5583: $fc
    ld a, [hl-]                                   ; $5584: $3a
    inc bc                                        ; $5585: $03
    ld [bc], a                                    ; $5586: $02
    dec sp                                        ; $5587: $3b
    inc bc                                        ; $5588: $03
    ld [$033b], sp                                ; $5589: $08 $3b $03
    ld c, $3b                                     ; $558c: $0e $3b
    inc bc                                        ; $558e: $03
    ld d, $3b                                     ; $558f: $16 $3b
    inc bc                                        ; $5591: $03
    ld hl, $033b                                  ; $5592: $21 $3b $03
    ld h, $3b                                     ; $5595: $26 $3b
    inc bc                                        ; $5597: $03
    dec hl                                        ; $5598: $2b
    dec sp                                        ; $5599: $3b
    inc bc                                        ; $559a: $03
    ld [hl-], a                                   ; $559b: $32
    dec sp                                        ; $559c: $3b
    inc bc                                        ; $559d: $03
    inc a                                         ; $559e: $3c
    dec sp                                        ; $559f: $3b
    inc bc                                        ; $55a0: $03
    ld b, b                                       ; $55a1: $40
    dec sp                                        ; $55a2: $3b
    inc bc                                        ; $55a3: $03
    ld b, l                                       ; $55a4: $45
    dec sp                                        ; $55a5: $3b
    inc bc                                        ; $55a6: $03
    ld d, c                                       ; $55a7: $51
    dec sp                                        ; $55a8: $3b
    inc bc                                        ; $55a9: $03
    ld l, d                                       ; $55aa: $6a
    dec sp                                        ; $55ab: $3b
    inc bc                                        ; $55ac: $03
    sub d                                         ; $55ad: $92
    dec sp                                        ; $55ae: $3b
    inc bc                                        ; $55af: $03
    and b                                         ; $55b0: $a0
    dec sp                                        ; $55b1: $3b
    inc bc                                        ; $55b2: $03
    cp h                                          ; $55b3: $bc
    dec sp                                        ; $55b4: $3b
    inc bc                                        ; $55b5: $03
    rst $10                                       ; $55b6: $d7
    dec sp                                        ; $55b7: $3b
    inc bc                                        ; $55b8: $03
    or $3b                                        ; $55b9: $f6 $3b
    inc bc                                        ; $55bb: $03
    daa                                           ; $55bc: $27
    inc a                                         ; $55bd: $3c
    inc bc                                        ; $55be: $03
    ld b, b                                       ; $55bf: $40
    inc a                                         ; $55c0: $3c
    inc bc                                        ; $55c1: $03
    ld e, b                                       ; $55c2: $58
    inc a                                         ; $55c3: $3c
    inc bc                                        ; $55c4: $03
    ld [hl], b                                    ; $55c5: $70
    inc a                                         ; $55c6: $3c
    inc bc                                        ; $55c7: $03
    sub l                                         ; $55c8: $95
    inc a                                         ; $55c9: $3c
    inc bc                                        ; $55ca: $03
    xor e                                         ; $55cb: $ab
    inc a                                         ; $55cc: $3c
    inc bc                                        ; $55cd: $03
    rst $00                                       ; $55ce: $c7
    inc a                                         ; $55cf: $3c
    inc bc                                        ; $55d0: $03
    xor $3c                                       ; $55d1: $ee $3c
    inc bc                                        ; $55d3: $03
    ld d, $3d                                     ; $55d4: $16 $3d
    inc bc                                        ; $55d6: $03
    ld l, $3d                                     ; $55d7: $2e $3d
    inc bc                                        ; $55d9: $03
    ld b, e                                       ; $55da: $43
    dec a                                         ; $55db: $3d
    inc bc                                        ; $55dc: $03
    ld d, e                                       ; $55dd: $53
    dec a                                         ; $55de: $3d
    inc bc                                        ; $55df: $03
    ld a, e                                       ; $55e0: $7b
    dec a                                         ; $55e1: $3d
    inc bc                                        ; $55e2: $03
    ld a, h                                       ; $55e3: $7c
    dec a                                         ; $55e4: $3d
    inc bc                                        ; $55e5: $03
    ld a, l                                       ; $55e6: $7d
    dec a                                         ; $55e7: $3d
    inc bc                                        ; $55e8: $03
    sub a                                         ; $55e9: $97
    dec a                                         ; $55ea: $3d
    inc bc                                        ; $55eb: $03
    and h                                         ; $55ec: $a4
    dec a                                         ; $55ed: $3d
    inc bc                                        ; $55ee: $03
    xor h                                         ; $55ef: $ac
    dec a                                         ; $55f0: $3d
    inc bc                                        ; $55f1: $03
    or h                                          ; $55f2: $b4
    dec a                                         ; $55f3: $3d
    inc bc                                        ; $55f4: $03
    cp e                                          ; $55f5: $bb
    dec a                                         ; $55f6: $3d
    inc bc                                        ; $55f7: $03
    call nz, $033d                                ; $55f8: $c4 $3d $03
    pop hl                                        ; $55fb: $e1
    dec a                                         ; $55fc: $3d
    inc bc                                        ; $55fd: $03
    push af                                       ; $55fe: $f5
    dec a                                         ; $55ff: $3d
    inc bc                                        ; $5600: $03
    db $10                                        ; $5601: $10
    ld a, $03                                     ; $5602: $3e $03
    jr nz, jr_053_5644                            ; $5604: $20 $3e

    inc bc                                        ; $5606: $03
    ld sp, $033e                                  ; $5607: $31 $3e $03
    ld d, l                                       ; $560a: $55
    ld a, $03                                     ; $560b: $3e $03
    ld a, b                                       ; $560d: $78
    ld a, $03                                     ; $560e: $3e $03
    xor c                                         ; $5610: $a9
    ld a, $03                                     ; $5611: $3e $03
    reti                                          ; $5613: $d9


    ld a, $03                                     ; $5614: $3e $03
    ld sp, hl                                     ; $5616: $f9
    ld a, $03                                     ; $5617: $3e $03
    inc sp                                        ; $5619: $33
    ccf                                           ; $561a: $3f
    inc bc                                        ; $561b: $03
    ld d, b                                       ; $561c: $50
    ccf                                           ; $561d: $3f
    inc bc                                        ; $561e: $03
    halt                                          ; $561f: $76
    ccf                                           ; $5620: $3f
    inc bc                                        ; $5621: $03
    add e                                         ; $5622: $83
    ccf                                           ; $5623: $3f
    inc bc                                        ; $5624: $03
    sbc d                                         ; $5625: $9a
    ccf                                           ; $5626: $3f
    inc bc                                        ; $5627: $03
    call z, Call_000_043f                         ; $5628: $cc $3f $04
    ld bc, $0400                                  ; $562b: $01 $00 $04
    cpl                                           ; $562e: $2f
    nop                                           ; $562f: $00
    inc b                                         ; $5630: $04
    ld c, h                                       ; $5631: $4c
    nop                                           ; $5632: $00
    inc b                                         ; $5633: $04
    ld h, a                                       ; $5634: $67
    nop                                           ; $5635: $00
    inc b                                         ; $5636: $04
    adc b                                         ; $5637: $88
    nop                                           ; $5638: $00
    inc b                                         ; $5639: $04
    xor a                                         ; $563a: $af
    nop                                           ; $563b: $00
    inc b                                         ; $563c: $04
    reti                                          ; $563d: $d9


    nop                                           ; $563e: $00
    inc b                                         ; $563f: $04
    or $00                                        ; $5640: $f6 $00
    inc b                                         ; $5642: $04
    inc c                                         ; $5643: $0c

jr_053_5644:
    ld bc, $3504                                  ; $5644: $01 $04 $35
    ld bc, $5904                                  ; $5647: $01 $04 $59
    ld bc, $6e04                                  ; $564a: $01 $04 $6e
    ld bc, $8c04                                  ; $564d: $01 $04 $8c
    ld bc, $9604                                  ; $5650: $01 $04 $96
    ld bc, $c704                                  ; $5653: $01 $04 $c7
    ld bc, $d004                                  ; $5656: $01 $04 $d0
    ld bc, $de04                                  ; $5659: $01 $04 $de
    ld bc, $e604                                  ; $565c: $01 $04 $e6
    ld bc, $ef04                                  ; $565f: $01 $04 $ef
    ld bc, $0404                                  ; $5662: $01 $04 $04
    ld [bc], a                                    ; $5665: $02
    inc b                                         ; $5666: $04
    inc d                                         ; $5667: $14
    ld [bc], a                                    ; $5668: $02
    inc b                                         ; $5669: $04
    ld h, c                                       ; $566a: $61
    ld [bc], a                                    ; $566b: $02
    inc b                                         ; $566c: $04
    and h                                         ; $566d: $a4
    ld [bc], a                                    ; $566e: $02
    inc b                                         ; $566f: $04
    or [hl]                                       ; $5670: $b6
    ld [bc], a                                    ; $5671: $02
    inc b                                         ; $5672: $04
    jp $0402                                      ; $5673: $c3 $02 $04


    db $dd                                        ; $5676: $dd
    ld [bc], a                                    ; $5677: $02
    inc b                                         ; $5678: $04
    rlca                                          ; $5679: $07
    inc bc                                        ; $567a: $03
    inc b                                         ; $567b: $04
    ld h, d                                       ; $567c: $62
    inc bc                                        ; $567d: $03
    inc b                                         ; $567e: $04
    sbc c                                         ; $567f: $99
    inc bc                                        ; $5680: $03
    inc b                                         ; $5681: $04
    ldh a, [$03]                                  ; $5682: $f0 $03
    inc b                                         ; $5684: $04
    inc h                                         ; $5685: $24
    inc b                                         ; $5686: $04
    inc b                                         ; $5687: $04
    dec a                                         ; $5688: $3d
    inc b                                         ; $5689: $04
    inc b                                         ; $568a: $04
    ld a, a                                       ; $568b: $7f
    inc b                                         ; $568c: $04
    inc b                                         ; $568d: $04
    adc l                                         ; $568e: $8d
    inc b                                         ; $568f: $04
    inc b                                         ; $5690: $04
    and d                                         ; $5691: $a2
    inc b                                         ; $5692: $04
    inc b                                         ; $5693: $04
    ld a, [c]                                     ; $5694: $f2
    inc b                                         ; $5695: $04
    inc b                                         ; $5696: $04
    cpl                                           ; $5697: $2f
    dec b                                         ; $5698: $05
    inc b                                         ; $5699: $04
    ld l, [hl]                                    ; $569a: $6e
    dec b                                         ; $569b: $05
    inc b                                         ; $569c: $04
    add [hl]                                      ; $569d: $86
    dec b                                         ; $569e: $05
    inc b                                         ; $569f: $04
    add $05                                       ; $56a0: $c6 $05
    inc b                                         ; $56a2: $04
    daa                                           ; $56a3: $27
    ld b, $04                                     ; $56a4: $06 $04
    ld a, $06                                     ; $56a6: $3e $06
    inc b                                         ; $56a8: $04
    add a                                         ; $56a9: $87
    ld b, $04                                     ; $56aa: $06 $04
    pop hl                                        ; $56ac: $e1
    ld b, $04                                     ; $56ad: $06 $04
    db $eb                                        ; $56af: $eb
    ld b, $04                                     ; $56b0: $06 $04
    inc a                                         ; $56b2: $3c
    rlca                                          ; $56b3: $07
    inc b                                         ; $56b4: $04
    ld e, b                                       ; $56b5: $58
    rlca                                          ; $56b6: $07
    inc b                                         ; $56b7: $04
    ld h, a                                       ; $56b8: $67
    rlca                                          ; $56b9: $07
    inc b                                         ; $56ba: $04
    sub h                                         ; $56bb: $94
    rlca                                          ; $56bc: $07
    inc b                                         ; $56bd: $04
    xor a                                         ; $56be: $af
    rlca                                          ; $56bf: $07
    inc b                                         ; $56c0: $04
    rst $10                                       ; $56c1: $d7
    rlca                                          ; $56c2: $07

Call_053_56c3:
    inc b                                         ; $56c3: $04
    call c, Call_000_0407                         ; $56c4: $dc $07 $04
    ld b, b                                       ; $56c7: $40
    ld [$4504], sp                                ; $56c8: $08 $04 $45
    ld [$7204], sp                                ; $56cb: $08 $04 $72
    ld [$7904], sp                                ; $56ce: $08 $04 $79
    ld [$d904], sp                                ; $56d1: $08 $04 $d9
    ld [$1104], sp                                ; $56d4: $08 $04 $11
    add hl, bc                                    ; $56d7: $09
    inc b                                         ; $56d8: $04
    ld d, a                                       ; $56d9: $57
    add hl, bc                                    ; $56da: $09
    inc b                                         ; $56db: $04
    ld [hl], c                                    ; $56dc: $71
    add hl, bc                                    ; $56dd: $09
    inc b                                         ; $56de: $04
    ld a, a                                       ; $56df: $7f
    add hl, bc                                    ; $56e0: $09
    inc b                                         ; $56e1: $04
    adc e                                         ; $56e2: $8b
    add hl, bc                                    ; $56e3: $09
    inc b                                         ; $56e4: $04
    and [hl]                                      ; $56e5: $a6
    add hl, bc                                    ; $56e6: $09
    inc b                                         ; $56e7: $04
    call nc, Call_000_0409                        ; $56e8: $d4 $09 $04
    and $09                                       ; $56eb: $e6 $09
    inc b                                         ; $56ed: $04
    dec d                                         ; $56ee: $15
    ld a, [bc]                                    ; $56ef: $0a
    inc b                                         ; $56f0: $04
    inc a                                         ; $56f1: $3c
    ld a, [bc]                                    ; $56f2: $0a
    inc b                                         ; $56f3: $04
    ld [hl], b                                    ; $56f4: $70
    ld a, [bc]                                    ; $56f5: $0a
    inc b                                         ; $56f6: $04
    and d                                         ; $56f7: $a2
    ld a, [bc]                                    ; $56f8: $0a
    inc b                                         ; $56f9: $04
    jp c, Jump_000_040a                           ; $56fa: $da $0a $04

    ld e, $0b                                     ; $56fd: $1e $0b
    inc b                                         ; $56ff: $04
    inc sp                                        ; $5700: $33
    dec bc                                        ; $5701: $0b
    inc b                                         ; $5702: $04
    ld b, l                                       ; $5703: $45
    dec bc                                        ; $5704: $0b
    inc b                                         ; $5705: $04
    or [hl]                                       ; $5706: $b6
    dec bc                                        ; $5707: $0b

Jump_053_5708:
    inc b                                         ; $5708: $04
    jp c, Jump_000_040b                           ; $5709: $da $0b $04

    dec h                                         ; $570c: $25
    inc c                                         ; $570d: $0c
    inc b                                         ; $570e: $04
    dec a                                         ; $570f: $3d
    inc c                                         ; $5710: $0c
    inc b                                         ; $5711: $04
    sbc d                                         ; $5712: $9a
    inc c                                         ; $5713: $0c
    inc b                                         ; $5714: $04
    or [hl]                                       ; $5715: $b6
    inc c                                         ; $5716: $0c
    inc b                                         ; $5717: $04
    add $0c                                       ; $5718: $c6 $0c
    inc b                                         ; $571a: $04
    db $d3                                        ; $571b: $d3
    inc c                                         ; $571c: $0c
    inc b                                         ; $571d: $04
    inc c                                         ; $571e: $0c
    dec c                                         ; $571f: $0d
    inc b                                         ; $5720: $04
    ld e, $0d                                     ; $5721: $1e $0d
    inc b                                         ; $5723: $04
    ld b, c                                       ; $5724: $41
    dec c                                         ; $5725: $0d
    inc b                                         ; $5726: $04
    ld d, d                                       ; $5727: $52
    dec c                                         ; $5728: $0d
    inc b                                         ; $5729: $04
    ld h, d                                       ; $572a: $62
    dec c                                         ; $572b: $0d
    inc b                                         ; $572c: $04
    ld [hl], h                                    ; $572d: $74
    dec c                                         ; $572e: $0d
    inc b                                         ; $572f: $04
    adc a                                         ; $5730: $8f
    dec c                                         ; $5731: $0d
    inc b                                         ; $5732: $04
    sbc d                                         ; $5733: $9a
    dec c                                         ; $5734: $0d
    inc b                                         ; $5735: $04
    jp Jump_000_040d                              ; $5736: $c3 $0d $04


    call nc, Call_000_040d                        ; $5739: $d4 $0d $04
    ld d, $0e                                     ; $573c: $16 $0e
    inc b                                         ; $573e: $04
    ld [hl-], a                                   ; $573f: $32
    ld c, $04                                     ; $5740: $0e $04
    ld c, [hl]                                    ; $5742: $4e
    ld c, $04                                     ; $5743: $0e $04
    ld [hl], d                                    ; $5745: $72
    ld c, $04                                     ; $5746: $0e $04
    and d                                         ; $5748: $a2
    ld c, $04                                     ; $5749: $0e $04
    cp b                                          ; $574b: $b8
    ld c, $04                                     ; $574c: $0e $04
    jp z, Jump_000_040e                           ; $574e: $ca $0e $04

    db $eb                                        ; $5751: $eb
    ld c, $04                                     ; $5752: $0e $04
    pop af                                        ; $5754: $f1
    ld c, $04                                     ; $5755: $0e $04
    ld bc, $040f                                  ; $5757: $01 $0f $04
    dec d                                         ; $575a: $15
    rrca                                          ; $575b: $0f
    inc b                                         ; $575c: $04
    ld e, $0f                                     ; $575d: $1e $0f
    inc b                                         ; $575f: $04
    ld c, e                                       ; $5760: $4b
    rrca                                          ; $5761: $0f
    inc b                                         ; $5762: $04
    sbc c                                         ; $5763: $99
    rrca                                          ; $5764: $0f
    inc b                                         ; $5765: $04
    or e                                          ; $5766: $b3
    rrca                                          ; $5767: $0f
    inc b                                         ; $5768: $04
    cp l                                          ; $5769: $bd
    rrca                                          ; $576a: $0f
    inc b                                         ; $576b: $04
    rst $08                                       ; $576c: $cf
    rrca                                          ; $576d: $0f
    inc b                                         ; $576e: $04
    ret c                                         ; $576f: $d8

    rrca                                          ; $5770: $0f
    inc b                                         ; $5771: $04
    ld bc, $0410                                  ; $5772: $01 $10 $04
    jr nz, @+$12                                  ; $5775: $20 $10

    inc b                                         ; $5777: $04
    ld a, e                                       ; $5778: $7b
    db $10                                        ; $5779: $10
    inc b                                         ; $577a: $04
    cp b                                          ; $577b: $b8
    db $10                                        ; $577c: $10
    inc b                                         ; $577d: $04
    db $10                                        ; $577e: $10
    ld de, $1804                                  ; $577f: $11 $04 $18
    ld de, $2904                                  ; $5782: $11 $04 $29
    ld de, $4604                                  ; $5785: $11 $04 $46

Jump_053_5788:
    ld de, $7804                                  ; $5788: $11 $04 $78
    ld de, $9e04                                  ; $578b: $11 $04 $9e
    ld de, $d104                                  ; $578e: $11 $04 $d1
    ld de, $df04                                  ; $5791: $11 $04 $df
    ld de, HeaderLogo                             ; $5794: $11 $04 $01
    ld [de], a                                    ; $5797: $12
    inc b                                         ; $5798: $04
    add hl, bc                                    ; $5799: $09
    ld [de], a                                    ; $579a: $12
    inc b                                         ; $579b: $04
    add hl, de                                    ; $579c: $19
    ld [de], a                                    ; $579d: $12
    inc b                                         ; $579e: $04
    ld e, l                                       ; $579f: $5d
    ld [de], a                                    ; $57a0: $12
    inc b                                         ; $57a1: $04
    ld l, d                                       ; $57a2: $6a
    ld [de], a                                    ; $57a3: $12
    inc b                                         ; $57a4: $04
    and [hl]                                      ; $57a5: $a6
    ld [de], a                                    ; $57a6: $12
    inc b                                         ; $57a7: $04
    add $12                                       ; $57a8: $c6 $12
    inc b                                         ; $57aa: $04
    rrca                                          ; $57ab: $0f
    inc de                                        ; $57ac: $13
    inc b                                         ; $57ad: $04
    scf                                           ; $57ae: $37
    inc de                                        ; $57af: $13
    inc b                                         ; $57b0: $04
    ld b, a                                       ; $57b1: $47
    inc de                                        ; $57b2: $13
    inc b                                         ; $57b3: $04
    ld e, l                                       ; $57b4: $5d
    inc de                                        ; $57b5: $13
    inc b                                         ; $57b6: $04
    ld h, a                                       ; $57b7: $67
    inc de                                        ; $57b8: $13
    inc b                                         ; $57b9: $04
    ld [hl], d                                    ; $57ba: $72
    inc de                                        ; $57bb: $13
    inc b                                         ; $57bc: $04
    ld a, a                                       ; $57bd: $7f
    inc de                                        ; $57be: $13
    inc b                                         ; $57bf: $04
    adc l                                         ; $57c0: $8d
    inc de                                        ; $57c1: $13
    inc b                                         ; $57c2: $04
    sbc e                                         ; $57c3: $9b
    inc de                                        ; $57c4: $13
    inc b                                         ; $57c5: $04
    and e                                         ; $57c6: $a3
    inc de                                        ; $57c7: $13
    inc b                                         ; $57c8: $04
    xor a                                         ; $57c9: $af
    inc de                                        ; $57ca: $13
    inc b                                         ; $57cb: $04
    cp a                                          ; $57cc: $bf
    inc de                                        ; $57cd: $13
    inc b                                         ; $57ce: $04
    ret nc                                        ; $57cf: $d0

    inc de                                        ; $57d0: $13
    inc b                                         ; $57d1: $04
    pop de                                        ; $57d2: $d1
    inc de                                        ; $57d3: $13
    inc b                                         ; $57d4: $04
    ldh [rNR13], a                                ; $57d5: $e0 $13
    inc b                                         ; $57d7: $04
    ld a, [c]                                     ; $57d8: $f2
    inc de                                        ; $57d9: $13
    inc b                                         ; $57da: $04
    inc b                                         ; $57db: $04
    inc d                                         ; $57dc: $14
    inc b                                         ; $57dd: $04
    dec b                                         ; $57de: $05
    inc d                                         ; $57df: $14
    inc b                                         ; $57e0: $04
    ld b, $14                                     ; $57e1: $06 $14
    inc b                                         ; $57e3: $04
    inc d                                         ; $57e4: $14
    inc d                                         ; $57e5: $14
    inc b                                         ; $57e6: $04
    ld h, $14                                     ; $57e7: $26 $14
    inc b                                         ; $57e9: $04
    daa                                           ; $57ea: $27
    inc d                                         ; $57eb: $14
    inc b                                         ; $57ec: $04
    ld [hl-], a                                   ; $57ed: $32
    inc d                                         ; $57ee: $14
    inc b                                         ; $57ef: $04
    inc sp                                        ; $57f0: $33
    inc d                                         ; $57f1: $14
    inc b                                         ; $57f2: $04
    inc [hl]                                      ; $57f3: $34
    inc d                                         ; $57f4: $14
    inc b                                         ; $57f5: $04
    ld b, l                                       ; $57f6: $45
    inc d                                         ; $57f7: $14
    inc b                                         ; $57f8: $04
    ld d, d                                       ; $57f9: $52
    inc d                                         ; $57fa: $14
    inc b                                         ; $57fb: $04
    ld e, a                                       ; $57fc: $5f
    inc d                                         ; $57fd: $14
    inc b                                         ; $57fe: $04
    ld h, b                                       ; $57ff: $60
    inc d                                         ; $5800: $14
    inc b                                         ; $5801: $04
    ld h, c                                       ; $5802: $61
    inc d                                         ; $5803: $14
    inc b                                         ; $5804: $04
    ld h, d                                       ; $5805: $62
    inc d                                         ; $5806: $14
    inc b                                         ; $5807: $04
    ld [hl], e                                    ; $5808: $73
    inc d                                         ; $5809: $14
    inc b                                         ; $580a: $04
    ld [hl], h                                    ; $580b: $74
    inc d                                         ; $580c: $14
    inc b                                         ; $580d: $04
    ld [hl], l                                    ; $580e: $75
    inc d                                         ; $580f: $14
    inc b                                         ; $5810: $04
    halt                                          ; $5811: $76
    inc d                                         ; $5812: $14
    inc b                                         ; $5813: $04
    ld [hl], a                                    ; $5814: $77
    inc d                                         ; $5815: $14
    inc b                                         ; $5816: $04
    ld a, b                                       ; $5817: $78
    inc d                                         ; $5818: $14
    inc b                                         ; $5819: $04
    ld a, c                                       ; $581a: $79
    inc d                                         ; $581b: $14
    inc b                                         ; $581c: $04
    ld a, d                                       ; $581d: $7a
    inc d                                         ; $581e: $14
    inc b                                         ; $581f: $04
    ld a, e                                       ; $5820: $7b
    inc d                                         ; $5821: $14
    inc b                                         ; $5822: $04
    add h                                         ; $5823: $84
    inc d                                         ; $5824: $14
    inc b                                         ; $5825: $04
    sub d                                         ; $5826: $92
    inc d                                         ; $5827: $14
    inc b                                         ; $5828: $04
    and c                                         ; $5829: $a1
    inc d                                         ; $582a: $14
    inc b                                         ; $582b: $04
    and d                                         ; $582c: $a2
    inc d                                         ; $582d: $14
    inc b                                         ; $582e: $04
    and e                                         ; $582f: $a3
    inc d                                         ; $5830: $14
    inc b                                         ; $5831: $04
    and h                                         ; $5832: $a4
    inc d                                         ; $5833: $14
    inc b                                         ; $5834: $04
    and l                                         ; $5835: $a5
    inc d                                         ; $5836: $14
    inc b                                         ; $5837: $04
    and [hl]                                      ; $5838: $a6
    inc d                                         ; $5839: $14
    inc b                                         ; $583a: $04
    and a                                         ; $583b: $a7
    inc d                                         ; $583c: $14
    inc b                                         ; $583d: $04
    xor b                                         ; $583e: $a8
    inc d                                         ; $583f: $14
    inc b                                         ; $5840: $04
    xor c                                         ; $5841: $a9
    inc d                                         ; $5842: $14
    inc b                                         ; $5843: $04
    xor d                                         ; $5844: $aa
    inc d                                         ; $5845: $14
    inc b                                         ; $5846: $04
    xor e                                         ; $5847: $ab
    inc d                                         ; $5848: $14
    inc b                                         ; $5849: $04
    cp c                                          ; $584a: $b9
    inc d                                         ; $584b: $14
    inc b                                         ; $584c: $04
    ret z                                         ; $584d: $c8

    inc d                                         ; $584e: $14
    inc b                                         ; $584f: $04
    sub $14                                       ; $5850: $d6 $14
    inc b                                         ; $5852: $04
    ld [c], a                                     ; $5853: $e2
    inc d                                         ; $5854: $14
    inc b                                         ; $5855: $04
    db $ec                                        ; $5856: $ec
    inc d                                         ; $5857: $14
    inc b                                         ; $5858: $04
    ld a, [$0414]                                 ; $5859: $fa $14 $04
    ei                                            ; $585c: $fb
    inc d                                         ; $585d: $14
    inc b                                         ; $585e: $04
    dec bc                                        ; $585f: $0b
    dec d                                         ; $5860: $15
    inc b                                         ; $5861: $04
    inc c                                         ; $5862: $0c
    dec d                                         ; $5863: $15
    inc b                                         ; $5864: $04
    add hl, de                                    ; $5865: $19
    dec d                                         ; $5866: $15
    inc b                                         ; $5867: $04
    ld a, [de]                                    ; $5868: $1a
    dec d                                         ; $5869: $15
    inc b                                         ; $586a: $04
    dec h                                         ; $586b: $25
    dec d                                         ; $586c: $15
    inc b                                         ; $586d: $04
    ld h, $15                                     ; $586e: $26 $15
    inc b                                         ; $5870: $04
    scf                                           ; $5871: $37
    dec d                                         ; $5872: $15
    inc b                                         ; $5873: $04
    ld b, c                                       ; $5874: $41
    dec d                                         ; $5875: $15
    inc b                                         ; $5876: $04
    ld d, [hl]                                    ; $5877: $56
    dec d                                         ; $5878: $15
    inc b                                         ; $5879: $04
    ld h, e                                       ; $587a: $63
    dec d                                         ; $587b: $15
    inc b                                         ; $587c: $04
    ld [hl], d                                    ; $587d: $72
    dec d                                         ; $587e: $15
    inc b                                         ; $587f: $04
    ld [hl], e                                    ; $5880: $73
    dec d                                         ; $5881: $15
    inc b                                         ; $5882: $04
    ld [hl], h                                    ; $5883: $74
    dec d                                         ; $5884: $15
    inc b                                         ; $5885: $04
    ld [hl], l                                    ; $5886: $75
    dec d                                         ; $5887: $15
    inc b                                         ; $5888: $04
    halt                                          ; $5889: $76
    dec d                                         ; $588a: $15
    inc b                                         ; $588b: $04
    add e                                         ; $588c: $83
    dec d                                         ; $588d: $15
    inc b                                         ; $588e: $04
    sub e                                         ; $588f: $93
    dec d                                         ; $5890: $15
    inc b                                         ; $5891: $04
    and b                                         ; $5892: $a0
    dec d                                         ; $5893: $15
    inc b                                         ; $5894: $04
    xor a                                         ; $5895: $af
    dec d                                         ; $5896: $15
    inc b                                         ; $5897: $04
    cp e                                          ; $5898: $bb
    dec d                                         ; $5899: $15
    inc b                                         ; $589a: $04
    rst $00                                       ; $589b: $c7
    dec d                                         ; $589c: $15
    inc b                                         ; $589d: $04
    call nc, Call_000_0415                        ; $589e: $d4 $15 $04
    rst $18                                       ; $58a1: $df
    dec d                                         ; $58a2: $15
    inc b                                         ; $58a3: $04
    pop af                                        ; $58a4: $f1
    dec d                                         ; $58a5: $15
    inc b                                         ; $58a6: $04
    nop                                           ; $58a7: $00
    ld d, $04                                     ; $58a8: $16 $04
    ld de, $0416                                  ; $58aa: $11 $16 $04
    dec de                                        ; $58ad: $1b
    ld d, $04                                     ; $58ae: $16 $04
    dec hl                                        ; $58b0: $2b
    ld d, $04                                     ; $58b1: $16 $04
    inc l                                         ; $58b3: $2c
    ld d, $04                                     ; $58b4: $16 $04
    ld b, b                                       ; $58b6: $40
    ld d, $04                                     ; $58b7: $16 $04
    ld d, c                                       ; $58b9: $51
    ld d, $04                                     ; $58ba: $16 $04
    ld e, h                                       ; $58bc: $5c
    ld d, $04                                     ; $58bd: $16 $04
    ld l, b                                       ; $58bf: $68
    ld d, $04                                     ; $58c0: $16 $04
    ld [hl], a                                    ; $58c2: $77
    ld d, $04                                     ; $58c3: $16 $04
    add e                                         ; $58c5: $83
    ld d, $04                                     ; $58c6: $16 $04
    sub b                                         ; $58c8: $90
    ld d, $04                                     ; $58c9: $16 $04
    and c                                         ; $58cb: $a1
    ld d, $04                                     ; $58cc: $16 $04
    xor [hl]                                      ; $58ce: $ae
    ld d, $04                                     ; $58cf: $16 $04
    cp d                                          ; $58d1: $ba
    ld d, $04                                     ; $58d2: $16 $04
    push bc                                       ; $58d4: $c5
    ld d, $04                                     ; $58d5: $16 $04
    call Call_000_0416                            ; $58d7: $cd $16 $04
    push de                                       ; $58da: $d5
    ld d, $04                                     ; $58db: $16 $04
    pop hl                                        ; $58dd: $e1
    ld d, $04                                     ; $58de: $16 $04
    add sp, $16                                   ; $58e0: $e8 $16
    inc b                                         ; $58e2: $04
    pop af                                        ; $58e3: $f1
    ld d, $04                                     ; $58e4: $16 $04
    ld a, [$0416]                                 ; $58e6: $fa $16 $04
    dec b                                         ; $58e9: $05
    rla                                           ; $58ea: $17
    inc b                                         ; $58eb: $04
    ld de, $0417                                  ; $58ec: $11 $17 $04
    dec de                                        ; $58ef: $1b
    rla                                           ; $58f0: $17
    inc b                                         ; $58f1: $04
    daa                                           ; $58f2: $27
    rla                                           ; $58f3: $17
    inc b                                         ; $58f4: $04
    inc sp                                        ; $58f5: $33
    rla                                           ; $58f6: $17
    inc b                                         ; $58f7: $04
    ccf                                           ; $58f8: $3f
    rla                                           ; $58f9: $17
    inc b                                         ; $58fa: $04
    ld c, d                                       ; $58fb: $4a
    rla                                           ; $58fc: $17
    inc b                                         ; $58fd: $04
    ld d, d                                       ; $58fe: $52
    rla                                           ; $58ff: $17
    inc b                                         ; $5900: $04
    ld e, h                                       ; $5901: $5c
    rla                                           ; $5902: $17
    inc b                                         ; $5903: $04
    ld h, a                                       ; $5904: $67
    rla                                           ; $5905: $17
    inc b                                         ; $5906: $04
    ld [hl], b                                    ; $5907: $70
    rla                                           ; $5908: $17
    inc b                                         ; $5909: $04
    halt                                          ; $590a: $76

Jump_053_590b:
    rla                                           ; $590b: $17
    inc b                                         ; $590c: $04
    add b                                         ; $590d: $80
    rla                                           ; $590e: $17
    inc b                                         ; $590f: $04
    add a                                         ; $5910: $87
    rla                                           ; $5911: $17
    inc b                                         ; $5912: $04
    sub c                                         ; $5913: $91
    rla                                           ; $5914: $17
    inc b                                         ; $5915: $04
    sbc d                                         ; $5916: $9a
    rla                                           ; $5917: $17
    inc b                                         ; $5918: $04
    and l                                         ; $5919: $a5
    rla                                           ; $591a: $17
    inc b                                         ; $591b: $04
    or b                                          ; $591c: $b0
    rla                                           ; $591d: $17
    inc b                                         ; $591e: $04
    cp e                                          ; $591f: $bb
    rla                                           ; $5920: $17
    inc b                                         ; $5921: $04
    add $17                                       ; $5922: $c6 $17
    inc b                                         ; $5924: $04
    pop de                                        ; $5925: $d1
    rla                                           ; $5926: $17
    inc b                                         ; $5927: $04
    call c, Call_000_0417                         ; $5928: $dc $17 $04
    and $17                                       ; $592b: $e6 $17
    inc b                                         ; $592d: $04
    ldh a, [rNR22]                                ; $592e: $f0 $17
    inc b                                         ; $5930: $04
    ld a, [$0417]                                 ; $5931: $fa $17 $04
    inc b                                         ; $5934: $04
    jr jr_053_593b                                ; $5935: $18 $04

    rrca                                          ; $5937: $0f
    jr jr_053_593e                                ; $5938: $18 $04

    add hl, de                                    ; $593a: $19

jr_053_593b:
    jr @+$06                                      ; $593b: $18 $04

    inc h                                         ; $593d: $24

jr_053_593e:
    jr @+$06                                      ; $593e: $18 $04

    ld l, $18                                     ; $5940: $2e $18
    inc b                                         ; $5942: $04
    jr c, @+$1a                                   ; $5943: $38 $18

    inc b                                         ; $5945: $04
    ld b, c                                       ; $5946: $41
    jr jr_053_594d                                ; $5947: $18 $04

    ld b, a                                       ; $5949: $47
    jr jr_053_5950                                ; $594a: $18 $04

    ld c, h                                       ; $594c: $4c

jr_053_594d:
    jr jr_053_5953                                ; $594d: $18 $04

    ld d, a                                       ; $594f: $57

jr_053_5950:
    jr jr_053_5956                                ; $5950: $18 $04

    ld h, h                                       ; $5952: $64

jr_053_5953:
    jr jr_053_5959                                ; $5953: $18 $04

    ld l, h                                       ; $5955: $6c

jr_053_5956:
    jr jr_053_595c                                ; $5956: $18 $04

    ld [hl], h                                    ; $5958: $74

jr_053_5959:
    jr jr_053_595f                                ; $5959: $18 $04

    ld a, h                                       ; $595b: $7c

jr_053_595c:
    jr jr_053_5962                                ; $595c: $18 $04

    add h                                         ; $595e: $84

jr_053_595f:
    jr jr_053_5965                                ; $595f: $18 $04

    adc h                                         ; $5961: $8c

jr_053_5962:
    jr jr_053_5968                                ; $5962: $18 $04

    sub h                                         ; $5964: $94

jr_053_5965:
    jr jr_053_596b                                ; $5965: $18 $04

    sbc h                                         ; $5967: $9c

jr_053_5968:
    jr jr_053_596e                                ; $5968: $18 $04

    and e                                         ; $596a: $a3

jr_053_596b:
    jr jr_053_5971                                ; $596b: $18 $04

    xor [hl]                                      ; $596d: $ae

jr_053_596e:
    jr jr_053_5974                                ; $596e: $18 $04

    or h                                          ; $5970: $b4

jr_053_5971:
    jr @+$06                                      ; $5971: $18 $04

    cp l                                          ; $5973: $bd

jr_053_5974:
    jr jr_053_597a                                ; $5974: $18 $04

    add $18                                       ; $5976: $c6 $18
    inc b                                         ; $5978: $04
    pop de                                        ; $5979: $d1

jr_053_597a:
    jr jr_053_5980                                ; $597a: $18 $04

    jp c, Jump_000_0418                           ; $597c: $da $18 $04

    db $e4                                        ; $597f: $e4

jr_053_5980:
    jr @+$06                                      ; $5980: $18 $04

    db $ec                                        ; $5982: $ec
    jr @+$06                                      ; $5983: $18 $04

    or $18                                        ; $5985: $f6 $18
    inc b                                         ; $5987: $04
    cp $18                                        ; $5988: $fe $18
    inc b                                         ; $598a: $04
    add hl, bc                                    ; $598b: $09
    add hl, de                                    ; $598c: $19
    inc b                                         ; $598d: $04
    rrca                                          ; $598e: $0f
    add hl, de                                    ; $598f: $19
    inc b                                         ; $5990: $04
    inc e                                         ; $5991: $1c
    add hl, de                                    ; $5992: $19
    inc b                                         ; $5993: $04
    inc hl                                        ; $5994: $23
    add hl, de                                    ; $5995: $19
    inc b                                         ; $5996: $04
    cpl                                           ; $5997: $2f
    add hl, de                                    ; $5998: $19
    inc b                                         ; $5999: $04
    ld a, [hl-]                                   ; $599a: $3a
    add hl, de                                    ; $599b: $19
    inc b                                         ; $599c: $04
    ccf                                           ; $599d: $3f
    add hl, de                                    ; $599e: $19
    inc b                                         ; $599f: $04
    ld c, l                                       ; $59a0: $4d
    add hl, de                                    ; $59a1: $19
    inc b                                         ; $59a2: $04
    ld e, h                                       ; $59a3: $5c
    add hl, de                                    ; $59a4: $19
    inc b                                         ; $59a5: $04
    ld l, d                                       ; $59a6: $6a
    add hl, de                                    ; $59a7: $19
    inc b                                         ; $59a8: $04
    ld [hl], c                                    ; $59a9: $71
    add hl, de                                    ; $59aa: $19
    inc b                                         ; $59ab: $04
    ld a, d                                       ; $59ac: $7a
    add hl, de                                    ; $59ad: $19
    inc b                                         ; $59ae: $04
    add [hl]                                      ; $59af: $86
    add hl, de                                    ; $59b0: $19
    inc b                                         ; $59b1: $04
    sub [hl]                                      ; $59b2: $96
    add hl, de                                    ; $59b3: $19
    inc b                                         ; $59b4: $04
    sbc [hl]                                      ; $59b5: $9e
    add hl, de                                    ; $59b6: $19
    inc b                                         ; $59b7: $04
    xor c                                         ; $59b8: $a9
    add hl, de                                    ; $59b9: $19
    inc b                                         ; $59ba: $04
    or c                                          ; $59bb: $b1
    add hl, de                                    ; $59bc: $19
    inc b                                         ; $59bd: $04
    cp e                                          ; $59be: $bb
    add hl, de                                    ; $59bf: $19
    inc b                                         ; $59c0: $04
    push bc                                       ; $59c1: $c5
    add hl, de                                    ; $59c2: $19
    inc b                                         ; $59c3: $04
    ret nc                                        ; $59c4: $d0

    add hl, de                                    ; $59c5: $19
    inc b                                         ; $59c6: $04
    db $db                                        ; $59c7: $db
    add hl, de                                    ; $59c8: $19
    inc b                                         ; $59c9: $04
    and $19                                       ; $59ca: $e6 $19
    inc b                                         ; $59cc: $04
    ld a, [c]                                     ; $59cd: $f2
    add hl, de                                    ; $59ce: $19
    inc b                                         ; $59cf: $04
    db $fc                                        ; $59d0: $fc
    add hl, de                                    ; $59d1: $19
    inc b                                         ; $59d2: $04
    ld b, $1a                                     ; $59d3: $06 $1a
    inc b                                         ; $59d5: $04
    ld de, $041a                                  ; $59d6: $11 $1a $04
    add hl, de                                    ; $59d9: $19
    ld a, [de]                                    ; $59da: $1a
    inc b                                         ; $59db: $04
    rra                                           ; $59dc: $1f
    ld a, [de]                                    ; $59dd: $1a
    inc b                                         ; $59de: $04
    add hl, hl                                    ; $59df: $29
    ld a, [de]                                    ; $59e0: $1a
    inc b                                         ; $59e1: $04
    ld [hl-], a                                   ; $59e2: $32
    ld a, [de]                                    ; $59e3: $1a
    inc b                                         ; $59e4: $04
    add hl, sp                                    ; $59e5: $39
    ld a, [de]                                    ; $59e6: $1a
    inc b                                         ; $59e7: $04
    ld b, [hl]                                    ; $59e8: $46
    ld a, [de]                                    ; $59e9: $1a
    inc b                                         ; $59ea: $04
    ld c, a                                       ; $59eb: $4f
    ld a, [de]                                    ; $59ec: $1a
    inc b                                         ; $59ed: $04
    ld e, c                                       ; $59ee: $59
    ld a, [de]                                    ; $59ef: $1a
    inc b                                         ; $59f0: $04
    ld h, l                                       ; $59f1: $65
    ld a, [de]                                    ; $59f2: $1a
    inc b                                         ; $59f3: $04
    ld [hl], a                                    ; $59f4: $77
    ld a, [de]                                    ; $59f5: $1a
    inc b                                         ; $59f6: $04
    add [hl]                                      ; $59f7: $86
    ld a, [de]                                    ; $59f8: $1a
    inc b                                         ; $59f9: $04
    sub a                                         ; $59fa: $97
    ld a, [de]                                    ; $59fb: $1a
    inc b                                         ; $59fc: $04
    xor h                                         ; $59fd: $ac
    ld a, [de]                                    ; $59fe: $1a
    inc b                                         ; $59ff: $04
    cp b                                          ; $5a00: $b8
    ld a, [de]                                    ; $5a01: $1a
    inc b                                         ; $5a02: $04
    call Call_000_041a                            ; $5a03: $cd $1a $04
    db $e4                                        ; $5a06: $e4
    ld a, [de]                                    ; $5a07: $1a
    inc b                                         ; $5a08: $04
    ei                                            ; $5a09: $fb
    ld a, [de]                                    ; $5a0a: $1a
    inc b                                         ; $5a0b: $04
    ld a, [de]                                    ; $5a0c: $1a
    dec de                                        ; $5a0d: $1b
    inc b                                         ; $5a0e: $04
    dec l                                         ; $5a0f: $2d
    dec de                                        ; $5a10: $1b
    inc b                                         ; $5a11: $04
    ld b, d                                       ; $5a12: $42
    dec de                                        ; $5a13: $1b
    inc b                                         ; $5a14: $04
    ld d, [hl]                                    ; $5a15: $56
    dec de                                        ; $5a16: $1b
    inc b                                         ; $5a17: $04
    ld h, a                                       ; $5a18: $67
    dec de                                        ; $5a19: $1b
    inc b                                         ; $5a1a: $04
    ld [hl], d                                    ; $5a1b: $72
    dec de                                        ; $5a1c: $1b
    inc b                                         ; $5a1d: $04
    ld a, l                                       ; $5a1e: $7d
    dec de                                        ; $5a1f: $1b
    inc b                                         ; $5a20: $04
    adc b                                         ; $5a21: $88
    dec de                                        ; $5a22: $1b
    inc b                                         ; $5a23: $04
    sbc e                                         ; $5a24: $9b
    dec de                                        ; $5a25: $1b
    inc b                                         ; $5a26: $04
    xor b                                         ; $5a27: $a8
    dec de                                        ; $5a28: $1b
    inc b                                         ; $5a29: $04
    cp b                                          ; $5a2a: $b8
    dec de                                        ; $5a2b: $1b
    inc b                                         ; $5a2c: $04
    ret z                                         ; $5a2d: $c8

    dec de                                        ; $5a2e: $1b
    inc b                                         ; $5a2f: $04
    rst $10                                       ; $5a30: $d7
    dec de                                        ; $5a31: $1b
    inc b                                         ; $5a32: $04
    db $e3                                        ; $5a33: $e3
    dec de                                        ; $5a34: $1b
    inc b                                         ; $5a35: $04
    di                                            ; $5a36: $f3
    dec de                                        ; $5a37: $1b
    inc b                                         ; $5a38: $04
    nop                                           ; $5a39: $00
    inc e                                         ; $5a3a: $1c
    inc b                                         ; $5a3b: $04
    db $10                                        ; $5a3c: $10
    inc e                                         ; $5a3d: $1c
    inc b                                         ; $5a3e: $04
    ld hl, $041c                                  ; $5a3f: $21 $1c $04
    dec sp                                        ; $5a42: $3b
    inc e                                         ; $5a43: $1c
    inc b                                         ; $5a44: $04
    ld d, l                                       ; $5a45: $55
    inc e                                         ; $5a46: $1c
    inc b                                         ; $5a47: $04
    ld l, a                                       ; $5a48: $6f
    inc e                                         ; $5a49: $1c
    inc b                                         ; $5a4a: $04
    adc c                                         ; $5a4b: $89
    inc e                                         ; $5a4c: $1c
    inc b                                         ; $5a4d: $04
    and e                                         ; $5a4e: $a3
    inc e                                         ; $5a4f: $1c
    inc b                                         ; $5a50: $04
    cp l                                          ; $5a51: $bd
    inc e                                         ; $5a52: $1c
    inc b                                         ; $5a53: $04
    ret z                                         ; $5a54: $c8

    inc e                                         ; $5a55: $1c
    inc b                                         ; $5a56: $04
    db $d3                                        ; $5a57: $d3
    inc e                                         ; $5a58: $1c
    inc b                                         ; $5a59: $04
    sbc $1c                                       ; $5a5a: $de $1c
    inc b                                         ; $5a5c: $04
    jp hl                                         ; $5a5d: $e9


    inc e                                         ; $5a5e: $1c
    inc b                                         ; $5a5f: $04
    db $f4                                        ; $5a60: $f4
    inc e                                         ; $5a61: $1c
    inc b                                         ; $5a62: $04
    rst $38                                       ; $5a63: $ff
    inc e                                         ; $5a64: $1c
    inc b                                         ; $5a65: $04
    ld d, $1d                                     ; $5a66: $16 $1d
    inc b                                         ; $5a68: $04
    dec h                                         ; $5a69: $25
    dec e                                         ; $5a6a: $1d
    inc b                                         ; $5a6b: $04
    inc [hl]                                      ; $5a6c: $34
    dec e                                         ; $5a6d: $1d
    inc b                                         ; $5a6e: $04
    ld b, l                                       ; $5a6f: $45
    dec e                                         ; $5a70: $1d
    inc b                                         ; $5a71: $04
    ld d, c                                       ; $5a72: $51
    dec e                                         ; $5a73: $1d
    inc b                                         ; $5a74: $04
    ld e, l                                       ; $5a75: $5d
    dec e                                         ; $5a76: $1d
    inc b                                         ; $5a77: $04
    ld l, h                                       ; $5a78: $6c
    dec e                                         ; $5a79: $1d
    inc b                                         ; $5a7a: $04
    ld a, l                                       ; $5a7b: $7d
    dec e                                         ; $5a7c: $1d
    inc b                                         ; $5a7d: $04
    adc l                                         ; $5a7e: $8d
    dec e                                         ; $5a7f: $1d
    inc b                                         ; $5a80: $04
    sbc l                                         ; $5a81: $9d
    dec e                                         ; $5a82: $1d
    inc b                                         ; $5a83: $04
    xor l                                         ; $5a84: $ad
    dec e                                         ; $5a85: $1d
    inc b                                         ; $5a86: $04
    cp l                                          ; $5a87: $bd
    dec e                                         ; $5a88: $1d
    inc b                                         ; $5a89: $04
    call Call_000_041d                            ; $5a8a: $cd $1d $04
    db $dd                                        ; $5a8d: $dd
    dec e                                         ; $5a8e: $1d
    inc b                                         ; $5a8f: $04
    db $ed                                        ; $5a90: $ed
    dec e                                         ; $5a91: $1d
    inc b                                         ; $5a92: $04
    ld sp, hl                                     ; $5a93: $f9
    dec e                                         ; $5a94: $1d
    inc b                                         ; $5a95: $04
    ld a, [bc]                                    ; $5a96: $0a
    ld e, $04                                     ; $5a97: $1e $04
    ld d, $1e                                     ; $5a99: $16 $1e
    inc b                                         ; $5a9b: $04
    inc hl                                        ; $5a9c: $23
    ld e, $04                                     ; $5a9d: $1e $04
    jr nc, jr_053_5abf                            ; $5a9f: $30 $1e

    inc b                                         ; $5aa1: $04
    ld b, a                                       ; $5aa2: $47
    ld e, $04                                     ; $5aa3: $1e $04
    ld d, [hl]                                    ; $5aa5: $56
    ld e, $04                                     ; $5aa6: $1e $04
    ld l, d                                       ; $5aa8: $6a
    ld e, $04                                     ; $5aa9: $1e $04
    ld a, b                                       ; $5aab: $78
    ld e, $04                                     ; $5aac: $1e $04
    adc [hl]                                      ; $5aae: $8e
    ld e, $04                                     ; $5aaf: $1e $04
    and d                                         ; $5ab1: $a2
    ld e, $04                                     ; $5ab2: $1e $04
    cp c                                          ; $5ab4: $b9
    ld e, $04                                     ; $5ab5: $1e $04
    push bc                                       ; $5ab7: $c5
    ld e, $04                                     ; $5ab8: $1e $04
    ret c                                         ; $5aba: $d8

    ld e, $04                                     ; $5abb: $1e $04
    and $1e                                       ; $5abd: $e6 $1e

jr_053_5abf:
    inc b                                         ; $5abf: $04
    ld a, [$041e]                                 ; $5ac0: $fa $1e $04
    ld c, $1f                                     ; $5ac3: $0e $1f
    inc b                                         ; $5ac5: $04
    jr nz, jr_053_5ae7                            ; $5ac6: $20 $1f

    inc b                                         ; $5ac8: $04
    ld [hl], $1f                                  ; $5ac9: $36 $1f
    inc b                                         ; $5acb: $04
    ld c, h                                       ; $5acc: $4c
    rra                                           ; $5acd: $1f
    inc b                                         ; $5ace: $04
    ld h, d                                       ; $5acf: $62
    rra                                           ; $5ad0: $1f
    inc b                                         ; $5ad1: $04
    ld l, a                                       ; $5ad2: $6f
    rra                                           ; $5ad3: $1f
    inc b                                         ; $5ad4: $04
    ld a, l                                       ; $5ad5: $7d
    rra                                           ; $5ad6: $1f
    inc b                                         ; $5ad7: $04
    adc b                                         ; $5ad8: $88
    rra                                           ; $5ad9: $1f
    inc b                                         ; $5ada: $04
    sub [hl]                                      ; $5adb: $96
    rra                                           ; $5adc: $1f
    inc b                                         ; $5add: $04
    and h                                         ; $5ade: $a4
    rra                                           ; $5adf: $1f
    inc b                                         ; $5ae0: $04
    xor a                                         ; $5ae1: $af
    rra                                           ; $5ae2: $1f
    inc b                                         ; $5ae3: $04
    jp nz, Jump_000_041f                          ; $5ae4: $c2 $1f $04

Jump_053_5ae7:
jr_053_5ae7:
    ret nc                                        ; $5ae7: $d0

    rra                                           ; $5ae8: $1f
    inc b                                         ; $5ae9: $04
    rst $18                                       ; $5aea: $df
    rra                                           ; $5aeb: $1f
    inc b                                         ; $5aec: $04
    xor $1f                                       ; $5aed: $ee $1f
    inc b                                         ; $5aef: $04
    db $fd                                        ; $5af0: $fd
    rra                                           ; $5af1: $1f
    inc b                                         ; $5af2: $04
    inc c                                         ; $5af3: $0c
    jr nz, @+$06                                  ; $5af4: $20 $04

    ld e, $20                                     ; $5af6: $1e $20
    inc b                                         ; $5af8: $04
    ld sp, $0420                                  ; $5af9: $31 $20 $04
    inc a                                         ; $5afc: $3c
    jr nz, jr_053_5b03                            ; $5afd: $20 $04

    ld d, b                                       ; $5aff: $50
    jr nz, jr_053_5b06                            ; $5b00: $20 $04

    ld h, h                                       ; $5b02: $64

jr_053_5b03:
    jr nz, jr_053_5b09                            ; $5b03: $20 $04

    ld [hl], b                                    ; $5b05: $70

jr_053_5b06:
    jr nz, jr_053_5b0c                            ; $5b06: $20 $04

    add b                                         ; $5b08: $80

jr_053_5b09:
    jr nz, jr_053_5b0f                            ; $5b09: $20 $04

    adc a                                         ; $5b0b: $8f

jr_053_5b0c:
    jr nz, jr_053_5b12                            ; $5b0c: $20 $04

    sbc e                                         ; $5b0e: $9b

jr_053_5b0f:
    jr nz, jr_053_5b15                            ; $5b0f: $20 $04

    xor d                                         ; $5b11: $aa

jr_053_5b12:
    jr nz, @+$06                                  ; $5b12: $20 $04

    cp [hl]                                       ; $5b14: $be

jr_053_5b15:
    jr nz, @+$06                                  ; $5b15: $20 $04

    call $0420                                    ; $5b17: $cd $20 $04
    ldh [rNR41], a                                ; $5b1a: $e0 $20
    inc b                                         ; $5b1c: $04
    db $eb                                        ; $5b1d: $eb
    jr nz, jr_053_5b24                            ; $5b1e: $20 $04

    and d                                         ; $5b20: $a2
    ld hl, $c804                                  ; $5b21: $21 $04 $c8

jr_053_5b24:
    ld hl, $d704                                  ; $5b24: $21 $04 $d7
    ld hl, $e004                                  ; $5b27: $21 $04 $e0
    ld hl, $ef04                                  ; $5b2a: $21 $04 $ef
    ld hl, $fa04                                  ; $5b2d: $21 $04 $fa
    ld hl, $0c04                                  ; $5b30: $21 $04 $0c
    ld [hl+], a                                   ; $5b33: $22
    inc b                                         ; $5b34: $04
    jr jr_053_5b59                                ; $5b35: $18 $22

    inc b                                         ; $5b37: $04
    inc h                                         ; $5b38: $24
    ld [hl+], a                                   ; $5b39: $22
    inc b                                         ; $5b3a: $04
    add hl, hl                                    ; $5b3b: $29
    ld [hl+], a                                   ; $5b3c: $22
    inc b                                         ; $5b3d: $04
    jr nc, jr_053_5b62                            ; $5b3e: $30 $22

    inc b                                         ; $5b40: $04
    scf                                           ; $5b41: $37
    ld [hl+], a                                   ; $5b42: $22
    inc b                                         ; $5b43: $04
    ld a, $22                                     ; $5b44: $3e $22
    inc b                                         ; $5b46: $04
    ld b, l                                       ; $5b47: $45
    ld [hl+], a                                   ; $5b48: $22
    inc b                                         ; $5b49: $04
    ld c, l                                       ; $5b4a: $4d
    ld [hl+], a                                   ; $5b4b: $22
    inc b                                         ; $5b4c: $04
    ld h, l                                       ; $5b4d: $65
    ld [hl+], a                                   ; $5b4e: $22
    inc b                                         ; $5b4f: $04
    ld [hl], h                                    ; $5b50: $74
    ld [hl+], a                                   ; $5b51: $22
    inc b                                         ; $5b52: $04
    ld a, a                                       ; $5b53: $7f
    ld [hl+], a                                   ; $5b54: $22
    inc b                                         ; $5b55: $04
    adc d                                         ; $5b56: $8a
    ld [hl+], a                                   ; $5b57: $22
    inc b                                         ; $5b58: $04

jr_053_5b59:
    sub h                                         ; $5b59: $94
    ld [hl+], a                                   ; $5b5a: $22
    inc b                                         ; $5b5b: $04
    and c                                         ; $5b5c: $a1
    ld [hl+], a                                   ; $5b5d: $22
    inc b                                         ; $5b5e: $04
    xor d                                         ; $5b5f: $aa
    ld [hl+], a                                   ; $5b60: $22
    inc b                                         ; $5b61: $04

jr_053_5b62:
    or c                                          ; $5b62: $b1
    ld [hl+], a                                   ; $5b63: $22
    inc b                                         ; $5b64: $04
    cp d                                          ; $5b65: $ba
    ld [hl+], a                                   ; $5b66: $22
    inc b                                         ; $5b67: $04
    ret nz                                        ; $5b68: $c0

    ld [hl+], a                                   ; $5b69: $22
    inc b                                         ; $5b6a: $04
    push bc                                       ; $5b6b: $c5
    ld [hl+], a                                   ; $5b6c: $22
    inc b                                         ; $5b6d: $04
    call z, Call_000_0422                         ; $5b6e: $cc $22 $04
    sub $22                                       ; $5b71: $d6 $22
    inc b                                         ; $5b73: $04
    ldh [rNR43], a                                ; $5b74: $e0 $22
    inc b                                         ; $5b76: $04
    db $eb                                        ; $5b77: $eb
    ld [hl+], a                                   ; $5b78: $22
    inc b                                         ; $5b79: $04
    ld a, [c]                                     ; $5b7a: $f2
    ld [hl+], a                                   ; $5b7b: $22
    inc b                                         ; $5b7c: $04
    db $fd                                        ; $5b7d: $fd
    ld [hl+], a                                   ; $5b7e: $22
    inc b                                         ; $5b7f: $04
    dec b                                         ; $5b80: $05
    inc hl                                        ; $5b81: $23
    inc b                                         ; $5b82: $04
    ld c, $23                                     ; $5b83: $0e $23
    inc b                                         ; $5b85: $04
    dec de                                        ; $5b86: $1b
    inc hl                                        ; $5b87: $23
    inc b                                         ; $5b88: $04
    ld [hl+], a                                   ; $5b89: $22
    inc hl                                        ; $5b8a: $23
    inc b                                         ; $5b8b: $04
    add hl, hl                                    ; $5b8c: $29
    inc hl                                        ; $5b8d: $23
    inc b                                         ; $5b8e: $04
    cpl                                           ; $5b8f: $2f
    inc hl                                        ; $5b90: $23
    inc b                                         ; $5b91: $04
    inc a                                         ; $5b92: $3c
    inc hl                                        ; $5b93: $23
    inc b                                         ; $5b94: $04
    ld c, l                                       ; $5b95: $4d
    inc hl                                        ; $5b96: $23
    inc b                                         ; $5b97: $04
    ld e, c                                       ; $5b98: $59
    inc hl                                        ; $5b99: $23
    inc b                                         ; $5b9a: $04
    ld h, a                                       ; $5b9b: $67
    inc hl                                        ; $5b9c: $23
    inc b                                         ; $5b9d: $04
    ld a, b                                       ; $5b9e: $78
    inc hl                                        ; $5b9f: $23
    inc b                                         ; $5ba0: $04
    add a                                         ; $5ba1: $87
    inc hl                                        ; $5ba2: $23
    inc b                                         ; $5ba3: $04
    adc h                                         ; $5ba4: $8c
    inc hl                                        ; $5ba5: $23
    inc b                                         ; $5ba6: $04
    sbc b                                         ; $5ba7: $98
    inc hl                                        ; $5ba8: $23
    inc b                                         ; $5ba9: $04
    sbc [hl]                                      ; $5baa: $9e
    inc hl                                        ; $5bab: $23
    inc b                                         ; $5bac: $04
    and d                                         ; $5bad: $a2
    inc hl                                        ; $5bae: $23
    inc b                                         ; $5baf: $04
    xor b                                         ; $5bb0: $a8
    inc hl                                        ; $5bb1: $23
    inc b                                         ; $5bb2: $04
    or e                                          ; $5bb3: $b3
    inc hl                                        ; $5bb4: $23
    inc b                                         ; $5bb5: $04
    reti                                          ; $5bb6: $d9


    inc hl                                        ; $5bb7: $23
    inc b                                         ; $5bb8: $04
    db $e4                                        ; $5bb9: $e4
    inc hl                                        ; $5bba: $23
    inc b                                         ; $5bbb: $04
    xor $23                                       ; $5bbc: $ee $23
    inc b                                         ; $5bbe: $04
    rrca                                          ; $5bbf: $0f
    inc h                                         ; $5bc0: $24
    inc b                                         ; $5bc1: $04
    dec l                                         ; $5bc2: $2d
    inc h                                         ; $5bc3: $24
    inc b                                         ; $5bc4: $04
    ld b, h                                       ; $5bc5: $44
    inc h                                         ; $5bc6: $24
    inc b                                         ; $5bc7: $04
    ld e, e                                       ; $5bc8: $5b
    inc h                                         ; $5bc9: $24
    inc b                                         ; $5bca: $04
    ld [hl], c                                    ; $5bcb: $71
    inc h                                         ; $5bcc: $24
    inc b                                         ; $5bcd: $04
    add a                                         ; $5bce: $87
    inc h                                         ; $5bcf: $24
    inc b                                         ; $5bd0: $04
    sbc d                                         ; $5bd1: $9a
    inc h                                         ; $5bd2: $24
    inc b                                         ; $5bd3: $04
    cp h                                          ; $5bd4: $bc
    inc h                                         ; $5bd5: $24
    inc b                                         ; $5bd6: $04
    sub $24                                       ; $5bd7: $d6 $24
    inc b                                         ; $5bd9: $04
    xor $24                                       ; $5bda: $ee $24
    inc b                                         ; $5bdc: $04
    ei                                            ; $5bdd: $fb
    inc h                                         ; $5bde: $24
    inc b                                         ; $5bdf: $04
    dec bc                                        ; $5be0: $0b
    dec h                                         ; $5be1: $25
    inc b                                         ; $5be2: $04
    inc e                                         ; $5be3: $1c
    dec h                                         ; $5be4: $25
    inc b                                         ; $5be5: $04
    inc [hl]                                      ; $5be6: $34
    dec h                                         ; $5be7: $25
    inc b                                         ; $5be8: $04
    ld b, h                                       ; $5be9: $44
    dec h                                         ; $5bea: $25

Jump_053_5beb:
    inc b                                         ; $5beb: $04
    ld e, b                                       ; $5bec: $58
    dec h                                         ; $5bed: $25
    inc b                                         ; $5bee: $04
    ld h, c                                       ; $5bef: $61
    dec h                                         ; $5bf0: $25
    inc b                                         ; $5bf1: $04
    ld l, e                                       ; $5bf2: $6b
    dec h                                         ; $5bf3: $25
    inc b                                         ; $5bf4: $04
    ld a, b                                       ; $5bf5: $78
    dec h                                         ; $5bf6: $25
    inc b                                         ; $5bf7: $04
    add [hl]                                      ; $5bf8: $86
    dec h                                         ; $5bf9: $25
    inc b                                         ; $5bfa: $04
    sub c                                         ; $5bfb: $91
    dec h                                         ; $5bfc: $25
    inc b                                         ; $5bfd: $04
    sbc e                                         ; $5bfe: $9b
    dec h                                         ; $5bff: $25
    inc b                                         ; $5c00: $04
    cp b                                          ; $5c01: $b8
    dec h                                         ; $5c02: $25
    inc b                                         ; $5c03: $04
    rst $08                                       ; $5c04: $cf
    dec h                                         ; $5c05: $25
    inc b                                         ; $5c06: $04
    ld sp, hl                                     ; $5c07: $f9
    dec h                                         ; $5c08: $25
    inc b                                         ; $5c09: $04
    rra                                           ; $5c0a: $1f
    ld h, $04                                     ; $5c0b: $26 $04
    ld b, [hl]                                    ; $5c0d: $46
    ld h, $04                                     ; $5c0e: $26 $04
    ld d, a                                       ; $5c10: $57
    ld h, $04                                     ; $5c11: $26 $04
    ld l, c                                       ; $5c13: $69
    ld h, $04                                     ; $5c14: $26 $04
    ld [hl], h                                    ; $5c16: $74
    ld h, $04                                     ; $5c17: $26 $04
    ld a, d                                       ; $5c19: $7a
    ld h, $04                                     ; $5c1a: $26 $04
    adc d                                         ; $5c1c: $8a
    ld h, $04                                     ; $5c1d: $26 $04
    sub b                                         ; $5c1f: $90
    ld h, $04                                     ; $5c20: $26 $04
    sub [hl]                                      ; $5c22: $96
    ld h, $04                                     ; $5c23: $26 $04
    sbc a                                         ; $5c25: $9f
    ld h, $04                                     ; $5c26: $26 $04
    call z, Call_000_0426                         ; $5c28: $cc $26 $04
    ld [$0426], a                                 ; $5c2b: $ea $26 $04
    inc d                                         ; $5c2e: $14
    daa                                           ; $5c2f: $27
    inc b                                         ; $5c30: $04
    jr c, jr_053_5c5a                             ; $5c31: $38 $27

    inc b                                         ; $5c33: $04
    ld e, [hl]                                    ; $5c34: $5e
    daa                                           ; $5c35: $27
    inc b                                         ; $5c36: $04
    sbc b                                         ; $5c37: $98
    daa                                           ; $5c38: $27
    inc b                                         ; $5c39: $04
    ret z                                         ; $5c3a: $c8

    daa                                           ; $5c3b: $27
    inc b                                         ; $5c3c: $04
    push af                                       ; $5c3d: $f5
    daa                                           ; $5c3e: $27
    inc b                                         ; $5c3f: $04
    ld sp, $0428                                  ; $5c40: $31 $28 $04
    ld a, b                                       ; $5c43: $78
    jr z, @+$06                                   ; $5c44: $28 $04

    xor l                                         ; $5c46: $ad
    jr z, jr_053_5c4d                             ; $5c47: $28 $04

    call c, Call_000_0428                         ; $5c49: $dc $28 $04
    dec c                                         ; $5c4c: $0d

jr_053_5c4d:
    add hl, hl                                    ; $5c4d: $29
    inc b                                         ; $5c4e: $04
    jp c, Jump_000_0429                           ; $5c4f: $da $29 $04

    ld [c], a                                     ; $5c52: $e2
    add hl, hl                                    ; $5c53: $29
    inc b                                         ; $5c54: $04
    db $eb                                        ; $5c55: $eb
    add hl, hl                                    ; $5c56: $29
    inc b                                         ; $5c57: $04
    ldh a, [$29]                                  ; $5c58: $f0 $29

jr_053_5c5a:
    inc b                                         ; $5c5a: $04
    ld hl, sp+$29                                 ; $5c5b: $f8 $29
    inc b                                         ; $5c5d: $04
    nop                                           ; $5c5e: $00
    ld a, [hl+]                                   ; $5c5f: $2a
    inc b                                         ; $5c60: $04
    ld [$042a], sp                                ; $5c61: $08 $2a $04
    db $10                                        ; $5c64: $10
    ld a, [hl+]                                   ; $5c65: $2a
    inc b                                         ; $5c66: $04
    dec de                                        ; $5c67: $1b
    ld a, [hl+]                                   ; $5c68: $2a
    inc b                                         ; $5c69: $04
    inc hl                                        ; $5c6a: $23
    ld a, [hl+]                                   ; $5c6b: $2a
    inc b                                         ; $5c6c: $04
    cpl                                           ; $5c6d: $2f
    ld a, [hl+]                                   ; $5c6e: $2a
    inc b                                         ; $5c6f: $04
    ld a, [hl-]                                   ; $5c70: $3a
    ld a, [hl+]                                   ; $5c71: $2a
    inc b                                         ; $5c72: $04
    ld b, b                                       ; $5c73: $40
    ld a, [hl+]                                   ; $5c74: $2a
    inc b                                         ; $5c75: $04
    ld b, l                                       ; $5c76: $45

Jump_053_5c77:
    ld a, [hl+]                                   ; $5c77: $2a
    inc b                                         ; $5c78: $04
    ld c, d                                       ; $5c79: $4a
    ld a, [hl+]                                   ; $5c7a: $2a
    inc b                                         ; $5c7b: $04
    ld c, [hl]                                    ; $5c7c: $4e
    ld a, [hl+]                                   ; $5c7d: $2a
    inc b                                         ; $5c7e: $04
    ld e, d                                       ; $5c7f: $5a
    ld a, [hl+]                                   ; $5c80: $2a
    inc b                                         ; $5c81: $04
    ld e, [hl]                                    ; $5c82: $5e
    ld a, [hl+]                                   ; $5c83: $2a
    inc b                                         ; $5c84: $04
    ld l, c                                       ; $5c85: $69
    ld a, [hl+]                                   ; $5c86: $2a
    inc b                                         ; $5c87: $04
    ld [hl], e                                    ; $5c88: $73
    ld a, [hl+]                                   ; $5c89: $2a
    inc b                                         ; $5c8a: $04
    ld a, h                                       ; $5c8b: $7c
    ld a, [hl+]                                   ; $5c8c: $2a
    inc b                                         ; $5c8d: $04
    add e                                         ; $5c8e: $83
    ld a, [hl+]                                   ; $5c8f: $2a
    inc b                                         ; $5c90: $04
    adc d                                         ; $5c91: $8a
    ld a, [hl+]                                   ; $5c92: $2a
    inc b                                         ; $5c93: $04
    sub c                                         ; $5c94: $91
    ld a, [hl+]                                   ; $5c95: $2a
    inc b                                         ; $5c96: $04
    sbc e                                         ; $5c97: $9b
    ld a, [hl+]                                   ; $5c98: $2a
    inc b                                         ; $5c99: $04
    sbc a                                         ; $5c9a: $9f
    ld a, [hl+]                                   ; $5c9b: $2a
    inc b                                         ; $5c9c: $04
    and e                                         ; $5c9d: $a3
    ld a, [hl+]                                   ; $5c9e: $2a
    inc b                                         ; $5c9f: $04
    and a                                         ; $5ca0: $a7
    ld a, [hl+]                                   ; $5ca1: $2a
    inc b                                         ; $5ca2: $04
    xor a                                         ; $5ca3: $af
    ld a, [hl+]                                   ; $5ca4: $2a
    inc b                                         ; $5ca5: $04
    cp e                                          ; $5ca6: $bb
    ld a, [hl+]                                   ; $5ca7: $2a
    inc b                                         ; $5ca8: $04
    jp nz, Jump_000_042a                          ; $5ca9: $c2 $2a $04

    ret z                                         ; $5cac: $c8

    ld a, [hl+]                                   ; $5cad: $2a
    inc b                                         ; $5cae: $04
    push de                                       ; $5caf: $d5
    ld a, [hl+]                                   ; $5cb0: $2a
    inc b                                         ; $5cb1: $04
    rst $18                                       ; $5cb2: $df
    ld a, [hl+]                                   ; $5cb3: $2a
    inc b                                         ; $5cb4: $04
    rst $20                                       ; $5cb5: $e7
    ld a, [hl+]                                   ; $5cb6: $2a
    inc b                                         ; $5cb7: $04
    ldh a, [$2a]                                  ; $5cb8: $f0 $2a
    inc b                                         ; $5cba: $04
    ld sp, hl                                     ; $5cbb: $f9
    ld a, [hl+]                                   ; $5cbc: $2a
    inc b                                         ; $5cbd: $04
    inc b                                         ; $5cbe: $04
    dec hl                                        ; $5cbf: $2b
    inc b                                         ; $5cc0: $04
    rrca                                          ; $5cc1: $0f
    dec hl                                        ; $5cc2: $2b
    inc b                                         ; $5cc3: $04
    inc d                                         ; $5cc4: $14
    dec hl                                        ; $5cc5: $2b
    inc b                                         ; $5cc6: $04
    rra                                           ; $5cc7: $1f
    dec hl                                        ; $5cc8: $2b
    inc b                                         ; $5cc9: $04
    ld h, $2b                                     ; $5cca: $26 $2b
    inc b                                         ; $5ccc: $04
    ld [hl-], a                                   ; $5ccd: $32
    dec hl                                        ; $5cce: $2b
    inc b                                         ; $5ccf: $04
    inc a                                         ; $5cd0: $3c
    dec hl                                        ; $5cd1: $2b
    inc b                                         ; $5cd2: $04
    ld b, [hl]                                    ; $5cd3: $46
    dec hl                                        ; $5cd4: $2b
    inc b                                         ; $5cd5: $04
    ld c, [hl]                                    ; $5cd6: $4e
    dec hl                                        ; $5cd7: $2b
    inc b                                         ; $5cd8: $04
    ld d, a                                       ; $5cd9: $57
    dec hl                                        ; $5cda: $2b
    inc b                                         ; $5cdb: $04
    ld e, [hl]                                    ; $5cdc: $5e
    dec hl                                        ; $5cdd: $2b
    inc b                                         ; $5cde: $04
    ld h, l                                       ; $5cdf: $65
    dec hl                                        ; $5ce0: $2b
    inc b                                         ; $5ce1: $04
    ld [hl], l                                    ; $5ce2: $75
    dec hl                                        ; $5ce3: $2b
    inc b                                         ; $5ce4: $04
    ld a, [hl]                                    ; $5ce5: $7e
    dec hl                                        ; $5ce6: $2b
    inc b                                         ; $5ce7: $04
    adc d                                         ; $5ce8: $8a
    dec hl                                        ; $5ce9: $2b
    inc b                                         ; $5cea: $04
    sbc a                                         ; $5ceb: $9f
    dec hl                                        ; $5cec: $2b
    inc b                                         ; $5ced: $04
    cp d                                          ; $5cee: $ba
    dec hl                                        ; $5cef: $2b
    inc b                                         ; $5cf0: $04
    ld a, [bc]                                    ; $5cf1: $0a
    inc l                                         ; $5cf2: $2c
    inc b                                         ; $5cf3: $04
    ld b, e                                       ; $5cf4: $43
    inc l                                         ; $5cf5: $2c
    inc b                                         ; $5cf6: $04
    ld l, h                                       ; $5cf7: $6c
    inc l                                         ; $5cf8: $2c
    inc b                                         ; $5cf9: $04
    adc [hl]                                      ; $5cfa: $8e
    inc l                                         ; $5cfb: $2c
    inc b                                         ; $5cfc: $04
    cp d                                          ; $5cfd: $ba
    inc l                                         ; $5cfe: $2c
    inc b                                         ; $5cff: $04
    adc $2c                                       ; $5d00: $ce $2c
    inc b                                         ; $5d02: $04
    ld bc, $042d                                  ; $5d03: $01 $2d $04
    ld l, $2d                                     ; $5d06: $2e $2d
    inc b                                         ; $5d08: $04
    ld d, b                                       ; $5d09: $50
    dec l                                         ; $5d0a: $2d
    inc b                                         ; $5d0b: $04
    ld l, h                                       ; $5d0c: $6c
    dec l                                         ; $5d0d: $2d
    inc b                                         ; $5d0e: $04
    adc l                                         ; $5d0f: $8d
    dec l                                         ; $5d10: $2d
    inc b                                         ; $5d11: $04
    cp d                                          ; $5d12: $ba
    dec l                                         ; $5d13: $2d
    inc b                                         ; $5d14: $04
    db $ed                                        ; $5d15: $ed
    dec l                                         ; $5d16: $2d
    inc b                                         ; $5d17: $04
    dec e                                         ; $5d18: $1d
    ld l, $04                                     ; $5d19: $2e $04
    ld e, l                                       ; $5d1b: $5d
    ld l, $04                                     ; $5d1c: $2e $04
    add b                                         ; $5d1e: $80
    ld l, $04                                     ; $5d1f: $2e $04
    xor e                                         ; $5d21: $ab
    ld l, $04                                     ; $5d22: $2e $04
    push de                                       ; $5d24: $d5
    ld l, $04                                     ; $5d25: $2e $04
    rst $38                                       ; $5d27: $ff
    ld l, $04                                     ; $5d28: $2e $04
    dec l                                         ; $5d2a: $2d
    cpl                                           ; $5d2b: $2f
    inc b                                         ; $5d2c: $04
    ld d, [hl]                                    ; $5d2d: $56
    cpl                                           ; $5d2e: $2f
    inc b                                         ; $5d2f: $04
    adc a                                         ; $5d30: $8f
    cpl                                           ; $5d31: $2f
    inc b                                         ; $5d32: $04
    xor h                                         ; $5d33: $ac
    cpl                                           ; $5d34: $2f
    inc b                                         ; $5d35: $04
    pop de                                        ; $5d36: $d1
    cpl                                           ; $5d37: $2f
    inc b                                         ; $5d38: $04
    pop af                                        ; $5d39: $f1
    cpl                                           ; $5d3a: $2f
    inc b                                         ; $5d3b: $04
    inc c                                         ; $5d3c: $0c
    jr nc, jr_053_5d43                            ; $5d3d: $30 $04

    inc sp                                        ; $5d3f: $33
    jr nc, jr_053_5d46                            ; $5d40: $30 $04

    ld e, a                                       ; $5d42: $5f

jr_053_5d43:
    jr nc, jr_053_5d49                            ; $5d43: $30 $04

    adc c                                         ; $5d45: $89

jr_053_5d46:
    jr nc, jr_053_5d4c                            ; $5d46: $30 $04

    or [hl]                                       ; $5d48: $b6

jr_053_5d49:
    jr nc, jr_053_5d4f                            ; $5d49: $30 $04

    push af                                       ; $5d4b: $f5

jr_053_5d4c:
    jr nc, jr_053_5d52                            ; $5d4c: $30 $04

    cpl                                           ; $5d4e: $2f

jr_053_5d4f:
    ld sp, $4f04                                  ; $5d4f: $31 $04 $4f

jr_053_5d52:
    ld sp, $8c04                                  ; $5d52: $31 $04 $8c
    ld sp, $bb04                                  ; $5d55: $31 $04 $bb
    ld sp, $d204                                  ; $5d58: $31 $04 $d2
    ld sp, $1404                                  ; $5d5b: $31 $04 $14
    ld [hl-], a                                   ; $5d5e: $32
    inc b                                         ; $5d5f: $04
    ccf                                           ; $5d60: $3f
    ld [hl-], a                                   ; $5d61: $32
    inc b                                         ; $5d62: $04
    ld l, h                                       ; $5d63: $6c
    ld [hl-], a                                   ; $5d64: $32
    inc b                                         ; $5d65: $04
    and e                                         ; $5d66: $a3
    ld [hl-], a                                   ; $5d67: $32
    inc b                                         ; $5d68: $04
    ret c                                         ; $5d69: $d8

    ld [hl-], a                                   ; $5d6a: $32
    inc b                                         ; $5d6b: $04
    rst $38                                       ; $5d6c: $ff
    ld [hl-], a                                   ; $5d6d: $32
    inc b                                         ; $5d6e: $04
    dec l                                         ; $5d6f: $2d
    inc sp                                        ; $5d70: $33
    inc b                                         ; $5d71: $04
    ld d, b                                       ; $5d72: $50
    inc sp                                        ; $5d73: $33
    inc b                                         ; $5d74: $04
    adc b                                         ; $5d75: $88
    inc sp                                        ; $5d76: $33
    inc b                                         ; $5d77: $04
    or [hl]                                       ; $5d78: $b6
    inc sp                                        ; $5d79: $33
    inc b                                         ; $5d7a: $04
    ld a, [c]                                     ; $5d7b: $f2
    inc sp                                        ; $5d7c: $33
    inc b                                         ; $5d7d: $04
    dec de                                        ; $5d7e: $1b
    inc [hl]                                      ; $5d7f: $34
    inc b                                         ; $5d80: $04
    ld h, d                                       ; $5d81: $62
    inc [hl]                                      ; $5d82: $34
    inc b                                         ; $5d83: $04
    dec l                                         ; $5d84: $2d
    dec [hl]                                      ; $5d85: $35
    inc b                                         ; $5d86: $04
    sbc [hl]                                      ; $5d87: $9e
    dec [hl]                                      ; $5d88: $35
    inc b                                         ; $5d89: $04
    ld de, $0436                                  ; $5d8a: $11 $36 $04
    sub [hl]                                      ; $5d8d: $96
    ld [hl], $04                                  ; $5d8e: $36 $04
    db $ec                                        ; $5d90: $ec
    ld [hl], $04                                  ; $5d91: $36 $04
    sbc h                                         ; $5d93: $9c
    scf                                           ; $5d94: $37
    inc b                                         ; $5d95: $04
    dec e                                         ; $5d96: $1d
    jr c, jr_053_5d9d                             ; $5d97: $38 $04

    ld d, c                                       ; $5d99: $51
    add hl, sp                                    ; $5d9a: $39
    inc b                                         ; $5d9b: $04
    rst $30                                       ; $5d9c: $f7

jr_053_5d9d:
    add hl, sp                                    ; $5d9d: $39
    inc b                                         ; $5d9e: $04
    dec hl                                        ; $5d9f: $2b
    ld a, [hl-]                                   ; $5da0: $3a
    inc b                                         ; $5da1: $04
    ld a, h                                       ; $5da2: $7c
    ld a, [hl-]                                   ; $5da3: $3a
    inc b                                         ; $5da4: $04
    and h                                         ; $5da5: $a4
    ld a, [hl-]                                   ; $5da6: $3a
    inc b                                         ; $5da7: $04
    rst $10                                       ; $5da8: $d7
    ld a, [hl-]                                   ; $5da9: $3a
    inc b                                         ; $5daa: $04
    ld sp, hl                                     ; $5dab: $f9
    ld a, [hl-]                                   ; $5dac: $3a
    inc b                                         ; $5dad: $04
    dec h                                         ; $5dae: $25
    dec sp                                        ; $5daf: $3b
    inc b                                         ; $5db0: $04
    ld c, d                                       ; $5db1: $4a
    dec sp                                        ; $5db2: $3b
    inc b                                         ; $5db3: $04
    ld [hl], b                                    ; $5db4: $70
    dec sp                                        ; $5db5: $3b
    inc b                                         ; $5db6: $04
    sbc l                                         ; $5db7: $9d
    dec sp                                        ; $5db8: $3b
    inc b                                         ; $5db9: $04
    jp nz, $043b                                  ; $5dba: $c2 $3b $04

    pop hl                                        ; $5dbd: $e1
    dec sp                                        ; $5dbe: $3b
    inc b                                         ; $5dbf: $04
    inc b                                         ; $5dc0: $04
    inc a                                         ; $5dc1: $3c
    inc b                                         ; $5dc2: $04
    add hl, de                                    ; $5dc3: $19
    inc a                                         ; $5dc4: $3c
    inc b                                         ; $5dc5: $04
    jr nc, @+$3e                                  ; $5dc6: $30 $3c

    inc b                                         ; $5dc8: $04
    ld d, [hl]                                    ; $5dc9: $56
    inc a                                         ; $5dca: $3c
    inc b                                         ; $5dcb: $04
    ld a, l                                       ; $5dcc: $7d
    inc a                                         ; $5dcd: $3c
    inc b                                         ; $5dce: $04
    xor [hl]                                      ; $5dcf: $ae
    inc a                                         ; $5dd0: $3c
    inc b                                         ; $5dd1: $04
    ret                                           ; $5dd2: $c9


    inc a                                         ; $5dd3: $3c
    inc b                                         ; $5dd4: $04
    push af                                       ; $5dd5: $f5
    inc a                                         ; $5dd6: $3c
    inc b                                         ; $5dd7: $04
    db $10                                        ; $5dd8: $10
    dec a                                         ; $5dd9: $3d
    inc b                                         ; $5dda: $04
    jr c, jr_053_5e1a                             ; $5ddb: $38 $3d

    inc b                                         ; $5ddd: $04
    ld h, b                                       ; $5dde: $60
    dec a                                         ; $5ddf: $3d
    inc b                                         ; $5de0: $04
    ld a, e                                       ; $5de1: $7b
    dec a                                         ; $5de2: $3d
    inc b                                         ; $5de3: $04
    and l                                         ; $5de4: $a5
    dec a                                         ; $5de5: $3d
    inc b                                         ; $5de6: $04
    call z, Call_000_043d                         ; $5de7: $cc $3d $04
    rst $28                                       ; $5dea: $ef
    dec a                                         ; $5deb: $3d
    inc b                                         ; $5dec: $04
    rla                                           ; $5ded: $17
    ld a, $04                                     ; $5dee: $3e $04
    ld [hl-], a                                   ; $5df0: $32
    ld a, $04                                     ; $5df1: $3e $04
    ld d, h                                       ; $5df3: $54
    ld a, $04                                     ; $5df4: $3e $04
    ld l, e                                       ; $5df6: $6b
    ld a, $04                                     ; $5df7: $3e $04
    adc e                                         ; $5df9: $8b
    ld a, $04                                     ; $5dfa: $3e $04
    xor h                                         ; $5dfc: $ac
    ld a, $04                                     ; $5dfd: $3e $04
    db $db                                        ; $5dff: $db
    ld a, $04                                     ; $5e00: $3e $04
    ld bc, $043f                                  ; $5e02: $01 $3f $04
    add hl, hl                                    ; $5e05: $29
    ccf                                           ; $5e06: $3f
    inc b                                         ; $5e07: $04
    ld c, c                                       ; $5e08: $49
    ccf                                           ; $5e09: $3f
    inc b                                         ; $5e0a: $04
    ld d, [hl]                                    ; $5e0b: $56
    ccf                                           ; $5e0c: $3f
    inc b                                         ; $5e0d: $04
    add a                                         ; $5e0e: $87
    ccf                                           ; $5e0f: $3f
    inc b                                         ; $5e10: $04
    and c                                         ; $5e11: $a1
    ccf                                           ; $5e12: $3f
    inc b                                         ; $5e13: $04
    cp [hl]                                       ; $5e14: $be
    ccf                                           ; $5e15: $3f
    dec b                                         ; $5e16: $05
    ld bc, $0500                                  ; $5e17: $01 $00 $05

jr_053_5e1a:
    cpl                                           ; $5e1a: $2f
    nop                                           ; $5e1b: $00
    dec b                                         ; $5e1c: $05
    ld c, e                                       ; $5e1d: $4b
    nop                                           ; $5e1e: $00
    dec b                                         ; $5e1f: $05
    ld a, e                                       ; $5e20: $7b
    nop                                           ; $5e21: $00
    dec b                                         ; $5e22: $05
    sub c                                         ; $5e23: $91
    nop                                           ; $5e24: $00
    dec b                                         ; $5e25: $05
    ret c                                         ; $5e26: $d8

    nop                                           ; $5e27: $00
    dec b                                         ; $5e28: $05
    rst $30                                       ; $5e29: $f7
    nop                                           ; $5e2a: $00
    dec b                                         ; $5e2b: $05
    daa                                           ; $5e2c: $27
    ld bc, $5405                                  ; $5e2d: $01 $05 $54
    ld bc, $7e05                                  ; $5e30: $01 $05 $7e
    ld bc, $a805                                  ; $5e33: $01 $05 $a8
    ld bc, $c805                                  ; $5e36: $01 $05 $c8
    ld bc, $f605                                  ; $5e39: $01 $05 $f6
    ld bc, $1605                                  ; $5e3c: $01 $05 $16
    ld [bc], a                                    ; $5e3f: $02
    dec b                                         ; $5e40: $05
    ld b, d                                       ; $5e41: $42
    ld [bc], a                                    ; $5e42: $02
    dec b                                         ; $5e43: $05
    ld h, c                                       ; $5e44: $61
    ld [bc], a                                    ; $5e45: $02
    dec b                                         ; $5e46: $05
    adc h                                         ; $5e47: $8c
    ld [bc], a                                    ; $5e48: $02

Jump_053_5e49:
    dec b                                         ; $5e49: $05
    xor l                                         ; $5e4a: $ad
    ld [bc], a                                    ; $5e4b: $02
    dec b                                         ; $5e4c: $05
    push hl                                       ; $5e4d: $e5
    ld [bc], a                                    ; $5e4e: $02
    dec b                                         ; $5e4f: $05
    rla                                           ; $5e50: $17
    inc bc                                        ; $5e51: $03
    dec b                                         ; $5e52: $05
    ld b, c                                       ; $5e53: $41
    inc bc                                        ; $5e54: $03
    dec b                                         ; $5e55: $05
    ld [hl], l                                    ; $5e56: $75
    inc bc                                        ; $5e57: $03
    dec b                                         ; $5e58: $05
    adc b                                         ; $5e59: $88
    inc bc                                        ; $5e5a: $03
    dec b                                         ; $5e5b: $05
    adc c                                         ; $5e5c: $89
    inc bc                                        ; $5e5d: $03
    dec b                                         ; $5e5e: $05
    sub e                                         ; $5e5f: $93
    inc bc                                        ; $5e60: $03
    dec b                                         ; $5e61: $05
    sbc h                                         ; $5e62: $9c
    inc bc                                        ; $5e63: $03
    dec b                                         ; $5e64: $05
    sbc l                                         ; $5e65: $9d
    inc bc                                        ; $5e66: $03
    dec b                                         ; $5e67: $05
    and [hl]                                      ; $5e68: $a6
    inc bc                                        ; $5e69: $03
    dec b                                         ; $5e6a: $05
    or c                                          ; $5e6b: $b1
    inc bc                                        ; $5e6c: $03
    dec b                                         ; $5e6d: $05
    or d                                          ; $5e6e: $b2
    inc bc                                        ; $5e6f: $03
    dec b                                         ; $5e70: $05
    cp d                                          ; $5e71: $ba
    inc bc                                        ; $5e72: $03
    dec b                                         ; $5e73: $05
    call nz, $0503                                ; $5e74: $c4 $03 $05
    push bc                                       ; $5e77: $c5
    inc bc                                        ; $5e78: $03
    dec b                                         ; $5e79: $05
    call z, $0503                                 ; $5e7a: $cc $03 $05
    push de                                       ; $5e7d: $d5
    inc bc                                        ; $5e7e: $03
    dec b                                         ; $5e7f: $05
    sbc $03                                       ; $5e80: $de $03
    dec b                                         ; $5e82: $05
    jp hl                                         ; $5e83: $e9


    inc bc                                        ; $5e84: $03
    dec b                                         ; $5e85: $05
    ld a, [c]                                     ; $5e86: $f2
    inc bc                                        ; $5e87: $03
    dec b                                         ; $5e88: $05
    di                                            ; $5e89: $f3
    inc bc                                        ; $5e8a: $03
    dec b                                         ; $5e8b: $05
    nop                                           ; $5e8c: $00
    inc b                                         ; $5e8d: $04
    dec b                                         ; $5e8e: $05
    add hl, bc                                    ; $5e8f: $09
    inc b                                         ; $5e90: $04
    dec b                                         ; $5e91: $05
    ld de, $0504                                  ; $5e92: $11 $04 $05
    ld a, [de]                                    ; $5e95: $1a
    inc b                                         ; $5e96: $04
    dec b                                         ; $5e97: $05
    dec de                                        ; $5e98: $1b
    inc b                                         ; $5e99: $04
    dec b                                         ; $5e9a: $05
    jr z, jr_053_5ea1                             ; $5e9b: $28 $04

    dec b                                         ; $5e9d: $05
    ld [hl-], a                                   ; $5e9e: $32
    inc b                                         ; $5e9f: $04
    dec b                                         ; $5ea0: $05

jr_053_5ea1:
    inc sp                                        ; $5ea1: $33
    inc b                                         ; $5ea2: $04
    dec b                                         ; $5ea3: $05
    inc a                                         ; $5ea4: $3c
    inc b                                         ; $5ea5: $04
    dec b                                         ; $5ea6: $05
    ld b, h                                       ; $5ea7: $44
    inc b                                         ; $5ea8: $04
    dec b                                         ; $5ea9: $05
    ld b, l                                       ; $5eaa: $45
    inc b                                         ; $5eab: $04
    dec b                                         ; $5eac: $05
    ld d, e                                       ; $5ead: $53
    inc b                                         ; $5eae: $04
    dec b                                         ; $5eaf: $05
    ld e, d                                       ; $5eb0: $5a
    inc b                                         ; $5eb1: $04
    dec b                                         ; $5eb2: $05
    ld h, d                                       ; $5eb3: $62
    inc b                                         ; $5eb4: $04
    dec b                                         ; $5eb5: $05
    ld l, c                                       ; $5eb6: $69
    inc b                                         ; $5eb7: $04
    dec b                                         ; $5eb8: $05
    ld l, d                                       ; $5eb9: $6a
    inc b                                         ; $5eba: $04
    dec b                                         ; $5ebb: $05
    ld l, a                                       ; $5ebc: $6f
    inc b                                         ; $5ebd: $04
    dec b                                         ; $5ebe: $05
    ld a, d                                       ; $5ebf: $7a
    inc b                                         ; $5ec0: $04
    dec b                                         ; $5ec1: $05
    add h                                         ; $5ec2: $84
    inc b                                         ; $5ec3: $04
    dec b                                         ; $5ec4: $05
    adc [hl]                                      ; $5ec5: $8e
    inc b                                         ; $5ec6: $04
    dec b                                         ; $5ec7: $05
    sub [hl]                                      ; $5ec8: $96
    inc b                                         ; $5ec9: $04
    dec b                                         ; $5eca: $05
    sub a                                         ; $5ecb: $97

Jump_053_5ecc:
    inc b                                         ; $5ecc: $04
    dec b                                         ; $5ecd: $05
    sbc b                                         ; $5ece: $98
    inc b                                         ; $5ecf: $04
    dec b                                         ; $5ed0: $05
    xor a                                         ; $5ed1: $af
    inc b                                         ; $5ed2: $04
    dec b                                         ; $5ed3: $05

Jump_053_5ed4:
    or b                                          ; $5ed4: $b0
    inc b                                         ; $5ed5: $04
    dec b                                         ; $5ed6: $05
    cp e                                          ; $5ed7: $bb
    inc b                                         ; $5ed8: $04
    dec b                                         ; $5ed9: $05
    call nz, $0504                                ; $5eda: $c4 $04 $05
    call z, $0504                                 ; $5edd: $cc $04 $05
    call $0504                                    ; $5ee0: $cd $04 $05
    call nc, $0504                                ; $5ee3: $d4 $04 $05
    sbc $04                                       ; $5ee6: $de $04
    dec b                                         ; $5ee8: $05
    rst $18                                       ; $5ee9: $df
    inc b                                         ; $5eea: $04
    dec b                                         ; $5eeb: $05
    db $ed                                        ; $5eec: $ed
    inc b                                         ; $5eed: $04
    dec b                                         ; $5eee: $05
    or $04                                        ; $5eef: $f6 $04
    dec b                                         ; $5ef1: $05
    rst $30                                       ; $5ef2: $f7
    inc b                                         ; $5ef3: $04
    dec b                                         ; $5ef4: $05
    ld c, $05                                     ; $5ef5: $0e $05
    dec b                                         ; $5ef7: $05
    add hl, de                                    ; $5ef8: $19
    dec b                                         ; $5ef9: $05
    dec b                                         ; $5efa: $05
    inc hl                                        ; $5efb: $23
    dec b                                         ; $5efc: $05
    dec b                                         ; $5efd: $05
    ld a, [hl+]                                   ; $5efe: $2a
    dec b                                         ; $5eff: $05
    dec b                                         ; $5f00: $05
    ld [hl-], a                                   ; $5f01: $32
    dec b                                         ; $5f02: $05
    dec b                                         ; $5f03: $05
    inc a                                         ; $5f04: $3c
    dec b                                         ; $5f05: $05
    dec b                                         ; $5f06: $05
    ld b, l                                       ; $5f07: $45
    dec b                                         ; $5f08: $05
    dec b                                         ; $5f09: $05
    ld b, [hl]                                    ; $5f0a: $46
    dec b                                         ; $5f0b: $05
    dec b                                         ; $5f0c: $05
    ld b, a                                       ; $5f0d: $47
    dec b                                         ; $5f0e: $05
    dec b                                         ; $5f0f: $05
    ld c, b                                       ; $5f10: $48
    dec b                                         ; $5f11: $05
    dec b                                         ; $5f12: $05
    ld e, d                                       ; $5f13: $5a
    dec b                                         ; $5f14: $05
    dec b                                         ; $5f15: $05
    ld e, e                                       ; $5f16: $5b
    dec b                                         ; $5f17: $05
    dec b                                         ; $5f18: $05
    ld h, [hl]                                    ; $5f19: $66
    dec b                                         ; $5f1a: $05
    dec b                                         ; $5f1b: $05
    ld l, [hl]                                    ; $5f1c: $6e
    dec b                                         ; $5f1d: $05
    dec b                                         ; $5f1e: $05
    ld a, c                                       ; $5f1f: $79
    dec b                                         ; $5f20: $05
    dec b                                         ; $5f21: $05
    add c                                         ; $5f22: $81
    dec b                                         ; $5f23: $05
    dec b                                         ; $5f24: $05
    adc e                                         ; $5f25: $8b
    dec b                                         ; $5f26: $05
    dec b                                         ; $5f27: $05
    sub [hl]                                      ; $5f28: $96
    dec b                                         ; $5f29: $05
    dec b                                         ; $5f2a: $05
    sbc a                                         ; $5f2b: $9f
    dec b                                         ; $5f2c: $05
    dec b                                         ; $5f2d: $05
    and a                                         ; $5f2e: $a7
    dec b                                         ; $5f2f: $05
    dec b                                         ; $5f30: $05
    xor b                                         ; $5f31: $a8
    dec b                                         ; $5f32: $05
    dec b                                         ; $5f33: $05
    or a                                          ; $5f34: $b7
    dec b                                         ; $5f35: $05
    dec b                                         ; $5f36: $05
    cp l                                          ; $5f37: $bd
    dec b                                         ; $5f38: $05
    dec b                                         ; $5f39: $05
    cp [hl]                                       ; $5f3a: $be
    dec b                                         ; $5f3b: $05
    dec b                                         ; $5f3c: $05
    ret                                           ; $5f3d: $c9


    dec b                                         ; $5f3e: $05
    dec b                                         ; $5f3f: $05
    ret nc                                        ; $5f40: $d0

    dec b                                         ; $5f41: $05
    dec b                                         ; $5f42: $05
    pop de                                        ; $5f43: $d1
    dec b                                         ; $5f44: $05
    dec b                                         ; $5f45: $05
    rst $10                                       ; $5f46: $d7
    dec b                                         ; $5f47: $05
    dec b                                         ; $5f48: $05
    ldh [rTIMA], a                                ; $5f49: $e0 $05
    dec b                                         ; $5f4b: $05
    jp hl                                         ; $5f4c: $e9


    dec b                                         ; $5f4d: $05
    dec b                                         ; $5f4e: $05
    ld a, [c]                                     ; $5f4f: $f2
    dec b                                         ; $5f50: $05
    dec b                                         ; $5f51: $05
    db $fc                                        ; $5f52: $fc
    dec b                                         ; $5f53: $05
    dec b                                         ; $5f54: $05
    db $fd                                        ; $5f55: $fd
    dec b                                         ; $5f56: $05
    dec b                                         ; $5f57: $05
    rrca                                          ; $5f58: $0f
    ld b, $05                                     ; $5f59: $06 $05
    jr @+$08                                      ; $5f5b: $18 $06

    dec b                                         ; $5f5d: $05
    ld [hl+], a                                   ; $5f5e: $22
    ld b, $05                                     ; $5f5f: $06 $05
    add hl, hl                                    ; $5f61: $29
    ld b, $05                                     ; $5f62: $06 $05
    inc sp                                        ; $5f64: $33
    ld b, $05                                     ; $5f65: $06 $05
    dec sp                                        ; $5f67: $3b
    ld b, $05                                     ; $5f68: $06 $05
    ld b, h                                       ; $5f6a: $44
    ld b, $05                                     ; $5f6b: $06 $05
    ld c, a                                       ; $5f6d: $4f
    ld b, $05                                     ; $5f6e: $06 $05
    ld e, h                                       ; $5f70: $5c
    ld b, $05                                     ; $5f71: $06 $05
    ld h, l                                       ; $5f73: $65
    ld b, $05                                     ; $5f74: $06 $05
    ld l, [hl]                                    ; $5f76: $6e
    ld b, $05                                     ; $5f77: $06 $05
    ld l, a                                       ; $5f79: $6f
    ld b, $05                                     ; $5f7a: $06 $05
    ld a, [hl]                                    ; $5f7c: $7e
    ld b, $05                                     ; $5f7d: $06 $05
    add l                                         ; $5f7f: $85
    ld b, $05                                     ; $5f80: $06 $05
    sub b                                         ; $5f82: $90
    ld b, $05                                     ; $5f83: $06 $05
    sbc c                                         ; $5f85: $99
    ld b, $05                                     ; $5f86: $06 $05
    and d                                         ; $5f88: $a2
    ld b, $05                                     ; $5f89: $06 $05
    and e                                         ; $5f8b: $a3
    ld b, $05                                     ; $5f8c: $06 $05
    cp d                                          ; $5f8e: $ba
    ld b, $05                                     ; $5f8f: $06 $05
    add $06                                       ; $5f91: $c6 $06
    dec b                                         ; $5f93: $05
    pop de                                        ; $5f94: $d1
    ld b, $05                                     ; $5f95: $06 $05
    jp c, $0506                                   ; $5f97: $da $06 $05

    db $e3                                        ; $5f9a: $e3
    ld b, $05                                     ; $5f9b: $06 $05
    db $eb                                        ; $5f9d: $eb
    ld b, $05                                     ; $5f9e: $06 $05
    ld a, [c]                                     ; $5fa0: $f2
    ld b, $05                                     ; $5fa1: $06 $05
    db $fc                                        ; $5fa3: $fc
    ld b, $05                                     ; $5fa4: $06 $05
    inc b                                         ; $5fa6: $04
    rlca                                          ; $5fa7: $07
    dec b                                         ; $5fa8: $05
    dec bc                                        ; $5fa9: $0b
    rlca                                          ; $5faa: $07
    dec b                                         ; $5fab: $05
    inc de                                        ; $5fac: $13
    rlca                                          ; $5fad: $07
    dec b                                         ; $5fae: $05
    inc e                                         ; $5faf: $1c
    rlca                                          ; $5fb0: $07
    dec b                                         ; $5fb1: $05
    ld h, $07                                     ; $5fb2: $26 $07
    dec b                                         ; $5fb4: $05
    daa                                           ; $5fb5: $27
    rlca                                          ; $5fb6: $07
    dec b                                         ; $5fb7: $05
    jr z, jr_053_5fc1                             ; $5fb8: $28 $07

    dec b                                         ; $5fba: $05
    add hl, hl                                    ; $5fbb: $29
    rlca                                          ; $5fbc: $07
    dec b                                         ; $5fbd: $05
    ld a, [hl+]                                   ; $5fbe: $2a
    rlca                                          ; $5fbf: $07
    dec b                                         ; $5fc0: $05

jr_053_5fc1:
    dec hl                                        ; $5fc1: $2b
    rlca                                          ; $5fc2: $07
    dec b                                         ; $5fc3: $05
    inc l                                         ; $5fc4: $2c
    rlca                                          ; $5fc5: $07
    dec b                                         ; $5fc6: $05
    dec l                                         ; $5fc7: $2d
    rlca                                          ; $5fc8: $07
    dec b                                         ; $5fc9: $05
    ld l, $07                                     ; $5fca: $2e $07
    dec b                                         ; $5fcc: $05
    cpl                                           ; $5fcd: $2f
    rlca                                          ; $5fce: $07
    dec b                                         ; $5fcf: $05
    jr nc, jr_053_5fd9                            ; $5fd0: $30 $07

    dec b                                         ; $5fd2: $05
    ld sp, $0507                                  ; $5fd3: $31 $07 $05
    ld [hl-], a                                   ; $5fd6: $32
    rlca                                          ; $5fd7: $07
    dec b                                         ; $5fd8: $05

jr_053_5fd9:
    inc sp                                        ; $5fd9: $33
    rlca                                          ; $5fda: $07
    dec b                                         ; $5fdb: $05
    inc [hl]                                      ; $5fdc: $34
    rlca                                          ; $5fdd: $07
    dec b                                         ; $5fde: $05
    dec [hl]                                      ; $5fdf: $35
    rlca                                          ; $5fe0: $07
    dec b                                         ; $5fe1: $05
    ld [hl], $07                                  ; $5fe2: $36 $07
    dec b                                         ; $5fe4: $05
    scf                                           ; $5fe5: $37
    rlca                                          ; $5fe6: $07
    dec b                                         ; $5fe7: $05
    jr c, jr_053_5ff1                             ; $5fe8: $38 $07

    dec b                                         ; $5fea: $05
    add hl, sp                                    ; $5feb: $39
    rlca                                          ; $5fec: $07
    dec b                                         ; $5fed: $05
    ld a, [hl-]                                   ; $5fee: $3a
    rlca                                          ; $5fef: $07
    dec b                                         ; $5ff0: $05

jr_053_5ff1:
    dec sp                                        ; $5ff1: $3b
    rlca                                          ; $5ff2: $07
    dec b                                         ; $5ff3: $05
    inc a                                         ; $5ff4: $3c
    rlca                                          ; $5ff5: $07
    dec b                                         ; $5ff6: $05
    dec a                                         ; $5ff7: $3d
    rlca                                          ; $5ff8: $07
    dec b                                         ; $5ff9: $05
    ld a, $07                                     ; $5ffa: $3e $07
    dec b                                         ; $5ffc: $05
    ccf                                           ; $5ffd: $3f
    rlca                                          ; $5ffe: $07
    dec b                                         ; $5fff: $05
    ld b, b                                       ; $6000: $40
    rlca                                          ; $6001: $07
    dec b                                         ; $6002: $05
    ld b, c                                       ; $6003: $41
    rlca                                          ; $6004: $07
    dec b                                         ; $6005: $05
    ld b, d                                       ; $6006: $42
    rlca                                          ; $6007: $07
    dec b                                         ; $6008: $05
    ld b, e                                       ; $6009: $43
    rlca                                          ; $600a: $07
    dec b                                         ; $600b: $05
    ld b, h                                       ; $600c: $44
    rlca                                          ; $600d: $07
    dec b                                         ; $600e: $05
    ld b, l                                       ; $600f: $45
    rlca                                          ; $6010: $07
    dec b                                         ; $6011: $05
    ld b, [hl]                                    ; $6012: $46
    rlca                                          ; $6013: $07
    dec b                                         ; $6014: $05
    ld b, a                                       ; $6015: $47
    rlca                                          ; $6016: $07
    dec b                                         ; $6017: $05
    ld c, b                                       ; $6018: $48
    rlca                                          ; $6019: $07
    dec b                                         ; $601a: $05
    ld e, h                                       ; $601b: $5c
    rlca                                          ; $601c: $07
    dec b                                         ; $601d: $05
    ld h, c                                       ; $601e: $61
    rlca                                          ; $601f: $07
    dec b                                         ; $6020: $05
    sub [hl]                                      ; $6021: $96
    rlca                                          ; $6022: $07
    dec b                                         ; $6023: $05
    and e                                         ; $6024: $a3
    rlca                                          ; $6025: $07
    dec b                                         ; $6026: $05
    db $eb                                        ; $6027: $eb
    rlca                                          ; $6028: $07
    dec b                                         ; $6029: $05
    rst $38                                       ; $602a: $ff
    rlca                                          ; $602b: $07
    dec b                                         ; $602c: $05
    ccf                                           ; $602d: $3f
    ld [$5f05], sp                                ; $602e: $08 $05 $5f
    ld [$bb05], sp                                ; $6031: $08 $05 $bb
    ld [$cd05], sp                                ; $6034: $08 $05 $cd
    ld [$fd05], sp                                ; $6037: $08 $05 $fd
    ld [$4705], sp                                ; $603a: $08 $05 $47
    add hl, bc                                    ; $603d: $09
    dec b                                         ; $603e: $05
    ld e, e                                       ; $603f: $5b
    add hl, bc                                    ; $6040: $09
    dec b                                         ; $6041: $05
    adc [hl]                                      ; $6042: $8e
    add hl, bc                                    ; $6043: $09
    dec b                                         ; $6044: $05
    xor c                                         ; $6045: $a9
    add hl, bc                                    ; $6046: $09
    dec b                                         ; $6047: $05
    ret nc                                        ; $6048: $d0

    add hl, bc                                    ; $6049: $09
    dec b                                         ; $604a: $05
    inc bc                                        ; $604b: $03
    ld a, [bc]                                    ; $604c: $0a
    dec b                                         ; $604d: $05
    dec c                                         ; $604e: $0d
    ld a, [bc]                                    ; $604f: $0a
    dec b                                         ; $6050: $05
    ld [hl+], a                                   ; $6051: $22
    ld a, [bc]                                    ; $6052: $0a
    dec b                                         ; $6053: $05
    inc [hl]                                      ; $6054: $34
    ld a, [bc]                                    ; $6055: $0a
    dec b                                         ; $6056: $05
    ld b, a                                       ; $6057: $47
    ld a, [bc]                                    ; $6058: $0a
    dec b                                         ; $6059: $05
    ld e, e                                       ; $605a: $5b
    ld a, [bc]                                    ; $605b: $0a
    dec b                                         ; $605c: $05
    ld [hl], e                                    ; $605d: $73
    ld a, [bc]                                    ; $605e: $0a
    dec b                                         ; $605f: $05
    or a                                          ; $6060: $b7
    ld a, [bc]                                    ; $6061: $0a
    dec b                                         ; $6062: $05
    pop bc                                        ; $6063: $c1
    ld a, [bc]                                    ; $6064: $0a
    dec b                                         ; $6065: $05
    ld de, $050b                                  ; $6066: $11 $0b $05
    ld [hl+], a                                   ; $6069: $22
    dec bc                                        ; $606a: $0b
    dec b                                         ; $606b: $05
    jr c, jr_053_6079                             ; $606c: $38 $0b

    dec b                                         ; $606e: $05
    ld [hl], e                                    ; $606f: $73
    dec bc                                        ; $6070: $0b
    dec b                                         ; $6071: $05
    sub l                                         ; $6072: $95
    dec bc                                        ; $6073: $0b
    dec b                                         ; $6074: $05
    and [hl]                                      ; $6075: $a6
    dec bc                                        ; $6076: $0b
    dec b                                         ; $6077: $05
    cp d                                          ; $6078: $ba

jr_053_6079:
    dec bc                                        ; $6079: $0b
    dec b                                         ; $607a: $05
    add sp, $0b                                   ; $607b: $e8 $0b
    dec b                                         ; $607d: $05
    ld [bc], a                                    ; $607e: $02
    inc c                                         ; $607f: $0c
    dec b                                         ; $6080: $05
    dec c                                         ; $6081: $0d
    inc c                                         ; $6082: $0c
    dec b                                         ; $6083: $05
    jr jr_053_6092                                ; $6084: $18 $0c

    dec b                                         ; $6086: $05
    dec hl                                        ; $6087: $2b
    inc c                                         ; $6088: $0c
    dec b                                         ; $6089: $05
    dec a                                         ; $608a: $3d
    inc c                                         ; $608b: $0c
    dec b                                         ; $608c: $05
    ld b, [hl]                                    ; $608d: $46
    inc c                                         ; $608e: $0c
    dec b                                         ; $608f: $05
    ld d, d                                       ; $6090: $52
    inc c                                         ; $6091: $0c

jr_053_6092:
    dec b                                         ; $6092: $05
    ld h, [hl]                                    ; $6093: $66
    inc c                                         ; $6094: $0c
    dec b                                         ; $6095: $05
    ld a, b                                       ; $6096: $78
    inc c                                         ; $6097: $0c
    dec b                                         ; $6098: $05
    adc l                                         ; $6099: $8d
    inc c                                         ; $609a: $0c
    dec b                                         ; $609b: $05
    sbc e                                         ; $609c: $9b
    inc c                                         ; $609d: $0c
    dec b                                         ; $609e: $05
    xor a                                         ; $609f: $af
    inc c                                         ; $60a0: $0c
    dec b                                         ; $60a1: $05
    adc $0c                                       ; $60a2: $ce $0c
    dec b                                         ; $60a4: $05
    jp c, Jump_000_050c                           ; $60a5: $da $0c $05

    ldh a, [$0c]                                  ; $60a8: $f0 $0c
    dec b                                         ; $60aa: $05
    db $fd                                        ; $60ab: $fd
    inc c                                         ; $60ac: $0c
    dec b                                         ; $60ad: $05
    ld [de], a                                    ; $60ae: $12
    dec c                                         ; $60af: $0d
    dec b                                         ; $60b0: $05
    dec h                                         ; $60b1: $25
    dec c                                         ; $60b2: $0d
    dec b                                         ; $60b3: $05
    dec [hl]                                      ; $60b4: $35
    dec c                                         ; $60b5: $0d
    dec b                                         ; $60b6: $05
    ld b, a                                       ; $60b7: $47
    dec c                                         ; $60b8: $0d
    dec b                                         ; $60b9: $05
    ld d, d                                       ; $60ba: $52
    dec c                                         ; $60bb: $0d
    dec b                                         ; $60bc: $05
    ld a, d                                       ; $60bd: $7a
    dec c                                         ; $60be: $0d
    dec b                                         ; $60bf: $05
    adc h                                         ; $60c0: $8c
    dec c                                         ; $60c1: $0d
    dec b                                         ; $60c2: $05
    and b                                         ; $60c3: $a0
    dec c                                         ; $60c4: $0d
    dec b                                         ; $60c5: $05
    or a                                          ; $60c6: $b7
    dec c                                         ; $60c7: $0d
    dec b                                         ; $60c8: $05
    call z, Call_000_050d                         ; $60c9: $cc $0d $05
    db $f4                                        ; $60cc: $f4
    dec c                                         ; $60cd: $0d
    dec b                                         ; $60ce: $05
    inc bc                                        ; $60cf: $03
    ld c, $05                                     ; $60d0: $0e $05
    inc sp                                        ; $60d2: $33
    ld c, $05                                     ; $60d3: $0e $05
    ld b, a                                       ; $60d5: $47
    ld c, $05                                     ; $60d6: $0e $05
    ld e, e                                       ; $60d8: $5b
    ld c, $05                                     ; $60d9: $0e $05
    ld [hl], h                                    ; $60db: $74
    ld c, $05                                     ; $60dc: $0e $05
    sub e                                         ; $60de: $93
    ld c, $05                                     ; $60df: $0e $05
    xor b                                         ; $60e1: $a8
    ld c, $05                                     ; $60e2: $0e $05
    or a                                          ; $60e4: $b7
    ld c, $05                                     ; $60e5: $0e $05
    call Call_000_050e                            ; $60e7: $cd $0e $05
    pop hl                                        ; $60ea: $e1
    ld c, $05                                     ; $60eb: $0e $05
    di                                            ; $60ed: $f3
    ld c, $05                                     ; $60ee: $0e $05
    dec b                                         ; $60f0: $05
    rrca                                          ; $60f1: $0f
    dec b                                         ; $60f2: $05
    rra                                           ; $60f3: $1f
    rrca                                          ; $60f4: $0f

Jump_053_60f5:
    dec b                                         ; $60f5: $05
    ld [hl], $0f                                  ; $60f6: $36 $0f
    dec b                                         ; $60f8: $05
    ld d, [hl]                                    ; $60f9: $56
    rrca                                          ; $60fa: $0f
    dec b                                         ; $60fb: $05
    ld l, b                                       ; $60fc: $68
    rrca                                          ; $60fd: $0f
    dec b                                         ; $60fe: $05
    add c                                         ; $60ff: $81
    rrca                                          ; $6100: $0f
    dec b                                         ; $6101: $05
    sbc b                                         ; $6102: $98
    rrca                                          ; $6103: $0f
    dec b                                         ; $6104: $05
    cp c                                          ; $6105: $b9
    rrca                                          ; $6106: $0f
    dec b                                         ; $6107: $05
    adc $0f                                       ; $6108: $ce $0f
    dec b                                         ; $610a: $05
    db $eb                                        ; $610b: $eb
    rrca                                          ; $610c: $0f
    dec b                                         ; $610d: $05
    dec b                                         ; $610e: $05
    db $10                                        ; $610f: $10
    dec b                                         ; $6110: $05
    inc e                                         ; $6111: $1c
    db $10                                        ; $6112: $10
    dec b                                         ; $6113: $05
    add b                                         ; $6114: $80
    db $10                                        ; $6115: $10
    dec b                                         ; $6116: $05
    add sp, $10                                   ; $6117: $e8 $10
    dec b                                         ; $6119: $05
    inc b                                         ; $611a: $04
    ld de, $2705                                  ; $611b: $11 $05 $27
    ld de, $4a05                                  ; $611e: $11 $05 $4a
    ld de, $7805                                  ; $6121: $11 $05 $78
    ld de, $a805                                  ; $6124: $11 $05 $a8
    ld de, $cf05                                  ; $6127: $11 $05 $cf
    ld de, $f205                                  ; $612a: $11 $05 $f2
    ld de, $1905                                  ; $612d: $11 $05 $19
    ld [de], a                                    ; $6130: $12
    dec b                                         ; $6131: $05
    ld a, $12                                     ; $6132: $3e $12
    dec b                                         ; $6134: $05
    ld [hl], d                                    ; $6135: $72
    ld [de], a                                    ; $6136: $12
    dec b                                         ; $6137: $05
    adc [hl]                                      ; $6138: $8e
    ld [de], a                                    ; $6139: $12
    dec b                                         ; $613a: $05
    and a                                         ; $613b: $a7
    ld [de], a                                    ; $613c: $12
    dec b                                         ; $613d: $05
    push bc                                       ; $613e: $c5
    ld [de], a                                    ; $613f: $12
    dec b                                         ; $6140: $05
    db $ec                                        ; $6141: $ec
    ld [de], a                                    ; $6142: $12
    dec b                                         ; $6143: $05
    ld l, $13                                     ; $6144: $2e $13
    dec b                                         ; $6146: $05
    add a                                         ; $6147: $87
    inc de                                        ; $6148: $13
    dec b                                         ; $6149: $05
    cp l                                          ; $614a: $bd
    inc de                                        ; $614b: $13
    dec b                                         ; $614c: $05
    add sp, $13                                   ; $614d: $e8 $13
    dec b                                         ; $614f: $05
    add hl, hl                                    ; $6150: $29
    inc d                                         ; $6151: $14
    dec b                                         ; $6152: $05
    ld l, e                                       ; $6153: $6b
    inc d                                         ; $6154: $14
    dec b                                         ; $6155: $05
    ret z                                         ; $6156: $c8

    inc d                                         ; $6157: $14
    dec b                                         ; $6158: $05
    add hl, de                                    ; $6159: $19
    dec d                                         ; $615a: $15
    dec b                                         ; $615b: $05
    add e                                         ; $615c: $83
    dec d                                         ; $615d: $15
    dec b                                         ; $615e: $05
    jp hl                                         ; $615f: $e9


    dec d                                         ; $6160: $15
    dec b                                         ; $6161: $05
    ld c, c                                       ; $6162: $49
    ld d, $05                                     ; $6163: $16 $05
    cp d                                          ; $6165: $ba
    ld d, $05                                     ; $6166: $16 $05
    ld a, [bc]                                    ; $6168: $0a
    rla                                           ; $6169: $17
    dec b                                         ; $616a: $05
    ld l, d                                       ; $616b: $6a
    rla                                           ; $616c: $17
    dec b                                         ; $616d: $05
    ret z                                         ; $616e: $c8

    rla                                           ; $616f: $17
    dec b                                         ; $6170: $05
    ccf                                           ; $6171: $3f
    jr @+$07                                      ; $6172: $18 $05

    add l                                         ; $6174: $85
    jr jr_053_617c                                ; $6175: $18 $05

    push hl                                       ; $6177: $e5
    jr jr_053_617f                                ; $6178: $18 $05

    scf                                           ; $617a: $37
    add hl, de                                    ; $617b: $19

jr_053_617c:
    dec b                                         ; $617c: $05
    sub b                                         ; $617d: $90
    add hl, de                                    ; $617e: $19

jr_053_617f:
    dec b                                         ; $617f: $05
    rst $28                                       ; $6180: $ef
    add hl, de                                    ; $6181: $19
    dec b                                         ; $6182: $05
    ld e, c                                       ; $6183: $59
    ld a, [de]                                    ; $6184: $1a
    dec b                                         ; $6185: $05
    or [hl]                                       ; $6186: $b6
    ld a, [de]                                    ; $6187: $1a
    dec b                                         ; $6188: $05
    ld d, $1b                                     ; $6189: $16 $1b
    dec b                                         ; $618b: $05
    add l                                         ; $618c: $85
    dec de                                        ; $618d: $1b
    dec b                                         ; $618e: $05
    jp Jump_000_051b                              ; $618f: $c3 $1b $05


    jp nc, Jump_000_051b                          ; $6192: $d2 $1b $05

    rst $10                                       ; $6195: $d7
    dec de                                        ; $6196: $1b
    dec b                                         ; $6197: $05
    call c, Call_000_051b                         ; $6198: $dc $1b $05
    push hl                                       ; $619b: $e5
    dec de                                        ; $619c: $1b
    dec b                                         ; $619d: $05
    ld a, [c]                                     ; $619e: $f2
    dec de                                        ; $619f: $1b
    dec b                                         ; $61a0: $05
    rst $38                                       ; $61a1: $ff
    dec de                                        ; $61a2: $1b
    dec b                                         ; $61a3: $05
    dec l                                         ; $61a4: $2d
    inc e                                         ; $61a5: $1c
    dec b                                         ; $61a6: $05
    ld l, c                                       ; $61a7: $69
    inc e                                         ; $61a8: $1c
    dec b                                         ; $61a9: $05
    cp h                                          ; $61aa: $bc
    inc e                                         ; $61ab: $1c
    dec b                                         ; $61ac: $05
    db $fc                                        ; $61ad: $fc
    inc e                                         ; $61ae: $1c
    dec b                                         ; $61af: $05
    ld b, a                                       ; $61b0: $47
    dec e                                         ; $61b1: $1d
    dec b                                         ; $61b2: $05
    ld [hl], b                                    ; $61b3: $70
    dec e                                         ; $61b4: $1d
    dec b                                         ; $61b5: $05
    jp nz, Jump_000_051d                          ; $61b6: $c2 $1d $05

    nop                                           ; $61b9: $00
    ld e, $05                                     ; $61ba: $1e $05
    ld a, [hl-]                                   ; $61bc: $3a

Call_053_61bd:
    ld e, $05                                     ; $61bd: $1e $05
    ld e, l                                       ; $61bf: $5d
    ld e, $05                                     ; $61c0: $1e $05
    ld a, a                                       ; $61c2: $7f
    ld e, $05                                     ; $61c3: $1e $05
    and d                                         ; $61c5: $a2
    ld e, $05                                     ; $61c6: $1e $05
    ret nc                                        ; $61c8: $d0

    ld e, $05                                     ; $61c9: $1e $05
    db $ed                                        ; $61cb: $ed
    ld e, $05                                     ; $61cc: $1e $05
    dec bc                                        ; $61ce: $0b
    rra                                           ; $61cf: $1f
    dec b                                         ; $61d0: $05
    jr nz, jr_053_61f2                            ; $61d1: $20 $1f

    dec b                                         ; $61d3: $05
    ld d, a                                       ; $61d4: $57
    rra                                           ; $61d5: $1f
    dec b                                         ; $61d6: $05
    ld l, h                                       ; $61d7: $6c
    rra                                           ; $61d8: $1f
    dec b                                         ; $61d9: $05

Call_053_61da:
    ld a, a                                       ; $61da: $7f
    rra                                           ; $61db: $1f
    dec b                                         ; $61dc: $05
    sub [hl]                                      ; $61dd: $96
    rra                                           ; $61de: $1f
    dec b                                         ; $61df: $05
    cp h                                          ; $61e0: $bc
    rra                                           ; $61e1: $1f
    dec b                                         ; $61e2: $05
    and $1f                                       ; $61e3: $e6 $1f
    dec b                                         ; $61e5: $05
    ld a, [bc]                                    ; $61e6: $0a
    jr nz, @+$07                                  ; $61e7: $20 $05

    rra                                           ; $61e9: $1f
    jr nz, @+$07                                  ; $61ea: $20 $05

    ld c, [hl]                                    ; $61ec: $4e
    jr nz, @+$07                                  ; $61ed: $20 $05

    ld l, h                                       ; $61ef: $6c
    jr nz, @+$07                                  ; $61f0: $20 $05

jr_053_61f2:
    and e                                         ; $61f2: $a3
    jr nz, @+$07                                  ; $61f3: $20 $05

    pop de                                        ; $61f5: $d1
    jr nz, @+$07                                  ; $61f6: $20 $05

    di                                            ; $61f8: $f3
    jr nz, @+$07                                  ; $61f9: $20 $05

    ld [$0521], sp                                ; $61fb: $08 $21 $05
    inc e                                         ; $61fe: $1c
    ld hl, $3005                                  ; $61ff: $21 $05 $30
    ld hl, $4a05                                  ; $6202: $21 $05 $4a
    ld hl, $a005                                  ; $6205: $21 $05 $a0
    ld hl, $cf05                                  ; $6208: $21 $05 $cf
    ld hl, $f405                                  ; $620b: $21 $05 $f4
    ld hl, $fe05                                  ; $620e: $21 $05 $fe
    ld hl, $0705                                  ; $6211: $21 $05 $07
    ld [hl+], a                                   ; $6214: $22
    dec b                                         ; $6215: $05
    inc c                                         ; $6216: $0c
    ld [hl+], a                                   ; $6217: $22
    dec b                                         ; $6218: $05
    ld de, $0522                                  ; $6219: $11 $22 $05
    jr jr_053_6240                                ; $621c: $18 $22

    dec b                                         ; $621e: $05
    ld e, $22                                     ; $621f: $1e $22
    dec b                                         ; $6221: $05
    jr z, jr_053_6246                             ; $6222: $28 $22

    dec b                                         ; $6224: $05
    inc [hl]                                      ; $6225: $34
    ld [hl+], a                                   ; $6226: $22
    dec b                                         ; $6227: $05
    ld b, h                                       ; $6228: $44
    ld [hl+], a                                   ; $6229: $22
    dec b                                         ; $622a: $05
    ld d, [hl]                                    ; $622b: $56
    ld [hl+], a                                   ; $622c: $22
    dec b                                         ; $622d: $05
    ld e, [hl]                                    ; $622e: $5e
    ld [hl+], a                                   ; $622f: $22
    dec b                                         ; $6230: $05
    ld l, e                                       ; $6231: $6b
    ld [hl+], a                                   ; $6232: $22
    dec b                                         ; $6233: $05
    ld [hl], l                                    ; $6234: $75
    ld [hl+], a                                   ; $6235: $22
    dec b                                         ; $6236: $05
    adc d                                         ; $6237: $8a
    ld [hl+], a                                   ; $6238: $22
    dec b                                         ; $6239: $05
    and h                                         ; $623a: $a4
    ld [hl+], a                                   ; $623b: $22
    dec b                                         ; $623c: $05
    ret z                                         ; $623d: $c8

    ld [hl+], a                                   ; $623e: $22
    dec b                                         ; $623f: $05

jr_053_6240:
    jp c, Jump_000_0522                           ; $6240: $da $22 $05

    di                                            ; $6243: $f3
    ld [hl+], a                                   ; $6244: $22
    dec b                                         ; $6245: $05

jr_053_6246:
    dec b                                         ; $6246: $05
    inc hl                                        ; $6247: $23
    dec b                                         ; $6248: $05
    dec de                                        ; $6249: $1b
    inc hl                                        ; $624a: $23
    dec b                                         ; $624b: $05
    ld c, b                                       ; $624c: $48
    inc hl                                        ; $624d: $23
    dec b                                         ; $624e: $05
    ld h, [hl]                                    ; $624f: $66
    inc hl                                        ; $6250: $23
    dec b                                         ; $6251: $05
    sbc d                                         ; $6252: $9a
    inc hl                                        ; $6253: $23
    dec b                                         ; $6254: $05
    xor b                                         ; $6255: $a8
    inc hl                                        ; $6256: $23
    dec b                                         ; $6257: $05
    call c, Call_000_0523                         ; $6258: $dc $23 $05
    ld [$0523], a                                 ; $625b: $ea $23 $05
    push af                                       ; $625e: $f5
    inc hl                                        ; $625f: $23
    dec b                                         ; $6260: $05
    add hl, bc                                    ; $6261: $09
    inc h                                         ; $6262: $24
    dec b                                         ; $6263: $05
    inc de                                        ; $6264: $13
    inc h                                         ; $6265: $24
    dec b                                         ; $6266: $05
    inc e                                         ; $6267: $1c
    inc h                                         ; $6268: $24
    dec b                                         ; $6269: $05
    ld d, c                                       ; $626a: $51
    inc h                                         ; $626b: $24
    dec b                                         ; $626c: $05
    add d                                         ; $626d: $82
    inc h                                         ; $626e: $24
    dec b                                         ; $626f: $05
    add sp, $24                                   ; $6270: $e8 $24
    dec b                                         ; $6272: $05
    rst $38                                       ; $6273: $ff
    inc h                                         ; $6274: $24
    dec b                                         ; $6275: $05
    inc c                                         ; $6276: $0c
    dec h                                         ; $6277: $25
    dec b                                         ; $6278: $05
    jr c, jr_053_62a0                             ; $6279: $38 $25

    dec b                                         ; $627b: $05
    ld b, h                                       ; $627c: $44
    dec h                                         ; $627d: $25
    dec b                                         ; $627e: $05
    ld d, b                                       ; $627f: $50
    dec h                                         ; $6280: $25
    dec b                                         ; $6281: $05
    ld d, h                                       ; $6282: $54
    dec h                                         ; $6283: $25
    dec b                                         ; $6284: $05
    ld h, l                                       ; $6285: $65
    dec h                                         ; $6286: $25
    dec b                                         ; $6287: $05
    ld [hl], b                                    ; $6288: $70
    dec h                                         ; $6289: $25
    dec b                                         ; $628a: $05
    ld a, h                                       ; $628b: $7c
    dec h                                         ; $628c: $25
    dec b                                         ; $628d: $05
    add d                                         ; $628e: $82
    dec h                                         ; $628f: $25
    dec b                                         ; $6290: $05
    adc d                                         ; $6291: $8a
    dec h                                         ; $6292: $25
    dec b                                         ; $6293: $05
    sub e                                         ; $6294: $93
    dec h                                         ; $6295: $25
    dec b                                         ; $6296: $05
    sbc d                                         ; $6297: $9a
    dec h                                         ; $6298: $25
    dec b                                         ; $6299: $05
    sbc e                                         ; $629a: $9b
    dec h                                         ; $629b: $25
    dec b                                         ; $629c: $05
    sbc h                                         ; $629d: $9c
    dec h                                         ; $629e: $25
    dec b                                         ; $629f: $05

jr_053_62a0:
    sbc l                                         ; $62a0: $9d
    dec h                                         ; $62a1: $25
    dec b                                         ; $62a2: $05
    sbc [hl]                                      ; $62a3: $9e
    dec h                                         ; $62a4: $25
    dec b                                         ; $62a5: $05
    sbc a                                         ; $62a6: $9f
    dec h                                         ; $62a7: $25
    dec b                                         ; $62a8: $05
    and b                                         ; $62a9: $a0
    dec h                                         ; $62aa: $25
    dec b                                         ; $62ab: $05
    and c                                         ; $62ac: $a1
    dec h                                         ; $62ad: $25
    dec b                                         ; $62ae: $05
    and d                                         ; $62af: $a2
    dec h                                         ; $62b0: $25
    dec b                                         ; $62b1: $05
    and e                                         ; $62b2: $a3
    dec h                                         ; $62b3: $25
    dec b                                         ; $62b4: $05
    and h                                         ; $62b5: $a4
    dec h                                         ; $62b6: $25
    dec b                                         ; $62b7: $05
    and l                                         ; $62b8: $a5
    dec h                                         ; $62b9: $25
    dec b                                         ; $62ba: $05
    and [hl]                                      ; $62bb: $a6
    dec h                                         ; $62bc: $25
    dec b                                         ; $62bd: $05
    and a                                         ; $62be: $a7
    dec h                                         ; $62bf: $25
    dec b                                         ; $62c0: $05
    xor b                                         ; $62c1: $a8
    dec h                                         ; $62c2: $25
    dec b                                         ; $62c3: $05
    xor c                                         ; $62c4: $a9
    dec h                                         ; $62c5: $25
    dec b                                         ; $62c6: $05
    xor d                                         ; $62c7: $aa
    dec h                                         ; $62c8: $25
    dec b                                         ; $62c9: $05
    xor e                                         ; $62ca: $ab
    dec h                                         ; $62cb: $25
    dec b                                         ; $62cc: $05
    xor h                                         ; $62cd: $ac
    dec h                                         ; $62ce: $25
    dec b                                         ; $62cf: $05
    xor l                                         ; $62d0: $ad
    dec h                                         ; $62d1: $25
    dec b                                         ; $62d2: $05
    xor [hl]                                      ; $62d3: $ae
    dec h                                         ; $62d4: $25
    dec b                                         ; $62d5: $05
    xor a                                         ; $62d6: $af
    dec h                                         ; $62d7: $25
    dec b                                         ; $62d8: $05
    or b                                          ; $62d9: $b0
    dec h                                         ; $62da: $25
    dec b                                         ; $62db: $05
    or c                                          ; $62dc: $b1
    dec h                                         ; $62dd: $25
    dec b                                         ; $62de: $05
    or d                                          ; $62df: $b2
    dec h                                         ; $62e0: $25
    dec b                                         ; $62e1: $05
    or e                                          ; $62e2: $b3
    dec h                                         ; $62e3: $25
    dec b                                         ; $62e4: $05
    or h                                          ; $62e5: $b4
    dec h                                         ; $62e6: $25
    dec b                                         ; $62e7: $05
    or l                                          ; $62e8: $b5
    dec h                                         ; $62e9: $25
    dec b                                         ; $62ea: $05
    or [hl]                                       ; $62eb: $b6
    dec h                                         ; $62ec: $25
    dec b                                         ; $62ed: $05
    or a                                          ; $62ee: $b7
    dec h                                         ; $62ef: $25
    dec b                                         ; $62f0: $05
    cp b                                          ; $62f1: $b8
    dec h                                         ; $62f2: $25
    dec b                                         ; $62f3: $05
    cp c                                          ; $62f4: $b9
    dec h                                         ; $62f5: $25
    dec b                                         ; $62f6: $05
    cp d                                          ; $62f7: $ba
    dec h                                         ; $62f8: $25
    dec b                                         ; $62f9: $05
    cp e                                          ; $62fa: $bb
    dec h                                         ; $62fb: $25
    dec b                                         ; $62fc: $05
    cp h                                          ; $62fd: $bc
    dec h                                         ; $62fe: $25
    dec b                                         ; $62ff: $05
    cp l                                          ; $6300: $bd
    dec h                                         ; $6301: $25
    dec b                                         ; $6302: $05
    cp [hl]                                       ; $6303: $be
    dec h                                         ; $6304: $25
    dec b                                         ; $6305: $05
    cp a                                          ; $6306: $bf
    dec h                                         ; $6307: $25
    dec b                                         ; $6308: $05
    ret nz                                        ; $6309: $c0

    dec h                                         ; $630a: $25
    dec b                                         ; $630b: $05
    pop bc                                        ; $630c: $c1
    dec h                                         ; $630d: $25
    dec b                                         ; $630e: $05
    jp nz, $0525                                  ; $630f: $c2 $25 $05

    jp $0525                                      ; $6312: $c3 $25 $05


    call nz, $0525                                ; $6315: $c4 $25 $05
    jp z, $0525                                   ; $6318: $ca $25 $05

    rst $10                                       ; $631b: $d7
    dec h                                         ; $631c: $25
    dec b                                         ; $631d: $05
    ld [c], a                                     ; $631e: $e2
    dec h                                         ; $631f: $25
    dec b                                         ; $6320: $05
    ldh a, [rNR51]                                ; $6321: $f0 $25
    dec b                                         ; $6323: $05
    ld hl, sp+$25                                 ; $6324: $f8 $25
    dec b                                         ; $6326: $05
    inc bc                                        ; $6327: $03
    ld h, $05                                     ; $6328: $26 $05
    ld de, $0526                                  ; $632a: $11 $26 $05
    ld [de], a                                    ; $632d: $12
    ld h, $05                                     ; $632e: $26 $05
    inc de                                        ; $6330: $13
    ld h, $05                                     ; $6331: $26 $05
    inc d                                         ; $6333: $14
    ld h, $05                                     ; $6334: $26 $05
    dec d                                         ; $6336: $15
    ld h, $05                                     ; $6337: $26 $05
    ld d, $26                                     ; $6339: $16 $26
    dec b                                         ; $633b: $05
    rla                                           ; $633c: $17
    ld h, $05                                     ; $633d: $26 $05
    jr jr_053_6367                                ; $633f: $18 $26

    dec b                                         ; $6341: $05
    add hl, de                                    ; $6342: $19
    ld h, $05                                     ; $6343: $26 $05
    ld a, [de]                                    ; $6345: $1a
    ld h, $05                                     ; $6346: $26 $05
    dec de                                        ; $6348: $1b
    ld h, $05                                     ; $6349: $26 $05
    inc e                                         ; $634b: $1c
    ld h, $05                                     ; $634c: $26 $05
    daa                                           ; $634e: $27
    ld h, $05                                     ; $634f: $26 $05
    jr z, jr_053_6379                             ; $6351: $28 $26

    dec b                                         ; $6353: $05
    add hl, hl                                    ; $6354: $29
    ld h, $05                                     ; $6355: $26 $05
    ld a, [hl+]                                   ; $6357: $2a
    ld h, $05                                     ; $6358: $26 $05
    dec hl                                        ; $635a: $2b
    ld h, $05                                     ; $635b: $26 $05
    inc l                                         ; $635d: $2c
    ld h, $05                                     ; $635e: $26 $05
    dec l                                         ; $6360: $2d
    ld h, $05                                     ; $6361: $26 $05
    ld l, $26                                     ; $6363: $2e $26
    dec b                                         ; $6365: $05
    cpl                                           ; $6366: $2f

jr_053_6367:
    ld h, $05                                     ; $6367: $26 $05
    jr nc, jr_053_6391                            ; $6369: $30 $26

    dec b                                         ; $636b: $05
    ld sp, $0526                                  ; $636c: $31 $26 $05
    ld [hl-], a                                   ; $636f: $32
    ld h, $05                                     ; $6370: $26 $05
    inc sp                                        ; $6372: $33
    ld h, $05                                     ; $6373: $26 $05
    inc [hl]                                      ; $6375: $34
    ld h, $05                                     ; $6376: $26 $05
    dec [hl]                                      ; $6378: $35

jr_053_6379:
    ld h, $05                                     ; $6379: $26 $05
    ld [hl], $26                                  ; $637b: $36 $26
    dec b                                         ; $637d: $05
    scf                                           ; $637e: $37
    ld h, $05                                     ; $637f: $26 $05
    jr c, jr_053_63a9                             ; $6381: $38 $26

    dec b                                         ; $6383: $05
    add hl, sp                                    ; $6384: $39
    ld h, $05                                     ; $6385: $26 $05
    ld a, [hl-]                                   ; $6387: $3a
    ld h, $05                                     ; $6388: $26 $05
    dec sp                                        ; $638a: $3b
    ld h, $05                                     ; $638b: $26 $05
    inc a                                         ; $638d: $3c
    ld h, $05                                     ; $638e: $26 $05
    ld b, [hl]                                    ; $6390: $46

jr_053_6391:
    ld h, $05                                     ; $6391: $26 $05
    ld b, a                                       ; $6393: $47
    ld h, $05                                     ; $6394: $26 $05
    ld d, [hl]                                    ; $6396: $56
    ld h, $05                                     ; $6397: $26 $05
    ld e, [hl]                                    ; $6399: $5e
    ld h, $05                                     ; $639a: $26 $05
    ld h, l                                       ; $639c: $65
    ld h, $05                                     ; $639d: $26 $05
    ld l, [hl]                                    ; $639f: $6e
    ld h, $05                                     ; $63a0: $26 $05
    ld l, a                                       ; $63a2: $6f
    ld h, $05                                     ; $63a3: $26 $05
    ld [hl], b                                    ; $63a5: $70
    ld h, $05                                     ; $63a6: $26 $05
    ld [hl], c                                    ; $63a8: $71

jr_053_63a9:
    ld h, $05                                     ; $63a9: $26 $05
    ld [hl], d                                    ; $63ab: $72
    ld h, $05                                     ; $63ac: $26 $05
    ld [hl], e                                    ; $63ae: $73
    ld h, $05                                     ; $63af: $26 $05
    ld [hl], h                                    ; $63b1: $74
    ld h, $05                                     ; $63b2: $26 $05
    ld [hl], l                                    ; $63b4: $75
    ld h, $05                                     ; $63b5: $26 $05
    halt                                          ; $63b7: $76
    ld h, $05                                     ; $63b8: $26 $05
    ld [hl], a                                    ; $63ba: $77
    ld h, $05                                     ; $63bb: $26 $05
    ld a, b                                       ; $63bd: $78
    ld h, $05                                     ; $63be: $26 $05
    ld a, c                                       ; $63c0: $79
    ld h, $05                                     ; $63c1: $26 $05
    ld a, d                                       ; $63c3: $7a
    ld h, $05                                     ; $63c4: $26 $05
    ld a, e                                       ; $63c6: $7b
    ld h, $05                                     ; $63c7: $26 $05
    ld a, h                                       ; $63c9: $7c
    ld h, $05                                     ; $63ca: $26 $05
    ld a, l                                       ; $63cc: $7d
    ld h, $05                                     ; $63cd: $26 $05
    ld a, [hl]                                    ; $63cf: $7e
    ld h, $05                                     ; $63d0: $26 $05
    ld a, a                                       ; $63d2: $7f
    ld h, $05                                     ; $63d3: $26 $05
    add b                                         ; $63d5: $80
    ld h, $05                                     ; $63d6: $26 $05
    add [hl]                                      ; $63d8: $86
    ld h, $05                                     ; $63d9: $26 $05
    add a                                         ; $63db: $87
    ld h, $05                                     ; $63dc: $26 $05
    adc b                                         ; $63de: $88
    ld h, $05                                     ; $63df: $26 $05
    adc c                                         ; $63e1: $89
    ld h, $05                                     ; $63e2: $26 $05
    adc d                                         ; $63e4: $8a
    ld h, $58                                     ; $63e5: $26 $58
    ld d, [hl]                                    ; $63e7: $56
    ld d, a                                       ; $63e8: $57
    add b                                         ; $63e9: $80
    add c                                         ; $63ea: $81
    sbc d                                         ; $63eb: $9a
    and h                                         ; $63ec: $a4
    and [hl]                                      ; $63ed: $a6
    and a                                         ; $63ee: $a7
    xor b                                         ; $63ef: $a8
    xor c                                         ; $63f0: $a9
    xor d                                         ; $63f1: $aa
    xor e                                         ; $63f2: $ab
    xor l                                         ; $63f3: $ad
    xor a                                         ; $63f4: $af
    or b                                          ; $63f5: $b0
    or c                                          ; $63f6: $b1
    or d                                          ; $63f7: $b2
    or e                                          ; $63f8: $b3
    or h                                          ; $63f9: $b4
    or l                                          ; $63fa: $b5
    or [hl]                                       ; $63fb: $b6
    or a                                          ; $63fc: $b7
    cp b                                          ; $63fd: $b8
    cp c                                          ; $63fe: $b9
    cp d                                          ; $63ff: $ba
    cp e                                          ; $6400: $bb
    ret nz                                        ; $6401: $c0

    pop bc                                        ; $6402: $c1
    jp nz, $c5c3                                  ; $6403: $c2 $c3 $c5

    add $c9                                       ; $6406: $c6 $c9
    set 1, h                                      ; $6408: $cb $cc
    call $cfce                                    ; $640a: $cd $ce $cf
    ret nc                                        ; $640d: $d0

    pop de                                        ; $640e: $d1
    jp nc, $d5d4                                  ; $640f: $d2 $d4 $d5

    sub $d7                                       ; $6412: $d6 $d7
    ret c                                         ; $6414: $d8

    reti                                          ; $6415: $d9


    jp c, $dfdb                                   ; $6416: $da $db $df

    ldh [$e3], a                                  ; $6419: $e0 $e3
    rst $30                                       ; $641b: $f7
    ld hl, sp-$06                                 ; $641c: $f8 $fa
    cp $00                                        ; $641e: $fe $00
    and c                                         ; $6420: $a1
    cp a                                          ; $6421: $bf
    rst $00                                       ; $6422: $c7
    jp z, $0201                                   ; $6423: $ca $01 $02

    inc bc                                        ; $6426: $03
    inc b                                         ; $6427: $04
    dec b                                         ; $6428: $05
    ld b, $07                                     ; $6429: $06 $07
    ld [$0a09], sp                                ; $642b: $08 $09 $0a
    dec bc                                        ; $642e: $0b
    inc c                                         ; $642f: $0c
    dec c                                         ; $6430: $0d
    ld c, $0f                                     ; $6431: $0e $0f
    db $10                                        ; $6433: $10
    ld de, $1312                                  ; $6434: $11 $12 $13
    inc d                                         ; $6437: $14
    dec d                                         ; $6438: $15
    ld d, $17                                     ; $6439: $16 $17
    jr jr_053_6456                                ; $643b: $18 $19

    ld a, [de]                                    ; $643d: $1a
    dec de                                        ; $643e: $1b
    db $d3                                        ; $643f: $d3
    inc e                                         ; $6440: $1c
    add h                                         ; $6441: $84
    call nz, Call_000_1dc8                        ; $6442: $c4 $c8 $1d
    ld e, $1f                                     ; $6445: $1e $1f
    jr nz, @+$23                                  ; $6447: $20 $21

    ld [hl+], a                                   ; $6449: $22
    inc hl                                        ; $644a: $23
    inc h                                         ; $644b: $24
    dec h                                         ; $644c: $25
    ld h, $27                                     ; $644d: $26 $27

Jump_053_644f:
    jr z, jr_053_647a                             ; $644f: $28 $29

    ld a, [hl+]                                   ; $6451: $2a
    dec hl                                        ; $6452: $2b
    ld sp, hl                                     ; $6453: $f9
    xor h                                         ; $6454: $ac
    inc l                                         ; $6455: $2c

jr_053_6456:
    ld [c], a                                     ; $6456: $e2
    ld [$2e2d], a                                 ; $6457: $ea $2d $2e
    cpl                                           ; $645a: $2f
    jr nc, jr_053_648e                            ; $645b: $30 $31

    ld [hl-], a                                   ; $645d: $32
    inc sp                                        ; $645e: $33
    inc [hl]                                      ; $645f: $34
    dec [hl]                                      ; $6460: $35
    add sp, -$10                                  ; $6461: $e8 $f0
    db $fc                                        ; $6463: $fc
    and $36                                       ; $6464: $e6 $36
    push af                                       ; $6466: $f5
    or $37                                        ; $6467: $f6 $37
    jr c, jr_053_64a4                             ; $6469: $38 $39

    ld a, [hl-]                                   ; $646b: $3a
    dec sp                                        ; $646c: $3b
    inc a                                         ; $646d: $3c
    xor [hl]                                      ; $646e: $ae
    rst $38                                       ; $646f: $ff
    db $ed                                        ; $6470: $ed
    dec a                                         ; $6471: $3d
    ld a, $e4                                     ; $6472: $3e $e4
    ccf                                           ; $6474: $3f
    rst $20                                       ; $6475: $e7
    db $eb                                        ; $6476: $eb
    ld b, b                                       ; $6477: $40
    rst $28                                       ; $6478: $ef
    db $ec                                        ; $6479: $ec

jr_053_647a:
    ld b, c                                       ; $647a: $41
    di                                            ; $647b: $f3
    ld b, d                                       ; $647c: $42
    pop hl                                        ; $647d: $e1
    jp hl                                         ; $647e: $e9


    ld b, e                                       ; $647f: $43
    ld b, h                                       ; $6480: $44
    ld b, l                                       ; $6481: $45
    db $f4                                        ; $6482: $f4
    xor $46                                       ; $6483: $ee $46
    ld b, a                                       ; $6485: $47
    ld c, b                                       ; $6486: $48
    ld a, [c]                                     ; $6487: $f2
    ld c, c                                       ; $6488: $49
    ld c, d                                       ; $6489: $4a
    ld c, e                                       ; $648a: $4b
    ld c, h                                       ; $648b: $4c
    ld c, l                                       ; $648c: $4d
    ld c, [hl]                                    ; $648d: $4e

jr_053_648e:
    push hl                                       ; $648e: $e5
    ld c, a                                       ; $648f: $4f
    ld d, b                                       ; $6490: $50
    and b                                         ; $6491: $a0
    ld d, c                                       ; $6492: $51
    ld d, d                                       ; $6493: $52
    ld d, e                                       ; $6494: $53
    ld d, h                                       ; $6495: $54
    ld d, l                                       ; $6496: $55
    sub a                                         ; $6497: $97
    ld e, l                                       ; $6498: $5d
    ld [hl], a                                    ; $6499: $77
    jp hl                                         ; $649a: $e9


    dec d                                         ; $649b: $15
    rst $10                                       ; $649c: $d7
    ld e, l                                       ; $649d: $5d
    ld a, d                                       ; $649e: $7a
    push bc                                       ; $649f: $c5
    ld h, l                                       ; $64a0: $65
    sub a                                         ; $64a1: $97
    ld e, l                                       ; $64a2: $5d
    adc [hl]                                      ; $64a3: $8e

jr_053_64a4:
    nop                                           ; $64a4: $00
    rst $30                                       ; $64a5: $f7
    db $e4                                        ; $64a6: $e4
    ld [bc], a                                    ; $64a7: $02
    db $e3                                        ; $64a8: $e3
    ldh a, [$9f]                                  ; $64a9: $f0 $9f
    db $ec                                        ; $64ab: $ec
    sub d                                         ; $64ac: $92
    db $dd                                        ; $64ad: $dd
    sub e                                         ; $64ae: $93
    db $eb                                        ; $64af: $eb
    ld b, h                                       ; $64b0: $44
    inc b                                         ; $64b1: $04
    ld [hl], a                                    ; $64b2: $77
    dec a                                         ; $64b3: $3d
    or $e1                                        ; $64b4: $f6 $e1
    ld bc, $5834                                  ; $64b6: $01 $34 $58
    ld e, $20                                     ; $64b9: $1e $20
    ld d, d                                       ; $64bb: $52
    dec a                                         ; $64bc: $3d
    or $0d                                        ; $64bd: $f6 $0d
    cp e                                          ; $64bf: $bb
    db $ec                                        ; $64c0: $ec
    cp d                                          ; $64c1: $ba
    ld c, e                                       ; $64c2: $4b
    xor a                                         ; $64c3: $af
    cp b                                          ; $64c4: $b8
    and $d2                                       ; $64c5: $e6 $d2
    dec hl                                        ; $64c7: $2b
    ld l, $bb                                     ; $64c8: $2e $bb
    db $ec                                        ; $64ca: $ec
    ld [hl], d                                    ; $64cb: $72
    inc b                                         ; $64cc: $04
    or a                                          ; $64cd: $b7
    rst $20                                       ; $64ce: $e7
    jp nz, $086e                                  ; $64cf: $c2 $6e $08

    ld [hl], a                                    ; $64d2: $77
    and $62                                       ; $64d3: $e6 $62
    inc b                                         ; $64d5: $04
    or a                                          ; $64d6: $b7
    pop de                                        ; $64d7: $d1
    or h                                          ; $64d8: $b4
    inc hl                                        ; $64d9: $23
    inc hl                                        ; $64da: $23
    or a                                          ; $64db: $b7
    scf                                           ; $64dc: $37
    ld c, l                                       ; $64dd: $4d
    ld h, h                                       ; $64de: $64
    inc b                                         ; $64df: $04
    add hl, hl                                    ; $64e0: $29
    rst $30                                       ; $64e1: $f7
    db $dd                                        ; $64e2: $dd
    or b                                          ; $64e3: $b0
    sbc e                                         ; $64e4: $9b
    ld l, $bf                                     ; $64e5: $2e $bf
    db $f4                                        ; $64e7: $f4
    and [hl]                                      ; $64e8: $a6
    dec hl                                        ; $64e9: $2b
    add [hl]                                      ; $64ea: $86
    nop                                           ; $64eb: $00
    ld [hl], a                                    ; $64ec: $77
    rst $18                                       ; $64ed: $df
    ld [hl], a                                    ; $64ee: $77
    jp $ba6e                                      ; $64ef: $c3 $6e $ba


    db $fc                                        ; $64f2: $fc
    jp nc, $ae9b                                  ; $64f3: $d2 $9b $ae

    jr jr_053_64fa                                ; $64f6: $18 $02

    or a                                          ; $64f8: $b7
    or a                                          ; $64f9: $b7

jr_053_64fa:
    ld c, a                                       ; $64fa: $4f
    ld e, d                                       ; $64fb: $5a
    ld d, h                                       ; $64fc: $54
    ld e, $20                                     ; $64fd: $1e $20
    ret                                           ; $64ff: $c9


    ld [$b7b7], sp                                ; $6500: $08 $b7 $b7
    ld c, a                                       ; $6503: $4f
    ld e, d                                       ; $6504: $5a
    ld d, h                                       ; $6505: $54
    ld e, [hl]                                    ; $6506: $5e
    or a                                          ; $6507: $b7
    sbc [hl]                                      ; $6508: $9e
    ld de, $b7b7                                  ; $6509: $11 $b7 $b7
    ld c, a                                       ; $650c: $4f
    ld e, d                                       ; $650d: $5a
    ld d, h                                       ; $650e: $54
    ld e, $c0                                     ; $650f: $1e $c0
    ld a, [$010f]                                 ; $6511: $fa $0f $01
    add b                                         ; $6514: $80
    ld e, l                                       ; $6515: $5d
    ld hl, sp-$49                                 ; $6516: $f8 $b7
    or $b3                                        ; $6518: $f6 $b3
    ld a, [hl]                                    ; $651a: $7e
    ld b, $48                                     ; $651b: $06 $48
    ld [hl-], a                                   ; $651d: $32
    ld [bc], a                                    ; $651e: $02
    add b                                         ; $651f: $80
    ld e, l                                       ; $6520: $5d
    ld hl, sp-$49                                 ; $6521: $f8 $b7
    or $b3                                        ; $6523: $f6 $b3
    ld a, [hl]                                    ; $6525: $7e
    sub $ad                                       ; $6526: $d6 $ad
    ld h, a                                       ; $6528: $67
    inc b                                         ; $6529: $04
    add b                                         ; $652a: $80
    ld e, l                                       ; $652b: $5d
    ld hl, sp-$49                                 ; $652c: $f8 $b7
    or $b3                                        ; $652e: $f6 $b3
    ld a, [hl]                                    ; $6530: $7e
    ld b, $b0                                     ; $6531: $06 $b0
    cp $43                                        ; $6533: $fe $43
    add b                                         ; $6535: $80
    ld e, l                                       ; $6536: $5d
    ld hl, sp-$49                                 ; $6537: $f8 $b7
    or $b3                                        ; $6539: $f6 $b3
    ld a, [hl]                                    ; $653b: $7e
    ld b, $48                                     ; $653c: $06 $48
    ld [hl-], a                                   ; $653e: $32
    ld [bc], a                                    ; $653f: $02
    add b                                         ; $6540: $80
    ld e, l                                       ; $6541: $5d
    ld hl, sp-$49                                 ; $6542: $f8 $b7
    or $b3                                        ; $6544: $f6 $b3
    ld a, [hl]                                    ; $6546: $7e
    sub $ad                                       ; $6547: $d6 $ad
    ld h, a                                       ; $6549: $67
    inc b                                         ; $654a: $04
    add b                                         ; $654b: $80
    ld e, l                                       ; $654c: $5d
    ld hl, sp-$49                                 ; $654d: $f8 $b7
    or $b3                                        ; $654f: $f6 $b3
    ld a, [hl]                                    ; $6551: $7e
    ld b, $b0                                     ; $6552: $06 $b0
    cp $43                                        ; $6554: $fe $43

Jump_053_6556:
    ld [hl], a                                    ; $6556: $77
    ld [$8b68], sp                                ; $6557: $08 $68 $8b
    ld a, [$8079]                                 ; $655a: $fa $79 $80
    inc h                                         ; $655d: $24
    inc hl                                        ; $655e: $23
    ld [hl], a                                    ; $655f: $77
    ld [$8b68], sp                                ; $6560: $08 $68 $8b
    ld a, [$dd79]                                 ; $6563: $fa $79 $dd
    ld a, d                                       ; $6566: $7a
    ld b, [hl]                                    ; $6567: $46
    ld [hl], a                                    ; $6568: $77
    ld [$8b68], sp                                ; $6569: $08 $68 $8b
    ld a, [$0079]                                 ; $656c: $fa $79 $00
    db $eb                                        ; $656f: $eb
    ccf                                           ; $6570: $3f
    inc b                                         ; $6571: $04
    ld b, b                                       ; $6572: $40
    cp [hl]                                       ; $6573: $be
    add h                                         ; $6574: $84
    ld d, a                                       ; $6575: $57
    ld [$78eb], a                                 ; $6576: $ea $eb $78
    ld [hl], a                                    ; $6579: $77
    add hl, sp                                    ; $657a: $39
    ld sp, hl                                     ; $657b: $f9
    ld sp, hl                                     ; $657c: $f9
    inc a                                         ; $657d: $3c
    inc b                                         ; $657e: $04
    ld [hl], a                                    ; $657f: $77
    ld h, l                                       ; $6580: $65
    ret nc                                        ; $6581: $d0

    add hl, de                                    ; $6582: $19
    ld h, a                                       ; $6583: $67
    adc $35                                       ; $6584: $ce $35
    jr nz, jr_053_65c7                            ; $6586: $20 $3f

    sbc l                                         ; $6588: $9d
    ld l, [hl]                                    ; $6589: $6e
    ld a, [de]                                    ; $658a: $1a
    inc b                                         ; $658b: $04
    ld [hl], a                                    ; $658c: $77
    ld h, l                                       ; $658d: $65
    ret nc                                        ; $658e: $d0

    add hl, de                                    ; $658f: $19
    ld h, a                                       ; $6590: $67
    adc $b5                                       ; $6591: $ce $b5
    cp e                                          ; $6593: $bb
    ld [hl], e                                    ; $6594: $73
    pop af                                        ; $6595: $f1
    ccf                                           ; $6596: $3f
    ld [$99f7], sp                                ; $6597: $08 $f7 $99
    db $eb                                        ; $659a: $eb
    db $d3                                        ; $659b: $d3
    rra                                           ; $659c: $1f
    or h                                          ; $659d: $b4
    ld a, [hl]                                    ; $659e: $7e
    ld b, $30                                     ; $659f: $06 $30
    di                                            ; $65a1: $f3
    ld l, e                                       ; $65a2: $6b
    ld a, [$7741]                                 ; $65a3: $fa $41 $77
    db $eb                                        ; $65a6: $eb
    and b                                         ; $65a7: $a0
    push af                                       ; $65a8: $f5
    or e                                          ; $65a9: $b3
    sbc e                                         ; $65aa: $9b
    push de                                       ; $65ab: $d5
    xor $79                                       ; $65ac: $ee $79
    ld a, [$c3f1]                                 ; $65ae: $fa $f1 $c3
    ld [$fadd], sp                                ; $65b1: $08 $dd $fa
    adc b                                         ; $65b4: $88
    ld d, a                                       ; $65b5: $57
    ei                                            ; $65b6: $fb
    ld sp, $ad7a                                  ; $65b7: $31 $7a $ad
    xor a                                         ; $65ba: $af
    ld [c], a                                     ; $65bb: $e2
    ld c, c                                       ; $65bc: $49
    or [hl]                                       ; $65bd: $b6
    adc h                                         ; $65be: $8c
    ld c, e                                       ; $65bf: $4b
    db $d3                                        ; $65c0: $d3
    sbc d                                         ; $65c1: $9a
    jp hl                                         ; $65c2: $e9


    ld e, h                                       ; $65c3: $5c
    cp b                                          ; $65c4: $b8
    cp c                                          ; $65c5: $b9
    ld h, [hl]                                    ; $65c6: $66

jr_053_65c7:
    ld de, $352a                                  ; $65c7: $11 $2a $35
    ld [bc], a                                    ; $65ca: $02
    db $dd                                        ; $65cb: $dd
    ld a, [$5788]                                 ; $65cc: $fa $88 $57
    ei                                            ; $65cf: $fb
    ld sp, $927a                                  ; $65d0: $31 $7a $92
    db $e3                                        ; $65d3: $e3
    add sp, $5c                                   ; $65d4: $e8 $5c
    ret c                                         ; $65d6: $d8

    adc l                                         ; $65d7: $8d
    call z, $3096                                 ; $65d8: $cc $96 $30
    cp $6d                                        ; $65db: $fe $6d
    call nc, $a5d2                                ; $65dd: $d4 $d2 $a5
    ld b, a                                       ; $65e0: $47
    ld c, a                                       ; $65e1: $4f
    ld e, c                                       ; $65e2: $59
    call nz, Call_053_73a3                        ; $65e3: $c4 $a3 $73
    ld h, c                                       ; $65e6: $61
    scf                                           ; $65e7: $37
    ld c, e                                       ; $65e8: $4b
    ld l, d                                       ; $65e9: $6a
    inc b                                         ; $65ea: $04
    db $dd                                        ; $65eb: $dd
    ld a, [$93e2]                                 ; $65ec: $fa $e2 $93
    db $fd                                        ; $65ef: $fd
    jr jr_053_662f                                ; $65f0: $18 $3d

    ld e, l                                       ; $65f2: $5d
    db $e4                                        ; $65f3: $e4
    or h                                          ; $65f4: $b4
    ld c, a                                       ; $65f5: $4f
    sub d                                         ; $65f6: $92
    add [hl]                                      ; $65f7: $86
    ld [$fb80], sp                                ; $65f8: $08 $80 $fb
    ld l, d                                       ; $65fb: $6a
    ld sp, $6c63                                  ; $65fc: $31 $63 $6c
    add hl, de                                    ; $65ff: $19
    rst $38                                       ; $6600: $ff
    or [hl]                                       ; $6601: $b6
    xor $ff                                       ; $6602: $ee $ff
    ld b, d                                       ; $6604: $42
    sub [hl]                                      ; $6605: $96
    rst $10                                       ; $6606: $d7
    ld a, [de]                                    ; $6607: $1a
    or [hl]                                       ; $6608: $b6
    ret z                                         ; $6609: $c8

    sub a                                         ; $660a: $97
    ld h, b                                       ; $660b: $60
    pop de                                        ; $660c: $d1
    xor [hl]                                      ; $660d: $ae
    rst $20                                       ; $660e: $e7
    ld d, l                                       ; $660f: $55
    ld l, c                                       ; $6610: $69
    jr nz, jr_053_6615                            ; $6611: $20 $02

    ld [hl], a                                    ; $6613: $77
    cp a                                          ; $6614: $bf

jr_053_6615:
    ld l, b                                       ; $6615: $68
    add hl, de                                    ; $6616: $19
    rst $38                                       ; $6617: $ff
    or [hl]                                       ; $6618: $b6
    jp Jump_000_2356                              ; $6619: $c3 $56 $23


    ld e, [hl]                                    ; $661c: $5e
    xor l                                         ; $661d: $ad
    db $e3                                        ; $661e: $e3
    or b                                          ; $661f: $b0
    rst $10                                       ; $6620: $d7
    ld d, h                                       ; $6621: $54
    db $fd                                        ; $6622: $fd
    dec e                                         ; $6623: $1d
    inc sp                                        ; $6624: $33
    and a                                         ; $6625: $a7
    ld b, [hl]                                    ; $6626: $46
    db $dd                                        ; $6627: $dd
    and $b9                                       ; $6628: $e6 $b9
    ld b, [hl]                                    ; $662a: $46
    rst $20                                       ; $662b: $e7
    sbc d                                         ; $662c: $9a
    ld [hl-], a                                   ; $662d: $32
    rst $28                                       ; $662e: $ef

jr_053_662f:
    pop af                                        ; $662f: $f1
    sub h                                         ; $6630: $94
    ld a, c                                       ; $6631: $79
    db $f4                                        ; $6632: $f4
    sub a                                         ; $6633: $97
    or e                                          ; $6634: $b3
    rra                                           ; $6635: $1f
    and e                                         ; $6636: $a3
    add a                                         ; $6637: $87
    ld e, a                                       ; $6638: $5f
    ld a, h                                       ; $6639: $7c
    ld [bc], a                                    ; $663a: $02
    rst $10                                       ; $663b: $d7
    ld l, l                                       ; $663c: $6d
    and $37                                       ; $663d: $e6 $37
    rst $10                                       ; $663f: $d7
    xor $6d                                       ; $6640: $ee $6d
    ccf                                           ; $6642: $3f
    ld a, c                                       ; $6643: $79
    and d                                         ; $6644: $a2
    ld e, h                                       ; $6645: $5c
    ld h, a                                       ; $6646: $67
    ld e, h                                       ; $6647: $5c
    sbc d                                         ; $6648: $9a
    sub $7c                                       ; $6649: $d6 $7c
    ld hl, sp+$25                                 ; $664b: $f8 $25
    ld l, c                                       ; $664d: $69
    sbc l                                         ; $664e: $9d
    ld a, a                                       ; $664f: $7f
    adc h                                         ; $6650: $8c
    jp c, $8c9d                                   ; $6651: $da $9d $8c

    and a                                         ; $6654: $a7
    db $f4                                        ; $6655: $f4
    dec e                                         ; $6656: $1d
    rst $10                                       ; $6657: $d7
    ld c, b                                       ; $6658: $48
    ld l, d                                       ; $6659: $6a
    daa                                           ; $665a: $27
    cp $c6                                        ; $665b: $fe $c6
    ld h, [hl]                                    ; $665d: $66
    cp b                                          ; $665e: $b8
    ld a, $0e                                     ; $665f: $3e $0e
    dec bc                                        ; $6661: $0b
    ld d, h                                       ; $6662: $54
    db $ed                                        ; $6663: $ed
    adc e                                         ; $6664: $8b
    inc l                                         ; $6665: $2c
    add a                                         ; $6666: $87
    sbc l                                         ; $6667: $9d
    ld hl, sp+$68                                 ; $6668: $f8 $68
    jp c, $cb35                                   ; $666a: $da $35 $cb

    ld c, $bf                                     ; $666d: $0e $bf
    ld h, h                                       ; $666f: $64
    db $fc                                        ; $6670: $fc
    db $db                                        ; $6671: $db
    sub h                                         ; $6672: $94
    inc bc                                        ; $6673: $03
    ld e, h                                       ; $6674: $5c
    or a                                          ; $6675: $b7
    cp [hl]                                       ; $6676: $be
    ld hl, sp+$64                                 ; $6677: $f8 $64
    ld hl, $de2b                                  ; $6679: $21 $2b $de
    pop af                                        ; $667c: $f1
    sub h                                         ; $667d: $94
    jp $5e32                                      ; $667e: $c3 $32 $5e


    ei                                            ; $6681: $fb
    call z, $bba3                                 ; $6682: $cc $a3 $bb
    ld l, d                                       ; $6685: $6a
    ld c, d                                       ; $6686: $4a
    ld e, a                                       ; $6687: $5f
    ld c, $87                                     ; $6688: $0e $87
    ld e, d                                       ; $668a: $5a
    call z, $bb18                                 ; $668b: $cc $18 $bb
    or $45                                        ; $668e: $f6 $45
    jr nz, @+$04                                  ; $6690: $20 $02

    dec a                                         ; $6692: $3d
    cp $e7                                        ; $6693: $fe $e7
    adc c                                         ; $6695: $89
    halt                                          ; $6696: $76
    dec a                                         ; $6697: $3d
    xor a                                         ; $6698: $af
    ld c, d                                       ; $6699: $4a
    inc bc                                        ; $669a: $03
    rst $10                                       ; $669b: $d7
    ld l, l                                       ; $669c: $6d
    and $37                                       ; $669d: $e6 $37
    rst $10                                       ; $669f: $d7
    ld [$ed57], sp                                ; $66a0: $08 $57 $ed
    sbc $f6                                       ; $66a3: $de $f6
    sub e                                         ; $66a5: $93
    daa                                           ; $66a6: $27
    jp z, $d705                                   ; $66a7: $ca $05 $d7

    di                                            ; $66aa: $f3
    ld h, h                                       ; $66ab: $64
    db $f4                                        ; $66ac: $f4
    rla                                           ; $66ad: $17
    ld [hl], c                                    ; $66ae: $71
    ld c, l                                       ; $66af: $4d
    ld [hl], d                                    ; $66b0: $72
    sbc h                                         ; $66b1: $9c
    ld h, l                                       ; $66b2: $65
    ld e, h                                       ; $66b3: $5c
    sbc d                                         ; $66b4: $9a
    sub $7c                                       ; $66b5: $d6 $7c
    ld hl, sp+$25                                 ; $66b7: $f8 $25
    db $e3                                        ; $66b9: $e3
    rst $18                                       ; $66ba: $df
    and [hl]                                      ; $66bb: $a6
    inc e                                         ; $66bc: $1c
    ldh [$6e], a                                  ; $66bd: $e0 $6e
    ld h, e                                       ; $66bf: $63
    halt                                          ; $66c0: $76
    sub c                                         ; $66c1: $91
    call nc, Call_000_2fe8                        ; $66c2: $d4 $e8 $2f
    ld [c], a                                     ; $66c5: $e2
    sbc d                                         ; $66c6: $9a
    jp nc, $1d87                                  ; $66c7: $d2 $87 $1d

    or $c7                                        ; $66ca: $f6 $c7
    sub l                                         ; $66cc: $95
    ld e, e                                       ; $66cd: $5b
    jp $e44f                                      ; $66ce: $c3 $4f $e4


    and h                                         ; $66d1: $a4
    sbc a                                         ; $66d2: $9f
    ld b, h                                       ; $66d3: $44
    bit 5, [hl]                                   ; $66d4: $cb $6e
    ld l, a                                       ; $66d6: $6f
    cp a                                          ; $66d7: $bf
    ld b, d                                       ; $66d8: $42
    ld h, [hl]                                    ; $66d9: $66
    add [hl]                                      ; $66da: $86
    ld [$e6dd], sp                                ; $66db: $08 $dd $e6
    dec e                                         ; $66de: $1d
    and [hl]                                      ; $66df: $a6
    ld l, d                                       ; $66e0: $6a
    sub d                                         ; $66e1: $92
    dec a                                         ; $66e2: $3d
    sub d                                         ; $66e3: $92
    sbc d                                         ; $66e4: $9a
    ld [$07aa], a                                 ; $66e5: $ea $aa $07
    ld hl, $a044                                  ; $66e8: $21 $44 $a0
    ld l, [hl]                                    ; $66eb: $6e
    cpl                                           ; $66ec: $2f
    ld h, e                                       ; $66ed: $63
    ld l, h                                       ; $66ee: $6c
    ld h, l                                       ; $66ef: $65
    db $ed                                        ; $66f0: $ed
    ld c, $ff                                     ; $66f1: $0e $ff
    or b                                          ; $66f3: $b0
    cpl                                           ; $66f4: $2f
    and d                                         ; $66f5: $a2
    dec e                                         ; $66f6: $1d
    or [hl]                                       ; $66f7: $b6
    adc h                                         ; $66f8: $8c
    ret nc                                        ; $66f9: $d0

    ld c, a                                       ; $66fa: $4f
    ld b, h                                       ; $66fb: $44
    ld b, h                                       ; $66fc: $44
    ld a, [c]                                     ; $66fd: $f2
    halt                                          ; $66fe: $76
    ld [hl-], a                                   ; $66ff: $32
    ld e, [hl]                                    ; $6700: $5e
    ld h, d                                       ; $6701: $62
    ld h, c                                       ; $6702: $61
    rst $10                                       ; $6703: $d7
    ld l, b                                       ; $6704: $68
    db $fd                                        ; $6705: $fd
    call nz, $b0e5                                ; $6706: $c4 $e5 $b0
    inc hl                                        ; $6709: $23
    ld a, [$1089]                                 ; $670a: $fa $89 $10
    ld bc, $96dd                                  ; $670d: $01 $dd $96
    add l                                         ; $6710: $85
    ld a, [$7a27]                                 ; $6711: $fa $27 $7a
    daa                                           ; $6714: $27
    db $e3                                        ; $6715: $e3
    dec h                                         ; $6716: $25
    cp a                                          ; $6717: $bf
    adc l                                         ; $6718: $8d
    sbc a                                         ; $6719: $9f
    halt                                          ; $671a: $76
    ret c                                         ; $671b: $d8

    ld [hl-], a                                   ; $671c: $32
    ld a, a                                       ; $671d: $7f
    inc b                                         ; $671e: $04
    ld a, [de]                                    ; $671f: $1a
    or [hl]                                       ; $6720: $b6
    halt                                          ; $6721: $76
    add c                                         ; $6722: $81
    xor d                                         ; $6723: $aa
    ld e, c                                       ; $6724: $59
    ld b, [hl]                                    ; $6725: $46
    cp a                                          ; $6726: $bf
    ld l, d                                       ; $6727: $6a
    ccf                                           ; $6728: $3f
    inc l                                         ; $6729: $2c
    pop af                                        ; $672a: $f1
    add a                                         ; $672b: $87
    db $fd                                        ; $672c: $fd
    inc hl                                        ; $672d: $23
    db $dd                                        ; $672e: $dd
    ld a, [$3530]                                 ; $672f: $fa $30 $35
    ld [c], a                                     ; $6732: $e2
    adc l                                         ; $6733: $8d
    ld c, b                                       ; $6734: $48
    call c, Call_053_4b92                         ; $6735: $dc $92 $4b
    and h                                         ; $6738: $a4
    dec hl                                        ; $6739: $2b
    ld b, [hl]                                    ; $673a: $46
    scf                                           ; $673b: $37
    set 5, b                                      ; $673c: $cb $e8
    ld e, h                                       ; $673e: $5c
    and e                                         ; $673f: $a3
    ld d, $33                                     ; $6740: $16 $33
    add $de                                       ; $6742: $c6 $de
    rla                                           ; $6744: $17
    add hl, de                                    ; $6745: $19
    rst $38                                       ; $6746: $ff
    ld [hl], $22                                  ; $6747: $36 $22
    ld [hl], c                                    ; $6749: $71
    ld c, e                                       ; $674a: $4b
    inc l                                         ; $674b: $2c
    add [hl]                                      ; $674c: $86
    ld [$ae3d], sp                                ; $674d: $08 $3d $ae
    jp c, $997d                                   ; $6750: $da $7d $99

    reti                                          ; $6753: $d9


    push de                                       ; $6754: $d5
    ld l, e                                       ; $6755: $6b
    nop                                           ; $6756: $00
    ld a, h                                       ; $6757: $7c
    ret c                                         ; $6758: $d8

    or d                                          ; $6759: $b2
    sub a                                         ; $675a: $97
    db $ec                                        ; $675b: $ec
    cp b                                          ; $675c: $b8
    sbc l                                         ; $675d: $9d
    ld hl, sp+$48                                 ; $675e: $f8 $48
    di                                            ; $6760: $f3
    ld [de], a                                    ; $6761: $12
    dec bc                                        ; $6762: $0b
    cp e                                          ; $6763: $bb
    sub [hl]                                      ; $6764: $96
    adc $c5                                       ; $6765: $ce $c5
    xor [hl]                                      ; $6767: $ae
    jp $a3fb                                      ; $6768: $c3 $fb $a3


    di                                            ; $676b: $f3
    db $eb                                        ; $676c: $eb
    ret c                                         ; $676d: $d8

    ld [bc], a                                    ; $676e: $02
    ld de, $c93d                                  ; $676f: $11 $3d $c9
    ccf                                           ; $6772: $3f
    ld d, e                                       ; $6773: $53
    and $b9                                       ; $6774: $e6 $b9
    ld b, [hl]                                    ; $6776: $46
    cp b                                          ; $6777: $b8
    ld l, d                                       ; $6778: $6a
    cp l                                          ; $6779: $bd
    dec [hl]                                      ; $677a: $35
    and c                                         ; $677b: $a1
    cp [hl]                                       ; $677c: $be
    sbc d                                         ; $677d: $9a
    jp nc, Jump_053_5c77                          ; $677e: $d2 $77 $5c

    inc sp                                        ; $6781: $33
    or e                                          ; $6782: $b3
    ld c, e                                       ; $6783: $4b
    dec sp                                        ; $6784: $3b
    rst $10                                       ; $6785: $d7
    adc b                                         ; $6786: $88
    daa                                           ; $6787: $27
    ld c, e                                       ; $6788: $4b
    rst $20                                       ; $6789: $e7
    ld h, d                                       ; $678a: $62
    cpl                                           ; $678b: $2f
    or c                                          ; $678c: $b1
    ld a, [de]                                    ; $678d: $1a

Call_053_678e:
    sub c                                         ; $678e: $91
    cp b                                          ; $678f: $b8
    dec h                                         ; $6790: $25
    ld d, $43                                     ; $6791: $16 $43
    inc b                                         ; $6793: $04
    dec a                                         ; $6794: $3d
    xor [hl]                                      ; $6795: $ae
    ld e, d                                       ; $6796: $5a
    ld l, a                                       ; $6797: $6f
    ld c, l                                       ; $6798: $4d
    xor b                                         ; $6799: $a8
    xor a                                         ; $679a: $af
    sub [hl]                                      ; $679b: $96
    ld e, b                                       ; $679c: $58
    ret c                                         ; $679d: $d8

    or l                                          ; $679e: $b5
    ccf                                           ; $679f: $3f
    ld h, l                                       ; $67a0: $65
    reti                                          ; $67a1: $d9


    inc de                                        ; $67a2: $13
    ld d, l                                       ; $67a3: $55
    sbc [hl]                                      ; $67a4: $9e
    ld b, l                                       ; $67a5: $45
    ld e, c                                       ; $67a6: $59
    jr nz, jr_053_67ab                            ; $67a7: $20 $02

    dec a                                         ; $67a9: $3d
    xor [hl]                                      ; $67aa: $ae

jr_053_67ab:
    ld e, d                                       ; $67ab: $5a
    ld l, a                                       ; $67ac: $6f
    ld c, l                                       ; $67ad: $4d
    xor b                                         ; $67ae: $a8
    xor a                                         ; $67af: $af
    sub [hl]                                      ; $67b0: $96
    jp Jump_053_5708                              ; $67b1: $c3 $08 $57


    db $ed                                        ; $67b4: $ed
    adc $96                                       ; $67b5: $ce $96
    ld sp, hl                                     ; $67b7: $f9
    push bc                                       ; $67b8: $c5
    ld de, $96af                                  ; $67b9: $11 $af $96
    ld e, b                                       ; $67bc: $58
    ret c                                         ; $67bd: $d8

    inc a                                         ; $67be: $3c
    sub d                                         ; $67bf: $92
    sbc d                                         ; $67c0: $9a
    ld [hl], d                                    ; $67c1: $72
    add b                                         ; $67c2: $80
    ld [$fe3d], sp                                ; $67c3: $08 $3d $fe
    rst $20                                       ; $67c6: $e7
    adc c                                         ; $67c7: $89
    halt                                          ; $67c8: $76
    dec a                                         ; $67c9: $3d
    xor a                                         ; $67ca: $af
    ld c, d                                       ; $67cb: $4a
    sub e                                         ; $67cc: $93
    ld a, [de]                                    ; $67cd: $1a
    ld bc, $b3bd                                  ; $67ce: $01 $bd $b3
    ld a, [de]                                    ; $67d1: $1a
    adc $15                                       ; $67d2: $ce $15
    inc l                                         ; $67d4: $2c
    jp c, $ae11                                   ; $67d5: $da $11 $ae

    jp c, $997d                                   ; $67d8: $da $7d $99

    reti                                          ; $67db: $d9


    dec b                                         ; $67dc: $05
    ld [hl], a                                    ; $67dd: $77
    rst $30                                       ; $67de: $f7
    ld h, a                                       ; $67df: $67
    sbc [hl]                                      ; $67e0: $9e
    cp h                                          ; $67e1: $bc
    ld b, h                                       ; $67e2: $44
    and $da                                       ; $67e3: $e6 $da
    sbc l                                         ; $67e5: $9d
    dec l                                         ; $67e6: $2d
    di                                            ; $67e7: $f3
    adc e                                         ; $67e8: $8b
    db $10                                        ; $67e9: $10
    ld bc, $ff80                                  ; $67ea: $01 $80 $ff
    ld c, [hl]                                    ; $67ed: $4e
    call nc, $5ffb                                ; $67ee: $d4 $fb $5f
    add sp, -$48                                  ; $67f1: $e8 $b8
    call nz, Call_000_198b                        ; $67f3: $c4 $8b $19
    db $e3                                        ; $67f6: $e3
    ccf                                           ; $67f7: $3f
    ld [hl], c                                    ; $67f8: $71
    db $ed                                        ; $67f9: $ed
    adc a                                         ; $67fa: $8f
    ld c, b                                       ; $67fb: $48
    call c, $f312                                 ; $67fc: $dc $12 $f3
    ld hl, sp-$49                                 ; $67ff: $f8 $b7
    push af                                       ; $6801: $f5
    cp h                                          ; $6802: $bc
    ld a, [hl+]                                   ; $6803: $2a
    dec c                                         ; $6804: $0d
    ld b, h                                       ; $6805: $44
    dec a                                         ; $6806: $3d
    xor a                                         ; $6807: $af
    and [hl]                                      ; $6808: $a6
    db $f4                                        ; $6809: $f4
    ld c, c                                       ; $680a: $49
    ld d, a                                       ; $680b: $57
    adc h                                         ; $680c: $8c
    ld l, [hl]                                    ; $680d: $6e
    sub [hl]                                      ; $680e: $96
    ld de, $4e4f                                  ; $680f: $11 $4f $4e
    cpl                                           ; $6812: $2f
    inc b                                         ; $6813: $04
    dec a                                         ; $6814: $3d
    xor [hl]                                      ; $6815: $ae
    cp c                                          ; $6816: $b9
    ld a, [$b817]                                 ; $6817: $fa $17 $b8
    ld a, e                                       ; $681a: $7b
    jp $b50e                                      ; $681b: $c3 $0e $b5


    db $e4                                        ; $681e: $e4
    push de                                       ; $681f: $d5
    sub h                                         ; $6820: $94
    ld a, c                                       ; $6821: $79
    jp z, $897c                                   ; $6822: $ca $7c $89

    jp nc, Jump_053_492f                          ; $6825: $d2 $2f $49

    db $fc                                        ; $6828: $fc
    ld a, c                                       ; $6829: $79
    daa                                           ; $682a: $27
    db $e3                                        ; $682b: $e3
    dec h                                         ; $682c: $25
    ld a, a                                       ; $682d: $7f
    ld b, a                                       ; $682e: $47
    ld e, [hl]                                    ; $682f: $5e
    adc h                                         ; $6830: $8c
    ld l, a                                       ; $6831: $6f
    add hl, de                                    ; $6832: $19
    adc a                                         ; $6833: $8f
    xor $2a                                       ; $6834: $ee $2a
    adc b                                         ; $6836: $88
    nop                                           ; $6837: $00
    scf                                           ; $6838: $37
    scf                                           ; $6839: $37
    sbc $71                                       ; $683a: $de $71
    ld c, l                                       ; $683c: $4d
    rst $20                                       ; $683d: $e7
    pop af                                        ; $683e: $f1
    ld l, a                                       ; $683f: $6f
    and e                                         ; $6840: $a3
    sub [hl]                                      ; $6841: $96
    db $f4                                        ; $6842: $f4
    ld d, l                                       ; $6843: $55
    sbc $5f                                       ; $6844: $de $5f
    ld l, $65                                     ; $6846: $2e $65
    add c                                         ; $6848: $81
    cp e                                          ; $6849: $bb
    cp l                                          ; $684a: $bd
    xor e                                         ; $684b: $ab
    add l                                         ; $684c: $85
    ld h, c                                       ; $684d: $61
    rlca                                          ; $684e: $07
    adc b                                         ; $684f: $88
    nop                                           ; $6850: $00
    add b                                         ; $6851: $80
    ei                                            ; $6852: $fb
    xor d                                         ; $6853: $aa
    dec h                                         ; $6854: $25
    ld d, $69                                     ; $6855: $16 $69
    ccf                                           ; $6857: $3f
    adc h                                         ; $6858: $8c
    ld a, [de]                                    ; $6859: $1a
    sub c                                         ; $685a: $91
    sbc e                                         ; $685b: $9b
    ld a, [c]                                     ; $685c: $f2
    sub h                                         ; $685d: $94
    srl e                                         ; $685e: $cb $3b
    rrca                                          ; $6860: $0f
    scf                                           ; $6861: $37
    inc sp                                        ; $6862: $33
    ld b, h                                       ; $6863: $44
    ld [hl], a                                    ; $6864: $77
    ld h, [hl]                                    ; $6865: $66
    cp h                                          ; $6866: $bc
    daa                                           ; $6867: $27
    jp c, $bcf5                                   ; $6868: $da $f5 $bc

    ld a, [hl+]                                   ; $686b: $2a
    dec c                                         ; $686c: $0d
    ld b, h                                       ; $686d: $44
    cp l                                          ; $686e: $bd
    dec [hl]                                      ; $686f: $35
    and c                                         ; $6870: $a1
    cp [hl]                                       ; $6871: $be
    ld c, d                                       ; $6872: $4a
    dec a                                         ; $6873: $3d
    ret nz                                        ; $6874: $c0

    ld d, $1e                                     ; $6875: $16 $1e
    ld c, c                                       ; $6877: $49
    dec c                                         ; $6878: $0d
    dec sp                                        ; $6879: $3b
    and h                                         ; $687a: $a4
    ld b, [hl]                                    ; $687b: $46
    or a                                          ; $687c: $b7
    jr c, @-$48                                   ; $687d: $38 $b6

    rla                                           ; $687f: $17
    ld e, h                                       ; $6880: $5c
    ld [hl], b                                    ; $6881: $70
    db $dd                                        ; $6882: $dd
    ld d, $f1                                     ; $6883: $16 $f1
    sbc d                                         ; $6885: $9a
    ld e, $df                                     ; $6886: $1e $df

jr_053_6888:
    ld e, h                                       ; $6888: $5c
    dec sp                                        ; $6889: $3b
    ld l, h                                       ; $688a: $6c
    add hl, bc                                    ; $688b: $09
    inc c                                         ; $688c: $0c
    ld de, $38b7                                  ; $688d: $11 $b7 $38
    or [hl]                                       ; $6890: $b6
    rla                                           ; $6891: $17
    ld e, h                                       ; $6892: $5c
    jp c, Jump_000_29fd                           ; $6893: $da $fd $29

    adc e                                         ; $6896: $8b
    ld a, b                                       ; $6897: $78
    ld c, l                                       ; $6898: $4d
    adc a                                         ; $6899: $8f
    ld l, a                                       ; $689a: $6f
    pop af                                        ; $689b: $f1
    ret                                           ; $689c: $c9


    sub h                                         ; $689d: $94
    cp [hl]                                       ; $689e: $be
    db $f4                                        ; $689f: $f4
    dec hl                                        ; $68a0: $2b
    cpl                                           ; $68a1: $2f
    ld l, l                                       ; $68a2: $6d
    ld a, [hl]                                    ; $68a3: $7e
    call $946b                                    ; $68a4: $cd $6b $94
    ld b, b                                       ; $68a7: $40
    inc b                                         ; $68a8: $04
    rst $10                                       ; $68a9: $d7
    ld e, a                                       ; $68aa: $5f
    and l                                         ; $68ab: $a5
    db $dd                                        ; $68ac: $dd
    push af                                       ; $68ad: $f5
    ld d, a                                       ; $68ae: $57
    ld l, e                                       ; $68af: $6b
    ld [hl], a                                    ; $68b0: $77
    db $fd                                        ; $68b1: $fd
    dec [hl]                                      ; $68b2: $35
    db $10                                        ; $68b3: $10
    ld b, d                                       ; $68b4: $42
    di                                            ; $68b5: $f3
    cp d                                          ; $68b6: $ba
    inc [hl]                                      ; $68b7: $34
    ld c, [hl]                                    ; $68b8: $4e
    or a                                          ; $68b9: $b7
    rra                                           ; $68ba: $1f
    and e                                         ; $68bb: $a3
    halt                                          ; $68bc: $76
    dec e                                         ; $68bd: $1d
    add a                                         ; $68be: $87
    sbc l                                         ; $68bf: $9d
    ld hl, sp-$26                                 ; $68c0: $f8 $da
    jp nc, Jump_000_3caf                          ; $68c2: $d2 $af $3c

    halt                                          ; $68c5: $76
    ld l, e                                       ; $68c6: $6b
    ld e, [hl]                                    ; $68c7: $5e
    ld h, $c9                                     ; $68c8: $26 $c9
    ld c, c                                       ; $68ca: $49
    or [hl]                                       ; $68cb: $b6
    adc h                                         ; $68cc: $8c
    push af                                       ; $68cd: $f5
    ld h, e                                       ; $68ce: $63
    ld e, c                                       ; $68cf: $59
    jp hl                                         ; $68d0: $e9


    jp hl                                         ; $68d1: $e9


    cpl                                           ; $68d2: $2f
    ld l, $08                                     ; $68d3: $2e $08
    pop hl                                        ; $68d5: $e1
    push af                                       ; $68d6: $f5
    rst $10                                       ; $68d7: $d7
    ld l, d                                       ; $68d8: $6a
    ld [hl], a                                    ; $68d9: $77
    db $fd                                        ; $68da: $fd
    ld [hl], l                                    ; $68db: $75
    jp c, Jump_053_7f5d                           ; $68dc: $da $5d $7f

    dec a                                         ; $68df: $3d
    add h                                         ; $68e0: $84
    db $10                                        ; $68e1: $10
    ld bc, $50f7                                  ; $68e2: $01 $f7 $50
    adc e                                         ; $68e5: $8b
    add hl, de                                    ; $68e6: $19
    xor a                                         ; $68e7: $af
    db $e3                                        ; $68e8: $e3
    jr nc, jr_053_6888                            ; $68e9: $30 $9d

    rst $30                                       ; $68eb: $f7
    sub d                                         ; $68ec: $92
    or c                                          ; $68ed: $b1
    ld e, e                                       ; $68ee: $5b
    ei                                            ; $68ef: $fb
    ld [de], a                                    ; $68f0: $12
    ld e, [hl]                                    ; $68f1: $5e
    ld [$11dd], a                                 ; $68f2: $ea $dd $11
    and e                                         ; $68f5: $a3
    rla                                           ; $68f6: $17
    inc sp                                        ; $68f7: $33
    ld e, $ff                                     ; $68f8: $1e $ff
    sub [hl]                                      ; $68fa: $96
    ld a, [hl]                                    ; $68fb: $7e
    pop de                                        ; $68fc: $d1
    and e                                         ; $68fd: $a3
    cp e                                          ; $68fe: $bb
    ld l, d                                       ; $68ff: $6a
    dec e                                         ; $6900: $1d
    add a                                         ; $6901: $87
    cp c                                          ; $6902: $b9
    ld b, [hl]                                    ; $6903: $46
    cp e                                          ; $6904: $bb
    call nc, Call_000_100f                        ; $6905: $d4 $0f $10
    ld bc, $38b7                                  ; $6908: $01 $b7 $38
    or [hl]                                       ; $690b: $b6
    rla                                           ; $690c: $17
    ld e, h                                       ; $690d: $5c
    jp c, $1c75                                   ; $690e: $da $75 $1c

    ld b, [hl]                                    ; $6911: $46
    cp h                                          ; $6912: $bc
    ld e, d                                       ; $6913: $5a
    ld l, $ec                                     ; $6914: $2e $ec
    ld d, b                                       ; $6916: $50
    ld a, $87                                     ; $6917: $3e $87
    ld a, l                                       ; $6919: $7d
    add hl, bc                                    ; $691a: $09
    ld sp, hl                                     ; $691b: $f9
    db $f4                                        ; $691c: $f4
    ld h, e                                       ; $691d: $63
    adc b                                         ; $691e: $88
    nop                                           ; $691f: $00
    dec a                                         ; $6920: $3d
    xor a                                         ; $6921: $af
    and [hl]                                      ; $6922: $a6
    ld a, h                                       ; $6923: $7c
    ld c, [hl]                                    ; $6924: $4e
    ld [c], a                                     ; $6925: $e2
    ld a, [hl+]                                   ; $6926: $2a
    rst $28                                       ; $6927: $ef
    rst $00                                       ; $6928: $c7
    add sp, -$0f                                  ; $6929: $e8 $f1
    ld d, a                                       ; $692b: $57
    ld a, e                                       ; $692c: $7b
    ld sp, $f5ea                                  ; $692d: $31 $ea $f5
    ld a, b                                       ; $6930: $78
    ld b, d                                       ; $6931: $42
    ld l, c                                       ; $6932: $69
    rst $10                                       ; $6933: $d7
    ld [hl], c                                    ; $6934: $71
    ld e, b                                       ; $6935: $58
    ld h, d                                       ; $6936: $62
    ld h, c                                       ; $6937: $61
    rst $10                                       ; $6938: $d7
    inc l                                         ; $6939: $2c
    ld c, e                                       ; $693a: $4b
    ld a, [hl]                                    ; $693b: $7e
    db $e4                                        ; $693c: $e4
    rra                                           ; $693d: $1f
    and [hl]                                      ; $693e: $a6
    add a                                         ; $693f: $87
    ld h, [hl]                                    ; $6940: $66
    adc b                                         ; $6941: $88
    nop                                           ; $6942: $00
    dec a                                         ; $6943: $3d
    ld c, c                                       ; $6944: $49
    ld l, $3a                                     ; $6945: $2e $3a
    rst $10                                       ; $6947: $d7
    ld [bc], a                                    ; $6948: $02
    ld d, l                                       ; $6949: $55
    ld d, e                                       ; $694a: $53
    ld a, [$174a]                                 ; $694b: $fa $4a $17
    push bc                                       ; $694e: $c5
    inc hl                                        ; $694f: $23
    ld e, h                                       ; $6950: $5c
    ld a, e                                       ; $6951: $7b
    call $5ee2                                    ; $6952: $cd $e2 $5e
    db $eb                                        ; $6955: $eb
    ld [hl], $cf                                  ; $6956: $36 $cf
    or l                                          ; $6958: $b5
    rra                                           ; $6959: $1f
    and e                                         ; $695a: $a3
    rst $00                                       ; $695b: $c7
    and l                                         ; $695c: $a5
    add hl, bc                                    ; $695d: $09
    inc c                                         ; $695e: $0c
    ld de, $1c7d                                  ; $695f: $11 $7d $1c
    add $95                                       ; $6962: $c6 $95
    sub l                                         ; $6964: $95
    ld a, [c]                                     ; $6965: $f2
    xor $6c                                       ; $6966: $ee $6c
    sbc c                                         ; $6968: $99
    ld e, a                                       ; $6969: $5f
    inc e                                         ; $696a: $1c
    rst $20                                       ; $696b: $e7
    cp b                                          ; $696c: $b8
    db $e3                                        ; $696d: $e3
    or b                                          ; $696e: $b0
    sub a                                         ; $696f: $97
    ld c, h                                       ; $6970: $4c
    add hl, sp                                    ; $6971: $39
    ret nz                                        ; $6972: $c0

    push af                                       ; $6973: $f5
    and [hl]                                      ; $6974: $a6
    ld b, [hl]                                    ; $6975: $46
    cp b                                          ; $6976: $b8
    dec [hl]                                      ; $6977: $35
    rst $10                                       ; $6978: $d7

jr_053_6979:
    ld [hl], d                                    ; $6979: $72
    jr jr_053_6979                                ; $697a: $18 $fd

    ld b, l                                       ; $697c: $45
    ld b, [hl]                                    ; $697d: $46
    inc a                                         ; $697e: $3c
    inc c                                         ; $697f: $0c
    ld de, $aedd                                  ; $6980: $11 $dd $ae
    ld de, $96af                                  ; $6983: $11 $af $96
    db $fc                                        ; $6986: $fc
    add hl, hl                                    ; $6987: $29
    rlca                                          ; $6988: $07
    cp b                                          ; $6989: $b8
    ld l, [hl]                                    ; $698a: $6e
    ld a, l                                       ; $698b: $7d
    daa                                           ; $698c: $27
    ld [$47fd], a                                 ; $698d: $ea $fd $47
    xor a                                         ; $6990: $af
    ld [hl-], a                                   ; $6991: $32
    ld a, e                                       ; $6992: $7b
    jp z, $e961                                   ; $6993: $ca $61 $e9

    ld e, h                                       ; $6996: $5c
    inc a                                         ; $6997: $3c
    sub d                                         ; $6998: $92
    sbc d                                         ; $6999: $9a
    or d                                          ; $699a: $b2
    inc c                                         ; $699b: $0c
    ld d, e                                       ; $699c: $53
    ld l, h                                       ; $699d: $6c
    add c                                         ; $699e: $81
    ld [$1c7d], sp                                ; $699f: $08 $7d $1c
    ld b, [hl]                                    ; $69a2: $46
    cp h                                          ; $69a3: $bc
    jp c, $f331                                   ; $69a4: $da $31 $f3

    call z, $9aec                                 ; $69a7: $cc $ec $9a
    ld [hl], d                                    ; $69aa: $72
    ld e, b                                       ; $69ab: $58
    ld c, [hl]                                    ; $69ac: $4e
    ld e, h                                       ; $69ad: $5c
    xor a                                         ; $69ae: $af
    ld [hl], c                                    ; $69af: $71
    ld l, d                                       ; $69b0: $6a
    inc b                                         ; $69b1: $04
    ld [hl], a                                    ; $69b2: $77
    ld e, e                                       ; $69b3: $5b
    sub $71                                       ; $69b4: $d6 $71
    ld e, b                                       ; $69b6: $58
    ld a, [c]                                     ; $69b7: $f2
    xor d                                         ; $69b8: $aa
    rst $38                                       ; $69b9: $ff
    add sp, -$1b                                  ; $69ba: $e8 $e5
    call nz, Call_000_1af5                        ; $69bc: $c4 $f5 $1a
    jp Jump_053_71f5                              ; $69bf: $c3 $f5 $71


    ld e, b                                       ; $69c2: $58
    ld a, [c]                                     ; $69c3: $f2
    ld l, d                                       ; $69c4: $6a
    cpl                                           ; $69c5: $2f
    ld b, [hl]                                    ; $69c6: $46
    rst $10                                       ; $69c7: $d7
    db $e3                                        ; $69c8: $e3
    ld de, $ed2e                                  ; $69c9: $11 $2e $ed
    ld [de], a                                    ; $69cc: $12
    xor e                                         ; $69cd: $ab
    ld de, $5b89                                  ; $69ce: $11 $89 $5b
    ld h, d                                       ; $69d1: $62
    sbc [hl]                                      ; $69d2: $9e
    ld a, [$10cc]                                 ; $69d3: $fa $cc $10
    ld b, d                                       ; $69d6: $42
    inc b                                         ; $69d7: $04
    scf                                           ; $69d8: $37
    scf                                           ; $69d9: $37
    sbc [hl]                                      ; $69da: $9e
    ld [hl-], a                                   ; $69db: $32
    or e                                          ; $69dc: $b3
    ld hl, $ae84                                  ; $69dd: $21 $84 $ae
    add hl, hl                                    ; $69e0: $29
    di                                            ; $69e1: $f3
    ldh a, [$67]                                  ; $69e2: $f0 $67
    xor $85                                       ; $69e4: $ee $85
    nop                                           ; $69e6: $00
    ld a, l                                       ; $69e7: $7d
    sbc $d4                                       ; $69e8: $de $d4
    add e                                         ; $69ea: $83
    cp e                                          ; $69eb: $bb
    db $db                                        ; $69ec: $db
    or d                                          ; $69ed: $b2
    db $e4                                        ; $69ee: $e4
    rst $28                                       ; $69ef: $ef
    call nz, $96d7                                ; $69f0: $c4 $d7 $96
    ld a, [hl]                                    ; $69f3: $7e
    push hl                                       ; $69f4: $e5
    pop af                                        ; $69f5: $f1
    sbc e                                         ; $69f6: $9b
    adc $3b                                       ; $69f7: $ce $3b
    call nc, Call_053_77c8                        ; $69f9: $d4 $c8 $77
    adc $b0                                       ; $69fc: $ce $b0
    push de                                       ; $69fe: $d5
    ld c, [hl]                                    ; $69ff: $4e
    ld d, a                                       ; $6a00: $57
    ld c, e                                       ; $6a01: $4b
    adc $0f                                       ; $6a02: $ce $0f
    jp z, Jump_000_2105                           ; $6a04: $ca $05 $21

    ld a, h                                       ; $6a07: $7c
    adc l                                         ; $6a08: $8d
    rrca                                          ; $6a09: $0f
    dec [hl]                                      ; $6a0a: $35
    xor [hl]                                      ; $6a0b: $ae
    call c, Call_053_7e1a                         ; $6a0c: $dc $1a $7e
    ld [hl+], a                                   ; $6a0f: $22
    add a                                         ; $6a10: $87
    or h                                          ; $6a11: $b4
    inc b                                         ; $6a12: $04
    rla                                           ; $6a13: $17
    add h                                         ; $6a14: $84
    ld [hl], b                                    ; $6a15: $70
    adc a                                         ; $6a16: $8f
    and a                                         ; $6a17: $a7
    db $f4                                        ; $6a18: $f4
    ld de, $a6af                                  ; $6a19: $11 $af $a6
    call z, $fa53                                 ; $6a1c: $cc $53 $fa
    cp b                                          ; $6a1f: $b8
    inc l                                         ; $6a20: $2c
    pop bc                                        ; $6a21: $c1
    dec [hl]                                      ; $6a22: $35
    cp $6d                                        ; $6a23: $fe $6d
    daa                                           ; $6a25: $27
    and $66                                       ; $6a26: $e6 $66
    add c                                         ; $6a28: $81
    ld [$f129], sp                                ; $6a29: $08 $29 $f1

jr_053_6a2c:
    or l                                          ; $6a2c: $b5
    dec h                                         ; $6a2d: $25
    ld a, a                                       ; $6a2e: $7f
    ld [hl], h                                    ; $6a2f: $74
    ld l, $3e                                     ; $6a30: $2e $3e
    ld h, [hl]                                    ; $6a32: $66
    or $f8                                        ; $6a33: $f6 $f8
    or a                                          ; $6a35: $b7
    adc c                                         ; $6a36: $89
    rrca                                          ; $6a37: $0f
    ld a, e                                       ; $6a38: $7b
    ld b, h                                       ; $6a39: $44
    ld [c], a                                     ; $6a3a: $e2
    sub [hl]                                      ; $6a3b: $96
    ld c, h                                       ; $6a3c: $4c
    jr z, jr_053_6a2c                             ; $6a3d: $28 $ed

    ld [$ad57], sp                                ; $6a3f: $08 $57 $ad
    or a                                          ; $6a42: $b7
    ld h, $d4                                     ; $6a43: $26 $d4
    ld d, a                                       ; $6a45: $57
    cp l                                          ; $6a46: $bd
    db $10                                        ; $6a47: $10
    ld a, l                                       ; $6a48: $7d
    sbc [hl]                                      ; $6a49: $9e
    halt                                          ; $6a4a: $76
    add hl, sp                                    ; $6a4b: $39
    ld c, h                                       ; $6a4c: $4c
    sbc c                                         ; $6a4d: $99
    rst $20                                       ; $6a4e: $e7
    ld e, d                                       ; $6a4f: $5a
    jp c, $9787                                   ; $6a50: $da $87 $97

    db $fc                                        ; $6a53: $fc
    sbc l                                         ; $6a54: $9d
    xor b                                         ; $6a55: $a8
    ld de, $5ae5                                  ; $6a56: $11 $e5 $5a
    ld a, $07                                     ; $6a59: $3e $07
    xor [hl]                                      ; $6a5b: $ae
    rst $20                                       ; $6a5c: $e7
    ld d, l                                       ; $6a5d: $55
    ld l, c                                       ; $6a5e: $69
    or h                                          ; $6a5f: $b4
    inc hl                                        ; $6a60: $23
    ld e, h                                       ; $6a61: $5c
    inc hl                                        ; $6a62: $23
    ld e, [hl]                                    ; $6a63: $5e
    ld c, l                                       ; $6a64: $4d
    jp hl                                         ; $6a65: $e9


    inc hl                                        ; $6a66: $23
    dec l                                         ; $6a67: $2d

Jump_053_6a68:
    pop hl                                        ; $6a68: $e1
    ld c, l                                       ; $6a69: $4d
    ld a, l                                       ; $6a6a: $7d
    pop af                                        ; $6a6b: $f1
    ld [hl], d                                    ; $6a6c: $72
    ld e, b                                       ; $6a6d: $58
    ei                                            ; $6a6e: $fb
    add a                                         ; $6a6f: $87
    rst $18                                       ; $6a70: $df
    ld [hl], d                                    ; $6a71: $72
    ld [c], a                                     ; $6a72: $e2
    sbc d                                         ; $6a73: $9a
    ld [hl-], a                                   ; $6a74: $32
    ld c, a                                       ; $6a75: $4f
    jp hl                                         ; $6a76: $e9


    db $e3                                        ; $6a77: $e3
    or d                                          ; $6a78: $b2
    inc b                                         ; $6a79: $04
    rla                                           ; $6a7a: $17
    call c, $9d9d                                 ; $6a7b: $dc $9d $9d
    ld l, $72                                     ; $6a7e: $2e $72
    xor a                                         ; $6a80: $af
    pop af                                        ; $6a81: $f1
    ld c, [hl]                                    ; $6a82: $4e
    add $3b                                       ; $6a83: $c6 $3b
    ld c, h                                       ; $6a85: $4c
    push de                                       ; $6a86: $d5
    sub h                                         ; $6a87: $94
    dec bc                                        ; $6a88: $0b
    xor [hl]                                      ; $6a89: $ae
    adc a                                         ; $6a8a: $8f
    jp Jump_053_7c4e                              ; $6a8b: $c3 $4e $7c


    ld l, l                                       ; $6a8e: $6d
    jp hl                                         ; $6a8f: $e9


    ld d, a                                       ; $6a90: $57
    ld e, $4d                                     ; $6a91: $1e $4d
    dec c                                         ; $6a93: $0d
    ld e, e                                       ; $6a94: $5b
    dec c                                         ; $6a95: $0d
    dec sp                                        ; $6a96: $3b
    ld c, h                                       ; $6a97: $4c
    sbc c                                         ; $6a98: $99
    cpl                                           ; $6a99: $2f
    ld d, c                                       ; $6a9a: $51
    ld a, [$8925]                                 ; $6a9b: $fa $25 $89
    ccf                                           ; $6a9e: $3f
    ld l, e                                       ; $6a9f: $6b

jr_053_6aa0:
    sub a                                         ; $6aa0: $97
    jp $350e                                      ; $6aa1: $c3 $0e $35


    call c, $aec5                                 ; $6aa4: $dc $c5 $ae
    ld [hl], l                                    ; $6aa7: $75
    inc e                                         ; $6aa8: $1c
    and [hl]                                      ; $6aa9: $a6
    inc e                                         ; $6aaa: $1c
    and [hl]                                      ; $6aab: $a6
    di                                            ; $6aac: $f3
    and e                                         ; $6aad: $a3
    ld [hl], e                                    ; $6aae: $73
    db $ed                                        ; $6aaf: $ed
    or $f6                                        ; $6ab0: $f6 $f6
    dec hl                                        ; $6ab2: $2b
    ld h, h                                       ; $6ab3: $64
    ld h, [hl]                                    ; $6ab4: $66
    adc b                                         ; $6ab5: $88
    nop                                           ; $6ab6: $00
    dec a                                         ; $6ab7: $3d
    ret                                           ; $6ab8: $c9


    sbc e                                         ; $6ab9: $9b
    ld l, e                                       ; $6aba: $6b
    jp z, $897c                                   ; $6abb: $ca $7c $89

    jp nc, Jump_053_492f                          ; $6abe: $d2 $2f $49

    call z, $10bd                                 ; $6ac1: $cc $bd $10
    ld [hl], a                                    ; $6ac4: $77
    ld a, $e9                                     ; $6ac5: $3e $e9
    ccf                                           ; $6ac7: $3f
    ld a, d                                       ; $6ac8: $7a
    rst $20                                       ; $6ac9: $e7
    ld c, a                                       ; $6aca: $4f
    sbc c                                         ; $6acb: $99
    pop hl                                        ; $6acc: $e1
    ld a, d                                       ; $6acd: $7a
    adc h                                         ; $6ace: $8c
    or c                                          ; $6acf: $b1
    db $db                                        ; $6ad0: $db
    rrca                                          ; $6ad1: $0f
    ld e, [hl]                                    ; $6ad2: $5e
    rst $28                                       ; $6ad3: $ef
    rst $10                                       ; $6ad4: $d7
    jr c, jr_053_6aa0                             ; $6ad5: $38 $c9

    push bc                                       ; $6ad7: $c5
    sub a                                         ; $6ad8: $97
    sbc h                                         ; $6ad9: $9c
    rla                                           ; $6ada: $17
    ld e, l                                       ; $6adb: $5d
    ld [hl], b                                    ; $6adc: $70
    add hl, hl                                    ; $6add: $29
    xor [hl]                                      ; $6ade: $ae
    add hl, hl                                    ; $6adf: $29
    add a                                         ; $6ae0: $87
    jp hl                                         ; $6ae1: $e9


    db $fc                                        ; $6ae2: $fc
    add sp, $5c                                   ; $6ae3: $e8 $5c
    jp c, $bcf5                                   ; $6ae5: $da $f5 $bc

    ld a, [hl+]                                   ; $6ae8: $2a
    dec c                                         ; $6ae9: $0d
    ld b, h                                       ; $6aea: $44
    nop                                           ; $6aeb: $00
    ld e, a                                       ; $6aec: $5f
    adc h                                         ; $6aed: $8c
    and e                                         ; $6aee: $a3
    ld [hl], e                                    ; $6aef: $73
    dec l                                         ; $6af0: $2d
    db $ed                                        ; $6af1: $ed
    db $d3                                        ; $6af2: $d3
    dec d                                         ; $6af3: $15
    call $0110                                    ; $6af4: $cd $10 $01
    ld [hl], a                                    ; $6af7: $77
    ld h, [hl]                                    ; $6af8: $66
    cp h                                          ; $6af9: $bc
    inc hl                                        ; $6afa: $23
    xor a                                         ; $6afb: $af
    ld a, b                                       ; $6afc: $78
    ccf                                           ; $6afd: $3f
    ld [hl], h                                    ; $6afe: $74
    inc l                                         ; $6aff: $2c
    db $10                                        ; $6b00: $10
    ld bc, $3880                                  ; $6b01: $01 $80 $38
    inc a                                         ; $6b04: $3c
    add hl, bc                                    ; $6b05: $09
    sub [hl]                                      ; $6b06: $96
    cp c                                          ; $6b07: $b9
    and [hl]                                      ; $6b08: $a6
    inc l                                         ; $6b09: $2c
    ld c, e                                       ; $6b0a: $4b
    db $fc                                        ; $6b0b: $fc
    dec l                                         ; $6b0c: $2d
    db $10                                        ; $6b0d: $10
    ld bc, $e6dd                                  ; $6b0e: $01 $dd $e6
    cp c                                          ; $6b11: $b9
    sub $74                                       ; $6b12: $d6 $74
    add hl, sp                                    ; $6b14: $39
    dec e                                         ; $6b15: $1d
    db $ed                                        ; $6b16: $ed
    ld [hl], d                                    ; $6b17: $72
    ld e, b                                       ; $6b18: $58
    ld a, [$b449]                                 ; $6b19: $fa $49 $b4
    db $ec                                        ; $6b1c: $ec
    call nz, Call_053_76d7                        ; $6b1d: $c4 $d7 $76
    ret c                                         ; $6b20: $d8

    ld [de], a                                    ; $6b21: $12
    inc c                                         ; $6b22: $0c
    rst $10                                       ; $6b23: $d7
    xor l                                         ; $6b24: $ad
    cpl                                           ; $6b25: $2f
    ld sp, hl                                     ; $6b26: $f9
    ld l, l                                       ; $6b27: $6d
    sub d                                         ; $6b28: $92
    db $e3                                        ; $6b29: $e3
    ld a, [hl]                                    ; $6b2a: $7e
    adc h                                         ; $6b2b: $8c
    sbc $f1                                       ; $6b2c: $de $f1
    ld c, b                                       ; $6b2e: $48
    ld l, d                                       ; $6b2f: $6a
    adc a                                         ; $6b30: $8f
    sub a                                         ; $6b31: $97
    db $fc                                        ; $6b32: $fc
    dec e                                         ; $6b33: $1d
    ld a, [c]                                     ; $6b34: $f2
    rra                                           ; $6b35: $1f
    rla                                           ; $6b36: $17
    ld b, h                                       ; $6b37: $44
    nop                                           ; $6b38: $00
    ld e, a                                       ; $6b39: $5f
    adc h                                         ; $6b3a: $8c
    and e                                         ; $6b3b: $a3
    ld [hl], e                                    ; $6b3c: $73
    db $ed                                        ; $6b3d: $ed
    pop af                                        ; $6b3e: $f1
    sub h                                         ; $6b3f: $94
    cp [hl]                                       ; $6b40: $be
    ld [hl], h                                    ; $6b41: $74
    jp hl                                         ; $6b42: $e9


    pop de                                        ; $6b43: $d1
    dec [hl]                                      ; $6b44: $35
    xor [hl]                                      ; $6b45: $ae
    call c, Call_053_7e1a                         ; $6b46: $dc $1a $7e
    ld [hl+], a                                   ; $6b49: $22
    daa                                           ; $6b4a: $27
    db $fd                                        ; $6b4b: $fd
    inc h                                         ; $6b4c: $24
    ld e, d                                       ; $6b4d: $5a
    halt                                          ; $6b4e: $76
    ld a, e                                       ; $6b4f: $7b
    ei                                            ; $6b50: $fb
    dec d                                         ; $6b51: $15
    ld [hl-], a                                   ; $6b52: $32
    inc sp                                        ; $6b53: $33
    ld b, h                                       ; $6b54: $44
    rst $30                                       ; $6b55: $f7
    sbc $09                                       ; $6b56: $de $09
    ld de, $fe3d                                  ; $6b58: $11 $3d $fe
    db $10                                        ; $6b5b: $10
    ld bc, $5f00                                  ; $6b5c: $01 $00 $5f
    adc h                                         ; $6b5f: $8c
    db $10                                        ; $6b60: $10
    ld bc, $e8b7                                  ; $6b61: $01 $b7 $e8
    db $fc                                        ; $6b64: $fc
    ld h, e                                       ; $6b65: $63
    or h                                          ; $6b66: $b4
    ld a, b                                       ; $6b67: $78
    or c                                          ; $6b68: $b1
    db $d3                                        ; $6b69: $d3
    ld b, l                                       ; $6b6a: $45
    cp d                                          ; $6b6b: $ba
    or $43                                        ; $6b6c: $f6 $43
    rst $00                                       ; $6b6e: $c7
    ld [hl-], a                                   ; $6b6f: $32
    ld h, l                                       ; $6b70: $65
    sbc [hl]                                      ; $6b71: $9e
    jp nc, $bc47                                  ; $6b72: $d2 $47 $bc

    ld e, d                                       ; $6b75: $5a
    db $ec                                        ; $6b76: $ec
    ld [hl], h                                    ; $6b77: $74
    sub c                                         ; $6b78: $91
    inc a                                         ; $6b79: $3c
    push hl                                       ; $6b7a: $e5
    add d                                         ; $6b7b: $82
    db $10                                        ; $6b7c: $10

jr_053_6b7d:
    ld h, d                                       ; $6b7d: $62
    bit 7, [hl]                                   ; $6b7e: $cb $7e
    adc h                                         ; $6b80: $8c
    ld e, $ff                                     ; $6b81: $1e $ff
    or [hl]                                       ; $6b83: $b6
    di                                            ; $6b84: $f3
    jr nc, jr_053_6b7d                            ; $6b85: $30 $f6

    ret z                                         ; $6b87: $c8

    ld a, [$bb47]                                 ; $6b88: $fa $47 $bb
    ld b, e                                       ; $6b8b: $43
    dec l                                         ; $6b8c: $2d
    or [hl]                                       ; $6b8d: $b6

Jump_053_6b8e:
    ld d, a                                       ; $6b8e: $57
    inc c                                         ; $6b8f: $0c
    ld de, $fadd                                  ; $6b90: $11 $dd $fa
    ld e, h                                       ; $6b93: $5c
    inc hl                                        ; $6b94: $23
    sbc [hl]                                      ; $6b95: $9e
    and h                                         ; $6b96: $a4
    ld e, [hl]                                    ; $6b97: $5e
    rra                                           ; $6b98: $1f
    add a                                         ; $6b99: $87
    ld h, c                                       ; $6b9a: $61
    adc e                                         ; $6b9b: $8b
    ld c, e                                       ; $6b9c: $4b
    dec sp                                        ; $6b9d: $3b
    and l                                         ; $6b9e: $a5
    rst $08                                       ; $6b9f: $cf
    dec [hl]                                      ; $6ba0: $35
    push hl                                       ; $6ba1: $e5
    sub b                                         ; $6ba2: $90
    ld a, d                                       ; $6ba3: $7a
    ld a, l                                       ; $6ba4: $7d
    inc e                                         ; $6ba5: $1c
    add [hl]                                      ; $6ba6: $86
    dec l                                         ; $6ba7: $2d
    ld l, $ed                                     ; $6ba8: $2e $ed
    sub h                                         ; $6baa: $94
    ld a, $d7                                     ; $6bab: $3e $d7
    ld a, d                                       ; $6bad: $7a
    ld e, [hl]                                    ; $6bae: $5e
    sub l                                         ; $6baf: $95
    ld h, [hl]                                    ; $6bb0: $66
    rst $30                                       ; $6bb1: $f7
    ld h, l                                       ; $6bb2: $65
    ld h, [hl]                                    ; $6bb3: $66
    ld d, a                                       ; $6bb4: $57
    ld l, d                                       ; $6bb5: $6a
    inc b                                         ; $6bb6: $04
    or a                                          ; $6bb7: $b7
    rst $20                                       ; $6bb8: $e7
    ld a, [hl-]                                   ; $6bb9: $3a
    ccf                                           ; $6bba: $3f
    ld a, [c]                                     ; $6bbb: $f2
    rrca                                          ; $6bbc: $0f
    jp $3b56                                      ; $6bbd: $c3 $56 $3b


    ld e, a                                       ; $6bc0: $5f
    add hl, sp                                    ; $6bc1: $39
    inc a                                         ; $6bc2: $3c
    or [hl]                                       ; $6bc3: $b6
    jr jr_053_6c08                                ; $6bc4: $18 $42

    ld e, b                                       ; $6bc6: $58
    sbc c                                         ; $6bc7: $99
    reti                                          ; $6bc8: $d9


    ld [c], a                                     ; $6bc9: $e2
    push bc                                       ; $6bca: $c5
    daa                                           ; $6bcb: $27
    ld c, e                                       ; $6bcc: $4b
    or a                                          ; $6bcd: $b7
    cp a                                          ; $6bce: $bf
    inc de                                        ; $6bcf: $13
    ld a, a                                       ; $6bd0: $7f
    adc h                                         ; $6bd1: $8c
    ld l, [hl]                                    ; $6bd2: $6e
    ccf                                           ; $6bd3: $3f
    db $ec                                        ; $6bd4: $ec
    inc h                                         ; $6bd5: $24
    ld a, l                                       ; $6bd6: $7d
    sub l                                         ; $6bd7: $95
    and a                                         ; $6bd8: $a7
    ld e, h                                       ; $6bd9: $5c
    db $10                                        ; $6bda: $10
    ld bc, $c477                                  ; $6bdb: $01 $77 $c4
    add sp, $1d                                   ; $6bde: $e8 $1d
    cp $31                                        ; $6be0: $fe $31
    xor $25                                       ; $6be2: $ee $25
    and e                                         ; $6be4: $a3
    db $eb                                        ; $6be5: $eb
    db $ed                                        ; $6be6: $ed
    dec [hl]                                      ; $6be7: $35
    sbc [hl]                                      ; $6be8: $9e
    jp nc, $b877                                  ; $6be9: $d2 $77 $b8

    adc e                                         ; $6bec: $8b
    ld e, l                                       ; $6bed: $5d
    inc hl                                        ; $6bee: $23
    add hl, hl                                    ; $6bef: $29
    cp b                                          ; $6bf0: $b8
    sbc [hl]                                      ; $6bf1: $9e
    db $e4                                        ; $6bf2: $e4
    sbc a                                         ; $6bf3: $9f
    add hl, hl                                    ; $6bf4: $29
    ld a, l                                       ; $6bf5: $7d
    ccf                                           ; $6bf6: $3f
    ld b, [hl]                                    ; $6bf7: $46
    adc a                                         ; $6bf8: $8f
    ld e, a                                       ; $6bf9: $5f
    ld l, h                                       ; $6bfa: $6c
    xor [hl]                                      ; $6bfb: $ae
    sbc l                                         ; $6bfc: $9d
    db $e4                                        ; $6bfd: $e4
    ld b, l                                       ; $6bfe: $45
    sub a                                         ; $6bff: $97
    sub a                                         ; $6c00: $97
    ld hl, sp+$58                                 ; $6c01: $f8 $58
    ld e, h                                       ; $6c03: $5c
    inc de                                        ; $6c04: $13
    ld c, d                                       ; $6c05: $4a
    dec sp                                        ; $6c06: $3b
    ld a, [hl]                                    ; $6c07: $7e

jr_053_6c08:
    or c                                          ; $6c08: $b1
    cp c                                          ; $6c09: $b9
    and [hl]                                      ; $6c0a: $a6
    db $f4                                        ; $6c0b: $f4
    cp l                                          ; $6c0c: $bd
    and [hl]                                      ; $6c0d: $a6
    ld [$b0ef], a                                 ; $6c0e: $ea $ef $b0
    dec hl                                        ; $6c11: $2b
    cp d                                          ; $6c12: $ba
    cp h                                          ; $6c13: $bc
    call nz, $e2c7                                ; $6c14: $c4 $c7 $e2
    jp c, $caf9                                   ; $6c17: $da $f9 $ca

    ld [bc], a                                    ; $6c1a: $02
    ld de, $e6dd                                  ; $6c1b: $11 $dd $e6

jr_053_6c1e:
    push bc                                       ; $6c1e: $c5
    jp nc, Jump_053_5ed4                          ; $6c1f: $d2 $d4 $5e

    ld [hl-], a                                   ; $6c22: $32
    cp $2d                                        ; $6c23: $fe $2d
    xor l                                         ; $6c25: $ad
    xor e                                         ; $6c26: $ab
    db $fd                                        ; $6c27: $fd
    ld [hl], l                                    ; $6c28: $75
    rst $38                                       ; $6c29: $ff
    rla                                           ; $6c2a: $17
    or d                                          ; $6c2b: $b2
    cp h                                          ; $6c2c: $bc
    sub $2e                                       ; $6c2d: $d6 $2e
    pop bc                                        ; $6c2f: $c1
    ld d, $f9                                     ; $6c30: $16 $f9
    ld [de], a                                    ; $6c32: $12
    inc l                                         ; $6c33: $2c
    db $10                                        ; $6c34: $10
    ld b, d                                       ; $6c35: $42
    ld h, l                                       ; $6c36: $65
    sbc [hl]                                      ; $6c37: $9e
    ld l, e                                       ; $6c38: $6b
    call $a3cc                                    ; $6c39: $cd $cc $a3
    sub [hl]                                      ; $6c3c: $96
    ld l, $3d                                     ; $6c3d: $2e $3d
    ld a, d                                       ; $6c3f: $7a
    ld [hl], h                                    ; $6c40: $74
    xor [hl]                                      ; $6c41: $ae
    pop hl                                        ; $6c42: $e1
    daa                                           ; $6c43: $27
    pop bc                                        ; $6c44: $c1
    inc hl                                        ; $6c45: $23
    dec l                                         ; $6c46: $2d
    pop bc                                        ; $6c47: $c1
    dec b                                         ; $6c48: $05
    ld de, $8d29                                  ; $6c49: $11 $29 $8d
    jp c, Jump_053_5e49                           ; $6c4c: $da $49 $5e

    ld [hl], h                                    ; $6c4f: $74
    ld a, c                                       ; $6c50: $79
    jr c, jr_053_6c1e                             ; $6c51: $38 $cb

    pop hl                                        ; $6c53: $e1
    ld a, [c]                                     ; $6c54: $f2
    add h                                         ; $6c55: $84
    jp nc, Jump_053_50ee                          ; $6c56: $d2 $ee $50

    adc e                                         ; $6c59: $8b
    ld c, a                                       ; $6c5a: $4f
    and [hl]                                      ; $6c5b: $a6
    db $f4                                        ; $6c5c: $f4
    sbc l                                         ; $6c5d: $9d
    ld b, [hl]                                    ; $6c5e: $46
    db $ed                                        ; $6c5f: $ed
    or b                                          ; $6c60: $b0
    dec hl                                        ; $6c61: $2b
    cp d                                          ; $6c62: $ba
    inc a                                         ; $6c63: $3c
    sbc h                                         ; $6c64: $9c
    push hl                                       ; $6c65: $e5
    ld [hl], b                                    ; $6c66: $70
    ld a, c                                       ; $6c67: $79
    rst $20                                       ; $6c68: $e7
    dec hl                                        ; $6c69: $2b
    dec bc                                        ; $6c6a: $0b
    ld b, h                                       ; $6c6b: $44
    or a                                          ; $6c6c: $b7
    add hl, bc                                    ; $6c6d: $09
    ld e, e                                       ; $6c6e: $5b
    and [hl]                                      ; $6c6f: $a6
    db $f4                                        ; $6c70: $f4
    sbc l                                         ; $6c71: $9d
    xor b                                         ; $6c72: $a8
    ld h, e                                       ; $6c73: $63
    jp nc, $c3b5                                  ; $6c74: $d2 $b5 $c3

    cp c                                          ; $6c77: $b9
    sbc b                                         ; $6c78: $98
    ld a, d                                       ; $6c79: $7a
    ld [hl], e                                    ; $6c7a: $73
    ld l, e                                       ; $6c7b: $6b
    xor [hl]                                      ; $6c7c: $ae
    and l                                         ; $6c7d: $a5
    db $db                                        ; $6c7e: $db
    xor a                                         ; $6c7f: $af
    and l                                         ; $6c80: $a5
    ccf                                           ; $6c81: $3f
    di                                            ; $6c82: $f3
    ld e, [hl]                                    ; $6c83: $5e
    ld [hl-], a                                   ; $6c84: $32
    bit 4, d                                      ; $6c85: $cb $62
    rst $00                                       ; $6c87: $c7
    sbc b                                         ; $6c88: $98
    ld [hl], h                                    ; $6c89: $74
    ld h, l                                       ; $6c8a: $65
    ld h, [hl]                                    ; $6c8b: $66
    ld l, e                                       ; $6c8c: $6b
    ld [hl], a                                    ; $6c8d: $77
    xor b                                         ; $6c8e: $a8
    dec b                                         ; $6c8f: $05
    ld l, d                                       ; $6c90: $6a
    db $fc                                        ; $6c91: $fc
    db $db                                        ; $6c92: $db
    sbc d                                         ; $6c93: $9a
    add e                                         ; $6c94: $83
    dec b                                         ; $6c95: $05
    ld [hl+], a                                   ; $6c96: $22
    db $dd                                        ; $6c97: $dd
    and $a5                                       ; $6c98: $e6 $a5
    ld a, l                                       ; $6c9a: $7d
    ret c                                         ; $6c9b: $d8

    ld c, e                                       ; $6c9c: $4b
    xor h                                         ; $6c9d: $ac
    sub [hl]                                      ; $6c9e: $96
    sub $f9                                       ; $6c9f: $d6 $f9
    rst $00                                       ; $6ca1: $c7
    ld l, b                                       ; $6ca2: $68
    pop af                                        ; $6ca3: $f1
    ld [$5cd7], sp                                ; $6ca4: $08 $d7 $5c
    ld a, e                                       ; $6ca7: $7b
    cp h                                          ; $6ca8: $bc
    cpl                                           ; $6ca9: $2f
    pop bc                                        ; $6caa: $c1
    or d                                          ; $6cab: $b2
    inc hl                                        ; $6cac: $23
    ld a, [de]                                    ; $6cad: $1a
    halt                                          ; $6cae: $76
    ld c, l                                       ; $6caf: $4d
    add hl, sp                                    ; $6cb0: $39
    ld b, b                                       ; $6cb1: $40
    inc b                                         ; $6cb2: $04
    dec a                                         ; $6cb3: $3d
    xor a                                         ; $6cb4: $af
    and [hl]                                      ; $6cb5: $a6
    db $f4                                        ; $6cb6: $f4
    pop de                                        ; $6cb7: $d1
    cp d                                          ; $6cb8: $ba
    adc b                                         ; $6cb9: $88
    ld a, c                                       ; $6cba: $79
    sub d                                         ; $6cbb: $92
    dec l                                         ; $6cbc: $2d
    dec sp                                        ; $6cbd: $3b
    or c                                          ; $6cbe: $b1
    and e                                         ; $6cbf: $a3
    scf                                           ; $6cc0: $37
    or $4c                                        ; $6cc1: $f6 $4c
    db $d3                                        ; $6cc3: $d3
    adc [hl]                                      ; $6cc4: $8e
    db $ec                                        ; $6cc5: $ec
    sbc d                                         ; $6cc6: $9a
    ld b, l                                       ; $6cc7: $45
    xor b                                         ; $6cc8: $a8
    ld e, [hl]                                    ; $6cc9: $5e
    ld e, e                                       ; $6cca: $5b
    or a                                          ; $6ccb: $b7
    ld b, a                                       ; $6ccc: $47
    ld a, a                                       ; $6ccd: $7f
    add hl, sp                                    ; $6cce: $39
    res 1, c                                      ; $6ccf: $cb $89
    db $eb                                        ; $6cd1: $eb
    dec [hl]                                      ; $6cd2: $35
    add [hl]                                      ; $6cd3: $86
    ld e, e                                       ; $6cd4: $5b
    rra                                           ; $6cd5: $1f
    add a                                         ; $6cd6: $87
    dec h                                         ; $6cd7: $25
    ld d, [hl]                                    ; $6cd8: $56
    jp z, $9235                                   ; $6cd9: $ca $35 $92

    jp c, $29e3                                   ; $6cdc: $da $e3 $29

    di                                            ; $6cdf: $f3
    ld e, h                                       ; $6ce0: $5c
    db $eb                                        ; $6ce1: $eb
    ld e, e                                       ; $6ce2: $5b
    or $c7                                        ; $6ce3: $f6 $c7
    ld e, l                                       ; $6ce5: $5d
    ld [hl+], a                                   ; $6ce6: $22
    ld l, a                                       ; $6ce7: $6f
    jp z, Jump_000_1da5                           ; $6ce8: $ca $a5 $1d

    rst $38                                       ; $6ceb: $ff
    or [hl]                                       ; $6cec: $b6
    inc e                                         ; $6ced: $1c
    add [hl]                                      ; $6cee: $86
    xor l                                         ; $6cef: $ad
    jr nz, jr_053_6cf4                            ; $6cf0: $20 $02

    rst $30                                       ; $6cf2: $f7
    dec a                                         ; $6cf3: $3d

jr_053_6cf4:
    db $fd                                        ; $6cf4: $fd
    jr c, jr_053_6cf4                             ; $6cf5: $38 $fd

    sbc e                                         ; $6cf7: $9b
    ld a, [c]                                     ; $6cf8: $f2
    ld [$0217], sp                                ; $6cf9: $08 $17 $02
    add b                                         ; $6cfc: $80
    db $dd                                        ; $6cfd: $dd
    ld h, d                                       ; $6cfe: $62
    add $d8                                       ; $6cff: $c6 $d8
    ld [hl-], a                                   ; $6d01: $32
    cp $6d                                        ; $6d02: $fe $6d
    or a                                          ; $6d04: $b7
    or h                                          ; $6d05: $b4
    cpl                                           ; $6d06: $2f
    pop hl                                        ; $6d07: $e1
    inc a                                         ; $6d08: $3c
    db $fd                                        ; $6d09: $fd
    inc c                                         ; $6d0a: $0c
    ld d, b                                       ; $6d0b: $50
    ld l, b                                       ; $6d0c: $68
    ld a, $9c                                     ; $6d0d: $3e $9c
    dec bc                                        ; $6d0f: $0b
    cp a                                          ; $6d10: $bf
    adc d                                         ; $6d11: $8a
    ld d, [hl]                                    ; $6d12: $56
    ld [hl], b                                    ; $6d13: $70
    dec a                                         ; $6d14: $3d
    ret                                           ; $6d15: $c9


    ld l, a                                       ; $6d16: $6f
    pop de                                        ; $6d17: $d1
    or d                                          ; $6d18: $b2

jr_053_6d19:
    ret c                                         ; $6d19: $d8

    sbc $39                                       ; $6d1a: $de $39
    xor $85                                       ; $6d1c: $ee $85
    nop                                           ; $6d1e: $00
    ld [hl], a                                    ; $6d1f: $77
    or [hl]                                       ; $6d20: $b6
    ld [hl], a                                    ; $6d21: $77
    adc [hl]                                      ; $6d22: $8e
    ld a, e                                       ; $6d23: $7b
    xor l                                         ; $6d24: $ad
    rst $18                                       ; $6d25: $df
    ld [hl], e                                    ; $6d26: $73
    inc l                                         ; $6d27: $2c
    ld d, e                                       ; $6d28: $53
    xor a                                         ; $6d29: $af
    rla                                           ; $6d2a: $17
    ld [bc], a                                    ; $6d2b: $02
    dec a                                         ; $6d2c: $3d
    ret                                           ; $6d2d: $c9


    ld l, a                                       ; $6d2e: $6f
    pop de                                        ; $6d2f: $d1
    or d                                          ; $6d30: $b2
    ret c                                         ; $6d31: $d8

    sbc $39                                       ; $6d32: $de $39
    ld e, $49                                     ; $6d34: $1e $49
    xor l                                         ; $6d36: $ad
    rst $30                                       ; $6d37: $f7
    ld l, e                                       ; $6d38: $6b
    sbc h                                         ; $6d39: $9c
    db $e4                                        ; $6d3a: $e4
    ld [c], a                                     ; $6d3b: $e2
    ld e, [hl]                                    ; $6d3c: $5e
    cp e                                          ; $6d3d: $bb
    cp l                                          ; $6d3e: $bd
    xor e                                         ; $6d3f: $ab
    ld c, $bb                                     ; $6d40: $0e $bb
    rst $10                                       ; $6d42: $d7
    ld l, [hl]                                    ; $6d43: $6e
    ld d, $55                                     ; $6d44: $16 $55
    xor $85                                       ; $6d46: $ee $85
    nop                                           ; $6d48: $00
    ld a, l                                       ; $6d49: $7d
    inc e                                         ; $6d4a: $1c
    ld b, [hl]                                    ; $6d4b: $46
    cp h                                          ; $6d4c: $bc
    jp c, $d18f                                   ; $6d4d: $da $8f $d1

    ld c, e                                       ; $6d50: $4b
    dec sp                                        ; $6d51: $3b
    ld l, b                                       ; $6d52: $68
    add h                                         ; $6d53: $84
    ld b, a                                       ; $6d54: $47
    ld d, d                                       ; $6d55: $52
    db $eb                                        ; $6d56: $eb
    db $fd                                        ; $6d57: $fd
    ld a, [de]                                    ; $6d58: $1a
    daa                                           ; $6d59: $27
    cp c                                          ; $6d5a: $b9
    ld a, b                                       ; $6d5b: $78
    ld d, $a1                                     ; $6d5c: $16 $a1
    jr nz, @+$04                                  ; $6d5e: $20 $02

    or a                                          ; $6d60: $b7
    jr c, jr_053_6d19                             ; $6d61: $38 $b6

    rla                                           ; $6d63: $17
    ld e, h                                       ; $6d64: $5c
    jp c, $b7a9                                   ; $6d65: $da $a9 $b7

    ld hl, sp+$64                                 ; $6d68: $f8 $64
    ret                                           ; $6d6a: $c9


    sbc a                                         ; $6d6b: $9f
    db $e4                                        ; $6d6c: $e4
    cp b                                          ; $6d6d: $b8
    rra                                           ; $6d6e: $1f
    and e                                         ; $6d6f: $a3
    ld [hl], a                                    ; $6d70: $77
    call c, $a782                                 ; $6d71: $dc $82 $a7
    inc e                                         ; $6d74: $1c
    ld h, $d9                                     ; $6d75: $26 $d9
    ld [hl], b                                    ; $6d77: $70
    ld [hl], a                                    ; $6d78: $77
    ld e, e                                       ; $6d79: $5b
    and [hl]                                      ; $6d7a: $a6
    db $f4                                        ; $6d7b: $f4
    ld h, c                                       ; $6d7c: $61
    ld l, d                                       ; $6d7d: $6a
    and c                                         ; $6d7e: $a1
    db $e3                                        ; $6d7f: $e3
    ld [de], a                                    ; $6d80: $12
    rst $28                                       ; $6d81: $ef
    ld a, b                                       ; $6d82: $78
    jp z, Jump_000_1961                           ; $6d83: $ca $61 $19

    jp $acdd                                      ; $6d86: $c3 $dd $ac


    ld a, [hl-]                                   ; $6d89: $3a
    ld e, l                                       ; $6d8a: $5d
    db $10                                        ; $6d8b: $10
    ld bc, $e7b7                                  ; $6d8c: $01 $b7 $e7
    ld a, [de]                                    ; $6d8f: $1a
    sub c                                         ; $6d90: $91
    cp b                                          ; $6d91: $b8
    add $95                                       ; $6d92: $c6 $95
    ld e, e                                       ; $6d94: $5b
    jp Jump_053_644f                              ; $6d95: $c3 $4f $64


    db $f4                                        ; $6d98: $f4
    rla                                           ; $6d99: $17
    pop af                                        ; $6d9a: $f1
    sbc c                                         ; $6d9b: $99
    ld [hl-], a                                   ; $6d9c: $32
    cpl                                           ; $6d9d: $2f
    db $fd                                        ; $6d9e: $fd
    jp z, Jump_053_5beb                           ; $6d9f: $ca $eb $5b

    add $a5                                       ; $6da2: $c6 $a5
    ld l, c                                       ; $6da4: $69
    call $5f87                                    ; $6da5: $cd $87 $5f
    or d                                          ; $6da8: $b2
    sub e                                         ; $6da9: $93
    pop af                                        ; $6daa: $f1
    ret z                                         ; $6dab: $c8

    ld [hl], a                                    ; $6dac: $77
    adc [hl]                                      ; $6dad: $8e
    ld l, e                                       ; $6dae: $6b
    add h                                         ; $6daf: $84
    dec de                                        ; $6db0: $1b
    jp $fe01                                      ; $6db1: $c3 $01 $fe


    jp $24d4                                      ; $6db4: $c3 $d4 $24


    rst $00                                       ; $6db7: $c7
    sub c                                         ; $6db8: $91
    push de                                       ; $6db9: $d5
    sub l                                         ; $6dba: $95
    ld a, b                                       ; $6dbb: $78
    sub d                                         ; $6dbc: $92
    dec l                                         ; $6dbd: $2d
    dec sp                                        ; $6dbe: $3b
    xor h                                         ; $6dbf: $ac
    adc c                                         ; $6dc0: $89
    pop de                                        ; $6dc1: $d1
    dec [hl]                                      ; $6dc2: $35
    cp d                                          ; $6dc3: $ba
    xor e                                         ; $6dc4: $ab
    sub [hl]                                      ; $6dc5: $96
    db $fc                                        ; $6dc6: $fc
    pop de                                        ; $6dc7: $d1
    ld e, a                                       ; $6dc8: $5f
    call nz, $f535                                ; $6dc9: $c4 $35 $f5
    dec b                                         ; $6dcc: $05
    xor $be                                       ; $6dcd: $ee $be
    ld [$a64a], a                                 ; $6dcf: $ea $4a $a6
    inc l                                         ; $6dd2: $2c
    ld [c], a                                     ; $6dd3: $e2
    pop de                                        ; $6dd4: $d1
    ld e, l                                       ; $6dd5: $5d
    ld [hl], l                                    ; $6dd6: $75
    jr @+$24                                      ; $6dd7: $18 $22

    rst $30                                       ; $6dd9: $f7
    sub d                                         ; $6dda: $92
    ld h, h                                       ; $6ddb: $64
    ld a, e                                       ; $6ddc: $7b

Jump_053_6ddd:
    add c                                         ; $6ddd: $81
    rst $30                                       ; $6dde: $f7
    ld h, e                                       ; $6ddf: $63
    db $f4                                        ; $6de0: $f4
    sub h                                         ; $6de1: $94
    ld h, l                                       ; $6de2: $65
    ld h, l                                       ; $6de3: $65
    ld h, [hl]                                    ; $6de4: $66
    adc a                                         ; $6de5: $8f
    adc $35                                       ; $6de6: $ce $35
    push hl                                       ; $6de8: $e5
    nop                                           ; $6de9: $00
    ld [hl], a                                    ; $6dea: $77
    rst $20                                       ; $6deb: $e7
    sub e                                         ; $6dec: $93
    inc de                                        ; $6ded: $13
    dec sp                                        ; $6dee: $3b
    sbc [hl]                                      ; $6def: $9e
    or d                                          ; $6df0: $b2
    adc b                                         ; $6df1: $88
    ld [hl], a                                    ; $6df2: $77
    ld hl, sp+$25                                 ; $6df3: $f8 $25
    sub [hl]                                      ; $6df5: $96
    sub c                                         ; $6df6: $91
    rst $28                                       ; $6df7: $ef
    inc e                                         ; $6df8: $1c
    rst $10                                       ; $6df9: $d7
    jp nc, Jump_053_6556                          ; $6dfa: $d2 $56 $65

    adc b                                         ; $6dfd: $88
    nop                                           ; $6dfe: $00
    or a                                          ; $6dff: $b7
    sub a                                         ; $6e00: $97
    or c                                          ; $6e01: $b1

jr_053_6e02:
    ld [hl], d                                    ; $6e02: $72
    di                                            ; $6e03: $f3
    reti                                          ; $6e04: $d9


    adc a                                         ; $6e05: $8f
    pop de                                        ; $6e06: $d1
    cp l                                          ; $6e07: $bd
    sub $ad                                       ; $6e08: $d6 $ad

jr_053_6e0a:
    adc a                                         ; $6e0a: $8f
    rl d                                          ; $6e0b: $cb $12
    ld e, h                                       ; $6e0d: $5c
    ld c, e                                       ; $6e0e: $4b
    cp $39                                        ; $6e0f: $fe $39
    inc a                                         ; $6e11: $3c
    bit 1, [hl]                                   ; $6e12: $cb $4e
    jp nc, $f157                                  ; $6e14: $d2 $57 $f1

    ld c, $e9                                     ; $6e17: $0e $e9
    di                                            ; $6e19: $f3
    db $dd                                        ; $6e1a: $dd
    jp c, $bf0e                                   ; $6e1b: $da $0e $bf

    inc b                                         ; $6e1e: $04
    jp nz, Jump_053_60f5                          ; $6e1f: $c2 $f5 $60

    inc c                                         ; $6e22: $0c
    ld hl, $e3ec                                  ; $6e23: $21 $ec $e3
    jr nc, jr_053_6e0a                            ; $6e26: $30 $e2

    push de                                       ; $6e28: $d5
    inc l                                         ; $6e29: $2c
    ei                                            ; $6e2a: $fb
    xor d                                         ; $6e2b: $aa
    ld l, a                                       ; $6e2c: $6f
    ld [$0221], sp                                ; $6e2d: $08 $21 $02
    add hl, hl                                    ; $6e30: $29
    sbc $a1                                       ; $6e31: $de $a1
    or h                                          ; $6e33: $b4
    db $eb                                        ; $6e34: $eb
    ld a, c                                       ; $6e35: $79
    ld d, l                                       ; $6e36: $55
    sbc d                                         ; $6e37: $9a
    db $dd                                        ; $6e38: $dd
    sub a                                         ; $6e39: $97
    sbc c                                         ; $6e3a: $99
    ld e, l                                       ; $6e3b: $5d
    jp c, $ae11                                   ; $6e3c: $da $11 $ae

    ld de, $96af                                  ; $6e3f: $11 $af $96
    db $fc                                        ; $6e42: $fc
    dec e                                         ; $6e43: $1d
    ld a, [hl]                                    ; $6e44: $7e
    adc c                                         ; $6e45: $89
    ld h, l                                       ; $6e46: $65
    ld [hl], h                                    ; $6e47: $74
    xor [hl]                                      ; $6e48: $ae
    add hl, hl                                    ; $6e49: $29
    rlca                                          ; $6e4a: $07
    cp b                                          ; $6e4b: $b8
    ld l, [hl]                                    ; $6e4c: $6e
    res 1, b                                      ; $6e4d: $cb $88
    ld d, a                                       ; $6e4f: $57
    or e                                          ; $6e50: $b3
    db $ec                                        ; $6e51: $ec
    adc e                                         ; $6e52: $8b
    jr c, jr_053_6e02                             ; $6e53: $38 $ad

    add hl, bc                                    ; $6e55: $09
    ld l, d                                       ; $6e56: $6a
    add b                                         ; $6e57: $80
    ccf                                           ; $6e58: $3f
    ld c, c                                       ; $6e59: $49
    ld e, d                                       ; $6e5a: $5a
    ld d, h                                       ; $6e5b: $54
    cp [hl]                                       ; $6e5c: $be
    ld h, h                                       ; $6e5d: $64
    add hl, sp                                    ; $6e5e: $39
    inc l                                         ; $6e5f: $2c
    dec h                                         ; $6e60: $25
    cp [hl]                                       ; $6e61: $be
    ld l, d                                       ; $6e62: $6a
    adc a                                         ; $6e63: $8f
    ld sp, hl                                     ; $6e64: $f9
    rrca                                          ; $6e65: $0f
    sub b                                         ; $6e66: $90
    db $e4                                        ; $6e67: $e4
    ld c, e                                       ; $6e68: $4b
    add sp, $5c                                   ; $6e69: $e8 $5c
    cp b                                          ; $6e6b: $b8
    cp c                                          ; $6e6c: $b9
    or h                                          ; $6e6d: $b4
    dec sp                                        ; $6e6e: $3b
    add hl, de                                    ; $6e6f: $19
    cpl                                           ; $6e70: $2f
    db $ed                                        ; $6e71: $ed
    inc de                                        ; $6e72: $13
    dec [hl]                                      ; $6e73: $35
    call z, $e1ae                                 ; $6e74: $cc $ae $e1
    call z, $bfa3                                 ; $6e77: $cc $a3 $bf
    ld b, l                                       ; $6e7a: $45
    ld [hl], c                                    ; $6e7b: $71
    ei                                            ; $6e7c: $fb
    ld h, c                                       ; $6e7d: $61
    ld hl, sp-$7b                                 ; $6e7e: $f8 $85
    rrca                                          ; $6e80: $0f
    ld de, $5b77                                  ; $6e81: $11 $77 $5b
    sub $71                                       ; $6e84: $d6 $71
    ld e, b                                       ; $6e86: $58
    ld a, h                                       ; $6e87: $7c
    or d                                          ; $6e88: $b2
    rra                                           ; $6e89: $1f
    and e                                         ; $6e8a: $a3
    sub a                                         ; $6e8b: $97
    ld [hl], $bf                                  ; $6e8c: $36 $bf
    and $d1                                       ; $6e8e: $e6 $d1
    cp c                                          ; $6e90: $b9
    and [hl]                                      ; $6e91: $a6
    inc l                                         ; $6e92: $2c
    db $10                                        ; $6e93: $10
    ld bc, $35bd                                  ; $6e94: $01 $bd $35
    and c                                         ; $6e97: $a1
    cp [hl]                                       ; $6e98: $be
    ld a, [de]                                    ; $6e99: $1a
    pop af                                        ; $6e9a: $f1
    ld l, d                                       ; $6e9b: $6a
    cp c                                          ; $6e9c: $b9
    sub h                                         ; $6e9d: $94
    sbc b                                         ; $6e9e: $98
    add a                                         ; $6e9f: $87
    xor l                                         ; $6ea0: $ad
    or $78                                        ; $6ea1: $f6 $78
    ret                                           ; $6ea3: $c9


    rra                                           ; $6ea4: $1f
    sub a                                         ; $6ea5: $97
    ld h, e                                       ; $6ea6: $63
    ld [hl], h                                    ; $6ea7: $74
    db $ed                                        ; $6ea8: $ed
    ld a, [c]                                     ; $6ea9: $f2
    res 5, a                                      ; $6eaa: $cb $af
    rst $18                                       ; $6eac: $df
    ld sp, hl                                     ; $6ead: $f9
    ld b, c                                       ; $6eae: $41
    cp c                                          ; $6eaf: $b9
    ld b, [hl]                                    ; $6eb0: $46
    ld d, d                                       ; $6eb1: $52
    ld d, e                                       ; $6eb2: $53
    ld e, a                                       ; $6eb3: $5f
    halt                                          ; $6eb4: $76
    ld a, e                                       ; $6eb5: $7b
    ei                                            ; $6eb6: $fb
    dec d                                         ; $6eb7: $15
    ld [hl-], a                                   ; $6eb8: $32
    di                                            ; $6eb9: $f3
    dec h                                         ; $6eba: $25
    ld sp, $670b                                  ; $6ebb: $31 $0b $67
    jr c, @-$7e                                   ; $6ebe: $38 $80

    cpl                                           ; $6ec0: $2f
    add $d1                                       ; $6ec1: $c6 $d1
    cp c                                          ; $6ec3: $b9
    ld b, [hl]                                    ; $6ec4: $46
    inc a                                         ; $6ec5: $3c
    ld d, c                                       ; $6ec6: $51
    ld l, [hl]                                    ; $6ec7: $6e
    ld d, $b8                                     ; $6ec8: $16 $b8
    inc d                                         ; $6eca: $14
    ld a, [hl]                                    ; $6ecb: $7e
    adc c                                         ; $6ecc: $89
    ld h, l                                       ; $6ecd: $65
    ld [$4ecb], a                                 ; $6ece: $ea $cb $4e
    ld a, h                                       ; $6ed1: $7c
    ld l, l                                       ; $6ed2: $6d
    sub d                                         ; $6ed3: $92
    db $e3                                        ; $6ed4: $e3
    ld h, d                                       ; $6ed5: $62
    add $d8                                       ; $6ed6: $c6 $d8
    db $e3                                        ; $6ed8: $e3
    rst $18                                       ; $6ed9: $df
    ld d, $b2                                     ; $6eda: $16 $b2
    sbc d                                         ; $6edc: $9a
    ld l, b                                       ; $6edd: $68
    sbc b                                         ; $6ede: $98
    dec c                                         ; $6edf: $0d
    ld de, $4efd                                  ; $6ee0: $11 $fd $4e
    db $fc                                        ; $6ee3: $fc
    or l                                          ; $6ee4: $b5
    db $eb                                        ; $6ee5: $eb
    ld a, c                                       ; $6ee6: $79
    ld d, l                                       ; $6ee7: $55
    sbc d                                         ; $6ee8: $9a
    db $dd                                        ; $6ee9: $dd
    sub a                                         ; $6eea: $97
    sbc c                                         ; $6eeb: $99
    ld e, l                                       ; $6eec: $5d
    jp c, $8bf1                                   ; $6eed: $da $f1 $8b

    ld de, $f722                                  ; $6ef0: $11 $22 $f7
    ld d, l                                       ; $6ef3: $55
    ld d, a                                       ; $6ef4: $57
    ld [hl-], a                                   ; $6ef5: $32
    ld h, l                                       ; $6ef6: $65
    ld de, $b0df                                  ; $6ef7: $11 $df $b0
    ld l, [hl]                                    ; $6efa: $6e
    bit 3, h                                      ; $6efb: $cb $5c
    ld a, e                                       ; $6efd: $7b

Call_053_6efe:
    ret                                           ; $6efe: $c9


    ld h, d                                       ; $6eff: $62
    db $fd                                        ; $6f00: $fd

jr_053_6f01:
    jp Jump_053_4b9c                              ; $6f01: $c3 $9c $4b


    add [hl]                                      ; $6f04: $86
    xor l                                         ; $6f05: $ad
    ld h, [hl]                                    ; $6f06: $66
    ld e, c                                       ; $6f07: $59
    db $ec                                        ; $6f08: $ec
    cp b                                          ; $6f09: $b8
    call nz, $c97b                                ; $6f0a: $c4 $7b $c9
    add sp, $2e                                   ; $6f0d: $e8 $2e
    ld sp, hl                                     ; $6f0f: $f9
    pop af                                        ; $6f10: $f1
    ld e, h                                       ; $6f11: $5c
    ld b, d                                       ; $6f12: $42

jr_053_6f13:
    ld [hl], a                                    ; $6f13: $77
    ld a, [$882a]                                 ; $6f14: $fa $2a $88
    nop                                           ; $6f17: $00
    cp l                                          ; $6f18: $bd
    or e                                          ; $6f19: $b3
    sbc d                                         ; $6f1a: $9a
    ld a, d                                       ; $6f1b: $7a
    ld b, c                                       ; $6f1c: $41
    dec sp                                        ; $6f1d: $3b
    ld e, l                                       ; $6f1e: $5d
    add d                                         ; $6f1f: $82
    add a                                         ; $6f20: $87
    sbc a                                         ; $6f21: $9f
    ld [$6ddc], sp                                ; $6f22: $08 $dc $6d
    dec [hl]                                      ; $6f25: $35
    and l                                         ; $6f26: $a5
    adc a                                         ; $6f27: $8f
    xor $aa                                       ; $6f28: $ee $aa
    jp $ed8e                                      ; $6f2a: $c3 $8e $ed


    sbc l                                         ; $6f2d: $9d
    di                                            ; $6f2e: $f3
    dec h                                         ; $6f2f: $25
    db $f4                                        ; $6f30: $f4
    ld b, d                                       ; $6f31: $42
    add hl, hl                                    ; $6f32: $29
    ld a, [c]                                     ; $6f33: $f2
    adc d                                         ; $6f34: $8a
    or l                                          ; $6f35: $b5
    dec sp                                        ; $6f36: $3b
    inc d                                         ; $6f37: $14
    ld b, h                                       ; $6f38: $44
    db $dd                                        ; $6f39: $dd
    ld l, a                                       ; $6f3a: $6f
    pop af                                        ; $6f3b: $f1
    ret                                           ; $6f3c: $c9


    ld a, [hl-]                                   ; $6f3d: $3a
    ld c, $eb                                     ; $6f3e: $0e $eb
    db $e4                                        ; $6f40: $e4
    db $fd                                        ; $6f41: $fd
    jr jr_053_6f01                                ; $6f42: $18 $bd

    db $e3                                        ; $6f44: $e3
    ld d, $3c                                     ; $6f45: $16 $3c
    push hl                                       ; $6f47: $e5
    jr nc, jr_053_6f13                            ; $6f48: $30 $c9

    sub $2e                                       ; $6f4a: $d6 $2e
    ld sp, $e94f                                  ; $6f4c: $31 $4f $e9
    dec sp                                        ; $6f4f: $3b
    ccf                                           ; $6f50: $3f
    ld b, [hl]                                    ; $6f51: $46
    rla                                           ; $6f52: $17
    jp Jump_053_6ddd                              ; $6f53: $c3 $dd $6d


    ld e, c                                       ; $6f56: $59
    ld a, [$7795]                                 ; $6f57: $fa $95 $77
    inc a                                         ; $6f5a: $3c
    push hl                                       ; $6f5b: $e5
    or b                                          ; $6f5c: $b0
    adc h                                         ; $6f5d: $8c
    ld [hl], a                                    ; $6f5e: $77
    xor b                                         ; $6f5f: $a8
    ld h, c                                       ; $6f60: $61
    adc l                                         ; $6f61: $8d
    and a                                         ; $6f62: $a7
    db $f4                                        ; $6f63: $f4
    dec h                                         ; $6f64: $25
    cp a                                          ; $6f65: $bf
    ld b, c                                       ; $6f66: $41
    inc b                                         ; $6f67: $04
    scf                                           ; $6f68: $37
    inc de                                        ; $6f69: $13
    jp c, $a659                                   ; $6f6a: $da $59 $a6

    ld c, e                                       ; $6f6d: $4b
    sbc b                                         ; $6f6e: $98
    sbc e                                         ; $6f6f: $9b
    inc de                                        ; $6f70: $13
    cp b                                          ; $6f71: $b8
    ld l, [hl]                                    ; $6f72: $6e
    sub a                                         ; $6f73: $97
    rst $20                                       ; $6f74: $e7
    jp c, $8d6b                                   ; $6f75: $da $6b $8d

    cp a                                          ; $6f78: $bf
    ld e, d                                       ; $6f79: $5a
    ld [c], a                                     ; $6f7a: $e2
    ld d, $33                                     ; $6f7b: $16 $33
    ld d, $8f                                     ; $6f7d: $16 $8f
    ret z                                         ; $6f7f: $c8

    ld h, a                                       ; $6f80: $67
    add hl, hl                                    ; $6f81: $29
    ld a, [c]                                     ; $6f82: $f2
    dec bc                                        ; $6f83: $0b
    ld [hl], h                                    ; $6f84: $74
    ld [hl], h                                    ; $6f85: $74
    ld e, e                                       ; $6f86: $5b
    ld a, a                                       ; $6f87: $7f
    cp e                                          ; $6f88: $bb
    and l                                         ; $6f89: $a5
    push af                                       ; $6f8a: $f5
    dec d                                         ; $6f8b: $15
    pop hl                                        ; $6f8c: $e1
    ld l, [hl]                                    ; $6f8d: $6e
    rst $28                                       ; $6f8e: $ef
    xor d                                         ; $6f8f: $aa
    jp Jump_053_551e                              ; $6f90: $c3 $1e $55


    and $91                                       ; $6f93: $e6 $91
    call nc, $bf7a                                ; $6f95: $d4 $7a $bf
    add $49                                       ; $6f98: $c6 $49
    ld l, $ee                                     ; $6f9a: $2e $ee
    add l                                         ; $6f9c: $85
    nop                                           ; $6f9d: $00
    ld a, l                                       ; $6f9e: $7d
    ld e, $44                                     ; $6f9f: $1e $44
    dec a                                         ; $6fa1: $3d
    xor [hl]                                      ; $6fa2: $ae
    ld de, $96af                                  ; $6fa3: $11 $af $96
    db $fc                                        ; $6fa6: $fc
    and l                                         ; $6fa7: $a5
    cp e                                          ; $6fa8: $bb
    and d                                         ; $6fa9: $a2
    push bc                                       ; $6faa: $c5
    ld d, e                                       ; $6fab: $53
    ld a, [$2cb8]                                 ; $6fac: $fa $b8 $2c
    pop bc                                        ; $6faf: $c1
    and l                                         ; $6fb0: $a5
    dec e                                         ; $6fb1: $1d
    db $ed                                        ; $6fb2: $ed
    ld d, d                                       ; $6fb3: $52
    ccf                                           ; $6fb4: $3f
    db $ec                                        ; $6fb5: $ec
    db $e4                                        ; $6fb6: $e4
    ld h, d                                       ; $6fb7: $62
    rla                                           ; $6fb8: $17
    jp $9b75                                      ; $6fb9: $c3 $75 $9b


    sub a                                         ; $6fbc: $97
    ld l, [hl]                                    ; $6fbd: $6e
    cp a                                          ; $6fbe: $bf
    halt                                          ; $6fbf: $76
    ld sp, hl                                     ; $6fc0: $f9
    ld d, l                                       ; $6fc1: $55
    ld d, a                                       ; $6fc2: $57
    xor $fc                                       ; $6fc3: $ee $fc
    and b                                         ; $6fc5: $a0
    ld e, h                                       ; $6fc6: $5c
    db $10                                        ; $6fc7: $10
    ld bc, $5f00                                  ; $6fc8: $01 $00 $5f
    adc h                                         ; $6fcb: $8c
    and e                                         ; $6fcc: $a3
    ld [hl], e                                    ; $6fcd: $73
    db $ed                                        ; $6fce: $ed
    pop af                                        ; $6fcf: $f1
    sub h                                         ; $6fd0: $94
    ld a, $e2                                     ; $6fd1: $3e $e2
    adc c                                         ; $6fd3: $89
    ld l, d                                       ; $6fd4: $6a
    xor [hl]                                      ; $6fd5: $ae
    ld de, $2cf9                                  ; $6fd6: $11 $f9 $2c
    ld b, l                                       ; $6fd9: $45
    ld a, [hl]                                    ; $6fda: $7e
    add c                                         ; $6fdb: $81
    adc [hl]                                      ; $6fdc: $8e
    ld l, [hl]                                    ; $6fdd: $6e
    db $eb                                        ; $6fde: $eb
    ld l, a                                       ; $6fdf: $6f
    or a                                          ; $6fe0: $b7
    or h                                          ; $6fe1: $b4
    cp [hl]                                       ; $6fe2: $be
    ld [hl+], a                                   ; $6fe3: $22
    call c, $9a5d                                 ; $6fe4: $dc $5d $9a
    jr jr_053_7026                                ; $6fe7: $18 $3d

    cp $6d                                        ; $6fe9: $fe $6d
    ret c                                         ; $6feb: $d8

    ld l, d                                       ; $6fec: $6a
    call Call_053_4be7                            ; $6fed: $cd $e7 $4b
    or b                                          ; $6ff0: $b0
    and h                                         ; $6ff1: $a4
    ld b, [hl]                                    ; $6ff2: $46
    add hl, hl                                    ; $6ff3: $29
    call nc, $c6b0                                ; $6ff4: $d4 $b0 $c6
    inc hl                                        ; $6ff7: $23
    ld e, [hl]                                    ; $6ff8: $5e
    xor l                                         ; $6ff9: $ad
    db $e3                                        ; $6ffa: $e3
    or b                                          ; $6ffb: $b0
    rra                                           ; $6ffc: $1f
    and e                                         ; $6ffd: $a3
    ld hl, $2902                                  ; $6ffe: $21 $02 $29
    ld a, [de]                                    ; $7001: $1a
    ld d, c                                       ; $7002: $51
    ld [hl], b                                    ; $7003: $70
    ld [hl], a                                    ; $7004: $77
    ld e, e                                       ; $7005: $5b
    and [hl]                                      ; $7006: $a6
    db $f4                                        ; $7007: $f4
    push bc                                       ; $7008: $c5
    adc h                                         ; $7009: $8c
    or c                                          ; $700a: $b1
    ld l, e                                       ; $700b: $6b
    sub d                                         ; $700c: $92
    db $e3                                        ; $700d: $e3
    ld a, [hl]                                    ; $700e: $7e
    add sp, $58                                   ; $700f: $e8 $58
    jr nz, jr_053_7015                            ; $7011: $20 $02

    ld a, l                                       ; $7013: $7d
    inc e                                         ; $7014: $1c

jr_053_7015:
    halt                                          ; $7015: $76
    and d                                         ; $7016: $a2
    sbc $9a                                       ; $7017: $de $9a
    ld [hl], a                                    ; $7019: $77
    call c, $c782                                 ; $701a: $dc $82 $c7
    cp a                                          ; $701d: $bf
    and l                                         ; $701e: $a5
    ld e, a                                       ; $701f: $5f
    db $f4                                        ; $7020: $f4
    call nc, $c73f                                ; $7021: $d4 $3f $c7
    ld c, e                                       ; $7024: $4b
    sub a                                         ; $7025: $97

jr_053_7026:
    ld e, $d9                                     ; $7026: $1e $d9
    ld c, e                                       ; $7028: $4b
    ld [hl], a                                    ; $7029: $77
    ld b, l                                       ; $702a: $45
    adc e                                         ; $702b: $8b
    ld hl, $0002                                  ; $702c: $21 $02 $00
    dec sp                                        ; $702f: $3b
    rrca                                          ; $7030: $0f
    xor [hl]                                      ; $7031: $ae
    adc a                                         ; $7032: $8f
    jp $2b5c                                      ; $7033: $c3 $5c $2b


    dec hl                                        ; $7036: $2b
    or l                                          ; $7037: $b5
    db $e4                                        ; $7038: $e4
    rst $28                                       ; $7039: $ef
    rst $00                                       ; $703a: $c7
    add sp, -$3b                                  ; $703b: $e8 $c5
    daa                                           ; $703d: $27
    dec bc                                        ; $703e: $0b
    ld a, a                                       ; $703f: $7f
    jp z, $d861                                   ; $7040: $ca $61 $d8

    dec [hl]                                      ; $7043: $35
    adc e                                         ; $7044: $8b
    db $ec                                        ; $7045: $ec
    ld a, [c]                                     ; $7046: $f2
    dec hl                                        ; $7047: $2b
    xor [hl]                                      ; $7048: $ae

jr_053_7049:
    call c, Call_053_41f9                         ; $7049: $dc $f9 $41
    cp c                                          ; $704c: $b9
    ld b, [hl]                                    ; $704d: $46
    rst $20                                       ; $704e: $e7
    sbc d                                         ; $704f: $9a
    ld a, [$18e7]                                 ; $7050: $fa $e7 $18
    ld [hl+], a                                   ; $7053: $22
    dec a                                         ; $7054: $3d
    xor a                                         ; $7055: $af
    and [hl]                                      ; $7056: $a6
    db $f4                                        ; $7057: $f4
    and l                                         ; $7058: $a5
    ld a, l                                       ; $7059: $7d
    ret c                                         ; $705a: $d8

    sbc b                                         ; $705b: $98
    and a                                         ; $705c: $a7
    inc e                                         ; $705d: $1c
    ld b, [hl]                                    ; $705e: $46
    rst $20                                       ; $705f: $e7
    sbc d                                         ; $7060: $9a
    ld a, [$78e7]                                 ; $7061: $fa $e7 $78
    jp hl                                         ; $7064: $e9


    xor [hl]                                      ; $7065: $ae
    ld l, b                                       ; $7066: $68
    ld [hl], c                                    ; $7067: $71
    cpl                                           ; $7068: $2f
    inc b                                         ; $7069: $04
    add b                                         ; $706a: $80
    db $dd                                        ; $706b: $dd
    ld h, d                                       ; $706c: $62
    add $d8                                       ; $706d: $c6 $d8
    ld [hl-], a                                   ; $706f: $32
    cp $6d                                        ; $7070: $fe $6d
    jp hl                                         ; $7072: $e9


    inc e                                         ; $7073: $1c
    adc c                                         ; $7074: $89
    daa                                           ; $7075: $27
    jp z, $b2cd                                   ; $7076: $ca $cd $b2

    inc d                                         ; $7079: $14
    ld sp, hl                                     ; $707a: $f9
    dec b                                         ; $707b: $05
    ld a, [hl-]                                   ; $707c: $3a
    cp d                                          ; $707d: $ba
    xor l                                         ; $707e: $ad
    cp a                                          ; $707f: $bf
    db $dd                                        ; $7080: $dd
    jp nc, $8afa                                  ; $7081: $d2 $fa $8a

    ld [hl], b                                    ; $7084: $70
    add b                                         ; $7085: $80
    rst $38                                       ; $7086: $ff
    ld [c], a                                     ; $7087: $e2
    sub e                                         ; $7088: $93
    db $fd                                        ; $7089: $fd
    jr jr_053_7049                                ; $708a: $18 $bd

    or h                                          ; $708c: $b4
    cp c                                          ; $708d: $b9
    ld h, e                                       ; $708e: $63
    pop af                                        ; $708f: $f1
    and d                                         ; $7090: $a2
    ld l, $ca                                     ; $7091: $2e $ca
    dec [hl]                                      ; $7093: $35
    ld a, [hl-]                                   ; $7094: $3a
    rst $10                                       ; $7095: $d7
    cp d                                          ; $7096: $ba
    inc [hl]                                      ; $7097: $34
    ld c, [hl]                                    ; $7098: $4e
    or a                                          ; $7099: $b7
    rra                                           ; $709a: $1f
    and e                                         ; $709b: $a3
    add hl, de                                    ; $709c: $19
    ld b, d                                       ; $709d: $42
    sbc b                                         ; $709e: $98
    db $fc                                        ; $709f: $fc
    ld de, $46af                                  ; $70a0: $11 $af $46
    ld d, e                                       ; $70a3: $53
    call z, $8f33                                 ; $70a4: $cc $33 $8f
    ld a, b                                       ; $70a7: $78
    and l                                         ; $70a8: $a5
    ld a, b                                       ; $70a9: $78
    ld c, a                                       ; $70aa: $4f
    ld b, d                                       ; $70ab: $42
    sbc c                                         ; $70ac: $99
    call c, $964b                                 ; $70ad: $dc $4b $96
    adc $31                                       ; $70b0: $ce $31
    rla                                           ; $70b2: $17
    halt                                          ; $70b3: $76
    pop bc                                        ; $70b4: $c1
    db $dd                                        ; $70b5: $dd
    ld l, l                                       ; $70b6: $6d
    ld e, c                                       ; $70b7: $59
    call z, $1678                                 ; $70b8: $cc $78 $16
    push hl                                       ; $70bb: $e5
    or $c3                                        ; $70bc: $f6 $c3
    adc [hl]                                      ; $70be: $8e
    cp h                                          ; $70bf: $bc
    ld [c], a                                     ; $70c0: $e2
    db $fd                                        ; $70c1: $fd
    ret nc                                        ; $70c2: $d0

    or c                                          ; $70c3: $b1
    ld b, b                                       ; $70c4: $40
    inc b                                         ; $70c5: $04
    dec a                                         ; $70c6: $3d
    cp $da                                        ; $70c7: $fe $da
    ld [hl], l                                    ; $70c9: $75
    inc e                                         ; $70ca: $1c
    ld b, [hl]                                    ; $70cb: $46
    sbc b                                         ; $70cc: $98
    ld e, l                                       ; $70cd: $5d
    db $eb                                        ; $70ce: $eb
    xor [hl]                                      ; $70cf: $ae
    rlca                                          ; $70d0: $07
    ld a, [hl-]                                   ; $70d1: $3a
    rst $28                                       ; $70d2: $ef
    xor $d7                                       ; $70d3: $ee $d7
    add sp, $27                                   ; $70d5: $e8 $27
    ld bc, $37ae                                  ; $70d7: $01 $ae $37
    ld d, l                                       ; $70da: $55
    ld d, e                                       ; $70db: $53
    ld a, [$6a48]                                 ; $70dc: $fa $48 $6a
    cp l                                          ; $70df: $bd
    ld e, a                                       ; $70e0: $5f
    db $e3                                        ; $70e1: $e3
    inc h                                         ; $70e2: $24
    rla                                           ; $70e3: $17
    rst $30                                       ; $70e4: $f7
    ld b, d                                       ; $70e5: $42
    add hl, hl                                    ; $70e6: $29
    ld a, [c]                                     ; $70e7: $f2
    adc d                                         ; $70e8: $8a
    or l                                          ; $70e9: $b5

jr_053_70ea:
    dec sp                                        ; $70ea: $3b
    inc d                                         ; $70eb: $14
    ld b, h                                       ; $70ec: $44
    ld a, l                                       ; $70ed: $7d
    inc e                                         ; $70ee: $1c
    sub $4f                                       ; $70ef: $d6 $4f
    add b                                         ; $70f1: $80
    db $eb                                        ; $70f2: $eb
    db $e3                                        ; $70f3: $e3
    or b                                          ; $70f4: $b0
    ld b, e                                       ; $70f5: $43
    ld c, l                                       ; $70f6: $4d
    add hl, sp                                    ; $70f7: $39
    ld c, h                                       ; $70f8: $4c
    call z, $499c                                 ; $70f9: $cc $9c $49
    ld [hl], d                                    ; $70fc: $72
    ret c                                         ; $70fd: $d8

    ld l, d                                       ; $70fe: $6a
    jp z, $ba32                                   ; $70ff: $ca $32 $ba

    xor a                                         ; $7102: $af
    and $71                                       ; $7103: $e6 $71
    rst $00                                       ; $7105: $c7
    ld [c], a                                     ; $7106: $e2
    or d                                          ; $7107: $b2
    ld l, b                                       ; $7108: $68

jr_053_7109:
    rst $10                                       ; $7109: $d7
    ld e, e                                       ; $710a: $5b
    inc de                                        ; $710b: $13
    ld [$882b], a                                 ; $710c: $ea $2b $88
    nop                                           ; $710f: $00
    ld a, l                                       ; $7110: $7d
    inc e                                         ; $7111: $1c
    sub $7e                                       ; $7112: $d6 $7e
    ld [hl], h                                    ; $7114: $74
    xor l                                         ; $7115: $ad
    or a                                          ; $7116: $b7
    ld h, $d4                                     ; $7117: $26 $d4
    ld d, a                                       ; $7119: $57
    db $10                                        ; $711a: $10
    ld bc, $3bbd                                  ; $711b: $01 $bd $3b
    ld e, l                                       ; $711e: $5d
    dec [hl]                                      ; $711f: $35
    and l                                         ; $7120: $a5
    ld c, a                                       ; $7121: $4f
    sbc c                                         ; $7122: $99
    ld a, e                                       ; $7123: $7b
    xor l                                         ; $7124: $ad
    rst $20                                       ; $7125: $e7
    ret                                           ; $7126: $c9


    ld e, h                                       ; $7127: $5c
    db $eb                                        ; $7128: $eb
    db $e4                                        ; $7129: $e4
    db $fd                                        ; $712a: $fd
    jr jr_053_70ea                                ; $712b: $18 $bd

    sub e                                         ; $712d: $93
    pop af                                        ; $712e: $f1
    ld a, [c]                                     ; $712f: $f2
    add hl, sp                                    ; $7130: $39
    jp c, Jump_000_07a9                           ; $7131: $da $a9 $07

    rst $10                                       ; $7134: $d7
    di                                            ; $7135: $f3
    ld h, h                                       ; $7136: $64
    xor [hl]                                      ; $7137: $ae
    adc c                                         ; $7138: $89
    rrca                                          ; $7139: $0f
    ld e, e                                       ; $713a: $5b
    sub $7e                                       ; $713b: $d6 $7e
    db $f4                                        ; $713d: $f4
    ld a, [hl]                                    ; $713e: $7e
    ld l, e                                       ; $713f: $6b
    sbc $c9                                       ; $7140: $de $c9
    ld a, b                                       ; $7142: $78
    sub [hl]                                      ; $7143: $96
    add l                                         ; $7144: $85
    adc h                                         ; $7145: $8c
    ld c, c                                       ; $7146: $49
    jr c, jr_053_7109                             ; $7147: $38 $c0

    xor [hl]                                      ; $7149: $ae
    or d                                          ; $714a: $b2
    halt                                          ; $714b: $76
    pop af                                        ; $714c: $f1
    ret                                           ; $714d: $c9


    adc c                                         ; $714e: $89
    dec e                                         ; $714f: $1d
    jp $7601                                      ; $7150: $c3 $01 $76


    db $d3                                        ; $7153: $d3
    xor $b8                                       ; $7154: $ee $b8
    and [hl]                                      ; $7156: $a6
    inc e                                         ; $7157: $1c
    halt                                          ; $7158: $76
    inc l                                         ; $7159: $2c
    ld l, $43                                     ; $715a: $2e $43
    inc b                                         ; $715c: $04
    add b                                         ; $715d: $80
    db $dd                                        ; $715e: $dd
    ld h, d                                       ; $715f: $62
    add $d8                                       ; $7160: $c6 $d8
    ld [hl-], a                                   ; $7162: $32
    cp $6d                                        ; $7163: $fe $6d
    call $a7c1                                    ; $7165: $cd $c1 $a7
    di                                            ; $7168: $f3
    ld c, b                                       ; $7169: $48
    ld a, [c]                                     ; $716a: $f2
    ld l, c                                       ; $716b: $69
    ld [hl], a                                    ; $716c: $77
    call c, $6592                                 ; $716d: $dc $92 $65
    cp h                                          ; $7170: $bc
    adc [hl]                                      ; $7171: $8e
    jp Jump_053_6b8e                              ; $7172: $c3 $8e $6b


    adc a                                         ; $7175: $8f
    and a                                         ; $7176: $a7
    db $f4                                        ; $7177: $f4
    db $fd                                        ; $7178: $fd
    jr jr_053_71b8                                ; $7179: $18 $3d

    rst $10                                       ; $717b: $d7
    ld c, [hl]                                    ; $717c: $4e
    ld a, h                                       ; $717d: $7c
    ld c, d                                       ; $717e: $4a
    ld b, c                                       ; $717f: $41
    inc b                                         ; $7180: $04
    dec a                                         ; $7181: $3d
    ret                                           ; $7182: $c9


    sbc e                                         ; $7183: $9b
    xor d                                         ; $7184: $aa
    sbc a                                         ; $7185: $9f
    cp b                                          ; $7186: $b8
    and [hl]                                      ; $7187: $a6
    db $f4                                        ; $7188: $f4
    ld h, c                                       ; $7189: $61
    xor e                                         ; $718a: $ab
    ld de, $5eae                                  ; $718b: $11 $ae $5e
    ld [$1c7d], sp                                ; $718e: $08 $7d $1c
    ld d, $f5                                     ; $7191: $16 $f5
    ld [hl], d                                    ; $7193: $72
    cp c                                          ; $7194: $b9
    ld b, [hl]                                    ; $7195: $46
    rst $20                                       ; $7196: $e7
    ld d, $77                                     ; $7197: $16 $77
    ld [hl-], a                                   ; $7199: $32
    sbc [hl]                                      ; $719a: $9e
    ld l, e                                       ; $719b: $6b
    jp hl                                         ; $719c: $e9


    or $99                                        ; $719d: $f6 $99
    ld [hl], a                                    ; $719f: $77
    ld [c], a                                     ; $71a0: $e2
    ld d, e                                       ; $71a1: $53
    ld l, d                                       ; $71a2: $6a
    ld a, a                                       ; $71a3: $7f
    db $dd                                        ; $71a4: $dd
    rst $38                                       ; $71a5: $ff
    add l                                         ; $71a6: $85
    inc l                                         ; $71a7: $2c
    xor a                                         ; $71a8: $af
    dec [hl]                                      ; $71a9: $35
    ld l, h                                       ; $71aa: $6c
    sub c                                         ; $71ab: $91
    cpl                                           ; $71ac: $2f
    pop bc                                        ; $71ad: $c1
    ld [bc], a                                    ; $71ae: $02
    ld de, $fc29                                  ; $71af: $11 $29 $fc
    ld h, e                                       ; $71b2: $63
    ld e, h                                       ; $71b3: $5c
    ld a, [$f795]                                 ; $71b4: $fa $95 $f7
    ld b, l                                       ; $71b7: $45

jr_053_71b8:
    ld [hl-], a                                   ; $71b8: $32
    sbc [hl]                                      ; $71b9: $9e
    ld d, b                                       ; $71ba: $50
    dec [hl]                                      ; $71bb: $35
    and l                                         ; $71bc: $a5
    cpl                                           ; $71bd: $2f
    ld sp, hl                                     ; $71be: $f9
    dec c                                         ; $71bf: $0d
    ld [hl+], a                                   ; $71c0: $22
    ld a, l                                       ; $71c1: $7d
    inc e                                         ; $71c2: $1c
    halt                                          ; $71c3: $76
    ld e, h                                       ; $71c4: $5c
    ld d, e                                       ; $71c5: $53
    ld a, [$3b5c]                                 ; $71c6: $fa $5c $3b
    pop af                                        ; $71c9: $f1
    add hl, hl                                    ; $71ca: $29
    dec b                                         ; $71cb: $05
    rlca                                          ; $71cc: $07
    ld hl, sp-$49                                 ; $71cd: $f8 $b7
    add hl, hl                                    ; $71cf: $29
    ld a, l                                       ; $71d0: $7d
    adc a                                         ; $71d1: $8f
    rst $10                                       ; $71d2: $d7
    ld [hl], c                                    ; $71d3: $71
    ret c                                         ; $71d4: $d8

    adc c                                         ; $71d5: $89
    xor a                                         ; $71d6: $af
    dec l                                         ; $71d7: $2d
    ld [$f2e5], a                                 ; $71d8: $ea $e5 $f2
    sub h                                         ; $71db: $94
    ld b, e                                       ; $71dc: $43
    cpl                                           ; $71dd: $2f
    inc b                                         ; $71de: $04
    ld a, l                                       ; $71df: $7d
    sbc $f8                                       ; $71e0: $de $f8
    push bc                                       ; $71e2: $c5
    ld [$93d7], sp                                ; $71e3: $08 $d7 $93
    cp h                                          ; $71e6: $bc
    push bc                                       ; $71e7: $c5
    ld a, h                                       ; $71e8: $7c
    ret c                                         ; $71e9: $d8

    dec [hl]                                      ; $71ea: $35
    ld h, l                                       ; $71eb: $65
    xor $85                                       ; $71ec: $ee $85
    nop                                           ; $71ee: $00
    db $dd                                        ; $71ef: $dd
    and $c5                                       ; $71f0: $e6 $c5
    ld a, h                                       ; $71f2: $7c
    ret c                                         ; $71f3: $d8

    or l                                          ; $71f4: $b5

Jump_053_71f5:
    cpl                                           ; $71f5: $2f
    pop bc                                        ; $71f6: $c1
    ld [hl-], a                                   ; $71f7: $32
    cp $12                                        ; $71f8: $fe $12
    ldh [$ba], a                                  ; $71fa: $e0 $ba
    call Call_000_0d73                            ; $71fc: $cd $73 $0d
    ld a, a                                       ; $71ff: $7f
    add hl, de                                    ; $7200: $19
    reti                                          ; $7201: $d9


    ld a, [hl]                                    ; $7202: $7e
    db $e4                                        ; $7203: $e4
    ld d, c                                       ; $7204: $51
    adc e                                         ; $7205: $8b
    ld a, d                                       ; $7206: $7a
    cp c                                          ; $7207: $b9
    cp h                                          ; $7208: $bc
    rst $10                                       ; $7209: $d7
    sbc d                                         ; $720a: $9a
    ld [hl], a                                    ; $720b: $77
    ld [hl-], a                                   ; $720c: $32
    sbc $21                                       ; $720d: $de $21
    cp e                                          ; $720f: $bb
    ld a, [bc]                                    ; $7210: $0a
    ld [hl+], a                                   ; $7211: $22
    ld a, l                                       ; $7212: $7d
    sbc $f8                                       ; $7213: $de $f8
    push bc                                       ; $7215: $c5
    sbc b                                         ; $7216: $98
    ld a, [de]                                    ; $7217: $1a
    ld bc, $de29                                  ; $7218: $01 $29 $de
    and c                                         ; $721b: $a1
    or h                                          ; $721c: $b4
    inc de                                        ; $721d: $13
    ld l, d                                       ; $721e: $6a
    daa                                           ; $721f: $27
    ld [$79ad], a                                 ; $7220: $ea $ad $79
    jp z, $ba3c                                   ; $7223: $ca $3c $ba

    xor e                                         ; $7226: $ab
    ld sp, hl                                     ; $7227: $f9
    inc l                                         ; $7228: $2c
    ld l, l                                       ; $7229: $6d
    ld d, l                                       ; $722a: $55
    add [hl]                                      ; $722b: $86
    ld [$2e57], sp                                ; $722c: $08 $57 $2e
    ld [$2ecc], a                                 ; $722f: $ea $cc $2e
    inc b                                         ; $7232: $04
    sub a                                         ; $7233: $97
    cpl                                           ; $7234: $2f
    ld sp, hl                                     ; $7235: $f9
    jp nz, $f8ae                                  ; $7236: $c2 $ae $f8

    ld c, b                                       ; $7239: $48
    jp nc, $9708                                  ; $723a: $d2 $08 $97

    rst $28                                       ; $723d: $ef
    sub b                                         ; $723e: $90
    rst $38                                       ; $723f: $ff
    sbc h                                         ; $7240: $9c
    ld de, $198f                                  ; $7241: $11 $8f $19
    ld bc, $8f97                                  ; $7244: $01 $97 $8f
    ld a, h                                       ; $7247: $7c
    dec [hl]                                      ; $7248: $35
    ld [c], a                                     ; $7249: $e2
    ret                                           ; $724a: $c9


    adc c                                         ; $724b: $89
    ld l, $04                                     ; $724c: $2e $04
    sub a                                         ; $724e: $97
    adc a                                         ; $724f: $8f
    ld a, h                                       ; $7250: $7c
    ld sp, $f27a                                  ; $7251: $31 $7a $f2
    ld [de], a                                    ; $7254: $12
    ld [hl], c                                    ; $7255: $71
    ld a, e                                       ; $7256: $7b
    inc h                                         ; $7257: $24
    jp hl                                         ; $7258: $e9


    ld b, d                                       ; $7259: $42
    sub a                                         ; $725a: $97
    rst $08                                       ; $725b: $cf
    db $ed                                        ; $725c: $ed
    rst $00                                       ; $725d: $c7
    di                                            ; $725e: $f3
    db $eb                                        ; $725f: $eb
    sub d                                         ; $7260: $92
    ld h, e                                       ; $7261: $63
    ld h, [hl]                                    ; $7262: $66
    inc b                                         ; $7263: $04
    sub a                                         ; $7264: $97
    rst $28                                       ; $7265: $ef
    sbc b                                         ; $7266: $98
    ld a, c                                       ; $7267: $79
    jp hl                                         ; $7268: $e9


    xor [hl]                                      ; $7269: $ae
    add sp, $1a                                   ; $726a: $e8 $1a
    sbc l                                         ; $726c: $9d
    ld l, e                                       ; $726d: $6b
    sub a                                         ; $726e: $97
    jp $f6c5                                      ; $726f: $c3 $c5 $f6


    adc $31                                       ; $7272: $ce $31
    ld [bc], a                                    ; $7274: $02
    sub a                                         ; $7275: $97
    adc a                                         ; $7276: $8f
    ld [hl], b                                    ; $7277: $70
    inc a                                         ; $7278: $3c
    adc [hl]                                      ; $7279: $8e
    dec e                                         ; $727a: $1d
    scf                                           ; $727b: $37
    inc b                                         ; $727c: $04
    sub a                                         ; $727d: $97
    adc a                                         ; $727e: $8f
    ld c, e                                       ; $727f: $4b
    db $d3                                        ; $7280: $d3
    sbc d                                         ; $7281: $9a
    rrca                                          ; $7282: $0f
    cp a                                          ; $7283: $bf
    inc b                                         ; $7284: $04
    ld bc, $0f29                                  ; $7285: $01 $29 $0f
    scf                                           ; $7288: $37
    rst $10                                       ; $7289: $d7
    sub h                                         ; $728a: $94
    sbc $6b                                       ; $728b: $de $6b
    db $dd                                        ; $728d: $dd
    ld l, a                                       ; $728e: $6f
    call nz, Call_053_75ab                        ; $728f: $c4 $ab $75
    inc e                                         ; $7292: $1c
    ld h, [hl]                                    ; $7293: $66
    ld e, [hl]                                    ; $7294: $5e
    call z, $3bc5                                 ; $7295: $cc $c5 $3b
    add hl, de                                    ; $7298: $19
    cpl                                           ; $7299: $2f
    ld a, $39                                     ; $729a: $3e $39
    or c                                          ; $729c: $b1
    db $e3                                        ; $729d: $e3
    dec h                                         ; $729e: $25
    cp a                                          ; $729f: $bf
    db $ed                                        ; $72a0: $ed
    dec bc                                        ; $72a1: $0b
    cp e                                          ; $72a2: $bb
    ld a, h                                       ; $72a3: $7c
    adc [hl]                                      ; $72a4: $8e
    bit 2, e                                      ; $72a5: $cb $53
    ld c, $10                                     ; $72a7: $0e $10
    ld bc, $5b77                                  ; $72a9: $01 $77 $5b
    ld e, h                                       ; $72ac: $5c
    ld d, e                                       ; $72ad: $53
    ld a, [$bbcc]                                 ; $72ae: $fa $cc $bb
    push bc                                       ; $72b1: $c5
    push de                                       ; $72b2: $d5
    add l                                         ; $72b3: $85
    reti                                          ; $72b4: $d9


    inc hl                                        ; $72b5: $23
    inc e                                         ; $72b6: $1c
    adc a                                         ; $72b7: $8f

Jump_053_72b8:
    ld l, e                                       ; $72b8: $6b
    add hl, sp                                    ; $72b9: $39
    adc h                                         ; $72ba: $8c

jr_053_72bb:
    dec hl                                        ; $72bb: $2b
    or a                                          ; $72bc: $b7
    add [hl]                                      ; $72bd: $86
    dec l                                         ; $72be: $2d
    ld [hl], d                                    ; $72bf: $72
    ld c, c                                       ; $72c0: $49
    call z, $bdc5                                 ; $72c1: $cc $c5 $bd
    ld [hl], $80                                  ; $72c4: $36 $80
    sbc l                                         ; $72c6: $9d
    and a                                         ; $72c7: $a7
    ld e, l                                       ; $72c8: $5d
    ld a, h                                       ; $72c9: $7c
    ld [hl], d                                    ; $72ca: $72
    ld h, d                                       ; $72cb: $62
    rst $00                                       ; $72cc: $c7
    ld [hl], b                                    ; $72cd: $70
    cp e                                          ; $72ce: $bb
    db $db                                        ; $72cf: $db
    or d                                          ; $72d0: $b2
    adc [hl]                                      ; $72d1: $8e
    jp Jump_053_5788                              ; $72d2: $c3 $88 $57


    ld c, e                                       ; $72d5: $4b
    call c, $0fd4                                 ; $72d6: $dc $d4 $0f
    and e                                         ; $72d9: $a3
    xor c                                         ; $72da: $a9
    ld e, c                                       ; $72db: $59
    add h                                         ; $72dc: $84
    add d                                         ; $72dd: $82
    ld [$66dd], sp                                ; $72de: $08 $dd $66
    or $5c                                        ; $72e1: $f6 $5c
    ld c, e                                       ; $72e3: $4b
    call c, $0fd4                                 ; $72e4: $dc $d4 $0f
    dec sp                                        ; $72e7: $3b
    dec e                                         ; $72e8: $1d
    scf                                           ; $72e9: $37
    ld h, l                                       ; $72ea: $65
    ld h, c                                       ; $72eb: $61
    ld [$8ee1], sp                                ; $72ec: $08 $e1 $8e
    ld e, e                                       ; $72ef: $5b
    ld [c], a                                     ; $72f0: $e2
    jp $9dde                                      ; $72f1: $c3 $de $9d


    cp a                                          ; $72f4: $bf
    and d                                         ; $72f5: $a2
    ld d, e                                       ; $72f6: $53
    ld l, a                                       ; $72f7: $6f
    add b                                         ; $72f8: $80
    ld a, a                                       ; $72f9: $7f
    sbc e                                         ; $72fa: $9b
    jp nc, $d697                                  ; $72fb: $d2 $97 $d6

    jr nc, jr_053_72bb                            ; $72fe: $30 $bb

    rla                                           ; $7300: $17
    ld [bc], a                                    ; $7301: $02
    dec a                                         ; $7302: $3d
    ret                                           ; $7303: $c9


    ld e, e                                       ; $7304: $5b
    ld a, [c]                                     ; $7305: $f2
    db $db                                        ; $7306: $db
    sub h                                         ; $7307: $94
    ld a, $e2                                     ; $7308: $3e $e2
    adc l                                         ; $730a: $8d
    adc $35                                       ; $730b: $ce $35
    ld h, l                                       ; $730d: $65
    xor $85                                       ; $730e: $ee $85
    nop                                           ; $7310: $00
    or a                                          ; $7311: $b7
    ret                                           ; $7312: $c9


    jp nc, $9706                                  ; $7313: $d2 $06 $97

    ld e, a                                       ; $7316: $5f
    ld e, l                                       ; $7317: $5d
    ld [hl], d                                    ; $7318: $72
    ret c                                         ; $7319: $d8

    ld e, a                                       ; $731a: $5f
    ldh [$6e], a                                  ; $731b: $e0 $6e
    xor e                                         ; $731d: $ab
    add hl, hl                                    ; $731e: $29
    ld a, l                                       ; $731f: $7d
    ld e, a                                       ; $7320: $5f
    ret c                                         ; $7321: $d8

    push hl                                       ; $7322: $e5
    ld [hl], e                                    ; $7323: $73
    ld e, h                                       ; $7324: $5c
    call c, $010b                                 ; $7325: $dc $0b $01
    ld a, l                                       ; $7328: $7d
    inc e                                         ; $7329: $1c
    sub [hl]                                      ; $732a: $96
    sbc b                                         ; $732b: $98
    rst $30                                       ; $732c: $f7
    ld h, e                                       ; $732d: $63
    db $f4                                        ; $732e: $f4
    inc l                                         ; $732f: $2c
    pop hl                                        ; $7330: $e1
    ld c, c                                       ; $7331: $49
    jr @-$6d                                      ; $7332: $18 $91

    cp h                                          ; $7334: $bc
    add hl, hl                                    ; $7335: $29
    di                                            ; $7336: $f3
    ld e, h                                       ; $7337: $5c
    db $10                                        ; $7338: $10
    ld bc, $183d                                  ; $7339: $01 $3d $18
    ld l, e                                       ; $733c: $6b
    add a                                         ; $733d: $87
    xor c                                         ; $733e: $a9
    dec h                                         ; $733f: $25
    ld a, l                                       ; $7340: $7d
    sub l                                         ; $7341: $95
    ld h, a                                       ; $7342: $67
    add hl, de                                    ; $7343: $19
    db $ed                                        ; $7344: $ed
    ld a, [hl-]                                   ; $7345: $3a
    pop af                                        ; $7346: $f1
    ld c, e                                       ; $7347: $4b
    add b                                         ; $7348: $80
    inc bc                                        ; $7349: $03
    inc h                                         ; $734a: $24
    ld [hl], d                                    ; $734b: $72
    and d                                         ; $734c: $a2
    and [hl]                                      ; $734d: $a6
    xor c                                         ; $734e: $a9
    dec a                                         ; $734f: $3d
    ld e, [hl]                                    ; $7350: $5e
    rst $00                                       ; $7351: $c7
    ld h, c                                       ; $7352: $61
    jp hl                                         ; $7353: $e9


    jp nc, $e528                                  ; $7354: $d2 $28 $e5

    add hl, hl                                    ; $7357: $29
    rlca                                          ; $7358: $07
    adc b                                         ; $7359: $88
    nop                                           ; $735a: $00
    or a                                          ; $735b: $b7
    ld a, a                                       ; $735c: $7f
    pop af                                        ; $735d: $f1
    ld b, d                                       ; $735e: $42
    ld sp, hl                                     ; $735f: $f9
    cp e                                          ; $7360: $bb
    or h                                          ; $7361: $b4
    db $eb                                        ; $7362: $eb
    ld a, c                                       ; $7363: $79
    ld d, l                                       ; $7364: $55
    ld a, [de]                                    ; $7365: $1a
    cp b                                          ; $7366: $b8
    db $db                                        ; $7367: $db
    ld h, h                                       ; $7368: $64
    db $fc                                        ; $7369: $fc
    dec h                                         ; $736a: $25
    adc h                                         ; $736b: $8c
    ld a, a                                       ; $736c: $7f
    add e                                         ; $736d: $83
    db $10                                        ; $736e: $10
    or $ae                                        ; $736f: $f6 $ae
    rst $00                                       ; $7371: $c7
    db $fd                                        ; $7372: $fd
    scf                                           ; $7373: $37
    sub a                                         ; $7374: $97
    add a                                         ; $7375: $87
    xor l                                         ; $7376: $ad
    and [hl]                                      ; $7377: $a6
    sbc [hl]                                      ; $7378: $9e
    and h                                         ; $7379: $a4
    ld b, [hl]                                    ; $737a: $46
    db $fd                                        ; $737b: $fd
    ld l, d                                       ; $737c: $6a
    ld [hl], a                                    ; $737d: $77
    xor b                                         ; $737e: $a8
    adc c                                         ; $737f: $89
    ld b, [hl]                                    ; $7380: $46
    cp c                                          ; $7381: $b9
    db $fd                                        ; $7382: $fd
    jr nc, jr_053_73c7                            ; $7383: $30 $42

    sub a                                         ; $7385: $97
    cp c                                          ; $7386: $b9
    ld d, d                                       ; $7387: $52
    xor a                                         ; $7388: $af
    daa                                           ; $7389: $27
    ld a, c                                       ; $738a: $79
    inc hl                                        ; $738b: $23
    call z, $11ae                                 ; $738c: $cc $ae $11
    cp d                                          ; $738f: $ba
    db $f4                                        ; $7390: $f4
    ld b, d                                       ; $7391: $42
    dec a                                         ; $7392: $3d
    ld d, [hl]                                    ; $7393: $56
    ret                                           ; $7394: $c9


    rrca                                          ; $7395: $0f
    ld [hl], b                                    ; $7396: $70
    scf                                           ; $7397: $37
    or a                                          ; $7398: $b7
    and $e9                                       ; $7399: $e6 $e9
    ld [de], a                                    ; $739b: $12
    sbc $92                                       ; $739c: $de $92
    rst $18                                       ; $739e: $df
    ld b, [hl]                                    ; $739f: $46
    cp h                                          ; $73a0: $bc
    jp hl                                         ; $73a1: $e9


    and c                                         ; $73a2: $a1

Call_053_73a3:
    cp c                                          ; $73a3: $b9
    ld h, $14                                     ; $73a4: $26 $14
    ld e, h                                       ; $73a6: $5c
    or a                                          ; $73a7: $b7
    pop af                                        ; $73a8: $f1
    ld h, d                                       ; $73a9: $62
    add $d8                                       ; $73aa: $c6 $d8
    dec [hl]                                      ; $73ac: $35
    ld l, h                                       ; $73ad: $6c
    dec [hl]                                      ; $73ae: $35
    ld [hl-], a                                   ; $73af: $32
    rra                                           ; $73b0: $1f
    or [hl]                                       ; $73b1: $b6
    adc h                                         ; $73b2: $8c
    ld a, a                                       ; $73b3: $7f
    sbc e                                         ; $73b4: $9b
    ld [hl], d                                    ; $73b5: $72
    ld e, b                                       ; $73b6: $58
    ld c, $7b                                     ; $73b7: $0e $7b
    xor l                                         ; $73b9: $ad
    pop af                                        ; $73ba: $f1
    sub a                                         ; $73bb: $97
    nop                                           ; $73bc: $00
    ld de, $f500                                  ; $73bd: $11 $00 $f5
    ld h, e                                       ; $73c0: $63
    add hl, de                                    ; $73c1: $19
    cp a                                          ; $73c2: $bf
    jr @+$55                                      ; $73c3: $18 $53

    inc hl                                        ; $73c5: $23
    add b                                         ; $73c6: $80

jr_053_73c7:
    db $dd                                        ; $73c7: $dd
    or h                                          ; $73c8: $b4
    inc hl                                        ; $73c9: $23
    xor c                                         ; $73ca: $a9
    pop af                                        ; $73cb: $f1
    ld d, a                                       ; $73cc: $57
    ld e, [hl]                                    ; $73cd: $5e
    ld a, [c]                                     ; $73ce: $f2
    rla                                           ; $73cf: $17
    inc sp                                        ; $73d0: $33
    add $ae                                       ; $73d1: $c6 $ae
    dec h                                         ; $73d3: $25
    ld d, h                                       ; $73d4: $54
    sbc l                                         ; $73d5: $9d
    db $fd                                        ; $73d6: $fd
    dec h                                         ; $73d7: $25
    cp $10                                        ; $73d8: $fe $10
    ld bc, $7fb7                                  ; $73da: $01 $b7 $7f
    cp c                                          ; $73dd: $b9
    add h                                         ; $73de: $84
    cp $b2                                        ; $73df: $fe $b2
    or h                                          ; $73e1: $b4
    ld b, [hl]                                    ; $73e2: $46
    call c, $b58e                                 ; $73e3: $dc $8e $b5
    db $eb                                        ; $73e6: $eb
    ld a, c                                       ; $73e7: $79
    ld d, l                                       ; $73e8: $55
    ld a, [de]                                    ; $73e9: $1a
    cp b                                          ; $73ea: $b8

jr_053_73eb:
    sub h                                         ; $73eb: $94
    adc [hl]                                      ; $73ec: $8e
    ld h, e                                       ; $73ed: $63
    ld e, h                                       ; $73ee: $5c
    ei                                            ; $73ef: $fb
    add a                                         ; $73f0: $87
    rst $18                                       ; $73f1: $df
    ld a, [hl-]                                   ; $73f2: $3a
    ld c, $0b                                     ; $73f3: $0e $0b
    ld l, a                                       ; $73f5: $6f
    jp z, Jump_000_3961                           ; $73f6: $ca $61 $39

    db $ec                                        ; $73f9: $ec
    ldh a, [$8f]                                  ; $73fa: $f0 $8f
    ld [hl], c                                    ; $73fc: $71
    add hl, sp                                    ; $73fd: $39
    inc l                                         ; $73fe: $2c
    halt                                          ; $73ff: $76
    cp d                                          ; $7400: $ba
    ret z                                         ; $7401: $c8

    sub l                                         ; $7402: $95
    rrca                                          ; $7403: $0f
    ld e, e                                       ; $7404: $5b
    add $6f                                       ; $7405: $c6 $6f
    ld a, [hl-]                                   ; $7407: $3a
    rra                                           ; $7408: $1f
    sub $94                                       ; $7409: $d6 $94
    ld a, c                                       ; $740b: $79
    ld c, d                                       ; $740c: $4a
    rra                                           ; $740d: $1f
    sub a                                         ; $740e: $97
    dec h                                         ; $740f: $25
    cp b                                          ; $7410: $b8
    jr nz, jr_053_7415                            ; $7411: $20 $02

    add b                                         ; $7413: $80
    ld b, h                                       ; $7414: $44

jr_053_7415:
    ld c, [hl]                                    ; $7415: $4e
    call nc, $a534                                ; $7416: $d4 $34 $a5
    sbc l                                         ; $7419: $9d
    ld l, e                                       ; $741a: $6b
    jp z, Jump_053_5ecc                           ; $741b: $ca $cc $5e

    rst $28                                       ; $741e: $ef
    rst $10                                       ; $741f: $d7
    jr c, jr_053_73eb                             ; $7420: $38 $c9

    push bc                                       ; $7422: $c5
    sub a                                         ; $7423: $97
    jr c, @+$20                                   ; $7424: $38 $1e

    or d                                          ; $7426: $b2
    ld a, h                                       ; $7427: $7c
    adc [hl]                                      ; $7428: $8e
    and l                                         ; $7429: $a5
    rla                                           ; $742a: $17
    ld [bc], a                                    ; $742b: $02
    ld a, l                                       ; $742c: $7d
    sbc $d4                                       ; $742d: $de $d4
    add e                                         ; $742f: $83
    db $eb                                        ; $7430: $eb
    ld c, c                                       ; $7431: $49
    sbc $5c                                       ; $7432: $de $5c
    ld d, e                                       ; $7434: $53
    and $29                                       ; $7435: $e6 $29
    ld a, l                                       ; $7437: $7d
    call nz, Call_000_29ab                        ; $7438: $c4 $ab $29
    rst $10                                       ; $743b: $d7
    ld c, b                                       ; $743c: $48
    ld l, d                                       ; $743d: $6a
    db $e4                                        ; $743e: $e4
    inc de                                        ; $743f: $13
    or c                                          ; $7440: $b1
    db $f4                                        ; $7441: $f4
    jp c, $356d                                   ; $7442: $da $6d $35

    and l                                         ; $7445: $a5
    ld b, e                                       ; $7446: $43
    ld [$2789], sp                                ; $7447: $08 $89 $27
    cp l                                          ; $744a: $bd
    db $10                                        ; $744b: $10
    or a                                          ; $744c: $b7
    rst $10                                       ; $744d: $d7
    sub e                                         ; $744e: $93
    cp b                                          ; $744f: $b8
    inc e                                         ; $7450: $1c
    halt                                          ; $7451: $76
    ld a, e                                       ; $7452: $7b
    ld e, c                                       ; $7453: $59
    ld l, c                                       ; $7454: $69
    ld b, a                                       ; $7455: $47
    cp h                                          ; $7456: $bc
    sbc d                                         ; $7457: $9a
    ld [hl], d                                    ; $7458: $72
    ld a, c                                       ; $7459: $79
    rst $00                                       ; $745a: $c7
    call z, $cfbb                                 ; $745b: $cc $bb $cf
    ld d, l                                       ; $745e: $55
    sbc d                                         ; $745f: $9a
    ld e, [hl]                                    ; $7460: $5e
    ld [$9e7d], sp                                ; $7461: $08 $7d $9e
    halt                                          ; $7464: $76
    call nz, $9d93                                ; $7465: $c4 $93 $9d
    rst $08                                       ; $7468: $cf
    db $ec                                        ; $7469: $ec
    ld a, [de]                                    ; $746a: $1a
    sbc l                                         ; $746b: $9d
    db $eb                                        ; $746c: $eb
    ret                                           ; $746d: $c9


    cp $38                                        ; $746e: $fe $38
    rlca                                          ; $7470: $07
    di                                            ; $7471: $f3
    or b                                          ; $7472: $b0
    push de                                       ; $7473: $d5
    sub h                                         ; $7474: $94
    rst $30                                       ; $7475: $f7
    ld b, h                                       ; $7476: $44
    sub l                                         ; $7477: $95
    ld b, a                                       ; $7478: $47
    sub [hl]                                      ; $7479: $96
    ld l, c                                       ; $747a: $69
    ld b, a                                       ; $747b: $47
    or [hl]                                       ; $747c: $b6
    jr jr_053_74a1                                ; $747d: $18 $22

    dec a                                         ; $747f: $3d
    cp $da                                        ; $7480: $fe $da
    ld bc, $22c8                                  ; $7482: $01 $c8 $22
    ld a, [de]                                    ; $7485: $1a
    db $ed                                        ; $7486: $ed
    ld [de], a                                    ; $7487: $12
    di                                            ; $7488: $f3
    sub h                                         ; $7489: $94
    ld a, $22                                     ; $748a: $3e $22
    ld sp, $329e                                  ; $748c: $31 $9e $32
    or e                                          ; $748f: $b3
    rst $20                                       ; $7490: $e7
    ld [$0085], a                                 ; $7491: $ea $85 $00
    or a                                          ; $7494: $b7
    rst $10                                       ; $7495: $d7
    sub e                                         ; $7496: $93
    jr c, @-$09                                   ; $7497: $38 $f5

    or h                                          ; $7499: $b4
    ld d, e                                       ; $749a: $53
    and $b9                                       ; $749b: $e6 $b9
    or $63                                        ; $749d: $f6 $63
    db $f4                                        ; $749f: $f4
    adc b                                         ; $74a0: $88

jr_053_74a1:
    ld l, $ba                                     ; $74a1: $2e $ba
    db $fd                                        ; $74a3: $fd
    jr nc, jr_053_7510                            ; $74a4: $30 $6a

    add a                                         ; $74a6: $87
    ld a, a                                       ; $74a7: $7f
    sub l                                         ; $74a8: $95
    ld d, e                                       ; $74a9: $53
    inc hl                                        ; $74aa: $23
    dec a                                         ; $74ab: $3d
    adc c                                         ; $74ac: $89
    pop af                                        ; $74ad: $f1
    ld e, h                                       ; $74ae: $5c
    db $fd                                        ; $74af: $fd
    ld c, e                                       ; $74b0: $4b
    cpl                                           ; $74b1: $2f
    inc b                                         ; $74b2: $04
    ld [hl], a                                    ; $74b3: $77
    ld h, [hl]                                    ; $74b4: $66
    inc a                                         ; $74b5: $3c
    push hl                                       ; $74b6: $e5
    ld a, [c]                                     ; $74b7: $f2
    ld [hl-], a                                   ; $74b8: $32
    ld e, [hl]                                    ; $74b9: $5e
    ld a, [hl-]                                   ; $74ba: $3a
    sub a                                         ; $74bb: $97
    sbc d                                         ; $74bc: $9a
    ld d, b                                       ; $74bd: $50
    db $10                                        ; $74be: $10
    ld b, d                                       ; $74bf: $42
    adc $c1                                       ; $74c0: $ce $c1
    cp h                                          ; $74c2: $bc
    ld b, b                                       ; $74c3: $40
    push de                                       ; $74c4: $d5
    adc [hl]                                      ; $74c5: $8e
    cp h                                          ; $74c6: $bc
    ld h, d                                       ; $74c7: $62
    adc b                                         ; $74c8: $88
    nop                                           ; $74c9: $00
    ld [hl], a                                    ; $74ca: $77
    call nz, Call_000_05e8                        ; $74cb: $c4 $e8 $05
    ld l, d                                       ; $74ce: $6a
    ld [hl], h                                    ; $74cf: $74
    xor [hl]                                      ; $74d0: $ae
    or l                                          ; $74d1: $b5
    daa                                           ; $74d2: $27
    add c                                         ; $74d3: $81
    ld hl, $9c84                                  ; $74d4: $21 $84 $9c
    add e                                         ; $74d7: $83
    ld a, c                                       ; $74d8: $79
    add c                                         ; $74d9: $81
    xor d                                         ; $74da: $aa
    dec e                                         ; $74db: $1d
    ld a, c                                       ; $74dc: $79
    push bc                                       ; $74dd: $c5
    db $10                                        ; $74de: $10
    ld bc, $df00                                  ; $74df: $01 $00 $df
    ret z                                         ; $74e2: $c8

    or $ce                                        ; $74e3: $f6 $ce
    ld c, c                                       ; $74e5: $49
    adc l                                         ; $74e6: $8d
    nop                                           ; $74e7: $00
    add hl, hl                                    ; $74e8: $29
    xor [hl]                                      ; $74e9: $ae
    jp hl                                         ; $74ea: $e9


    cp h                                          ; $74eb: $bc
    sub e                                         ; $74ec: $93
    pop af                                        ; $74ed: $f1
    inc l                                         ; $74ee: $2c
    ld c, e                                       ; $74ef: $4b
    sub a                                         ; $74f0: $97
    ld e, $d3                                     ; $74f1: $1e $d3
    xor a                                         ; $74f3: $af
    ld b, [hl]                                    ; $74f4: $46
    or a                                          ; $74f5: $b7
    inc e                                         ; $74f6: $1c
    db $e3                                        ; $74f7: $e3
    call c, $b89c                                 ; $74f8: $dc $9c $b8
    and [hl]                                      ; $74fb: $a6
    inc l                                         ; $74fc: $2c
    ld [c], a                                     ; $74fd: $e2
    add l                                         ; $74fe: $85
    daa                                           ; $74ff: $27
    pop bc                                        ; $7500: $c1
    ld [bc], a                                    ; $7501: $02
    ld de, $50f7                                  ; $7502: $11 $f7 $50
    jp $92d4                                      ; $7505: $c3 $d4 $92


    cp a                                          ; $7508: $bf
    sbc b                                         ; $7509: $98
    ld sp, $f2f6                                  ; $750a: $31 $f6 $f2
    add hl, sp                                    ; $750d: $39
    ei                                            ; $750e: $fb
    dec bc                                        ; $750f: $0b

jr_053_7510:
    ld c, a                                       ; $7510: $4f
    jp nz, $bc8e                                  ; $7511: $c2 $8e $bc

    ld h, d                                       ; $7514: $62
    adc b                                         ; $7515: $88
    nop                                           ; $7516: $00
    ld a, l                                       ; $7517: $7d
    inc e                                         ; $7518: $1c
    and $1a                                       ; $7519: $e6 $1a
    pop hl                                        ; $751b: $e1
    ld a, [de]                                    ; $751c: $1a
    sbc l                                         ; $751d: $9d
    ld l, e                                       ; $751e: $6b
    call nc, $458e                                ; $751f: $d4 $8e $45
    ld a, c                                       ; $7522: $79
    jp hl                                         ; $7523: $e9


    ld d, a                                       ; $7524: $57
    ld [c], a                                     ; $7525: $e2
    db $f4                                        ; $7526: $f4
    dec hl                                        ; $7527: $2b
    ld sp, $7f0f                                  ; $7528: $31 $0f $7f

jr_053_752b:
    and $f1                                       ; $752b: $e6 $f1
    ld l, a                                       ; $752d: $6f
    db $eb                                        ; $752e: $eb
    db $fd                                        ; $752f: $fd
    ld a, [de]                                    ; $7530: $1a
    daa                                           ; $7531: $27
    cp c                                          ; $7532: $b9
    jr jr_053_7557                                ; $7533: $18 $22

    cp l                                          ; $7535: $bd
    inc sp                                        ; $7536: $33
    ld h, $5d                                     ; $7537: $26 $5d
    dec sp                                        ; $7539: $3b
    or c                                          ; $753a: $b1
    db $d3                                        ; $753b: $d3
    dec h                                         ; $753c: $25
    ld [c], a                                     ; $753d: $e2
    jp c, $d871                                   ; $753e: $da $71 $d8

    adc a                                         ; $7541: $8f
    pop de                                        ; $7542: $d1
    inc hl                                        ; $7543: $23
    xor c                                         ; $7544: $a9
    pop hl                                        ; $7545: $e1
    rla                                           ; $7546: $17
    cp [hl]                                       ; $7547: $be
    halt                                          ; $7548: $76
    ret c                                         ; $7549: $d8

    ld [hl-], a                                   ; $754a: $32
    push hl                                       ; $754b: $e5
    and l                                         ; $754c: $a5
    dec [hl]                                      ; $754d: $35
    ld hl, $f6b8                                  ; $754e: $21 $b8 $f6
    ld e, a                                       ; $7551: $5f
    ld l, e                                       ; $7552: $6b
    db $f4                                        ; $7553: $f4
    ld l, e                                       ; $7554: $6b
    ld l, l                                       ; $7555: $6d
    ld h, h                                       ; $7556: $64

jr_053_7557:
    ld a, l                                       ; $7557: $7d
    db $fc                                        ; $7558: $fc
    sub $71                                       ; $7559: $d6 $71
    ld c, c                                       ; $755b: $49
    ld a, [$3989]                                 ; $755c: $fa $89 $39
    rlca                                          ; $755f: $07
    adc b                                         ; $7560: $88
    nop                                           ; $7561: $00
    ld a, l                                       ; $7562: $7d
    inc e                                         ; $7563: $1c
    ld d, $9a                                     ; $7564: $16 $9a
    sub l                                         ; $7566: $95
    ld l, e                                       ; $7567: $6b
    ret c                                         ; $7568: $d8

    ld h, c                                       ; $7569: $61
    db $fc                                        ; $756a: $fc
    db $db                                        ; $756b: $db
    xor b                                         ; $756c: $a8
    push bc                                       ; $756d: $c5
    adc h                                         ; $756e: $8c
    or c                                          ; $756f: $b1
    ld b, a                                       ; $7570: $47
    ld [hl], h                                    ; $7571: $74
    adc h                                         ; $7572: $8c
    sub a                                         ; $7573: $97
    jp Jump_053_6a68                              ; $7574: $c3 $68 $6a


    cpl                                           ; $7577: $2f
    add hl, de                                    ; $7578: $19
    halt                                          ; $7579: $76
    sbc b                                         ; $757a: $98
    ld a, [$78e7]                                 ; $757b: $fa $e7 $78
    ld hl, $d263                                  ; $757e: $21 $63 $d2
    or c                                          ; $7581: $b1
    push af                                       ; $7582: $f5
    ld d, l                                       ; $7583: $55
    ld h, d                                       ; $7584: $62
    cp b                                          ; $7585: $b8
    ld l, [hl]                                    ; $7586: $6e
    cpl                                           ; $7587: $2f
    or [hl]                                       ; $7588: $b6
    xor [hl]                                      ; $7589: $ae
    jp c, $44a1                                   ; $758a: $da $a1 $44

    ld d, d                                       ; $758d: $52
    inc hl                                        ; $758e: $23
    ld a, l                                       ; $758f: $7d
    inc e                                         ; $7590: $1c
    ld d, $9f                                     ; $7591: $16 $9f
    db $ec                                        ; $7593: $ec
    rst $00                                       ; $7594: $c7
    add sp, -$2f                                  ; $7595: $e8 $d1
    cp c                                          ; $7597: $b9
    ld d, h                                       ; $7598: $54
    cp l                                          ; $7599: $bd
    ld d, c                                       ; $759a: $51
    dec bc                                        ; $759b: $0b
    call nc, $d5b0                                ; $759c: $d4 $b0 $d5
    ld b, d                                       ; $759f: $42
    add $a4                                       ; $75a0: $c6 $a4
    ld h, e                                       ; $75a2: $63
    db $eb                                        ; $75a3: $eb
    xor e                                         ; $75a4: $ab
    jr nz, jr_053_752b                            ; $75a5: $20 $84

    ret c                                         ; $75a7: $d8

    or d                                          ; $75a8: $b2
    inc de                                        ; $75a9: $13
    or e                                          ; $75aa: $b3

Call_053_75ab:
    push bc                                       ; $75ab: $c5
    ld [hl], e                                    ; $75ac: $73
    adc l                                         ; $75ad: $8d
    ld [hl], b                                    ; $75ae: $70
    db $e3                                        ; $75af: $e3
    dec [hl]                                      ; $75b0: $35
    rst $00                                       ; $75b1: $c7
    ld [hl], d                                    ; $75b2: $72
    ld l, d                                       ; $75b3: $6a
    inc b                                         ; $75b4: $04
    ld a, l                                       ; $75b5: $7d
    inc e                                         ; $75b6: $1c
    ld b, [hl]                                    ; $75b7: $46
    ld d, b                                       ; $75b8: $50
    and h                                         ; $75b9: $a4
    ld l, e                                       ; $75ba: $6b
    ccf                                           ; $75bb: $3f
    ld b, [hl]                                    ; $75bc: $46
    xor a                                         ; $75bd: $af
    db $e3                                        ; $75be: $e3
    or b                                          ; $75bf: $b0
    ld [hl], h                                    ; $75c0: $74
    ei                                            ; $75c1: $fb
    dec [hl]                                      ; $75c2: $35
    ld a, [hl-]                                   ; $75c3: $3a
    rst $10                                       ; $75c4: $d7
    jp nc, $b565                                  ; $75c5: $d2 $65 $b5

    sbc h                                         ; $75c8: $9c
    cp b                                          ; $75c9: $b8
    sub [hl]                                      ; $75ca: $96
    ld a, [hl]                                    ; $75cb: $7e
    pop de                                        ; $75cc: $d1
    or d                                          ; $75cd: $b2
    ccf                                           ; $75ce: $3f
    push af                                       ; $75cf: $f5
    rst $08                                       ; $75d0: $cf
    pop af                                        ; $75d1: $f1
    ld b, d                                       ; $75d2: $42
    add $a4                                       ; $75d3: $c6 $a4
    ld h, e                                       ; $75d5: $63
    db $eb                                        ; $75d6: $eb
    xor e                                         ; $75d7: $ab
    call nz, $0110                                ; $75d8: $c4 $10 $01
    db $dd                                        ; $75db: $dd
    and $a5                                       ; $75dc: $e6 $a5
    push af                                       ; $75de: $f5
    ld d, d                                       ; $75df: $52
    ld e, [hl]                                    ; $75e0: $5e
    jp nc, $f157                                  ; $75e1: $d2 $57 $f1

    add sp, -$1a                                  ; $75e4: $e8 $e6
    ld a, [c]                                     ; $75e6: $f2
    jp nc, $e896                                  ; $75e7: $d2 $96 $e8

    ld a, [de]                                    ; $75ea: $1a
    ld c, c                                       ; $75eb: $49
    ld c, l                                       ; $75ec: $4d
    ld e, c                                       ; $75ed: $59
    call nz, $5d23                                ; $75ee: $c4 $23 $5d
    sub l                                         ; $75f1: $95
    dec h                                         ; $75f2: $25
    ld e, b                                       ; $75f3: $58
    jr nz, jr_053_75f8                            ; $75f4: $20 $02

    cp l                                          ; $75f6: $bd
    inc sp                                        ; $75f7: $33

jr_053_75f8:
    ld h, $2d                                     ; $75f8: $26 $2d
    ld e, [hl]                                    ; $75fa: $5e

jr_053_75fb:
    ld a, [c]                                     ; $75fb: $f2
    dec h                                         ; $75fc: $25
    cp d                                          ; $75fd: $ba
    halt                                          ; $75fe: $76
    ret                                           ; $75ff: $c9


    jp nc, Jump_000_297a                          ; $7600: $d2 $7a $29

    xor a                                         ; $7603: $af
    db $e3                                        ; $7604: $e3
    or b                                          ; $7605: $b0
    db $e4                                        ; $7606: $e4
    ld c, e                                       ; $7607: $4b
    db $f4                                        ; $7608: $f4
    ld hl, sp-$49                                 ; $7609: $f8 $b7
    db $f4                                        ; $760b: $f4
    adc e                                         ; $760c: $8b

jr_053_760d:
    xor $85                                       ; $760d: $ee $85
    nop                                           ; $760f: $00
    ld a, l                                       ; $7610: $7d
    inc e                                         ; $7611: $1c
    sub [hl]                                      ; $7612: $96
    db $fc                                        ; $7613: $fc
    or [hl]                                       ; $7614: $b6
    and h                                         ; $7615: $a4
    xor a                                         ; $7616: $af
    ld a, [c]                                     ; $7617: $f2
    sub h                                         ; $7618: $94
    ld h, l                                       ; $7619: $65
    ld [hl], h                                    ; $761a: $74
    ld d, a                                       ; $761b: $57
    dec e                                         ; $761c: $1d
    or $4e                                        ; $761d: $f6 $4e
    add $3b                                       ; $761f: $c6 $3b
    xor [hl]                                      ; $7621: $ae
    push af                                       ; $7622: $f5
    ld a, [hl]                                    ; $7623: $7e
    adc l                                         ; $7624: $8d
    sub e                                         ; $7625: $93
    ld e, h                                       ; $7626: $5c
    inc c                                         ; $7627: $0c
    ld de, $1c7d                                  ; $7628: $11 $7d $1c
    ld b, [hl]                                    ; $762b: $46
    cp h                                          ; $762c: $bc
    ld e, d                                       ; $762d: $5a
    ld sp, hl                                     ; $762e: $f9
    rra                                           ; $762f: $1f
    ld e, [hl]                                    ; $7630: $5e
    ld a, e                                       ; $7631: $7b
    ld [de], a                                    ; $7632: $12
    cp h                                          ; $7633: $bc
    call nz, $35df                                ; $7634: $c4 $df $35
    ld a, [hl-]                                   ; $7637: $3a
    rst $10                                       ; $7638: $d7
    xor b                                         ; $7639: $a8
    dec b                                         ; $763a: $05
    ld l, d                                       ; $763b: $6a
    inc h                                         ; $763c: $24
    or l                                          ; $763d: $b5
    sbc $af                                       ; $763e: $de $af
    ld [hl], c                                    ; $7640: $71
    sub d                                         ; $7641: $92
    adc e                                         ; $7642: $8b
    ld hl, $7d02                                  ; $7643: $21 $02 $7d
    inc e                                         ; $7646: $1c
    ld b, [hl]                                    ; $7647: $46
    ld d, b                                       ; $7648: $50
    and h                                         ; $7649: $a4
    ld l, e                                       ; $764a: $6b
    dec e                                         ; $764b: $1d
    add a                                         ; $764c: $87
    db $fd                                        ; $764d: $fd
    jr jr_053_760d                                ; $764e: $18 $bd

    ld [hl], h                                    ; $7650: $74
    ei                                            ; $7651: $fb
    dec [hl]                                      ; $7652: $35
    adc $e1                                       ; $7653: $ce $e1
    ld l, b                                       ; $7655: $68
    ld [hl+], a                                   ; $7656: $22
    ld b, h                                       ; $7657: $44
    ld a, l                                       ; $7658: $7d
    inc e                                         ; $7659: $1c
    halt                                          ; $765a: $76
    and d                                         ; $765b: $a2
    sbc $9a                                       ; $765c: $de $9a

jr_053_765e:
    rst $10                                       ; $765e: $d7
    dec h                                         ; $765f: $25
    daa                                           ; $7660: $27
    ld a, d                                       ; $7661: $7a
    jr c, jr_053_75fb                             ; $7662: $38 $97

    ld h, l                                       ; $7664: $65
    ld hl, sp-$35                                 ; $7665: $f8 $cb
    ld e, d                                       ; $7667: $5a
    and $61                                       ; $7668: $e6 $61
    add a                                         ; $766a: $87
    push bc                                       ; $766b: $c5
    and $91                                       ; $766c: $e6 $91
    call nc, $c3b0                                ; $766e: $d4 $b0 $c3
    adc [hl]                                      ; $7671: $8e
    ld e, e                                       ; $7672: $5b
    ld [bc], a                                    ; $7673: $02

jr_053_7674:
    ld de, $ff80                                  ; $7674: $11 $80 $ff
    ld [hl], c                                    ; $7677: $71
    ld c, l                                       ; $7678: $4d
    ld a, c                                       ; $7679: $79
    db $f4                                        ; $767a: $f4
    ld l, a                                       ; $767b: $6f
    ld a, b                                       ; $767c: $78
    add hl, de                                    ; $767d: $19
    cpl                                           ; $767e: $2f
    sbc l                                         ; $767f: $9d
    ld c, e                                       ; $7680: $4b
    push af                                       ; $7681: $f5
    ld b, d                                       ; $7682: $42
    ld a, l                                       ; $7683: $7d
    inc e                                         ; $7684: $1c
    ld b, [hl]                                    ; $7685: $46
    ld d, b                                       ; $7686: $50
    and h                                         ; $7687: $a4
    ld l, e                                       ; $7688: $6b
    dec e                                         ; $7689: $1d
    add a                                         ; $768a: $87
    push bc                                       ; $768b: $c5
    adc h                                         ; $768c: $8c
    or c                                          ; $768d: $b1
    ld l, e                                       ; $768e: $6b
    ld a, a                                       ; $768f: $7f
    dec a                                         ; $7690: $3d
    call nc, $3749                                ; $7691: $d4 $49 $37
    ld [$75c0], a                                 ; $7694: $ea $c0 $75
    cp e                                          ; $7697: $bb
    sub [hl]                                      ; $7698: $96
    cp h                                          ; $7699: $bc
    sbc d                                         ; $769a: $9a
    ld [hl], d                                    ; $769b: $72
    adc l                                         ; $769c: $8d
    ld a, [hl]                                    ; $769d: $7e
    ld h, l                                       ; $769e: $65
    add hl, de                                    ; $769f: $19
    cp $b2                                        ; $76a0: $fe $b2
    db $e4                                        ; $76a2: $e4
    dec d                                         ; $76a3: $15
    ld b, h                                       ; $76a4: $44
    or a                                          ; $76a5: $b7
    jr c, jr_053_765e                             ; $76a6: $38 $b6

    rla                                           ; $76a8: $17
    ld e, h                                       ; $76a9: $5c
    jp c, $cb61                                   ; $76aa: $da $61 $cb

    ld a, [hl-]                                   ; $76ad: $3a
    ld c, $73                                     ; $76ae: $0e $73
    dec l                                         ; $76b0: $2d
    sub e                                         ; $76b1: $93
    inc h                                         ; $76b2: $24
    ccf                                           ; $76b3: $3f
    and $61                                       ; $76b4: $e6 $61
    xor e                                         ; $76b6: $ab
    dec e                                         ; $76b7: $1d
    ld a, [c]                                     ; $76b8: $f2
    or a                                          ; $76b9: $b7
    ld h, [hl]                                    ; $76ba: $66

jr_053_76bb:
    ld e, $fe                                     ; $76bb: $1e $fe
    call z, $0110                                 ; $76bd: $cc $10 $01
    ld [hl], a                                    ; $76c0: $77
    ld a, $d9                                     ; $76c1: $3e $d9
    adc a                                         ; $76c3: $8f
    pop de                                        ; $76c4: $d1
    dec sp                                        ; $76c5: $3b
    ld a, [c]                                     ; $76c6: $f2
    ld h, d                                       ; $76c7: $62
    db $f4                                        ; $76c8: $f4
    add h                                         ; $76c9: $84
    jp nc, $e3ae                                  ; $76ca: $d2 $ae $e3

    or b                                          ; $76cd: $b0
    sbc b                                         ; $76ce: $98
    push hl                                       ; $76cf: $e5
    ld e, b                                       ; $76d0: $58
    cp b                                          ; $76d1: $b8
    ld e, h                                       ; $76d2: $5c

jr_053_76d3:
    xor [hl]                                      ; $76d3: $ae
    ld h, c                                       ; $76d4: $61
    add a                                         ; $76d5: $87
    ld h, l                                       ; $76d6: $65

Call_053_76d7:
    inc a                                         ; $76d7: $3c
    ld l, d                                       ; $76d8: $6a
    daa                                           ; $76d9: $27
    ld d, d                                       ; $76da: $52
    ld h, l                                       ; $76db: $65
    adc b                                         ; $76dc: $88
    nop                                           ; $76dd: $00
    ld a, l                                       ; $76de: $7d
    inc e                                         ; $76df: $1c
    ld b, [hl]                                    ; $76e0: $46
    cp h                                          ; $76e1: $bc
    jp c, $aa6b                                   ; $76e2: $da $6b $aa

    cp $ca                                        ; $76e5: $fe $ca
    rst $38                                       ; $76e7: $ff
    ldh a, [$b0]                                  ; $76e8: $f0 $b0
    push de                                       ; $76ea: $d5
    jr c, jr_053_7674                             ; $76eb: $38 $87

    pop de                                        ; $76ed: $d1
    ld e, l                                       ; $76ee: $5d
    sub l                                         ; $76ef: $95
    ld a, [de]                                    ; $76f0: $1a
    ld bc, $bf80                                  ; $76f1: $01 $80 $bf
    jr z, jr_053_76d3                             ; $76f4: $28 $dd

    inc a                                         ; $76f6: $3c
    db $fc                                        ; $76f7: $fc
    sbc c                                         ; $76f8: $99
    ld [hl], a                                    ; $76f9: $77
    ld a, $b3                                     ; $76fa: $3e $b3
    ld l, e                                       ; $76fc: $6b
    db $f4                                        ; $76fd: $f4
    dec sp                                        ; $76fe: $3b
    inc c                                         ; $76ff: $0c
    ld de, $493d                                  ; $7700: $11 $3d $49
    xor [hl]                                      ; $7703: $ae
    cp c                                          ; $7704: $b9
    halt                                          ; $7705: $76
    ret z                                         ; $7706: $c8

    ld a, a                                       ; $7707: $7f
    sbc h                                         ; $7708: $9c
    db $e4                                        ; $7709: $e4
    jr nz, jr_053_76bb                            ; $770a: $20 $af

    rla                                           ; $770c: $17
    ld [bc], a                                    ; $770d: $02
    dec a                                         ; $770e: $3d
    ld c, c                                       ; $770f: $49
    xor [hl]                                      ; $7710: $ae
    cp c                                          ; $7711: $b9
    sub $72                                       ; $7712: $d6 $72
    call z, $f338                                 ; $7714: $cc $38 $f3
    ld c, a                                       ; $7717: $4f
    call z, $10bd                                 ; $7718: $cc $bd $10
    db $dd                                        ; $771b: $dd
    and $b9                                       ; $771c: $e6 $b9
    ld h, [hl]                                    ; $771e: $66
    ld e, c                                       ; $771f: $59
    ld e, a                                       ; $7720: $5f
    push hl                                       ; $7721: $e5
    ld d, c                                       ; $7722: $51
    jp $ec5d                                      ; $7723: $c3 $5d $ec


    ld de, $daae                                  ; $7726: $11 $ae $da
    ld a, l                                       ; $7729: $7d
    sbc c                                         ; $772a: $99
    reti                                          ; $772b: $d9


    sub l                                         ; $772c: $95
    ld a, [de]                                    ; $772d: $1a
    ld bc, $1c7d                                  ; $772e: $01 $7d $1c
    ld d, $9a                                     ; $7731: $16 $9a
    sub l                                         ; $7733: $95
    ld l, e                                       ; $7734: $6b
    ret c                                         ; $7735: $d8

    ld h, c                                       ; $7736: $61
    add a                                         ; $7737: $87
    ld [de], a                                    ; $7738: $12
    add hl, de                                    ; $7739: $19
    rst $38                                       ; $773a: $ff
    ld [hl], $6a                                  ; $773b: $36 $6a
    ld sp, $ec63                                  ; $773d: $31 $63 $ec
    pop af                                        ; $7740: $f1
    ld l, a                                       ; $7741: $6f
    db $eb                                        ; $7742: $eb
    db $fd                                        ; $7743: $fd
    ld a, [de]                                    ; $7744: $1a
    daa                                           ; $7745: $27
    cp c                                          ; $7746: $b9
    ld a, b                                       ; $7747: $78
    add hl, sp                                    ; $7748: $39
    inc l                                         ; $7749: $2c
    db $dd                                        ; $774a: $dd
    cp $b0                                        ; $774b: $fe $b0
    push de                                       ; $774d: $d5
    cp $ce                                        ; $774e: $fe $ce
    jp Jump_000_31cd                              ; $7750: $c3 $cd $31


    rla                                           ; $7753: $17
    rst $00                                       ; $7754: $c7
    and [hl]                                      ; $7755: $a6
    and a                                         ; $7756: $a7
    db $d3                                        ; $7757: $d3
    sub [hl]                                      ; $7758: $96
    pop de                                        ; $7759: $d1
    cp c                                          ; $775a: $b9
    halt                                          ; $775b: $76
    adc e                                         ; $775c: $8b
    xor e                                         ; $775d: $ab
    dec bc                                        ; $775e: $0b
    or e                                          ; $775f: $b3
    ld b, a                                       ; $7760: $47
    jr c, jr_053_7781                             ; $7761: $38 $1e

    rst $10                                       ; $7763: $d7
    ld [hl], d                                    ; $7764: $72
    jr jr_053_77be                                ; $7765: $18 $57

    ld l, [hl]                                    ; $7767: $6e
    dec c                                         ; $7768: $0d
    ld e, e                                       ; $7769: $5b
    inc h                                         ; $776a: $24
    dec [hl]                                      ; $776b: $35
    ld [bc], a                                    ; $776c: $02
    or a                                          ; $776d: $b7
    db $eb                                        ; $776e: $eb
    call z, Call_000_3fe6                         ; $776f: $cc $e6 $3f
    ld a, [$9b31]                                 ; $7772: $fa $31 $9b
    cp a                                          ; $7775: $bf
    halt                                          ; $7776: $76
    or h                                          ; $7777: $b4
    adc $6c                                       ; $7778: $ce $6c
    cp $a3                                        ; $777a: $fe $a3
    rra                                           ; $777c: $1f
    or e                                          ; $777d: $b3
    ld sp, hl                                     ; $777e: $f9
    ld l, e                                       ; $777f: $6b
    rst $00                                       ; $7780: $c7

jr_053_7781:
    cp d                                          ; $7781: $ba
    ld a, $d6                                     ; $7782: $3e $d6
    ld [hl], l                                    ; $7784: $75
    ld c, [hl]                                    ; $7785: $4e
    adc l                                         ; $7786: $8d
    nop                                           ; $7787: $00
    db $dd                                        ; $7788: $dd
    and $75                                       ; $7789: $e6 $75
    inc e                                         ; $778b: $1c
    ld b, [hl]                                    ; $778c: $46
    cp b                                          ; $778d: $b8
    dec e                                         ; $778e: $1d
    ld e, [hl]                                    ; $778f: $5e
    ld a, [c]                                     ; $7790: $f2
    db $db                                        ; $7791: $db
    ld d, h                                       ; $7792: $54
    db $fd                                        ; $7793: $fd
    call nz, Call_053_56c3                        ; $7794: $c4 $c3 $56
    ld [hl], e                                    ; $7797: $73
    xor l                                         ; $7798: $ad
    sub e                                         ; $7799: $93
    ld c, e                                       ; $779a: $4b
    pop hl                                        ; $779b: $e1
    rla                                           ; $779c: $17
    ld a, $5c                                     ; $779d: $3e $5c
    rra                                           ; $779f: $1f
    add a                                         ; $77a0: $87
    cp c                                          ; $77a1: $b9
    sbc l                                         ; $77a2: $9d
    add sp, $1a                                   ; $77a3: $e8 $1a
    or l                                          ; $77a5: $b5
    ld d, b                                       ; $77a6: $50
    cpl                                           ; $77a7: $2f
    ld sp, $3d44                                  ; $77a8: $31 $44 $3d
    ret                                           ; $77ab: $c9


    sbc e                                         ; $77ac: $9b
    ld l, e                                       ; $77ad: $6b
    jp z, $a53c                                   ; $77ae: $ca $3c $a5

    cpl                                           ; $77b1: $2f
    or h                                          ; $77b2: $b4
    ld e, h                                       ; $77b3: $5c
    inc hl                                        ; $77b4: $23
    xor c                                         ; $77b5: $a9
    ld e, [hl]                                    ; $77b6: $5e
    ld [$6677], sp                                ; $77b7: $08 $77 $66
    ld d, c                                       ; $77ba: $51
    ld a, d                                       ; $77bb: $7a
    db $e4                                        ; $77bc: $e4
    xor [hl]                                      ; $77bd: $ae

jr_053_77be:
    or d                                          ; $77be: $b2
    xor h                                         ; $77bf: $ac
    jp hl                                         ; $77c0: $e9


    sub c                                         ; $77c1: $91
    ld e, l                                       ; $77c2: $5d
    dec sp                                        ; $77c3: $3b
    call nc, $15ea                                ; $77c4: $d4 $ea $15
    ld b, e                                       ; $77c7: $43

Call_053_77c8:
    inc b                                         ; $77c8: $04
    add hl, hl                                    ; $77c9: $29
    pop af                                        ; $77ca: $f1
    or l                                          ; $77cb: $b5
    sbc l                                         ; $77cc: $9d
    ccf                                           ; $77cd: $3f
    ld h, l                                       ; $77ce: $65
    ld e, [hl]                                    ; $77cf: $5e
    cp d                                          ; $77d0: $ba
    ld d, c                                       ; $77d1: $51
    rst $00                                       ; $77d2: $c7
    or l                                          ; $77d3: $b5
    ccf                                           ; $77d4: $3f
    push af                                       ; $77d5: $f5
    ld [bc], a                                    ; $77d6: $02
    ld b, h                                       ; $77d7: $44
    db $dd                                        ; $77d8: $dd
    ld e, [hl]                                    ; $77d9: $5e
    call nc, $bc45                                ; $77da: $d4 $45 $bc
    sub b                                         ; $77dd: $90
    dec d                                         ; $77de: $15
    cpl                                           ; $77df: $2f
    ld a, c                                       ; $77e0: $79
    daa                                           ; $77e1: $27
    sbc d                                         ; $77e2: $9a
    and a                                         ; $77e3: $a7
    cp $39                                        ; $77e4: $fe $39
    ld e, [hl]                                    ; $77e6: $5e
    ld a, [c]                                     ; $77e7: $f2
    ld b, l                                       ; $77e8: $45
    jp hl                                         ; $77e9: $e9


    ld d, $43                                     ; $77ea: $16 $43
    inc b                                         ; $77ec: $04
    ld a, l                                       ; $77ed: $7d
    inc e                                         ; $77ee: $1c
    sub [hl]                                      ; $77ef: $96
    ld e, b                                       ; $77f0: $58
    ret c                                         ; $77f1: $d8

    inc a                                         ; $77f2: $3c
    ld l, d                                       ; $77f3: $6a
    inc [hl]                                      ; $77f4: $34
    dec [hl]                                      ; $77f5: $35
    set 1, b                                      ; $77f6: $cb $c8
    ld a, [$e3c9]                                 ; $77f8: $fa $c9 $e3
    dec h                                         ; $77fb: $25
    add hl, sp                                    ; $77fc: $39
    ld [$7d44], sp                                ; $77fd: $08 $44 $7d

jr_053_7800:
    inc e                                         ; $7800: $1c
    and $da                                       ; $7801: $e6 $da
    and c                                         ; $7803: $a1
    sub [hl]                                      ; $7804: $96
    ld c, c                                       ; $7805: $49
    ld a, [c]                                     ; $7806: $f2
    sub b                                         ; $7807: $90
    cp a                                          ; $7808: $bf
    pop af                                        ; $7809: $f1
    ld e, $af                                     ; $780a: $1e $af
    db $e3                                        ; $780c: $e3
    jr nc, jr_053_7800                            ; $780d: $30 $f1

    ld h, c                                       ; $780f: $61
    bit 7, [hl]                                   ; $7810: $cb $7e
    adc h                                         ; $7812: $8c
    ld e, [hl]                                    ; $7813: $5e
    ld a, h                                       ; $7814: $7c
    or d                                          ; $7815: $b2
    di                                            ; $7816: $f3
    sbc c                                         ; $7817: $99
    cp l                                          ; $7818: $bd
    jp $35bf                                      ; $7819: $c3 $bf $35


    ld b, e                                       ; $781c: $43
    inc b                                         ; $781d: $04

jr_053_781e:
    ld a, l                                       ; $781e: $7d
    inc e                                         ; $781f: $1c
    and $76                                       ; $7820: $e6 $76
    and d                                         ; $7822: $a2
    ld l, e                                       ; $7823: $6b
    ld l, c                                       ; $7824: $69
    rra                                           ; $7825: $1f
    ld a, $6e                                     ; $7826: $3e $6e
    pop bc                                        ; $7828: $c1
    ld h, l                                       ; $7829: $65
    adc b                                         ; $782a: $88

jr_053_782b:
    nop                                           ; $782b: $00
    ld a, l                                       ; $782c: $7d
    inc e                                         ; $782d: $1c
    sub $7c                                       ; $782e: $d6 $7c
    ld e, h                                       ; $7830: $5c
    inc hl                                        ; $7831: $23
    xor c                                         ; $7832: $a9
    pop hl                                        ; $7833: $e1
    rla                                           ; $7834: $17
    cp [hl]                                       ; $7835: $be
    ld b, l                                       ; $7836: $45
    dec sp                                        ; $7837: $3b
    ld a, [hl-]                                   ; $7838: $3a
    rst $10                                       ; $7839: $d7
    xor b                                         ; $783a: $a8
    or l                                          ; $783b: $b5
    rra                                           ; $783c: $1f
    add d                                         ; $783d: $82
    ld b, a                                       ; $783e: $47
    rst $20                                       ; $783f: $e7
    ld a, d                                       ; $7840: $7a
    ld [hl-], a                                   ; $7841: $32
    push hl                                       ; $7842: $e5
    dec a                                         ; $7843: $3d
    ld d, c                                       ; $7844: $51
    push hl                                       ; $7845: $e5
    add hl, bc                                    ; $7846: $09
    ld d, l                                       ; $7847: $55
    dec sp                                        ; $7848: $3b
    ld sp, $cb37                                  ; $7849: $31 $37 $cb
    jp nc, Jump_000_1a0e                          ; $784c: $d2 $0e $1a

    ld de, $4417                                  ; $784f: $11 $17 $44
    db $dd                                        ; $7852: $dd
    rst $38                                       ; $7853: $ff
    inc e                                         ; $7854: $1c
    rst $28                                       ; $7855: $ef
    sbc b                                         ; $7856: $98
    dec l                                         ; $7857: $2d
    sbc [hl]                                      ; $7858: $9e
    ld l, e                                       ; $7859: $6b
    adc c                                         ; $785a: $89
    sbc e                                         ; $785b: $9b
    ld a, [$2161]                                 ; $785c: $fa $61 $21
    dec hl                                        ; $785f: $2b
    adc a                                         ; $7860: $8f
    jp c, $ccf9                                   ; $7861: $da $f9 $cc

    sbc $4f                                       ; $7864: $de $4f
    adc l                                         ; $7866: $8d
    nop                                           ; $7867: $00
    dec a                                         ; $7868: $3d
    cp $da                                        ; $7869: $fe $da
    db $fd                                        ; $786b: $fd
    jr jr_053_782b                                ; $786c: $18 $bd

    and $b3                                       ; $786e: $e6 $b3
    sbc h                                         ; $7870: $9c
    cp b                                          ; $7871: $b8
    halt                                          ; $7872: $76
    and d                                         ; $7873: $a2
    sbc $94                                       ; $7874: $de $94
    swap d                                        ; $7876: $cb $32
    db $fc                                        ; $7878: $fc
    dec h                                         ; $7879: $25
    dec [hl]                                      ; $787a: $35
    ld [bc], a                                    ; $787b: $02
    add hl, hl                                    ; $787c: $29
    dec e                                         ; $787d: $1d
    rst $00                                       ; $787e: $c7
    jr c, jr_053_781e                             ; $787f: $38 $9d

    rst $00                                       ; $7881: $c7
    push af                                       ; $7882: $f5
    ld e, e                                       ; $7883: $5b
    ld [hl], e                                    ; $7884: $73
    sub d                                         ; $7885: $92
    add e                                         ; $7886: $83
    cp h                                          ; $7887: $bc
    ld h, c                                       ; $7888: $61
    xor e                                         ; $7889: $ab
    add l                                         ; $788a: $85
    xor h                                         ; $788b: $ac
    cp $99                                        ; $788c: $fe $99
    ld d, b                                       ; $788e: $50
    dec [hl]                                      ; $788f: $35
    ld h, l                                       ; $7890: $65
    ld e, c                                       ; $7891: $59
    call z, $bb18                                 ; $7892: $cc $18 $bb
    ld b, [hl]                                    ; $7895: $46
    rst $20                                       ; $7896: $e7
    ld c, d                                       ; $7897: $4a
    ld a, a                                       ; $7898: $7f
    cp b                                          ; $7899: $b8
    db $db                                        ; $789a: $db
    ld [hl], e                                    ; $789b: $73
    sub l                                         ; $789c: $95
    rrca                                          ; $789d: $0f
    ld e, e                                       ; $789e: $5b
    halt                                          ; $789f: $76
    xor b                                         ; $78a0: $a8
    dec e                                         ; $78a1: $1d
    or a                                          ; $78a2: $b7
    ldh [$da], a                                  ; $78a3: $e0 $da
    db $ed                                        ; $78a5: $ed
    ld h, l                                       ; $78a6: $65
    or l                                          ; $78a7: $b5
    inc e                                         ; $78a8: $1c
    sub $71                                       ; $78a9: $d6 $71
    ld e, b                                       ; $78ab: $58
    ret z                                         ; $78ac: $c8

    ld [$919f], a                                 ; $78ad: $ea $9f $91
    call nc, $cc4e                                ; $78b0: $d4 $4e $cc
    call Call_053_7eb2                            ; $78b3: $cd $b2 $7e
    ld [bc], a                                    ; $78b6: $02
    ld b, h                                       ; $78b7: $44
    db $dd                                        ; $78b8: $dd
    and $b9                                       ; $78b9: $e6 $b9
    ld b, [hl]                                    ; $78bb: $46
    sub a                                         ; $78bc: $97
    ld h, $b2                                     ; $78bd: $26 $b2
    db $db                                        ; $78bf: $db
    rrca                                          ; $78c0: $0f
    ld h, e                                       ; $78c1: $63
    inc sp                                        ; $78c2: $33
    xor a                                         ; $78c3: $af
    jp hl                                         ; $78c4: $e9


    inc [hl]                                      ; $78c5: $34
    adc a                                         ; $78c6: $8f
    ld [hl], b                                    ; $78c7: $70
    db $ed                                        ; $78c8: $ed
    adc e                                         ; $78c9: $8b
    jr jr_053_78ee                                ; $78ca: $18 $22

    db $dd                                        ; $78cc: $dd
    and $11                                       ; $78cd: $e6 $11
    ld c, a                                       ; $78cf: $4f
    add hl, hl                                    ; $78d0: $29
    cpl                                           ; $78d1: $2f
    ld d, b                                       ; $78d2: $50
    call z, Call_000_1ac3                         ; $78d3: $cc $c3 $1a
    adc a                                         ; $78d6: $8f
    adc $c5                                       ; $78d7: $ce $c5
    ld l, $8f                                     ; $78d9: $2e $8f
    ld e, d                                       ; $78db: $5a
    call z, Call_053_7b18                         ; $78dc: $cc $18 $7b
    rst $00                                       ; $78df: $c7
    ld h, c                                       ; $78e0: $61
    ld [$b0f3], a                                 ; $78e1: $ea $f3 $b0
    push de                                       ; $78e4: $d5
    ldh a, [$0b]                                  ; $78e5: $f0 $0b
    ld e, a                                       ; $78e7: $5f
    cp e                                          ; $78e8: $bb
    inc de                                        ; $78e9: $13
    ld e, a                                       ; $78ea: $5f
    ld e, e                                       ; $78eb: $5b
    rst $00                                       ; $78ec: $c7
    ld h, c                                       ; $78ed: $61

jr_053_78ee:
    rst $20                                       ; $78ee: $e7
    ld c, a                                       ; $78ef: $4f
    cp c                                          ; $78f0: $b9
    inc c                                         ; $78f1: $0c
    ld de, $af3d                                  ; $78f2: $11 $3d $af
    and [hl]                                      ; $78f5: $a6
    ld e, h                                       ; $78f6: $5c
    sbc $31                                       ; $78f7: $de $31
    di                                            ; $78f9: $f3
    ret z                                         ; $78fa: $c8

    and a                                         ; $78fb: $a7
    call nc, $fe1b                                ; $78fc: $d4 $1b $fe
    cp l                                          ; $78ff: $bd
    db $10                                        ; $7900: $10
    rst $30                                       ; $7901: $f7
    ld hl, sp+$6b                                 ; $7902: $f8 $6b
    and a                                         ; $7904: $a7
    ld a, h                                       ; $7905: $7c
    ld c, [hl]                                    ; $7906: $4e
    ld [c], a                                     ; $7907: $e2
    ld a, [hl+]                                   ; $7908: $2a
    ld b, e                                       ; $7909: $43
    inc b                                         ; $790a: $04
    db $fd                                        ; $790b: $fd
    ld c, [hl]                                    ; $790c: $4e
    db $fc                                        ; $790d: $fc
    pop hl                                        ; $790e: $e1
    xor $b6                                       ; $790f: $ee $b6
    adc h                                         ; $7911: $8c
    ld e, a                                       ; $7912: $5f
    adc h                                         ; $7913: $8c
    ld a, e                                       ; $7914: $7b
    xor l                                         ; $7915: $ad
    db $fd                                        ; $7916: $fd
    add sp, -$3c                                  ; $7917: $e8 $c4
    dec c                                         ; $7919: $0d
    xor [hl]                                      ; $791a: $ae
    adc a                                         ; $791b: $8f
    jp $d44e                                      ; $791c: $c3 $4e $d4


    ld e, e                                       ; $791f: $5b
    di                                            ; $7920: $f3
    cp d                                          ; $7921: $ba
    db $e4                                        ; $7922: $e4
    ld b, h                                       ; $7923: $44
    adc a                                         ; $7924: $8f
    ld a, b                                       ; $7925: $78
    or d                                          ; $7926: $b2
    rra                                           ; $7927: $1f
    and e                                         ; $7928: $a3
    rst $30                                       ; $7929: $f7
    ld e, d                                       ; $792a: $5a
    db $e3                                        ; $792b: $e3
    xor a                                         ; $792c: $af
    halt                                          ; $792d: $76
    ld hl, sp-$3b                                 ; $792e: $f8 $c5
    cp b                                          ; $7930: $b8
    sub a                                         ; $7931: $97
    db $ec                                        ; $7932: $ec
    ld d, b                                       ; $7933: $50
    ld [hl+], a                                   ; $7934: $22
    db $10                                        ; $7935: $10
    ld bc, $af3d                                  ; $7936: $01 $3d $af
    and [hl]                                      ; $7939: $a6
    ld e, h                                       ; $793a: $5c
    ld e, $d1                                     ; $793b: $1e $d1
    ld d, l                                       ; $793d: $55
    inc a                                         ; $793e: $3c
    ld h, l                                       ; $793f: $65
    xor $b5                                       ; $7940: $ee $b5
    ld l, [hl]                                    ; $7942: $6e
    di                                            ; $7943: $f3
    adc b                                         ; $7944: $88
    ld d, a                                       ; $7945: $57
    ld c, e                                       ; $7946: $4b
    ld a, [$de2a]                                 ; $7947: $fa $2a $de
    rla                                           ; $794a: $17
    ld c, c                                       ; $794b: $49
    sub a                                         ; $794c: $97
    xor [hl]                                      ; $794d: $ae
    call nc, Call_053_6efe                        ; $794e: $d4 $fe $6e
    ld l, a                                       ; $7951: $6f
    cp a                                          ; $7952: $bf
    ld b, d                                       ; $7953: $42
    ld h, [hl]                                    ; $7954: $66
    ld c, [hl]                                    ; $7955: $4e
    cp l                                          ; $7956: $bd
    ld a, $0e                                     ; $7957: $3e $0e
    ld l, e                                       ; $7959: $6b
    ld a, $ec                                     ; $795a: $3e $ec
    add hl, hl                                    ; $795c: $29
    di                                            ; $795d: $f3
    cp $6e                                        ; $795e: $fe $6e
    and [hl]                                      ; $7960: $a6
    reti                                          ; $7961: $d9


    ld b, d                                       ; $7962: $42
    ld d, [hl]                                    ; $7963: $56
    and [hl]                                      ; $7964: $a6
    call $8816                                    ; $7965: $cd $16 $88
    nop                                           ; $7968: $00
    dec a                                         ; $7969: $3d
    adc c                                         ; $796a: $89
    pop af                                        ; $796b: $f1
    sub d                                         ; $796c: $92
    ld d, a                                       ; $796d: $57
    ld d, e                                       ; $796e: $53
    and $5e                                       ; $796f: $e6 $5e
    ld [$4877], sp                                ; $7971: $08 $77 $48
    or b                                          ; $7974: $b0
    inc l                                         ; $7975: $2c
    ld sp, $ddc3                                  ; $7976: $31 $c3 $dd
    ld l, l                                       ; $7979: $6d
    sbc c                                         ; $797a: $99
    ld [hl-], a                                   ; $797b: $32
    rst $28                                       ; $797c: $ef
    call nz, Call_053_76d7                        ; $797d: $c4 $d7 $76
    ld [c], a                                     ; $7980: $e2
    adc a                                         ; $7981: $8f
    pop de                                        ; $7982: $d1
    db $ed                                        ; $7983: $ed
    add a                                         ; $7984: $87
    sbc l                                         ; $7985: $9d
    db $e4                                        ; $7986: $e4
    dec d                                         ; $7987: $15
    rrca                                          ; $7988: $0f
    cp a                                          ; $7989: $bf
    ldh a, [$c7]                                  ; $798a: $f0 $c7
    cp a                                          ; $798c: $bf
    adc l                                         ; $798d: $8d
    ld e, d                                       ; $798e: $5a
    call z, Call_053_7b18                         ; $798f: $cc $18 $7b
    rst $00                                       ; $7992: $c7
    ld h, c                                       ; $7993: $61
    ld e, a                                       ; $7994: $5f
    ld h, h                                       ; $7995: $64
    add hl, sp                                    ; $7996: $39
    ld c, h                                       ; $7997: $4c
    rst $20                                       ; $7998: $e7
    dec e                                         ; $7999: $1d
    ld c, d                                       ; $799a: $4a
    inc b                                         ; $799b: $04
    ld [hl+], a                                   ; $799c: $22
    scf                                           ; $799d: $37
    db $d3                                        ; $799e: $d3
    ld l, h                                       ; $799f: $6c
    ld hl, $d32b                                  ; $79a0: $21 $2b $d3
    ld h, [hl]                                    ; $79a3: $66
    ld c, e                                       ; $79a4: $4b
    xor a                                         ; $79a5: $af
    push af                                       ; $79a6: $f5
    inc h                                         ; $79a7: $24
    ld l, a                                       ; $79a8: $6f
    xor [hl]                                      ; $79a9: $ae
    add hl, hl                                    ; $79aa: $29
    ld [hl], e                                    ; $79ab: $73
    cpl                                           ; $79ac: $2f
    inc b                                         ; $79ad: $04
    scf                                           ; $79ae: $37
    daa                                           ; $79af: $27
    rst $38                                       ; $79b0: $ff
    ld e, b                                       ; $79b1: $58
    ld b, [hl]                                    ; $79b2: $46
    rst $20                                       ; $79b3: $e7
    ld a, [de]                                    ; $79b4: $1a
    pop hl                                        ; $79b5: $e1
    ld a, b                                       ; $79b6: $78
    ld e, h                                       ; $79b7: $5c
    bit 4, c                                      ; $79b8: $cb $61
    ld e, h                                       ; $79ba: $5c
    cp c                                          ; $79bb: $b9
    dec [hl]                                      ; $79bc: $35
    ld l, h                                       ; $79bd: $6c
    ld de, $6eb8                                  ; $79be: $11 $b8 $6e
    res 1, b                                      ; $79c1: $cb $88
    ld d, a                                       ; $79c3: $57
    jp Jump_053_7c2f                              ; $79c4: $c3 $2f $7c


    pop de                                        ; $79c7: $d1
    db $10                                        ; $79c8: $10
    ld h, [hl]                                    ; $79c9: $66
    rst $10                                       ; $79ca: $d7
    add sp, $7a                                   ; $79cb: $e8 $7a
    inc hl                                        ; $79cd: $23
    call c, $c4bc                                 ; $79ce: $dc $bc $c4
    and l                                         ; $79d1: $a5
    inc l                                         ; $79d2: $2c
    jp c, Jump_000_30e5                           ; $79d3: $da $e5 $30

jr_053_79d6:
    ld h, l                                       ; $79d6: $65
    sbc $61                                       ; $79d7: $de $61
    xor d                                         ; $79d9: $aa
    add [hl]                                      ; $79da: $86
    dec [hl]                                      ; $79db: $35
    ld e, [hl]                                    ; $79dc: $5e
    add $eb                                       ; $79dd: $c6 $eb
    db $fd                                        ; $79df: $fd
    ld a, [de]                                    ; $79e0: $1a
    daa                                           ; $79e1: $27
    cp c                                          ; $79e2: $b9
    ld a, b                                       ; $79e3: $78
    add hl, sp                                    ; $79e4: $39
    inc e                                         ; $79e5: $1c
    ld a, [bc]                                    ; $79e6: $0a
    ld [hl+], a                                   ; $79e7: $22
    dec a                                         ; $79e8: $3d
    cp $da                                        ; $79e9: $fe $da
    ld [hl], l                                    ; $79eb: $75
    inc e                                         ; $79ec: $1c
    ld b, [hl]                                    ; $79ed: $46
    sbc b                                         ; $79ee: $98
    ld e, l                                       ; $79ef: $5d
    inc bc                                        ; $79f0: $03
    sub b                                         ; $79f1: $90
    ld b, l                                       ; $79f2: $45
    inc [hl]                                      ; $79f3: $34
    inc bc                                        ; $79f4: $03
    ld a, [c]                                     ; $79f5: $f2
    dec de                                        ; $79f6: $1b
    cp e                                          ; $79f7: $bb
    adc [hl]                                      ; $79f8: $8e
    dec b                                         ; $79f9: $05
    xor $b6                                       ; $79fa: $ee $b6
    sbc d                                         ; $79fc: $9a
    jp nc, $fc97                                  ; $79fd: $d2 $97 $fc

    adc d                                         ; $7a00: $8a
    ld l, [hl]                                    ; $7a01: $6e
    ccf                                           ; $7a02: $3f
    xor h                                         ; $7a03: $ac
    rst $20                                       ; $7a04: $e7
    ld d, l                                       ; $7a05: $55
    ld l, c                                       ; $7a06: $69
    halt                                          ; $7a07: $76
    ld e, a                                       ; $7a08: $5f
    ld h, [hl]                                    ; $7a09: $66
    halt                                          ; $7a0a: $76
    push af                                       ; $7a0b: $f5
    ld b, d                                       ; $7a0c: $42
    ld a, l                                       ; $7a0d: $7d
    ld e, $44                                     ; $7a0e: $1e $44
    db $fd                                        ; $7a10: $fd
    ld b, d                                       ; $7a11: $42
    ld [$38fb], sp                                ; $7a12: $08 $fb $38
    adc h                                         ; $7a15: $8c
    dec hl                                        ; $7a16: $2b
    dec hl                                        ; $7a17: $2b
    push hl                                       ; $7a18: $e5
    push bc                                       ; $7a19: $c5
    daa                                           ; $7a1a: $27
    daa                                           ; $7a1b: $27
    halt                                          ; $7a1c: $76
    inc a                                         ; $7a1d: $3c
    ld h, l                                       ; $7a1e: $65
    ld e, [hl]                                    ; $7a1f: $5e
    ld a, [c]                                     ; $7a20: $f2
    ld l, d                                       ; $7a21: $6a
    sub d                                         ; $7a22: $92
    dec a                                         ; $7a23: $3d
    pop de                                        ; $7a24: $d1
    jr nc, jr_053_79d6                            ; $7a25: $30 $af

    jp hl                                         ; $7a27: $e9


    push hl                                       ; $7a28: $e5
    ld a, [$eba3]                                 ; $7a29: $fa $a3 $eb
    dec l                                         ; $7a2c: $2d
    ld e, l                                       ; $7a2d: $5d
    ld e, l                                       ; $7a2e: $5d
    xor d                                         ; $7a2f: $aa
    inc l                                         ; $7a30: $2c
    ld e, $fe                                     ; $7a31: $1e $fe
    ld h, d                                       ; $7a33: $62
    adc b                                         ; $7a34: $88
    nop                                           ; $7a35: $00
    dec a                                         ; $7a36: $3d
    xor a                                         ; $7a37: $af
    and [hl]                                      ; $7a38: $a6
    ld e, h                                       ; $7a39: $5c
    sbc $31                                       ; $7a3a: $de $31
    di                                            ; $7a3c: $f3
    inc l                                         ; $7a3d: $2c
    inc hl                                        ; $7a3e: $23
    sbc a                                         ; $7a3f: $9f
    ld d, d                                       ; $7a40: $52
    xor $b5                                       ; $7a41: $ee $b5
    db $db                                        ; $7a43: $db
    ld h, h                                       ; $7a44: $64
    ld b, c                                       ; $7a45: $41
    ld h, a                                       ; $7a46: $67
    sbc $c9                                       ; $7a47: $de $c9
    ld a, b                                       ; $7a49: $78
    add h                                         ; $7a4a: $84
    reti                                          ; $7a4b: $d9


    or l                                          ; $7a4c: $b5
    ld a, e                                       ; $7a4d: $7b
    ld a, [hl]                                    ; $7a4e: $7e
    db $d3                                        ; $7a4f: $d3
    rst $08                                       ; $7a50: $cf
    adc b                                         ; $7a51: $88
    ld d, a                                       ; $7a52: $57
    jp $b0ff                                      ; $7a53: $c3 $ff $b0


    ld a, c                                       ; $7a56: $79
    rst $20                                       ; $7a57: $e7
    dec bc                                        ; $7a58: $0b
    ld b, h                                       ; $7a59: $44
    rst $30                                       ; $7a5a: $f7
    ld hl, sp+$43                                 ; $7a5b: $f8 $43
    inc b                                         ; $7a5d: $04
    dec a                                         ; $7a5e: $3d
    xor [hl]                                      ; $7a5f: $ae
    ld a, l                                       ; $7a60: $7d
    ld de, $35cf                                  ; $7a61: $11 $cf $35
    ld h, l                                       ; $7a64: $65
    ld e, [hl]                                    ; $7a65: $5e
    ld a, [$9795]                                 ; $7a66: $fa $95 $97
    rst $08                                       ; $7a69: $cf
    ld e, c                                       ; $7a6a: $59
    ld c, $ab                                     ; $7a6b: $0e $ab
    call z, $86fc                                 ; $7a6d: $cc $fc $86
    cp a                                          ; $7a70: $bf
    halt                                          ; $7a71: $76
    add hl, hl                                    ; $7a72: $29
    ld sp, $a917                                  ; $7a73: $31 $17 $a9
    rra                                           ; $7a76: $1f
    adc b                                         ; $7a77: $88
    nop                                           ; $7a78: $00
    ret nz                                        ; $7a79: $c0

    pop bc                                        ; $7a7a: $c1
    add c                                         ; $7a7b: $81
    inc bc                                        ; $7a7c: $03
    rlca                                          ; $7a7d: $07
    ld c, $1c                                     ; $7a7e: $0e $1c
    add h                                         ; $7a80: $84
    db $10                                        ; $7a81: $10
    ld b, d                                       ; $7a82: $42
    inc b                                         ; $7a83: $04
    ld a, l                                       ; $7a84: $7d
    inc e                                         ; $7a85: $1c
    ld b, [hl]                                    ; $7a86: $46
    sbc b                                         ; $7a87: $98
    ld e, l                                       ; $7a88: $5d
    db $eb                                        ; $7a89: $eb
    ld [hl], c                                    ; $7a8a: $71
    pop hl                                        ; $7a8b: $e1
    cpl                                           ; $7a8c: $2f

jr_053_7a8d:
    ld e, [hl]                                    ; $7a8d: $5e
    rst $28                                       ; $7a8e: $ef
    ld a, d                                       ; $7a8f: $7a
    ld [de], a                                    ; $7a90: $12
    or h                                          ; $7a91: $b4
    inc hl                                        ; $7a92: $23
    sub d                                         ; $7a93: $92
    scf                                           ; $7a94: $37
    jp nz, $9aec                                  ; $7a95: $c2 $ec $9a

    ld [hl], d                                    ; $7a98: $72
    cp c                                          ; $7a99: $b9
    rla                                           ; $7a9a: $17
    ld [bc], a                                    ; $7a9b: $02
    nop                                           ; $7a9c: $00
    or d                                          ; $7a9d: $b2
    adc b                                         ; $7a9e: $88
    ld h, [hl]                                    ; $7a9f: $66
    ld b, b                                       ; $7aa0: $40
    ld a, [hl]                                    ; $7aa1: $7e
    ld h, e                                       ; $7aa2: $63
    rst $10                                       ; $7aa3: $d7
    or c                                          ; $7aa4: $b1
    ld b, b                                       ; $7aa5: $40
    inc b                                         ; $7aa6: $04
    dec a                                         ; $7aa7: $3d
    xor a                                         ; $7aa8: $af
    ld c, d                                       ; $7aa9: $4a
    or e                                          ; $7aaa: $b3
    ei                                            ; $7aab: $fb
    ld [hl-], a                                   ; $7aac: $32
    or e                                          ; $7aad: $b3
    dec bc                                        ; $7aae: $0b
    ld [hl+], a                                   ; $7aaf: $22
    add hl, hl                                    ; $7ab0: $29
    rst $18                                       ; $7ab1: $df
    dec [hl]                                      ; $7ab2: $35
    and l                                         ; $7ab3: $a5
    ld c, a                                       ; $7ab4: $4f
    sbc c                                         ; $7ab5: $99
    ld a, e                                       ; $7ab6: $7b
    xor l                                         ; $7ab7: $ad
    adc a                                         ; $7ab8: $8f
    jp Jump_053_5788                              ; $7ab9: $c3 $88 $57


    ld l, e                                       ; $7abc: $6b
    ld a, $bc                                     ; $7abd: $3e $bc
    rst $10                                       ; $7abf: $d7
    ld a, b                                       ; $7ac0: $78
    add hl, de                                    ; $7ac1: $19
    ld c, a                                       ; $7ac2: $4f
    add hl, sp                                    ; $7ac3: $39
    ret nz                                        ; $7ac4: $c0

    db $dd                                        ; $7ac5: $dd
    ld sp, hl                                     ; $7ac6: $f9
    ld h, h                                       ; $7ac7: $64
    ld c, d                                       ; $7ac8: $4a
    ld e, a                                       ; $7ac9: $5f
    cp d                                          ; $7aca: $ba
    db $f4                                        ; $7acb: $f4
    add sp, $49                                   ; $7acc: $e8 $49
    or [hl]                                       ; $7ace: $b6
    adc h                                         ; $7acf: $8c
    ld c, e                                       ; $7ad0: $4b
    db $d3                                        ; $7ad1: $d3
    sbc d                                         ; $7ad2: $9a
    jp hl                                         ; $7ad3: $e9


    ld e, h                                       ; $7ad4: $5c
    cp b                                          ; $7ad5: $b8
    cp c                                          ; $7ad6: $b9
    ld h, [hl]                                    ; $7ad7: $66
    ld de, $d7aa                                  ; $7ad8: $11 $aa $d7
    ld d, d                                       ; $7adb: $52
    ld [c], a                                     ; $7adc: $e2
    ld l, e                                       ; $7add: $6b
    db $eb                                        ; $7ade: $eb
    jr c, jr_053_7a8d                             ; $7adf: $38 $ac

    push af                                       ; $7ae1: $f5
    ld d, l                                       ; $7ae2: $55
    sbc [hl]                                      ; $7ae3: $9e
    ld [hl], d                                    ; $7ae4: $72
    sbc b                                         ; $7ae5: $98
    and l                                         ; $7ae6: $a5
    rst $10                                       ; $7ae7: $d7
    ld d, d                                       ; $7ae8: $52
    jp c, Jump_053_4b8f                           ; $7ae9: $da $8f $4b

    sub a                                         ; $7aec: $97
    ld e, $5d                                     ; $7aed: $1e $5d
    ld d, e                                       ; $7aef: $53
    ld a, [$577a]                                 ; $7af0: $fa $7a $57
    sub a                                         ; $7af3: $97
    ld [hl], h                                    ; $7af4: $74
    ld sp, $b87f                                  ; $7af5: $31 $7f $b8
    db $dd                                        ; $7af8: $dd
    ld hl, $b2c1                                  ; $7af9: $21 $c1 $b2
    ccf                                           ; $7afc: $3f
    db $fc                                        ; $7afd: $fc
    ld h, l                                       ; $7afe: $65
    db $f4                                        ; $7aff: $f4
    jp Jump_053_7dbf                              ; $7b00: $c3 $bf $7d


    rst $08                                       ; $7b03: $cf
    dec [hl]                                      ; $7b04: $35
    db $fc                                        ; $7b05: $fc
    jp nz, $d13f                                  ; $7b06: $c2 $3f $d1

    jp c, $cb61                                   ; $7b09: $da $61 $cb

    ld a, [hl-]                                   ; $7b0c: $3a
    ld c, $23                                     ; $7b0d: $0e $23
    ld e, [hl]                                    ; $7b0f: $5e
    xor l                                         ; $7b10: $ad
    push af                                       ; $7b11: $f5
    ld d, l                                       ; $7b12: $55
    cp h                                          ; $7b13: $bc
    rst $10                                       ; $7b14: $d7
    sbc d                                         ; $7b15: $9a
    ld [hl], a                                    ; $7b16: $77
    ld h, d                                       ; $7b17: $62

Call_053_7b18:
    ld l, [hl]                                    ; $7b18: $6e
    ld c, [hl]                                    ; $7b19: $4e
    ld [hl], a                                    ; $7b1a: $77
    ld b, l                                       ; $7b1b: $45
    adc e                                         ; $7b1c: $8b
    sub a                                         ; $7b1d: $97
    ld d, b                                       ; $7b1e: $50
    push hl                                       ; $7b1f: $e5
    jp hl                                         ; $7b20: $e9


    ld l, h                                       ; $7b21: $6c
    ld a, c                                       ; $7b22: $79
    inc c                                         ; $7b23: $0c
    or a                                          ; $7b24: $b7
    cp e                                          ; $7b25: $bb
    dec l                                         ; $7b26: $2d
    inc de                                        ; $7b27: $13
    ld l, d                                       ; $7b28: $6a
    sbc b                                         ; $7b29: $98
    ld e, d                                       ; $7b2a: $5a
    rst $00                                       ; $7b2b: $c7
    ld h, c                                       ; $7b2c: $61
    ld [hl], h                                    ; $7b2d: $74
    ld l, $3e                                     ; $7b2e: $2e $3e
    ld h, [hl]                                    ; $7b30: $66
    or $b0                                        ; $7b31: $f6 $b0
    push de                                       ; $7b33: $d5
    ret z                                         ; $7b34: $c8

    and a                                         ; $7b35: $a7
    sub h                                         ; $7b36: $94
    dec sp                                        ; $7b37: $3b
    cpl                                           ; $7b38: $2f
    or d                                          ; $7b39: $b2
    dec b                                         ; $7b3a: $05
    ld l, [hl]                                    ; $7b3b: $6e
    dec a                                         ; $7b3c: $3d
    ld l, a                                       ; $7b3d: $6f
    jp z, Jump_000_110c                           ; $7b3e: $ca $0c $11

    ld a, l                                       ; $7b41: $7d
    inc e                                         ; $7b42: $1c
    ld b, [hl]                                    ; $7b43: $46
    ld d, b                                       ; $7b44: $50
    and h                                         ; $7b45: $a4
    ld l, e                                       ; $7b46: $6b
    ld [c], a                                     ; $7b47: $e2
    adc a                                         ; $7b48: $8f
    dec l                                         ; $7b49: $2d
    ei                                            ; $7b4a: $fb
    ld sp, $1d7a                                  ; $7b4b: $31 $7a $1d
    add a                                         ; $7b4e: $87
    push bc                                       ; $7b4f: $c5
    adc h                                         ; $7b50: $8c
    or c                                          ; $7b51: $b1
    ld l, e                                       ; $7b52: $6b
    ld a, a                                       ; $7b53: $7f
    rst $20                                       ; $7b54: $e7
    ld h, c                                       ; $7b55: $61
    db $ec                                        ; $7b56: $ec
    ld de, $d9fa                                  ; $7b57: $11 $fa $d9
    ret                                           ; $7b5a: $c9


    ld a, b                                       ; $7b5b: $78
    add h                                         ; $7b5c: $84
    ld b, l                                       ; $7b5d: $45
    inc c                                         ; $7b5e: $0c
    rst $10                                       ; $7b5f: $d7
    and e                                         ; $7b60: $a3
    res 2, d                                      ; $7b61: $cb $92
    ld e, a                                       ; $7b63: $5f
    pop de                                        ; $7b64: $d1
    or l                                          ; $7b65: $b5
    rst $10                                       ; $7b66: $d7
    sbc b                                         ; $7b67: $98
    adc $b5                                       ; $7b68: $ce $b5
    ret nc                                        ; $7b6a: $d0

    sbc [hl]                                      ; $7b6b: $9e
    jp c, Jump_000_351f                           ; $7b6c: $da $1f $35

    and d                                         ; $7b6f: $a2
    xor e                                         ; $7b70: $ab
    cp h                                          ; $7b71: $bc
    di                                            ; $7b72: $f3
    ld h, l                                       ; $7b73: $65
    ld c, $96                                     ; $7b74: $0e $96
    dec e                                         ; $7b76: $1d
    ld [hl], $c6                                  ; $7b77: $36 $c6
    add [hl]                                      ; $7b79: $86
    ld [$b3bd], sp                                ; $7b7a: $08 $bd $b3
    ld h, d                                       ; $7b7d: $62
    rst $10                                       ; $7b7e: $d7
    rra                                           ; $7b7f: $1f
    pop hl                                        ; $7b80: $e1
    ld c, d                                       ; $7b81: $4a
    cp l                                          ; $7b82: $bd
    sub h                                         ; $7b83: $94
    ld c, [hl]                                    ; $7b84: $4e
    adc [hl]                                      ; $7b85: $8e
    cp c                                          ; $7b86: $b9
    dec a                                         ; $7b87: $3d
    ld h, l                                       ; $7b88: $65
    cp d                                          ; $7b89: $ba
    ld a, [c]                                     ; $7b8a: $f2
    adc c                                         ; $7b8b: $89
    ld l, $ed                                     ; $7b8c: $2e $ed
    ld h, d                                       ; $7b8e: $62
    dec a                                         ; $7b8f: $3d
    ld sp, hl                                     ; $7b90: $f9
    adc [hl]                                      ; $7b91: $8e
    cpl                                           ; $7b92: $2f
    cp d                                          ; $7b93: $ba
    or h                                          ; $7b94: $b4
    cp e                                          ; $7b95: $bb

jr_053_7b96:
    push bc                                       ; $7b96: $c5
    push bc                                       ; $7b97: $c5
    push af                                       ; $7b98: $f5
    ldh a, [$6e]                                  ; $7b99: $f0 $6e
    pop de                                        ; $7b9b: $d1
    sbc c                                         ; $7b9c: $99
    rst $08                                       ; $7b9d: $cf
    ld l, [hl]                                    ; $7b9e: $6e
    ld l, [hl]                                    ; $7b9f: $6e
    db $ed                                        ; $7ba0: $ed
    ldh [rNR22], a                                ; $7ba1: $e0 $17
    db $d3                                        ; $7ba3: $d3
    ld e, l                                       ; $7ba4: $5d
    ld [hl+], a                                   ; $7ba5: $22
    xor [hl]                                      ; $7ba6: $ae
    push hl                                       ; $7ba7: $e5
    jr nc, jr_053_7b96                            ; $7ba8: $30 $ec

    ld a, [de]                                    ; $7baa: $1a
    rst $38                                       ; $7bab: $ff
    sub [hl]                                      ; $7bac: $96
    ld a, [de]                                    ; $7bad: $1a
    ld bc, $a6fd                                  ; $7bae: $01 $fd $a6
    ld e, [hl]                                    ; $7bb1: $5e
    adc a                                         ; $7bb2: $8f
    ld l, $23                                     ; $7bb3: $2e $23
    ld e, [hl]                                    ; $7bb5: $5e
    db $ed                                        ; $7bb6: $ed
    ld [hl], h                                    ; $7bb7: $74
    ld [hl], d                                    ; $7bb8: $72
    call z, Call_000_29ed                         ; $7bb9: $cc $ed $29
    db $d3                                        ; $7bbc: $d3
    sub l                                         ; $7bbd: $95
    ld c, a                                       ; $7bbe: $4f
    ld [hl], h                                    ; $7bbf: $74
    and l                                         ; $7bc0: $a5
    ld b, [hl]                                    ; $7bc1: $46
    add hl, hl                                    ; $7bc2: $29
    sbc l                                         ; $7bc3: $9d
    inc e                                         ; $7bc4: $1c
    ld [hl], e                                    ; $7bc5: $73
    ld a, e                                       ; $7bc6: $7b
    jp z, $e574                                   ; $7bc7: $ca $74 $e5

    inc de                                        ; $7bca: $13
    ld e, l                                       ; $7bcb: $5d
    jp c, $c911                                   ; $7bcc: $da $11 $c9

    sbc e                                         ; $7bcf: $9b
    ld l, e                                       ; $7bd0: $6b
    jp z, $6bdc                                   ; $7bd1: $ca $dc $6b

    db $dd                                        ; $7bd4: $dd
    and $b9                                       ; $7bd5: $e6 $b9
    or $63                                        ; $7bd7: $f6 $63
    db $f4                                        ; $7bd9: $f4
    ld [hl], d                                    ; $7bda: $72
    add hl, hl                                    ; $7bdb: $29
    dec bc                                        ; $7bdc: $0b
    or a                                          ; $7bdd: $b7
    rra                                           ; $7bde: $1f
    inc a                                         ; $7bdf: $3c
    cp d                                          ; $7be0: $ba
    ld a, [c]                                     ; $7be1: $f2
    adc c                                         ; $7be2: $89
    ld l, $ed                                     ; $7be3: $2e $ed
    ld [de], a                                    ; $7be5: $12
    or a                                          ; $7be6: $b7
    ld e, [hl]                                    ; $7be7: $5e
    ld [$f8f7], sp                                ; $7be8: $08 $f7 $f8
    ld l, e                                       ; $7beb: $6b
    add a                                         ; $7bec: $87
    dec l                                         ; $7bed: $2d
    ld d, e                                       ; $7bee: $53
    sbc $c1                                       ; $7bef: $de $c1
    cpl                                           ; $7bf1: $2f
    cp d                                          ; $7bf2: $ba
    ld d, $b2                                     ; $7bf3: $16 $b2
    ld h, d                                       ; $7bf5: $62
    cp b                                          ; $7bf6: $b8
    ei                                            ; $7bf7: $fb
    sbc d                                         ; $7bf8: $9a
    ld a, [hl]                                    ; $7bf9: $7e
    adc $1e                                       ; $7bfa: $ce $1e
    ld c, a                                       ; $7bfc: $4f
    sbc c                                         ; $7bfd: $99
    ld b, a                                       ; $7bfe: $47
    ld [hl], a                                    ; $7bff: $77
    or l                                          ; $7c00: $b5
    ldh [rNR30], a                                ; $7c01: $e0 $1a
    or [hl]                                       ; $7c03: $b6
    jp c, $b879                                   ; $7c04: $da $79 $b8

    add hl, sp                                    ; $7c07: $39
    and $e2                                       ; $7c08: $e6 $e2
    ld h, c                                       ; $7c0a: $61
    xor e                                         ; $7c0b: $ab
    db $dd                                        ; $7c0c: $dd
    ld [c], a                                     ; $7c0d: $e2
    ld [$ecc2], a                                 ; $7c0e: $ea $c2 $ec
    ld de, $c78e                                  ; $7c11: $11 $8e $c7
    or l                                          ; $7c14: $b5
    inc e                                         ; $7c15: $1c
    add $95                                       ; $7c16: $c6 $95
    ld e, e                                       ; $7c18: $5b
    jp $8116                                      ; $7c19: $c3 $16 $81


    ld [$b7b7], sp                                ; $7c1c: $08 $b7 $b7
    call z, $9dac                                 ; $7c1f: $cc $ac $9d
    ld h, l                                       ; $7c22: $65
    and d                                         ; $7c23: $a2
    add hl, de                                    ; $7c24: $19
    and [hl]                                      ; $7c25: $a6
    ret c                                         ; $7c26: $d8

    and e                                         ; $7c27: $a3
    sub $15                                       ; $7c28: $d6 $15
    cp l                                          ; $7c2a: $bd
    di                                            ; $7c2b: $f3
    ld [hl], b                                    ; $7c2c: $70
    ei                                            ; $7c2d: $fb
    ld [de], a                                    ; $7c2e: $12

Jump_053_7c2f:
    inc l                                         ; $7c2f: $2c
    jp $465f                                      ; $7c30: $c3 $5f $46


    ld d, d                                       ; $7c33: $52
    db $10                                        ; $7c34: $10
    ld bc, $0f29                                  ; $7c35: $01 $29 $0f
    scf                                           ; $7c38: $37
    rst $10                                       ; $7c39: $d7
    sub h                                         ; $7c3a: $94
    cp [hl]                                       ; $7c3b: $be
    inc e                                         ; $7c3c: $1c
    ld c, $35                                     ; $7c3d: $0e $35
    sub d                                         ; $7c3f: $92
    sbc d                                         ; $7c40: $9a
    ld [hl-], a                                   ; $7c41: $32
    xor $b5                                       ; $7c42: $ee $b5
    ei                                            ; $7c44: $fb
    xor b                                         ; $7c45: $a8
    push af                                       ; $7c46: $f5
    ld a, [hl]                                    ; $7c47: $7e
    adc l                                         ; $7c48: $8d
    sub e                                         ; $7c49: $93
    ld e, h                                       ; $7c4a: $5c
    inc a                                         ; $7c4b: $3c
    rst $10                                       ; $7c4c: $d7
    sub h                                         ; $7c4d: $94

Jump_053_7c4e:
    ld a, c                                       ; $7c4e: $79
    sub [hl]                                      ; $7c4f: $96
    push bc                                       ; $7c50: $c5
    and [hl]                                      ; $7c51: $a6
    and a                                         ; $7c52: $a7
    db $d3                                        ; $7c53: $d3
    and e                                         ; $7c54: $a3
    ld [hl], e                                    ; $7c55: $73
    db $ed                                        ; $7c56: $ed
    ld d, b                                       ; $7c57: $50
    ld [hl+], a                                   ; $7c58: $22
    sbc $c9                                       ; $7c59: $de $c9
    ld a, b                                       ; $7c5b: $78
    rst $20                                       ; $7c5c: $e7
    pop hl                                        ; $7c5d: $e1
    and $1a                                       ; $7c5e: $e6 $1a
    ld c, c                                       ; $7c60: $49
    ld c, l                                       ; $7c61: $4d
    add hl, de                                    ; $7c62: $19
    ld b, e                                       ; $7c63: $43
    ld [$c397], sp                                ; $7c64: $08 $97 $c3
    ld a, [hl-]                                   ; $7c67: $3a
    ld c, $23                                     ; $7c68: $0e $23
    ld e, [hl]                                    ; $7c6a: $5e
    adc l                                         ; $7c6b: $8d
    add sp, $2a                                   ; $7c6c: $e8 $2a
    sbc $e3                                       ; $7c6e: $de $e3
    add hl, hl                                    ; $7c70: $29
    ld a, l                                       ; $7c71: $7d
    pop af                                        ; $7c72: $f1
    ret                                           ; $7c73: $c9


    ld b, d                                       ; $7c74: $42
    and a                                         ; $7c75: $a7
    xor e                                         ; $7c76: $ab
    inc a                                         ; $7c77: $3c
    db $fc                                        ; $7c78: $fc
    jp nz, $b61f                                  ; $7c79: $c2 $1f $b6

    sbc d                                         ; $7c7c: $9a
    ld [hl-], a                                   ; $7c7d: $32
    ld c, [hl]                                    ; $7c7e: $4e
    cp l                                          ; $7c7f: $bd
    ld a, e                                       ; $7c80: $7b
    xor b                                         ; $7c81: $a8
    sbc d                                         ; $7c82: $9a
    jp nc, Jump_000_3b17                          ; $7c83: $d2 $17 $3b

    ld e, l                                       ; $7c86: $5d
    and h                                         ; $7c87: $a4
    ld l, e                                       ; $7c88: $6b
    and a                                         ; $7c89: $a7
    sub e                                         ; $7c8a: $93
    ld h, e                                       ; $7c8b: $63
    ld l, [hl]                                    ; $7c8c: $6e
    ld c, a                                       ; $7c8d: $4f
    sbc c                                         ; $7c8e: $99
    xor [hl]                                      ; $7c8f: $ae
    ld a, h                                       ; $7c90: $7c
    and d                                         ; $7c91: $a2
    ld c, e                                       ; $7c92: $4b
    dec sp                                        ; $7c93: $3b
    ld b, d                                       ; $7c94: $42
    ccf                                           ; $7c95: $3f
    ld [hl], c                                    ; $7c96: $71
    call nc, Call_053_678e                        ; $7c97: $d4 $8e $67
    ld h, [hl]                                    ; $7c9a: $66
    rst $10                                       ; $7c9b: $d7
    ld h, d                                       ; $7c9c: $62
    ld l, $36                                     ; $7c9d: $2e $36
    rst $28                                       ; $7c9f: $ef
    adc a                                         ; $7ca0: $8f
    ld a, h                                       ; $7ca1: $7c
    ld sp, $883e                                  ; $7ca2: $31 $3e $88
    nop                                           ; $7ca5: $00
    dec a                                         ; $7ca6: $3d
    jr jr_053_7cec                                ; $7ca7: $18 $43

    ld [$93e3], sp                                ; $7ca9: $08 $e3 $93
    inc de                                        ; $7cac: $13
    dec sp                                        ; $7cad: $3b
    ld e, [hl]                                    ; $7cae: $5e
    rst $00                                       ; $7caf: $c7
    ld h, c                                       ; $7cb0: $61
    daa                                           ; $7cb1: $27
    ld [$79ad], a                                 ; $7cb2: $ea $ad $79
    or c                                          ; $7cb5: $b1
    db $d3                                        ; $7cb6: $d3
    ld b, l                                       ; $7cb7: $45
    ld a, d                                       ; $7cb8: $7a
    sub d                                         ; $7cb9: $92
    dec l                                         ; $7cba: $2d
    ld [hl], b                                    ; $7cbb: $70
    add hl, hl                                    ; $7cbc: $29
    sbc l                                         ; $7cbd: $9d
    inc e                                         ; $7cbe: $1c
    ld [hl], e                                    ; $7cbf: $73
    ld a, e                                       ; $7cc0: $7b
    jp z, $ed73                                   ; $7cc1: $ca $73 $ed

    adc a                                         ; $7cc4: $8f
    ld c, b                                       ; $7cc5: $48
    ld e, h                                       ; $7cc6: $5c
    inc a                                         ; $7cc7: $3c
    ld a, [$b6b5]                                 ; $7cc8: $fa $b5 $b6
    sub b                                         ; $7ccb: $90
    dec d                                         ; $7ccc: $15
    ld l, e                                       ; $7ccd: $6b
    ld [hl], a                                    ; $7cce: $77
    ld e, $c6                                     ; $7ccf: $1e $c6
    ld e, [hl]                                    ; $7cd1: $5e
    add $53                                       ; $7cd2: $c6 $53
    and $b9                                       ; $7cd4: $e6 $b9
    ld h, $d9                                     ; $7cd6: $26 $d9
    ld [hl-], a                                   ; $7cd8: $32
    db $fc                                        ; $7cd9: $fc
    jp nz, $d13f                                  ; $7cda: $c2 $3f $d1

    ld c, e                                       ; $7cdd: $4b
    cp e                                          ; $7cde: $bb
    cp d                                          ; $7cdf: $ba
    jr nc, jr_053_7d5d                            ; $7ce0: $30 $7b

    add h                                         ; $7ce2: $84
    db $e3                                        ; $7ce3: $e3
    ld [hl], c                                    ; $7ce4: $71
    dec l                                         ; $7ce5: $2d
    add a                                         ; $7ce6: $87
    ld [hl], c                                    ; $7ce7: $71
    push hl                                       ; $7ce8: $e5
    sub $b0                                       ; $7ce9: $d6 $b0
    ld b, l                                       ; $7ceb: $45

jr_053_7cec:
    and [hl]                                      ; $7cec: $a6
    ld e, h                                       ; $7ced: $5c
    db $10                                        ; $7cee: $10
    ld bc, $dd80                                  ; $7cef: $01 $80 $dd
    or h                                          ; $7cf2: $b4
    inc hl                                        ; $7cf3: $23
    sub d                                         ; $7cf4: $92
    ld a, a                                       ; $7cf5: $7f
    and [hl]                                      ; $7cf6: $a6
    db $f4                                        ; $7cf7: $f4
    pop de                                        ; $7cf8: $d1
    ld d, h                                       ; $7cf9: $54
    db $ed                                        ; $7cfa: $ed
    and $50                                       ; $7cfb: $e6 $50
    sbc a                                         ; $7cfd: $9f
    inc h                                         ; $7cfe: $24
    sbc a                                         ; $7cff: $9f
    halt                                          ; $7d00: $76
    pop af                                        ; $7d01: $f1
    ret                                           ; $7d02: $c9


    ld a, [hl-]                                   ; $7d03: $3a
    ld c, $a3                                     ; $7d04: $0e $a3
    xor c                                         ; $7d06: $a9
    and l                                         ; $7d07: $a5
    dec [hl]                                      ; $7d08: $35
    call z, $b61e                                 ; $7d09: $cc $1e $b6
    sbc d                                         ; $7d0c: $9a
    ld [hl], d                                    ; $7d0d: $72
    sbc b                                         ; $7d0e: $98
    ld a, d                                       ; $7d0f: $7a
    cp l                                          ; $7d10: $bd
    sub $f3                                       ; $7d11: $d6 $f3
    ld h, h                                       ; $7d13: $64
    xor [hl]                                      ; $7d14: $ae
    add hl, hl                                    ; $7d15: $29
    sra h                                         ; $7d16: $cb $2c
    ld a, $ec                                     ; $7d18: $3e $ec
    ld [hl], l                                    ; $7d1a: $75
    inc e                                         ; $7d1b: $1c
    add [hl]                                      ; $7d1c: $86
    sbc a                                         ; $7d1d: $9f
    add h                                         ; $7d1e: $84
    and $82                                       ; $7d1f: $e6 $82
    ld [$c93d], sp                                ; $7d21: $08 $3d $c9
    dec de                                        ; $7d24: $1b
    or [hl]                                       ; $7d25: $b6
    sbc d                                         ; $7d26: $9a
    ld a, [c]                                     ; $7d27: $f2
    ld l, [hl]                                    ; $7d28: $6e
    ld l, [hl]                                    ; $7d29: $6e
    db $ed                                        ; $7d2a: $ed
    ldh [rNR22], a                                ; $7d2b: $e0 $17
    db $d3                                        ; $7d2d: $d3
    ld e, l                                       ; $7d2e: $5d

jr_053_7d2f:
    ld [hl+], a                                   ; $7d2f: $22
    ld d, $f7                                     ; $7d30: $16 $f7
    jp c, $927a                                   ; $7d32: $da $7a $92

    or a                                          ; $7d35: $b7
    db $d3                                        ; $7d36: $d3
    ld e, [hl]                                    ; $7d37: $5e
    jr c, jr_053_7d75                             ; $7d38: $38 $3b

    ld hl, sp+$45                                 ; $7d3a: $f8 $45
    rst $10                                       ; $7d3c: $d7
    add sp, $2f                                   ; $7d3d: $e8 $2f
    ld h, a                                       ; $7d3f: $67
    jp z, $0bdc                                   ; $7d40: $ca $dc $0b

    ld bc, $df37                                  ; $7d43: $01 $37 $df
    ld [hl], l                                    ; $7d46: $75
    rst $10                                       ; $7d47: $d7
    ld l, l                                       ; $7d48: $6d
    dec sp                                        ; $7d49: $3b
    ld hl, sp+$45                                 ; $7d4a: $f8 $45
    rla                                           ; $7d4c: $17
    call c, Call_053_61bd                         ; $7d4d: $dc $bd $61
    ccf                                           ; $7d50: $3f
    ld b, [hl]                                    ; $7d51: $46
    cpl                                           ; $7d52: $2f
    db $fd                                        ; $7d53: $fd
    jp z, Jump_053_590b                           ; $7d54: $ca $0b $59

    add hl, de                                    ; $7d57: $19
    xor [hl]                                      ; $7d58: $ae
    adc a                                         ; $7d59: $8f
    jp Jump_053_72b8                              ; $7d5a: $c3 $b8 $72


jr_053_7d5d:
    xor l                                         ; $7d5d: $ad
    db $e3                                        ; $7d5e: $e3
    jr nc, @-$04                                  ; $7d5f: $30 $fa

    rst $00                                       ; $7d61: $c7
    jr c, jr_053_7d2f                             ; $7d62: $38 $cb

    or b                                          ; $7d64: $b0
    push de                                       ; $7d65: $d5
    ld a, [hl-]                                   ; $7d66: $3a
    cp c                                          ; $7d67: $b9
    call nc, Call_000_2fc1                        ; $7d68: $d4 $c1 $2f
    adc $b2                                       ; $7d6b: $ce $b2
    ldh a, [rNR50]                                ; $7d6d: $f0 $24
    ld b, b                                       ; $7d6f: $40
    inc b                                         ; $7d70: $04
    rla                                           ; $7d71: $17
    ld de, $c210                                  ; $7d72: $11 $10 $c2

jr_053_7d75:
    ld a, [hl]                                    ; $7d75: $7e
    rst $08                                       ; $7d76: $cf
    or c                                          ; $7d77: $b1
    inc l                                         ; $7d78: $2c
    ld sp, $e94f                                  ; $7d79: $31 $4f $e9
    inc hl                                        ; $7d7c: $23
    sub d                                         ; $7d7d: $92
    ld e, h                                       ; $7d7e: $5c
    ld [$3ac9], a                                 ; $7d7f: $ea $c9 $3a
    cp c                                          ; $7d82: $b9
    call nc, $7e0e                                ; $7d83: $d4 $0e $7e
    pop de                                        ; $7d86: $d1
    push de                                       ; $7d87: $d5
    dec bc                                        ; $7d88: $0b
    ld bc, $c477                                  ; $7d89: $01 $77 $c4
    add sp, $1d                                   ; $7d8c: $e8 $1d
    or d                                          ; $7d8e: $b2
    xor e                                         ; $7d8f: $ab
    ldh [$ee], a                                  ; $7d90: $e0 $ee
    or [hl]                                       ; $7d92: $b6
    ld c, h                                       ; $7d93: $4c
    jp hl                                         ; $7d94: $e9


    ld c, e                                       ; $7d95: $4b
    db $eb                                        ; $7d96: $eb
    and l                                         ; $7d97: $a5
    cp h                                          ; $7d98: $bc
    ret c                                         ; $7d99: $d8

    jp hl                                         ; $7d9a: $e9


    ld [hl+], a                                   ; $7d9b: $22
    dec a                                         ; $7d9c: $3d
    ret                                           ; $7d9d: $c9


    ld d, $b8                                     ; $7d9e: $16 $b8
    ld l, [hl]                                    ; $7da0: $6e
    adc a                                         ; $7da1: $8f
    ld l, [hl]                                    ; $7da2: $6e
    ld a, $ec                                     ; $7da3: $3e $ec
    dec e                                         ; $7da5: $1d
    db $fc                                        ; $7da6: $fc
    and d                                         ; $7da7: $a2
    ld l, e                                       ; $7da8: $6b
    pop hl                                        ; $7da9: $e1
    ret                                           ; $7daa: $c9


    adc c                                         ; $7dab: $89
    ld e, [hl]                                    ; $7dac: $5e
    ret z                                         ; $7dad: $c8

    adc d                                         ; $7dae: $8a
    pop hl                                        ; $7daf: $e1
    ld l, [hl]                                    ; $7db0: $6e
    xor c                                         ; $7db1: $a9
    ld l, $55                                     ; $7db2: $2e $55
    ld d, $0f                                     ; $7db4: $16 $0f
    ld a, a                                       ; $7db6: $7f
    pop af                                        ; $7db7: $f1
    adc [hl]                                      ; $7db8: $8e
    ld e, e                                       ; $7db9: $5b
    ld [hl], b                                    ; $7dba: $70
    dec l                                         ; $7dbb: $2d
    ld h, h                                       ; $7dbc: $64
    push bc                                       ; $7dbd: $c5
    xor [hl]                                      ; $7dbe: $ae

Jump_053_7dbf:
    ccf                                           ; $7dbf: $3f
    sub d                                         ; $7dc0: $92
    jp c, $b989                                   ; $7dc1: $da $89 $b9

    ld e, c                                       ; $7dc4: $59
    or h                                          ; $7dc5: $b4
    jp Jump_000_2996                              ; $7dc6: $c3 $96 $29


    adc a                                         ; $7dc9: $8f
    ld e, a                                       ; $7dca: $5f
    dec c                                         ; $7dcb: $0d
    ld l, e                                       ; $7dcc: $6b
    inc a                                         ; $7dcd: $3c
    db $ec                                        ; $7dce: $ec
    ld a, [de]                                    ; $7dcf: $1a
    sbc l                                         ; $7dd0: $9d
    ld l, e                                       ; $7dd1: $6b
    jp z, Jump_000_110c                           ; $7dd2: $ca $0c $11

    ld [hl], a                                    ; $7dd5: $77
    ld h, e                                       ; $7dd6: $63
    xor h                                         ; $7dd7: $ac
    dec e                                         ; $7dd8: $1d
    sbc c                                         ; $7dd9: $99
    ld c, c                                       ; $7dda: $49
    ret nc                                        ; $7ddb: $d0

    cp c                                          ; $7ddc: $b9
    inc b                                         ; $7ddd: $04
    xor $82                                       ; $7dde: $ee $82
    adc e                                         ; $7de0: $8b
    ld l, a                                       ; $7de1: $6f
    cp d                                          ; $7de2: $ba
    ld a, h                                       ; $7de3: $7c
    add hl, hl                                    ; $7de4: $29
    rst $30                                       ; $7de5: $f7
    ld e, l                                       ; $7de6: $5d
    adc b                                         ; $7de7: $88
    nop                                           ; $7de8: $00
    rst $30                                       ; $7de9: $f7
    inc a                                         ; $7dea: $3c
    inc a                                         ; $7deb: $3c
    ld a, c                                       ; $7dec: $79
    ld e, b                                       ; $7ded: $58
    cp e                                          ; $7dee: $bb
    and e                                         ; $7def: $a3
    ld l, c                                       ; $7df0: $69
    ld l, h                                       ; $7df1: $6c
    xor $d2                                       ; $7df2: $ee $d2
    ret nz                                        ; $7df4: $c0

    ld e, l                                       ; $7df5: $5d
    ld [hl], b                                    ; $7df6: $70
    pop af                                        ; $7df7: $f1
    ld c, l                                       ; $7df8: $4d
    sub a                                         ; $7df9: $97
    cpl                                           ; $7dfa: $2f
    push hl                                       ; $7dfb: $e5
    cp [hl]                                       ; $7dfc: $be

jr_053_7dfd:
    dec bc                                        ; $7dfd: $0b
    ld de, $91b7                                  ; $7dfe: $11 $b7 $91
    call Call_053_61da                            ; $7e01: $cd $da $61
    bit 7, [hl]                                   ; $7e04: $cb $7e
    adc h                                         ; $7e06: $8c
    ld e, $e1                                     ; $7e07: $1e $e1
    add $c3                                       ; $7e09: $c6 $c3
    ld e, c                                       ; $7e0b: $59
    ld e, c                                       ; $7e0c: $59
    jr jr_053_7dfd                                ; $7e0d: $18 $ee

    add d                                         ; $7e0f: $82
    adc e                                         ; $7e10: $8b
    ld l, a                                       ; $7e11: $6f
    cp d                                          ; $7e12: $ba
    ld a, h                                       ; $7e13: $7c
    add hl, hl                                    ; $7e14: $29
    rst $30                                       ; $7e15: $f7
    ld e, l                                       ; $7e16: $5d
    adc b                                         ; $7e17: $88
    nop                                           ; $7e18: $00
    ld a, l                                       ; $7e19: $7d

Call_053_7e1a:
    cp d                                          ; $7e1a: $ba
    adc $81                                       ; $7e1b: $ce $81
    db $10                                        ; $7e1d: $10
    ld a, [hl+]                                   ; $7e1e: $2a
    di                                            ; $7e1f: $f3

jr_053_7e20:
    sub h                                         ; $7e20: $94
    ld l, e                                       ; $7e21: $6b
    rlca                                          ; $7e22: $07
    cp a                                          ; $7e23: $bf
    ret z                                         ; $7e24: $c8

    sbc $c9                                       ; $7e25: $de $c9
    ld a, b                                       ; $7e27: $78
    ld sp, $924b                                  ; $7e28: $31 $4b $92
    sbc e                                         ; $7e2b: $9b
    adc $7c                                       ; $7e2c: $ce $7c
    ld c, c                                       ; $7e2e: $49
    ei                                            ; $7e2f: $fb
    jr jr_053_7e20                                ; $7e30: $18 $ee

    add d                                         ; $7e32: $82
    adc e                                         ; $7e33: $8b
    ld l, a                                       ; $7e34: $6f
    cp d                                          ; $7e35: $ba
    ld a, h                                       ; $7e36: $7c
    add hl, hl                                    ; $7e37: $29
    rst $30                                       ; $7e38: $f7
    ld e, l                                       ; $7e39: $5d
    adc b                                         ; $7e3a: $88
    nop                                           ; $7e3b: $00
    rla                                           ; $7e3c: $17
    sbc l                                         ; $7e3d: $9d
    ld c, [hl]                                    ; $7e3e: $4e
    ld [$24f5], a                                 ; $7e3f: $ea $f5 $24
    ld l, a                                       ; $7e42: $6f
    ret                                           ; $7e43: $c9


    xor e                                         ; $7e44: $ab
    add hl, hl                                    ; $7e45: $29
    di                                            ; $7e46: $f3
    add sp, $5c                                   ; $7e47: $e8 $5c
    sub e                                         ; $7e49: $93
    ld l, h                                       ; $7e4a: $6c
    db $ed                                        ; $7e4b: $ed
    db $e4                                        ; $7e4c: $e4
    dec h                                         ; $7e4d: $25
    call $b497                                    ; $7e4e: $cd $97 $b4
    call c, Call_000_176b                         ; $7e51: $dc $6b $17
    ld e, h                                       ; $7e54: $5c
    ld a, h                                       ; $7e55: $7c
    db $d3                                        ; $7e56: $d3
    push hl                                       ; $7e57: $e5
    ld c, e                                       ; $7e58: $4b
    cp c                                          ; $7e59: $b9
    rst $28                                       ; $7e5a: $ef
    ld b, d                                       ; $7e5b: $42
    inc b                                         ; $7e5c: $04
    add b                                         ; $7e5d: $80
    ld a, [$0822]                                 ; $7e5e: $fa $22 $08

jr_053_7e61:
    db $ed                                        ; $7e61: $ed
    sub h                                         ; $7e62: $94
    ld a, c                                       ; $7e63: $79
    jp z, $ae35                                   ; $7e64: $ca $35 $ae

    ld e, h                                       ; $7e67: $5c
    db $eb                                        ; $7e68: $eb
    jr c, jr_053_7e97                             ; $7e69: $38 $2c

    ld a, c                                       ; $7e6b: $79
    dec [hl]                                      ; $7e6c: $35
    ld b, d                                       ; $7e6d: $42
    rla                                           ; $7e6e: $17
    ld h, l                                       ; $7e6f: $65
    db $fc                                        ; $7e70: $fc
    jr jr_053_7e61                                ; $7e71: $18 $ee

    add d                                         ; $7e73: $82
    adc e                                         ; $7e74: $8b
    ld l, a                                       ; $7e75: $6f
    cp d                                          ; $7e76: $ba
    ld a, h                                       ; $7e77: $7c
    add hl, hl                                    ; $7e78: $29
    rst $30                                       ; $7e79: $f7
    ld e, l                                       ; $7e7a: $5d
    adc b                                         ; $7e7b: $88
    nop                                           ; $7e7c: $00
    db $dd                                        ; $7e7d: $dd
    sbc $f9                                       ; $7e7e: $de $f9
    xor [hl]                                      ; $7e80: $ae
    dec a                                         ; $7e81: $3d
    sbc [hl]                                      ; $7e82: $9e
    jp nc, Jump_053_5ae7                          ; $7e83: $d2 $e7 $5a

    rst $08                                       ; $7e86: $cf
    xor e                                         ; $7e87: $ab
    jp nc, $beec                                  ; $7e88: $d2 $ec $be

    call z, $82ec                                 ; $7e8b: $cc $ec $82

jr_053_7e8e:
    ld [$e6dd], sp                                ; $7e8e: $08 $dd $e6
    dec e                                         ; $7e91: $1d
    ld [hl], $c6                                  ; $7e92: $36 $c6
    ld l, $88                                     ; $7e94: $2e $88
    nop                                           ; $7e96: $00

jr_053_7e97:
    add hl, hl                                    ; $7e97: $29
    call nc, $d44e                                ; $7e98: $d4 $4e $d4
    ld l, c                                       ; $7e9b: $69
    jp c, Jump_000_0ca2                           ; $7e9c: $da $a2 $0c

    rst $10                                       ; $7e9f: $d7
    ld l, l                                       ; $7ea0: $6d
    ld h, [hl]                                    ; $7ea1: $66
    rst $08                                       ; $7ea2: $cf
    or l                                          ; $7ea3: $b5
    dec sp                                        ; $7ea4: $3b
    db $eb                                        ; $7ea5: $eb
    and l                                         ; $7ea6: $a5
    db $d3                                        ; $7ea7: $d3
    sub $2e                                       ; $7ea8: $d6 $2e
    add a                                         ; $7eaa: $87
    ld de, $a64f                                  ; $7eab: $11 $4f $a6
    ld e, h                                       ; $7eae: $5c
    ld [hl], e                                    ; $7eaf: $73
    xor l                                         ; $7eb0: $ad
    or a                                          ; $7eb1: $b7

Call_053_7eb2:
    ld e, [hl]                                    ; $7eb2: $5e
    pop bc                                        ; $7eb3: $c1
    dec c                                         ; $7eb4: $0d
    ld [hl+], a                                   ; $7eb5: $22
    cp l                                          ; $7eb6: $bd
    ld c, e                                       ; $7eb7: $4b
    inc hl                                        ; $7eb8: $23
    inc c                                         ; $7eb9: $0c
    ld de, $d229                                  ; $7eba: $11 $29 $d2
    ld b, l                                       ; $7ebd: $45
    inc sp                                        ; $7ebe: $33
    ld b, h                                       ; $7ebf: $44
    ld a, l                                       ; $7ec0: $7d
    inc e                                         ; $7ec1: $1c
    halt                                          ; $7ec2: $76
    ld e, h                                       ; $7ec3: $5c
    ld d, e                                       ; $7ec4: $53
    ld a, [$5788]                                 ; $7ec5: $fa $88 $57
    db $e3                                        ; $7ec8: $e3
    jp nc, $da69                                  ; $7ec9: $d2 $69 $da

    inc a                                         ; $7ecc: $3c
    jr nz, jr_053_7e8e                            ; $7ecd: $20 $bf

    or c                                          ; $7ecf: $b1
    db $eb                                        ; $7ed0: $eb
    ld e, b                                       ; $7ed1: $58
    ldh [rPCM12], a                               ; $7ed2: $e0 $76
    rst $18                                       ; $7ed4: $df
    dec sp                                        ; $7ed5: $3b
    ld h, a                                       ; $7ed6: $67
    jp z, $bb41                                   ; $7ed7: $ca $41 $bb

    ei                                            ; $7eda: $fb
    ld [hl-], a                                   ; $7edb: $32
    or e                                          ; $7edc: $b3
    ld c, e                                       ; $7edd: $4b
    dec sp                                        ; $7ede: $3b
    and l                                         ; $7edf: $a5
    cpl                                           ; $7ee0: $2f
    ld sp, hl                                     ; $7ee1: $f9
    ld l, l                                       ; $7ee2: $6d
    adc c                                         ; $7ee3: $89
    db $db                                        ; $7ee4: $db
    ld a, [hl]                                    ; $7ee5: $7e
    adc h                                         ; $7ee6: $8c
    ld e, $b6                                     ; $7ee7: $1e $b6
    inc b                                         ; $7ee9: $04
    ld c, a                                       ; $7eea: $4f
    add hl, sp                                    ; $7eeb: $39
    inc c                                         ; $7eec: $0c
    ld e, e                                       ; $7eed: $5b
    ld c, l                                       ; $7eee: $4d
    ld e, c                                       ; $7eef: $59
    ld d, $5e                                     ; $7ef0: $16 $5e
    di                                            ; $7ef2: $f3
    ld c, [hl]                                    ; $7ef3: $4e
    ld l, $b6                                     ; $7ef4: $2e $b6
    ld b, b                                       ; $7ef6: $40
    inc b                                         ; $7ef7: $04
    ld a, l                                       ; $7ef8: $7d
    inc e                                         ; $7ef9: $1c
    add $95                                       ; $7efa: $c6 $95
    ld l, e                                       ; $7efc: $6b
    dec e                                         ; $7efd: $1d
    add a                                         ; $7efe: $87
    dec h                                         ; $7eff: $25
    and $11                                       ; $7f00: $e6 $11
    adc c                                         ; $7f02: $89
    pop af                                        ; $7f03: $f1
    ld c, [hl]                                    ; $7f04: $4e
    add $73                                       ; $7f05: $c6 $73
    ld c, l                                       ; $7f07: $4d
    ld e, c                                       ; $7f08: $59
    ld d, $5e                                     ; $7f09: $16 $5e
    di                                            ; $7f0b: $f3
    ld c, [hl]                                    ; $7f0c: $4e
    ld l, $b6                                     ; $7f0d: $2e $b6
    adc h                                         ; $7f0f: $8c
    ld [hl], b                                    ; $7f10: $70
    ld b, c                                       ; $7f11: $41
    inc b                                         ; $7f12: $04
    db $dd                                        ; $7f13: $dd
    ld a, [$7ad2]                                 ; $7f14: $fa $d2 $7a
    add hl, hl                                    ; $7f17: $29
    cpl                                           ; $7f18: $2f
    jp hl                                         ; $7f19: $e9


    xor e                                         ; $7f1a: $ab
    cp h                                          ; $7f1b: $bc
    or $99                                        ; $7f1c: $f6 $99
    ld b, a                                       ; $7f1e: $47
    ld [hl], h                                    ; $7f1f: $74
    pop de                                        ; $7f20: $d1
    db $ed                                        ; $7f21: $ed
    rlca                                          ; $7f22: $07
    sub a                                         ; $7f23: $97
    or l                                          ; $7f24: $b5
    cp e                                          ; $7f25: $bb
    cpl                                           ; $7f26: $2f
    inc sp                                        ; $7f27: $33
    cp e                                          ; $7f28: $bb
    or h                                          ; $7f29: $b4
    ld [hl], e                                    ; $7f2a: $73
    ld l, e                                       ; $7f2b: $6b
    xor [hl]                                      ; $7f2c: $ae

jr_053_7f2d:
    or e                                          ; $7f2d: $b3
    ld hl, sp+$64                                 ; $7f2e: $f8 $64
    ld c, d                                       ; $7f30: $4a
    sbc a                                         ; $7f31: $9f
    ld b, l                                       ; $7f32: $45
    ld a, c                                       ; $7f33: $79
    daa                                           ; $7f34: $27
    db $e3                                        ; $7f35: $e3
    ld bc, $8df9                                  ; $7f36: $01 $f9 $8d
    ld e, l                                       ; $7f39: $5d
    rst $00                                       ; $7f3a: $c7
    ld [hl-], a                                   ; $7f3b: $32
    jp nz, $1105                                  ; $7f3c: $c2 $05 $11

    or a                                          ; $7f3f: $b7
    ld hl, sp-$10                                 ; $7f40: $f8 $f0
    sub h                                         ; $7f42: $94
    rrc e                                         ; $7f43: $cb $0b
    ld d, h                                       ; $7f45: $54
    ld b, c                                       ; $7f46: $41
    inc b                                         ; $7f47: $04
    add b                                         ; $7f48: $80
    rst $38                                       ; $7f49: $ff
    adc b                                         ; $7f4a: $88
    ld d, a                                       ; $7f4b: $57
    ei                                            ; $7f4c: $fb
    ld sp, $4d7a                                  ; $7f4d: $31 $7a $4d
    ld [hl], e                                    ; $7f50: $73
    ld a, b                                       ; $7f51: $78
    db $fc                                        ; $7f52: $fc
    db $db                                        ; $7f53: $db
    xor b                                         ; $7f54: $a8
    dec b                                         ; $7f55: $05
    ld l, d                                       ; $7f56: $6a
    ld [hl], h                                    ; $7f57: $74
    ld d, a                                       ; $7f58: $57
    dec l                                         ; $7f59: $2d
    ld sp, hl                                     ; $7f5a: $f9
    inc hl                                        ; $7f5b: $23
    ld e, [hl]                                    ; $7f5c: $5e

Jump_053_7f5d:
    db $ed                                        ; $7f5d: $ed
    ldh [rNR22], a                                ; $7f5e: $e0 $17
    ld a, c                                       ; $7f60: $79
    inc h                                         ; $7f61: $24

jr_053_7f62:
    or l                                          ; $7f62: $b5
    sub b                                         ; $7f63: $90
    dec d                                         ; $7f64: $15
    cp e                                          ; $7f65: $bb
    cp [hl]                                       ; $7f66: $be
    push bc                                       ; $7f67: $c5
    ld d, e                                       ; $7f68: $53
    ld l, $1f                                     ; $7f69: $2e $1f
    jr c, jr_053_7f2d                             ; $7f6b: $38 $c0

    ld a, l                                       ; $7f6d: $7d
    push de                                       ; $7f6e: $d5
    add hl, bc                                    ; $7f6f: $09
    ld e, c                                       ; $7f70: $59
    adc l                                         ; $7f71: $8d
    adc $75                                       ; $7f72: $ce $75
    inc [hl]                                      ; $7f74: $34
    ld [hl-], a                                   ; $7f75: $32
    push hl                                       ; $7f76: $e5
    or d                                          ; $7f77: $b2
    halt                                          ; $7f78: $76
    ld b, c                                       ; $7f79: $41
    ld h, a                                       ; $7f7a: $67
    halt                                          ; $7f7b: $76
    and l                                         ; $7f7c: $a5
    ld b, [hl]                                    ; $7f7d: $46
    rst $30                                       ; $7f7e: $f7
    ld a, l                                       ; $7f7f: $7d
    ld [hl-], a                                   ; $7f80: $32
    dec [hl]                                      ; $7f81: $35
    ld [bc], a                                    ; $7f82: $02
    ld [hl], a                                    ; $7f83: $77
    halt                                          ; $7f84: $76
    cp d                                          ; $7f85: $ba
    ret z                                         ; $7f86: $c8

    add l                                         ; $7f87: $85
    xor h                                         ; $7f88: $ac
    ret c                                         ; $7f89: $d8

    push af                                       ; $7f8a: $f5
    ld e, l                                       ; $7f8b: $5d
    dec sp                                        ; $7f8c: $3b
    ld l, [hl]                                    ; $7f8d: $6e
    ret                                           ; $7f8e: $c9


    call nz, $bd87                                ; $7f8f: $c4 $87 $bd
    ldh a, [rNR50]                                ; $7f92: $f0 $24
    and h                                         ; $7f94: $a4
    ld b, [hl]                                    ; $7f95: $46
    db $dd                                        ; $7f96: $dd
    and $b9                                       ; $7f97: $e6 $b9
    or $63                                        ; $7f99: $f6 $63
    db $f4                                        ; $7f9b: $f4
    ld c, [hl]                                    ; $7f9c: $4e
    db $d3                                        ; $7f9d: $d3
    sbc c                                         ; $7f9e: $99
    add a                                         ; $7f9f: $87
    xor l                                         ; $7fa0: $ad
    and [hl]                                      ; $7fa1: $a6
    call z, $ed6c                                 ; $7fa2: $cc $6c $ed
    xor $cb                                       ; $7fa5: $ee $cb
    call z, $d4ae                                 ; $7fa7: $cc $ae $d4
    ld [$5f00], sp                                ; $7faa: $08 $00 $5f
    adc h                                         ; $7fad: $8c
    jp c, $97dd                                   ; $7fae: $da $dd $97

    sbc c                                         ; $7fb1: $99
    ld e, l                                       ; $7fb2: $5d
    ld [hl], b                                    ; $7fb3: $70
    rst $30                                       ; $7fb4: $f7
    ld d, b                                       ; $7fb5: $50
    ld h, e                                       ; $7fb6: $63
    ld c, e                                       ; $7fb7: $4b
    ld [hl], h                                    ; $7fb8: $74
    xor l                                         ; $7fb9: $ad
    db $e3                                        ; $7fba: $e3
    jr nc, jr_053_7f62                            ; $7fbb: $30 $a5

    adc a                                         ; $7fbd: $8f
    ld a, b                                       ; $7fbe: $78
    or l                                          ; $7fbf: $b5
    sub $57                                       ; $7fc0: $d6 $57
    pop af                                        ; $7fc2: $f1
    jp nc, $e556                                  ; $7fc3: $d2 $56 $e5

    ld e, c                                       ; $7fc6: $59
    ld h, h                                       ; $7fc7: $64
    call nc, $a674                                ; $7fc8: $d4 $74 $a6
    ld [hl], e                                    ; $7fcb: $73
    xor c                                         ; $7fcc: $a9
    ld a, [c]                                     ; $7fcd: $f2
    add sp, -$24                                  ; $7fce: $e8 $dc
    ld [c], a                                     ; $7fd0: $e2
    ld c, [hl]                                    ; $7fd1: $4e
    add $73                                       ; $7fd2: $c6 $73
    dec l                                         ; $7fd4: $2d
    ld l, l                                       ; $7fd5: $6d
    ld d, l                                       ; $7fd6: $55
    sbc [hl]                                      ; $7fd7: $9e
    ld b, l                                       ; $7fd8: $45
    and [hl]                                      ; $7fd9: $a6
    inc e                                         ; $7fda: $1c
    jr nz, jr_053_7fdf                            ; $7fdb: $20 $02

    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff

jr_053_7fdf:
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
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
