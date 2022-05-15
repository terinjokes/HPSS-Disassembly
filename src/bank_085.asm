; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $085", ROMX[$4000], BANK[$85]

    add l                                         ; $4000: $85
    rrca                                          ; $4001: $0f
    nop                                           ; $4002: $00
    dec de                                        ; $4003: $1b
    nop                                           ; $4004: $00
    add b                                         ; $4005: $80
    db $28, $d1                                   ; $4006: $28 $d1
    pop de                                        ; $4008: $d1
    pop de                                        ; $4009: $d1
    jp nc, $d1d1                                  ; $400a: $d2 $d1 $d1

    pop de                                        ; $400d: $d1
    jp nc, $d1d1                                  ; $400e: $d2 $d1 $d1

    pop de                                        ; $4011: $d1
    jp nc, $d1d1                                  ; $4012: $d2 $d1 $d1

    pop de                                        ; $4015: $d1
    jp nc, $8080                                  ; $4016: $d2 $80 $80

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
    db $d3                                        ; $4027: $d3
    call nc, $d3d5                                ; $4028: $d4 $d5 $d3
    sub $d7                                       ; $402b: $d6 $d7
    ret c                                         ; $402d: $d8

    sub $d9                                       ; $402e: $d6 $d9
    jp c, $d9db                                   ; $4030: $da $db $d9

    call c, $dedd                                 ; $4033: $dc $dd $de
    rst $18                                       ; $4036: $df
    ld bc, $0101                                  ; $4037: $01 $01 $01
    ld bc, $0101                                  ; $403a: $01 $01 $01
    ld bc, $0101                                  ; $403d: $01 $01 $01
    ld bc, $0101                                  ; $4040: $01 $01 $01
    ld bc, $0101                                  ; $4043: $01 $01 $01
    ld bc, $d5d4                                  ; $4046: $01 $d4 $d5
    db $d3                                        ; $4049: $d3
    call nc, $d8d7                                ; $404a: $d4 $d7 $d8
    sub $d7                                       ; $404d: $d6 $d7
    jp c, $d9db                                   ; $404f: $da $db $d9

    jp c, $e1e0                                   ; $4052: $da $e0 $e1

    call c, Call_000_01dd                         ; $4055: $dc $dd $01
    ld bc, $0101                                  ; $4058: $01 $01 $01
    ld bc, $0101                                  ; $405b: $01 $01 $01
    ld bc, $0101                                  ; $405e: $01 $01 $01
    ld bc, $0101                                  ; $4061: $01 $01 $01
    ld bc, $0101                                  ; $4064: $01 $01 $01
    push de                                       ; $4067: $d5
    db $d3                                        ; $4068: $d3
    call nc, $d8d1                                ; $4069: $d4 $d1 $d8
    sub $d7                                       ; $406c: $d6 $d7
    pop de                                        ; $406e: $d1
    db $db                                        ; $406f: $db
    reti                                          ; $4070: $d9


    jp c, $ded1                                   ; $4071: $da $d1 $de

    rst $18                                       ; $4074: $df
    ldh [$e2], a                                  ; $4075: $e0 $e2
    ld bc, $0101                                  ; $4077: $01 $01 $01
    ld bc, $0101                                  ; $407a: $01 $01 $01
    ld bc, $0101                                  ; $407d: $01 $01 $01
    ld bc, $0101                                  ; $4080: $01 $01 $01
    ld bc, $0101                                  ; $4083: $01 $01 $01
    ld bc, $e4e3                                  ; $4086: $01 $e3 $e4
    db $e3                                        ; $4089: $e3
    db $e4                                        ; $408a: $e4
    push hl                                       ; $408b: $e5
    and $e7                                       ; $408c: $e6 $e7
    add sp, -$17                                  ; $408e: $e8 $e9
    ld [$eceb], a                                 ; $4090: $ea $eb $ec
    db $ed                                        ; $4093: $ed
    xor $ef                                       ; $4094: $ee $ef
    ldh a, [rSB]                                  ; $4096: $f0 $01
    ld bc, $0101                                  ; $4098: $01 $01 $01
    rlca                                          ; $409b: $07
    rlca                                          ; $409c: $07
    rlca                                          ; $409d: $07
    rlca                                          ; $409e: $07
    rlca                                          ; $409f: $07
    ld b, $06                                     ; $40a0: $06 $06
    ld b, $07                                     ; $40a2: $06 $07
    ld b, $06                                     ; $40a4: $06 $06
    ld b, $e3                                     ; $40a6: $06 $e3
    db $e4                                        ; $40a8: $e4
    db $e3                                        ; $40a9: $e3
    db $e4                                        ; $40aa: $e4
    push hl                                       ; $40ab: $e5
    and $e7                                       ; $40ac: $e6 $e7
    add sp, -$0f                                  ; $40ae: $e8 $f1
    ld [$f3f2], a                                 ; $40b0: $ea $f2 $f3
    db $f4                                        ; $40b3: $f4
    push af                                       ; $40b4: $f5
    or $f7                                        ; $40b5: $f6 $f7
    ld bc, $0101                                  ; $40b7: $01 $01 $01
    ld bc, $0707                                  ; $40ba: $01 $07 $07
    rlca                                          ; $40bd: $07
    rlca                                          ; $40be: $07
    ld b, $05                                     ; $40bf: $06 $05
    ld b, $06                                     ; $40c1: $06 $06
    ld b, $06                                     ; $40c3: $06 $06
    ld b, $05                                     ; $40c5: $06 $05
    db $e3                                        ; $40c7: $e3
    db $e4                                        ; $40c8: $e4
    db $e3                                        ; $40c9: $e3
    db $e4                                        ; $40ca: $e4
    push hl                                       ; $40cb: $e5
    and $e7                                       ; $40cc: $e6 $e7
    add sp, -$17                                  ; $40ce: $e8 $e9
    ld [$f3f2], a                                 ; $40d0: $ea $f2 $f3
    db $ed                                        ; $40d3: $ed
    push af                                       ; $40d4: $f5
    or $f7                                        ; $40d5: $f6 $f7
    ld bc, $0101                                  ; $40d7: $01 $01 $01
    ld bc, $0707                                  ; $40da: $01 $07 $07
    rlca                                          ; $40dd: $07
    rlca                                          ; $40de: $07
    ld b, $05                                     ; $40df: $06 $05
    dec b                                         ; $40e1: $05
    ld b, $06                                     ; $40e2: $06 $06
    ld b, $05                                     ; $40e4: $06 $05
    ld b, $d1                                     ; $40e6: $06 $d1
    pop de                                        ; $40e8: $d1
    pop de                                        ; $40e9: $d1
    jp nc, $d1d1                                  ; $40ea: $d2 $d1 $d1

    pop de                                        ; $40ed: $d1
    jp nc, $f8d1                                  ; $40ee: $d2 $d1 $f8

    ld sp, hl                                     ; $40f1: $f9
    ld a, [$d2d1]                                 ; $40f2: $fa $d1 $d2
    ei                                            ; $40f5: $fb
    db $fc                                        ; $40f6: $fc
    add b                                         ; $40f7: $80
    add b                                         ; $40f8: $80
    add b                                         ; $40f9: $80
    add b                                         ; $40fa: $80
    add b                                         ; $40fb: $80
    add b                                         ; $40fc: $80
    add b                                         ; $40fd: $80
    add b                                         ; $40fe: $80
    add b                                         ; $40ff: $80
    add b                                         ; $4100: $80
    add b                                         ; $4101: $80
    add b                                         ; $4102: $80
    add b                                         ; $4103: $80
    add b                                         ; $4104: $80
    ld bc, $fd01                                  ; $4105: $01 $01 $fd
    cp $ff                                        ; $4108: $fe $ff
    nop                                           ; $410a: $00
    ld bc, $0302                                  ; $410b: $01 $02 $03
    inc b                                         ; $410e: $04
    dec b                                         ; $410f: $05
    ld b, $07                                     ; $4110: $06 $07
    ld [$0a09], sp                                ; $4112: $08 $09 $0a
    dec bc                                        ; $4115: $0b
    inc c                                         ; $4116: $0c
    rlca                                          ; $4117: $07
    ld b, $06                                     ; $4118: $06 $06
    ld b, $07                                     ; $411a: $06 $07
    ld b, $06                                     ; $411c: $06 $06
    ld b, $07                                     ; $411e: $06 $07
    dec b                                         ; $4120: $05
    ld b, $06                                     ; $4121: $06 $06
    rlca                                          ; $4123: $07
    ld b, $06                                     ; $4124: $06 $06
    dec b                                         ; $4126: $05
    dec c                                         ; $4127: $0d
    ld c, $0f                                     ; $4128: $0e $0f
    db $10                                        ; $412a: $10
    ld de, $1312                                  ; $412b: $11 $12 $13
    inc d                                         ; $412e: $14
    dec b                                         ; $412f: $05
    ld b, $07                                     ; $4130: $06 $07
    ld [$0a09], sp                                ; $4132: $08 $09 $0a
    dec bc                                        ; $4135: $0b
    inc c                                         ; $4136: $0c
    ld b, $06                                     ; $4137: $06 $06
    dec b                                         ; $4139: $05
    ld b, $06                                     ; $413a: $06 $06
    dec b                                         ; $413c: $05
    ld b, $06                                     ; $413d: $06 $06
    dec b                                         ; $413f: $05
    ld b, $06                                     ; $4140: $06 $06
    dec b                                         ; $4142: $05
    ld b, $05                                     ; $4143: $06 $05
    ld b, $06                                     ; $4145: $06 $06
    db $fd                                        ; $4147: $fd
    ld c, $0f                                     ; $4148: $0e $0f
    db $10                                        ; $414a: $10
    ld bc, $1312                                  ; $414b: $01 $12 $13
    inc d                                         ; $414e: $14
    dec d                                         ; $414f: $15
    dec d                                         ; $4150: $15
    rlca                                          ; $4151: $07
    ld [$1616], sp                                ; $4152: $08 $16 $16
    dec bc                                        ; $4155: $0b
    inc c                                         ; $4156: $0c
    dec b                                         ; $4157: $05
    ld b, $06                                     ; $4158: $06 $06
    dec b                                         ; $415a: $05
    ld b, $05                                     ; $415b: $06 $05
    ld b, $06                                     ; $415d: $06 $06
    add d                                         ; $415f: $82
    and d                                         ; $4160: $a2
    ld b, $05                                     ; $4161: $06 $05
    add d                                         ; $4163: $82
    and d                                         ; $4164: $a2
    ld b, $05                                     ; $4165: $06 $05

jr_085_4167:
    pop de                                        ; $4167: $d1
    rla                                           ; $4168: $17
    jr jr_085_4167                                ; $4169: $18 $fc

    pop de                                        ; $416b: $d1
    rla                                           ; $416c: $17
    add hl, de                                    ; $416d: $19
    ld a, [de]                                    ; $416e: $1a
    pop de                                        ; $416f: $d1
    rla                                           ; $4170: $17
    dec de                                        ; $4171: $1b
    inc e                                         ; $4172: $1c
    pop de                                        ; $4173: $d1
    rla                                           ; $4174: $17
    dec e                                         ; $4175: $1d
    ld e, $80                                     ; $4176: $1e $80
    add b                                         ; $4178: $80
    ld bc, $8001                                  ; $4179: $01 $01 $80
    add b                                         ; $417c: $80
    ld bc, $8001                                  ; $417d: $01 $01 $80
    add b                                         ; $4180: $80
    ld bc, $8001                                  ; $4181: $01 $01 $80
    add b                                         ; $4184: $80
    ld bc, $1f01                                  ; $4185: $01 $01 $1f
    jr nz, jr_085_41ab                            ; $4188: $20 $21

    ld [hl+], a                                   ; $418a: $22
    inc hl                                        ; $418b: $23
    inc h                                         ; $418c: $24
    dec h                                         ; $418d: $25
    ld h, $27                                     ; $418e: $26 $27
    jr z, @+$2b                                   ; $4190: $28 $29

    ld a, [hl+]                                   ; $4192: $2a
    push hl                                       ; $4193: $e5
    and $e7                                       ; $4194: $e6 $e7
    add sp, $07                                   ; $4196: $e8 $07
    dec b                                         ; $4198: $05
    ld b, $06                                     ; $4199: $06 $06
    rlca                                          ; $419b: $07
    ld b, $05                                     ; $419c: $06 $05
    ld b, $07                                     ; $419e: $06 $07
    ld b, $06                                     ; $41a0: $06 $06
    dec b                                         ; $41a2: $05
    rlca                                          ; $41a3: $07
    dec b                                         ; $41a4: $05
    ld b, $06                                     ; $41a5: $06 $06
    rra                                           ; $41a7: $1f
    jr nz, @+$23                                  ; $41a8: $20 $21

    ld [hl+], a                                   ; $41aa: $22

jr_085_41ab:
    inc hl                                        ; $41ab: $23
    inc h                                         ; $41ac: $24
    dec h                                         ; $41ad: $25
    ld h, $27                                     ; $41ae: $26 $27
    jr z, jr_085_41db                             ; $41b0: $28 $29

    ld a, [hl+]                                   ; $41b2: $2a
    push hl                                       ; $41b3: $e5
    and $e7                                       ; $41b4: $e6 $e7
    add sp, $05                                   ; $41b6: $e8 $05
    ld b, $06                                     ; $41b8: $06 $06
    ld b, $06                                     ; $41ba: $06 $06
    dec b                                         ; $41bc: $05
    dec b                                         ; $41bd: $05
    dec b                                         ; $41be: $05
    ld b, $06                                     ; $41bf: $06 $06
    dec b                                         ; $41c1: $05
    ld b, $05                                     ; $41c2: $06 $05
    dec b                                         ; $41c4: $05
    ld b, $06                                     ; $41c5: $06 $06
    ld d, $16                                     ; $41c7: $16 $16
    ld hl, $1622                                  ; $41c9: $21 $22 $16
    ld d, $25                                     ; $41cc: $16 $25
    ld h, $16                                     ; $41ce: $26 $16
    ld d, $29                                     ; $41d0: $16 $29
    ld a, [hl+]                                   ; $41d2: $2a
    ld d, $16                                     ; $41d3: $16 $16
    rst $20                                       ; $41d5: $e7
    add sp, -$7e                                  ; $41d6: $e8 $82
    and d                                         ; $41d8: $a2
    ld b, $06                                     ; $41d9: $06 $06

jr_085_41db:
    add d                                         ; $41db: $82
    and d                                         ; $41dc: $a2
    rlca                                          ; $41dd: $07
    ld b, $82                                     ; $41de: $06 $82
    and d                                         ; $41e0: $a2
    rlca                                          ; $41e1: $07
    ld b, $82                                     ; $41e2: $06 $82
    and d                                         ; $41e4: $a2
    rlca                                          ; $41e5: $07
    ld b, $2b                                     ; $41e6: $06 $2b
    ld d, $16                                     ; $41e8: $16 $16
    db $d3                                        ; $41ea: $d3
    dec hl                                        ; $41eb: $2b
    ld d, $16                                     ; $41ec: $16 $16
    sub $2b                                       ; $41ee: $d6 $2b
    ld d, $16                                     ; $41f0: $16 $16
    reti                                          ; $41f2: $d9


    inc l                                         ; $41f3: $2c
    ld d, $16                                     ; $41f4: $16 $16
    rst $18                                       ; $41f6: $df
    ld bc, $a282                                  ; $41f7: $01 $82 $a2
    ld bc, $8201                                  ; $41fa: $01 $01 $82
    and d                                         ; $41fd: $a2
    ld bc, $8201                                  ; $41fe: $01 $01 $82
    and d                                         ; $4201: $a2
    ld bc, $8201                                  ; $4202: $01 $01 $82
    and d                                         ; $4205: $a2
    ld bc, $d3d5                                  ; $4206: $01 $d5 $d3
    call nc, $d8d5                                ; $4209: $d4 $d5 $d8
    sub $d7                                       ; $420c: $d6 $d7
    ret c                                         ; $420e: $d8

    db $db                                        ; $420f: $db
    reti                                          ; $4210: $d9


    jp c, $dedb                                   ; $4211: $da $db $de

    rst $18                                       ; $4214: $df
    ldh [$e1], a                                  ; $4215: $e0 $e1
    ld bc, $0101                                  ; $4217: $01 $01 $01
    ld bc, $0101                                  ; $421a: $01 $01 $01
    ld bc, $0101                                  ; $421d: $01 $01 $01
    ld bc, $0101                                  ; $4220: $01 $01 $01
    ld bc, $0101                                  ; $4223: $01 $01 $01
    ld bc, $d4d3                                  ; $4226: $01 $d3 $d4
    pop de                                        ; $4229: $d1
    dec d                                         ; $422a: $15
    sub $d7                                       ; $422b: $d6 $d7
    pop de                                        ; $422d: $d1
    ld d, $d9                                     ; $422e: $16 $d9
    jp c, Jump_000_16d1                           ; $4230: $da $d1 $16

    call c, $2ddd                                 ; $4233: $dc $dd $2d
    ld d, $01                                     ; $4236: $16 $01
    ld bc, $8201                                  ; $4238: $01 $01 $82
    ld bc, $0101                                  ; $423b: $01 $01 $01
    add d                                         ; $423e: $82
    ld bc, $0101                                  ; $423f: $01 $01 $01
    add d                                         ; $4242: $82
    ld bc, $0101                                  ; $4243: $01 $01 $01
    add d                                         ; $4246: $82
    db $e3                                        ; $4247: $e3
    ld d, $16                                     ; $4248: $16 $16
    db $e4                                        ; $424a: $e4
    push hl                                       ; $424b: $e5
    ld d, $16                                     ; $424c: $16 $16
    add sp, -$17                                  ; $424e: $e8 $e9
    ld d, $16                                     ; $4250: $16 $16
    di                                            ; $4252: $f3
    db $ed                                        ; $4253: $ed
    ld d, $16                                     ; $4254: $16 $16
    rst $30                                       ; $4256: $f7
    ld bc, $a282                                  ; $4257: $01 $82 $a2
    ld bc, $8207                                  ; $425a: $01 $07 $82
    and d                                         ; $425d: $a2
    rlca                                          ; $425e: $07
    dec b                                         ; $425f: $05
    add d                                         ; $4260: $82
    and d                                         ; $4261: $a2
    rlca                                          ; $4262: $07
    dec b                                         ; $4263: $05
    add d                                         ; $4264: $82
    and d                                         ; $4265: $a2
    rlca                                          ; $4266: $07
    db $e3                                        ; $4267: $e3
    db $e4                                        ; $4268: $e4
    db $e3                                        ; $4269: $e3
    db $e4                                        ; $426a: $e4
    push hl                                       ; $426b: $e5
    and $e7                                       ; $426c: $e6 $e7
    add sp, -$17                                  ; $426e: $e8 $e9
    ld [$f3f2], a                                 ; $4270: $ea $f2 $f3
    db $ed                                        ; $4273: $ed
    push af                                       ; $4274: $f5
    or $f7                                        ; $4275: $f6 $f7
    ld bc, $0101                                  ; $4277: $01 $01 $01
    ld bc, $0707                                  ; $427a: $01 $07 $07
    rlca                                          ; $427d: $07
    rlca                                          ; $427e: $07
    ld b, $05                                     ; $427f: $06 $05
    ld b, $06                                     ; $4281: $06 $06
    ld b, $06                                     ; $4283: $06 $06
    ld b, $05                                     ; $4285: $06 $05
    db $e3                                        ; $4287: $e3
    db $e4                                        ; $4288: $e4
    db $e3                                        ; $4289: $e3
    db $e4                                        ; $428a: $e4
    push hl                                       ; $428b: $e5
    and $e7                                       ; $428c: $e6 $e7
    add sp, -$17                                  ; $428e: $e8 $e9
    ld [$1515], a                                 ; $4290: $ea $15 $15
    db $ed                                        ; $4293: $ed
    push af                                       ; $4294: $f5
    ld d, $16                                     ; $4295: $16 $16
    ld bc, $0101                                  ; $4297: $01 $01 $01
    ld bc, $0707                                  ; $429a: $01 $07 $07
    rlca                                          ; $429d: $07
    rlca                                          ; $429e: $07
    dec b                                         ; $429f: $05
    ld b, $82                                     ; $42a0: $06 $82
    and d                                         ; $42a2: $a2
    ld b, $06                                     ; $42a3: $06 $06
    add d                                         ; $42a5: $82
    and d                                         ; $42a6: $a2
    db $e3                                        ; $42a7: $e3
    db $e4                                        ; $42a8: $e4
    db $e3                                        ; $42a9: $e3
    ld d, $e5                                     ; $42aa: $16 $e5
    and $e7                                       ; $42ac: $e6 $e7
    ld d, $e9                                     ; $42ae: $16 $e9
    ld [$16f2], a                                 ; $42b0: $ea $f2 $16
    db $ed                                        ; $42b3: $ed
    push af                                       ; $42b4: $f5
    or $16                                        ; $42b5: $f6 $16
    ld bc, $0101                                  ; $42b7: $01 $01 $01
    add d                                         ; $42ba: $82
    rlca                                          ; $42bb: $07
    rlca                                          ; $42bc: $07
    rlca                                          ; $42bd: $07
    add d                                         ; $42be: $82
    ld b, $06                                     ; $42bf: $06 $06
    dec b                                         ; $42c1: $05
    add d                                         ; $42c2: $82
    dec b                                         ; $42c3: $05
    dec b                                         ; $42c4: $05
    dec b                                         ; $42c5: $05
    add d                                         ; $42c6: $82
    db $fd                                        ; $42c7: $fd
    ld d, $16                                     ; $42c8: $16 $16
    db $10                                        ; $42ca: $10
    ld bc, $1616                                  ; $42cb: $01 $16 $16
    inc d                                         ; $42ce: $14
    dec b                                         ; $42cf: $05
    ld d, $16                                     ; $42d0: $16 $16
    ld [$1609], sp                                ; $42d2: $08 $09 $16
    ld d, $0c                                     ; $42d5: $16 $0c
    ld b, $82                                     ; $42d7: $06 $82
    and d                                         ; $42d9: $a2
    rlca                                          ; $42da: $07
    ld b, $82                                     ; $42db: $06 $82
    and d                                         ; $42dd: $a2
    rlca                                          ; $42de: $07
    dec b                                         ; $42df: $05
    add d                                         ; $42e0: $82
    and d                                         ; $42e1: $a2
    rlca                                          ; $42e2: $07
    ld b, $82                                     ; $42e3: $06 $82
    and d                                         ; $42e5: $a2
    rlca                                          ; $42e6: $07
    db $fd                                        ; $42e7: $fd
    ld c, $0f                                     ; $42e8: $0e $0f
    db $10                                        ; $42ea: $10
    ld bc, $1312                                  ; $42eb: $01 $12 $13
    inc d                                         ; $42ee: $14
    dec b                                         ; $42ef: $05
    ld b, $07                                     ; $42f0: $06 $07
    ld [$0a09], sp                                ; $42f2: $08 $09 $0a
    dec bc                                        ; $42f5: $0b
    inc c                                         ; $42f6: $0c
    dec b                                         ; $42f7: $05
    dec b                                         ; $42f8: $05
    ld b, $06                                     ; $42f9: $06 $06
    ld b, $06                                     ; $42fb: $06 $06
    ld b, $06                                     ; $42fd: $06 $06
    ld b, $06                                     ; $42ff: $06 $06
    dec b                                         ; $4301: $05
    dec b                                         ; $4302: $05
    ld b, $05                                     ; $4303: $06 $05
    ld b, $06                                     ; $4305: $06 $06
    db $fd                                        ; $4307: $fd
    ld c, $16                                     ; $4308: $0e $16
    ld d, $01                                     ; $430a: $16 $01
    ld [de], a                                    ; $430c: $12
    ld d, $16                                     ; $430d: $16 $16
    dec b                                         ; $430f: $05
    ld b, $16                                     ; $4310: $06 $16
    ld d, $09                                     ; $4312: $16 $09
    ld a, [bc]                                    ; $4314: $0a
    ld d, $16                                     ; $4315: $16 $16
    ld b, $06                                     ; $4317: $06 $06
    add d                                         ; $4319: $82
    and d                                         ; $431a: $a2
    dec b                                         ; $431b: $05
    dec b                                         ; $431c: $05
    add d                                         ; $431d: $82
    and d                                         ; $431e: $a2
    ld b, $06                                     ; $431f: $06 $06
    add d                                         ; $4321: $82
    and d                                         ; $4322: $a2
    dec b                                         ; $4323: $05
    ld b, $82                                     ; $4324: $06 $82
    and d                                         ; $4326: $a2
    db $fd                                        ; $4327: $fd
    ld c, $0f                                     ; $4328: $0e $0f
    ld d, $01                                     ; $432a: $16 $01
    ld [de], a                                    ; $432c: $12
    inc de                                        ; $432d: $13
    ld l, $05                                     ; $432e: $2e $05
    ld b, $07                                     ; $4330: $06 $07
    cpl                                           ; $4332: $2f
    add hl, bc                                    ; $4333: $09
    ld a, [bc]                                    ; $4334: $0a
    dec bc                                        ; $4335: $0b
    jr nc, jr_085_433e                            ; $4336: $30 $06

    dec b                                         ; $4338: $05
    ld b, $82                                     ; $4339: $06 $82
    rlca                                          ; $433b: $07
    ld b, $06                                     ; $433c: $06 $06

jr_085_433e:
    add d                                         ; $433e: $82
    rlca                                          ; $433f: $07
    dec b                                         ; $4340: $05
    ld b, $03                                     ; $4341: $06 $03
    rlca                                          ; $4343: $07
    dec b                                         ; $4344: $05
    dec b                                         ; $4345: $05
    inc bc                                        ; $4346: $03
    rra                                           ; $4347: $1f
    ld d, $31                                     ; $4348: $16 $31
    ld [hl-], a                                   ; $434a: $32
    inc hl                                        ; $434b: $23
    ld l, $33                                     ; $434c: $2e $33
    inc sp                                        ; $434e: $33
    daa                                           ; $434f: $27
    inc [hl]                                      ; $4350: $34
    dec [hl]                                      ; $4351: $35
    ld [hl], $e5                                  ; $4352: $36 $e5
    scf                                           ; $4354: $37
    jr c, jr_085_4390                             ; $4355: $38 $39

    dec b                                         ; $4357: $05
    add d                                         ; $4358: $82
    add d                                         ; $4359: $82
    add d                                         ; $435a: $82
    ld b, $82                                     ; $435b: $06 $82
    add d                                         ; $435d: $82
    add d                                         ; $435e: $82
    dec b                                         ; $435f: $05
    inc b                                         ; $4360: $04
    add e                                         ; $4361: $83
    add e                                         ; $4362: $83
    ld b, $03                                     ; $4363: $06 $03
    inc b                                         ; $4365: $04
    inc bc                                        ; $4366: $03
    ld [hl-], a                                   ; $4367: $32
    ld [hl-], a                                   ; $4368: $32
    ld [hl-], a                                   ; $4369: $32
    ld [hl-], a                                   ; $436a: $32
    inc sp                                        ; $436b: $33
    inc sp                                        ; $436c: $33
    inc sp                                        ; $436d: $33
    inc sp                                        ; $436e: $33
    ld a, [hl-]                                   ; $436f: $3a
    dec sp                                        ; $4370: $3b
    inc a                                         ; $4371: $3c
    dec a                                         ; $4372: $3d
    ld a, $3f                                     ; $4373: $3e $3f
    ld b, b                                       ; $4375: $40
    ld b, c                                       ; $4376: $41
    add d                                         ; $4377: $82
    add d                                         ; $4378: $82
    add d                                         ; $4379: $82

jr_085_437a:
    add d                                         ; $437a: $82
    add d                                         ; $437b: $82
    add d                                         ; $437c: $82
    add d                                         ; $437d: $82
    add d                                         ; $437e: $82
    add e                                         ; $437f: $83
    add e                                         ; $4380: $83
    add e                                         ; $4381: $83
    add e                                         ; $4382: $83
    inc bc                                        ; $4383: $03
    inc bc                                        ; $4384: $03
    inc b                                         ; $4385: $04
    inc bc                                        ; $4386: $03
    ld [hl-], a                                   ; $4387: $32
    ld [hl-], a                                   ; $4388: $32
    ld sp, $3316                                  ; $4389: $31 $16 $33
    inc sp                                        ; $438c: $33
    inc sp                                        ; $438d: $33
    ld l, $35                                     ; $438e: $2e $35

jr_085_4390:
    ld [hl], $3a                                  ; $4390: $36 $3a
    ld b, d                                       ; $4392: $42
    jr c, jr_085_43ce                             ; $4393: $38 $39

    ld a, $43                                     ; $4395: $3e $43
    add d                                         ; $4397: $82
    add d                                         ; $4398: $82
    and d                                         ; $4399: $a2
    and d                                         ; $439a: $a2
    add d                                         ; $439b: $82
    add d                                         ; $439c: $82
    add d                                         ; $439d: $82
    and d                                         ; $439e: $a2
    add h                                         ; $439f: $84
    add h                                         ; $43a0: $84
    add e                                         ; $43a1: $83
    inc b                                         ; $43a2: $04
    inc bc                                        ; $43a3: $03
    inc b                                         ; $43a4: $04
    inc bc                                        ; $43a5: $03
    inc b                                         ; $43a6: $04
    rra                                           ; $43a7: $1f
    jr nz, jr_085_43cb                            ; $43a8: $20 $21

    ld b, h                                       ; $43aa: $44
    inc hl                                        ; $43ab: $23
    inc h                                         ; $43ac: $24
    dec h                                         ; $43ad: $25
    ld b, l                                       ; $43ae: $45
    daa                                           ; $43af: $27
    jr z, jr_085_43db                             ; $43b0: $28 $29

    ld b, [hl]                                    ; $43b2: $46
    push hl                                       ; $43b3: $e5
    and $e7                                       ; $43b4: $e6 $e7
    add sp, $07                                   ; $43b6: $e8 $07
    ld b, $05                                     ; $43b8: $06 $05
    inc bc                                        ; $43ba: $03
    rlca                                          ; $43bb: $07
    ld b, $06                                     ; $43bc: $06 $06
    inc bc                                        ; $43be: $03
    rlca                                          ; $43bf: $07
    dec b                                         ; $43c0: $05
    ld b, $03                                     ; $43c1: $06 $03
    rlca                                          ; $43c3: $07
    ld b, $05                                     ; $43c4: $06 $05
    rlca                                          ; $43c6: $07
    ld [hl-], a                                   ; $43c7: $32
    ld [hl-], a                                   ; $43c8: $32
    ld [hl-], a                                   ; $43c9: $32
    ld [hl-], a                                   ; $43ca: $32

jr_085_43cb:
    ld b, a                                       ; $43cb: $47
    inc sp                                        ; $43cc: $33
    inc sp                                        ; $43cd: $33

jr_085_43ce:
    inc sp                                        ; $43ce: $33
    ld d, $35                                     ; $43cf: $16 $35
    ld [hl], $3a                                  ; $43d1: $36 $3a
    ld d, $38                                     ; $43d3: $16 $38
    add hl, sp                                    ; $43d5: $39
    ld a, $82                                     ; $43d6: $3e $82
    add d                                         ; $43d8: $82
    add d                                         ; $43d9: $82
    add d                                         ; $43da: $82

jr_085_43db:
    add d                                         ; $43db: $82
    add d                                         ; $43dc: $82
    add d                                         ; $43dd: $82
    add d                                         ; $43de: $82
    and d                                         ; $43df: $a2
    inc b                                         ; $43e0: $04
    inc bc                                        ; $43e1: $03
    inc b                                         ; $43e2: $04
    and d                                         ; $43e3: $a2
    inc b                                         ; $43e4: $04
    inc bc                                        ; $43e5: $03
    inc b                                         ; $43e6: $04
    ld [hl-], a                                   ; $43e7: $32
    ld [hl-], a                                   ; $43e8: $32
    ld [hl-], a                                   ; $43e9: $32
    ld [hl-], a                                   ; $43ea: $32
    inc sp                                        ; $43eb: $33
    inc sp                                        ; $43ec: $33
    inc sp                                        ; $43ed: $33
    inc sp                                        ; $43ee: $33
    dec sp                                        ; $43ef: $3b
    inc a                                         ; $43f0: $3c
    dec a                                         ; $43f1: $3d
    dec [hl]                                      ; $43f2: $35
    ccf                                           ; $43f3: $3f
    ld b, b                                       ; $43f4: $40
    ld b, c                                       ; $43f5: $41
    jr c, jr_085_437a                             ; $43f6: $38 $82

    add d                                         ; $43f8: $82
    add d                                         ; $43f9: $82
    add d                                         ; $43fa: $82
    add d                                         ; $43fb: $82
    add d                                         ; $43fc: $82
    add d                                         ; $43fd: $82
    add d                                         ; $43fe: $82
    inc bc                                        ; $43ff: $03
    inc bc                                        ; $4400: $03
    inc bc                                        ; $4401: $03
    inc bc                                        ; $4402: $03
    inc bc                                        ; $4403: $03
    inc bc                                        ; $4404: $03
    inc bc                                        ; $4405: $03
    inc bc                                        ; $4406: $03
    ld [hl-], a                                   ; $4407: $32
    ld [hl-], a                                   ; $4408: $32
    ld [hl-], a                                   ; $4409: $32
    ld [hl-], a                                   ; $440a: $32
    inc sp                                        ; $440b: $33
    inc sp                                        ; $440c: $33
    inc sp                                        ; $440d: $33
    inc sp                                        ; $440e: $33
    ld [hl], $3a                                  ; $440f: $36 $3a
    dec sp                                        ; $4411: $3b
    inc a                                         ; $4412: $3c
    add hl, sp                                    ; $4413: $39
    ld a, $3f                                     ; $4414: $3e $3f
    ld b, b                                       ; $4416: $40
    add d                                         ; $4417: $82
    add d                                         ; $4418: $82
    add d                                         ; $4419: $82
    add d                                         ; $441a: $82
    add d                                         ; $441b: $82
    add d                                         ; $441c: $82
    add d                                         ; $441d: $82
    add d                                         ; $441e: $82
    inc b                                         ; $441f: $04
    inc b                                         ; $4420: $04
    inc b                                         ; $4421: $04
    inc bc                                        ; $4422: $03
    inc b                                         ; $4423: $04
    inc b                                         ; $4424: $04
    inc b                                         ; $4425: $04
    inc bc                                        ; $4426: $03
    ld [hl-], a                                   ; $4427: $32
    ld [hl-], a                                   ; $4428: $32
    dec d                                         ; $4429: $15
    pop de                                        ; $442a: $d1
    inc sp                                        ; $442b: $33
    ld b, a                                       ; $442c: $47
    ld d, $d1                                     ; $442d: $16 $d1
    dec a                                         ; $442f: $3d
    ld d, $16                                     ; $4430: $16 $16
    pop de                                        ; $4432: $d1
    ld b, c                                       ; $4433: $41
    ld d, $16                                     ; $4434: $16 $16
    ld c, b                                       ; $4436: $48
    add d                                         ; $4437: $82
    add d                                         ; $4438: $82
    and d                                         ; $4439: $a2
    ld bc, $a282                                  ; $443a: $01 $82 $a2
    and d                                         ; $443d: $a2
    ld bc, $8203                                  ; $443e: $01 $03 $82
    and d                                         ; $4441: $a2
    ld bc, $8203                                  ; $4442: $01 $03 $82
    and d                                         ; $4445: $a2
    ld bc, $4916                                  ; $4446: $01 $16 $49
    ld c, d                                       ; $4449: $4a
    ld c, e                                       ; $444a: $4b
    ld d, $4c                                     ; $444b: $16 $4c
    ld c, l                                       ; $444d: $4d
    ld c, [hl]                                    ; $444e: $4e
    ld d, $4f                                     ; $444f: $16 $4f
    ld d, b                                       ; $4451: $50
    ld d, c                                       ; $4452: $51
    ld d, $f5                                     ; $4453: $16 $f5
    or $f7                                        ; $4455: $f6 $f7
    and d                                         ; $4457: $a2
    inc bc                                        ; $4458: $03
    inc b                                         ; $4459: $04
    inc b                                         ; $445a: $04
    and d                                         ; $445b: $a2
    inc bc                                        ; $445c: $03
    inc bc                                        ; $445d: $03
    inc b                                         ; $445e: $04
    and d                                         ; $445f: $a2
    inc bc                                        ; $4460: $03
    inc bc                                        ; $4461: $03
    inc b                                         ; $4462: $04
    and d                                         ; $4463: $a2
    rlca                                          ; $4464: $07
    rlca                                          ; $4465: $07
    rlca                                          ; $4466: $07
    ld d, d                                       ; $4467: $52
    ld d, e                                       ; $4468: $53
    ld d, h                                       ; $4469: $54
    ld c, c                                       ; $446a: $49
    ld d, l                                       ; $446b: $55
    ld d, [hl]                                    ; $446c: $56
    ld d, a                                       ; $446d: $57
    ld c, h                                       ; $446e: $4c
    ld e, b                                       ; $446f: $58
    ld e, c                                       ; $4470: $59
    ld e, d                                       ; $4471: $5a
    ld c, a                                       ; $4472: $4f
    db $ed                                        ; $4473: $ed
    push af                                       ; $4474: $f5
    or $f7                                        ; $4475: $f6 $f7
    inc b                                         ; $4477: $04
    inc b                                         ; $4478: $04
    inc bc                                        ; $4479: $03
    inc bc                                        ; $447a: $03
    inc b                                         ; $447b: $04
    inc b                                         ; $447c: $04
    inc bc                                        ; $447d: $03
    inc bc                                        ; $447e: $03
    inc b                                         ; $447f: $04
    inc b                                         ; $4480: $04
    inc bc                                        ; $4481: $03
    inc bc                                        ; $4482: $03
    rlca                                          ; $4483: $07
    rlca                                          ; $4484: $07
    rlca                                          ; $4485: $07
    rlca                                          ; $4486: $07
    ld c, d                                       ; $4487: $4a
    ld c, e                                       ; $4488: $4b
    ld d, d                                       ; $4489: $52
    ld d, e                                       ; $448a: $53
    ld c, l                                       ; $448b: $4d
    ld c, [hl]                                    ; $448c: $4e
    ld d, l                                       ; $448d: $55
    ld d, [hl]                                    ; $448e: $56
    ld d, b                                       ; $448f: $50
    ld d, c                                       ; $4490: $51
    ld e, b                                       ; $4491: $58
    ld e, c                                       ; $4492: $59
    db $ed                                        ; $4493: $ed
    push af                                       ; $4494: $f5
    or $f7                                        ; $4495: $f6 $f7
    inc b                                         ; $4497: $04
    inc b                                         ; $4498: $04
    inc bc                                        ; $4499: $03
    inc b                                         ; $449a: $04
    inc bc                                        ; $449b: $03
    inc bc                                        ; $449c: $03
    inc bc                                        ; $449d: $03
    inc b                                         ; $449e: $04
    inc bc                                        ; $449f: $03
    inc bc                                        ; $44a0: $03
    inc bc                                        ; $44a1: $03
    inc b                                         ; $44a2: $04
    rlca                                          ; $44a3: $07
    rlca                                          ; $44a4: $07
    rlca                                          ; $44a5: $07
    rlca                                          ; $44a6: $07
    ld d, h                                       ; $44a7: $54
    ld d, $16                                     ; $44a8: $16 $16
    db $e3                                        ; $44aa: $e3
    ld d, a                                       ; $44ab: $57
    ld d, $16                                     ; $44ac: $16 $16
    add sp, $5a                                   ; $44ae: $e8 $5a
    ld l, $2e                                     ; $44b0: $2e $2e
    di                                            ; $44b2: $f3
    db $ed                                        ; $44b3: $ed
    inc [hl]                                      ; $44b4: $34
    ld e, e                                       ; $44b5: $5b
    rst $30                                       ; $44b6: $f7
    inc b                                         ; $44b7: $04
    add d                                         ; $44b8: $82
    and d                                         ; $44b9: $a2
    ld bc, $8204                                  ; $44ba: $01 $04 $82
    and d                                         ; $44bd: $a2
    rlca                                          ; $44be: $07
    inc b                                         ; $44bf: $04
    add d                                         ; $44c0: $82
    and d                                         ; $44c1: $a2
    rlca                                          ; $44c2: $07
    rlca                                          ; $44c3: $07
    inc b                                         ; $44c4: $04
    inc bc                                        ; $44c5: $03
    rlca                                          ; $44c6: $07
    ld d, $0e                                     ; $44c7: $16 $0e
    rrca                                          ; $44c9: $0f
    db $10                                        ; $44ca: $10
    ld l, $12                                     ; $44cb: $2e $12
    inc de                                        ; $44cd: $13
    inc d                                         ; $44ce: $14
    ld b, d                                       ; $44cf: $42
    ld b, $07                                     ; $44d0: $06 $07
    ld [$0a43], sp                                ; $44d2: $08 $43 $0a
    dec bc                                        ; $44d5: $0b
    inc c                                         ; $44d6: $0c
    and d                                         ; $44d7: $a2
    rlca                                          ; $44d8: $07
    ld b, $06                                     ; $44d9: $06 $06
    and d                                         ; $44db: $a2
    rlca                                          ; $44dc: $07
    dec b                                         ; $44dd: $05
    dec b                                         ; $44de: $05
    inc b                                         ; $44df: $04
    rlca                                          ; $44e0: $07
    ld b, $06                                     ; $44e1: $06 $06
    inc b                                         ; $44e3: $04
    rlca                                          ; $44e4: $07
    ld b, $06                                     ; $44e5: $06 $06
    db $fd                                        ; $44e7: $fd
    ld c, $0f                                     ; $44e8: $0e $0f
    db $10                                        ; $44ea: $10
    ld bc, $1512                                  ; $44eb: $01 $12 $15
    dec d                                         ; $44ee: $15
    dec b                                         ; $44ef: $05
    ld b, $16                                     ; $44f0: $06 $16
    ld d, $09                                     ; $44f2: $16 $09
    ld a, [bc]                                    ; $44f4: $0a
    ld d, $16                                     ; $44f5: $16 $16
    dec b                                         ; $44f7: $05
    ld b, $05                                     ; $44f8: $06 $05
    dec b                                         ; $44fa: $05
    ld b, $06                                     ; $44fb: $06 $06
    add d                                         ; $44fd: $82
    and d                                         ; $44fe: $a2
    dec b                                         ; $44ff: $05
    ld b, $82                                     ; $4500: $06 $82
    and d                                         ; $4502: $a2
    ld b, $05                                     ; $4503: $06 $05
    add d                                         ; $4505: $82
    and d                                         ; $4506: $a2
    db $fd                                        ; $4507: $fd
    ld c, $0f                                     ; $4508: $0e $0f
    db $10                                        ; $450a: $10
    ld bc, $1312                                  ; $450b: $01 $12 $13
    inc d                                         ; $450e: $14
    dec b                                         ; $450f: $05
    ld b, $07                                     ; $4510: $06 $07
    ld [$0a09], sp                                ; $4512: $08 $09 $0a
    dec bc                                        ; $4515: $0b
    inc c                                         ; $4516: $0c
    ld b, $06                                     ; $4517: $06 $06
    dec b                                         ; $4519: $05
    ld b, $06                                     ; $451a: $06 $06
    ld b, $06                                     ; $451c: $06 $06
    dec b                                         ; $451e: $05
    dec b                                         ; $451f: $05
    dec b                                         ; $4520: $05
    ld b, $06                                     ; $4521: $06 $06
    ld b, $05                                     ; $4523: $06 $05
    dec b                                         ; $4525: $05
    ld b, $fd                                     ; $4526: $06 $fd
    scf                                           ; $4528: $37
    ld e, h                                       ; $4529: $5c
    db $10                                        ; $452a: $10
    ld bc, $5e5d                                  ; $452b: $01 $5d $5e
    inc d                                         ; $452e: $14
    dec b                                         ; $452f: $05
    ld e, a                                       ; $4530: $5f
    ld h, b                                       ; $4531: $60
    ld [$6109], sp                                ; $4532: $08 $09 $61
    ld h, d                                       ; $4535: $62
    inc c                                         ; $4536: $0c
    ld b, $03                                     ; $4537: $06 $03
    inc b                                         ; $4539: $04
    rlca                                          ; $453a: $07
    dec b                                         ; $453b: $05
    inc b                                         ; $453c: $04
    inc bc                                        ; $453d: $03
    rlca                                          ; $453e: $07
    ld b, $03                                     ; $453f: $06 $03
    inc b                                         ; $4541: $04
    rlca                                          ; $4542: $07
    dec b                                         ; $4543: $05
    inc bc                                        ; $4544: $03
    inc bc                                        ; $4545: $03
    rlca                                          ; $4546: $07
    ld h, e                                       ; $4547: $63
    jr nz, @+$23                                  ; $4548: $20 $21

    ld [hl+], a                                   ; $454a: $22
    ld h, h                                       ; $454b: $64
    inc h                                         ; $454c: $24
    dec h                                         ; $454d: $25
    ld h, $65                                     ; $454e: $26 $65
    jr z, jr_085_457b                             ; $4550: $28 $29

    ld a, [hl+]                                   ; $4552: $2a
    push hl                                       ; $4553: $e5
    and $e7                                       ; $4554: $e6 $e7
    add sp, $03                                   ; $4556: $e8 $03
    rlca                                          ; $4558: $07
    ld b, $05                                     ; $4559: $06 $05
    inc bc                                        ; $455b: $03
    rlca                                          ; $455c: $07
    dec b                                         ; $455d: $05
    ld b, $04                                     ; $455e: $06 $04
    rlca                                          ; $4560: $07
    ld b, $05                                     ; $4561: $06 $05
    rlca                                          ; $4563: $07
    rlca                                          ; $4564: $07
    ld b, $05                                     ; $4565: $06 $05
    rra                                           ; $4567: $1f
    jr nz, @+$18                                  ; $4568: $20 $16

    ld d, $23                                     ; $456a: $16 $23
    inc h                                         ; $456c: $24
    ld d, $16                                     ; $456d: $16 $16
    daa                                           ; $456f: $27
    jr z, jr_085_4588                             ; $4570: $28 $16

    ld d, $e5                                     ; $4572: $16 $e5
    and $16                                       ; $4574: $e6 $16
    ld d, $05                                     ; $4576: $16 $05
    dec b                                         ; $4578: $05
    add d                                         ; $4579: $82
    and d                                         ; $457a: $a2

jr_085_457b:
    ld b, $05                                     ; $457b: $06 $05
    add d                                         ; $457d: $82
    and d                                         ; $457e: $a2
    ld b, $06                                     ; $457f: $06 $06
    add d                                         ; $4581: $82
    and d                                         ; $4582: $a2
    ld b, $06                                     ; $4583: $06 $06
    add d                                         ; $4585: $82
    and d                                         ; $4586: $a2
    rra                                           ; $4587: $1f

jr_085_4588:
    jr nz, jr_085_45ab                            ; $4588: $20 $21

    ld [hl+], a                                   ; $458a: $22
    inc hl                                        ; $458b: $23
    inc h                                         ; $458c: $24
    dec h                                         ; $458d: $25
    ld h, $27                                     ; $458e: $26 $27
    jr z, jr_085_45bb                             ; $4590: $28 $29

    ld a, [hl+]                                   ; $4592: $2a
    push hl                                       ; $4593: $e5
    and $e7                                       ; $4594: $e6 $e7
    add sp, $07                                   ; $4596: $e8 $07
    ld b, $05                                     ; $4598: $06 $05
    dec b                                         ; $459a: $05
    rlca                                          ; $459b: $07
    dec b                                         ; $459c: $05
    ld b, $05                                     ; $459d: $06 $05
    rlca                                          ; $459f: $07
    ld b, $05                                     ; $45a0: $06 $05
    dec b                                         ; $45a2: $05
    rlca                                          ; $45a3: $07
    ld b, $06                                     ; $45a4: $06 $06
    ld b, $1f                                     ; $45a6: $06 $1f
    jr nz, @+$23                                  ; $45a8: $20 $21

    ld [hl+], a                                   ; $45aa: $22

jr_085_45ab:
    inc hl                                        ; $45ab: $23
    inc h                                         ; $45ac: $24
    dec h                                         ; $45ad: $25
    ld h, $27                                     ; $45ae: $26 $27
    dec d                                         ; $45b0: $15
    ld [hl-], a                                   ; $45b1: $32
    ld [hl-], a                                   ; $45b2: $32
    push hl                                       ; $45b3: $e5
    ld d, $47                                     ; $45b4: $16 $47
    inc sp                                        ; $45b6: $33
    ld b, $07                                     ; $45b7: $06 $07
    rlca                                          ; $45b9: $07
    rlca                                          ; $45ba: $07

jr_085_45bb:
    dec b                                         ; $45bb: $05
    ld b, $05                                     ; $45bc: $06 $05
    dec b                                         ; $45be: $05
    ld b, $82                                     ; $45bf: $06 $82
    add d                                         ; $45c1: $82
    add d                                         ; $45c2: $82
    dec b                                         ; $45c3: $05
    add d                                         ; $45c4: $82
    add d                                         ; $45c5: $82
    add d                                         ; $45c6: $82
    push de                                       ; $45c7: $d5
    db $d3                                        ; $45c8: $d3
    call nc, $d8d5                                ; $45c9: $d4 $d5 $d8
    sub $d7                                       ; $45cc: $d6 $d7
    ret c                                         ; $45ce: $d8

    db $db                                        ; $45cf: $db
    reti                                          ; $45d0: $d9


    jp c, $e1db                                   ; $45d1: $da $db $e1

    call c, $dedd                                 ; $45d4: $dc $dd $de
    ld bc, $0101                                  ; $45d7: $01 $01 $01
    ld bc, $0101                                  ; $45da: $01 $01 $01
    ld bc, $0101                                  ; $45dd: $01 $01 $01
    ld bc, $0101                                  ; $45e0: $01 $01 $01
    ld bc, $0101                                  ; $45e3: $01 $01 $01
    ld bc, $d4d3                                  ; $45e6: $01 $d3 $d4
    push de                                       ; $45e9: $d5
    db $d3                                        ; $45ea: $d3
    sub $d7                                       ; $45eb: $d6 $d7
    ret c                                         ; $45ed: $d8

    sub $d9                                       ; $45ee: $d6 $d9
    jp c, $d9db                                   ; $45f0: $da $db $d9

    rst $18                                       ; $45f3: $df
    ldh [$de], a                                  ; $45f4: $e0 $de
    rst $18                                       ; $45f6: $df
    ld bc, $0101                                  ; $45f7: $01 $01 $01
    ld bc, $0101                                  ; $45fa: $01 $01 $01
    ld bc, $0101                                  ; $45fd: $01 $01 $01
    ld bc, $0101                                  ; $4600: $01 $01 $01
    ld bc, $0101                                  ; $4603: $01 $01 $01
    ld bc, $d1d2                                  ; $4606: $01 $d2 $d1
    pop de                                        ; $4609: $d1
    pop de                                        ; $460a: $d1
    jp nc, $d1d1                                  ; $460b: $d2 $d1 $d1

    pop de                                        ; $460e: $d1
    jp nc, $d1d1                                  ; $460f: $d2 $d1 $d1

    pop de                                        ; $4612: $d1
    jp nc, $d1d1                                  ; $4613: $d2 $d1 $d1

    pop de                                        ; $4616: $d1
    add b                                         ; $4617: $80
    add b                                         ; $4618: $80
    add b                                         ; $4619: $80
    add b                                         ; $461a: $80
    add b                                         ; $461b: $80
    add b                                         ; $461c: $80
    add b                                         ; $461d: $80
    add b                                         ; $461e: $80
    add b                                         ; $461f: $80
    add b                                         ; $4620: $80
    add b                                         ; $4621: $80
    add b                                         ; $4622: $80
    add b                                         ; $4623: $80
    add b                                         ; $4624: $80
    add b                                         ; $4625: $80
    add b                                         ; $4626: $80
    db $e4                                        ; $4627: $e4
    db $e3                                        ; $4628: $e3
    db $e4                                        ; $4629: $e4
    db $e3                                        ; $462a: $e3
    push hl                                       ; $462b: $e5
    and $e7                                       ; $462c: $e6 $e7
    add sp, -$17                                  ; $462e: $e8 $e9
    ld [$f3f2], a                                 ; $4630: $ea $f2 $f3
    db $ed                                        ; $4633: $ed
    push af                                       ; $4634: $f5
    or $66                                        ; $4635: $f6 $66
    ld bc, $0101                                  ; $4637: $01 $01 $01
    ld bc, $0707                                  ; $463a: $01 $07 $07
    rlca                                          ; $463d: $07
    rlca                                          ; $463e: $07
    ld b, $05                                     ; $463f: $06 $05
    ld b, $06                                     ; $4641: $06 $06
    ld b, $06                                     ; $4643: $06 $06
    ld b, $06                                     ; $4645: $06 $06
    db $e4                                        ; $4647: $e4
    db $e3                                        ; $4648: $e3
    db $e3                                        ; $4649: $e3
    db $e4                                        ; $464a: $e4
    push hl                                       ; $464b: $e5
    and $e7                                       ; $464c: $e6 $e7
    add sp, $67                                   ; $464e: $e8 $67
    ld l, b                                       ; $4650: $68
    ld l, c                                       ; $4651: $69
    di                                            ; $4652: $f3
    rst $28                                       ; $4653: $ef
    ldh a, [rOCPS]                                ; $4654: $f0 $6a
    rst $30                                       ; $4656: $f7
    ld bc, $0101                                  ; $4657: $01 $01 $01
    ld bc, $0707                                  ; $465a: $01 $07 $07
    rlca                                          ; $465d: $07
    rlca                                          ; $465e: $07
    ld b, $06                                     ; $465f: $06 $06
    ld b, $07                                     ; $4661: $06 $07
    ld b, $06                                     ; $4663: $06 $06
    ld b, $07                                     ; $4665: $06 $07
    db $fd                                        ; $4667: $fd
    ld c, $0f                                     ; $4668: $0e $0f
    cp $01                                        ; $466a: $fe $01
    ld [de], a                                    ; $466c: $12
    inc de                                        ; $466d: $13
    ld l, e                                       ; $466e: $6b
    dec b                                         ; $466f: $05
    ld b, $07                                     ; $4670: $06 $07
    ld [$0a09], sp                                ; $4672: $08 $09 $0a
    dec bc                                        ; $4675: $0b
    inc c                                         ; $4676: $0c
    ld b, $06                                     ; $4677: $06 $06
    ld b, $06                                     ; $4679: $06 $06
    dec b                                         ; $467b: $05
    ld b, $05                                     ; $467c: $06 $05
    ld b, $06                                     ; $467e: $06 $06
    ld b, $06                                     ; $4680: $06 $06
    ld b, $06                                     ; $4682: $06 $06
    dec b                                         ; $4684: $05
    ld b, $06                                     ; $4685: $06 $06
    rst $38                                       ; $4687: $ff
    nop                                           ; $4688: $00
    dec c                                         ; $4689: $0d
    db $10                                        ; $468a: $10
    inc bc                                        ; $468b: $03
    inc b                                         ; $468c: $04
    ld l, h                                       ; $468d: $6c
    inc d                                         ; $468e: $14
    dec b                                         ; $468f: $05
    ld b, $07                                     ; $4690: $06 $07
    ld [$0a09], sp                                ; $4692: $08 $09 $0a
    dec bc                                        ; $4695: $0b
    inc c                                         ; $4696: $0c
    ld b, $06                                     ; $4697: $06 $06
    ld b, $07                                     ; $4699: $06 $07
    ld b, $06                                     ; $469b: $06 $06
    ld b, $07                                     ; $469d: $06 $07
    ld b, $06                                     ; $469f: $06 $06
    ld b, $07                                     ; $46a1: $06 $07
    dec b                                         ; $46a3: $05
    ld b, $05                                     ; $46a4: $06 $05
    rlca                                          ; $46a6: $07
    rra                                           ; $46a7: $1f
    jr nz, jr_085_46cb                            ; $46a8: $20 $21

    ld [hl+], a                                   ; $46aa: $22
    inc hl                                        ; $46ab: $23
    inc h                                         ; $46ac: $24
    dec h                                         ; $46ad: $25
    ld h, $32                                     ; $46ae: $26 $32
    ld [hl-], a                                   ; $46b0: $32
    ld [hl-], a                                   ; $46b1: $32
    ld [hl-], a                                   ; $46b2: $32
    inc sp                                        ; $46b3: $33
    inc sp                                        ; $46b4: $33
    inc sp                                        ; $46b5: $33
    inc sp                                        ; $46b6: $33
    ld b, $06                                     ; $46b7: $06 $06
    dec b                                         ; $46b9: $05
    ld b, $05                                     ; $46ba: $06 $05
    ld b, $06                                     ; $46bc: $06 $06
    dec b                                         ; $46be: $05
    add d                                         ; $46bf: $82
    add d                                         ; $46c0: $82
    add d                                         ; $46c1: $82
    add d                                         ; $46c2: $82
    add d                                         ; $46c3: $82
    add d                                         ; $46c4: $82
    add d                                         ; $46c5: $82
    add d                                         ; $46c6: $82
    rra                                           ; $46c7: $1f
    jr nz, jr_085_46eb                            ; $46c8: $20 $21

    ld [hl+], a                                   ; $46ca: $22

jr_085_46cb:
    inc hl                                        ; $46cb: $23
    inc h                                         ; $46cc: $24
    dec h                                         ; $46cd: $25
    ld h, $32                                     ; $46ce: $26 $32
    ld [hl-], a                                   ; $46d0: $32
    ld [hl-], a                                   ; $46d1: $32
    ld [hl-], a                                   ; $46d2: $32
    inc sp                                        ; $46d3: $33
    inc sp                                        ; $46d4: $33
    inc sp                                        ; $46d5: $33
    inc sp                                        ; $46d6: $33
    ld b, $05                                     ; $46d7: $06 $05
    ld b, $07                                     ; $46d9: $06 $07
    dec b                                         ; $46db: $05
    dec b                                         ; $46dc: $05
    dec b                                         ; $46dd: $05
    rlca                                          ; $46de: $07
    add d                                         ; $46df: $82
    add d                                         ; $46e0: $82
    add d                                         ; $46e1: $82
    add d                                         ; $46e2: $82
    add d                                         ; $46e3: $82
    add d                                         ; $46e4: $82
    add d                                         ; $46e5: $82
    add d                                         ; $46e6: $82
    ld l, l                                       ; $46e7: $6d
    rla                                           ; $46e8: $17
    ld a, [c]                                     ; $46e9: $f2
    di                                            ; $46ea: $f3

jr_085_46eb:
    ld l, l                                       ; $46eb: $6d
    jp nc, $f7f6                                  ; $46ec: $d2 $f6 $f7

    ld l, l                                       ; $46ef: $6d
    ld l, [hl]                                    ; $46f0: $6e
    ld sp, hl                                     ; $46f1: $f9
    ld l, a                                       ; $46f2: $6f
    pop de                                        ; $46f3: $d1
    pop de                                        ; $46f4: $d1
    pop de                                        ; $46f5: $d1
    jp nc, $8080                                  ; $46f6: $d2 $80 $80

    rlca                                          ; $46f9: $07
    rlca                                          ; $46fa: $07
    add b                                         ; $46fb: $80
    add b                                         ; $46fc: $80
    rlca                                          ; $46fd: $07
    dec b                                         ; $46fe: $05
    add b                                         ; $46ff: $80
    add b                                         ; $4700: $80
    add b                                         ; $4701: $80
    add b                                         ; $4702: $80
    add b                                         ; $4703: $80
    add b                                         ; $4704: $80
    add b                                         ; $4705: $80
    add b                                         ; $4706: $80
    jp hl                                         ; $4707: $e9


    ld [$f3f2], a                                 ; $4708: $ea $f2 $f3
    db $ed                                        ; $470b: $ed
    push af                                       ; $470c: $f5
    or $f7                                        ; $470d: $f6 $f7
    db $fd                                        ; $470f: $fd
    ld c, $0f                                     ; $4710: $0e $0f
    db $10                                        ; $4712: $10
    ld bc, $1312                                  ; $4713: $01 $12 $13
    inc d                                         ; $4716: $14
    rlca                                          ; $4717: $07
    ld b, $06                                     ; $4718: $06 $06
    ld b, $06                                     ; $471a: $06 $06
    ld b, $06                                     ; $471c: $06 $06
    dec b                                         ; $471e: $05
    ld b, $06                                     ; $471f: $06 $06
    ld b, $05                                     ; $4721: $06 $05
    ld b, $05                                     ; $4723: $06 $05
    ld b, $06                                     ; $4725: $06 $06
    jp hl                                         ; $4727: $e9


    ld [$f3f2], a                                 ; $4728: $ea $f2 $f3
    db $ed                                        ; $472b: $ed
    push af                                       ; $472c: $f5
    or $f7                                        ; $472d: $f6 $f7
    db $fd                                        ; $472f: $fd
    ld c, $0f                                     ; $4730: $0e $0f
    db $10                                        ; $4732: $10
    ld bc, $1312                                  ; $4733: $01 $12 $13
    inc d                                         ; $4736: $14
    ld b, $06                                     ; $4737: $06 $06
    dec b                                         ; $4739: $05
    ld b, $06                                     ; $473a: $06 $06
    dec b                                         ; $473c: $05
    dec b                                         ; $473d: $05
    ld b, $05                                     ; $473e: $06 $05
    ld b, $06                                     ; $4740: $06 $06
    ld b, $06                                     ; $4742: $06 $06
    ld b, $06                                     ; $4744: $06 $06
    dec b                                         ; $4746: $05
    ld l, $2e                                     ; $4747: $2e $2e
    ld a, [c]                                     ; $4749: $f2
    di                                            ; $474a: $f3
    inc [hl]                                      ; $474b: $34
    ld e, e                                       ; $474c: $5b
    or $f7                                        ; $474d: $f6 $f7
    scf                                           ; $474f: $37
    ld e, h                                       ; $4750: $5c
    rrca                                          ; $4751: $0f
    db $10                                        ; $4752: $10
    ld e, l                                       ; $4753: $5d
    ld e, [hl]                                    ; $4754: $5e
    inc de                                        ; $4755: $13
    inc d                                         ; $4756: $14
    add d                                         ; $4757: $82
    and d                                         ; $4758: $a2
    rlca                                          ; $4759: $07
    dec b                                         ; $475a: $05
    inc b                                         ; $475b: $04
    inc b                                         ; $475c: $04
    rlca                                          ; $475d: $07
    dec b                                         ; $475e: $05
    inc b                                         ; $475f: $04
    inc b                                         ; $4760: $04
    rlca                                          ; $4761: $07
    ld b, $04                                     ; $4762: $06 $04
    inc b                                         ; $4764: $04
    rlca                                          ; $4765: $07
    ld b, $05                                     ; $4766: $06 $05
    ld b, $07                                     ; $4768: $06 $07
    ld [$0a09], sp                                ; $476a: $08 $09 $0a
    dec bc                                        ; $476d: $0b
    inc c                                         ; $476e: $0c
    ld [hl], b                                    ; $476f: $70
    ld [hl], c                                    ; $4770: $71
    ld [hl], b                                    ; $4771: $70
    ld [hl], c                                    ; $4772: $71
    ld [hl], d                                    ; $4773: $72
    ld [hl], e                                    ; $4774: $73
    ld [hl], d                                    ; $4775: $72
    ld [hl], e                                    ; $4776: $73
    ld b, $06                                     ; $4777: $06 $06
    dec b                                         ; $4779: $05
    ld b, $05                                     ; $477a: $06 $05
    ld b, $06                                     ; $477c: $06 $06
    dec b                                         ; $477e: $05
    ld [bc], a                                    ; $477f: $02
    ld [bc], a                                    ; $4780: $02
    ld [bc], a                                    ; $4781: $02
    ld [bc], a                                    ; $4782: $02
    ld [bc], a                                    ; $4783: $02
    ld [bc], a                                    ; $4784: $02
    ld [bc], a                                    ; $4785: $02
    ld [bc], a                                    ; $4786: $02
    dec b                                         ; $4787: $05
    ld b, $07                                     ; $4788: $06 $07
    ld [$0a09], sp                                ; $478a: $08 $09 $0a
    dec bc                                        ; $478d: $0b
    inc c                                         ; $478e: $0c
    ld [hl], b                                    ; $478f: $70
    ld [hl], c                                    ; $4790: $71
    ld [hl], b                                    ; $4791: $70
    ld [hl], c                                    ; $4792: $71
    ld [hl], d                                    ; $4793: $72
    ld [hl], e                                    ; $4794: $73
    ld [hl], d                                    ; $4795: $72
    ld [hl], e                                    ; $4796: $73
    ld b, $05                                     ; $4797: $06 $05
    ld b, $06                                     ; $4799: $06 $06
    ld b, $06                                     ; $479b: $06 $06
    ld b, $05                                     ; $479d: $06 $05
    ld [bc], a                                    ; $479f: $02
    ld [bc], a                                    ; $47a0: $02
    ld [bc], a                                    ; $47a1: $02
    ld [bc], a                                    ; $47a2: $02
    ld [bc], a                                    ; $47a3: $02
    ld [bc], a                                    ; $47a4: $02
    ld [bc], a                                    ; $47a5: $02
    ld [bc], a                                    ; $47a6: $02
    ld e, a                                       ; $47a7: $5f
    ld h, b                                       ; $47a8: $60
    rlca                                          ; $47a9: $07
    ld [$6261], sp                                ; $47aa: $08 $61 $62
    dec bc                                        ; $47ad: $0b
    inc c                                         ; $47ae: $0c
    ld [hl], b                                    ; $47af: $70
    ld [hl], c                                    ; $47b0: $71
    ld [hl], b                                    ; $47b1: $70
    ld [hl], c                                    ; $47b2: $71
    ld [hl], d                                    ; $47b3: $72
    ld [hl], e                                    ; $47b4: $73
    ld [hl], d                                    ; $47b5: $72
    ld [hl], e                                    ; $47b6: $73
    inc b                                         ; $47b7: $04
    inc b                                         ; $47b8: $04
    rlca                                          ; $47b9: $07
    dec b                                         ; $47ba: $05
    inc b                                         ; $47bb: $04
    inc b                                         ; $47bc: $04
    rlca                                          ; $47bd: $07
    ld b, $02                                     ; $47be: $06 $02
    ld [bc], a                                    ; $47c0: $02
    ld [bc], a                                    ; $47c1: $02
    ld [bc], a                                    ; $47c2: $02
    ld [bc], a                                    ; $47c3: $02
    ld [bc], a                                    ; $47c4: $02
    ld [bc], a                                    ; $47c5: $02
    ld [bc], a                                    ; $47c6: $02
    ld bc, $1312                                  ; $47c7: $01 $12 $13
    inc d                                         ; $47ca: $14
    ld [hl-], a                                   ; $47cb: $32
    ld [hl-], a                                   ; $47cc: $32
    ld [hl-], a                                   ; $47cd: $32
    ld [hl-], a                                   ; $47ce: $32
    inc sp                                        ; $47cf: $33
    inc sp                                        ; $47d0: $33
    inc sp                                        ; $47d1: $33
    inc sp                                        ; $47d2: $33
    ld a, [hl-]                                   ; $47d3: $3a
    dec sp                                        ; $47d4: $3b
    ld a, [hl-]                                   ; $47d5: $3a
    dec sp                                        ; $47d6: $3b
    rlca                                          ; $47d7: $07
    rlca                                          ; $47d8: $07
    rlca                                          ; $47d9: $07
    rlca                                          ; $47da: $07
    rlca                                          ; $47db: $07
    rlca                                          ; $47dc: $07
    rlca                                          ; $47dd: $07
    rlca                                          ; $47de: $07
    rlca                                          ; $47df: $07
    rlca                                          ; $47e0: $07
    rlca                                          ; $47e1: $07
    rlca                                          ; $47e2: $07
    rlca                                          ; $47e3: $07
    rlca                                          ; $47e4: $07
    rlca                                          ; $47e5: $07
    rlca                                          ; $47e6: $07
    ld bc, $1312                                  ; $47e7: $01 $12 $13
    inc d                                         ; $47ea: $14
    ld [hl-], a                                   ; $47eb: $32
    ld [hl-], a                                   ; $47ec: $32
    ld [hl-], a                                   ; $47ed: $32
    ld [hl-], a                                   ; $47ee: $32
    inc sp                                        ; $47ef: $33
    inc sp                                        ; $47f0: $33
    inc sp                                        ; $47f1: $33
    inc sp                                        ; $47f2: $33
    inc a                                         ; $47f3: $3c
    dec a                                         ; $47f4: $3d
    dec [hl]                                      ; $47f5: $35
    ld [hl], $07                                  ; $47f6: $36 $07
    rlca                                          ; $47f8: $07
    rlca                                          ; $47f9: $07
    rlca                                          ; $47fa: $07
    rlca                                          ; $47fb: $07
    rlca                                          ; $47fc: $07
    rlca                                          ; $47fd: $07
    rlca                                          ; $47fe: $07
    rlca                                          ; $47ff: $07
    rlca                                          ; $4800: $07
    rlca                                          ; $4801: $07
    rlca                                          ; $4802: $07
    rlca                                          ; $4803: $07
    rlca                                          ; $4804: $07
    rlca                                          ; $4805: $07
    rlca                                          ; $4806: $07
    ld bc, $1312                                  ; $4807: $01 $12 $13
    inc d                                         ; $480a: $14
    ld [hl-], a                                   ; $480b: $32
    ld [hl-], a                                   ; $480c: $32
    ld [hl-], a                                   ; $480d: $32
    dec d                                         ; $480e: $15
    inc sp                                        ; $480f: $33
    inc sp                                        ; $4810: $33
    ld b, a                                       ; $4811: $47
    ld d, $3a                                     ; $4812: $16 $3a
    dec sp                                        ; $4814: $3b
    ld d, $16                                     ; $4815: $16 $16
    rlca                                          ; $4817: $07
    rlca                                          ; $4818: $07
    rlca                                          ; $4819: $07
    rlca                                          ; $481a: $07
    rlca                                          ; $481b: $07
    rlca                                          ; $481c: $07
    rlca                                          ; $481d: $07
    daa                                           ; $481e: $27
    rlca                                          ; $481f: $07
    rlca                                          ; $4820: $07
    daa                                           ; $4821: $27
    daa                                           ; $4822: $27
    rlca                                          ; $4823: $07
    rlca                                          ; $4824: $07
    rlca                                          ; $4825: $07
    daa                                           ; $4826: $27
    ld a, $3f                                     ; $4827: $3e $3f
    ld a, $3f                                     ; $4829: $3e $3f
    ld c, e                                       ; $482b: $4b
    ld d, d                                       ; $482c: $52
    ld c, e                                       ; $482d: $4b
    ld d, d                                       ; $482e: $52
    ld c, [hl]                                    ; $482f: $4e
    ld d, l                                       ; $4830: $55
    ld c, [hl]                                    ; $4831: $4e
    ld d, l                                       ; $4832: $55
    ld d, c                                       ; $4833: $51
    ld e, b                                       ; $4834: $58
    ld d, c                                       ; $4835: $51
    ld e, b                                       ; $4836: $58
    rlca                                          ; $4837: $07
    rlca                                          ; $4838: $07
    rlca                                          ; $4839: $07
    rlca                                          ; $483a: $07
    rlca                                          ; $483b: $07
    rlca                                          ; $483c: $07
    rlca                                          ; $483d: $07
    rlca                                          ; $483e: $07
    rlca                                          ; $483f: $07
    rlca                                          ; $4840: $07
    rlca                                          ; $4841: $07
    rlca                                          ; $4842: $07
    rlca                                          ; $4843: $07
    rlca                                          ; $4844: $07
    rlca                                          ; $4845: $07
    rlca                                          ; $4846: $07
    ld b, b                                       ; $4847: $40
    ld b, c                                       ; $4848: $41
    jr c, jr_085_4884                             ; $4849: $38 $39

    ld d, e                                       ; $484b: $53
    ld d, h                                       ; $484c: $54
    ld c, c                                       ; $484d: $49
    ld c, d                                       ; $484e: $4a
    ld d, [hl]                                    ; $484f: $56
    ld d, a                                       ; $4850: $57
    ld c, h                                       ; $4851: $4c
    ld c, l                                       ; $4852: $4d
    ld e, c                                       ; $4853: $59
    ld e, d                                       ; $4854: $5a
    ld c, a                                       ; $4855: $4f
    ld d, b                                       ; $4856: $50
    rlca                                          ; $4857: $07
    rlca                                          ; $4858: $07
    rlca                                          ; $4859: $07
    rlca                                          ; $485a: $07
    rlca                                          ; $485b: $07
    rlca                                          ; $485c: $07
    rlca                                          ; $485d: $07
    rlca                                          ; $485e: $07
    rlca                                          ; $485f: $07
    rlca                                          ; $4860: $07
    rlca                                          ; $4861: $07
    rlca                                          ; $4862: $07
    rlca                                          ; $4863: $07
    rlca                                          ; $4864: $07
    rlca                                          ; $4865: $07
    rlca                                          ; $4866: $07
    ld a, $3f                                     ; $4867: $3e $3f
    ld d, $16                                     ; $4869: $16 $16
    ld c, e                                       ; $486b: $4b
    ld d, d                                       ; $486c: $52
    ld d, $16                                     ; $486d: $16 $16
    ld c, [hl]                                    ; $486f: $4e
    ld d, l                                       ; $4870: $55
    ld l, $2e                                     ; $4871: $2e $2e
    ld d, c                                       ; $4873: $51
    ld e, b                                       ; $4874: $58
    cpl                                           ; $4875: $2f
    ld b, d                                       ; $4876: $42
    rlca                                          ; $4877: $07
    rlca                                          ; $4878: $07
    rlca                                          ; $4879: $07
    daa                                           ; $487a: $27
    rlca                                          ; $487b: $07
    rlca                                          ; $487c: $07
    rlca                                          ; $487d: $07
    daa                                           ; $487e: $27
    rlca                                          ; $487f: $07
    rlca                                          ; $4880: $07
    rlca                                          ; $4881: $07
    daa                                           ; $4882: $27
    rlca                                          ; $4883: $07

jr_085_4884:
    rlca                                          ; $4884: $07
    rlca                                          ; $4885: $07
    rlca                                          ; $4886: $07
    jp hl                                         ; $4887: $e9


    ld e, l                                       ; $4888: $5d
    ld c, c                                       ; $4889: $49
    ld c, d                                       ; $488a: $4a
    db $ed                                        ; $488b: $ed
    ld e, a                                       ; $488c: $5f
    ld c, h                                       ; $488d: $4c
    ld c, l                                       ; $488e: $4d
    db $fd                                        ; $488f: $fd
    ld h, c                                       ; $4890: $61
    ld c, a                                       ; $4891: $4f
    ld d, b                                       ; $4892: $50
    ld bc, $1312                                  ; $4893: $01 $12 $13
    inc d                                         ; $4896: $14
    ld b, $03                                     ; $4897: $06 $03
    inc b                                         ; $4899: $04
    inc b                                         ; $489a: $04
    ld b, $03                                     ; $489b: $06 $03
    inc b                                         ; $489d: $04
    inc b                                         ; $489e: $04
    dec b                                         ; $489f: $05
    inc bc                                        ; $48a0: $03
    inc b                                         ; $48a1: $04
    inc b                                         ; $48a2: $04
    dec b                                         ; $48a3: $05
    rlca                                          ; $48a4: $07
    rlca                                          ; $48a5: $07
    rlca                                          ; $48a6: $07
    ld c, e                                       ; $48a7: $4b
    ld d, d                                       ; $48a8: $52
    ld d, e                                       ; $48a9: $53
    ld d, h                                       ; $48aa: $54
    ld c, [hl]                                    ; $48ab: $4e
    ld d, l                                       ; $48ac: $55
    ld d, [hl]                                    ; $48ad: $56
    ld d, a                                       ; $48ae: $57
    ld d, c                                       ; $48af: $51
    ld e, b                                       ; $48b0: $58
    ld e, c                                       ; $48b1: $59
    ld e, d                                       ; $48b2: $5a
    ld bc, $1312                                  ; $48b3: $01 $12 $13
    inc d                                         ; $48b6: $14
    inc b                                         ; $48b7: $04
    inc bc                                        ; $48b8: $03
    inc bc                                        ; $48b9: $03
    inc bc                                        ; $48ba: $03
    inc b                                         ; $48bb: $04
    inc bc                                        ; $48bc: $03
    inc bc                                        ; $48bd: $03
    inc b                                         ; $48be: $04
    inc b                                         ; $48bf: $04
    inc bc                                        ; $48c0: $03
    inc bc                                        ; $48c1: $03
    inc bc                                        ; $48c2: $03
    rlca                                          ; $48c3: $07
    rlca                                          ; $48c4: $07
    rlca                                          ; $48c5: $07
    rlca                                          ; $48c6: $07
    ld c, c                                       ; $48c7: $49
    ld c, d                                       ; $48c8: $4a
    ld c, e                                       ; $48c9: $4b
    ld h, e                                       ; $48ca: $63
    ld c, h                                       ; $48cb: $4c
    ld c, l                                       ; $48cc: $4d
    ld c, [hl]                                    ; $48cd: $4e
    ld h, h                                       ; $48ce: $64
    ld c, a                                       ; $48cf: $4f
    ld d, b                                       ; $48d0: $50
    ld d, c                                       ; $48d1: $51
    ld h, l                                       ; $48d2: $65
    ld bc, $1312                                  ; $48d3: $01 $12 $13
    inc d                                         ; $48d6: $14
    inc b                                         ; $48d7: $04
    inc b                                         ; $48d8: $04
    inc b                                         ; $48d9: $04
    inc b                                         ; $48da: $04
    inc bc                                        ; $48db: $03
    inc bc                                        ; $48dc: $03
    inc b                                         ; $48dd: $04
    inc b                                         ; $48de: $04
    inc b                                         ; $48df: $04
    inc b                                         ; $48e0: $04
    inc b                                         ; $48e1: $04
    inc b                                         ; $48e2: $04
    rlca                                          ; $48e3: $07
    rlca                                          ; $48e4: $07
    rlca                                          ; $48e5: $07
    rlca                                          ; $48e6: $07
    jp hl                                         ; $48e7: $e9


    ld [$f3f2], a                                 ; $48e8: $ea $f2 $f3
    db $ed                                        ; $48eb: $ed
    push af                                       ; $48ec: $f5
    or $15                                        ; $48ed: $f6 $15
    db $fd                                        ; $48ef: $fd
    ld c, $0f                                     ; $48f0: $0e $0f
    ld l, $01                                     ; $48f2: $2e $01
    ld [de], a                                    ; $48f4: $12
    inc de                                        ; $48f5: $13
    inc [hl]                                      ; $48f6: $34
    rlca                                          ; $48f7: $07
    dec b                                         ; $48f8: $05
    dec b                                         ; $48f9: $05
    ld b, $07                                     ; $48fa: $06 $07
    ld b, $05                                     ; $48fc: $06 $05
    add d                                         ; $48fe: $82
    rlca                                          ; $48ff: $07
    ld b, $06                                     ; $4900: $06 $06
    add d                                         ; $4902: $82
    rlca                                          ; $4903: $07
    dec b                                         ; $4904: $05
    ld b, $84                                     ; $4905: $06 $84
    dec b                                         ; $4907: $05
    ld b, $07                                     ; $4908: $06 $07
    ld [$0a09], sp                                ; $490a: $08 $09 $0a
    dec bc                                        ; $490d: $0b
    inc c                                         ; $490e: $0c
    ld [hl], b                                    ; $490f: $70
    ld [hl], c                                    ; $4910: $71
    ld [hl], b                                    ; $4911: $70
    ld [hl], c                                    ; $4912: $71
    ld [hl], d                                    ; $4913: $72
    ld [hl], e                                    ; $4914: $73
    ld [hl], d                                    ; $4915: $72
    ld [hl], e                                    ; $4916: $73
    ld b, $06                                     ; $4917: $06 $06
    dec b                                         ; $4919: $05
    ld b, $05                                     ; $491a: $06 $05
    dec b                                         ; $491c: $05
    dec b                                         ; $491d: $05
    ld b, $02                                     ; $491e: $06 $02
    ld [bc], a                                    ; $4920: $02
    ld [bc], a                                    ; $4921: $02
    ld [bc], a                                    ; $4922: $02
    ld [bc], a                                    ; $4923: $02
    ld [bc], a                                    ; $4924: $02
    ld [bc], a                                    ; $4925: $02
    ld [bc], a                                    ; $4926: $02
    dec b                                         ; $4927: $05
    ld b, $07                                     ; $4928: $06 $07
    ld [$0a09], sp                                ; $492a: $08 $09 $0a
    dec bc                                        ; $492d: $0b
    inc c                                         ; $492e: $0c
    ld [hl], b                                    ; $492f: $70
    ld [hl], c                                    ; $4930: $71
    ld [hl], b                                    ; $4931: $70
    ld [hl], c                                    ; $4932: $71
    ld [hl], d                                    ; $4933: $72
    ld [hl], e                                    ; $4934: $73
    ld [hl], d                                    ; $4935: $72
    ld [hl], e                                    ; $4936: $73
    ld b, $05                                     ; $4937: $06 $05
    dec b                                         ; $4939: $05
    ld b, $06                                     ; $493a: $06 $06
    dec b                                         ; $493c: $05
    ld b, $05                                     ; $493d: $06 $05
    ld [bc], a                                    ; $493f: $02
    ld [bc], a                                    ; $4940: $02
    ld [bc], a                                    ; $4941: $02
    ld [bc], a                                    ; $4942: $02
    ld [bc], a                                    ; $4943: $02
    ld [bc], a                                    ; $4944: $02
    ld [bc], a                                    ; $4945: $02
    ld [bc], a                                    ; $4946: $02
    dec b                                         ; $4947: $05
    ld b, $07                                     ; $4948: $06 $07
    scf                                           ; $494a: $37
    add hl, bc                                    ; $494b: $09
    ld a, [bc]                                    ; $494c: $0a
    dec bc                                        ; $494d: $0b
    ld e, l                                       ; $494e: $5d
    ld [hl], b                                    ; $494f: $70
    ld [hl], c                                    ; $4950: $71
    ld [hl], h                                    ; $4951: $74
    ld e, a                                       ; $4952: $5f
    ld [hl], d                                    ; $4953: $72
    ld [hl], e                                    ; $4954: $73
    ld [hl], l                                    ; $4955: $75
    ld h, c                                       ; $4956: $61
    dec b                                         ; $4957: $05
    ld b, $05                                     ; $4958: $06 $05
    inc b                                         ; $495a: $04
    ld b, $06                                     ; $495b: $06 $06
    ld b, $03                                     ; $495d: $06 $03
    ld [bc], a                                    ; $495f: $02
    ld [bc], a                                    ; $4960: $02
    ld [bc], a                                    ; $4961: $02
    inc bc                                        ; $4962: $03
    ld [bc], a                                    ; $4963: $02
    ld [bc], a                                    ; $4964: $02
    ld [bc], a                                    ; $4965: $02
    inc bc                                        ; $4966: $03
    ld bc, $1312                                  ; $4967: $01 $12 $13
    inc d                                         ; $496a: $14
    dec b                                         ; $496b: $05
    ld b, $07                                     ; $496c: $06 $07
    dec d                                         ; $496e: $15
    add hl, bc                                    ; $496f: $09
    ld a, [bc]                                    ; $4970: $0a
    dec bc                                        ; $4971: $0b
    ld d, $1f                                     ; $4972: $16 $1f
    jr nz, jr_085_4997                            ; $4974: $20 $21

    ld d, $07                                     ; $4976: $16 $07
    rlca                                          ; $4978: $07
    rlca                                          ; $4979: $07
    rlca                                          ; $497a: $07
    rlca                                          ; $497b: $07
    rlca                                          ; $497c: $07
    rlca                                          ; $497d: $07
    rlca                                          ; $497e: $07
    rlca                                          ; $497f: $07
    rlca                                          ; $4980: $07
    rlca                                          ; $4981: $07
    rlca                                          ; $4982: $07
    rlca                                          ; $4983: $07
    rlca                                          ; $4984: $07
    rlca                                          ; $4985: $07
    rlca                                          ; $4986: $07
    ld bc, $1312                                  ; $4987: $01 $12 $13
    inc d                                         ; $498a: $14
    ld [hl-], a                                   ; $498b: $32
    ld [hl-], a                                   ; $498c: $32
    ld [hl-], a                                   ; $498d: $32
    ld [hl-], a                                   ; $498e: $32
    ld b, a                                       ; $498f: $47
    inc sp                                        ; $4990: $33
    inc sp                                        ; $4991: $33
    inc sp                                        ; $4992: $33
    ld d, $36                                     ; $4993: $16 $36
    ld a, [hl-]                                   ; $4995: $3a
    dec sp                                        ; $4996: $3b

jr_085_4997:
    rlca                                          ; $4997: $07
    rlca                                          ; $4998: $07
    rlca                                          ; $4999: $07
    rlca                                          ; $499a: $07
    rlca                                          ; $499b: $07
    rlca                                          ; $499c: $07
    rlca                                          ; $499d: $07
    rlca                                          ; $499e: $07
    rlca                                          ; $499f: $07
    rlca                                          ; $49a0: $07
    rlca                                          ; $49a1: $07
    rlca                                          ; $49a2: $07
    daa                                           ; $49a3: $27
    rlca                                          ; $49a4: $07
    rlca                                          ; $49a5: $07
    rlca                                          ; $49a6: $07
    ld bc, $1312                                  ; $49a7: $01 $12 $13
    inc d                                         ; $49aa: $14
    ld [hl-], a                                   ; $49ab: $32
    ld [hl-], a                                   ; $49ac: $32
    ld [hl-], a                                   ; $49ad: $32
    dec d                                         ; $49ae: $15
    inc sp                                        ; $49af: $33
    inc sp                                        ; $49b0: $33
    ld b, a                                       ; $49b1: $47
    ld d, $3c                                     ; $49b2: $16 $3c
    dec a                                         ; $49b4: $3d
    ld d, $16                                     ; $49b5: $16 $16
    rlca                                          ; $49b7: $07
    rlca                                          ; $49b8: $07
    rlca                                          ; $49b9: $07
    rlca                                          ; $49ba: $07
    rlca                                          ; $49bb: $07
    rlca                                          ; $49bc: $07
    rlca                                          ; $49bd: $07
    daa                                           ; $49be: $27
    rlca                                          ; $49bf: $07
    rlca                                          ; $49c0: $07
    daa                                           ; $49c1: $27
    daa                                           ; $49c2: $27
    rlca                                          ; $49c3: $07
    rlca                                          ; $49c4: $07
    rlca                                          ; $49c5: $07
    daa                                           ; $49c6: $27
    ld bc, $7612                                  ; $49c7: $01 $12 $76
    ld a, [hl+]                                   ; $49ca: $2a
    dec b                                         ; $49cb: $05
    ld b, $77                                     ; $49cc: $06 $77
    add sp, $09                                   ; $49ce: $e8 $09
    ld a, [bc]                                    ; $49d0: $0a
    halt                                          ; $49d1: $76
    dec d                                         ; $49d2: $15
    rra                                           ; $49d3: $1f
    jr nz, @+$79                                  ; $49d4: $20 $77

    ld l, $07                                     ; $49d6: $2e $07
    rlca                                          ; $49d8: $07
    ld [bc], a                                    ; $49d9: $02
    rlca                                          ; $49da: $07
    rlca                                          ; $49db: $07
    rlca                                          ; $49dc: $07
    ld [bc], a                                    ; $49dd: $02
    rlca                                          ; $49de: $07
    rlca                                          ; $49df: $07
    rlca                                          ; $49e0: $07
    ld [bc], a                                    ; $49e1: $02
    add d                                         ; $49e2: $82
    rlca                                          ; $49e3: $07
    rlca                                          ; $49e4: $07
    ld [bc], a                                    ; $49e5: $02
    add d                                         ; $49e6: $82
    inc hl                                        ; $49e7: $23
    inc h                                         ; $49e8: $24
    dec h                                         ; $49e9: $25
    ld d, $27                                     ; $49ea: $16 $27
    jr z, jr_085_4a17                             ; $49ec: $28 $29

    ld d, $e5                                     ; $49ee: $16 $e5
    and $e7                                       ; $49f0: $e6 $e7
    ld d, $e9                                     ; $49f2: $16 $e9
    ld [$16f2], a                                 ; $49f4: $ea $f2 $16
    rlca                                          ; $49f7: $07
    rlca                                          ; $49f8: $07
    rlca                                          ; $49f9: $07
    rlca                                          ; $49fa: $07
    rlca                                          ; $49fb: $07
    rlca                                          ; $49fc: $07
    rlca                                          ; $49fd: $07
    rlca                                          ; $49fe: $07
    rlca                                          ; $49ff: $07
    rlca                                          ; $4a00: $07
    rlca                                          ; $4a01: $07
    rlca                                          ; $4a02: $07
    rlca                                          ; $4a03: $07
    rlca                                          ; $4a04: $07
    rlca                                          ; $4a05: $07
    rlca                                          ; $4a06: $07
    ld d, $39                                     ; $4a07: $16 $39
    ld a, $3f                                     ; $4a09: $3e $3f
    ld d, $4a                                     ; $4a0b: $16 $4a
    ld c, e                                       ; $4a0d: $4b
    ld d, d                                       ; $4a0e: $52
    ld d, $4d                                     ; $4a0f: $16 $4d
    ld c, [hl]                                    ; $4a11: $4e
    ld d, l                                       ; $4a12: $55
    ld d, $50                                     ; $4a13: $16 $50
    ld d, c                                       ; $4a15: $51
    ld e, b                                       ; $4a16: $58

jr_085_4a17:
    daa                                           ; $4a17: $27
    rlca                                          ; $4a18: $07
    rlca                                          ; $4a19: $07
    rlca                                          ; $4a1a: $07
    daa                                           ; $4a1b: $27
    rlca                                          ; $4a1c: $07
    rlca                                          ; $4a1d: $07
    rlca                                          ; $4a1e: $07
    daa                                           ; $4a1f: $27
    rlca                                          ; $4a20: $07
    rlca                                          ; $4a21: $07
    rlca                                          ; $4a22: $07
    daa                                           ; $4a23: $27
    rlca                                          ; $4a24: $07
    rlca                                          ; $4a25: $07
    rlca                                          ; $4a26: $07
    ld b, b                                       ; $4a27: $40
    ld b, c                                       ; $4a28: $41
    ld d, $16                                     ; $4a29: $16 $16
    ld d, e                                       ; $4a2b: $53
    ld d, h                                       ; $4a2c: $54
    ld d, $16                                     ; $4a2d: $16 $16
    ld d, [hl]                                    ; $4a2f: $56
    ld d, a                                       ; $4a30: $57
    ld d, $16                                     ; $4a31: $16 $16
    ld e, c                                       ; $4a33: $59
    ld e, d                                       ; $4a34: $5a

jr_085_4a35:
    ld d, $16                                     ; $4a35: $16 $16
    rlca                                          ; $4a37: $07
    rlca                                          ; $4a38: $07
    rlca                                          ; $4a39: $07
    daa                                           ; $4a3a: $27
    rlca                                          ; $4a3b: $07
    rlca                                          ; $4a3c: $07
    rlca                                          ; $4a3d: $07
    daa                                           ; $4a3e: $27
    rlca                                          ; $4a3f: $07
    rlca                                          ; $4a40: $07
    rlca                                          ; $4a41: $07
    daa                                           ; $4a42: $27
    rlca                                          ; $4a43: $07
    rlca                                          ; $4a44: $07
    rlca                                          ; $4a45: $07
    daa                                           ; $4a46: $27
    inc hl                                        ; $4a47: $23
    inc h                                         ; $4a48: $24
    halt                                          ; $4a49: $76
    cpl                                           ; $4a4a: $2f
    daa                                           ; $4a4b: $27
    jr z, @+$79                                   ; $4a4c: $28 $77

    jr nc, jr_085_4a35                            ; $4a4e: $30 $e5

    and $76                                       ; $4a50: $e6 $76
    ld b, h                                       ; $4a52: $44
    jp hl                                         ; $4a53: $e9


    ld [$4577], a                                 ; $4a54: $ea $77 $45
    rlca                                          ; $4a57: $07
    rlca                                          ; $4a58: $07
    ld [bc], a                                    ; $4a59: $02
    add e                                         ; $4a5a: $83
    rlca                                          ; $4a5b: $07
    rlca                                          ; $4a5c: $07
    ld [bc], a                                    ; $4a5d: $02
    inc bc                                        ; $4a5e: $03
    rlca                                          ; $4a5f: $07
    rlca                                          ; $4a60: $07
    ld [bc], a                                    ; $4a61: $02
    inc bc                                        ; $4a62: $03
    rlca                                          ; $4a63: $07
    rlca                                          ; $4a64: $07
    ld [bc], a                                    ; $4a65: $02
    inc bc                                        ; $4a66: $03
    jp hl                                         ; $4a67: $e9


    ld [$f3f2], a                                 ; $4a68: $ea $f2 $f3
    ld [hl-], a                                   ; $4a6b: $32
    ld [hl-], a                                   ; $4a6c: $32
    ld [hl-], a                                   ; $4a6d: $32
    ld [hl-], a                                   ; $4a6e: $32
    inc sp                                        ; $4a6f: $33
    inc sp                                        ; $4a70: $33
    inc sp                                        ; $4a71: $33
    inc sp                                        ; $4a72: $33
    dec [hl]                                      ; $4a73: $35
    ld [hl], $3a                                  ; $4a74: $36 $3a
    dec sp                                        ; $4a76: $3b
    ld b, $05                                     ; $4a77: $06 $05
    ld b, $06                                     ; $4a79: $06 $06
    add d                                         ; $4a7b: $82
    add d                                         ; $4a7c: $82
    add d                                         ; $4a7d: $82
    add d                                         ; $4a7e: $82
    add d                                         ; $4a7f: $82
    add d                                         ; $4a80: $82
    add d                                         ; $4a81: $82
    add d                                         ; $4a82: $82
    add h                                         ; $4a83: $84
    add e                                         ; $4a84: $83
    add e                                         ; $4a85: $83
    add h                                         ; $4a86: $84
    jp hl                                         ; $4a87: $e9


    ld [$1616], a                                 ; $4a88: $ea $16 $16
    ld [hl-], a                                   ; $4a8b: $32
    ld [hl-], a                                   ; $4a8c: $32
    ld sp, $3316                                  ; $4a8d: $31 $16 $33
    inc sp                                        ; $4a90: $33
    inc sp                                        ; $4a91: $33
    ld l, $3c                                     ; $4a92: $2e $3c
    dec a                                         ; $4a94: $3d
    dec [hl]                                      ; $4a95: $35
    ld e, e                                       ; $4a96: $5b
    ld b, $05                                     ; $4a97: $06 $05
    add d                                         ; $4a99: $82
    and d                                         ; $4a9a: $a2
    add d                                         ; $4a9b: $82
    add d                                         ; $4a9c: $82
    and d                                         ; $4a9d: $a2
    and d                                         ; $4a9e: $a2
    add d                                         ; $4a9f: $82
    add d                                         ; $4aa0: $82
    add d                                         ; $4aa1: $82
    and d                                         ; $4aa2: $a2
    add e                                         ; $4aa3: $83
    add h                                         ; $4aa4: $84
    add e                                         ; $4aa5: $83
    inc bc                                        ; $4aa6: $03
    jp hl                                         ; $4aa7: $e9


    ld [$f3f2], a                                 ; $4aa8: $ea $f2 $f3
    db $ed                                        ; $4aab: $ed
    push af                                       ; $4aac: $f5
    or $f7                                        ; $4aad: $f6 $f7
    db $fd                                        ; $4aaf: $fd
    ld c, $0f                                     ; $4ab0: $0e $0f
    db $10                                        ; $4ab2: $10
    ld bc, $1312                                  ; $4ab3: $01 $12 $13
    inc d                                         ; $4ab6: $14
    rlca                                          ; $4ab7: $07
    dec b                                         ; $4ab8: $05
    ld b, $05                                     ; $4ab9: $06 $05
    rlca                                          ; $4abb: $07
    dec b                                         ; $4abc: $05
    dec b                                         ; $4abd: $05
    dec b                                         ; $4abe: $05
    rlca                                          ; $4abf: $07
    dec b                                         ; $4ac0: $05
    ld b, $05                                     ; $4ac1: $06 $05
    rlca                                          ; $4ac3: $07
    ld b, $06                                     ; $4ac4: $06 $06
    ld b, $e9                                     ; $4ac6: $06 $e9
    ld d, $16                                     ; $4ac8: $16 $16
    dec [hl]                                      ; $4aca: $35
    db $ed                                        ; $4acb: $ed
    ld d, $16                                     ; $4acc: $16 $16
    jr c, @-$01                                   ; $4ace: $38 $fd

    ld d, $16                                     ; $4ad0: $16 $16
    ld c, c                                       ; $4ad2: $49
    ld bc, $1616                                  ; $4ad3: $01 $16 $16
    ld c, h                                       ; $4ad6: $4c
    ld b, $82                                     ; $4ad7: $06 $82
    and d                                         ; $4ad9: $a2
    add e                                         ; $4ada: $83
    ld b, $82                                     ; $4adb: $06 $82
    and d                                         ; $4add: $a2
    inc bc                                        ; $4ade: $03
    ld b, $82                                     ; $4adf: $06 $82
    and d                                         ; $4ae1: $a2
    inc bc                                        ; $4ae2: $03
    dec b                                         ; $4ae3: $05
    add d                                         ; $4ae4: $82
    and d                                         ; $4ae5: $a2
    inc bc                                        ; $4ae6: $03
    jr c, jr_085_4b22                             ; $4ae7: $38 $39

    ld a, $3f                                     ; $4ae9: $3e $3f
    ld c, c                                       ; $4aeb: $49
    ld c, d                                       ; $4aec: $4a
    ld c, e                                       ; $4aed: $4b
    ld d, d                                       ; $4aee: $52
    ld c, h                                       ; $4aef: $4c
    ld c, l                                       ; $4af0: $4d
    ld c, [hl]                                    ; $4af1: $4e
    ld d, l                                       ; $4af2: $55
    ld c, a                                       ; $4af3: $4f
    ld d, b                                       ; $4af4: $50
    ld d, c                                       ; $4af5: $51
    ld e, b                                       ; $4af6: $58
    inc b                                         ; $4af7: $04
    inc bc                                        ; $4af8: $03
    inc bc                                        ; $4af9: $03
    inc b                                         ; $4afa: $04
    inc b                                         ; $4afb: $04
    inc b                                         ; $4afc: $04
    inc bc                                        ; $4afd: $03
    inc b                                         ; $4afe: $04
    inc b                                         ; $4aff: $04
    inc bc                                        ; $4b00: $03
    inc bc                                        ; $4b01: $03
    inc b                                         ; $4b02: $04
    inc b                                         ; $4b03: $04
    inc bc                                        ; $4b04: $03
    inc bc                                        ; $4b05: $03
    inc b                                         ; $4b06: $04
    ld b, b                                       ; $4b07: $40
    ld b, c                                       ; $4b08: $41
    jr c, jr_085_4b67                             ; $4b09: $38 $5c

    ld d, e                                       ; $4b0b: $53
    ld d, h                                       ; $4b0c: $54
    ld c, c                                       ; $4b0d: $49
    ld e, [hl]                                    ; $4b0e: $5e
    ld d, [hl]                                    ; $4b0f: $56
    ld d, a                                       ; $4b10: $57
    ld c, h                                       ; $4b11: $4c
    ld h, b                                       ; $4b12: $60
    ld e, c                                       ; $4b13: $59
    ld e, d                                       ; $4b14: $5a
    ld c, a                                       ; $4b15: $4f
    ld h, d                                       ; $4b16: $62
    inc b                                         ; $4b17: $04
    inc b                                         ; $4b18: $04
    inc bc                                        ; $4b19: $03
    inc bc                                        ; $4b1a: $03
    inc b                                         ; $4b1b: $04
    inc bc                                        ; $4b1c: $03
    inc b                                         ; $4b1d: $04
    inc bc                                        ; $4b1e: $03
    inc bc                                        ; $4b1f: $03
    inc b                                         ; $4b20: $04
    inc bc                                        ; $4b21: $03

jr_085_4b22:
    inc bc                                        ; $4b22: $03
    inc b                                         ; $4b23: $04
    inc bc                                        ; $4b24: $03
    inc bc                                        ; $4b25: $03
    inc bc                                        ; $4b26: $03
    dec b                                         ; $4b27: $05
    ld b, $07                                     ; $4b28: $06 $07
    ld [$0a09], sp                                ; $4b2a: $08 $09 $0a
    dec bc                                        ; $4b2d: $0b
    inc c                                         ; $4b2e: $0c
    rra                                           ; $4b2f: $1f
    jr nz, jr_085_4b53                            ; $4b30: $20 $21

    ld [hl+], a                                   ; $4b32: $22
    inc hl                                        ; $4b33: $23
    inc h                                         ; $4b34: $24
    dec h                                         ; $4b35: $25
    ld h, $07                                     ; $4b36: $26 $07
    ld b, $05                                     ; $4b38: $06 $05
    ld b, $07                                     ; $4b3a: $06 $07
    ld b, $05                                     ; $4b3c: $06 $05
    dec b                                         ; $4b3e: $05
    rlca                                          ; $4b3f: $07
    dec b                                         ; $4b40: $05
    ld b, $06                                     ; $4b41: $06 $06
    rlca                                          ; $4b43: $07
    ld b, $05                                     ; $4b44: $06 $05
    ld b, $05                                     ; $4b46: $06 $05
    ld d, $16                                     ; $4b48: $16 $16
    ld c, a                                       ; $4b4a: $4f
    add hl, bc                                    ; $4b4b: $09
    ld d, $16                                     ; $4b4c: $16 $16
    inc c                                         ; $4b4e: $0c
    rra                                           ; $4b4f: $1f
    ld l, $2e                                     ; $4b50: $2e $2e
    ld [hl+], a                                   ; $4b52: $22

jr_085_4b53:
    inc hl                                        ; $4b53: $23
    cpl                                           ; $4b54: $2f
    ld b, d                                       ; $4b55: $42
    ld h, $06                                     ; $4b56: $26 $06
    add d                                         ; $4b58: $82
    and d                                         ; $4b59: $a2
    inc bc                                        ; $4b5a: $03
    dec b                                         ; $4b5b: $05
    add d                                         ; $4b5c: $82
    and d                                         ; $4b5d: $a2
    rlca                                          ; $4b5e: $07
    ld b, $82                                     ; $4b5f: $06 $82
    and d                                         ; $4b61: $a2
    rlca                                          ; $4b62: $07
    dec b                                         ; $4b63: $05
    inc bc                                        ; $4b64: $03
    inc b                                         ; $4b65: $04
    rlca                                          ; $4b66: $07

jr_085_4b67:
    daa                                           ; $4b67: $27
    jr z, jr_085_4b93                             ; $4b68: $28 $29

    ld a, [hl+]                                   ; $4b6a: $2a
    push hl                                       ; $4b6b: $e5
    and $e7                                       ; $4b6c: $e6 $e7
    add sp, $32                                   ; $4b6e: $e8 $32
    ld [hl-], a                                   ; $4b70: $32
    ld [hl-], a                                   ; $4b71: $32
    ld [hl-], a                                   ; $4b72: $32
    inc sp                                        ; $4b73: $33
    inc sp                                        ; $4b74: $33
    inc sp                                        ; $4b75: $33
    inc sp                                        ; $4b76: $33
    rlca                                          ; $4b77: $07
    rlca                                          ; $4b78: $07
    rlca                                          ; $4b79: $07
    rlca                                          ; $4b7a: $07
    dec b                                         ; $4b7b: $05
    dec b                                         ; $4b7c: $05
    ld b, $05                                     ; $4b7d: $06 $05
    add d                                         ; $4b7f: $82
    add d                                         ; $4b80: $82
    add d                                         ; $4b81: $82
    add d                                         ; $4b82: $82
    add d                                         ; $4b83: $82
    add d                                         ; $4b84: $82
    add d                                         ; $4b85: $82
    add d                                         ; $4b86: $82
    daa                                           ; $4b87: $27
    jr z, jr_085_4bb3                             ; $4b88: $28 $29

    ld a, [hl+]                                   ; $4b8a: $2a
    push hl                                       ; $4b8b: $e5
    and $e7                                       ; $4b8c: $e6 $e7
    add sp, $32                                   ; $4b8e: $e8 $32
    ld [hl-], a                                   ; $4b90: $32
    ld [hl-], a                                   ; $4b91: $32
    dec d                                         ; $4b92: $15

jr_085_4b93:
    inc sp                                        ; $4b93: $33
    inc sp                                        ; $4b94: $33
    inc sp                                        ; $4b95: $33
    ld l, $07                                     ; $4b96: $2e $07
    rlca                                          ; $4b98: $07
    rlca                                          ; $4b99: $07
    rlca                                          ; $4b9a: $07
    ld b, $06                                     ; $4b9b: $06 $06
    dec b                                         ; $4b9d: $05
    ld b, $82                                     ; $4b9e: $06 $82
    add d                                         ; $4ba0: $82
    add d                                         ; $4ba1: $82
    and d                                         ; $4ba2: $a2
    add d                                         ; $4ba3: $82
    add d                                         ; $4ba4: $82
    add d                                         ; $4ba5: $82
    and d                                         ; $4ba6: $a2
    daa                                           ; $4ba7: $27
    jr z, jr_085_4bd3                             ; $4ba8: $28 $29

    ld a, [hl+]                                   ; $4baa: $2a
    push hl                                       ; $4bab: $e5
    and $e7                                       ; $4bac: $e6 $e7
    add sp, -$17                                  ; $4bae: $e8 $e9
    ld [$f3f2], a                                 ; $4bb0: $ea $f2 $f3

jr_085_4bb3:
    db $ed                                        ; $4bb3: $ed
    push af                                       ; $4bb4: $f5
    or $f7                                        ; $4bb5: $f6 $f7
    rlca                                          ; $4bb7: $07
    ld b, $06                                     ; $4bb8: $06 $06
    dec b                                         ; $4bba: $05
    dec b                                         ; $4bbb: $05
    ld b, $05                                     ; $4bbc: $06 $05
    dec b                                         ; $4bbe: $05
    ld b, $05                                     ; $4bbf: $06 $05
    ld b, $06                                     ; $4bc1: $06 $06
    ld b, $06                                     ; $4bc3: $06 $06
    ld b, $05                                     ; $4bc5: $06 $05
    daa                                           ; $4bc7: $27
    jr nc, jr_085_4c0d                            ; $4bc8: $30 $43

    ld a, [hl+]                                   ; $4bca: $2a
    push hl                                       ; $4bcb: $e5
    ld b, h                                       ; $4bcc: $44
    ld h, e                                       ; $4bcd: $63
    add sp, -$17                                  ; $4bce: $e8 $e9
    ld b, l                                       ; $4bd0: $45
    ld h, h                                       ; $4bd1: $64
    di                                            ; $4bd2: $f3

jr_085_4bd3:
    db $ed                                        ; $4bd3: $ed
    ld b, [hl]                                    ; $4bd4: $46
    ld h, l                                       ; $4bd5: $65
    rst $30                                       ; $4bd6: $f7
    ld b, $03                                     ; $4bd7: $06 $03
    inc b                                         ; $4bd9: $04
    rlca                                          ; $4bda: $07
    ld b, $03                                     ; $4bdb: $06 $03
    inc b                                         ; $4bdd: $04
    rlca                                          ; $4bde: $07
    dec b                                         ; $4bdf: $05
    inc b                                         ; $4be0: $04
    inc bc                                        ; $4be1: $03
    rlca                                          ; $4be2: $07
    dec b                                         ; $4be3: $05
    inc bc                                        ; $4be4: $03
    inc bc                                        ; $4be5: $03
    rlca                                          ; $4be6: $07
    dec a                                         ; $4be7: $3d
    dec [hl]                                      ; $4be8: $35
    ld [hl], $3a                                  ; $4be9: $36 $3a
    ld b, c                                       ; $4beb: $41
    jr c, jr_085_4c27                             ; $4bec: $38 $39

    ld a, $54                                     ; $4bee: $3e $54
    ld c, c                                       ; $4bf0: $49
    ld c, d                                       ; $4bf1: $4a
    ld c, e                                       ; $4bf2: $4b
    ld d, a                                       ; $4bf3: $57
    ld c, h                                       ; $4bf4: $4c
    ld c, l                                       ; $4bf5: $4d
    ld c, [hl]                                    ; $4bf6: $4e
    add h                                         ; $4bf7: $84
    add e                                         ; $4bf8: $83
    add h                                         ; $4bf9: $84
    add e                                         ; $4bfa: $83
    inc bc                                        ; $4bfb: $03
    inc b                                         ; $4bfc: $04
    inc bc                                        ; $4bfd: $03
    inc b                                         ; $4bfe: $04
    inc b                                         ; $4bff: $04
    inc bc                                        ; $4c00: $03
    inc bc                                        ; $4c01: $03
    inc b                                         ; $4c02: $04
    inc bc                                        ; $4c03: $03
    inc b                                         ; $4c04: $04
    inc bc                                        ; $4c05: $03
    inc b                                         ; $4c06: $04
    dec sp                                        ; $4c07: $3b
    inc a                                         ; $4c08: $3c
    dec a                                         ; $4c09: $3d
    ld e, e                                       ; $4c0a: $5b
    ccf                                           ; $4c0b: $3f
    ld b, b                                       ; $4c0c: $40

jr_085_4c0d:
    ld b, c                                       ; $4c0d: $41
    ld e, h                                       ; $4c0e: $5c
    ld d, d                                       ; $4c0f: $52
    ld d, e                                       ; $4c10: $53
    ld d, h                                       ; $4c11: $54
    ld e, [hl]                                    ; $4c12: $5e
    ld d, l                                       ; $4c13: $55
    ld d, [hl]                                    ; $4c14: $56
    ld d, a                                       ; $4c15: $57
    ld h, b                                       ; $4c16: $60
    add e                                         ; $4c17: $83
    add e                                         ; $4c18: $83
    add e                                         ; $4c19: $83
    add e                                         ; $4c1a: $83
    inc bc                                        ; $4c1b: $03
    inc b                                         ; $4c1c: $04
    inc bc                                        ; $4c1d: $03
    inc bc                                        ; $4c1e: $03
    inc b                                         ; $4c1f: $04
    inc bc                                        ; $4c20: $03
    inc b                                         ; $4c21: $04
    inc bc                                        ; $4c22: $03
    inc bc                                        ; $4c23: $03
    inc b                                         ; $4c24: $04
    inc bc                                        ; $4c25: $03
    inc bc                                        ; $4c26: $03

jr_085_4c27:
    db $fd                                        ; $4c27: $fd
    ld c, $0f                                     ; $4c28: $0e $0f
    db $10                                        ; $4c2a: $10
    ld bc, $1312                                  ; $4c2b: $01 $12 $13
    inc d                                         ; $4c2e: $14
    dec b                                         ; $4c2f: $05
    ld b, $07                                     ; $4c30: $06 $07
    ld [$0a09], sp                                ; $4c32: $08 $09 $0a
    dec bc                                        ; $4c35: $0b
    inc c                                         ; $4c36: $0c
    ld b, $06                                     ; $4c37: $06 $06
    dec b                                         ; $4c39: $05
    ld b, $07                                     ; $4c3a: $06 $07
    ld b, $06                                     ; $4c3c: $06 $06
    ld b, $07                                     ; $4c3e: $06 $07
    dec b                                         ; $4c40: $05
    ld b, $05                                     ; $4c41: $06 $05
    rlca                                          ; $4c43: $07
    dec b                                         ; $4c44: $05
    dec b                                         ; $4c45: $05
    dec b                                         ; $4c46: $05
    db $fd                                        ; $4c47: $fd
    ld c, $0f                                     ; $4c48: $0e $0f
    db $10                                        ; $4c4a: $10
    ld bc, $1312                                  ; $4c4b: $01 $12 $13
    inc d                                         ; $4c4e: $14
    dec b                                         ; $4c4f: $05
    dec d                                         ; $4c50: $15
    dec d                                         ; $4c51: $15
    ld [$1609], sp                                ; $4c52: $08 $09 $16
    ld d, $0c                                     ; $4c55: $16 $0c
    ld b, $07                                     ; $4c57: $06 $07
    rlca                                          ; $4c59: $07
    rlca                                          ; $4c5a: $07
    dec b                                         ; $4c5b: $05
    dec b                                         ; $4c5c: $05
    ld b, $06                                     ; $4c5d: $06 $06
    dec b                                         ; $4c5f: $05
    add d                                         ; $4c60: $82
    and d                                         ; $4c61: $a2
    ld b, $06                                     ; $4c62: $06 $06
    add d                                         ; $4c64: $82
    and d                                         ; $4c65: $a2
    dec b                                         ; $4c66: $05
    ld [hl], $3a                                  ; $4c67: $36 $3a
    dec sp                                        ; $4c69: $3b
    inc a                                         ; $4c6a: $3c
    add hl, sp                                    ; $4c6b: $39
    ld a, $3f                                     ; $4c6c: $3e $3f
    ld b, b                                       ; $4c6e: $40
    ld c, d                                       ; $4c6f: $4a
    ld c, e                                       ; $4c70: $4b
    ld d, d                                       ; $4c71: $52
    ld d, e                                       ; $4c72: $53
    ld c, l                                       ; $4c73: $4d
    ld c, [hl]                                    ; $4c74: $4e
    ld d, l                                       ; $4c75: $55
    ld d, [hl]                                    ; $4c76: $56
    add h                                         ; $4c77: $84
    add e                                         ; $4c78: $83
    add e                                         ; $4c79: $83
    add e                                         ; $4c7a: $83
    inc b                                         ; $4c7b: $04
    inc b                                         ; $4c7c: $04
    inc bc                                        ; $4c7d: $03
    inc bc                                        ; $4c7e: $03
    inc bc                                        ; $4c7f: $03
    inc bc                                        ; $4c80: $03
    inc bc                                        ; $4c81: $03
    inc b                                         ; $4c82: $04
    inc b                                         ; $4c83: $04
    inc b                                         ; $4c84: $04
    inc bc                                        ; $4c85: $03
    inc b                                         ; $4c86: $04
    dec a                                         ; $4c87: $3d
    dec [hl]                                      ; $4c88: $35
    ld [hl], $3a                                  ; $4c89: $36 $3a
    ld b, c                                       ; $4c8b: $41
    jr c, @+$3b                                   ; $4c8c: $38 $39

    ld a, $54                                     ; $4c8e: $3e $54
    ld c, c                                       ; $4c90: $49
    ld c, d                                       ; $4c91: $4a
    ld c, e                                       ; $4c92: $4b
    ld d, a                                       ; $4c93: $57
    ld c, h                                       ; $4c94: $4c
    ld c, l                                       ; $4c95: $4d
    ld c, [hl]                                    ; $4c96: $4e
    add h                                         ; $4c97: $84
    add h                                         ; $4c98: $84
    add h                                         ; $4c99: $84
    add e                                         ; $4c9a: $83
    inc b                                         ; $4c9b: $04
    inc b                                         ; $4c9c: $04
    inc b                                         ; $4c9d: $04
    inc bc                                        ; $4c9e: $03
    inc b                                         ; $4c9f: $04
    inc bc                                        ; $4ca0: $03
    inc bc                                        ; $4ca1: $03
    inc bc                                        ; $4ca2: $03
    inc b                                         ; $4ca3: $04
    inc b                                         ; $4ca4: $04
    inc bc                                        ; $4ca5: $03
    inc bc                                        ; $4ca6: $03
    ld d, b                                       ; $4ca7: $50
    ld d, c                                       ; $4ca8: $51
    ld e, b                                       ; $4ca9: $58
    ld e, c                                       ; $4caa: $59
    add hl, bc                                    ; $4cab: $09
    ld a, [bc]                                    ; $4cac: $0a
    dec bc                                        ; $4cad: $0b
    inc c                                         ; $4cae: $0c
    rra                                           ; $4caf: $1f
    jr nz, jr_085_4cd3                            ; $4cb0: $20 $21

    ld [hl+], a                                   ; $4cb2: $22
    inc hl                                        ; $4cb3: $23
    inc h                                         ; $4cb4: $24
    dec h                                         ; $4cb5: $25
    ld h, $04                                     ; $4cb6: $26 $04
    inc bc                                        ; $4cb8: $03
    inc bc                                        ; $4cb9: $03
    inc b                                         ; $4cba: $04
    rlca                                          ; $4cbb: $07
    rlca                                          ; $4cbc: $07
    rlca                                          ; $4cbd: $07
    rlca                                          ; $4cbe: $07
    ld b, $05                                     ; $4cbf: $06 $05
    ld b, $06                                     ; $4cc1: $06 $06
    ld b, $05                                     ; $4cc3: $06 $05
    dec b                                         ; $4cc5: $05
    ld b, $5a                                     ; $4cc6: $06 $5a
    ld c, a                                       ; $4cc8: $4f
    ld d, b                                       ; $4cc9: $50
    ld d, c                                       ; $4cca: $51
    add hl, bc                                    ; $4ccb: $09
    ld a, [bc]                                    ; $4ccc: $0a
    dec bc                                        ; $4ccd: $0b
    inc c                                         ; $4cce: $0c
    rra                                           ; $4ccf: $1f
    jr nz, jr_085_4cf3                            ; $4cd0: $20 $21

    ld [hl+], a                                   ; $4cd2: $22

jr_085_4cd3:
    ld a, b                                       ; $4cd3: $78
    ld a, c                                       ; $4cd4: $79
    ld a, d                                       ; $4cd5: $7a
    ld a, e                                       ; $4cd6: $7b
    inc b                                         ; $4cd7: $04
    inc b                                         ; $4cd8: $04
    inc bc                                        ; $4cd9: $03
    inc bc                                        ; $4cda: $03
    rlca                                          ; $4cdb: $07
    rlca                                          ; $4cdc: $07
    rlca                                          ; $4cdd: $07
    rlca                                          ; $4cde: $07
    dec b                                         ; $4cdf: $05
    ld b, $05                                     ; $4ce0: $06 $05
    ld b, $01                                     ; $4ce2: $06 $01
    ld bc, $0101                                  ; $4ce4: $01 $01 $01
    daa                                           ; $4ce7: $27
    jr z, jr_085_4d13                             ; $4ce8: $28 $29

    ld a, [hl+]                                   ; $4cea: $2a
    push hl                                       ; $4ceb: $e5
    and $e7                                       ; $4cec: $e6 $e7
    add sp, -$17                                  ; $4cee: $e8 $e9
    ld [$f3f2], a                                 ; $4cf0: $ea $f2 $f3

jr_085_4cf3:
    db $ed                                        ; $4cf3: $ed
    push af                                       ; $4cf4: $f5
    or $f7                                        ; $4cf5: $f6 $f7
    ld b, $05                                     ; $4cf7: $06 $05
    ld b, $06                                     ; $4cf9: $06 $06
    dec b                                         ; $4cfb: $05
    ld b, $06                                     ; $4cfc: $06 $06
    dec b                                         ; $4cfe: $05
    ld b, $06                                     ; $4cff: $06 $06
    dec b                                         ; $4d01: $05
    ld b, $06                                     ; $4d02: $06 $06
    dec b                                         ; $4d04: $05
    ld b, $06                                     ; $4d05: $06 $06
    ld a, h                                       ; $4d07: $7c
    ld a, l                                       ; $4d08: $7d
    ld a, [hl]                                    ; $4d09: $7e
    ld a, a                                       ; $4d0a: $7f
    add b                                         ; $4d0b: $80
    add c                                         ; $4d0c: $81
    add d                                         ; $4d0d: $82
    add e                                         ; $4d0e: $83
    add h                                         ; $4d0f: $84
    add l                                         ; $4d10: $85
    add [hl]                                      ; $4d11: $86
    add a                                         ; $4d12: $87

jr_085_4d13:
    adc b                                         ; $4d13: $88
    adc c                                         ; $4d14: $89
    adc d                                         ; $4d15: $8a
    adc e                                         ; $4d16: $8b
    ld bc, $0101                                  ; $4d17: $01 $01 $01
    ld bc, $0909                                  ; $4d1a: $01 $09 $09
    add hl, bc                                    ; $4d1d: $09
    add hl, bc                                    ; $4d1e: $09
    add hl, bc                                    ; $4d1f: $09
    add hl, bc                                    ; $4d20: $09
    add hl, bc                                    ; $4d21: $09
    add hl, bc                                    ; $4d22: $09
    add hl, bc                                    ; $4d23: $09
    add hl, bc                                    ; $4d24: $09
    add hl, bc                                    ; $4d25: $09
    add hl, bc                                    ; $4d26: $09
    db $fd                                        ; $4d27: $fd
    ld c, $0f                                     ; $4d28: $0e $0f
    db $10                                        ; $4d2a: $10
    ld bc, $1312                                  ; $4d2b: $01 $12 $13
    inc d                                         ; $4d2e: $14
    dec b                                         ; $4d2f: $05
    ld b, $07                                     ; $4d30: $06 $07
    ld [$0a09], sp                                ; $4d32: $08 $09 $0a
    dec bc                                        ; $4d35: $0b
    inc c                                         ; $4d36: $0c
    dec b                                         ; $4d37: $05
    ld b, $06                                     ; $4d38: $06 $06
    ld b, $05                                     ; $4d3a: $06 $05
    ld b, $05                                     ; $4d3c: $06 $05
    dec b                                         ; $4d3e: $05
    ld b, $05                                     ; $4d3f: $06 $05
    dec b                                         ; $4d41: $05
    dec b                                         ; $4d42: $05
    dec b                                         ; $4d43: $05
    ld b, $05                                     ; $4d44: $06 $05
    dec b                                         ; $4d46: $05
    db $fd                                        ; $4d47: $fd
    ld c, $0f                                     ; $4d48: $0e $0f
    db $10                                        ; $4d4a: $10
    ld bc, $1312                                  ; $4d4b: $01 $12 $13
    inc d                                         ; $4d4e: $14
    dec b                                         ; $4d4f: $05
    ld b, $07                                     ; $4d50: $06 $07
    ld [$0a09], sp                                ; $4d52: $08 $09 $0a
    dec bc                                        ; $4d55: $0b
    inc c                                         ; $4d56: $0c
    rlca                                          ; $4d57: $07
    rlca                                          ; $4d58: $07
    rlca                                          ; $4d59: $07
    rlca                                          ; $4d5a: $07
    ld b, $06                                     ; $4d5b: $06 $06
    ld b, $05                                     ; $4d5d: $06 $05
    dec b                                         ; $4d5f: $05
    ld b, $05                                     ; $4d60: $06 $05
    dec b                                         ; $4d62: $05
    ld b, $05                                     ; $4d63: $06 $05
    ld b, $06                                     ; $4d65: $06 $06
    db $ed                                        ; $4d67: $ed
    push af                                       ; $4d68: $f5
    or $f7                                        ; $4d69: $f6 $f7
    ld a, b                                       ; $4d6b: $78
    ld a, c                                       ; $4d6c: $79
    ld a, d                                       ; $4d6d: $7a
    ld a, e                                       ; $4d6e: $7b
    ld a, h                                       ; $4d6f: $7c
    ld a, l                                       ; $4d70: $7d
    ld a, [hl]                                    ; $4d71: $7e
    ld a, a                                       ; $4d72: $7f
    add b                                         ; $4d73: $80
    add c                                         ; $4d74: $81
    add d                                         ; $4d75: $82
    add e                                         ; $4d76: $83
    rlca                                          ; $4d77: $07
    rlca                                          ; $4d78: $07
    rlca                                          ; $4d79: $07
    rlca                                          ; $4d7a: $07
    rlca                                          ; $4d7b: $07
    rlca                                          ; $4d7c: $07
    rlca                                          ; $4d7d: $07
    rlca                                          ; $4d7e: $07
    rlca                                          ; $4d7f: $07
    rlca                                          ; $4d80: $07
    rlca                                          ; $4d81: $07
    rlca                                          ; $4d82: $07
    rrca                                          ; $4d83: $0f
    rrca                                          ; $4d84: $0f
    rrca                                          ; $4d85: $0f
    rrca                                          ; $4d86: $0f
    db $ed                                        ; $4d87: $ed
    push af                                       ; $4d88: $f5
    or $f7                                        ; $4d89: $f6 $f7
    db $fd                                        ; $4d8b: $fd
    ld c, $0f                                     ; $4d8c: $0e $0f
    db $10                                        ; $4d8e: $10
    ld bc, $1312                                  ; $4d8f: $01 $12 $13
    inc d                                         ; $4d92: $14
    dec b                                         ; $4d93: $05
    ld b, $07                                     ; $4d94: $06 $07
    ld [$0707], sp                                ; $4d96: $08 $07 $07
    rlca                                          ; $4d99: $07
    rlca                                          ; $4d9a: $07
    rlca                                          ; $4d9b: $07
    rlca                                          ; $4d9c: $07
    rlca                                          ; $4d9d: $07
    rlca                                          ; $4d9e: $07
    rlca                                          ; $4d9f: $07
    rlca                                          ; $4da0: $07
    rlca                                          ; $4da1: $07
    rlca                                          ; $4da2: $07
    rlca                                          ; $4da3: $07
    rlca                                          ; $4da4: $07
    rlca                                          ; $4da5: $07
    rlca                                          ; $4da6: $07
    db $ed                                        ; $4da7: $ed
    push af                                       ; $4da8: $f5
    jr nc, jr_085_4dee                            ; $4da9: $30 $43

    db $fd                                        ; $4dab: $fd
    ld c, $44                                     ; $4dac: $0e $44
    ld h, e                                       ; $4dae: $63
    ld bc, $4512                                  ; $4daf: $01 $12 $45
    ld h, h                                       ; $4db2: $64
    dec b                                         ; $4db3: $05
    ld b, $46                                     ; $4db4: $06 $46
    ld h, l                                       ; $4db6: $65
    rlca                                          ; $4db7: $07
    rlca                                          ; $4db8: $07
    rlca                                          ; $4db9: $07
    rlca                                          ; $4dba: $07
    rlca                                          ; $4dbb: $07
    rlca                                          ; $4dbc: $07
    rlca                                          ; $4dbd: $07
    rlca                                          ; $4dbe: $07
    rlca                                          ; $4dbf: $07
    rlca                                          ; $4dc0: $07
    rlca                                          ; $4dc1: $07
    rlca                                          ; $4dc2: $07
    rlca                                          ; $4dc3: $07
    rlca                                          ; $4dc4: $07
    rlca                                          ; $4dc5: $07
    rlca                                          ; $4dc6: $07
    add h                                         ; $4dc7: $84
    add l                                         ; $4dc8: $85
    add [hl]                                      ; $4dc9: $86
    add a                                         ; $4dca: $87
    adc b                                         ; $4dcb: $88
    adc c                                         ; $4dcc: $89
    adc d                                         ; $4dcd: $8a
    adc e                                         ; $4dce: $8b
    inc hl                                        ; $4dcf: $23
    inc h                                         ; $4dd0: $24
    dec h                                         ; $4dd1: $25
    ld h, $27                                     ; $4dd2: $26 $27
    jr z, jr_085_4dff                             ; $4dd4: $28 $29

    ld a, [hl+]                                   ; $4dd6: $2a
    rrca                                          ; $4dd7: $0f
    rrca                                          ; $4dd8: $0f
    rrca                                          ; $4dd9: $0f
    rrca                                          ; $4dda: $0f
    rrca                                          ; $4ddb: $0f
    rrca                                          ; $4ddc: $0f
    rrca                                          ; $4ddd: $0f
    rrca                                          ; $4dde: $0f
    rlca                                          ; $4ddf: $07
    rlca                                          ; $4de0: $07
    rlca                                          ; $4de1: $07
    rlca                                          ; $4de2: $07
    rlca                                          ; $4de3: $07
    rlca                                          ; $4de4: $07
    rlca                                          ; $4de5: $07
    rlca                                          ; $4de6: $07
    add hl, bc                                    ; $4de7: $09
    ld a, [bc]                                    ; $4de8: $0a
    dec bc                                        ; $4de9: $0b
    inc c                                         ; $4dea: $0c
    rra                                           ; $4deb: $1f
    jr nz, jr_085_4e0f                            ; $4dec: $20 $21

jr_085_4dee:
    ld [hl+], a                                   ; $4dee: $22
    inc hl                                        ; $4def: $23
    inc h                                         ; $4df0: $24
    dec h                                         ; $4df1: $25
    ld h, $27                                     ; $4df2: $26 $27
    jr z, jr_085_4e1f                             ; $4df4: $28 $29

    ld a, [hl+]                                   ; $4df6: $2a
    rlca                                          ; $4df7: $07
    rlca                                          ; $4df8: $07
    rlca                                          ; $4df9: $07
    rlca                                          ; $4dfa: $07
    rlca                                          ; $4dfb: $07
    rlca                                          ; $4dfc: $07
    rlca                                          ; $4dfd: $07
    rlca                                          ; $4dfe: $07

jr_085_4dff:
    rlca                                          ; $4dff: $07
    rlca                                          ; $4e00: $07
    rlca                                          ; $4e01: $07
    rlca                                          ; $4e02: $07
    rlca                                          ; $4e03: $07
    rlca                                          ; $4e04: $07
    rlca                                          ; $4e05: $07
    rlca                                          ; $4e06: $07
    add hl, bc                                    ; $4e07: $09
    ld a, [bc]                                    ; $4e08: $0a
    dec bc                                        ; $4e09: $0b
    inc c                                         ; $4e0a: $0c
    rra                                           ; $4e0b: $1f
    jr nz, jr_085_4e2f                            ; $4e0c: $20 $21

    ld [hl+], a                                   ; $4e0e: $22

jr_085_4e0f:
    inc hl                                        ; $4e0f: $23
    inc h                                         ; $4e10: $24
    dec d                                         ; $4e11: $15
    dec d                                         ; $4e12: $15
    daa                                           ; $4e13: $27
    jr z, jr_085_4e2c                             ; $4e14: $28 $16

    ld d, $07                                     ; $4e16: $16 $07
    rlca                                          ; $4e18: $07
    rlca                                          ; $4e19: $07
    rlca                                          ; $4e1a: $07
    rlca                                          ; $4e1b: $07
    rlca                                          ; $4e1c: $07
    rlca                                          ; $4e1d: $07
    rlca                                          ; $4e1e: $07

jr_085_4e1f:
    rlca                                          ; $4e1f: $07
    rlca                                          ; $4e20: $07
    rlca                                          ; $4e21: $07
    daa                                           ; $4e22: $27
    rlca                                          ; $4e23: $07
    rlca                                          ; $4e24: $07
    rlca                                          ; $4e25: $07
    daa                                           ; $4e26: $27
    ld a, b                                       ; $4e27: $78
    ld a, c                                       ; $4e28: $79
    ld a, d                                       ; $4e29: $7a
    ld a, e                                       ; $4e2a: $7b
    ld a, h                                       ; $4e2b: $7c

jr_085_4e2c:
    ld a, l                                       ; $4e2c: $7d
    ld a, [hl]                                    ; $4e2d: $7e
    ld a, a                                       ; $4e2e: $7f

jr_085_4e2f:
    add b                                         ; $4e2f: $80
    add c                                         ; $4e30: $81
    add d                                         ; $4e31: $82
    add e                                         ; $4e32: $83
    ld [hl-], a                                   ; $4e33: $32
    ld [hl-], a                                   ; $4e34: $32
    ld [hl-], a                                   ; $4e35: $32
    ld [hl-], a                                   ; $4e36: $32
    rlca                                          ; $4e37: $07
    rlca                                          ; $4e38: $07
    rlca                                          ; $4e39: $07
    rlca                                          ; $4e3a: $07
    rlca                                          ; $4e3b: $07
    rlca                                          ; $4e3c: $07
    rlca                                          ; $4e3d: $07
    rlca                                          ; $4e3e: $07
    rrca                                          ; $4e3f: $0f
    rrca                                          ; $4e40: $0f
    rrca                                          ; $4e41: $0f
    rrca                                          ; $4e42: $0f
    rlca                                          ; $4e43: $07
    rlca                                          ; $4e44: $07
    rlca                                          ; $4e45: $07
    rlca                                          ; $4e46: $07
    push hl                                       ; $4e47: $e5
    and $e7                                       ; $4e48: $e6 $e7
    add sp, -$17                                  ; $4e4a: $e8 $e9
    ld [$f3f2], a                                 ; $4e4c: $ea $f2 $f3
    db $ed                                        ; $4e4f: $ed
    push af                                       ; $4e50: $f5
    or $f7                                        ; $4e51: $f6 $f7
    ld [hl-], a                                   ; $4e53: $32
    ld [hl-], a                                   ; $4e54: $32
    ld [hl-], a                                   ; $4e55: $32
    ld [hl-], a                                   ; $4e56: $32
    rlca                                          ; $4e57: $07
    rlca                                          ; $4e58: $07
    rlca                                          ; $4e59: $07
    rlca                                          ; $4e5a: $07
    rlca                                          ; $4e5b: $07
    rlca                                          ; $4e5c: $07
    rlca                                          ; $4e5d: $07
    rlca                                          ; $4e5e: $07
    rlca                                          ; $4e5f: $07
    rlca                                          ; $4e60: $07
    rlca                                          ; $4e61: $07
    rlca                                          ; $4e62: $07
    rlca                                          ; $4e63: $07
    rlca                                          ; $4e64: $07
    rlca                                          ; $4e65: $07
    rlca                                          ; $4e66: $07
    push hl                                       ; $4e67: $e5
    and $16                                       ; $4e68: $e6 $16
    ld d, $e9                                     ; $4e6a: $16 $e9
    ld [$1616], a                                 ; $4e6c: $ea $16 $16
    db $ed                                        ; $4e6f: $ed
    push af                                       ; $4e70: $f5
    ld d, $16                                     ; $4e71: $16 $16
    ld [hl-], a                                   ; $4e73: $32
    ld [hl-], a                                   ; $4e74: $32
    ld sp, $0716                                  ; $4e75: $31 $16 $07
    rlca                                          ; $4e78: $07
    rlca                                          ; $4e79: $07
    daa                                           ; $4e7a: $27
    rlca                                          ; $4e7b: $07
    rlca                                          ; $4e7c: $07
    rlca                                          ; $4e7d: $07
    daa                                           ; $4e7e: $27
    rlca                                          ; $4e7f: $07
    rlca                                          ; $4e80: $07
    rlca                                          ; $4e81: $07
    daa                                           ; $4e82: $27
    rlca                                          ; $4e83: $07
    rlca                                          ; $4e84: $07
    daa                                           ; $4e85: $27
    daa                                           ; $4e86: $27
    inc sp                                        ; $4e87: $33
    inc sp                                        ; $4e88: $33
    inc sp                                        ; $4e89: $33
    inc sp                                        ; $4e8a: $33
    dec [hl]                                      ; $4e8b: $35
    ld [hl], $3a                                  ; $4e8c: $36 $3a
    dec sp                                        ; $4e8e: $3b
    jr c, jr_085_4eca                             ; $4e8f: $38 $39

    ld a, $3f                                     ; $4e91: $3e $3f
    ld c, c                                       ; $4e93: $49
    ld c, d                                       ; $4e94: $4a
    ld c, e                                       ; $4e95: $4b
    ld d, d                                       ; $4e96: $52
    rlca                                          ; $4e97: $07
    rlca                                          ; $4e98: $07
    rlca                                          ; $4e99: $07
    rlca                                          ; $4e9a: $07
    rlca                                          ; $4e9b: $07
    rlca                                          ; $4e9c: $07
    rlca                                          ; $4e9d: $07
    rlca                                          ; $4e9e: $07
    rlca                                          ; $4e9f: $07
    rlca                                          ; $4ea0: $07
    rlca                                          ; $4ea1: $07
    rlca                                          ; $4ea2: $07
    rlca                                          ; $4ea3: $07
    rlca                                          ; $4ea4: $07
    rlca                                          ; $4ea5: $07
    rlca                                          ; $4ea6: $07
    inc sp                                        ; $4ea7: $33
    inc sp                                        ; $4ea8: $33
    inc sp                                        ; $4ea9: $33
    inc sp                                        ; $4eaa: $33
    inc a                                         ; $4eab: $3c
    dec a                                         ; $4eac: $3d
    dec [hl]                                      ; $4ead: $35
    ld [hl], $40                                  ; $4eae: $36 $40
    ld b, c                                       ; $4eb0: $41
    jr c, jr_085_4eec                             ; $4eb1: $38 $39

    ld d, e                                       ; $4eb3: $53
    ld d, h                                       ; $4eb4: $54
    ld c, c                                       ; $4eb5: $49
    ld c, d                                       ; $4eb6: $4a
    rlca                                          ; $4eb7: $07
    rlca                                          ; $4eb8: $07
    rlca                                          ; $4eb9: $07
    rlca                                          ; $4eba: $07
    rlca                                          ; $4ebb: $07
    rlca                                          ; $4ebc: $07
    rlca                                          ; $4ebd: $07
    rlca                                          ; $4ebe: $07
    rlca                                          ; $4ebf: $07
    rlca                                          ; $4ec0: $07
    rlca                                          ; $4ec1: $07
    rlca                                          ; $4ec2: $07
    rlca                                          ; $4ec3: $07
    rlca                                          ; $4ec4: $07
    rlca                                          ; $4ec5: $07
    rlca                                          ; $4ec6: $07
    inc sp                                        ; $4ec7: $33
    inc sp                                        ; $4ec8: $33
    inc sp                                        ; $4ec9: $33

jr_085_4eca:
    ld l, $3a                                     ; $4eca: $2e $3a
    dec sp                                        ; $4ecc: $3b
    inc a                                         ; $4ecd: $3c
    ld e, e                                       ; $4ece: $5b
    ld a, $3f                                     ; $4ecf: $3e $3f
    ld b, b                                       ; $4ed1: $40
    ld e, h                                       ; $4ed2: $5c
    ld c, e                                       ; $4ed3: $4b
    ld d, d                                       ; $4ed4: $52
    ld d, e                                       ; $4ed5: $53
    ld e, [hl]                                    ; $4ed6: $5e
    rlca                                          ; $4ed7: $07
    rlca                                          ; $4ed8: $07
    rlca                                          ; $4ed9: $07
    daa                                           ; $4eda: $27
    rlca                                          ; $4edb: $07
    rlca                                          ; $4edc: $07
    rlca                                          ; $4edd: $07
    rlca                                          ; $4ede: $07
    rlca                                          ; $4edf: $07
    rlca                                          ; $4ee0: $07
    rlca                                          ; $4ee1: $07
    rlca                                          ; $4ee2: $07
    rlca                                          ; $4ee3: $07
    rlca                                          ; $4ee4: $07
    rlca                                          ; $4ee5: $07
    rlca                                          ; $4ee6: $07
    db $ed                                        ; $4ee7: $ed
    push af                                       ; $4ee8: $f5
    or $16                                        ; $4ee9: $f6 $16
    db $fd                                        ; $4eeb: $fd

jr_085_4eec:
    ld c, $0f                                     ; $4eec: $0e $0f
    ld d, $01                                     ; $4eee: $16 $01
    ld [de], a                                    ; $4ef0: $12
    inc de                                        ; $4ef1: $13
    ld l, $05                                     ; $4ef2: $2e $05
    ld b, $07                                     ; $4ef4: $06 $07
    inc [hl]                                      ; $4ef6: $34
    rlca                                          ; $4ef7: $07
    rlca                                          ; $4ef8: $07
    rlca                                          ; $4ef9: $07
    rlca                                          ; $4efa: $07
    rlca                                          ; $4efb: $07
    rlca                                          ; $4efc: $07
    rlca                                          ; $4efd: $07
    rlca                                          ; $4efe: $07
    rlca                                          ; $4eff: $07
    rlca                                          ; $4f00: $07
    rlca                                          ; $4f01: $07
    rlca                                          ; $4f02: $07
    rlca                                          ; $4f03: $07
    rlca                                          ; $4f04: $07
    rlca                                          ; $4f05: $07
    rlca                                          ; $4f06: $07
    ld d, $f5                                     ; $4f07: $16 $f5
    or $f7                                        ; $4f09: $f6 $f7
    ld d, $0e                                     ; $4f0b: $16 $0e
    rrca                                          ; $4f0d: $0f
    db $10                                        ; $4f0e: $10
    ld l, $12                                     ; $4f0f: $2e $12
    inc de                                        ; $4f11: $13
    inc d                                         ; $4f12: $14
    ld e, e                                       ; $4f13: $5b
    ld b, $07                                     ; $4f14: $06 $07
    ld [$0727], sp                                ; $4f16: $08 $27 $07
    rlca                                          ; $4f19: $07
    rlca                                          ; $4f1a: $07
    daa                                           ; $4f1b: $27
    rlca                                          ; $4f1c: $07
    rlca                                          ; $4f1d: $07
    rlca                                          ; $4f1e: $07
    daa                                           ; $4f1f: $27
    rlca                                          ; $4f20: $07
    rlca                                          ; $4f21: $07
    rlca                                          ; $4f22: $07
    rlca                                          ; $4f23: $07
    rlca                                          ; $4f24: $07
    rlca                                          ; $4f25: $07
    rlca                                          ; $4f26: $07
    db $ed                                        ; $4f27: $ed
    push af                                       ; $4f28: $f5
    ld d, $16                                     ; $4f29: $16 $16
    db $fd                                        ; $4f2b: $fd
    ld c, $16                                     ; $4f2c: $0e $16
    ld d, $01                                     ; $4f2e: $16 $01
    ld [de], a                                    ; $4f30: $12
    ld l, $2e                                     ; $4f31: $2e $2e
    dec b                                         ; $4f33: $05
    ld b, $2f                                     ; $4f34: $06 $2f
    ld b, d                                       ; $4f36: $42
    rlca                                          ; $4f37: $07
    rlca                                          ; $4f38: $07
    rlca                                          ; $4f39: $07
    daa                                           ; $4f3a: $27
    rlca                                          ; $4f3b: $07
    rlca                                          ; $4f3c: $07
    rlca                                          ; $4f3d: $07
    daa                                           ; $4f3e: $27
    rlca                                          ; $4f3f: $07
    rlca                                          ; $4f40: $07
    rlca                                          ; $4f41: $07
    daa                                           ; $4f42: $27
    rlca                                          ; $4f43: $07
    rlca                                          ; $4f44: $07
    rlca                                          ; $4f45: $07
    rlca                                          ; $4f46: $07
    db $ed                                        ; $4f47: $ed
    push af                                       ; $4f48: $f5
    halt                                          ; $4f49: $76
    ld b, [hl]                                    ; $4f4a: $46
    db $fd                                        ; $4f4b: $fd
    ld c, $77                                     ; $4f4c: $0e $77
    ld h, $01                                     ; $4f4e: $26 $01
    ld [de], a                                    ; $4f50: $12
    halt                                          ; $4f51: $76
    ld a, [hl+]                                   ; $4f52: $2a
    dec b                                         ; $4f53: $05
    ld b, $77                                     ; $4f54: $06 $77
    dec d                                         ; $4f56: $15
    rlca                                          ; $4f57: $07
    rlca                                          ; $4f58: $07
    ld [bc], a                                    ; $4f59: $02
    inc bc                                        ; $4f5a: $03
    rlca                                          ; $4f5b: $07
    rlca                                          ; $4f5c: $07
    ld [bc], a                                    ; $4f5d: $02
    rlca                                          ; $4f5e: $07
    rlca                                          ; $4f5f: $07
    rlca                                          ; $4f60: $07
    ld [bc], a                                    ; $4f61: $02
    rlca                                          ; $4f62: $07
    rlca                                          ; $4f63: $07
    rlca                                          ; $4f64: $07
    ld [bc], a                                    ; $4f65: $02
    add d                                         ; $4f66: $82
    add hl, bc                                    ; $4f67: $09
    ld a, [bc]                                    ; $4f68: $0a
    dec bc                                        ; $4f69: $0b
    scf                                           ; $4f6a: $37
    rra                                           ; $4f6b: $1f
    jr nz, jr_085_4f8f                            ; $4f6c: $20 $21

    ld e, l                                       ; $4f6e: $5d
    inc hl                                        ; $4f6f: $23
    inc h                                         ; $4f70: $24
    dec h                                         ; $4f71: $25
    ld e, a                                       ; $4f72: $5f
    daa                                           ; $4f73: $27
    jr z, jr_085_4f9f                             ; $4f74: $28 $29

    ld h, c                                       ; $4f76: $61
    rlca                                          ; $4f77: $07
    rlca                                          ; $4f78: $07
    rlca                                          ; $4f79: $07
    rlca                                          ; $4f7a: $07
    rlca                                          ; $4f7b: $07
    rlca                                          ; $4f7c: $07
    rlca                                          ; $4f7d: $07
    rlca                                          ; $4f7e: $07
    rlca                                          ; $4f7f: $07
    rlca                                          ; $4f80: $07
    rlca                                          ; $4f81: $07
    rlca                                          ; $4f82: $07
    rlca                                          ; $4f83: $07
    rlca                                          ; $4f84: $07
    rlca                                          ; $4f85: $07
    rlca                                          ; $4f86: $07
    ld e, h                                       ; $4f87: $5c
    ld a, [bc]                                    ; $4f88: $0a
    dec bc                                        ; $4f89: $0b
    inc c                                         ; $4f8a: $0c
    ld e, [hl]                                    ; $4f8b: $5e
    jr nz, jr_085_4faf                            ; $4f8c: $20 $21

    ld [hl+], a                                   ; $4f8e: $22

jr_085_4f8f:
    ld h, b                                       ; $4f8f: $60
    inc h                                         ; $4f90: $24
    dec h                                         ; $4f91: $25
    ld h, $62                                     ; $4f92: $26 $62
    jr z, jr_085_4fbf                             ; $4f94: $28 $29

    ld a, [hl+]                                   ; $4f96: $2a
    rlca                                          ; $4f97: $07
    rlca                                          ; $4f98: $07
    rlca                                          ; $4f99: $07
    rlca                                          ; $4f9a: $07
    rlca                                          ; $4f9b: $07
    rlca                                          ; $4f9c: $07
    rlca                                          ; $4f9d: $07
    rlca                                          ; $4f9e: $07

jr_085_4f9f:
    rlca                                          ; $4f9f: $07
    rlca                                          ; $4fa0: $07
    rlca                                          ; $4fa1: $07
    rlca                                          ; $4fa2: $07
    rlca                                          ; $4fa3: $07
    rlca                                          ; $4fa4: $07
    rlca                                          ; $4fa5: $07
    rlca                                          ; $4fa6: $07
    add hl, bc                                    ; $4fa7: $09
    ld a, [bc]                                    ; $4fa8: $0a
    jr nc, @+$45                                  ; $4fa9: $30 $43

    rra                                           ; $4fab: $1f
    jr nz, @+$46                                  ; $4fac: $20 $44

    ld h, e                                       ; $4fae: $63

jr_085_4faf:
    inc hl                                        ; $4faf: $23
    inc h                                         ; $4fb0: $24
    ld b, l                                       ; $4fb1: $45
    ld h, h                                       ; $4fb2: $64
    daa                                           ; $4fb3: $27
    jr z, jr_085_4ffc                             ; $4fb4: $28 $46

    ld h, l                                       ; $4fb6: $65
    rlca                                          ; $4fb7: $07
    rlca                                          ; $4fb8: $07
    rlca                                          ; $4fb9: $07
    rlca                                          ; $4fba: $07
    rlca                                          ; $4fbb: $07
    rlca                                          ; $4fbc: $07
    rlca                                          ; $4fbd: $07
    rlca                                          ; $4fbe: $07

jr_085_4fbf:
    rlca                                          ; $4fbf: $07
    rlca                                          ; $4fc0: $07
    rlca                                          ; $4fc1: $07
    rlca                                          ; $4fc2: $07
    rlca                                          ; $4fc3: $07
    rlca                                          ; $4fc4: $07
    rlca                                          ; $4fc5: $07
    rlca                                          ; $4fc6: $07
    add hl, bc                                    ; $4fc7: $09
    ld a, [bc]                                    ; $4fc8: $0a
    halt                                          ; $4fc9: $76
    ld l, $1f                                     ; $4fca: $2e $1f
    jr nz, jr_085_5045                            ; $4fcc: $20 $77

    inc [hl]                                      ; $4fce: $34
    inc hl                                        ; $4fcf: $23
    inc h                                         ; $4fd0: $24
    halt                                          ; $4fd1: $76
    scf                                           ; $4fd2: $37
    daa                                           ; $4fd3: $27
    jr z, @+$79                                   ; $4fd4: $28 $77

    ld e, l                                       ; $4fd6: $5d
    rlca                                          ; $4fd7: $07
    rlca                                          ; $4fd8: $07
    ld [bc], a                                    ; $4fd9: $02
    add d                                         ; $4fda: $82
    rlca                                          ; $4fdb: $07
    rlca                                          ; $4fdc: $07
    ld [bc], a                                    ; $4fdd: $02
    add h                                         ; $4fde: $84
    rlca                                          ; $4fdf: $07
    rlca                                          ; $4fe0: $07
    ld [bc], a                                    ; $4fe1: $02
    inc bc                                        ; $4fe2: $03
    rlca                                          ; $4fe3: $07
    rlca                                          ; $4fe4: $07
    ld [bc], a                                    ; $4fe5: $02
    inc bc                                        ; $4fe6: $03
    push hl                                       ; $4fe7: $e5
    and $e7                                       ; $4fe8: $e6 $e7
    add sp, -$17                                  ; $4fea: $e8 $e9
    ld [$f3f2], a                                 ; $4fec: $ea $f2 $f3
    db $ed                                        ; $4fef: $ed
    push af                                       ; $4ff0: $f5
    or $15                                        ; $4ff1: $f6 $15
    db $fd                                        ; $4ff3: $fd
    ld c, $0f                                     ; $4ff4: $0e $0f
    ld d, $07                                     ; $4ff6: $16 $07
    rlca                                          ; $4ff8: $07
    rlca                                          ; $4ff9: $07
    rlca                                          ; $4ffa: $07
    rlca                                          ; $4ffb: $07

jr_085_4ffc:
    rlca                                          ; $4ffc: $07
    rlca                                          ; $4ffd: $07
    rlca                                          ; $4ffe: $07
    rlca                                          ; $4fff: $07
    rlca                                          ; $5000: $07
    rlca                                          ; $5001: $07
    rlca                                          ; $5002: $07
    rlca                                          ; $5003: $07
    rlca                                          ; $5004: $07
    rlca                                          ; $5005: $07
    rlca                                          ; $5006: $07
    push hl                                       ; $5007: $e5
    and $e7                                       ; $5008: $e6 $e7
    add sp, -$17                                  ; $500a: $e8 $e9
    ld [$f3f2], a                                 ; $500c: $ea $f2 $f3
    ld [hl-], a                                   ; $500f: $32
    ld [hl-], a                                   ; $5010: $32
    ld [hl-], a                                   ; $5011: $32
    ld [hl-], a                                   ; $5012: $32
    ld b, a                                       ; $5013: $47
    inc sp                                        ; $5014: $33
    inc sp                                        ; $5015: $33
    inc sp                                        ; $5016: $33
    rlca                                          ; $5017: $07
    rlca                                          ; $5018: $07
    rlca                                          ; $5019: $07
    rlca                                          ; $501a: $07
    rlca                                          ; $501b: $07
    rlca                                          ; $501c: $07
    rlca                                          ; $501d: $07
    rlca                                          ; $501e: $07
    rlca                                          ; $501f: $07
    rlca                                          ; $5020: $07
    rlca                                          ; $5021: $07
    rlca                                          ; $5022: $07
    rlca                                          ; $5023: $07
    rlca                                          ; $5024: $07
    rlca                                          ; $5025: $07
    rlca                                          ; $5026: $07
    push hl                                       ; $5027: $e5
    and $e7                                       ; $5028: $e6 $e7
    add sp, -$17                                  ; $502a: $e8 $e9
    ld [$f3f2], a                                 ; $502c: $ea $f2 $f3
    ld [hl-], a                                   ; $502f: $32
    ld [hl-], a                                   ; $5030: $32
    ld [hl-], a                                   ; $5031: $32
    ld [hl-], a                                   ; $5032: $32
    inc sp                                        ; $5033: $33
    inc sp                                        ; $5034: $33
    inc sp                                        ; $5035: $33
    inc sp                                        ; $5036: $33
    rlca                                          ; $5037: $07
    rlca                                          ; $5038: $07
    rlca                                          ; $5039: $07
    rlca                                          ; $503a: $07
    rlca                                          ; $503b: $07
    rlca                                          ; $503c: $07
    rlca                                          ; $503d: $07
    rlca                                          ; $503e: $07
    rlca                                          ; $503f: $07
    rlca                                          ; $5040: $07
    rlca                                          ; $5041: $07
    rlca                                          ; $5042: $07
    rlca                                          ; $5043: $07
    rlca                                          ; $5044: $07

jr_085_5045:
    rlca                                          ; $5045: $07
    rlca                                          ; $5046: $07
    push hl                                       ; $5047: $e5
    and $76                                       ; $5048: $e6 $76
    ld e, a                                       ; $504a: $5f
    jp hl                                         ; $504b: $e9


    ld [$6177], a                                 ; $504c: $ea $77 $61
    ld [hl-], a                                   ; $504f: $32
    ld [hl-], a                                   ; $5050: $32
    halt                                          ; $5051: $76
    ld [hl+], a                                   ; $5052: $22
    inc sp                                        ; $5053: $33
    ld b, a                                       ; $5054: $47
    ld [hl], a                                    ; $5055: $77
    ld h, $07                                     ; $5056: $26 $07
    rlca                                          ; $5058: $07
    ld [bc], a                                    ; $5059: $02
    inc bc                                        ; $505a: $03
    rlca                                          ; $505b: $07
    rlca                                          ; $505c: $07
    ld [bc], a                                    ; $505d: $02
    inc bc                                        ; $505e: $03
    rlca                                          ; $505f: $07
    rlca                                          ; $5060: $07
    ld [bc], a                                    ; $5061: $02
    rlca                                          ; $5062: $07
    rlca                                          ; $5063: $07
    daa                                           ; $5064: $27
    ld [bc], a                                    ; $5065: $02
    rlca                                          ; $5066: $07
    ld bc, $1312                                  ; $5067: $01 $12 $13
    ld d, $05                                     ; $506a: $16 $05
    ld b, $07                                     ; $506c: $06 $07
    ld d, $09                                     ; $506e: $16 $09
    ld a, [bc]                                    ; $5070: $0a
    dec bc                                        ; $5071: $0b
    ld d, $1f                                     ; $5072: $16 $1f
    jr nz, jr_085_5097                            ; $5074: $20 $21

    ld d, $07                                     ; $5076: $16 $07
    rlca                                          ; $5078: $07
    rlca                                          ; $5079: $07
    rlca                                          ; $507a: $07
    rlca                                          ; $507b: $07
    rlca                                          ; $507c: $07
    rlca                                          ; $507d: $07
    rlca                                          ; $507e: $07
    rlca                                          ; $507f: $07
    rlca                                          ; $5080: $07
    rlca                                          ; $5081: $07
    rlca                                          ; $5082: $07
    rlca                                          ; $5083: $07
    rlca                                          ; $5084: $07
    rlca                                          ; $5085: $07
    rlca                                          ; $5086: $07
    ld d, $35                                     ; $5087: $16 $35
    ld [hl], $3a                                  ; $5089: $36 $3a
    ld d, $38                                     ; $508b: $16 $38
    add hl, sp                                    ; $508d: $39
    ld a, $16                                     ; $508e: $3e $16
    ld c, c                                       ; $5090: $49
    ld c, d                                       ; $5091: $4a
    ld c, e                                       ; $5092: $4b
    ld d, $4c                                     ; $5093: $16 $4c
    ld c, l                                       ; $5095: $4d
    ld c, [hl]                                    ; $5096: $4e

jr_085_5097:
    daa                                           ; $5097: $27
    rlca                                          ; $5098: $07
    rlca                                          ; $5099: $07
    rlca                                          ; $509a: $07
    daa                                           ; $509b: $27
    rlca                                          ; $509c: $07
    rlca                                          ; $509d: $07
    rlca                                          ; $509e: $07
    daa                                           ; $509f: $27
    rlca                                          ; $50a0: $07
    rlca                                          ; $50a1: $07
    rlca                                          ; $50a2: $07
    daa                                           ; $50a3: $27
    rlca                                          ; $50a4: $07
    rlca                                          ; $50a5: $07
    rlca                                          ; $50a6: $07
    dec sp                                        ; $50a7: $3b
    inc a                                         ; $50a8: $3c
    dec a                                         ; $50a9: $3d
    dec [hl]                                      ; $50aa: $35
    ccf                                           ; $50ab: $3f
    ld b, b                                       ; $50ac: $40
    ld b, c                                       ; $50ad: $41
    jr c, @+$54                                   ; $50ae: $38 $52

    ld d, e                                       ; $50b0: $53
    ld d, h                                       ; $50b1: $54
    ld c, c                                       ; $50b2: $49
    ld d, l                                       ; $50b3: $55
    ld d, [hl]                                    ; $50b4: $56
    ld d, a                                       ; $50b5: $57
    ld c, h                                       ; $50b6: $4c
    rlca                                          ; $50b7: $07
    rlca                                          ; $50b8: $07
    rlca                                          ; $50b9: $07
    rlca                                          ; $50ba: $07
    rlca                                          ; $50bb: $07
    rlca                                          ; $50bc: $07
    rlca                                          ; $50bd: $07
    rlca                                          ; $50be: $07
    rlca                                          ; $50bf: $07
    rlca                                          ; $50c0: $07
    rlca                                          ; $50c1: $07
    rlca                                          ; $50c2: $07
    rlca                                          ; $50c3: $07
    rlca                                          ; $50c4: $07
    rlca                                          ; $50c5: $07
    rlca                                          ; $50c6: $07
    ld [hl], $16                                  ; $50c7: $36 $16
    halt                                          ; $50c9: $76
    dec d                                         ; $50ca: $15
    add hl, sp                                    ; $50cb: $39
    ld d, $77                                     ; $50cc: $16 $77
    ld l, $4a                                     ; $50ce: $2e $4a
    ld d, $76                                     ; $50d0: $16 $76
    cpl                                           ; $50d2: $2f
    ld c, l                                       ; $50d3: $4d
    ld d, $77                                     ; $50d4: $16 $77
    jr nc, jr_085_50df                            ; $50d6: $30 $07

    rlca                                          ; $50d8: $07
    ld [bc], a                                    ; $50d9: $02
    add d                                         ; $50da: $82
    rlca                                          ; $50db: $07
    rlca                                          ; $50dc: $07
    ld [bc], a                                    ; $50dd: $02
    add d                                         ; $50de: $82

jr_085_50df:
    rlca                                          ; $50df: $07
    rlca                                          ; $50e0: $07
    ld [bc], a                                    ; $50e1: $02
    add h                                         ; $50e2: $84
    rlca                                          ; $50e3: $07
    rlca                                          ; $50e4: $07
    ld [bc], a                                    ; $50e5: $02
    inc bc                                        ; $50e6: $03
    ld e, d                                       ; $50e7: $5a
    ld c, a                                       ; $50e8: $4f
    ld d, b                                       ; $50e9: $50
    ld d, c                                       ; $50ea: $51
    inc hl                                        ; $50eb: $23
    inc h                                         ; $50ec: $24
    dec h                                         ; $50ed: $25
    ld h, $27                                     ; $50ee: $26 $27
    jr z, jr_085_511b                             ; $50f0: $28 $29

    ld a, [hl+]                                   ; $50f2: $2a
    ld [hl-], a                                   ; $50f3: $32
    ld [hl-], a                                   ; $50f4: $32
    ld [hl-], a                                   ; $50f5: $32
    ld [hl-], a                                   ; $50f6: $32
    inc bc                                        ; $50f7: $03
    inc bc                                        ; $50f8: $03
    inc b                                         ; $50f9: $04
    inc b                                         ; $50fa: $04
    rlca                                          ; $50fb: $07
    rlca                                          ; $50fc: $07
    rlca                                          ; $50fd: $07
    rlca                                          ; $50fe: $07
    ld b, $05                                     ; $50ff: $06 $05
    ld b, $05                                     ; $5101: $06 $05
    add d                                         ; $5103: $82
    add d                                         ; $5104: $82
    add d                                         ; $5105: $82
    add d                                         ; $5106: $82
    ld e, b                                       ; $5107: $58
    ld e, c                                       ; $5108: $59
    ld e, d                                       ; $5109: $5a
    ld h, d                                       ; $510a: $62
    inc hl                                        ; $510b: $23
    inc h                                         ; $510c: $24
    dec h                                         ; $510d: $25
    ld h, $27                                     ; $510e: $26 $27
    jr z, jr_085_513b                             ; $5110: $28 $29

    ld a, [hl+]                                   ; $5112: $2a
    ld [hl-], a                                   ; $5113: $32
    ld [hl-], a                                   ; $5114: $32
    ld [hl-], a                                   ; $5115: $32
    dec d                                         ; $5116: $15
    inc b                                         ; $5117: $04
    inc bc                                        ; $5118: $03
    inc b                                         ; $5119: $04
    inc b                                         ; $511a: $04

jr_085_511b:
    rlca                                          ; $511b: $07
    rlca                                          ; $511c: $07
    rlca                                          ; $511d: $07
    rlca                                          ; $511e: $07
    ld b, $05                                     ; $511f: $06 $05
    ld b, $05                                     ; $5121: $06 $05
    add d                                         ; $5123: $82
    add d                                         ; $5124: $82
    add d                                         ; $5125: $82
    and d                                         ; $5126: $a2
    rra                                           ; $5127: $1f
    jr nz, jr_085_514b                            ; $5128: $20 $21

    ld [hl+], a                                   ; $512a: $22
    inc hl                                        ; $512b: $23
    inc h                                         ; $512c: $24
    dec h                                         ; $512d: $25
    ld h, $27                                     ; $512e: $26 $27
    jr z, @+$2b                                   ; $5130: $28 $29

    ld a, [hl+]                                   ; $5132: $2a
    push hl                                       ; $5133: $e5
    and $e7                                       ; $5134: $e6 $e7
    add sp, $07                                   ; $5136: $e8 $07
    ld b, $06                                     ; $5138: $06 $06
    dec b                                         ; $513a: $05

jr_085_513b:
    rlca                                          ; $513b: $07
    ld b, $06                                     ; $513c: $06 $06
    ld b, $05                                     ; $513e: $06 $05
    ld b, $06                                     ; $5140: $06 $06
    dec b                                         ; $5142: $05
    ld b, $06                                     ; $5143: $06 $06
    dec b                                         ; $5145: $05
    ld b, $1f                                     ; $5146: $06 $1f
    ld d, $16                                     ; $5148: $16 $16
    ld [hl+], a                                   ; $514a: $22

jr_085_514b:
    inc hl                                        ; $514b: $23
    ld d, $16                                     ; $514c: $16 $16
    ld h, $27                                     ; $514e: $26 $27

Jump_085_5150:
    ld d, $16                                     ; $5150: $16 $16
    ld a, [hl+]                                   ; $5152: $2a
    push hl                                       ; $5153: $e5
    ld d, $16                                     ; $5154: $16 $16
    add sp, $06                                   ; $5156: $e8 $06
    add d                                         ; $5158: $82
    and d                                         ; $5159: $a2
    ld b, $05                                     ; $515a: $06 $05
    add d                                         ; $515c: $82
    and d                                         ; $515d: $a2
    rlca                                          ; $515e: $07
    ld b, $82                                     ; $515f: $06 $82
    and d                                         ; $5161: $a2
    rlca                                          ; $5162: $07
    ld b, $82                                     ; $5163: $06 $82
    and d                                         ; $5165: $a2
    rlca                                          ; $5166: $07
    inc sp                                        ; $5167: $33
    inc sp                                        ; $5168: $33
    inc sp                                        ; $5169: $33
    inc sp                                        ; $516a: $33
    dec [hl]                                      ; $516b: $35
    ld [hl], $3a                                  ; $516c: $36 $3a
    dec sp                                        ; $516e: $3b
    jr c, @+$3b                                   ; $516f: $38 $39

    ld a, $3f                                     ; $5171: $3e $3f
    ld c, c                                       ; $5173: $49
    ld c, d                                       ; $5174: $4a
    ld c, e                                       ; $5175: $4b
    ld d, d                                       ; $5176: $52
    add d                                         ; $5177: $82
    add d                                         ; $5178: $82
    add d                                         ; $5179: $82
    add d                                         ; $517a: $82
    add e                                         ; $517b: $83
    add e                                         ; $517c: $83
    add e                                         ; $517d: $83
    add h                                         ; $517e: $84
    inc b                                         ; $517f: $04
    inc b                                         ; $5180: $04
    inc bc                                        ; $5181: $03
    inc bc                                        ; $5182: $03
    inc b                                         ; $5183: $04
    inc b                                         ; $5184: $04
    inc bc                                        ; $5185: $03
    inc bc                                        ; $5186: $03
    inc sp                                        ; $5187: $33
    inc sp                                        ; $5188: $33
    inc sp                                        ; $5189: $33
    ld l, $3c                                     ; $518a: $2e $3c
    dec a                                         ; $518c: $3d
    dec [hl]                                      ; $518d: $35
    ld b, d                                       ; $518e: $42
    ld b, b                                       ; $518f: $40
    ld b, c                                       ; $5190: $41
    jr c, jr_085_51d6                             ; $5191: $38 $43

    ld d, e                                       ; $5193: $53
    ld d, h                                       ; $5194: $54
    ld c, c                                       ; $5195: $49
    ld h, e                                       ; $5196: $63
    add d                                         ; $5197: $82
    add d                                         ; $5198: $82
    add d                                         ; $5199: $82
    and d                                         ; $519a: $a2
    add h                                         ; $519b: $84
    add e                                         ; $519c: $83
    add e                                         ; $519d: $83
    add h                                         ; $519e: $84
    inc b                                         ; $519f: $04
    inc bc                                        ; $51a0: $03
    inc b                                         ; $51a1: $04
    inc bc                                        ; $51a2: $03
    inc b                                         ; $51a3: $04
    inc b                                         ; $51a4: $04
    inc bc                                        ; $51a5: $03
    inc bc                                        ; $51a6: $03
    jp hl                                         ; $51a7: $e9


    ld [$f3f2], a                                 ; $51a8: $ea $f2 $f3
    db $ed                                        ; $51ab: $ed
    push af                                       ; $51ac: $f5
    or $f7                                        ; $51ad: $f6 $f7
    db $fd                                        ; $51af: $fd
    ld c, $0f                                     ; $51b0: $0e $0f
    db $10                                        ; $51b2: $10
    ld bc, $1312                                  ; $51b3: $01 $12 $13
    inc d                                         ; $51b6: $14
    ld b, $06                                     ; $51b7: $06 $06
    ld b, $06                                     ; $51b9: $06 $06
    ld b, $06                                     ; $51bb: $06 $06
    dec b                                         ; $51bd: $05
    ld b, $07                                     ; $51be: $06 $07
    ld b, $05                                     ; $51c0: $06 $05
    ld b, $07                                     ; $51c2: $06 $07
    dec b                                         ; $51c4: $05
    ld b, $06                                     ; $51c5: $06 $06
    jp hl                                         ; $51c7: $e9


    ld d, $16                                     ; $51c8: $16 $16
    di                                            ; $51ca: $f3
    db $ed                                        ; $51cb: $ed
    ld d, $16                                     ; $51cc: $16 $16
    rst $30                                       ; $51ce: $f7
    db $fd                                        ; $51cf: $fd
    ld d, $16                                     ; $51d0: $16 $16
    db $10                                        ; $51d2: $10
    ld bc, $1616                                  ; $51d3: $01 $16 $16

jr_085_51d6:
    inc d                                         ; $51d6: $14
    dec b                                         ; $51d7: $05
    add d                                         ; $51d8: $82
    and d                                         ; $51d9: $a2
    rlca                                          ; $51da: $07
    ld b, $82                                     ; $51db: $06 $82
    and d                                         ; $51dd: $a2
    rlca                                          ; $51de: $07
    ld b, $82                                     ; $51df: $06 $82
    and d                                         ; $51e1: $a2
    rlca                                          ; $51e2: $07
    dec b                                         ; $51e3: $05
    add d                                         ; $51e4: $82
    and d                                         ; $51e5: $a2
    rlca                                          ; $51e6: $07
    ld c, h                                       ; $51e7: $4c
    ld c, l                                       ; $51e8: $4d
    ld c, [hl]                                    ; $51e9: $4e
    ld d, l                                       ; $51ea: $55
    ld c, a                                       ; $51eb: $4f
    ld d, b                                       ; $51ec: $50
    ld d, c                                       ; $51ed: $51
    ld e, b                                       ; $51ee: $58
    rra                                           ; $51ef: $1f
    jr nz, jr_085_5213                            ; $51f0: $20 $21

    ld [hl+], a                                   ; $51f2: $22
    inc hl                                        ; $51f3: $23
    inc h                                         ; $51f4: $24
    dec h                                         ; $51f5: $25
    ld h, $04                                     ; $51f6: $26 $04
    inc bc                                        ; $51f8: $03
    inc bc                                        ; $51f9: $03
    inc bc                                        ; $51fa: $03
    inc b                                         ; $51fb: $04
    inc b                                         ; $51fc: $04
    inc bc                                        ; $51fd: $03
    inc bc                                        ; $51fe: $03
    rlca                                          ; $51ff: $07
    rlca                                          ; $5200: $07
    rlca                                          ; $5201: $07
    rlca                                          ; $5202: $07
    ld b, $06                                     ; $5203: $06 $06
    dec b                                         ; $5205: $05
    ld b, $56                                     ; $5206: $06 $56
    ld d, a                                       ; $5208: $57
    ld c, h                                       ; $5209: $4c
    ld h, h                                       ; $520a: $64
    ld e, c                                       ; $520b: $59
    ld e, d                                       ; $520c: $5a
    ld c, a                                       ; $520d: $4f
    ld h, l                                       ; $520e: $65
    rra                                           ; $520f: $1f
    jr nz, jr_085_5233                            ; $5210: $20 $21

    ld [hl+], a                                   ; $5212: $22

jr_085_5213:
    inc hl                                        ; $5213: $23
    inc h                                         ; $5214: $24
    dec h                                         ; $5215: $25
    ld h, $04                                     ; $5216: $26 $04
    inc bc                                        ; $5218: $03
    inc bc                                        ; $5219: $03
    inc b                                         ; $521a: $04
    inc b                                         ; $521b: $04
    inc bc                                        ; $521c: $03
    inc bc                                        ; $521d: $03
    inc bc                                        ; $521e: $03
    rlca                                          ; $521f: $07
    rlca                                          ; $5220: $07
    rlca                                          ; $5221: $07
    rlca                                          ; $5222: $07
    dec b                                         ; $5223: $05
    dec b                                         ; $5224: $05
    dec b                                         ; $5225: $05
    dec b                                         ; $5226: $05
    dec b                                         ; $5227: $05
    ld b, $07                                     ; $5228: $06 $07
    ld [$0a09], sp                                ; $522a: $08 $09 $0a
    dec bc                                        ; $522d: $0b
    inc c                                         ; $522e: $0c
    rra                                           ; $522f: $1f
    jr nz, @+$23                                  ; $5230: $20 $21

    ld [hl+], a                                   ; $5232: $22

jr_085_5233:
    inc hl                                        ; $5233: $23
    inc h                                         ; $5234: $24
    dec h                                         ; $5235: $25
    ld h, $07                                     ; $5236: $26 $07
    ld b, $06                                     ; $5238: $06 $06
    ld b, $07                                     ; $523a: $06 $07
    ld b, $05                                     ; $523c: $06 $05
    ld b, $07                                     ; $523e: $06 $07
    ld b, $06                                     ; $5240: $06 $06
    ld b, $06                                     ; $5242: $06 $06
    ld b, $05                                     ; $5244: $06 $05
    ld b, $05                                     ; $5246: $06 $05
    ld d, $31                                     ; $5248: $16 $31
    ld [hl-], a                                   ; $524a: $32
    add hl, bc                                    ; $524b: $09
    ld l, $33                                     ; $524c: $2e $33
    inc sp                                        ; $524e: $33
    rra                                           ; $524f: $1f
    cpl                                           ; $5250: $2f
    dec [hl]                                      ; $5251: $35
    ld [hl], $23                                  ; $5252: $36 $23
    jr nc, jr_085_528e                            ; $5254: $30 $38

    add hl, sp                                    ; $5256: $39
    ld b, $82                                     ; $5257: $06 $82
    add d                                         ; $5259: $82
    add d                                         ; $525a: $82
    ld b, $82                                     ; $525b: $06 $82
    add d                                         ; $525d: $82
    add d                                         ; $525e: $82
    dec b                                         ; $525f: $05
    add h                                         ; $5260: $84
    add e                                         ; $5261: $83
    add e                                         ; $5262: $83
    ld b, $04                                     ; $5263: $06 $04
    inc bc                                        ; $5265: $03
    inc bc                                        ; $5266: $03
    ld [hl-], a                                   ; $5267: $32
    ld [hl-], a                                   ; $5268: $32
    ld [hl-], a                                   ; $5269: $32
    ld [hl-], a                                   ; $526a: $32
    inc sp                                        ; $526b: $33
    inc sp                                        ; $526c: $33
    inc sp                                        ; $526d: $33
    inc sp                                        ; $526e: $33
    dec a                                         ; $526f: $3d
    dec [hl]                                      ; $5270: $35
    ld [hl], $3a                                  ; $5271: $36 $3a
    ld b, c                                       ; $5273: $41
    jr c, @+$3b                                   ; $5274: $38 $39

    ld a, $82                                     ; $5276: $3e $82
    add d                                         ; $5278: $82
    add d                                         ; $5279: $82
    add d                                         ; $527a: $82
    add d                                         ; $527b: $82
    add d                                         ; $527c: $82
    add d                                         ; $527d: $82
    add d                                         ; $527e: $82
    add h                                         ; $527f: $84
    add e                                         ; $5280: $83
    add e                                         ; $5281: $83
    add h                                         ; $5282: $84
    inc b                                         ; $5283: $04
    inc bc                                        ; $5284: $03
    inc b                                         ; $5285: $04
    inc bc                                        ; $5286: $03
    ld [hl-], a                                   ; $5287: $32
    ld [hl-], a                                   ; $5288: $32
    ld [hl-], a                                   ; $5289: $32
    dec d                                         ; $528a: $15
    inc sp                                        ; $528b: $33
    inc sp                                        ; $528c: $33
    inc sp                                        ; $528d: $33

jr_085_528e:
    ld l, $3b                                     ; $528e: $2e $3b
    inc a                                         ; $5290: $3c
    dec a                                         ; $5291: $3d
    ld e, e                                       ; $5292: $5b
    ccf                                           ; $5293: $3f
    ld b, b                                       ; $5294: $40
    ld b, c                                       ; $5295: $41
    ld e, h                                       ; $5296: $5c
    add d                                         ; $5297: $82
    add d                                         ; $5298: $82
    add d                                         ; $5299: $82
    and d                                         ; $529a: $a2
    add d                                         ; $529b: $82
    add d                                         ; $529c: $82
    add d                                         ; $529d: $82
    and d                                         ; $529e: $a2
    add e                                         ; $529f: $83
    add e                                         ; $52a0: $83
    add h                                         ; $52a1: $84
    add e                                         ; $52a2: $83
    inc bc                                        ; $52a3: $03
    inc b                                         ; $52a4: $04
    inc b                                         ; $52a5: $04
    inc bc                                        ; $52a6: $03
    daa                                           ; $52a7: $27
    jr z, jr_085_52d3                             ; $52a8: $28 $29

    ld a, [hl+]                                   ; $52aa: $2a
    push hl                                       ; $52ab: $e5
    and $e7                                       ; $52ac: $e6 $e7
    add sp, -$17                                  ; $52ae: $e8 $e9
    ld [$f3f2], a                                 ; $52b0: $ea $f2 $f3
    db $ed                                        ; $52b3: $ed
    push af                                       ; $52b4: $f5
    or $f7                                        ; $52b5: $f6 $f7
    ld b, $06                                     ; $52b7: $06 $06
    ld b, $06                                     ; $52b9: $06 $06
    ld b, $06                                     ; $52bb: $06 $06
    dec b                                         ; $52bd: $05
    dec b                                         ; $52be: $05
    ld b, $05                                     ; $52bf: $06 $05
    ld b, $06                                     ; $52c1: $06 $06
    rlca                                          ; $52c3: $07
    ld b, $06                                     ; $52c4: $06 $06
    ld b, $27                                     ; $52c6: $06 $27
    ld b, h                                       ; $52c8: $44
    ld c, c                                       ; $52c9: $49
    ld c, d                                       ; $52ca: $4a
    push hl                                       ; $52cb: $e5
    ld b, l                                       ; $52cc: $45
    ld c, h                                       ; $52cd: $4c
    ld c, l                                       ; $52ce: $4d
    jp hl                                         ; $52cf: $e9


    ld b, [hl]                                    ; $52d0: $46
    ld c, a                                       ; $52d1: $4f
    ld d, b                                       ; $52d2: $50

jr_085_52d3:
    db $ed                                        ; $52d3: $ed
    push af                                       ; $52d4: $f5
    or $f7                                        ; $52d5: $f6 $f7
    ld b, $04                                     ; $52d7: $06 $04
    inc b                                         ; $52d9: $04
    inc b                                         ; $52da: $04
    ld b, $04                                     ; $52db: $06 $04
    inc b                                         ; $52dd: $04
    inc bc                                        ; $52de: $03
    dec b                                         ; $52df: $05
    inc b                                         ; $52e0: $04
    inc b                                         ; $52e1: $04
    inc bc                                        ; $52e2: $03
    ld b, $07                                     ; $52e3: $06 $07
    rlca                                          ; $52e5: $07
    rlca                                          ; $52e6: $07
    rra                                           ; $52e7: $1f
    jr nz, jr_085_530b                            ; $52e8: $20 $21

    ld [hl+], a                                   ; $52ea: $22
    inc hl                                        ; $52eb: $23
    inc h                                         ; $52ec: $24
    dec h                                         ; $52ed: $25
    ld h, $27                                     ; $52ee: $26 $27
    jr z, jr_085_531b                             ; $52f0: $28 $29

    ld a, [hl+]                                   ; $52f2: $2a
    push hl                                       ; $52f3: $e5
    and $e7                                       ; $52f4: $e6 $e7
    add sp, $06                                   ; $52f6: $e8 $06
    ld b, $06                                     ; $52f8: $06 $06
    ld b, $06                                     ; $52fa: $06 $06
    ld b, $05                                     ; $52fc: $06 $05
    ld b, $06                                     ; $52fe: $06 $06
    ld b, $06                                     ; $5300: $06 $06
    dec b                                         ; $5302: $05
    dec b                                         ; $5303: $05
    dec b                                         ; $5304: $05
    ld b, $06                                     ; $5305: $06 $06
    rra                                           ; $5307: $1f
    jr nz, jr_085_532b                            ; $5308: $20 $21

    ld [hl+], a                                   ; $530a: $22

jr_085_530b:
    inc hl                                        ; $530b: $23
    inc h                                         ; $530c: $24
    dec h                                         ; $530d: $25
    ld h, $78                                     ; $530e: $26 $78
    ld a, c                                       ; $5310: $79
    ld a, d                                       ; $5311: $7a
    ld a, e                                       ; $5312: $7b
    ld a, h                                       ; $5313: $7c
    ld a, l                                       ; $5314: $7d
    ld a, [hl]                                    ; $5315: $7e
    ld a, a                                       ; $5316: $7f
    dec b                                         ; $5317: $05
    dec b                                         ; $5318: $05
    ld b, $06                                     ; $5319: $06 $06

jr_085_531b:
    ld b, $06                                     ; $531b: $06 $06
    ld b, $05                                     ; $531d: $06 $05
    ld bc, $0101                                  ; $531f: $01 $01 $01
    ld bc, $0101                                  ; $5322: $01 $01 $01
    ld bc, $e901                                  ; $5325: $01 $01 $e9
    ld [$f3f2], a                                 ; $5328: $ea $f2 $f3

jr_085_532b:
    db $ed                                        ; $532b: $ed
    push af                                       ; $532c: $f5
    or $f7                                        ; $532d: $f6 $f7
    db $fd                                        ; $532f: $fd
    ld c, $0f                                     ; $5330: $0e $0f
    db $10                                        ; $5332: $10
    ld bc, $1312                                  ; $5333: $01 $12 $13
    inc d                                         ; $5336: $14
    ld b, $06                                     ; $5337: $06 $06
    dec b                                         ; $5339: $05
    ld b, $06                                     ; $533a: $06 $06
    ld b, $05                                     ; $533c: $06 $05
    dec b                                         ; $533e: $05
    dec b                                         ; $533f: $05
    ld b, $06                                     ; $5340: $06 $06
    dec b                                         ; $5342: $05
    ld b, $06                                     ; $5343: $06 $06
    ld b, $06                                     ; $5345: $06 $06
    add b                                         ; $5347: $80
    add c                                         ; $5348: $81
    add d                                         ; $5349: $82
    add e                                         ; $534a: $83
    add h                                         ; $534b: $84
    add l                                         ; $534c: $85
    add [hl]                                      ; $534d: $86
    add a                                         ; $534e: $87
    adc b                                         ; $534f: $88
    adc c                                         ; $5350: $89
    adc d                                         ; $5351: $8a
    adc e                                         ; $5352: $8b
    ld bc, $1312                                  ; $5353: $01 $12 $13
    inc d                                         ; $5356: $14
    add hl, bc                                    ; $5357: $09
    add hl, bc                                    ; $5358: $09
    add hl, bc                                    ; $5359: $09
    add hl, bc                                    ; $535a: $09
    add hl, bc                                    ; $535b: $09
    add hl, bc                                    ; $535c: $09
    add hl, bc                                    ; $535d: $09
    add hl, bc                                    ; $535e: $09
    add hl, bc                                    ; $535f: $09
    add hl, bc                                    ; $5360: $09
    add hl, bc                                    ; $5361: $09
    add hl, bc                                    ; $5362: $09
    rlca                                          ; $5363: $07
    rlca                                          ; $5364: $07
    rlca                                          ; $5365: $07
    rlca                                          ; $5366: $07
    ld [hl-], a                                   ; $5367: $32
    ld [hl-], a                                   ; $5368: $32
    ld [hl-], a                                   ; $5369: $32
    ld [hl-], a                                   ; $536a: $32
    inc sp                                        ; $536b: $33
    inc sp                                        ; $536c: $33
    inc sp                                        ; $536d: $33
    inc sp                                        ; $536e: $33
    ld a, [hl-]                                   ; $536f: $3a
    dec sp                                        ; $5370: $3b
    inc a                                         ; $5371: $3c
    dec a                                         ; $5372: $3d
    ld a, $3f                                     ; $5373: $3e $3f
    ld b, b                                       ; $5375: $40
    ld b, c                                       ; $5376: $41
    add d                                         ; $5377: $82
    add d                                         ; $5378: $82
    add d                                         ; $5379: $82
    add d                                         ; $537a: $82
    add d                                         ; $537b: $82
    add d                                         ; $537c: $82
    add d                                         ; $537d: $82
    add d                                         ; $537e: $82
    add h                                         ; $537f: $84
    add e                                         ; $5380: $83
    add h                                         ; $5381: $84
    add e                                         ; $5382: $83
    inc bc                                        ; $5383: $03
    inc bc                                        ; $5384: $03
    inc b                                         ; $5385: $04
    inc bc                                        ; $5386: $03
    ld [hl-], a                                   ; $5387: $32
    ld [hl-], a                                   ; $5388: $32
    ld [hl-], a                                   ; $5389: $32
    ld [hl-], a                                   ; $538a: $32
    inc sp                                        ; $538b: $33
    inc sp                                        ; $538c: $33
    inc sp                                        ; $538d: $33
    inc sp                                        ; $538e: $33
    dec [hl]                                      ; $538f: $35
    ld [hl], $3a                                  ; $5390: $36 $3a
    dec sp                                        ; $5392: $3b
    jr c, jr_085_53ce                             ; $5393: $38 $39

    ld a, $3f                                     ; $5395: $3e $3f
    add d                                         ; $5397: $82
    add d                                         ; $5398: $82
    add d                                         ; $5399: $82
    add d                                         ; $539a: $82
    add d                                         ; $539b: $82
    add d                                         ; $539c: $82
    add d                                         ; $539d: $82
    add d                                         ; $539e: $82
    add e                                         ; $539f: $83
    add h                                         ; $53a0: $84
    add e                                         ; $53a1: $83
    add e                                         ; $53a2: $83
    inc bc                                        ; $53a3: $03
    inc bc                                        ; $53a4: $03
    inc bc                                        ; $53a5: $03
    inc b                                         ; $53a6: $04
    ld c, e                                       ; $53a7: $4b
    ld d, d                                       ; $53a8: $52
    ld d, e                                       ; $53a9: $53
    ld d, h                                       ; $53aa: $54
    ld c, [hl]                                    ; $53ab: $4e
    ld d, l                                       ; $53ac: $55
    ld d, [hl]                                    ; $53ad: $56
    ld d, a                                       ; $53ae: $57
    ld d, c                                       ; $53af: $51
    ld e, b                                       ; $53b0: $58
    ld e, c                                       ; $53b1: $59
    ld e, d                                       ; $53b2: $5a
    db $ed                                        ; $53b3: $ed
    push af                                       ; $53b4: $f5
    or $f7                                        ; $53b5: $f6 $f7
    inc bc                                        ; $53b7: $03
    inc bc                                        ; $53b8: $03
    inc b                                         ; $53b9: $04
    inc b                                         ; $53ba: $04
    inc bc                                        ; $53bb: $03
    inc bc                                        ; $53bc: $03
    inc bc                                        ; $53bd: $03
    inc b                                         ; $53be: $04
    inc b                                         ; $53bf: $04
    inc bc                                        ; $53c0: $03
    inc bc                                        ; $53c1: $03
    inc bc                                        ; $53c2: $03
    rlca                                          ; $53c3: $07
    rlca                                          ; $53c4: $07
    rlca                                          ; $53c5: $07
    rlca                                          ; $53c6: $07
    ld c, c                                       ; $53c7: $49
    ld c, d                                       ; $53c8: $4a
    ld c, e                                       ; $53c9: $4b
    ld d, d                                       ; $53ca: $52
    ld c, h                                       ; $53cb: $4c
    ld c, l                                       ; $53cc: $4d
    ld c, [hl]                                    ; $53cd: $4e

jr_085_53ce:
    ld d, l                                       ; $53ce: $55
    ld c, a                                       ; $53cf: $4f
    ld d, b                                       ; $53d0: $50
    ld d, c                                       ; $53d1: $51
    ld e, b                                       ; $53d2: $58
    db $ed                                        ; $53d3: $ed
    push af                                       ; $53d4: $f5
    or $f7                                        ; $53d5: $f6 $f7
    inc bc                                        ; $53d7: $03
    inc bc                                        ; $53d8: $03
    inc b                                         ; $53d9: $04
    inc bc                                        ; $53da: $03
    inc bc                                        ; $53db: $03
    inc bc                                        ; $53dc: $03
    inc b                                         ; $53dd: $04
    inc bc                                        ; $53de: $03
    inc bc                                        ; $53df: $03
    inc b                                         ; $53e0: $04
    inc bc                                        ; $53e1: $03
    inc bc                                        ; $53e2: $03
    rlca                                          ; $53e3: $07
    rlca                                          ; $53e4: $07
    rlca                                          ; $53e5: $07
    rlca                                          ; $53e6: $07
    ld c, h                                       ; $53e7: $4c
    ld c, l                                       ; $53e8: $4d
    ld c, [hl]                                    ; $53e9: $4e
    ld d, l                                       ; $53ea: $55
    ld c, a                                       ; $53eb: $4f
    ld d, b                                       ; $53ec: $50
    ld d, c                                       ; $53ed: $51
    ld e, b                                       ; $53ee: $58
    push hl                                       ; $53ef: $e5
    and $e7                                       ; $53f0: $e6 $e7
    add sp, -$17                                  ; $53f2: $e8 $e9
    ld [$f3f2], a                                 ; $53f4: $ea $f2 $f3
    rlca                                          ; $53f7: $07
    rlca                                          ; $53f8: $07
    rlca                                          ; $53f9: $07
    rlca                                          ; $53fa: $07
    rlca                                          ; $53fb: $07
    rlca                                          ; $53fc: $07
    rlca                                          ; $53fd: $07
    rlca                                          ; $53fe: $07
    rlca                                          ; $53ff: $07
    rlca                                          ; $5400: $07
    rlca                                          ; $5401: $07
    rlca                                          ; $5402: $07
    rlca                                          ; $5403: $07
    rlca                                          ; $5404: $07
    rlca                                          ; $5405: $07
    rlca                                          ; $5406: $07
    ld d, [hl]                                    ; $5407: $56
    ld d, a                                       ; $5408: $57
    ld c, h                                       ; $5409: $4c
    ld c, l                                       ; $540a: $4d
    ld e, c                                       ; $540b: $59
    ld e, d                                       ; $540c: $5a
    ld c, a                                       ; $540d: $4f
    ld d, b                                       ; $540e: $50
    push hl                                       ; $540f: $e5
    and $e7                                       ; $5410: $e6 $e7
    add sp, -$17                                  ; $5412: $e8 $e9
    ld [$f3f2], a                                 ; $5414: $ea $f2 $f3
    rlca                                          ; $5417: $07
    rlca                                          ; $5418: $07
    rlca                                          ; $5419: $07
    rlca                                          ; $541a: $07
    rlca                                          ; $541b: $07
    rlca                                          ; $541c: $07
    rlca                                          ; $541d: $07
    rlca                                          ; $541e: $07
    rlca                                          ; $541f: $07
    rlca                                          ; $5420: $07
    rlca                                          ; $5421: $07
    rlca                                          ; $5422: $07
    rlca                                          ; $5423: $07
    rlca                                          ; $5424: $07
    rlca                                          ; $5425: $07
    rlca                                          ; $5426: $07
    ld c, [hl]                                    ; $5427: $4e
    ld d, l                                       ; $5428: $55
    ld d, [hl]                                    ; $5429: $56
    ld h, b                                       ; $542a: $60
    ld d, c                                       ; $542b: $51
    ld e, b                                       ; $542c: $58
    ld e, c                                       ; $542d: $59
    ld h, d                                       ; $542e: $62
    push hl                                       ; $542f: $e5
    and $e7                                       ; $5430: $e6 $e7
    add sp, -$17                                  ; $5432: $e8 $e9
    ld [$f3f2], a                                 ; $5434: $ea $f2 $f3
    rlca                                          ; $5437: $07
    rlca                                          ; $5438: $07
    rlca                                          ; $5439: $07
    rlca                                          ; $543a: $07
    rlca                                          ; $543b: $07
    rlca                                          ; $543c: $07
    rlca                                          ; $543d: $07
    rlca                                          ; $543e: $07
    rlca                                          ; $543f: $07
    rlca                                          ; $5440: $07
    rlca                                          ; $5441: $07
    rlca                                          ; $5442: $07
    rlca                                          ; $5443: $07
    rlca                                          ; $5444: $07
    rlca                                          ; $5445: $07
    rlca                                          ; $5446: $07
    push hl                                       ; $5447: $e5
    and $e7                                       ; $5448: $e6 $e7
    add sp, -$17                                  ; $544a: $e8 $e9
    ld [$f3f2], a                                 ; $544c: $ea $f2 $f3
    db $ed                                        ; $544f: $ed
    push af                                       ; $5450: $f5
    or $f7                                        ; $5451: $f6 $f7
    db $fd                                        ; $5453: $fd
    ld c, $0f                                     ; $5454: $0e $0f
    db $10                                        ; $5456: $10
    rlca                                          ; $5457: $07
    rlca                                          ; $5458: $07
    rlca                                          ; $5459: $07
    rlca                                          ; $545a: $07
    rlca                                          ; $545b: $07
    rlca                                          ; $545c: $07
    rlca                                          ; $545d: $07
    rlca                                          ; $545e: $07
    rlca                                          ; $545f: $07
    rlca                                          ; $5460: $07
    rlca                                          ; $5461: $07
    rlca                                          ; $5462: $07
    rlca                                          ; $5463: $07
    rlca                                          ; $5464: $07
    rlca                                          ; $5465: $07
    rlca                                          ; $5466: $07
    ld d, $4f                                     ; $5467: $16 $4f
    ld d, b                                       ; $5469: $50
    ld d, c                                       ; $546a: $51
    ld d, $28                                     ; $546b: $16 $28
    add hl, hl                                    ; $546d: $29
    ld a, [hl+]                                   ; $546e: $2a
    ld d, $e6                                     ; $546f: $16 $e6
    rst $20                                       ; $5471: $e7
    add sp, $31                                   ; $5472: $e8 $31
    ld [hl-], a                                   ; $5474: $32
    ld [hl-], a                                   ; $5475: $32
    ld [hl-], a                                   ; $5476: $32
    daa                                           ; $5477: $27
    rlca                                          ; $5478: $07
    rlca                                          ; $5479: $07
    rlca                                          ; $547a: $07
    daa                                           ; $547b: $27
    rlca                                          ; $547c: $07
    rlca                                          ; $547d: $07
    rlca                                          ; $547e: $07
    daa                                           ; $547f: $27
    rlca                                          ; $5480: $07
    rlca                                          ; $5481: $07
    rlca                                          ; $5482: $07
    rlca                                          ; $5483: $07
    rlca                                          ; $5484: $07
    rlca                                          ; $5485: $07
    rlca                                          ; $5486: $07
    ld e, b                                       ; $5487: $58
    ld e, c                                       ; $5488: $59
    ld e, d                                       ; $5489: $5a
    ld c, a                                       ; $548a: $4f
    daa                                           ; $548b: $27
    jr z, jr_085_54b7                             ; $548c: $28 $29

    ld a, [hl+]                                   ; $548e: $2a
    push hl                                       ; $548f: $e5
    and $e7                                       ; $5490: $e6 $e7
    add sp, $32                                   ; $5492: $e8 $32
    dec d                                         ; $5494: $15
    ld a, [c]                                     ; $5495: $f2
    di                                            ; $5496: $f3
    rlca                                          ; $5497: $07
    rlca                                          ; $5498: $07
    rlca                                          ; $5499: $07
    rlca                                          ; $549a: $07
    rlca                                          ; $549b: $07
    rlca                                          ; $549c: $07
    rlca                                          ; $549d: $07
    rlca                                          ; $549e: $07
    rlca                                          ; $549f: $07
    rlca                                          ; $54a0: $07
    rlca                                          ; $54a1: $07
    rlca                                          ; $54a2: $07
    rlca                                          ; $54a3: $07
    daa                                           ; $54a4: $27
    rlca                                          ; $54a5: $07
    rlca                                          ; $54a6: $07
    ld d, b                                       ; $54a7: $50
    ld d, $76                                     ; $54a8: $16 $76
    ld b, h                                       ; $54aa: $44
    daa                                           ; $54ab: $27
    ld l, $77                                     ; $54ac: $2e $77
    ld b, l                                       ; $54ae: $45
    push hl                                       ; $54af: $e5
    cpl                                           ; $54b0: $2f
    halt                                          ; $54b1: $76
    ld b, [hl]                                    ; $54b2: $46
    jp hl                                         ; $54b3: $e9


    jr nc, jr_085_552d                            ; $54b4: $30 $77

    inc c                                         ; $54b6: $0c

jr_085_54b7:
    rlca                                          ; $54b7: $07
    rlca                                          ; $54b8: $07
    ld [bc], a                                    ; $54b9: $02
    inc bc                                        ; $54ba: $03
    rlca                                          ; $54bb: $07
    rlca                                          ; $54bc: $07
    ld [bc], a                                    ; $54bd: $02
    inc bc                                        ; $54be: $03
    rlca                                          ; $54bf: $07
    rlca                                          ; $54c0: $07
    ld [bc], a                                    ; $54c1: $02
    inc bc                                        ; $54c2: $03
    rlca                                          ; $54c3: $07
    rlca                                          ; $54c4: $07
    ld [bc], a                                    ; $54c5: $02
    rlca                                          ; $54c6: $07
    db $ed                                        ; $54c7: $ed
    push af                                       ; $54c8: $f5
    or $16                                        ; $54c9: $f6 $16
    db $fd                                        ; $54cb: $fd
    ld c, $0f                                     ; $54cc: $0e $0f
    ld d, $01                                     ; $54ce: $16 $01
    ld [de], a                                    ; $54d0: $12
    inc de                                        ; $54d1: $13
    ld d, $05                                     ; $54d2: $16 $05
    ld b, $07                                     ; $54d4: $06 $07
    ld d, $07                                     ; $54d6: $16 $07
    rlca                                          ; $54d8: $07
    rlca                                          ; $54d9: $07
    rlca                                          ; $54da: $07

Jump_085_54db:
    rlca                                          ; $54db: $07
    rlca                                          ; $54dc: $07
    rlca                                          ; $54dd: $07
    rlca                                          ; $54de: $07
    rlca                                          ; $54df: $07
    rlca                                          ; $54e0: $07
    rlca                                          ; $54e1: $07
    rlca                                          ; $54e2: $07
    rlca                                          ; $54e3: $07
    rlca                                          ; $54e4: $07
    rlca                                          ; $54e5: $07
    rlca                                          ; $54e6: $07
    ld b, a                                       ; $54e7: $47
    inc sp                                        ; $54e8: $33
    inc sp                                        ; $54e9: $33
    inc sp                                        ; $54ea: $33
    ld d, $36                                     ; $54eb: $16 $36
    ld a, [hl-]                                   ; $54ed: $3a
    dec sp                                        ; $54ee: $3b
    ld d, $39                                     ; $54ef: $16 $39
    ld a, $3f                                     ; $54f1: $3e $3f
    ld d, $4a                                     ; $54f3: $16 $4a
    ld c, e                                       ; $54f5: $4b
    ld d, d                                       ; $54f6: $52
    rlca                                          ; $54f7: $07
    rlca                                          ; $54f8: $07
    rlca                                          ; $54f9: $07
    rlca                                          ; $54fa: $07
    daa                                           ; $54fb: $27
    rlca                                          ; $54fc: $07
    rlca                                          ; $54fd: $07
    rlca                                          ; $54fe: $07
    daa                                           ; $54ff: $27
    rlca                                          ; $5500: $07
    rlca                                          ; $5501: $07
    rlca                                          ; $5502: $07
    daa                                           ; $5503: $27
    rlca                                          ; $5504: $07
    rlca                                          ; $5505: $07
    rlca                                          ; $5506: $07
    inc sp                                        ; $5507: $33
    ld l, $f6                                     ; $5508: $2e $f6
    rst $30                                       ; $550a: $f7
    inc a                                         ; $550b: $3c
    ld e, e                                       ; $550c: $5b
    rrca                                          ; $550d: $0f
    db $10                                        ; $550e: $10
    ld b, b                                       ; $550f: $40
    ld e, h                                       ; $5510: $5c
    inc de                                        ; $5511: $13
    inc d                                         ; $5512: $14
    ld d, e                                       ; $5513: $53
    ld e, [hl]                                    ; $5514: $5e
    rlca                                          ; $5515: $07
    ld [$2707], sp                                ; $5516: $08 $07 $27
    rlca                                          ; $5519: $07
    rlca                                          ; $551a: $07
    rlca                                          ; $551b: $07
    rlca                                          ; $551c: $07
    rlca                                          ; $551d: $07
    rlca                                          ; $551e: $07
    rlca                                          ; $551f: $07
    rlca                                          ; $5520: $07
    rlca                                          ; $5521: $07
    rlca                                          ; $5522: $07
    rlca                                          ; $5523: $07
    rlca                                          ; $5524: $07
    rlca                                          ; $5525: $07
    rlca                                          ; $5526: $07
    db $ed                                        ; $5527: $ed
    ld b, h                                       ; $5528: $44
    halt                                          ; $5529: $76
    ld [hl+], a                                   ; $552a: $22
    db $fd                                        ; $552b: $fd
    ld b, l                                       ; $552c: $45

jr_085_552d:
    ld [hl], a                                    ; $552d: $77
    ld h, $01                                     ; $552e: $26 $01
    ld b, [hl]                                    ; $5530: $46
    halt                                          ; $5531: $76
    ld a, [hl+]                                   ; $5532: $2a
    dec b                                         ; $5533: $05
    ld b, $77                                     ; $5534: $06 $77
    add sp, $07                                   ; $5536: $e8 $07
    rlca                                          ; $5538: $07
    ld [bc], a                                    ; $5539: $02
    rlca                                          ; $553a: $07
    rlca                                          ; $553b: $07
    rlca                                          ; $553c: $07
    ld [bc], a                                    ; $553d: $02
    rlca                                          ; $553e: $07
    rlca                                          ; $553f: $07
    rlca                                          ; $5540: $07
    ld [bc], a                                    ; $5541: $02
    rlca                                          ; $5542: $07
    rlca                                          ; $5543: $07
    rlca                                          ; $5544: $07
    ld [bc], a                                    ; $5545: $02
    rlca                                          ; $5546: $07
    add hl, bc                                    ; $5547: $09
    ld a, [bc]                                    ; $5548: $0a
    dec bc                                        ; $5549: $0b
    ld d, $1f                                     ; $554a: $16 $1f
    jr nz, jr_085_556f                            ; $554c: $20 $21

    ld d, $23                                     ; $554e: $16 $23
    inc h                                         ; $5550: $24
    dec h                                         ; $5551: $25
    ld d, $27                                     ; $5552: $16 $27
    jr z, jr_085_557f                             ; $5554: $28 $29

    ld d, $07                                     ; $5556: $16 $07
    rlca                                          ; $5558: $07
    rlca                                          ; $5559: $07
    rlca                                          ; $555a: $07
    rlca                                          ; $555b: $07
    rlca                                          ; $555c: $07
    rlca                                          ; $555d: $07
    rlca                                          ; $555e: $07
    rlca                                          ; $555f: $07
    rlca                                          ; $5560: $07
    rlca                                          ; $5561: $07
    rlca                                          ; $5562: $07
    rlca                                          ; $5563: $07
    rlca                                          ; $5564: $07
    rlca                                          ; $5565: $07
    rlca                                          ; $5566: $07
    ld d, $4d                                     ; $5567: $16 $4d
    ld c, [hl]                                    ; $5569: $4e
    ld d, l                                       ; $556a: $55
    ld d, $50                                     ; $556b: $16 $50
    ld d, c                                       ; $556d: $51
    ld e, b                                       ; $556e: $58

jr_085_556f:
    ld d, $24                                     ; $556f: $16 $24
    dec h                                         ; $5571: $25
    ld h, $16                                     ; $5572: $26 $16
    jr z, jr_085_559f                             ; $5574: $28 $29

    ld a, [hl+]                                   ; $5576: $2a
    daa                                           ; $5577: $27
    rlca                                          ; $5578: $07
    rlca                                          ; $5579: $07
    rlca                                          ; $557a: $07
    daa                                           ; $557b: $27
    rlca                                          ; $557c: $07
    rlca                                          ; $557d: $07
    rlca                                          ; $557e: $07

jr_085_557f:
    daa                                           ; $557f: $27
    rlca                                          ; $5580: $07
    rlca                                          ; $5581: $07
    rlca                                          ; $5582: $07
    daa                                           ; $5583: $27
    rlca                                          ; $5584: $07
    rlca                                          ; $5585: $07
    rlca                                          ; $5586: $07
    ld d, [hl]                                    ; $5587: $56
    ld h, b                                       ; $5588: $60
    dec bc                                        ; $5589: $0b
    inc c                                         ; $558a: $0c
    ld e, c                                       ; $558b: $59
    ld h, d                                       ; $558c: $62
    ld hl, $2322                                  ; $558d: $21 $22 $23
    inc h                                         ; $5590: $24
    dec h                                         ; $5591: $25
    ld h, $27                                     ; $5592: $26 $27
    jr z, jr_085_55bf                             ; $5594: $28 $29

    ld a, [hl+]                                   ; $5596: $2a
    rlca                                          ; $5597: $07
    rlca                                          ; $5598: $07
    rlca                                          ; $5599: $07
    rlca                                          ; $559a: $07
    rlca                                          ; $559b: $07
    rlca                                          ; $559c: $07
    rlca                                          ; $559d: $07
    rlca                                          ; $559e: $07

jr_085_559f:
    rlca                                          ; $559f: $07
    rlca                                          ; $55a0: $07
    rlca                                          ; $55a1: $07
    rlca                                          ; $55a2: $07
    rlca                                          ; $55a3: $07
    rlca                                          ; $55a4: $07
    rlca                                          ; $55a5: $07
    rlca                                          ; $55a6: $07
    add hl, bc                                    ; $55a7: $09
    ld a, [bc]                                    ; $55a8: $0a
    halt                                          ; $55a9: $76
    di                                            ; $55aa: $f3
    rra                                           ; $55ab: $1f
    jr nz, jr_085_5625                            ; $55ac: $20 $77

    rst $30                                       ; $55ae: $f7
    inc hl                                        ; $55af: $23
    inc h                                         ; $55b0: $24
    halt                                          ; $55b1: $76
    ld [hl-], a                                   ; $55b2: $32
    daa                                           ; $55b3: $27
    jr z, jr_085_562d                             ; $55b4: $28 $77

    inc sp                                        ; $55b6: $33
    rlca                                          ; $55b7: $07
    rlca                                          ; $55b8: $07
    ld [bc], a                                    ; $55b9: $02
    rlca                                          ; $55ba: $07
    rlca                                          ; $55bb: $07
    rlca                                          ; $55bc: $07
    ld [bc], a                                    ; $55bd: $02
    rlca                                          ; $55be: $07

jr_085_55bf:
    rlca                                          ; $55bf: $07
    rlca                                          ; $55c0: $07
    ld [bc], a                                    ; $55c1: $02
    add d                                         ; $55c2: $82
    rlca                                          ; $55c3: $07
    rlca                                          ; $55c4: $07
    ld [bc], a                                    ; $55c5: $02
    add d                                         ; $55c6: $82
    push hl                                       ; $55c7: $e5
    and $e7                                       ; $55c8: $e6 $e7
    ld d, $e9                                     ; $55ca: $16 $e9
    ld [$2ef2], a                                 ; $55cc: $ea $f2 $2e
    db $ed                                        ; $55cf: $ed
    push af                                       ; $55d0: $f5
    or $2f                                        ; $55d1: $f6 $2f
    db $fd                                        ; $55d3: $fd
    ld c, $0f                                     ; $55d4: $0e $0f
    jr nc, jr_085_55df                            ; $55d6: $30 $07

    rlca                                          ; $55d8: $07
    rlca                                          ; $55d9: $07
    rlca                                          ; $55da: $07
    rlca                                          ; $55db: $07
    rlca                                          ; $55dc: $07
    rlca                                          ; $55dd: $07
    rlca                                          ; $55de: $07

jr_085_55df:
    rlca                                          ; $55df: $07
    rlca                                          ; $55e0: $07
    rlca                                          ; $55e1: $07
    rlca                                          ; $55e2: $07
    rlca                                          ; $55e3: $07
    rlca                                          ; $55e4: $07
    rlca                                          ; $55e5: $07
    rlca                                          ; $55e6: $07
    ld sp, $3232                                  ; $55e7: $31 $32 $32
    ld [hl-], a                                   ; $55ea: $32
    inc sp                                        ; $55eb: $33
    inc sp                                        ; $55ec: $33
    inc sp                                        ; $55ed: $33
    inc sp                                        ; $55ee: $33
    ld [hl], $3a                                  ; $55ef: $36 $3a
    dec sp                                        ; $55f1: $3b
    inc a                                         ; $55f2: $3c
    add hl, sp                                    ; $55f3: $39
    ld a, $3f                                     ; $55f4: $3e $3f
    ld b, b                                       ; $55f6: $40
    rlca                                          ; $55f7: $07
    rlca                                          ; $55f8: $07
    rlca                                          ; $55f9: $07
    rlca                                          ; $55fa: $07
    rlca                                          ; $55fb: $07
    rlca                                          ; $55fc: $07
    rlca                                          ; $55fd: $07
    rlca                                          ; $55fe: $07
    rlca                                          ; $55ff: $07
    rlca                                          ; $5600: $07
    rlca                                          ; $5601: $07
    rlca                                          ; $5602: $07
    rlca                                          ; $5603: $07
    rlca                                          ; $5604: $07
    rlca                                          ; $5605: $07
    rlca                                          ; $5606: $07
    ld [hl-], a                                   ; $5607: $32
    ld [hl-], a                                   ; $5608: $32
    ld [hl-], a                                   ; $5609: $32
    ld [hl-], a                                   ; $560a: $32
    inc sp                                        ; $560b: $33
    inc sp                                        ; $560c: $33
    inc sp                                        ; $560d: $33
    inc sp                                        ; $560e: $33
    dec a                                         ; $560f: $3d
    dec [hl]                                      ; $5610: $35
    ld [hl], $3a                                  ; $5611: $36 $3a
    ld b, c                                       ; $5613: $41
    jr c, jr_085_564f                             ; $5614: $38 $39

    ld a, $07                                     ; $5616: $3e $07
    rlca                                          ; $5618: $07
    rlca                                          ; $5619: $07
    rlca                                          ; $561a: $07
    rlca                                          ; $561b: $07
    rlca                                          ; $561c: $07
    rlca                                          ; $561d: $07
    rlca                                          ; $561e: $07
    rlca                                          ; $561f: $07
    rlca                                          ; $5620: $07
    rlca                                          ; $5621: $07
    rlca                                          ; $5622: $07
    rlca                                          ; $5623: $07
    rlca                                          ; $5624: $07

jr_085_5625:
    rlca                                          ; $5625: $07
    rlca                                          ; $5626: $07
    ld [hl-], a                                   ; $5627: $32
    ld [hl-], a                                   ; $5628: $32
    halt                                          ; $5629: $76
    ld a, [hl-]                                   ; $562a: $3a
    inc sp                                        ; $562b: $33
    inc sp                                        ; $562c: $33

jr_085_562d:
    ld [hl], a                                    ; $562d: $77
    ld a, $3b                                     ; $562e: $3e $3b
    inc a                                         ; $5630: $3c
    halt                                          ; $5631: $76
    ld c, e                                       ; $5632: $4b
    ccf                                           ; $5633: $3f
    ld b, b                                       ; $5634: $40
    ld [hl], a                                    ; $5635: $77
    ld c, [hl]                                    ; $5636: $4e
    rlca                                          ; $5637: $07
    rlca                                          ; $5638: $07
    ld [bc], a                                    ; $5639: $02
    add h                                         ; $563a: $84
    rlca                                          ; $563b: $07
    rlca                                          ; $563c: $07
    ld [bc], a                                    ; $563d: $02
    inc bc                                        ; $563e: $03
    rlca                                          ; $563f: $07
    rlca                                          ; $5640: $07
    ld [bc], a                                    ; $5641: $02
    inc b                                         ; $5642: $04
    rlca                                          ; $5643: $07
    rlca                                          ; $5644: $07
    ld [bc], a                                    ; $5645: $02
    inc bc                                        ; $5646: $03
    ld d, h                                       ; $5647: $54
    ld c, c                                       ; $5648: $49
    ld c, d                                       ; $5649: $4a
    ld c, e                                       ; $564a: $4b
    ld d, a                                       ; $564b: $57
    ld c, h                                       ; $564c: $4c
    ld c, l                                       ; $564d: $4d
    ld c, [hl]                                    ; $564e: $4e

jr_085_564f:
    ld e, d                                       ; $564f: $5a
    ld c, a                                       ; $5650: $4f
    ld d, b                                       ; $5651: $50
    ld d, c                                       ; $5652: $51
    add hl, bc                                    ; $5653: $09
    ld a, [bc]                                    ; $5654: $0a
    dec bc                                        ; $5655: $0b
    inc c                                         ; $5656: $0c
    inc b                                         ; $5657: $04
    inc b                                         ; $5658: $04
    inc bc                                        ; $5659: $03
    inc bc                                        ; $565a: $03
    inc b                                         ; $565b: $04
    inc bc                                        ; $565c: $03
    inc bc                                        ; $565d: $03
    inc b                                         ; $565e: $04
    inc bc                                        ; $565f: $03
    inc b                                         ; $5660: $04
    inc bc                                        ; $5661: $03
    inc bc                                        ; $5662: $03
    rlca                                          ; $5663: $07
    rlca                                          ; $5664: $07
    rlca                                          ; $5665: $07
    rlca                                          ; $5666: $07
    ld d, d                                       ; $5667: $52
    ld d, e                                       ; $5668: $53
    ld d, h                                       ; $5669: $54
    ld e, [hl]                                    ; $566a: $5e
    ld d, l                                       ; $566b: $55
    ld d, [hl]                                    ; $566c: $56
    ld d, a                                       ; $566d: $57
    ld h, b                                       ; $566e: $60
    ld e, b                                       ; $566f: $58
    ld e, c                                       ; $5670: $59
    ld e, d                                       ; $5671: $5a
    ld h, d                                       ; $5672: $62
    add hl, bc                                    ; $5673: $09
    ld a, [bc]                                    ; $5674: $0a
    dec bc                                        ; $5675: $0b
    inc c                                         ; $5676: $0c
    inc bc                                        ; $5677: $03
    inc b                                         ; $5678: $04
    inc b                                         ; $5679: $04
    inc b                                         ; $567a: $04
    inc bc                                        ; $567b: $03
    inc bc                                        ; $567c: $03
    inc b                                         ; $567d: $04
    inc bc                                        ; $567e: $03
    inc b                                         ; $567f: $04
    inc bc                                        ; $5680: $03
    inc bc                                        ; $5681: $03
    inc bc                                        ; $5682: $03
    rlca                                          ; $5683: $07
    rlca                                          ; $5684: $07
    rlca                                          ; $5685: $07
    rlca                                          ; $5686: $07
    db $fd                                        ; $5687: $fd
    ld c, $0f                                     ; $5688: $0e $0f
    db $10                                        ; $568a: $10
    ld bc, $1312                                  ; $568b: $01 $12 $13
    inc d                                         ; $568e: $14
    dec b                                         ; $568f: $05
    ld b, $15                                     ; $5690: $06 $15
    ld [hl-], a                                   ; $5692: $32
    add hl, bc                                    ; $5693: $09
    ld a, [bc]                                    ; $5694: $0a
    ld l, $33                                     ; $5695: $2e $33
    rlca                                          ; $5697: $07
    ld b, $06                                     ; $5698: $06 $06
    dec b                                         ; $569a: $05
    rlca                                          ; $569b: $07
    dec b                                         ; $569c: $05
    ld b, $06                                     ; $569d: $06 $06
    rlca                                          ; $569f: $07
    ld b, $82                                     ; $56a0: $06 $82
    add d                                         ; $56a2: $82
    rlca                                          ; $56a3: $07
    ld b, $82                                     ; $56a4: $06 $82
    add d                                         ; $56a6: $82
    db $fd                                        ; $56a7: $fd
    ld c, $0f                                     ; $56a8: $0e $0f
    db $10                                        ; $56aa: $10
    ld bc, $1312                                  ; $56ab: $01 $12 $13
    inc d                                         ; $56ae: $14
    ld [hl-], a                                   ; $56af: $32
    ld [hl-], a                                   ; $56b0: $32
    ld [hl-], a                                   ; $56b1: $32
    ld [hl-], a                                   ; $56b2: $32
    inc sp                                        ; $56b3: $33
    inc sp                                        ; $56b4: $33
    inc sp                                        ; $56b5: $33
    inc sp                                        ; $56b6: $33
    dec b                                         ; $56b7: $05
    ld b, $06                                     ; $56b8: $06 $06
    dec b                                         ; $56ba: $05
    ld b, $06                                     ; $56bb: $06 $06
    dec b                                         ; $56bd: $05
    ld b, $82                                     ; $56be: $06 $82
    add d                                         ; $56c0: $82
    add d                                         ; $56c1: $82
    add d                                         ; $56c2: $82
    add d                                         ; $56c3: $82
    add d                                         ; $56c4: $82
    add d                                         ; $56c5: $82
    add d                                         ; $56c6: $82
    rra                                           ; $56c7: $1f
    jr nz, jr_085_56eb                            ; $56c8: $20 $21

    ld [hl+], a                                   ; $56ca: $22
    inc hl                                        ; $56cb: $23
    inc h                                         ; $56cc: $24
    dec h                                         ; $56cd: $25
    ld h, $27                                     ; $56ce: $26 $27
    jr z, jr_085_56fb                             ; $56d0: $28 $29

    ld a, [hl+]                                   ; $56d2: $2a
    push hl                                       ; $56d3: $e5
    and $e7                                       ; $56d4: $e6 $e7
    add sp, $06                                   ; $56d6: $e8 $06
    dec b                                         ; $56d8: $05
    dec b                                         ; $56d9: $05
    ld b, $05                                     ; $56da: $06 $05
    dec b                                         ; $56dc: $05
    ld b, $06                                     ; $56dd: $06 $06
    ld b, $05                                     ; $56df: $06 $05
    dec b                                         ; $56e1: $05
    dec b                                         ; $56e2: $05
    ld b, $06                                     ; $56e3: $06 $06
    ld b, $05                                     ; $56e5: $06 $05
    rra                                           ; $56e7: $1f
    jr nz, jr_085_570b                            ; $56e8: $20 $21

    ld [hl+], a                                   ; $56ea: $22

jr_085_56eb:
    inc hl                                        ; $56eb: $23
    inc h                                         ; $56ec: $24
    dec h                                         ; $56ed: $25
    ld h, $27                                     ; $56ee: $26 $27
    jr z, jr_085_571b                             ; $56f0: $28 $29

    ld a, [hl+]                                   ; $56f2: $2a
    push hl                                       ; $56f3: $e5
    and $e7                                       ; $56f4: $e6 $e7
    add sp, $06                                   ; $56f6: $e8 $06
    dec b                                         ; $56f8: $05
    ld b, $05                                     ; $56f9: $06 $05

jr_085_56fb:
    ld b, $05                                     ; $56fb: $06 $05
    dec b                                         ; $56fd: $05
    dec b                                         ; $56fe: $05
    ld b, $06                                     ; $56ff: $06 $06
    ld b, $05                                     ; $5701: $06 $05
    ld b, $06                                     ; $5703: $06 $06
    dec b                                         ; $5705: $05
    ld b, $1f                                     ; $5706: $06 $1f
    jr nz, jr_085_573e                            ; $5708: $20 $34

    dec [hl]                                      ; $570a: $35

jr_085_570b:
    inc hl                                        ; $570b: $23
    inc h                                         ; $570c: $24
    scf                                           ; $570d: $37
    jr c, jr_085_5737                             ; $570e: $38 $27

    jr z, jr_085_576f                             ; $5710: $28 $5d

    ld c, c                                       ; $5712: $49
    push hl                                       ; $5713: $e5
    and $5f                                       ; $5714: $e6 $5f
    ld c, h                                       ; $5716: $4c
    dec b                                         ; $5717: $05
    dec b                                         ; $5718: $05
    add h                                         ; $5719: $84
    add e                                         ; $571a: $83

jr_085_571b:
    ld b, $06                                     ; $571b: $06 $06
    inc bc                                        ; $571d: $03
    inc b                                         ; $571e: $04
    ld b, $06                                     ; $571f: $06 $06
    inc bc                                        ; $5721: $03
    inc bc                                        ; $5722: $03
    ld b, $05                                     ; $5723: $06 $05
    inc b                                         ; $5725: $04
    inc b                                         ; $5726: $04
    ld [hl], $3a                                  ; $5727: $36 $3a
    dec sp                                        ; $5729: $3b
    inc a                                         ; $572a: $3c
    add hl, sp                                    ; $572b: $39
    ld a, $3f                                     ; $572c: $3e $3f
    ld b, b                                       ; $572e: $40
    ld c, d                                       ; $572f: $4a
    ld c, e                                       ; $5730: $4b
    ld d, d                                       ; $5731: $52
    ld d, e                                       ; $5732: $53
    ld c, l                                       ; $5733: $4d
    ld c, [hl]                                    ; $5734: $4e
    ld d, l                                       ; $5735: $55
    ld d, [hl]                                    ; $5736: $56

jr_085_5737:
    add e                                         ; $5737: $83
    add h                                         ; $5738: $84
    add e                                         ; $5739: $83
    add e                                         ; $573a: $83
    inc b                                         ; $573b: $04
    inc b                                         ; $573c: $04
    inc bc                                        ; $573d: $03

jr_085_573e:
    inc b                                         ; $573e: $04
    inc b                                         ; $573f: $04
    inc b                                         ; $5740: $04
    inc bc                                        ; $5741: $03
    inc bc                                        ; $5742: $03
    inc bc                                        ; $5743: $03
    inc bc                                        ; $5744: $03
    inc b                                         ; $5745: $04
    inc bc                                        ; $5746: $03
    jp hl                                         ; $5747: $e9


    ld [$f3f2], a                                 ; $5748: $ea $f2 $f3
    db $ed                                        ; $574b: $ed
    push af                                       ; $574c: $f5
    or $f7                                        ; $574d: $f6 $f7
    ld [hl-], a                                   ; $574f: $32
    ld [hl-], a                                   ; $5750: $32
    ld [hl-], a                                   ; $5751: $32
    ld [hl-], a                                   ; $5752: $32
    inc sp                                        ; $5753: $33
    inc sp                                        ; $5754: $33
    inc sp                                        ; $5755: $33
    inc sp                                        ; $5756: $33
    ld b, $06                                     ; $5757: $06 $06
    dec b                                         ; $5759: $05
    ld b, $05                                     ; $575a: $06 $05
    ld b, $06                                     ; $575c: $06 $06
    dec b                                         ; $575e: $05
    add d                                         ; $575f: $82
    add d                                         ; $5760: $82
    add d                                         ; $5761: $82
    add d                                         ; $5762: $82
    add d                                         ; $5763: $82
    add d                                         ; $5764: $82
    add d                                         ; $5765: $82
    add d                                         ; $5766: $82
    jp hl                                         ; $5767: $e9


    ld [$f3f2], a                                 ; $5768: $ea $f2 $f3
    db $ed                                        ; $576b: $ed
    push af                                       ; $576c: $f5
    or $f7                                        ; $576d: $f6 $f7

jr_085_576f:
    ld [hl-], a                                   ; $576f: $32
    ld [hl-], a                                   ; $5770: $32
    ld [hl-], a                                   ; $5771: $32
    ld [hl-], a                                   ; $5772: $32
    inc sp                                        ; $5773: $33
    inc sp                                        ; $5774: $33
    inc sp                                        ; $5775: $33
    inc sp                                        ; $5776: $33
    dec b                                         ; $5777: $05
    ld b, $06                                     ; $5778: $06 $06
    dec b                                         ; $577a: $05
    ld b, $06                                     ; $577b: $06 $06
    dec b                                         ; $577d: $05
    ld b, $82                                     ; $577e: $06 $82
    add d                                         ; $5780: $82
    add d                                         ; $5781: $82
    add d                                         ; $5782: $82
    add d                                         ; $5783: $82
    add d                                         ; $5784: $82
    add d                                         ; $5785: $82
    add d                                         ; $5786: $82
    jp hl                                         ; $5787: $e9


    ld [$4f61], a                                 ; $5788: $ea $61 $4f
    db $ed                                        ; $578b: $ed
    push af                                       ; $578c: $f5
    or $f7                                        ; $578d: $f6 $f7
    ld [hl-], a                                   ; $578f: $32
    ld [hl-], a                                   ; $5790: $32
    ld [hl-], a                                   ; $5791: $32
    ld [hl-], a                                   ; $5792: $32
    inc sp                                        ; $5793: $33
    inc sp                                        ; $5794: $33
    inc sp                                        ; $5795: $33
    inc sp                                        ; $5796: $33
    ld b, $06                                     ; $5797: $06 $06
    inc bc                                        ; $5799: $03
    inc b                                         ; $579a: $04
    dec b                                         ; $579b: $05
    ld b, $07                                     ; $579c: $06 $07
    rlca                                          ; $579e: $07
    add d                                         ; $579f: $82
    add d                                         ; $57a0: $82
    add d                                         ; $57a1: $82
    add d                                         ; $57a2: $82
    add d                                         ; $57a3: $82
    add d                                         ; $57a4: $82
    add d                                         ; $57a5: $82
    add d                                         ; $57a6: $82
    ld d, b                                       ; $57a7: $50
    ld d, c                                       ; $57a8: $51
    ld e, b                                       ; $57a9: $58
    ld e, c                                       ; $57aa: $59
    db $ed                                        ; $57ab: $ed
    push af                                       ; $57ac: $f5
    or $f7                                        ; $57ad: $f6 $f7
    ld [hl-], a                                   ; $57af: $32
    ld [hl-], a                                   ; $57b0: $32
    ld [hl-], a                                   ; $57b1: $32
    dec d                                         ; $57b2: $15
    inc sp                                        ; $57b3: $33
    inc sp                                        ; $57b4: $33
    inc sp                                        ; $57b5: $33
    ld l, $03                                     ; $57b6: $2e $03
    inc bc                                        ; $57b8: $03
    inc b                                         ; $57b9: $04
    inc bc                                        ; $57ba: $03
    rlca                                          ; $57bb: $07
    rlca                                          ; $57bc: $07
    rlca                                          ; $57bd: $07
    rlca                                          ; $57be: $07
    add d                                         ; $57bf: $82
    add d                                         ; $57c0: $82
    add d                                         ; $57c1: $82
    and d                                         ; $57c2: $a2
    add d                                         ; $57c3: $82
    add d                                         ; $57c4: $82
    add d                                         ; $57c5: $82
    and d                                         ; $57c6: $a2
    dec sp                                        ; $57c7: $3b
    inc a                                         ; $57c8: $3c
    dec a                                         ; $57c9: $3d
    dec [hl]                                      ; $57ca: $35
    ccf                                           ; $57cb: $3f
    ld b, b                                       ; $57cc: $40
    ld b, c                                       ; $57cd: $41
    jr c, jr_085_5822                             ; $57ce: $38 $52

    ld d, e                                       ; $57d0: $53
    ld d, h                                       ; $57d1: $54
    ld c, c                                       ; $57d2: $49
    ld d, l                                       ; $57d3: $55
    ld d, [hl]                                    ; $57d4: $56
    ld d, a                                       ; $57d5: $57
    ld c, h                                       ; $57d6: $4c
    add e                                         ; $57d7: $83
    add e                                         ; $57d8: $83
    add h                                         ; $57d9: $84
    add e                                         ; $57da: $83
    inc bc                                        ; $57db: $03
    inc bc                                        ; $57dc: $03
    inc bc                                        ; $57dd: $03
    inc b                                         ; $57de: $04
    inc bc                                        ; $57df: $03
    inc b                                         ; $57e0: $04
    inc bc                                        ; $57e1: $03
    inc b                                         ; $57e2: $04
    inc bc                                        ; $57e3: $03
    inc bc                                        ; $57e4: $03
    inc b                                         ; $57e5: $04
    inc bc                                        ; $57e6: $03
    ld [hl], $3a                                  ; $57e7: $36 $3a
    dec sp                                        ; $57e9: $3b
    inc a                                         ; $57ea: $3c
    add hl, sp                                    ; $57eb: $39
    ld a, $3f                                     ; $57ec: $3e $3f
    ld b, b                                       ; $57ee: $40
    ld c, d                                       ; $57ef: $4a
    ld c, e                                       ; $57f0: $4b
    ld d, d                                       ; $57f1: $52
    ld d, e                                       ; $57f2: $53
    ld c, l                                       ; $57f3: $4d
    ld c, [hl]                                    ; $57f4: $4e
    ld d, l                                       ; $57f5: $55
    ld d, [hl]                                    ; $57f6: $56
    add e                                         ; $57f7: $83
    add h                                         ; $57f8: $84
    add e                                         ; $57f9: $83
    add h                                         ; $57fa: $84
    inc b                                         ; $57fb: $04
    inc bc                                        ; $57fc: $03
    inc bc                                        ; $57fd: $03
    inc bc                                        ; $57fe: $03
    inc b                                         ; $57ff: $04
    inc bc                                        ; $5800: $03
    inc bc                                        ; $5801: $03
    inc b                                         ; $5802: $04
    inc bc                                        ; $5803: $03
    inc b                                         ; $5804: $04
    inc bc                                        ; $5805: $03
    inc bc                                        ; $5806: $03
    dec a                                         ; $5807: $3d
    dec [hl]                                      ; $5808: $35
    ld [hl], $3a                                  ; $5809: $36 $3a
    ld b, c                                       ; $580b: $41
    jr c, jr_085_5847                             ; $580c: $38 $39

    ld a, $54                                     ; $580e: $3e $54
    ld c, c                                       ; $5810: $49
    ld c, d                                       ; $5811: $4a
    ld c, e                                       ; $5812: $4b
    ld d, a                                       ; $5813: $57
    ld c, h                                       ; $5814: $4c
    ld c, l                                       ; $5815: $4d
    ld c, [hl]                                    ; $5816: $4e
    add h                                         ; $5817: $84
    add h                                         ; $5818: $84
    add e                                         ; $5819: $83
    add h                                         ; $581a: $84
    inc bc                                        ; $581b: $03
    inc bc                                        ; $581c: $03
    inc b                                         ; $581d: $04
    inc bc                                        ; $581e: $03
    inc b                                         ; $581f: $04
    inc b                                         ; $5820: $04
    inc b                                         ; $5821: $04

jr_085_5822:
    inc bc                                        ; $5822: $03
    inc b                                         ; $5823: $04
    inc bc                                        ; $5824: $03
    inc b                                         ; $5825: $04
    inc bc                                        ; $5826: $03
    dec sp                                        ; $5827: $3b
    inc a                                         ; $5828: $3c
    dec a                                         ; $5829: $3d
    ld b, d                                       ; $582a: $42
    ccf                                           ; $582b: $3f
    ld b, b                                       ; $582c: $40
    ld b, c                                       ; $582d: $41
    ld b, e                                       ; $582e: $43
    ld d, d                                       ; $582f: $52
    ld d, e                                       ; $5830: $53
    ld d, h                                       ; $5831: $54
    ld h, e                                       ; $5832: $63
    ld d, l                                       ; $5833: $55
    ld d, [hl]                                    ; $5834: $56
    ld d, a                                       ; $5835: $57
    ld h, h                                       ; $5836: $64
    add h                                         ; $5837: $84
    add e                                         ; $5838: $83
    add e                                         ; $5839: $83
    add e                                         ; $583a: $83
    inc bc                                        ; $583b: $03
    inc bc                                        ; $583c: $03
    inc b                                         ; $583d: $04
    inc bc                                        ; $583e: $03
    inc b                                         ; $583f: $04
    inc b                                         ; $5840: $04
    inc bc                                        ; $5841: $03
    inc bc                                        ; $5842: $03
    inc b                                         ; $5843: $04
    inc bc                                        ; $5844: $03
    inc bc                                        ; $5845: $03
    inc bc                                        ; $5846: $03

jr_085_5847:
    db $fd                                        ; $5847: $fd
    ld c, $0f                                     ; $5848: $0e $0f
    db $10                                        ; $584a: $10
    ld bc, $1312                                  ; $584b: $01 $12 $13
    inc d                                         ; $584e: $14
    ld [hl-], a                                   ; $584f: $32
    ld [hl-], a                                   ; $5850: $32
    ld [hl-], a                                   ; $5851: $32
    ld [hl-], a                                   ; $5852: $32
    inc sp                                        ; $5853: $33
    inc sp                                        ; $5854: $33
    inc sp                                        ; $5855: $33
    inc sp                                        ; $5856: $33
    ld b, $06                                     ; $5857: $06 $06
    dec b                                         ; $5859: $05
    dec b                                         ; $585a: $05
    dec b                                         ; $585b: $05
    ld b, $06                                     ; $585c: $06 $06
    ld b, $82                                     ; $585e: $06 $82
    add d                                         ; $5860: $82
    add d                                         ; $5861: $82
    add d                                         ; $5862: $82
    add d                                         ; $5863: $82
    add d                                         ; $5864: $82
    add d                                         ; $5865: $82
    add d                                         ; $5866: $82
    db $fd                                        ; $5867: $fd
    ld c, $0f                                     ; $5868: $0e $0f
    db $10                                        ; $586a: $10
    ld bc, $1312                                  ; $586b: $01 $12 $13
    inc d                                         ; $586e: $14
    ld [hl-], a                                   ; $586f: $32
    ld [hl-], a                                   ; $5870: $32
    ld [hl-], a                                   ; $5871: $32
    ld [hl-], a                                   ; $5872: $32
    inc sp                                        ; $5873: $33
    inc sp                                        ; $5874: $33
    inc sp                                        ; $5875: $33
    inc sp                                        ; $5876: $33
    dec b                                         ; $5877: $05
    ld b, $06                                     ; $5878: $06 $06
    ld b, $06                                     ; $587a: $06 $06
    dec b                                         ; $587c: $05
    dec b                                         ; $587d: $05
    ld b, $82                                     ; $587e: $06 $82
    add d                                         ; $5880: $82
    add d                                         ; $5881: $82
    add d                                         ; $5882: $82
    add d                                         ; $5883: $82
    add d                                         ; $5884: $82
    add d                                         ; $5885: $82
    add d                                         ; $5886: $82
    dec a                                         ; $5887: $3d
    dec [hl]                                      ; $5888: $35
    ld [hl], $3a                                  ; $5889: $36 $3a
    ld b, c                                       ; $588b: $41
    jr c, jr_085_58c7                             ; $588c: $38 $39

    ld a, $54                                     ; $588e: $3e $54
    ld c, c                                       ; $5890: $49
    ld c, d                                       ; $5891: $4a
    ld c, e                                       ; $5892: $4b
    ld d, a                                       ; $5893: $57
    ld c, h                                       ; $5894: $4c
    ld c, l                                       ; $5895: $4d
    ld c, [hl]                                    ; $5896: $4e
    add e                                         ; $5897: $83
    add e                                         ; $5898: $83
    add h                                         ; $5899: $84
    add e                                         ; $589a: $83
    inc bc                                        ; $589b: $03
    inc bc                                        ; $589c: $03
    inc b                                         ; $589d: $04
    inc bc                                        ; $589e: $03
    inc bc                                        ; $589f: $03
    inc b                                         ; $58a0: $04
    inc bc                                        ; $58a1: $03
    inc bc                                        ; $58a2: $03
    inc bc                                        ; $58a3: $03
    inc b                                         ; $58a4: $04
    inc bc                                        ; $58a5: $03
    inc bc                                        ; $58a6: $03
    dec sp                                        ; $58a7: $3b
    inc a                                         ; $58a8: $3c
    dec a                                         ; $58a9: $3d
    dec [hl]                                      ; $58aa: $35
    ccf                                           ; $58ab: $3f
    ld b, b                                       ; $58ac: $40
    ld b, c                                       ; $58ad: $41
    jr c, @+$54                                   ; $58ae: $38 $52

    ld d, e                                       ; $58b0: $53
    ld d, h                                       ; $58b1: $54
    ld c, c                                       ; $58b2: $49
    ld d, l                                       ; $58b3: $55
    ld d, [hl]                                    ; $58b4: $56
    ld d, a                                       ; $58b5: $57
    ld c, h                                       ; $58b6: $4c
    add e                                         ; $58b7: $83
    add h                                         ; $58b8: $84
    add e                                         ; $58b9: $83
    add e                                         ; $58ba: $83
    inc bc                                        ; $58bb: $03
    inc bc                                        ; $58bc: $03
    inc bc                                        ; $58bd: $03
    inc b                                         ; $58be: $04
    inc b                                         ; $58bf: $04
    inc bc                                        ; $58c0: $03
    inc b                                         ; $58c1: $04
    inc b                                         ; $58c2: $04
    inc bc                                        ; $58c3: $03
    inc bc                                        ; $58c4: $03
    inc b                                         ; $58c5: $04
    inc bc                                        ; $58c6: $03

jr_085_58c7:
    ld e, d                                       ; $58c7: $5a
    ld c, a                                       ; $58c8: $4f
    ld d, b                                       ; $58c9: $50
    ld d, c                                       ; $58ca: $51
    db $ed                                        ; $58cb: $ed
    push af                                       ; $58cc: $f5
    or $f7                                        ; $58cd: $f6 $f7
    db $fd                                        ; $58cf: $fd
    ld c, $0f                                     ; $58d0: $0e $0f
    db $10                                        ; $58d2: $10
    ld bc, $1312                                  ; $58d3: $01 $12 $13
    inc d                                         ; $58d6: $14
    inc b                                         ; $58d7: $04
    inc bc                                        ; $58d8: $03
    inc b                                         ; $58d9: $04
    inc bc                                        ; $58da: $03
    rlca                                          ; $58db: $07
    rlca                                          ; $58dc: $07
    rlca                                          ; $58dd: $07
    rlca                                          ; $58de: $07
    ld b, $05                                     ; $58df: $06 $05
    ld b, $06                                     ; $58e1: $06 $06
    ld b, $06                                     ; $58e3: $06 $06
    dec b                                         ; $58e5: $05
    ld b, $58                                     ; $58e6: $06 $58
    ld e, c                                       ; $58e8: $59
    ld e, d                                       ; $58e9: $5a
    ld c, a                                       ; $58ea: $4f
    db $ed                                        ; $58eb: $ed
    push af                                       ; $58ec: $f5
    or $f7                                        ; $58ed: $f6 $f7
    db $fd                                        ; $58ef: $fd
    ld c, $0f                                     ; $58f0: $0e $0f
    db $10                                        ; $58f2: $10
    ld bc, $1312                                  ; $58f3: $01 $12 $13
    inc d                                         ; $58f6: $14
    inc b                                         ; $58f7: $04
    inc b                                         ; $58f8: $04
    inc b                                         ; $58f9: $04
    inc bc                                        ; $58fa: $03
    rlca                                          ; $58fb: $07
    rlca                                          ; $58fc: $07
    rlca                                          ; $58fd: $07
    rlca                                          ; $58fe: $07
    ld b, $05                                     ; $58ff: $06 $05
    ld b, $05                                     ; $5901: $06 $05
    dec b                                         ; $5903: $05
    dec b                                         ; $5904: $05
    dec b                                         ; $5905: $05
    dec b                                         ; $5906: $05
    dec b                                         ; $5907: $05
    ld b, $07                                     ; $5908: $06 $07
    ld [$0a09], sp                                ; $590a: $08 $09 $0a
    dec bc                                        ; $590d: $0b
    inc c                                         ; $590e: $0c
    rra                                           ; $590f: $1f
    jr nz, jr_085_5933                            ; $5910: $20 $21

    ld [hl+], a                                   ; $5912: $22
    inc hl                                        ; $5913: $23
    inc h                                         ; $5914: $24
    dec h                                         ; $5915: $25
    ld h, $05                                     ; $5916: $26 $05
    ld b, $06                                     ; $5918: $06 $06
    dec b                                         ; $591a: $05
    rlca                                          ; $591b: $07
    ld b, $05                                     ; $591c: $06 $05
    ld b, $07                                     ; $591e: $06 $07
    ld b, $05                                     ; $5920: $06 $05
    ld b, $07                                     ; $5922: $06 $07
    ld b, $06                                     ; $5924: $06 $06
    ld b, $05                                     ; $5926: $06 $05
    ld b, $07                                     ; $5928: $06 $07
    ld [$0a09], sp                                ; $592a: $08 $09 $0a
    dec bc                                        ; $592d: $0b
    inc c                                         ; $592e: $0c
    rra                                           ; $592f: $1f
    jr nz, jr_085_5953                            ; $5930: $20 $21

    ld [hl+], a                                   ; $5932: $22

jr_085_5933:
    inc hl                                        ; $5933: $23
    inc h                                         ; $5934: $24
    dec h                                         ; $5935: $25
    ld h, $06                                     ; $5936: $26 $06
    dec b                                         ; $5938: $05
    ld b, $05                                     ; $5939: $06 $05
    ld b, $06                                     ; $593b: $06 $06
    dec b                                         ; $593d: $05
    dec b                                         ; $593e: $05
    dec b                                         ; $593f: $05
    ld b, $06                                     ; $5940: $06 $06
    ld b, $06                                     ; $5942: $06 $06
    ld b, $06                                     ; $5944: $06 $06
    dec b                                         ; $5946: $05
    ld bc, $1312                                  ; $5947: $01 $12 $13
    inc d                                         ; $594a: $14
    dec b                                         ; $594b: $05
    ld b, $07                                     ; $594c: $06 $07
    ld [$0a09], sp                                ; $594e: $08 $09 $0a
    dec bc                                        ; $5951: $0b
    inc c                                         ; $5952: $0c

jr_085_5953:
    rra                                           ; $5953: $1f
    jr nz, jr_085_5977                            ; $5954: $20 $21

    ld [hl+], a                                   ; $5956: $22
    rlca                                          ; $5957: $07
    rlca                                          ; $5958: $07
    rlca                                          ; $5959: $07
    rlca                                          ; $595a: $07
    rlca                                          ; $595b: $07
    rlca                                          ; $595c: $07
    rlca                                          ; $595d: $07
    rlca                                          ; $595e: $07
    rlca                                          ; $595f: $07
    rlca                                          ; $5960: $07
    rlca                                          ; $5961: $07
    rlca                                          ; $5962: $07
    rlca                                          ; $5963: $07
    rlca                                          ; $5964: $07
    rlca                                          ; $5965: $07
    rlca                                          ; $5966: $07
    inc hl                                        ; $5967: $23
    inc h                                         ; $5968: $24
    dec h                                         ; $5969: $25
    ld h, $27                                     ; $596a: $26 $27
    jr z, jr_085_5997                             ; $596c: $28 $29

    ld a, [hl+]                                   ; $596e: $2a
    push hl                                       ; $596f: $e5
    and $e7                                       ; $5970: $e6 $e7
    add sp, -$17                                  ; $5972: $e8 $e9
    ld [$f3f2], a                                 ; $5974: $ea $f2 $f3

jr_085_5977:
    rlca                                          ; $5977: $07
    rlca                                          ; $5978: $07
    rlca                                          ; $5979: $07
    rlca                                          ; $597a: $07
    rlca                                          ; $597b: $07
    rlca                                          ; $597c: $07
    rlca                                          ; $597d: $07
    rlca                                          ; $597e: $07
    rlca                                          ; $597f: $07
    rlca                                          ; $5980: $07
    rlca                                          ; $5981: $07
    rlca                                          ; $5982: $07
    rlca                                          ; $5983: $07
    rlca                                          ; $5984: $07
    rlca                                          ; $5985: $07
    rlca                                          ; $5986: $07
    inc hl                                        ; $5987: $23
    inc h                                         ; $5988: $24
    dec h                                         ; $5989: $25
    ld h, $15                                     ; $598a: $26 $15
    ld [hl-], a                                   ; $598c: $32
    ld [hl-], a                                   ; $598d: $32
    ld [hl-], a                                   ; $598e: $32
    ld l, $33                                     ; $598f: $2e $33
    inc sp                                        ; $5991: $33
    inc sp                                        ; $5992: $33
    cpl                                           ; $5993: $2f
    ld [hl], $3a                                  ; $5994: $36 $3a
    dec sp                                        ; $5996: $3b

jr_085_5997:
    rlca                                          ; $5997: $07
    rlca                                          ; $5998: $07
    rlca                                          ; $5999: $07
    rlca                                          ; $599a: $07
    rlca                                          ; $599b: $07
    rlca                                          ; $599c: $07
    rlca                                          ; $599d: $07
    rlca                                          ; $599e: $07
    rlca                                          ; $599f: $07
    rlca                                          ; $59a0: $07
    rlca                                          ; $59a1: $07
    rlca                                          ; $59a2: $07
    rlca                                          ; $59a3: $07
    rlca                                          ; $59a4: $07
    rlca                                          ; $59a5: $07
    rlca                                          ; $59a6: $07
    jr nc, jr_085_59e2                            ; $59a7: $30 $39

    ld a, $3f                                     ; $59a9: $3e $3f
    ld b, h                                       ; $59ab: $44
    ld c, d                                       ; $59ac: $4a
    ld c, e                                       ; $59ad: $4b
    ld d, d                                       ; $59ae: $52
    ld b, l                                       ; $59af: $45
    ld c, l                                       ; $59b0: $4d
    ld c, [hl]                                    ; $59b1: $4e
    ld d, l                                       ; $59b2: $55
    ld b, [hl]                                    ; $59b3: $46
    ld d, b                                       ; $59b4: $50
    ld d, c                                       ; $59b5: $51
    ld e, b                                       ; $59b6: $58
    rlca                                          ; $59b7: $07
    rlca                                          ; $59b8: $07
    rlca                                          ; $59b9: $07
    rlca                                          ; $59ba: $07
    rlca                                          ; $59bb: $07
    rlca                                          ; $59bc: $07
    rlca                                          ; $59bd: $07
    rlca                                          ; $59be: $07
    rlca                                          ; $59bf: $07
    rlca                                          ; $59c0: $07
    rlca                                          ; $59c1: $07
    rlca                                          ; $59c2: $07
    rlca                                          ; $59c3: $07
    rlca                                          ; $59c4: $07
    rlca                                          ; $59c5: $07
    rlca                                          ; $59c6: $07
    add hl, bc                                    ; $59c7: $09
    ld a, [bc]                                    ; $59c8: $0a
    dec bc                                        ; $59c9: $0b
    inc c                                         ; $59ca: $0c
    rra                                           ; $59cb: $1f
    jr nz, jr_085_59ef                            ; $59cc: $20 $21

    ld [hl+], a                                   ; $59ce: $22
    ld [hl-], a                                   ; $59cf: $32
    ld [hl-], a                                   ; $59d0: $32
    ld [hl-], a                                   ; $59d1: $32
    ld [hl-], a                                   ; $59d2: $32
    inc sp                                        ; $59d3: $33
    inc sp                                        ; $59d4: $33
    inc sp                                        ; $59d5: $33
    inc sp                                        ; $59d6: $33
    rlca                                          ; $59d7: $07
    rlca                                          ; $59d8: $07
    rlca                                          ; $59d9: $07
    rlca                                          ; $59da: $07
    rlca                                          ; $59db: $07
    rlca                                          ; $59dc: $07
    rlca                                          ; $59dd: $07
    rlca                                          ; $59de: $07
    rlca                                          ; $59df: $07
    rlca                                          ; $59e0: $07
    rlca                                          ; $59e1: $07

jr_085_59e2:
    rlca                                          ; $59e2: $07
    rlca                                          ; $59e3: $07
    rlca                                          ; $59e4: $07
    rlca                                          ; $59e5: $07
    rlca                                          ; $59e6: $07
    add hl, bc                                    ; $59e7: $09
    ld a, [bc]                                    ; $59e8: $0a
    dec bc                                        ; $59e9: $0b
    inc c                                         ; $59ea: $0c
    rra                                           ; $59eb: $1f
    jr nz, jr_085_5a0f                            ; $59ec: $20 $21

    ld [hl+], a                                   ; $59ee: $22

jr_085_59ef:
    ld [hl-], a                                   ; $59ef: $32
    ld [hl-], a                                   ; $59f0: $32
    ld [hl-], a                                   ; $59f1: $32
    dec d                                         ; $59f2: $15
    inc sp                                        ; $59f3: $33
    inc sp                                        ; $59f4: $33
    ld b, a                                       ; $59f5: $47
    ld d, $07                                     ; $59f6: $16 $07
    rlca                                          ; $59f8: $07
    rlca                                          ; $59f9: $07
    rlca                                          ; $59fa: $07
    rlca                                          ; $59fb: $07
    rlca                                          ; $59fc: $07
    rlca                                          ; $59fd: $07
    rlca                                          ; $59fe: $07
    rlca                                          ; $59ff: $07
    rlca                                          ; $5a00: $07
    rlca                                          ; $5a01: $07
    daa                                           ; $5a02: $27
    rlca                                          ; $5a03: $07
    rlca                                          ; $5a04: $07
    daa                                           ; $5a05: $27
    daa                                           ; $5a06: $27
    ld bc, $1312                                  ; $5a07: $01 $12 $13
    ld b, h                                       ; $5a0a: $44
    dec b                                         ; $5a0b: $05
    ld b, $07                                     ; $5a0c: $06 $07
    ld b, l                                       ; $5a0e: $45

jr_085_5a0f:
    add hl, bc                                    ; $5a0f: $09
    ld a, [bc]                                    ; $5a10: $0a
    dec bc                                        ; $5a11: $0b
    ld b, [hl]                                    ; $5a12: $46
    rra                                           ; $5a13: $1f
    jr nz, jr_085_5a37                            ; $5a14: $20 $21

    ld [hl+], a                                   ; $5a16: $22
    rlca                                          ; $5a17: $07
    rlca                                          ; $5a18: $07
    rlca                                          ; $5a19: $07
    rlca                                          ; $5a1a: $07
    rlca                                          ; $5a1b: $07
    rlca                                          ; $5a1c: $07
    rlca                                          ; $5a1d: $07
    rlca                                          ; $5a1e: $07
    rlca                                          ; $5a1f: $07
    rlca                                          ; $5a20: $07
    rlca                                          ; $5a21: $07
    rlca                                          ; $5a22: $07
    rlca                                          ; $5a23: $07
    rlca                                          ; $5a24: $07
    rlca                                          ; $5a25: $07
    rlca                                          ; $5a26: $07
    ld c, d                                       ; $5a27: $4a
    ld c, e                                       ; $5a28: $4b
    ld d, d                                       ; $5a29: $52
    ld d, e                                       ; $5a2a: $53
    ld c, l                                       ; $5a2b: $4d
    ld c, [hl]                                    ; $5a2c: $4e
    ld d, l                                       ; $5a2d: $55
    ld d, [hl]                                    ; $5a2e: $56
    ld d, b                                       ; $5a2f: $50
    ld d, c                                       ; $5a30: $51
    ld e, b                                       ; $5a31: $58
    ld e, c                                       ; $5a32: $59
    rra                                           ; $5a33: $1f
    jr nz, jr_085_5a57                            ; $5a34: $20 $21

    ld [hl+], a                                   ; $5a36: $22

jr_085_5a37:
    rlca                                          ; $5a37: $07
    rlca                                          ; $5a38: $07
    rlca                                          ; $5a39: $07
    rlca                                          ; $5a3a: $07
    rlca                                          ; $5a3b: $07
    rlca                                          ; $5a3c: $07
    rlca                                          ; $5a3d: $07
    rlca                                          ; $5a3e: $07
    rlca                                          ; $5a3f: $07
    rlca                                          ; $5a40: $07
    rlca                                          ; $5a41: $07
    rlca                                          ; $5a42: $07
    rlca                                          ; $5a43: $07
    rlca                                          ; $5a44: $07
    rlca                                          ; $5a45: $07
    rlca                                          ; $5a46: $07
    ld d, h                                       ; $5a47: $54
    ld c, c                                       ; $5a48: $49
    ld c, d                                       ; $5a49: $4a
    ld c, e                                       ; $5a4a: $4b
    ld d, a                                       ; $5a4b: $57
    ld c, h                                       ; $5a4c: $4c
    ld c, l                                       ; $5a4d: $4d
    ld c, [hl]                                    ; $5a4e: $4e
    ld e, d                                       ; $5a4f: $5a
    ld c, a                                       ; $5a50: $4f
    ld d, b                                       ; $5a51: $50
    ld d, c                                       ; $5a52: $51
    rra                                           ; $5a53: $1f
    jr nz, jr_085_5a77                            ; $5a54: $20 $21

    ld [hl+], a                                   ; $5a56: $22

jr_085_5a57:
    rlca                                          ; $5a57: $07
    rlca                                          ; $5a58: $07
    rlca                                          ; $5a59: $07
    rlca                                          ; $5a5a: $07
    rlca                                          ; $5a5b: $07
    rlca                                          ; $5a5c: $07
    rlca                                          ; $5a5d: $07
    rlca                                          ; $5a5e: $07
    rlca                                          ; $5a5f: $07
    rlca                                          ; $5a60: $07
    rlca                                          ; $5a61: $07
    rlca                                          ; $5a62: $07
    rlca                                          ; $5a63: $07
    rlca                                          ; $5a64: $07
    rlca                                          ; $5a65: $07
    rlca                                          ; $5a66: $07
    ld d, d                                       ; $5a67: $52
    ld d, e                                       ; $5a68: $53
    halt                                          ; $5a69: $76
    ld d, c                                       ; $5a6a: $51
    ld d, l                                       ; $5a6b: $55
    ld d, [hl]                                    ; $5a6c: $56
    ld [hl], a                                    ; $5a6d: $77
    add sp, $58                                   ; $5a6e: $e8 $58
    ld e, c                                       ; $5a70: $59
    halt                                          ; $5a71: $76
    di                                            ; $5a72: $f3
    rra                                           ; $5a73: $1f
    jr nz, @+$79                                  ; $5a74: $20 $77

    rst $30                                       ; $5a76: $f7

jr_085_5a77:
    rlca                                          ; $5a77: $07
    rlca                                          ; $5a78: $07
    ld [bc], a                                    ; $5a79: $02
    inc b                                         ; $5a7a: $04
    rlca                                          ; $5a7b: $07
    rlca                                          ; $5a7c: $07
    ld [bc], a                                    ; $5a7d: $02
    rlca                                          ; $5a7e: $07
    rlca                                          ; $5a7f: $07
    rlca                                          ; $5a80: $07
    ld [bc], a                                    ; $5a81: $02
    rlca                                          ; $5a82: $07
    rlca                                          ; $5a83: $07
    rlca                                          ; $5a84: $07
    ld [bc], a                                    ; $5a85: $02
    rlca                                          ; $5a86: $07
    inc hl                                        ; $5a87: $23
    inc h                                         ; $5a88: $24
    dec h                                         ; $5a89: $25
    ld h, $32                                     ; $5a8a: $26 $32
    ld [hl-], a                                   ; $5a8c: $32
    ld [hl-], a                                   ; $5a8d: $32
    ld [hl-], a                                   ; $5a8e: $32
    inc sp                                        ; $5a8f: $33
    inc sp                                        ; $5a90: $33
    inc sp                                        ; $5a91: $33
    inc sp                                        ; $5a92: $33
    inc a                                         ; $5a93: $3c
    dec a                                         ; $5a94: $3d
    dec [hl]                                      ; $5a95: $35
    ld [hl], $07                                  ; $5a96: $36 $07
    rlca                                          ; $5a98: $07
    rlca                                          ; $5a99: $07
    rlca                                          ; $5a9a: $07
    rlca                                          ; $5a9b: $07
    rlca                                          ; $5a9c: $07
    rlca                                          ; $5a9d: $07
    rlca                                          ; $5a9e: $07
    rlca                                          ; $5a9f: $07
    rlca                                          ; $5aa0: $07
    rlca                                          ; $5aa1: $07
    rlca                                          ; $5aa2: $07
    rlca                                          ; $5aa3: $07
    rlca                                          ; $5aa4: $07
    rlca                                          ; $5aa5: $07
    rlca                                          ; $5aa6: $07
    inc hl                                        ; $5aa7: $23
    inc h                                         ; $5aa8: $24
    dec h                                         ; $5aa9: $25
    ld h, $32                                     ; $5aaa: $26 $32
    ld [hl-], a                                   ; $5aac: $32
    dec d                                         ; $5aad: $15
    ld a, [hl+]                                   ; $5aae: $2a
    inc sp                                        ; $5aaf: $33
    ld b, a                                       ; $5ab0: $47
    ld d, $e8                                     ; $5ab1: $16 $e8
    ld a, [hl-]                                   ; $5ab3: $3a
    ld d, $16                                     ; $5ab4: $16 $16
    di                                            ; $5ab6: $f3
    rlca                                          ; $5ab7: $07
    rlca                                          ; $5ab8: $07
    rlca                                          ; $5ab9: $07
    rlca                                          ; $5aba: $07
    rlca                                          ; $5abb: $07
    rlca                                          ; $5abc: $07
    daa                                           ; $5abd: $27
    rlca                                          ; $5abe: $07
    rlca                                          ; $5abf: $07
    daa                                           ; $5ac0: $27
    daa                                           ; $5ac1: $27
    rlca                                          ; $5ac2: $07
    rlca                                          ; $5ac3: $07
    rlca                                          ; $5ac4: $07
    daa                                           ; $5ac5: $27
    rlca                                          ; $5ac6: $07
    inc hl                                        ; $5ac7: $23
    inc h                                         ; $5ac8: $24
    dec h                                         ; $5ac9: $25
    ld h, $27                                     ; $5aca: $26 $27
    jr z, jr_085_5af7                             ; $5acc: $28 $29

    ld a, [hl+]                                   ; $5ace: $2a
    push hl                                       ; $5acf: $e5
    and $78                                       ; $5ad0: $e6 $78
    ld a, c                                       ; $5ad2: $79
    jp hl                                         ; $5ad3: $e9


    ld [$7d7c], a                                 ; $5ad4: $ea $7c $7d
    rlca                                          ; $5ad7: $07
    rlca                                          ; $5ad8: $07
    rlca                                          ; $5ad9: $07
    rlca                                          ; $5ada: $07
    rlca                                          ; $5adb: $07
    rlca                                          ; $5adc: $07
    rlca                                          ; $5add: $07
    rlca                                          ; $5ade: $07
    rlca                                          ; $5adf: $07
    rlca                                          ; $5ae0: $07
    rlca                                          ; $5ae1: $07
    rlca                                          ; $5ae2: $07
    rlca                                          ; $5ae3: $07
    rlca                                          ; $5ae4: $07
    rlca                                          ; $5ae5: $07
    rlca                                          ; $5ae6: $07
    inc hl                                        ; $5ae7: $23
    inc h                                         ; $5ae8: $24
    halt                                          ; $5ae9: $76
    db $10                                        ; $5aea: $10
    daa                                           ; $5aeb: $27
    jr z, jr_085_5b65                             ; $5aec: $28 $77

    inc d                                         ; $5aee: $14
    ld a, d                                       ; $5aef: $7a
    ld a, c                                       ; $5af0: $79
    halt                                          ; $5af1: $76
    ld [$7d7e], sp                                ; $5af2: $08 $7e $7d
    ld [hl], a                                    ; $5af5: $77
    inc c                                         ; $5af6: $0c

jr_085_5af7:
    rlca                                          ; $5af7: $07
    rlca                                          ; $5af8: $07
    ld [bc], a                                    ; $5af9: $02
    rlca                                          ; $5afa: $07
    rlca                                          ; $5afb: $07
    rlca                                          ; $5afc: $07
    ld [bc], a                                    ; $5afd: $02
    rlca                                          ; $5afe: $07
    rlca                                          ; $5aff: $07
    rlca                                          ; $5b00: $07
    ld [bc], a                                    ; $5b01: $02
    rlca                                          ; $5b02: $07
    rlca                                          ; $5b03: $07
    rlca                                          ; $5b04: $07
    ld [bc], a                                    ; $5b05: $02
    rlca                                          ; $5b06: $07
    ld a, $16                                     ; $5b07: $3e $16
    ld d, $f7                                     ; $5b09: $16 $f7
    ld c, e                                       ; $5b0b: $4b
    ld d, $16                                     ; $5b0c: $16 $16
    db $10                                        ; $5b0e: $10
    ld c, [hl]                                    ; $5b0f: $4e
    ld d, $16                                     ; $5b10: $16 $16
    inc d                                         ; $5b12: $14
    ld d, c                                       ; $5b13: $51
    ld d, $16                                     ; $5b14: $16 $16
    ld [$0707], sp                                ; $5b16: $08 $07 $07
    daa                                           ; $5b19: $27
    rlca                                          ; $5b1a: $07
    rlca                                          ; $5b1b: $07
    rlca                                          ; $5b1c: $07
    daa                                           ; $5b1d: $27
    rlca                                          ; $5b1e: $07
    rlca                                          ; $5b1f: $07
    rlca                                          ; $5b20: $07
    daa                                           ; $5b21: $27
    rlca                                          ; $5b22: $07
    rlca                                          ; $5b23: $07
    rlca                                          ; $5b24: $07
    daa                                           ; $5b25: $27
    rlca                                          ; $5b26: $07
    db $ed                                        ; $5b27: $ed
    push af                                       ; $5b28: $f5
    add b                                         ; $5b29: $80
    add c                                         ; $5b2a: $81
    db $fd                                        ; $5b2b: $fd
    ld c, $84                                     ; $5b2c: $0e $84
    add l                                         ; $5b2e: $85
    ld bc, $8812                                  ; $5b2f: $01 $12 $88
    adc c                                         ; $5b32: $89
    dec b                                         ; $5b33: $05
    ld b, $07                                     ; $5b34: $06 $07
    ld [$0707], sp                                ; $5b36: $08 $07 $07
    rrca                                          ; $5b39: $0f
    rrca                                          ; $5b3a: $0f
    rlca                                          ; $5b3b: $07
    rlca                                          ; $5b3c: $07
    rrca                                          ; $5b3d: $0f
    rrca                                          ; $5b3e: $0f
    rlca                                          ; $5b3f: $07
    rlca                                          ; $5b40: $07
    rrca                                          ; $5b41: $0f
    rrca                                          ; $5b42: $0f
    rlca                                          ; $5b43: $07
    rlca                                          ; $5b44: $07
    rlca                                          ; $5b45: $07
    rlca                                          ; $5b46: $07
    add d                                         ; $5b47: $82
    add c                                         ; $5b48: $81
    halt                                          ; $5b49: $76
    ld [hl+], a                                   ; $5b4a: $22
    add [hl]                                      ; $5b4b: $86
    add l                                         ; $5b4c: $85
    ld [hl], a                                    ; $5b4d: $77
    ld h, $8a                                     ; $5b4e: $26 $8a
    adc c                                         ; $5b50: $89
    halt                                          ; $5b51: $76
    ld a, [hl+]                                   ; $5b52: $2a
    dec b                                         ; $5b53: $05
    ld b, $77                                     ; $5b54: $06 $77
    add sp, $0f                                   ; $5b56: $e8 $0f
    rrca                                          ; $5b58: $0f
    ld [bc], a                                    ; $5b59: $02
    rlca                                          ; $5b5a: $07
    rrca                                          ; $5b5b: $0f
    rrca                                          ; $5b5c: $0f
    ld [bc], a                                    ; $5b5d: $02
    rlca                                          ; $5b5e: $07
    rrca                                          ; $5b5f: $0f
    rrca                                          ; $5b60: $0f
    ld [bc], a                                    ; $5b61: $02
    rlca                                          ; $5b62: $07
    rlca                                          ; $5b63: $07
    rlca                                          ; $5b64: $07

jr_085_5b65:
    ld [bc], a                                    ; $5b65: $02
    rlca                                          ; $5b66: $07
    add hl, bc                                    ; $5b67: $09
    ld d, $16                                     ; $5b68: $16 $16
    inc c                                         ; $5b6a: $0c
    rra                                           ; $5b6b: $1f
    ld d, $16                                     ; $5b6c: $16 $16
    ld [hl+], a                                   ; $5b6e: $22
    inc hl                                        ; $5b6f: $23
    ld d, $16                                     ; $5b70: $16 $16
    ld h, $27                                     ; $5b72: $26 $27
    ld d, $16                                     ; $5b74: $16 $16
    ld a, [hl+]                                   ; $5b76: $2a
    rlca                                          ; $5b77: $07
    rlca                                          ; $5b78: $07
    daa                                           ; $5b79: $27
    rlca                                          ; $5b7a: $07
    rlca                                          ; $5b7b: $07
    rlca                                          ; $5b7c: $07
    daa                                           ; $5b7d: $27
    rlca                                          ; $5b7e: $07
    rlca                                          ; $5b7f: $07
    rlca                                          ; $5b80: $07
    daa                                           ; $5b81: $27
    rlca                                          ; $5b82: $07
    rlca                                          ; $5b83: $07
    rlca                                          ; $5b84: $07
    daa                                           ; $5b85: $27
    rlca                                          ; $5b86: $07
    add hl, bc                                    ; $5b87: $09
    ld a, [bc]                                    ; $5b88: $0a
    halt                                          ; $5b89: $76
    di                                            ; $5b8a: $f3
    rra                                           ; $5b8b: $1f
    jr nz, jr_085_5c05                            ; $5b8c: $20 $77

    rst $30                                       ; $5b8e: $f7
    inc hl                                        ; $5b8f: $23
    inc h                                         ; $5b90: $24
    halt                                          ; $5b91: $76
    db $10                                        ; $5b92: $10
    daa                                           ; $5b93: $27
    jr z, @+$79                                   ; $5b94: $28 $77

    inc d                                         ; $5b96: $14
    rlca                                          ; $5b97: $07
    rlca                                          ; $5b98: $07
    ld [bc], a                                    ; $5b99: $02
    rlca                                          ; $5b9a: $07
    rlca                                          ; $5b9b: $07
    rlca                                          ; $5b9c: $07
    ld [bc], a                                    ; $5b9d: $02
    rlca                                          ; $5b9e: $07
    rlca                                          ; $5b9f: $07
    rlca                                          ; $5ba0: $07
    ld [bc], a                                    ; $5ba1: $02
    rlca                                          ; $5ba2: $07
    rlca                                          ; $5ba3: $07
    rlca                                          ; $5ba4: $07
    ld [bc], a                                    ; $5ba5: $02
    rlca                                          ; $5ba6: $07
    ld e, b                                       ; $5ba7: $58
    ld e, c                                       ; $5ba8: $59
    ld e, d                                       ; $5ba9: $5a
    ld c, a                                       ; $5baa: $4f
    push hl                                       ; $5bab: $e5
    and $e7                                       ; $5bac: $e6 $e7
    add sp, -$17                                  ; $5bae: $e8 $e9
    ld [$f3f2], a                                 ; $5bb0: $ea $f2 $f3
    db $ed                                        ; $5bb3: $ed
    push af                                       ; $5bb4: $f5
    or $f7                                        ; $5bb5: $f6 $f7
    inc bc                                        ; $5bb7: $03
    inc bc                                        ; $5bb8: $03
    inc bc                                        ; $5bb9: $03
    inc b                                         ; $5bba: $04
    rlca                                          ; $5bbb: $07
    rlca                                          ; $5bbc: $07
    rlca                                          ; $5bbd: $07
    rlca                                          ; $5bbe: $07
    ld b, $05                                     ; $5bbf: $06 $05
    dec b                                         ; $5bc1: $05
    ld b, $05                                     ; $5bc2: $06 $05
    dec b                                         ; $5bc4: $05
    ld b, $06                                     ; $5bc5: $06 $06
    ld d, b                                       ; $5bc7: $50
    ld d, c                                       ; $5bc8: $51
    ld e, b                                       ; $5bc9: $58
    ld e, c                                       ; $5bca: $59
    push hl                                       ; $5bcb: $e5
    and $e7                                       ; $5bcc: $e6 $e7
    add sp, -$17                                  ; $5bce: $e8 $e9
    ld [$f3f2], a                                 ; $5bd0: $ea $f2 $f3
    db $ed                                        ; $5bd3: $ed
    push af                                       ; $5bd4: $f5
    or $f7                                        ; $5bd5: $f6 $f7
    inc b                                         ; $5bd7: $04
    inc bc                                        ; $5bd8: $03
    inc b                                         ; $5bd9: $04
    inc b                                         ; $5bda: $04
    rlca                                          ; $5bdb: $07
    rlca                                          ; $5bdc: $07
    rlca                                          ; $5bdd: $07
    rlca                                          ; $5bde: $07
    ld b, $05                                     ; $5bdf: $06 $05
    ld b, $06                                     ; $5be1: $06 $06
    dec b                                         ; $5be3: $05
    ld b, $06                                     ; $5be4: $06 $06
    dec b                                         ; $5be6: $05
    ld e, d                                       ; $5be7: $5a
    ld c, a                                       ; $5be8: $4f
    ld d, b                                       ; $5be9: $50
    ld d, c                                       ; $5bea: $51
    push hl                                       ; $5beb: $e5
    and $e7                                       ; $5bec: $e6 $e7
    add sp, -$17                                  ; $5bee: $e8 $e9
    ld [$3215], a                                 ; $5bf0: $ea $15 $32
    db $ed                                        ; $5bf3: $ed
    push af                                       ; $5bf4: $f5
    ld l, $33                                     ; $5bf5: $2e $33
    inc bc                                        ; $5bf7: $03
    inc bc                                        ; $5bf8: $03
    inc bc                                        ; $5bf9: $03
    inc b                                         ; $5bfa: $04
    rlca                                          ; $5bfb: $07
    rlca                                          ; $5bfc: $07
    rlca                                          ; $5bfd: $07
    rlca                                          ; $5bfe: $07
    dec b                                         ; $5bff: $05
    dec b                                         ; $5c00: $05
    add d                                         ; $5c01: $82
    add d                                         ; $5c02: $82
    ld b, $06                                     ; $5c03: $06 $06

jr_085_5c05:
    add d                                         ; $5c05: $82
    add d                                         ; $5c06: $82
    ld e, b                                       ; $5c07: $58
    ld e, c                                       ; $5c08: $59
    ld e, d                                       ; $5c09: $5a
    ld h, l                                       ; $5c0a: $65
    push hl                                       ; $5c0b: $e5
    and $e7                                       ; $5c0c: $e6 $e7
    add sp, $32                                   ; $5c0e: $e8 $32
    ld [hl-], a                                   ; $5c10: $32
    ld [hl-], a                                   ; $5c11: $32
    ld [hl-], a                                   ; $5c12: $32
    inc sp                                        ; $5c13: $33
    inc sp                                        ; $5c14: $33
    inc sp                                        ; $5c15: $33
    inc sp                                        ; $5c16: $33
    inc bc                                        ; $5c17: $03
    inc b                                         ; $5c18: $04
    inc bc                                        ; $5c19: $03
    inc bc                                        ; $5c1a: $03
    rlca                                          ; $5c1b: $07
    rlca                                          ; $5c1c: $07
    rlca                                          ; $5c1d: $07
    rlca                                          ; $5c1e: $07
    add d                                         ; $5c1f: $82
    add d                                         ; $5c20: $82
    add d                                         ; $5c21: $82
    add d                                         ; $5c22: $82
    add d                                         ; $5c23: $82
    add d                                         ; $5c24: $82
    add d                                         ; $5c25: $82
    add d                                         ; $5c26: $82
    db $fd                                        ; $5c27: $fd
    ld c, $0f                                     ; $5c28: $0e $0f
    db $10                                        ; $5c2a: $10
    ld bc, $1312                                  ; $5c2b: $01 $12 $13
    inc d                                         ; $5c2e: $14
    dec b                                         ; $5c2f: $05
    ld b, $07                                     ; $5c30: $06 $07
    ld [$0a09], sp                                ; $5c32: $08 $09 $0a
    dec bc                                        ; $5c35: $0b
    inc c                                         ; $5c36: $0c
    ld b, $06                                     ; $5c37: $06 $06
    dec b                                         ; $5c39: $05
    ld b, $06                                     ; $5c3a: $06 $06
    dec b                                         ; $5c3c: $05
    ld b, $06                                     ; $5c3d: $06 $06
    ld b, $05                                     ; $5c3f: $06 $05
    ld b, $05                                     ; $5c41: $06 $05
    ld b, $06                                     ; $5c43: $06 $06
    ld b, $06                                     ; $5c45: $06 $06
    db $fd                                        ; $5c47: $fd
    ld c, $0f                                     ; $5c48: $0e $0f
    db $10                                        ; $5c4a: $10
    ld bc, $1312                                  ; $5c4b: $01 $12 $13
    inc d                                         ; $5c4e: $14
    dec b                                         ; $5c4f: $05
    ld b, $07                                     ; $5c50: $06 $07
    ld [$0a09], sp                                ; $5c52: $08 $09 $0a
    dec bc                                        ; $5c55: $0b
    inc c                                         ; $5c56: $0c
    ld b, $06                                     ; $5c57: $06 $06
    dec b                                         ; $5c59: $05
    ld b, $06                                     ; $5c5a: $06 $06
    ld b, $06                                     ; $5c5c: $06 $06
    ld b, $06                                     ; $5c5e: $06 $06
    ld b, $06                                     ; $5c60: $06 $06
    dec b                                         ; $5c62: $05
    dec b                                         ; $5c63: $05
    ld b, $06                                     ; $5c64: $06 $06
    ld b, $fd                                     ; $5c66: $06 $fd
    ld c, $2f                                     ; $5c68: $0e $2f
    dec [hl]                                      ; $5c6a: $35
    ld bc, $3012                                  ; $5c6b: $01 $12 $30
    jr c, jr_085_5c75                             ; $5c6e: $38 $05

    ld b, $44                                     ; $5c70: $06 $44
    ld c, c                                       ; $5c72: $49
    add hl, bc                                    ; $5c73: $09
    ld a, [bc]                                    ; $5c74: $0a

jr_085_5c75:
    ld b, l                                       ; $5c75: $45
    ld c, h                                       ; $5c76: $4c
    ld b, $06                                     ; $5c77: $06 $06
    add h                                         ; $5c79: $84
    add e                                         ; $5c7a: $83
    ld b, $06                                     ; $5c7b: $06 $06
    inc bc                                        ; $5c7d: $03
    inc bc                                        ; $5c7e: $03
    ld b, $06                                     ; $5c7f: $06 $06
    inc b                                         ; $5c81: $04
    inc bc                                        ; $5c82: $03
    dec b                                         ; $5c83: $05
    ld b, $04                                     ; $5c84: $06 $04
    inc bc                                        ; $5c86: $03
    ld [hl], $3a                                  ; $5c87: $36 $3a
    dec sp                                        ; $5c89: $3b
    inc a                                         ; $5c8a: $3c
    add hl, sp                                    ; $5c8b: $39
    ld a, $3f                                     ; $5c8c: $3e $3f
    ld b, b                                       ; $5c8e: $40
    ld c, d                                       ; $5c8f: $4a
    ld c, e                                       ; $5c90: $4b
    ld d, d                                       ; $5c91: $52
    ld d, e                                       ; $5c92: $53
    ld c, l                                       ; $5c93: $4d
    ld c, [hl]                                    ; $5c94: $4e
    ld d, l                                       ; $5c95: $55
    ld d, [hl]                                    ; $5c96: $56
    add e                                         ; $5c97: $83
    add h                                         ; $5c98: $84
    add e                                         ; $5c99: $83
    add e                                         ; $5c9a: $83
    inc b                                         ; $5c9b: $04
    inc b                                         ; $5c9c: $04
    inc bc                                        ; $5c9d: $03
    inc b                                         ; $5c9e: $04
    inc b                                         ; $5c9f: $04
    inc b                                         ; $5ca0: $04
    inc b                                         ; $5ca1: $04
    inc b                                         ; $5ca2: $04
    inc bc                                        ; $5ca3: $03
    inc b                                         ; $5ca4: $04
    inc bc                                        ; $5ca5: $03
    inc bc                                        ; $5ca6: $03
    rra                                           ; $5ca7: $1f
    jr nz, jr_085_5ccb                            ; $5ca8: $20 $21

    ld [hl+], a                                   ; $5caa: $22
    inc hl                                        ; $5cab: $23
    inc h                                         ; $5cac: $24
    dec h                                         ; $5cad: $25
    ld h, $27                                     ; $5cae: $26 $27
    jr z, jr_085_5cdb                             ; $5cb0: $28 $29

    ld a, [hl+]                                   ; $5cb2: $2a
    push hl                                       ; $5cb3: $e5
    and $e7                                       ; $5cb4: $e6 $e7
    add sp, $06                                   ; $5cb6: $e8 $06
    dec b                                         ; $5cb8: $05
    ld b, $06                                     ; $5cb9: $06 $06
    ld b, $06                                     ; $5cbb: $06 $06
    dec b                                         ; $5cbd: $05
    dec b                                         ; $5cbe: $05
    dec b                                         ; $5cbf: $05
    ld b, $06                                     ; $5cc0: $06 $06
    ld b, $06                                     ; $5cc2: $06 $06
    dec b                                         ; $5cc4: $05
    ld b, $06                                     ; $5cc5: $06 $06
    rra                                           ; $5cc7: $1f
    jr nz, jr_085_5ceb                            ; $5cc8: $20 $21

    ld [hl+], a                                   ; $5cca: $22

jr_085_5ccb:
    inc hl                                        ; $5ccb: $23
    inc h                                         ; $5ccc: $24
    dec h                                         ; $5ccd: $25
    ld h, $27                                     ; $5cce: $26 $27
    jr z, jr_085_5cfb                             ; $5cd0: $28 $29

    ld a, [hl+]                                   ; $5cd2: $2a
    push hl                                       ; $5cd3: $e5
    and $e7                                       ; $5cd4: $e6 $e7
    add sp, $06                                   ; $5cd6: $e8 $06
    dec b                                         ; $5cd8: $05
    dec b                                         ; $5cd9: $05
    dec b                                         ; $5cda: $05

jr_085_5cdb:
    ld b, $06                                     ; $5cdb: $06 $06
    ld b, $06                                     ; $5cdd: $06 $06
    dec b                                         ; $5cdf: $05
    ld b, $05                                     ; $5ce0: $06 $05
    dec b                                         ; $5ce2: $05
    ld b, $05                                     ; $5ce3: $06 $05
    ld b, $06                                     ; $5ce5: $06 $06
    rra                                           ; $5ce7: $1f
    jr nz, jr_085_5d30                            ; $5ce8: $20 $46

    ld c, a                                       ; $5cea: $4f

jr_085_5ceb:
    inc hl                                        ; $5ceb: $23
    inc h                                         ; $5cec: $24
    dec h                                         ; $5ced: $25
    ld h, $27                                     ; $5cee: $26 $27
    jr z, jr_085_5d1b                             ; $5cf0: $28 $29

    ld a, [hl+]                                   ; $5cf2: $2a
    dec d                                         ; $5cf3: $15
    ld [hl-], a                                   ; $5cf4: $32
    ld [hl-], a                                   ; $5cf5: $32
    ld [hl-], a                                   ; $5cf6: $32
    ld b, $05                                     ; $5cf7: $06 $05
    inc bc                                        ; $5cf9: $03
    inc bc                                        ; $5cfa: $03

jr_085_5cfb:
    ld b, $06                                     ; $5cfb: $06 $06
    rlca                                          ; $5cfd: $07
    rlca                                          ; $5cfe: $07
    dec b                                         ; $5cff: $05
    ld b, $05                                     ; $5d00: $06 $05
    ld b, $82                                     ; $5d02: $06 $82
    add d                                         ; $5d04: $82
    add d                                         ; $5d05: $82
    add d                                         ; $5d06: $82
    ld d, b                                       ; $5d07: $50
    ld d, c                                       ; $5d08: $51
    ld e, b                                       ; $5d09: $58
    ld e, c                                       ; $5d0a: $59
    inc hl                                        ; $5d0b: $23
    inc h                                         ; $5d0c: $24
    dec h                                         ; $5d0d: $25
    ld h, $27                                     ; $5d0e: $26 $27
    jr z, @+$2b                                   ; $5d10: $28 $29

    ld a, [hl+]                                   ; $5d12: $2a
    ld [hl-], a                                   ; $5d13: $32
    ld [hl-], a                                   ; $5d14: $32
    ld [hl-], a                                   ; $5d15: $32
    ld [hl-], a                                   ; $5d16: $32
    inc bc                                        ; $5d17: $03
    inc b                                         ; $5d18: $04
    inc b                                         ; $5d19: $04
    inc bc                                        ; $5d1a: $03

jr_085_5d1b:
    rlca                                          ; $5d1b: $07
    rlca                                          ; $5d1c: $07
    rlca                                          ; $5d1d: $07
    rlca                                          ; $5d1e: $07
    dec b                                         ; $5d1f: $05
    dec b                                         ; $5d20: $05
    ld b, $05                                     ; $5d21: $06 $05
    add d                                         ; $5d23: $82
    add d                                         ; $5d24: $82
    add d                                         ; $5d25: $82
    add d                                         ; $5d26: $82
    jp hl                                         ; $5d27: $e9


    ld [$f3f2], a                                 ; $5d28: $ea $f2 $f3
    db $ed                                        ; $5d2b: $ed
    push af                                       ; $5d2c: $f5
    or $f7                                        ; $5d2d: $f6 $f7
    db $fd                                        ; $5d2f: $fd

jr_085_5d30:
    ld c, $0f                                     ; $5d30: $0e $0f
    db $10                                        ; $5d32: $10
    ld bc, $1312                                  ; $5d33: $01 $12 $13
    inc d                                         ; $5d36: $14
    ld b, $06                                     ; $5d37: $06 $06
    dec b                                         ; $5d39: $05
    ld b, $06                                     ; $5d3a: $06 $06
    ld b, $05                                     ; $5d3c: $06 $05
    ld b, $06                                     ; $5d3e: $06 $06
    ld b, $06                                     ; $5d40: $06 $06
    ld b, $05                                     ; $5d42: $06 $05
    ld b, $06                                     ; $5d44: $06 $06
    dec b                                         ; $5d46: $05
    jp hl                                         ; $5d47: $e9


    ld [$f3f2], a                                 ; $5d48: $ea $f2 $f3
    db $ed                                        ; $5d4b: $ed
    push af                                       ; $5d4c: $f5
    or $f7                                        ; $5d4d: $f6 $f7
    db $fd                                        ; $5d4f: $fd
    ld c, $0f                                     ; $5d50: $0e $0f
    db $10                                        ; $5d52: $10
    ld bc, $1312                                  ; $5d53: $01 $12 $13
    inc d                                         ; $5d56: $14
    ld b, $06                                     ; $5d57: $06 $06
    ld b, $06                                     ; $5d59: $06 $06
    dec b                                         ; $5d5b: $05
    dec b                                         ; $5d5c: $05
    dec b                                         ; $5d5d: $05
    ld b, $06                                     ; $5d5e: $06 $06
    ld b, $05                                     ; $5d60: $06 $05
    dec b                                         ; $5d62: $05
    ld b, $06                                     ; $5d63: $06 $06
    dec b                                         ; $5d65: $05
    ld b, $16                                     ; $5d66: $06 $16
    ld b, a                                       ; $5d68: $47
    inc sp                                        ; $5d69: $33
    inc sp                                        ; $5d6a: $33
    ld d, $16                                     ; $5d6b: $16 $16
    dec sp                                        ; $5d6d: $3b
    inc a                                         ; $5d6e: $3c
    ld d, $16                                     ; $5d6f: $16 $16
    ccf                                           ; $5d71: $3f
    ld b, b                                       ; $5d72: $40
    ld d, $16                                     ; $5d73: $16 $16
    ld d, d                                       ; $5d75: $52
    ld d, e                                       ; $5d76: $53
    add d                                         ; $5d77: $82
    add d                                         ; $5d78: $82
    add d                                         ; $5d79: $82
    add d                                         ; $5d7a: $82
    add d                                         ; $5d7b: $82
    and d                                         ; $5d7c: $a2
    add h                                         ; $5d7d: $84
    add e                                         ; $5d7e: $83
    add d                                         ; $5d7f: $82
    and d                                         ; $5d80: $a2
    inc b                                         ; $5d81: $04
    inc bc                                        ; $5d82: $03
    add d                                         ; $5d83: $82
    and d                                         ; $5d84: $a2
    inc bc                                        ; $5d85: $03
    inc b                                         ; $5d86: $04
    inc sp                                        ; $5d87: $33
    inc sp                                        ; $5d88: $33
    inc sp                                        ; $5d89: $33
    inc sp                                        ; $5d8a: $33
    dec a                                         ; $5d8b: $3d
    dec [hl]                                      ; $5d8c: $35
    ld [hl], $3a                                  ; $5d8d: $36 $3a
    ld b, c                                       ; $5d8f: $41
    jr c, jr_085_5dcb                             ; $5d90: $38 $39

    ld a, $54                                     ; $5d92: $3e $54
    ld c, c                                       ; $5d94: $49
    ld c, d                                       ; $5d95: $4a
    ld c, e                                       ; $5d96: $4b
    add d                                         ; $5d97: $82
    add d                                         ; $5d98: $82
    add d                                         ; $5d99: $82
    add d                                         ; $5d9a: $82
    add e                                         ; $5d9b: $83
    add h                                         ; $5d9c: $84
    add h                                         ; $5d9d: $84
    add e                                         ; $5d9e: $83
    inc bc                                        ; $5d9f: $03
    inc bc                                        ; $5da0: $03
    inc b                                         ; $5da1: $04
    inc b                                         ; $5da2: $04
    inc b                                         ; $5da3: $04
    inc bc                                        ; $5da4: $03
    inc bc                                        ; $5da5: $03
    inc bc                                        ; $5da6: $03
    daa                                           ; $5da7: $27
    jr z, jr_085_5dd3                             ; $5da8: $28 $29

    ld a, [hl+]                                   ; $5daa: $2a
    push hl                                       ; $5dab: $e5
    and $e7                                       ; $5dac: $e6 $e7
    add sp, $32                                   ; $5dae: $e8 $32
    ld [hl-], a                                   ; $5db0: $32
    ld [hl-], a                                   ; $5db1: $32
    ld [hl-], a                                   ; $5db2: $32
    inc sp                                        ; $5db3: $33
    inc sp                                        ; $5db4: $33
    inc sp                                        ; $5db5: $33
    inc sp                                        ; $5db6: $33
    rlca                                          ; $5db7: $07
    dec b                                         ; $5db8: $05
    ld b, $06                                     ; $5db9: $06 $06
    rlca                                          ; $5dbb: $07
    ld b, $05                                     ; $5dbc: $06 $05
    dec b                                         ; $5dbe: $05
    add d                                         ; $5dbf: $82
    add d                                         ; $5dc0: $82
    add d                                         ; $5dc1: $82
    add d                                         ; $5dc2: $82
    add d                                         ; $5dc3: $82
    add d                                         ; $5dc4: $82
    add d                                         ; $5dc5: $82
    add d                                         ; $5dc6: $82
    daa                                           ; $5dc7: $27
    jr z, jr_085_5df3                             ; $5dc8: $28 $29

    ld a, [hl+]                                   ; $5dca: $2a

jr_085_5dcb:
    push hl                                       ; $5dcb: $e5
    and $e7                                       ; $5dcc: $e6 $e7
    add sp, $32                                   ; $5dce: $e8 $32
    ld [hl-], a                                   ; $5dd0: $32
    ld [hl-], a                                   ; $5dd1: $32
    ld [hl-], a                                   ; $5dd2: $32

jr_085_5dd3:
    inc sp                                        ; $5dd3: $33
    inc sp                                        ; $5dd4: $33
    inc sp                                        ; $5dd5: $33
    inc sp                                        ; $5dd6: $33
    ld b, $05                                     ; $5dd7: $06 $05
    ld b, $06                                     ; $5dd9: $06 $06
    ld b, $06                                     ; $5ddb: $06 $06
    ld b, $05                                     ; $5ddd: $06 $05
    add d                                         ; $5ddf: $82
    add d                                         ; $5de0: $82
    add d                                         ; $5de1: $82
    add d                                         ; $5de2: $82
    add d                                         ; $5de3: $82
    add d                                         ; $5de4: $82
    add d                                         ; $5de5: $82
    add d                                         ; $5de6: $82
    dec a                                         ; $5de7: $3d
    dec [hl]                                      ; $5de8: $35
    ld [hl], $3a                                  ; $5de9: $36 $3a
    ld b, c                                       ; $5deb: $41
    jr c, jr_085_5e27                             ; $5dec: $38 $39

    ld a, $54                                     ; $5dee: $3e $54
    ld c, c                                       ; $5df0: $49
    ld c, d                                       ; $5df1: $4a
    ld c, e                                       ; $5df2: $4b

jr_085_5df3:
    ld d, a                                       ; $5df3: $57
    ld c, h                                       ; $5df4: $4c
    ld c, l                                       ; $5df5: $4d
    ld c, [hl]                                    ; $5df6: $4e
    add e                                         ; $5df7: $83
    add h                                         ; $5df8: $84
    add e                                         ; $5df9: $83
    add h                                         ; $5dfa: $84
    inc b                                         ; $5dfb: $04
    inc bc                                        ; $5dfc: $03
    inc bc                                        ; $5dfd: $03
    inc b                                         ; $5dfe: $04
    inc bc                                        ; $5dff: $03
    inc b                                         ; $5e00: $04
    inc b                                         ; $5e01: $04
    inc bc                                        ; $5e02: $03
    inc bc                                        ; $5e03: $03
    inc bc                                        ; $5e04: $03
    inc b                                         ; $5e05: $04
    inc b                                         ; $5e06: $04
    dec sp                                        ; $5e07: $3b
    inc a                                         ; $5e08: $3c
    dec a                                         ; $5e09: $3d
    dec [hl]                                      ; $5e0a: $35
    ccf                                           ; $5e0b: $3f
    ld b, b                                       ; $5e0c: $40
    ld b, c                                       ; $5e0d: $41
    jr c, @+$54                                   ; $5e0e: $38 $52

    ld d, e                                       ; $5e10: $53
    ld d, h                                       ; $5e11: $54
    ld c, c                                       ; $5e12: $49
    ld d, l                                       ; $5e13: $55
    ld d, [hl]                                    ; $5e14: $56
    ld d, a                                       ; $5e15: $57
    ld c, h                                       ; $5e16: $4c
    add e                                         ; $5e17: $83
    add h                                         ; $5e18: $84
    add h                                         ; $5e19: $84
    add e                                         ; $5e1a: $83
    inc bc                                        ; $5e1b: $03
    inc bc                                        ; $5e1c: $03
    inc b                                         ; $5e1d: $04
    inc b                                         ; $5e1e: $04
    inc b                                         ; $5e1f: $04
    inc b                                         ; $5e20: $04
    inc bc                                        ; $5e21: $03
    inc b                                         ; $5e22: $04
    inc bc                                        ; $5e23: $03
    inc bc                                        ; $5e24: $03
    inc bc                                        ; $5e25: $03
    inc b                                         ; $5e26: $04

jr_085_5e27:
    ld e, d                                       ; $5e27: $5a
    ld c, a                                       ; $5e28: $4f
    ld d, b                                       ; $5e29: $50
    ld d, c                                       ; $5e2a: $51
    inc hl                                        ; $5e2b: $23
    inc h                                         ; $5e2c: $24
    dec h                                         ; $5e2d: $25
    ld h, $27                                     ; $5e2e: $26 $27
    jr z, jr_085_5e5b                             ; $5e30: $28 $29

    ld a, [hl+]                                   ; $5e32: $2a
    ld [hl-], a                                   ; $5e33: $32
    ld [hl-], a                                   ; $5e34: $32
    ld [hl-], a                                   ; $5e35: $32
    ld [hl-], a                                   ; $5e36: $32
    inc b                                         ; $5e37: $04
    inc b                                         ; $5e38: $04
    inc b                                         ; $5e39: $04
    inc bc                                        ; $5e3a: $03
    rlca                                          ; $5e3b: $07
    rlca                                          ; $5e3c: $07
    rlca                                          ; $5e3d: $07
    rlca                                          ; $5e3e: $07
    dec b                                         ; $5e3f: $05
    dec b                                         ; $5e40: $05
    dec b                                         ; $5e41: $05
    ld b, $82                                     ; $5e42: $06 $82
    add d                                         ; $5e44: $82
    add d                                         ; $5e45: $82
    add d                                         ; $5e46: $82
    ld e, b                                       ; $5e47: $58
    ld e, c                                       ; $5e48: $59
    ld e, d                                       ; $5e49: $5a
    ld c, a                                       ; $5e4a: $4f
    inc hl                                        ; $5e4b: $23
    inc h                                         ; $5e4c: $24
    dec h                                         ; $5e4d: $25
    ld h, $27                                     ; $5e4e: $26 $27
    jr z, jr_085_5e7b                             ; $5e50: $28 $29

    ld a, [hl+]                                   ; $5e52: $2a
    ld [hl-], a                                   ; $5e53: $32
    ld [hl-], a                                   ; $5e54: $32
    ld [hl-], a                                   ; $5e55: $32
    ld [hl-], a                                   ; $5e56: $32
    inc bc                                        ; $5e57: $03
    inc b                                         ; $5e58: $04
    inc b                                         ; $5e59: $04
    inc bc                                        ; $5e5a: $03

jr_085_5e5b:
    rlca                                          ; $5e5b: $07
    rlca                                          ; $5e5c: $07
    rlca                                          ; $5e5d: $07
    rlca                                          ; $5e5e: $07
    ld b, $05                                     ; $5e5f: $06 $05
    ld b, $06                                     ; $5e61: $06 $06
    add d                                         ; $5e63: $82
    add d                                         ; $5e64: $82
    add d                                         ; $5e65: $82
    add d                                         ; $5e66: $82
    inc sp                                        ; $5e67: $33
    inc sp                                        ; $5e68: $33
    inc sp                                        ; $5e69: $33
    inc sp                                        ; $5e6a: $33
    dec sp                                        ; $5e6b: $3b
    inc a                                         ; $5e6c: $3c
    dec a                                         ; $5e6d: $3d
    dec [hl]                                      ; $5e6e: $35
    ccf                                           ; $5e6f: $3f
    ld b, b                                       ; $5e70: $40
    ld b, c                                       ; $5e71: $41
    jr c, jr_085_5ec6                             ; $5e72: $38 $52

    ld d, e                                       ; $5e74: $53
    ld d, h                                       ; $5e75: $54
    ld c, c                                       ; $5e76: $49
    add d                                         ; $5e77: $82
    add d                                         ; $5e78: $82
    add d                                         ; $5e79: $82
    add d                                         ; $5e7a: $82

jr_085_5e7b:
    add h                                         ; $5e7b: $84
    add e                                         ; $5e7c: $83
    add e                                         ; $5e7d: $83
    add h                                         ; $5e7e: $84
    inc bc                                        ; $5e7f: $03
    inc b                                         ; $5e80: $04
    inc bc                                        ; $5e81: $03
    inc bc                                        ; $5e82: $03
    inc bc                                        ; $5e83: $03
    inc bc                                        ; $5e84: $03
    inc b                                         ; $5e85: $04
    inc b                                         ; $5e86: $04
    inc sp                                        ; $5e87: $33
    inc sp                                        ; $5e88: $33
    inc sp                                        ; $5e89: $33
    inc sp                                        ; $5e8a: $33
    ld [hl], $3a                                  ; $5e8b: $36 $3a
    dec sp                                        ; $5e8d: $3b
    inc a                                         ; $5e8e: $3c
    add hl, sp                                    ; $5e8f: $39
    ld a, $3f                                     ; $5e90: $3e $3f
    ld b, b                                       ; $5e92: $40
    ld c, d                                       ; $5e93: $4a
    ld c, e                                       ; $5e94: $4b
    ld d, d                                       ; $5e95: $52
    ld d, e                                       ; $5e96: $53
    add d                                         ; $5e97: $82
    add d                                         ; $5e98: $82
    add d                                         ; $5e99: $82
    add d                                         ; $5e9a: $82
    add e                                         ; $5e9b: $83
    add e                                         ; $5e9c: $83
    add h                                         ; $5e9d: $84
    add e                                         ; $5e9e: $83
    inc b                                         ; $5e9f: $04
    inc bc                                        ; $5ea0: $03
    inc bc                                        ; $5ea1: $03
    inc b                                         ; $5ea2: $04
    inc b                                         ; $5ea3: $04
    inc b                                         ; $5ea4: $04
    inc bc                                        ; $5ea5: $03
    inc bc                                        ; $5ea6: $03
    dec [hl]                                      ; $5ea7: $35
    ld [hl], $3a                                  ; $5ea8: $36 $3a
    dec sp                                        ; $5eaa: $3b
    jr c, jr_085_5ee6                             ; $5eab: $38 $39

    ld a, $3f                                     ; $5ead: $3e $3f
    ld c, c                                       ; $5eaf: $49
    ld c, d                                       ; $5eb0: $4a
    ld c, e                                       ; $5eb1: $4b
    ld d, d                                       ; $5eb2: $52
    ld c, h                                       ; $5eb3: $4c
    ld c, l                                       ; $5eb4: $4d
    ld c, [hl]                                    ; $5eb5: $4e
    ld d, l                                       ; $5eb6: $55
    rlca                                          ; $5eb7: $07
    rlca                                          ; $5eb8: $07
    rlca                                          ; $5eb9: $07
    rlca                                          ; $5eba: $07
    rlca                                          ; $5ebb: $07
    rlca                                          ; $5ebc: $07
    rlca                                          ; $5ebd: $07
    rlca                                          ; $5ebe: $07
    rlca                                          ; $5ebf: $07
    rlca                                          ; $5ec0: $07
    rlca                                          ; $5ec1: $07
    rlca                                          ; $5ec2: $07
    rlca                                          ; $5ec3: $07
    rlca                                          ; $5ec4: $07
    rlca                                          ; $5ec5: $07

jr_085_5ec6:
    rlca                                          ; $5ec6: $07
    inc a                                         ; $5ec7: $3c
    dec a                                         ; $5ec8: $3d
    dec [hl]                                      ; $5ec9: $35
    ld [hl], $40                                  ; $5eca: $36 $40
    ld b, c                                       ; $5ecc: $41

Call_085_5ecd:
    jr c, jr_085_5f08                             ; $5ecd: $38 $39

    ld d, e                                       ; $5ecf: $53
    ld d, h                                       ; $5ed0: $54
    ld c, c                                       ; $5ed1: $49
    ld c, d                                       ; $5ed2: $4a
    ld d, [hl]                                    ; $5ed3: $56
    ld d, a                                       ; $5ed4: $57
    ld c, h                                       ; $5ed5: $4c
    ld c, l                                       ; $5ed6: $4d
    rlca                                          ; $5ed7: $07
    rlca                                          ; $5ed8: $07
    rlca                                          ; $5ed9: $07
    rlca                                          ; $5eda: $07
    rlca                                          ; $5edb: $07
    rlca                                          ; $5edc: $07
    rlca                                          ; $5edd: $07
    rlca                                          ; $5ede: $07
    rlca                                          ; $5edf: $07
    rlca                                          ; $5ee0: $07
    rlca                                          ; $5ee1: $07
    rlca                                          ; $5ee2: $07
    rlca                                          ; $5ee3: $07
    rlca                                          ; $5ee4: $07
    rlca                                          ; $5ee5: $07

jr_085_5ee6:
    rlca                                          ; $5ee6: $07
    ld a, [hl-]                                   ; $5ee7: $3a
    dec sp                                        ; $5ee8: $3b
    ld d, $16                                     ; $5ee9: $16 $16
    ld a, $3f                                     ; $5eeb: $3e $3f
    ld d, $16                                     ; $5eed: $16 $16
    ld c, e                                       ; $5eef: $4b
    ld d, d                                       ; $5ef0: $52
    ld d, $16                                     ; $5ef1: $16 $16
    ld c, [hl]                                    ; $5ef3: $4e
    ld d, l                                       ; $5ef4: $55
    ld l, $2e                                     ; $5ef5: $2e $2e
    rlca                                          ; $5ef7: $07
    rlca                                          ; $5ef8: $07
    rlca                                          ; $5ef9: $07
    daa                                           ; $5efa: $27
    rlca                                          ; $5efb: $07
    rlca                                          ; $5efc: $07
    rlca                                          ; $5efd: $07
    daa                                           ; $5efe: $27
    rlca                                          ; $5eff: $07
    rlca                                          ; $5f00: $07
    rlca                                          ; $5f01: $07
    daa                                           ; $5f02: $27
    rlca                                          ; $5f03: $07
    rlca                                          ; $5f04: $07
    rlca                                          ; $5f05: $07
    daa                                           ; $5f06: $27
    ld c, a                                       ; $5f07: $4f

jr_085_5f08:
    ld d, b                                       ; $5f08: $50
    ld d, c                                       ; $5f09: $51
    ld e, b                                       ; $5f0a: $58
    dec b                                         ; $5f0b: $05
    ld b, $07                                     ; $5f0c: $06 $07
    ld [$0a09], sp                                ; $5f0e: $08 $09 $0a
    dec bc                                        ; $5f11: $0b
    inc c                                         ; $5f12: $0c
    ld a, b                                       ; $5f13: $78
    ld a, c                                       ; $5f14: $79
    ld a, d                                       ; $5f15: $7a
    ld a, e                                       ; $5f16: $7b
    rlca                                          ; $5f17: $07
    rlca                                          ; $5f18: $07
    rlca                                          ; $5f19: $07
    rlca                                          ; $5f1a: $07
    rlca                                          ; $5f1b: $07
    rlca                                          ; $5f1c: $07
    rlca                                          ; $5f1d: $07
    rlca                                          ; $5f1e: $07
    rlca                                          ; $5f1f: $07
    rlca                                          ; $5f20: $07
    rlca                                          ; $5f21: $07
    rlca                                          ; $5f22: $07
    rlca                                          ; $5f23: $07
    rlca                                          ; $5f24: $07
    rlca                                          ; $5f25: $07
    rlca                                          ; $5f26: $07
    ld e, c                                       ; $5f27: $59
    ld e, d                                       ; $5f28: $5a
    ld c, a                                       ; $5f29: $4f
    ld d, b                                       ; $5f2a: $50
    dec b                                         ; $5f2b: $05
    ld b, $07                                     ; $5f2c: $06 $07
    ld [$0a09], sp                                ; $5f2e: $08 $09 $0a
    dec bc                                        ; $5f31: $0b
    inc c                                         ; $5f32: $0c
    rra                                           ; $5f33: $1f
    jr nz, jr_085_5f57                            ; $5f34: $20 $21

    ld [hl+], a                                   ; $5f36: $22
    rlca                                          ; $5f37: $07
    rlca                                          ; $5f38: $07
    rlca                                          ; $5f39: $07
    rlca                                          ; $5f3a: $07
    rlca                                          ; $5f3b: $07
    rlca                                          ; $5f3c: $07
    rlca                                          ; $5f3d: $07
    rlca                                          ; $5f3e: $07
    rlca                                          ; $5f3f: $07
    rlca                                          ; $5f40: $07
    rlca                                          ; $5f41: $07
    rlca                                          ; $5f42: $07
    rlca                                          ; $5f43: $07
    rlca                                          ; $5f44: $07
    rlca                                          ; $5f45: $07
    rlca                                          ; $5f46: $07
    ld d, c                                       ; $5f47: $51
    ld e, b                                       ; $5f48: $58
    cpl                                           ; $5f49: $2f
    ld b, d                                       ; $5f4a: $42
    dec b                                         ; $5f4b: $05
    ld b, $30                                     ; $5f4c: $06 $30
    ld b, e                                       ; $5f4e: $43
    add hl, bc                                    ; $5f4f: $09
    ld a, [bc]                                    ; $5f50: $0a
    ld b, h                                       ; $5f51: $44
    ld h, e                                       ; $5f52: $63
    rra                                           ; $5f53: $1f
    jr nz, jr_085_5f9b                            ; $5f54: $20 $45

    ld h, h                                       ; $5f56: $64

jr_085_5f57:
    rlca                                          ; $5f57: $07
    rlca                                          ; $5f58: $07
    rlca                                          ; $5f59: $07
    rlca                                          ; $5f5a: $07
    rlca                                          ; $5f5b: $07
    rlca                                          ; $5f5c: $07
    rlca                                          ; $5f5d: $07
    rlca                                          ; $5f5e: $07
    rlca                                          ; $5f5f: $07
    rlca                                          ; $5f60: $07
    rlca                                          ; $5f61: $07
    rlca                                          ; $5f62: $07
    rlca                                          ; $5f63: $07
    rlca                                          ; $5f64: $07
    rlca                                          ; $5f65: $07
    rlca                                          ; $5f66: $07
    ld a, h                                       ; $5f67: $7c
    ld a, l                                       ; $5f68: $7d
    ld a, [hl]                                    ; $5f69: $7e
    ld a, a                                       ; $5f6a: $7f
    add b                                         ; $5f6b: $80
    add c                                         ; $5f6c: $81
    add d                                         ; $5f6d: $82
    add e                                         ; $5f6e: $83
    add h                                         ; $5f6f: $84
    add l                                         ; $5f70: $85
    add [hl]                                      ; $5f71: $86
    add a                                         ; $5f72: $87
    adc b                                         ; $5f73: $88
    adc c                                         ; $5f74: $89
    adc d                                         ; $5f75: $8a
    adc e                                         ; $5f76: $8b
    rlca                                          ; $5f77: $07
    rlca                                          ; $5f78: $07
    rlca                                          ; $5f79: $07
    rlca                                          ; $5f7a: $07
    rrca                                          ; $5f7b: $0f
    rrca                                          ; $5f7c: $0f
    rrca                                          ; $5f7d: $0f
    rrca                                          ; $5f7e: $0f
    rrca                                          ; $5f7f: $0f
    rrca                                          ; $5f80: $0f
    rrca                                          ; $5f81: $0f
    rrca                                          ; $5f82: $0f
    rrca                                          ; $5f83: $0f
    rrca                                          ; $5f84: $0f
    rrca                                          ; $5f85: $0f
    rrca                                          ; $5f86: $0f
    inc hl                                        ; $5f87: $23
    inc h                                         ; $5f88: $24
    ld b, [hl]                                    ; $5f89: $46
    ld h, l                                       ; $5f8a: $65
    daa                                           ; $5f8b: $27
    jr z, jr_085_5fb7                             ; $5f8c: $28 $29

    ld a, [hl+]                                   ; $5f8e: $2a
    push hl                                       ; $5f8f: $e5
    and $e7                                       ; $5f90: $e6 $e7
    add sp, -$17                                  ; $5f92: $e8 $e9
    ld [$1515], a                                 ; $5f94: $ea $15 $15
    rlca                                          ; $5f97: $07
    rlca                                          ; $5f98: $07
    rlca                                          ; $5f99: $07
    rlca                                          ; $5f9a: $07

jr_085_5f9b:
    rlca                                          ; $5f9b: $07
    rlca                                          ; $5f9c: $07
    rlca                                          ; $5f9d: $07
    rlca                                          ; $5f9e: $07
    rlca                                          ; $5f9f: $07
    rlca                                          ; $5fa0: $07
    rlca                                          ; $5fa1: $07
    rlca                                          ; $5fa2: $07
    rlca                                          ; $5fa3: $07
    rlca                                          ; $5fa4: $07
    rlca                                          ; $5fa5: $07
    daa                                           ; $5fa6: $27
    db $ed                                        ; $5fa7: $ed
    push af                                       ; $5fa8: $f5
    or $f7                                        ; $5fa9: $f6 $f7
    db $fd                                        ; $5fab: $fd
    ld c, $78                                     ; $5fac: $0e $78
    ld a, c                                       ; $5fae: $79
    ld bc, $7c12                                  ; $5faf: $01 $12 $7c
    ld a, l                                       ; $5fb2: $7d
    dec b                                         ; $5fb3: $05
    ld b, $80                                     ; $5fb4: $06 $80
    add c                                         ; $5fb6: $81

jr_085_5fb7:
    rlca                                          ; $5fb7: $07
    rlca                                          ; $5fb8: $07
    rlca                                          ; $5fb9: $07
    rlca                                          ; $5fba: $07
    rlca                                          ; $5fbb: $07
    rlca                                          ; $5fbc: $07
    rlca                                          ; $5fbd: $07
    rlca                                          ; $5fbe: $07
    rlca                                          ; $5fbf: $07
    rlca                                          ; $5fc0: $07
    rlca                                          ; $5fc1: $07
    rlca                                          ; $5fc2: $07
    rlca                                          ; $5fc3: $07
    rlca                                          ; $5fc4: $07
    rrca                                          ; $5fc5: $0f
    rrca                                          ; $5fc6: $0f
    db $ed                                        ; $5fc7: $ed
    push af                                       ; $5fc8: $f5
    ld d, $16                                     ; $5fc9: $16 $16
    ld a, d                                       ; $5fcb: $7a
    ld a, e                                       ; $5fcc: $7b
    ld d, $16                                     ; $5fcd: $16 $16
    ld a, [hl]                                    ; $5fcf: $7e
    ld a, a                                       ; $5fd0: $7f
    ld d, $16                                     ; $5fd1: $16 $16
    add d                                         ; $5fd3: $82
    add e                                         ; $5fd4: $83
    ld d, $16                                     ; $5fd5: $16 $16
    rlca                                          ; $5fd7: $07
    rlca                                          ; $5fd8: $07
    rlca                                          ; $5fd9: $07
    daa                                           ; $5fda: $27
    rlca                                          ; $5fdb: $07
    rlca                                          ; $5fdc: $07
    rlca                                          ; $5fdd: $07
    daa                                           ; $5fde: $27
    rlca                                          ; $5fdf: $07
    rlca                                          ; $5fe0: $07
    rlca                                          ; $5fe1: $07
    daa                                           ; $5fe2: $27
    rrca                                          ; $5fe3: $0f
    rrca                                          ; $5fe4: $0f
    rlca                                          ; $5fe5: $07
    daa                                           ; $5fe6: $27
    push hl                                       ; $5fe7: $e5
    ld d, $16                                     ; $5fe8: $16 $16
    add sp, -$17                                  ; $5fea: $e8 $e9
    ld d, $16                                     ; $5fec: $16 $16
    di                                            ; $5fee: $f3
    db $ed                                        ; $5fef: $ed
    ld d, $16                                     ; $5ff0: $16 $16
    rst $30                                       ; $5ff2: $f7
    db $fd                                        ; $5ff3: $fd
    ld d, $16                                     ; $5ff4: $16 $16
    db $10                                        ; $5ff6: $10
    rlca                                          ; $5ff7: $07
    rlca                                          ; $5ff8: $07
    daa                                           ; $5ff9: $27
    rlca                                          ; $5ffa: $07
    rlca                                          ; $5ffb: $07
    rlca                                          ; $5ffc: $07
    daa                                           ; $5ffd: $27
    rlca                                          ; $5ffe: $07
    rlca                                          ; $5fff: $07
    rlca                                          ; $6000: $07
    daa                                           ; $6001: $27
    rlca                                          ; $6002: $07
    rlca                                          ; $6003: $07
    rlca                                          ; $6004: $07
    daa                                           ; $6005: $27
    rlca                                          ; $6006: $07
    push hl                                       ; $6007: $e5
    and $e7                                       ; $6008: $e6 $e7
    add sp, -$17                                  ; $600a: $e8 $e9
    ld [$7978], a                                 ; $600c: $ea $78 $79
    db $ed                                        ; $600f: $ed
    push af                                       ; $6010: $f5
    ld a, h                                       ; $6011: $7c
    ld a, l                                       ; $6012: $7d
    db $fd                                        ; $6013: $fd
    ld c, $80                                     ; $6014: $0e $80
    add c                                         ; $6016: $81
    rlca                                          ; $6017: $07
    rlca                                          ; $6018: $07
    rlca                                          ; $6019: $07
    rlca                                          ; $601a: $07
    rlca                                          ; $601b: $07
    rlca                                          ; $601c: $07
    rlca                                          ; $601d: $07
    rlca                                          ; $601e: $07
    rlca                                          ; $601f: $07
    rlca                                          ; $6020: $07
    rlca                                          ; $6021: $07
    rlca                                          ; $6022: $07
    rlca                                          ; $6023: $07
    rlca                                          ; $6024: $07
    rrca                                          ; $6025: $0f
    rrca                                          ; $6026: $0f
    push hl                                       ; $6027: $e5
    and $76                                       ; $6028: $e6 $76
    ld [$797a], sp                                ; $602a: $08 $7a $79
    ld [hl], a                                    ; $602d: $77
    inc c                                         ; $602e: $0c
    ld a, [hl]                                    ; $602f: $7e
    ld a, l                                       ; $6030: $7d
    halt                                          ; $6031: $76
    ld [hl+], a                                   ; $6032: $22
    add d                                         ; $6033: $82
    add c                                         ; $6034: $81
    ld [hl], a                                    ; $6035: $77
    ld h, $07                                     ; $6036: $26 $07
    rlca                                          ; $6038: $07
    ld [bc], a                                    ; $6039: $02
    rlca                                          ; $603a: $07
    rlca                                          ; $603b: $07
    rlca                                          ; $603c: $07
    ld [bc], a                                    ; $603d: $02
    rlca                                          ; $603e: $07
    rlca                                          ; $603f: $07
    rlca                                          ; $6040: $07
    ld [bc], a                                    ; $6041: $02
    rlca                                          ; $6042: $07
    rrca                                          ; $6043: $0f
    rrca                                          ; $6044: $0f
    ld [bc], a                                    ; $6045: $02
    rlca                                          ; $6046: $07
    ld bc, $1312                                  ; $6047: $01 $12 $13
    inc d                                         ; $604a: $14
    dec b                                         ; $604b: $05
    ld b, $15                                     ; $604c: $06 $15
    ld [hl-], a                                   ; $604e: $32
    add hl, bc                                    ; $604f: $09
    ld a, [bc]                                    ; $6050: $0a
    ld l, $33                                     ; $6051: $2e $33
    rra                                           ; $6053: $1f
    jr nz, jr_085_6085                            ; $6054: $20 $2f

    dec sp                                        ; $6056: $3b
    rlca                                          ; $6057: $07
    rlca                                          ; $6058: $07
    rlca                                          ; $6059: $07
    rlca                                          ; $605a: $07
    rlca                                          ; $605b: $07
    rlca                                          ; $605c: $07
    rlca                                          ; $605d: $07
    rlca                                          ; $605e: $07
    rlca                                          ; $605f: $07
    rlca                                          ; $6060: $07
    rlca                                          ; $6061: $07
    rlca                                          ; $6062: $07
    rlca                                          ; $6063: $07
    rlca                                          ; $6064: $07
    rlca                                          ; $6065: $07
    rlca                                          ; $6066: $07
    ld bc, $1616                                  ; $6067: $01 $16 $16
    inc d                                         ; $606a: $14
    ld [hl-], a                                   ; $606b: $32
    ld sp, $0816                                  ; $606c: $31 $16 $08
    inc sp                                        ; $606f: $33
    ld b, a                                       ; $6070: $47
    ld d, $0c                                     ; $6071: $16 $0c
    inc a                                         ; $6073: $3c
    ld d, $16                                     ; $6074: $16 $16
    ld [hl+], a                                   ; $6076: $22
    rlca                                          ; $6077: $07
    rlca                                          ; $6078: $07
    daa                                           ; $6079: $27
    rlca                                          ; $607a: $07
    rlca                                          ; $607b: $07
    daa                                           ; $607c: $27
    daa                                           ; $607d: $27
    rlca                                          ; $607e: $07
    rlca                                          ; $607f: $07
    daa                                           ; $6080: $27
    daa                                           ; $6081: $27
    rlca                                          ; $6082: $07
    rlca                                          ; $6083: $07
    rlca                                          ; $6084: $07

jr_085_6085:
    daa                                           ; $6085: $27
    rlca                                          ; $6086: $07
    ld bc, $8412                                  ; $6087: $01 $12 $84
    add l                                         ; $608a: $85
    dec b                                         ; $608b: $05
    ld b, $88                                     ; $608c: $06 $88
    adc c                                         ; $608e: $89
    add hl, bc                                    ; $608f: $09
    ld a, [bc]                                    ; $6090: $0a
    dec bc                                        ; $6091: $0b
    inc c                                         ; $6092: $0c
    rra                                           ; $6093: $1f
    jr nz, jr_085_60b7                            ; $6094: $20 $21

    ld [hl+], a                                   ; $6096: $22
    rlca                                          ; $6097: $07
    rlca                                          ; $6098: $07
    rrca                                          ; $6099: $0f
    rrca                                          ; $609a: $0f
    rlca                                          ; $609b: $07
    rlca                                          ; $609c: $07
    rrca                                          ; $609d: $0f
    rrca                                          ; $609e: $0f
    rlca                                          ; $609f: $07
    rlca                                          ; $60a0: $07
    rlca                                          ; $60a1: $07
    rlca                                          ; $60a2: $07
    rlca                                          ; $60a3: $07
    rlca                                          ; $60a4: $07
    rlca                                          ; $60a5: $07
    rlca                                          ; $60a6: $07
    add [hl]                                      ; $60a7: $86
    add l                                         ; $60a8: $85
    halt                                          ; $60a9: $76
    ld a, [hl+]                                   ; $60aa: $2a
    adc d                                         ; $60ab: $8a
    adc c                                         ; $60ac: $89
    ld [hl], a                                    ; $60ad: $77
    add sp, $09                                   ; $60ae: $e8 $09
    ld a, [bc]                                    ; $60b0: $0a
    halt                                          ; $60b1: $76
    di                                            ; $60b2: $f3
    rra                                           ; $60b3: $1f
    jr nz, @+$79                                  ; $60b4: $20 $77

    rst $30                                       ; $60b6: $f7

jr_085_60b7:
    rrca                                          ; $60b7: $0f
    rrca                                          ; $60b8: $0f
    ld [bc], a                                    ; $60b9: $02
    rlca                                          ; $60ba: $07
    rrca                                          ; $60bb: $0f
    rrca                                          ; $60bc: $0f
    ld [bc], a                                    ; $60bd: $02
    rlca                                          ; $60be: $07
    rlca                                          ; $60bf: $07
    rlca                                          ; $60c0: $07
    ld [bc], a                                    ; $60c1: $02
    rlca                                          ; $60c2: $07
    rlca                                          ; $60c3: $07
    rlca                                          ; $60c4: $07
    ld [bc], a                                    ; $60c5: $02
    rlca                                          ; $60c6: $07
    inc hl                                        ; $60c7: $23
    inc h                                         ; $60c8: $24
    jr nc, jr_085_610a                            ; $60c9: $30 $3f

    daa                                           ; $60cb: $27
    jr z, jr_085_6112                             ; $60cc: $28 $44

    ld d, d                                       ; $60ce: $52
    push hl                                       ; $60cf: $e5
    and $45                                       ; $60d0: $e6 $45
    ld d, l                                       ; $60d2: $55
    jp hl                                         ; $60d3: $e9


    ld [$5846], a                                 ; $60d4: $ea $46 $58
    rlca                                          ; $60d7: $07
    rlca                                          ; $60d8: $07
    rlca                                          ; $60d9: $07
    rlca                                          ; $60da: $07
    rlca                                          ; $60db: $07
    rlca                                          ; $60dc: $07
    rlca                                          ; $60dd: $07
    rlca                                          ; $60de: $07
    rlca                                          ; $60df: $07
    rlca                                          ; $60e0: $07
    rlca                                          ; $60e1: $07
    rlca                                          ; $60e2: $07
    rlca                                          ; $60e3: $07
    rlca                                          ; $60e4: $07
    rlca                                          ; $60e5: $07
    rlca                                          ; $60e6: $07
    ld b, b                                       ; $60e7: $40
    ld d, $16                                     ; $60e8: $16 $16
    ld h, $53                                     ; $60ea: $26 $53
    ld d, $16                                     ; $60ec: $16 $16
    ld a, [hl+]                                   ; $60ee: $2a
    ld d, [hl]                                    ; $60ef: $56
    ld d, $16                                     ; $60f0: $16 $16
    add sp, $59                                   ; $60f2: $e8 $59
    ld d, $16                                     ; $60f4: $16 $16
    di                                            ; $60f6: $f3
    rlca                                          ; $60f7: $07
    rlca                                          ; $60f8: $07
    daa                                           ; $60f9: $27
    rlca                                          ; $60fa: $07
    rlca                                          ; $60fb: $07
    rlca                                          ; $60fc: $07
    daa                                           ; $60fd: $27
    rlca                                          ; $60fe: $07
    rlca                                          ; $60ff: $07
    rlca                                          ; $6100: $07
    daa                                           ; $6101: $27
    rlca                                          ; $6102: $07
    rlca                                          ; $6103: $07
    rlca                                          ; $6104: $07
    daa                                           ; $6105: $27
    rlca                                          ; $6106: $07
    inc hl                                        ; $6107: $23
    inc h                                         ; $6108: $24
    halt                                          ; $6109: $76

jr_085_610a:
    db $10                                        ; $610a: $10
    daa                                           ; $610b: $27
    jr z, jr_085_6185                             ; $610c: $28 $77

    inc d                                         ; $610e: $14
    push hl                                       ; $610f: $e5
    and $76                                       ; $6110: $e6 $76

jr_085_6112:
    ld [$eae9], sp                                ; $6112: $08 $e9 $ea
    ld [hl], a                                    ; $6115: $77
    inc c                                         ; $6116: $0c
    rlca                                          ; $6117: $07
    rlca                                          ; $6118: $07
    ld [bc], a                                    ; $6119: $02
    rlca                                          ; $611a: $07
    rlca                                          ; $611b: $07
    rlca                                          ; $611c: $07
    ld [bc], a                                    ; $611d: $02
    rlca                                          ; $611e: $07
    rlca                                          ; $611f: $07
    rlca                                          ; $6120: $07
    ld [bc], a                                    ; $6121: $02
    rlca                                          ; $6122: $07
    rlca                                          ; $6123: $07
    rlca                                          ; $6124: $07
    ld [bc], a                                    ; $6125: $02
    rlca                                          ; $6126: $07
    db $ed                                        ; $6127: $ed
    ld d, $16                                     ; $6128: $16 $16
    rst $30                                       ; $612a: $f7
    db $fd                                        ; $612b: $fd
    ld l, $2e                                     ; $612c: $2e $2e
    db $10                                        ; $612e: $10
    ld bc, $5b34                                  ; $612f: $01 $34 $5b
    inc d                                         ; $6132: $14
    dec b                                         ; $6133: $05
    scf                                           ; $6134: $37
    ld e, h                                       ; $6135: $5c
    ld [$0707], sp                                ; $6136: $08 $07 $07
    daa                                           ; $6139: $27
    rlca                                          ; $613a: $07
    rlca                                          ; $613b: $07
    rlca                                          ; $613c: $07
    daa                                           ; $613d: $27
    rlca                                          ; $613e: $07
    rlca                                          ; $613f: $07
    rlca                                          ; $6140: $07
    rlca                                          ; $6141: $07
    rlca                                          ; $6142: $07
    rlca                                          ; $6143: $07
    rlca                                          ; $6144: $07
    rlca                                          ; $6145: $07
    rlca                                          ; $6146: $07
    db $ed                                        ; $6147: $ed
    push af                                       ; $6148: $f5
    or $f7                                        ; $6149: $f6 $f7
    db $fd                                        ; $614b: $fd
    adc h                                         ; $614c: $8c
    adc l                                         ; $614d: $8d
    db $10                                        ; $614e: $10
    ld bc, $1312                                  ; $614f: $01 $12 $13
    inc d                                         ; $6152: $14
    dec b                                         ; $6153: $05
    ld b, $07                                     ; $6154: $06 $07
    ld [$0707], sp                                ; $6156: $08 $07 $07
    rlca                                          ; $6159: $07
    rlca                                          ; $615a: $07
    rlca                                          ; $615b: $07
    rrca                                          ; $615c: $0f
    rrca                                          ; $615d: $0f
    rlca                                          ; $615e: $07
    rlca                                          ; $615f: $07
    rlca                                          ; $6160: $07
    rlca                                          ; $6161: $07
    rlca                                          ; $6162: $07
    rlca                                          ; $6163: $07
    rlca                                          ; $6164: $07
    rlca                                          ; $6165: $07
    rlca                                          ; $6166: $07
    db $ed                                        ; $6167: $ed
    push af                                       ; $6168: $f5
    halt                                          ; $6169: $76
    ld [hl+], a                                   ; $616a: $22
    db $fd                                        ; $616b: $fd
    ld c, $77                                     ; $616c: $0e $77
    ld h, $01                                     ; $616e: $26 $01
    ld [de], a                                    ; $6170: $12
    halt                                          ; $6171: $76
    ld a, [hl+]                                   ; $6172: $2a
    dec b                                         ; $6173: $05
    ld b, $77                                     ; $6174: $06 $77
    add sp, $07                                   ; $6176: $e8 $07
    rlca                                          ; $6178: $07
    ld [bc], a                                    ; $6179: $02
    rlca                                          ; $617a: $07
    rlca                                          ; $617b: $07
    rlca                                          ; $617c: $07
    ld [bc], a                                    ; $617d: $02
    rlca                                          ; $617e: $07
    rlca                                          ; $617f: $07
    rlca                                          ; $6180: $07
    ld [bc], a                                    ; $6181: $02
    rlca                                          ; $6182: $07
    rlca                                          ; $6183: $07
    rlca                                          ; $6184: $07

jr_085_6185:
    ld [bc], a                                    ; $6185: $02
    rlca                                          ; $6186: $07
    dec b                                         ; $6187: $05
    ld b, $07                                     ; $6188: $06 $07
    ld [$0a09], sp                                ; $618a: $08 $09 $0a
    dec bc                                        ; $618d: $0b
    inc c                                         ; $618e: $0c
    rra                                           ; $618f: $1f
    jr nz, jr_085_61b3                            ; $6190: $20 $21

    ld [hl+], a                                   ; $6192: $22
    inc hl                                        ; $6193: $23
    inc h                                         ; $6194: $24
    dec h                                         ; $6195: $25
    ld h, $06                                     ; $6196: $26 $06
    dec b                                         ; $6198: $05
    ld b, $06                                     ; $6199: $06 $06
    ld b, $06                                     ; $619b: $06 $06
    dec b                                         ; $619d: $05
    dec b                                         ; $619e: $05
    dec b                                         ; $619f: $05
    ld b, $06                                     ; $61a0: $06 $06
    dec b                                         ; $61a2: $05
    dec b                                         ; $61a3: $05
    ld b, $06                                     ; $61a4: $06 $06
    ld b, $05                                     ; $61a6: $06 $05
    ld b, $07                                     ; $61a8: $06 $07
    ld [$0a09], sp                                ; $61aa: $08 $09 $0a
    dec bc                                        ; $61ad: $0b
    inc c                                         ; $61ae: $0c
    rra                                           ; $61af: $1f
    jr nz, @+$23                                  ; $61b0: $20 $21

    ld [hl+], a                                   ; $61b2: $22

jr_085_61b3:
    inc hl                                        ; $61b3: $23
    inc h                                         ; $61b4: $24
    dec h                                         ; $61b5: $25
    ld h, $05                                     ; $61b6: $26 $05
    dec b                                         ; $61b8: $05
    ld b, $05                                     ; $61b9: $06 $05
    ld b, $05                                     ; $61bb: $06 $05
    dec b                                         ; $61bd: $05
    ld b, $06                                     ; $61be: $06 $06
    ld b, $05                                     ; $61c0: $06 $05
    dec b                                         ; $61c2: $05
    ld b, $05                                     ; $61c3: $06 $05
    ld b, $06                                     ; $61c5: $06 $06
    ld d, $16                                     ; $61c7: $16 $16
    ld d, l                                       ; $61c9: $55
    ld d, [hl]                                    ; $61ca: $56
    ld d, $16                                     ; $61cb: $16 $16
    ld e, b                                       ; $61cd: $58
    ld e, c                                       ; $61ce: $59
    ld d, $16                                     ; $61cf: $16 $16
    ld hl, $2e22                                  ; $61d1: $21 $22 $2e
    ld l, $25                                     ; $61d4: $2e $25
    ld h, $82                                     ; $61d6: $26 $82
    and d                                         ; $61d8: $a2
    inc bc                                        ; $61d9: $03
    inc bc                                        ; $61da: $03
    add d                                         ; $61db: $82
    and d                                         ; $61dc: $a2
    inc b                                         ; $61dd: $04
    inc bc                                        ; $61de: $03
    add d                                         ; $61df: $82
    and d                                         ; $61e0: $a2
    rlca                                          ; $61e1: $07
    rlca                                          ; $61e2: $07
    add d                                         ; $61e3: $82
    and d                                         ; $61e4: $a2
    rlca                                          ; $61e5: $07
    dec b                                         ; $61e6: $05
    ld d, a                                       ; $61e7: $57
    ld c, h                                       ; $61e8: $4c
    ld c, l                                       ; $61e9: $4d
    ld c, [hl]                                    ; $61ea: $4e
    ld e, d                                       ; $61eb: $5a
    ld c, a                                       ; $61ec: $4f
    ld d, b                                       ; $61ed: $50
    ld d, c                                       ; $61ee: $51
    rra                                           ; $61ef: $1f
    jr nz, jr_085_6213                            ; $61f0: $20 $21

    ld [hl+], a                                   ; $61f2: $22
    inc hl                                        ; $61f3: $23
    inc h                                         ; $61f4: $24
    dec h                                         ; $61f5: $25
    ld h, $04                                     ; $61f6: $26 $04
    inc b                                         ; $61f8: $04
    inc bc                                        ; $61f9: $03
    inc bc                                        ; $61fa: $03
    inc b                                         ; $61fb: $04
    inc bc                                        ; $61fc: $03
    inc bc                                        ; $61fd: $03
    inc b                                         ; $61fe: $04
    rlca                                          ; $61ff: $07
    rlca                                          ; $6200: $07
    rlca                                          ; $6201: $07
    rlca                                          ; $6202: $07
    ld b, $05                                     ; $6203: $06 $05
    dec b                                         ; $6205: $05
    ld b, $27                                     ; $6206: $06 $27
    jr z, jr_085_6233                             ; $6208: $28 $29

    ld a, [hl+]                                   ; $620a: $2a
    push hl                                       ; $620b: $e5
    and $e7                                       ; $620c: $e6 $e7
    add sp, -$17                                  ; $620e: $e8 $e9
    ld [$f3f2], a                                 ; $6210: $ea $f2 $f3

jr_085_6213:
    db $ed                                        ; $6213: $ed
    push af                                       ; $6214: $f5
    or $f7                                        ; $6215: $f6 $f7
    dec b                                         ; $6217: $05
    dec b                                         ; $6218: $05
    ld b, $05                                     ; $6219: $06 $05
    ld b, $05                                     ; $621b: $06 $05
    dec b                                         ; $621d: $05
    dec b                                         ; $621e: $05
    ld b, $06                                     ; $621f: $06 $06
    ld b, $06                                     ; $6221: $06 $06
    dec b                                         ; $6223: $05
    ld b, $06                                     ; $6224: $06 $06
    ld b, $27                                     ; $6226: $06 $27
    jr z, jr_085_6253                             ; $6228: $28 $29

    ld a, [hl+]                                   ; $622a: $2a
    push hl                                       ; $622b: $e5
    and $e7                                       ; $622c: $e6 $e7
    add sp, -$17                                  ; $622e: $e8 $e9
    ld [$f3f2], a                                 ; $6230: $ea $f2 $f3

jr_085_6233:
    db $ed                                        ; $6233: $ed
    push af                                       ; $6234: $f5
    or $f7                                        ; $6235: $f6 $f7
    dec b                                         ; $6237: $05
    ld b, $05                                     ; $6238: $06 $05
    dec b                                         ; $623a: $05
    ld b, $05                                     ; $623b: $06 $05
    dec b                                         ; $623d: $05
    ld b, $05                                     ; $623e: $06 $05
    ld b, $06                                     ; $6240: $06 $06
    ld b, $06                                     ; $6242: $06 $06
    ld b, $05                                     ; $6244: $06 $05
    dec b                                         ; $6246: $05
    cpl                                           ; $6247: $2f
    ld b, d                                       ; $6248: $42
    add hl, hl                                    ; $6249: $29
    ld a, [hl+]                                   ; $624a: $2a
    jr nc, jr_085_6290                            ; $624b: $30 $43

    rst $20                                       ; $624d: $e7
    add sp, $44                                   ; $624e: $e8 $44
    ld h, e                                       ; $6250: $63
    ld a, [c]                                     ; $6251: $f2
    di                                            ; $6252: $f3

jr_085_6253:
    ld b, l                                       ; $6253: $45
    ld h, h                                       ; $6254: $64
    or $f7                                        ; $6255: $f6 $f7
    inc b                                         ; $6257: $04
    inc bc                                        ; $6258: $03
    rlca                                          ; $6259: $07
    ld b, $04                                     ; $625a: $06 $04
    inc bc                                        ; $625c: $03
    rlca                                          ; $625d: $07
    ld b, $03                                     ; $625e: $06 $03
    inc b                                         ; $6260: $04
    rlca                                          ; $6261: $07
    dec b                                         ; $6262: $05
    inc bc                                        ; $6263: $03
    inc bc                                        ; $6264: $03
    rlca                                          ; $6265: $07
    ld b, $27                                     ; $6266: $06 $27
    jr z, @+$2b                                   ; $6268: $28 $29

    ld a, [hl+]                                   ; $626a: $2a
    push hl                                       ; $626b: $e5
    and $e7                                       ; $626c: $e6 $e7
    add sp, -$17                                  ; $626e: $e8 $e9
    ld [$f3f2], a                                 ; $6270: $ea $f2 $f3
    db $ed                                        ; $6273: $ed
    push af                                       ; $6274: $f5
    or $f7                                        ; $6275: $f6 $f7
    dec b                                         ; $6277: $05
    ld b, $05                                     ; $6278: $06 $05
    dec b                                         ; $627a: $05
    ld b, $05                                     ; $627b: $06 $05
    ld b, $06                                     ; $627d: $06 $06
    ld b, $06                                     ; $627f: $06 $06
    ld b, $06                                     ; $6281: $06 $06
    dec b                                         ; $6283: $05
    ld b, $05                                     ; $6284: $06 $05
    dec b                                         ; $6286: $05
    db $fd                                        ; $6287: $fd
    ld c, $0f                                     ; $6288: $0e $0f
    db $10                                        ; $628a: $10
    ld bc, $1312                                  ; $628b: $01 $12 $13
    inc d                                         ; $628e: $14
    dec b                                         ; $628f: $05

jr_085_6290:
    ld b, $07                                     ; $6290: $06 $07
    ld [$0a09], sp                                ; $6292: $08 $09 $0a
    dec bc                                        ; $6295: $0b
    inc c                                         ; $6296: $0c
    ld b, $05                                     ; $6297: $06 $05
    ld b, $06                                     ; $6299: $06 $06
    ld b, $06                                     ; $629b: $06 $06
    dec b                                         ; $629d: $05
    dec b                                         ; $629e: $05
    dec b                                         ; $629f: $05
    ld b, $06                                     ; $62a0: $06 $06
    dec b                                         ; $62a2: $05
    ld b, $05                                     ; $62a3: $06 $05
    ld b, $05                                     ; $62a5: $06 $05
    db $fd                                        ; $62a7: $fd
    ld c, $0f                                     ; $62a8: $0e $0f
    db $10                                        ; $62aa: $10
    ld bc, $1312                                  ; $62ab: $01 $12 $13
    inc d                                         ; $62ae: $14
    dec b                                         ; $62af: $05
    ld b, $07                                     ; $62b0: $06 $07
    ld [$0a09], sp                                ; $62b2: $08 $09 $0a
    dec bc                                        ; $62b5: $0b
    inc c                                         ; $62b6: $0c
    dec b                                         ; $62b7: $05
    dec b                                         ; $62b8: $05
    dec b                                         ; $62b9: $05
    ld b, $06                                     ; $62ba: $06 $06
    ld b, $05                                     ; $62bc: $06 $05
    ld b, $05                                     ; $62be: $06 $05
    dec b                                         ; $62c0: $05
    ld b, $06                                     ; $62c1: $06 $06
    ld b, $06                                     ; $62c3: $06 $06
    dec b                                         ; $62c5: $05
    dec b                                         ; $62c6: $05
    ld b, [hl]                                    ; $62c7: $46
    ld h, l                                       ; $62c8: $65
    rrca                                          ; $62c9: $0f
    db $10                                        ; $62ca: $10
    ld bc, $1312                                  ; $62cb: $01 $12 $13
    inc d                                         ; $62ce: $14
    dec b                                         ; $62cf: $05
    ld b, $07                                     ; $62d0: $06 $07
    ld [$0a09], sp                                ; $62d2: $08 $09 $0a
    dec bc                                        ; $62d5: $0b
    inc c                                         ; $62d6: $0c
    inc b                                         ; $62d7: $04
    inc bc                                        ; $62d8: $03
    rlca                                          ; $62d9: $07
    ld b, $07                                     ; $62da: $06 $07
    rlca                                          ; $62dc: $07
    rlca                                          ; $62dd: $07
    dec b                                         ; $62de: $05
    dec b                                         ; $62df: $05
    ld b, $06                                     ; $62e0: $06 $06
    dec b                                         ; $62e2: $05
    dec b                                         ; $62e3: $05
    ld b, $06                                     ; $62e4: $06 $06
    dec b                                         ; $62e6: $05
    db $fd                                        ; $62e7: $fd
    ld c, $0f                                     ; $62e8: $0e $0f
    db $10                                        ; $62ea: $10
    ld bc, $1312                                  ; $62eb: $01 $12 $13
    inc d                                         ; $62ee: $14
    dec b                                         ; $62ef: $05
    ld b, $07                                     ; $62f0: $06 $07
    ld [$0a09], sp                                ; $62f2: $08 $09 $0a
    dec bc                                        ; $62f5: $0b
    inc c                                         ; $62f6: $0c
    dec b                                         ; $62f7: $05
    dec b                                         ; $62f8: $05
    ld b, $06                                     ; $62f9: $06 $06
    ld b, $06                                     ; $62fb: $06 $06
    ld b, $06                                     ; $62fd: $06 $06
    dec b                                         ; $62ff: $05
    ld b, $06                                     ; $6300: $06 $06
    ld b, $06                                     ; $6302: $06 $06
    dec b                                         ; $6304: $05
    dec b                                         ; $6305: $05
    ld b, $1f                                     ; $6306: $06 $1f
    jr nz, jr_085_632b                            ; $6308: $20 $21

    ld [hl+], a                                   ; $630a: $22
    inc hl                                        ; $630b: $23
    inc h                                         ; $630c: $24
    dec h                                         ; $630d: $25
    ld h, $27                                     ; $630e: $26 $27
    jr z, @+$2b                                   ; $6310: $28 $29

    ld a, [hl+]                                   ; $6312: $2a
    push hl                                       ; $6313: $e5
    and $e7                                       ; $6314: $e6 $e7
    add sp, $06                                   ; $6316: $e8 $06
    ld b, $05                                     ; $6318: $06 $05
    dec b                                         ; $631a: $05
    dec b                                         ; $631b: $05
    ld b, $06                                     ; $631c: $06 $06
    dec b                                         ; $631e: $05
    ld b, $05                                     ; $631f: $06 $05
    ld b, $06                                     ; $6321: $06 $06
    ld b, $05                                     ; $6323: $06 $05
    ld b, $06                                     ; $6325: $06 $06
    rra                                           ; $6327: $1f
    jr nz, @+$23                                  ; $6328: $20 $21

    ld [hl+], a                                   ; $632a: $22

jr_085_632b:
    inc hl                                        ; $632b: $23
    inc h                                         ; $632c: $24
    dec h                                         ; $632d: $25
    ld h, $27                                     ; $632e: $26 $27
    jr z, @+$2b                                   ; $6330: $28 $29

    ld a, [hl+]                                   ; $6332: $2a
    push hl                                       ; $6333: $e5
    and $e7                                       ; $6334: $e6 $e7
    add sp, $06                                   ; $6336: $e8 $06
    dec b                                         ; $6338: $05
    dec b                                         ; $6339: $05
    ld b, $06                                     ; $633a: $06 $06
    ld b, $06                                     ; $633c: $06 $06
    ld b, $05                                     ; $633e: $06 $05
    ld b, $05                                     ; $6340: $06 $05
    ld b, $06                                     ; $6342: $06 $06
    dec b                                         ; $6344: $05
    ld b, $05                                     ; $6345: $06 $05
    dec d                                         ; $6347: $15
    dec d                                         ; $6348: $15
    ld hl, $1622                                  ; $6349: $21 $22 $16
    ld d, $25                                     ; $634c: $16 $25
    ld h, $16                                     ; $634e: $26 $16
    ld d, $29                                     ; $6350: $16 $29
    ld a, [hl+]                                   ; $6352: $2a
    ld d, $16                                     ; $6353: $16 $16
    rst $20                                       ; $6355: $e7
    add sp, -$7e                                  ; $6356: $e8 $82
    and d                                         ; $6358: $a2
    dec b                                         ; $6359: $05
    ld b, $82                                     ; $635a: $06 $82
    and d                                         ; $635c: $a2
    ld b, $05                                     ; $635d: $06 $05
    add d                                         ; $635f: $82
    and d                                         ; $6360: $a2
    ld b, $06                                     ; $6361: $06 $06
    add d                                         ; $6363: $82
    and d                                         ; $6364: $a2
    rlca                                          ; $6365: $07
    ld b, $1f                                     ; $6366: $06 $1f
    jr nz, jr_085_638b                            ; $6368: $20 $21

    ld [hl+], a                                   ; $636a: $22
    inc hl                                        ; $636b: $23
    inc h                                         ; $636c: $24
    dec h                                         ; $636d: $25
    ld h, $27                                     ; $636e: $26 $27
    jr z, jr_085_639b                             ; $6370: $28 $29

    ld a, [hl+]                                   ; $6372: $2a
    push hl                                       ; $6373: $e5
    and $e7                                       ; $6374: $e6 $e7
    add sp, $05                                   ; $6376: $e8 $05
    ld b, $06                                     ; $6378: $06 $06
    ld b, $06                                     ; $637a: $06 $06
    dec b                                         ; $637c: $05
    ld b, $06                                     ; $637d: $06 $06
    dec b                                         ; $637f: $05
    ld b, $05                                     ; $6380: $06 $05
    dec b                                         ; $6382: $05
    ld b, $05                                     ; $6383: $06 $05
    dec b                                         ; $6385: $05
    ld b, $55                                     ; $6386: $06 $55
    ld d, [hl]                                    ; $6388: $56
    ld d, a                                       ; $6389: $57
    ld c, h                                       ; $638a: $4c

jr_085_638b:
    ld e, b                                       ; $638b: $58
    ld e, c                                       ; $638c: $59
    ld e, d                                       ; $638d: $5a
    ld c, a                                       ; $638e: $4f
    rra                                           ; $638f: $1f
    jr nz, jr_085_63b3                            ; $6390: $20 $21

    ld [hl+], a                                   ; $6392: $22
    inc hl                                        ; $6393: $23
    inc h                                         ; $6394: $24
    dec h                                         ; $6395: $25
    ld h, $03                                     ; $6396: $26 $03
    inc bc                                        ; $6398: $03
    inc b                                         ; $6399: $04
    inc bc                                        ; $639a: $03

jr_085_639b:
    inc b                                         ; $639b: $04
    inc b                                         ; $639c: $04
    inc bc                                        ; $639d: $03
    inc bc                                        ; $639e: $03
    rlca                                          ; $639f: $07
    rlca                                          ; $63a0: $07
    rlca                                          ; $63a1: $07
    rlca                                          ; $63a2: $07
    ld b, $06                                     ; $63a3: $06 $06
    dec b                                         ; $63a5: $05
    ld b, $4d                                     ; $63a6: $06 $4d
    ld c, [hl]                                    ; $63a8: $4e
    ld d, l                                       ; $63a9: $55
    ld d, [hl]                                    ; $63aa: $56
    ld d, b                                       ; $63ab: $50
    ld d, c                                       ; $63ac: $51
    ld e, b                                       ; $63ad: $58
    ld e, c                                       ; $63ae: $59
    rra                                           ; $63af: $1f
    jr nz, jr_085_63d3                            ; $63b0: $20 $21

    ld [hl+], a                                   ; $63b2: $22

jr_085_63b3:
    inc hl                                        ; $63b3: $23
    inc h                                         ; $63b4: $24
    dec h                                         ; $63b5: $25
    ld h, $03                                     ; $63b6: $26 $03
    inc bc                                        ; $63b8: $03
    inc b                                         ; $63b9: $04
    inc bc                                        ; $63ba: $03
    inc b                                         ; $63bb: $04
    inc bc                                        ; $63bc: $03
    inc bc                                        ; $63bd: $03
    inc b                                         ; $63be: $04
    rlca                                          ; $63bf: $07
    rlca                                          ; $63c0: $07
    rlca                                          ; $63c1: $07
    rlca                                          ; $63c2: $07
    ld b, $05                                     ; $63c3: $06 $05
    ld b, $06                                     ; $63c5: $06 $06
    daa                                           ; $63c7: $27
    jr z, jr_085_63f3                             ; $63c8: $28 $29

    ld a, [hl+]                                   ; $63ca: $2a
    push hl                                       ; $63cb: $e5
    and $e7                                       ; $63cc: $e6 $e7
    add sp, -$17                                  ; $63ce: $e8 $e9
    ld [$f3f2], a                                 ; $63d0: $ea $f2 $f3

jr_085_63d3:
    db $ed                                        ; $63d3: $ed
    push af                                       ; $63d4: $f5
    or $f7                                        ; $63d5: $f6 $f7
    dec b                                         ; $63d7: $05
    ld b, $06                                     ; $63d8: $06 $06
    dec b                                         ; $63da: $05
    dec b                                         ; $63db: $05
    ld b, $05                                     ; $63dc: $06 $05
    dec b                                         ; $63de: $05
    dec b                                         ; $63df: $05
    ld b, $06                                     ; $63e0: $06 $06
    ld b, $06                                     ; $63e2: $06 $06
    ld b, $05                                     ; $63e4: $06 $05
    dec b                                         ; $63e6: $05
    daa                                           ; $63e7: $27
    jr z, @+$2b                                   ; $63e8: $28 $29

    ld a, [hl+]                                   ; $63ea: $2a
    push hl                                       ; $63eb: $e5
    and $e7                                       ; $63ec: $e6 $e7
    add sp, $78                                   ; $63ee: $e8 $78
    ld a, c                                       ; $63f0: $79
    ld a, d                                       ; $63f1: $7a
    ld a, e                                       ; $63f2: $7b

jr_085_63f3:
    ld a, h                                       ; $63f3: $7c
    ld a, l                                       ; $63f4: $7d
    ld a, [hl]                                    ; $63f5: $7e
    ld a, a                                       ; $63f6: $7f
    dec b                                         ; $63f7: $05
    ld b, $06                                     ; $63f8: $06 $06
    dec b                                         ; $63fa: $05
    ld b, $06                                     ; $63fb: $06 $06
    dec b                                         ; $63fd: $05
    ld b, $01                                     ; $63fe: $06 $01
    ld bc, $0101                                  ; $6400: $01 $01 $01
    ld bc, $0101                                  ; $6403: $01 $01 $01
    ld bc, $0efd                                  ; $6406: $01 $fd $0e
    rrca                                          ; $6409: $0f
    db $10                                        ; $640a: $10
    ld bc, $1312                                  ; $640b: $01 $12 $13
    inc d                                         ; $640e: $14
    dec b                                         ; $640f: $05
    ld b, $07                                     ; $6410: $06 $07
    ld [$0a09], sp                                ; $6412: $08 $09 $0a
    dec bc                                        ; $6415: $0b
    inc c                                         ; $6416: $0c
    dec b                                         ; $6417: $05
    dec b                                         ; $6418: $05
    ld b, $06                                     ; $6419: $06 $06
    dec b                                         ; $641b: $05
    ld b, $06                                     ; $641c: $06 $06
    ld b, $06                                     ; $641e: $06 $06
    dec b                                         ; $6420: $05
    dec b                                         ; $6421: $05
    dec b                                         ; $6422: $05
    dec b                                         ; $6423: $05
    ld b, $06                                     ; $6424: $06 $06
    ld b, $80                                     ; $6426: $06 $80
    add c                                         ; $6428: $81
    add d                                         ; $6429: $82
    add e                                         ; $642a: $83
    add h                                         ; $642b: $84
    add l                                         ; $642c: $85
    add [hl]                                      ; $642d: $86
    add a                                         ; $642e: $87
    adc b                                         ; $642f: $88
    adc c                                         ; $6430: $89
    adc d                                         ; $6431: $8a
    adc e                                         ; $6432: $8b
    add hl, bc                                    ; $6433: $09
    ld a, [bc]                                    ; $6434: $0a
    dec bc                                        ; $6435: $0b
    inc c                                         ; $6436: $0c
    add hl, bc                                    ; $6437: $09
    add hl, bc                                    ; $6438: $09
    add hl, bc                                    ; $6439: $09
    add hl, bc                                    ; $643a: $09
    add hl, bc                                    ; $643b: $09
    add hl, bc                                    ; $643c: $09
    add hl, bc                                    ; $643d: $09
    add hl, bc                                    ; $643e: $09
    add hl, bc                                    ; $643f: $09
    add hl, bc                                    ; $6440: $09
    add hl, bc                                    ; $6441: $09
    add hl, bc                                    ; $6442: $09
    rlca                                          ; $6443: $07
    rlca                                          ; $6444: $07
    rlca                                          ; $6445: $07
    rlca                                          ; $6446: $07
    rra                                           ; $6447: $1f
    jr nz, jr_085_646b                            ; $6448: $20 $21

    ld [hl+], a                                   ; $644a: $22
    inc hl                                        ; $644b: $23
    inc h                                         ; $644c: $24
    dec h                                         ; $644d: $25
    ld h, $27                                     ; $644e: $26 $27
    jr z, jr_085_647b                             ; $6450: $28 $29

    ld a, [hl+]                                   ; $6452: $2a
    push hl                                       ; $6453: $e5
    and $e7                                       ; $6454: $e6 $e7
    add sp, $06                                   ; $6456: $e8 $06
    ld b, $05                                     ; $6458: $06 $05
    dec b                                         ; $645a: $05
    ld b, $05                                     ; $645b: $06 $05
    ld b, $06                                     ; $645d: $06 $06
    ld b, $06                                     ; $645f: $06 $06
    ld b, $05                                     ; $6461: $06 $05
    ld b, $05                                     ; $6463: $06 $05
    dec b                                         ; $6465: $05
    ld b, $1f                                     ; $6466: $06 $1f
    jr nz, jr_085_648b                            ; $6468: $20 $21

    ld [hl+], a                                   ; $646a: $22

jr_085_646b:
    inc hl                                        ; $646b: $23
    inc h                                         ; $646c: $24
    dec h                                         ; $646d: $25
    ld h, $27                                     ; $646e: $26 $27
    jr z, jr_085_649b                             ; $6470: $28 $29

    ld a, [hl+]                                   ; $6472: $2a
    push hl                                       ; $6473: $e5
    and $e7                                       ; $6474: $e6 $e7
    add sp, $06                                   ; $6476: $e8 $06
    ld b, $05                                     ; $6478: $06 $05
    dec b                                         ; $647a: $05

jr_085_647b:
    ld b, $05                                     ; $647b: $06 $05
    ld b, $06                                     ; $647d: $06 $06
    dec b                                         ; $647f: $05
    ld b, $05                                     ; $6480: $06 $05
    dec b                                         ; $6482: $05
    ld b, $06                                     ; $6483: $06 $06
    dec b                                         ; $6485: $05
    ld b, $32                                     ; $6486: $06 $32
    ld [hl-], a                                   ; $6488: $32
    ld [hl-], a                                   ; $6489: $32
    ld [hl-], a                                   ; $648a: $32

jr_085_648b:
    inc sp                                        ; $648b: $33
    inc sp                                        ; $648c: $33
    inc sp                                        ; $648d: $33
    inc sp                                        ; $648e: $33
    dec [hl]                                      ; $648f: $35
    ld [hl], $3a                                  ; $6490: $36 $3a
    dec sp                                        ; $6492: $3b
    jr c, jr_085_64ce                             ; $6493: $38 $39

    ld a, $3f                                     ; $6495: $3e $3f
    rlca                                          ; $6497: $07
    rlca                                          ; $6498: $07
    rlca                                          ; $6499: $07
    rlca                                          ; $649a: $07

jr_085_649b:
    rlca                                          ; $649b: $07
    rlca                                          ; $649c: $07
    rlca                                          ; $649d: $07
    rlca                                          ; $649e: $07
    rlca                                          ; $649f: $07
    rlca                                          ; $64a0: $07
    rlca                                          ; $64a1: $07
    rlca                                          ; $64a2: $07
    rlca                                          ; $64a3: $07
    rlca                                          ; $64a4: $07
    rlca                                          ; $64a5: $07
    rlca                                          ; $64a6: $07
    ld [hl-], a                                   ; $64a7: $32
    ld [hl-], a                                   ; $64a8: $32
    ld [hl-], a                                   ; $64a9: $32
    ld [hl-], a                                   ; $64aa: $32
    inc sp                                        ; $64ab: $33
    inc sp                                        ; $64ac: $33
    inc sp                                        ; $64ad: $33
    inc sp                                        ; $64ae: $33
    inc a                                         ; $64af: $3c
    dec a                                         ; $64b0: $3d
    dec [hl]                                      ; $64b1: $35
    ld [hl], $40                                  ; $64b2: $36 $40
    ld b, c                                       ; $64b4: $41
    jr c, jr_085_64f0                             ; $64b5: $38 $39

    rlca                                          ; $64b7: $07
    rlca                                          ; $64b8: $07
    rlca                                          ; $64b9: $07
    rlca                                          ; $64ba: $07
    rlca                                          ; $64bb: $07
    rlca                                          ; $64bc: $07
    rlca                                          ; $64bd: $07
    rlca                                          ; $64be: $07
    rlca                                          ; $64bf: $07
    rlca                                          ; $64c0: $07
    rlca                                          ; $64c1: $07
    rlca                                          ; $64c2: $07
    rlca                                          ; $64c3: $07
    rlca                                          ; $64c4: $07
    rlca                                          ; $64c5: $07
    rlca                                          ; $64c6: $07
    ld [hl-], a                                   ; $64c7: $32
    ld [hl-], a                                   ; $64c8: $32
    ld sp, $3316                                  ; $64c9: $31 $16 $33
    inc sp                                        ; $64cc: $33
    inc sp                                        ; $64cd: $33

jr_085_64ce:
    ld l, $3a                                     ; $64ce: $2e $3a
    dec sp                                        ; $64d0: $3b
    inc a                                         ; $64d1: $3c
    ld e, e                                       ; $64d2: $5b
    ld a, $3f                                     ; $64d3: $3e $3f
    ld b, b                                       ; $64d5: $40
    ld e, h                                       ; $64d6: $5c
    rlca                                          ; $64d7: $07
    rlca                                          ; $64d8: $07
    daa                                           ; $64d9: $27
    daa                                           ; $64da: $27
    rlca                                          ; $64db: $07
    rlca                                          ; $64dc: $07
    rlca                                          ; $64dd: $07
    daa                                           ; $64de: $27
    rlca                                          ; $64df: $07
    rlca                                          ; $64e0: $07
    rlca                                          ; $64e1: $07
    rlca                                          ; $64e2: $07
    rlca                                          ; $64e3: $07
    rlca                                          ; $64e4: $07
    rlca                                          ; $64e5: $07
    rlca                                          ; $64e6: $07
    ld c, c                                       ; $64e7: $49
    ld c, d                                       ; $64e8: $4a
    ld c, e                                       ; $64e9: $4b
    ld d, d                                       ; $64ea: $52
    ld c, h                                       ; $64eb: $4c
    ld c, l                                       ; $64ec: $4d
    ld c, [hl]                                    ; $64ed: $4e
    ld d, l                                       ; $64ee: $55
    ld c, a                                       ; $64ef: $4f

jr_085_64f0:
    ld d, b                                       ; $64f0: $50
    ld d, c                                       ; $64f1: $51
    ld e, b                                       ; $64f2: $58
    db $fd                                        ; $64f3: $fd
    ld c, $0f                                     ; $64f4: $0e $0f
    db $10                                        ; $64f6: $10
    rlca                                          ; $64f7: $07
    rlca                                          ; $64f8: $07
    rlca                                          ; $64f9: $07
    rlca                                          ; $64fa: $07
    rlca                                          ; $64fb: $07
    rlca                                          ; $64fc: $07
    rlca                                          ; $64fd: $07
    rlca                                          ; $64fe: $07
    rlca                                          ; $64ff: $07
    rlca                                          ; $6500: $07
    rlca                                          ; $6501: $07
    rlca                                          ; $6502: $07
    rlca                                          ; $6503: $07
    rlca                                          ; $6504: $07
    rlca                                          ; $6505: $07
    rlca                                          ; $6506: $07
    ld d, e                                       ; $6507: $53
    ld d, h                                       ; $6508: $54
    ld c, c                                       ; $6509: $49
    ld c, d                                       ; $650a: $4a
    ld d, [hl]                                    ; $650b: $56
    ld d, a                                       ; $650c: $57
    ld c, h                                       ; $650d: $4c
    ld c, l                                       ; $650e: $4d
    ld e, c                                       ; $650f: $59
    ld e, d                                       ; $6510: $5a
    ld c, a                                       ; $6511: $4f
    ld d, b                                       ; $6512: $50
    db $fd                                        ; $6513: $fd
    ld c, $0f                                     ; $6514: $0e $0f
    db $10                                        ; $6516: $10
    rlca                                          ; $6517: $07
    rlca                                          ; $6518: $07
    rlca                                          ; $6519: $07
    rlca                                          ; $651a: $07
    rlca                                          ; $651b: $07
    rlca                                          ; $651c: $07
    rlca                                          ; $651d: $07
    rlca                                          ; $651e: $07
    rlca                                          ; $651f: $07
    rlca                                          ; $6520: $07
    rlca                                          ; $6521: $07
    rlca                                          ; $6522: $07
    rlca                                          ; $6523: $07
    rlca                                          ; $6524: $07
    rlca                                          ; $6525: $07
    rlca                                          ; $6526: $07
    ld c, e                                       ; $6527: $4b
    ld d, d                                       ; $6528: $52
    ld d, e                                       ; $6529: $53
    ld e, [hl]                                    ; $652a: $5e
    ld c, [hl]                                    ; $652b: $4e
    ld d, l                                       ; $652c: $55
    ld d, [hl]                                    ; $652d: $56
    ld h, b                                       ; $652e: $60
    ld d, c                                       ; $652f: $51
    ld e, b                                       ; $6530: $58
    ld e, c                                       ; $6531: $59
    ld h, d                                       ; $6532: $62
    db $fd                                        ; $6533: $fd
    ld c, $0f                                     ; $6534: $0e $0f
    db $10                                        ; $6536: $10
    rlca                                          ; $6537: $07
    rlca                                          ; $6538: $07
    rlca                                          ; $6539: $07
    rlca                                          ; $653a: $07
    rlca                                          ; $653b: $07
    rlca                                          ; $653c: $07
    rlca                                          ; $653d: $07

jr_085_653e:
    rlca                                          ; $653e: $07
    rlca                                          ; $653f: $07
    rlca                                          ; $6540: $07
    rlca                                          ; $6541: $07
    rlca                                          ; $6542: $07
    rlca                                          ; $6543: $07
    rlca                                          ; $6544: $07
    rlca                                          ; $6545: $07
    rlca                                          ; $6546: $07
    pop de                                        ; $6547: $d1
    pop de                                        ; $6548: $d1
    pop de                                        ; $6549: $d1

jr_085_654a:
    jp nc, $d1d1                                  ; $654a: $d2 $d1 $d1

    pop de                                        ; $654d: $d1
    ld l, [hl]                                    ; $654e: $6e
    pop de                                        ; $654f: $d1
    pop de                                        ; $6550: $d1
    pop de                                        ; $6551: $d1
    pop de                                        ; $6552: $d1
    pop de                                        ; $6553: $d1
    pop de                                        ; $6554: $d1
    pop de                                        ; $6555: $d1
    pop de                                        ; $6556: $d1
    nop                                           ; $6557: $00
    nop                                           ; $6558: $00
    nop                                           ; $6559: $00
    nop                                           ; $655a: $00
    nop                                           ; $655b: $00
    nop                                           ; $655c: $00
    nop                                           ; $655d: $00
    nop                                           ; $655e: $00
    nop                                           ; $655f: $00
    nop                                           ; $6560: $00
    nop                                           ; $6561: $00
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    nop                                           ; $6566: $00
    ld bc, $1312                                  ; $6567: $01 $12 $13
    inc d                                         ; $656a: $14
    ld sp, hl                                     ; $656b: $f9
    ld sp, hl                                     ; $656c: $f9
    ld sp, hl                                     ; $656d: $f9
    ld sp, hl                                     ; $656e: $f9
    pop de                                        ; $656f: $d1
    pop de                                        ; $6570: $d1
    pop de                                        ; $6571: $d1
    pop de                                        ; $6572: $d1
    pop de                                        ; $6573: $d1
    pop de                                        ; $6574: $d1
    pop de                                        ; $6575: $d1
    pop de                                        ; $6576: $d1
    rlca                                          ; $6577: $07
    rlca                                          ; $6578: $07
    rlca                                          ; $6579: $07
    rlca                                          ; $657a: $07
    nop                                           ; $657b: $00
    nop                                           ; $657c: $00
    nop                                           ; $657d: $00
    nop                                           ; $657e: $00
    nop                                           ; $657f: $00
    nop                                           ; $6580: $00
    nop                                           ; $6581: $00
    nop                                           ; $6582: $00
    nop                                           ; $6583: $00
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    nop                                           ; $6586: $00
    add hl, bc                                    ; $6587: $09
    ld e, l                                       ; $6588: $5d
    ld e, [hl]                                    ; $6589: $5e
    inc c                                         ; $658a: $0c
    rra                                           ; $658b: $1f
    ld e, a                                       ; $658c: $5f
    ld h, b                                       ; $658d: $60
    ld [hl+], a                                   ; $658e: $22
    inc hl                                        ; $658f: $23
    ld h, c                                       ; $6590: $61
    ld h, d                                       ; $6591: $62
    ld h, $27                                     ; $6592: $26 $27
    jr z, jr_085_65bf                             ; $6594: $28 $29

    ld a, [hl+]                                   ; $6596: $2a
    rlca                                          ; $6597: $07
    rlca                                          ; $6598: $07
    rlca                                          ; $6599: $07
    rlca                                          ; $659a: $07
    rlca                                          ; $659b: $07
    rlca                                          ; $659c: $07
    rlca                                          ; $659d: $07
    rlca                                          ; $659e: $07
    rlca                                          ; $659f: $07
    rlca                                          ; $65a0: $07
    rlca                                          ; $65a1: $07
    rlca                                          ; $65a2: $07
    rlca                                          ; $65a3: $07
    rlca                                          ; $65a4: $07
    rlca                                          ; $65a5: $07
    rlca                                          ; $65a6: $07
    add hl, bc                                    ; $65a7: $09
    ld a, [bc]                                    ; $65a8: $0a
    adc [hl]                                      ; $65a9: $8e
    adc a                                         ; $65aa: $8f
    rra                                           ; $65ab: $1f
    jr nz, jr_085_653e                            ; $65ac: $20 $90

    sub c                                         ; $65ae: $91
    inc hl                                        ; $65af: $23
    inc h                                         ; $65b0: $24
    sub d                                         ; $65b1: $92
    sub e                                         ; $65b2: $93
    daa                                           ; $65b3: $27
    jr z, jr_085_654a                             ; $65b4: $28 $94

    sub l                                         ; $65b6: $95
    rlca                                          ; $65b7: $07
    rlca                                          ; $65b8: $07
    rrca                                          ; $65b9: $0f
    rrca                                          ; $65ba: $0f
    rlca                                          ; $65bb: $07
    rlca                                          ; $65bc: $07
    rrca                                          ; $65bd: $0f
    rrca                                          ; $65be: $0f

jr_085_65bf:
    rlca                                          ; $65bf: $07
    rlca                                          ; $65c0: $07
    rrca                                          ; $65c1: $0f
    rrca                                          ; $65c2: $0f
    rlca                                          ; $65c3: $07
    rlca                                          ; $65c4: $07
    rrca                                          ; $65c5: $0f
    rrca                                          ; $65c6: $0f
    sub [hl]                                      ; $65c7: $96
    sub [hl]                                      ; $65c8: $96
    halt                                          ; $65c9: $76
    di                                            ; $65ca: $f3
    sub a                                         ; $65cb: $97
    sbc b                                         ; $65cc: $98
    ld [hl], a                                    ; $65cd: $77
    rst $30                                       ; $65ce: $f7
    sbc c                                         ; $65cf: $99
    sbc d                                         ; $65d0: $9a
    halt                                          ; $65d1: $76
    db $10                                        ; $65d2: $10
    sub l                                         ; $65d3: $95
    sub l                                         ; $65d4: $95
    ld [hl], a                                    ; $65d5: $77
    inc d                                         ; $65d6: $14
    rrca                                          ; $65d7: $0f
    rrca                                          ; $65d8: $0f
    ld [bc], a                                    ; $65d9: $02
    rlca                                          ; $65da: $07
    rrca                                          ; $65db: $0f
    rrca                                          ; $65dc: $0f
    ld [bc], a                                    ; $65dd: $02
    rlca                                          ; $65de: $07
    rrca                                          ; $65df: $0f
    rrca                                          ; $65e0: $0f
    ld [bc], a                                    ; $65e1: $02
    rlca                                          ; $65e2: $07
    rrca                                          ; $65e3: $0f
    rrca                                          ; $65e4: $0f
    ld [bc], a                                    ; $65e5: $02
    rlca                                          ; $65e6: $07
    push hl                                       ; $65e7: $e5
    and $9b                                       ; $65e8: $e6 $9b
    sbc h                                         ; $65ea: $9c
    jp hl                                         ; $65eb: $e9


    ld [$f3f2], a                                 ; $65ec: $ea $f2 $f3
    db $ed                                        ; $65ef: $ed
    push af                                       ; $65f0: $f5
    or $f7                                        ; $65f1: $f6 $f7
    db $fd                                        ; $65f3: $fd
    ld c, $0f                                     ; $65f4: $0e $0f
    db $10                                        ; $65f6: $10
    rlca                                          ; $65f7: $07
    rlca                                          ; $65f8: $07
    rrca                                          ; $65f9: $0f
    rrca                                          ; $65fa: $0f
    rlca                                          ; $65fb: $07
    rlca                                          ; $65fc: $07
    rlca                                          ; $65fd: $07
    rlca                                          ; $65fe: $07
    rlca                                          ; $65ff: $07
    rlca                                          ; $6600: $07
    rlca                                          ; $6601: $07
    rlca                                          ; $6602: $07
    rlca                                          ; $6603: $07
    rlca                                          ; $6604: $07
    rlca                                          ; $6605: $07
    rlca                                          ; $6606: $07
    sbc h                                         ; $6607: $9c
    sbc h                                         ; $6608: $9c
    halt                                          ; $6609: $76
    ld [$eae9], sp                                ; $660a: $08 $e9 $ea
    ld [hl], a                                    ; $660d: $77
    inc c                                         ; $660e: $0c
    db $ed                                        ; $660f: $ed
    push af                                       ; $6610: $f5
    halt                                          ; $6611: $76
    ld [hl+], a                                   ; $6612: $22
    db $fd                                        ; $6613: $fd
    ld c, $77                                     ; $6614: $0e $77
    ld h, $0f                                     ; $6616: $26 $0f
    rrca                                          ; $6618: $0f
    ld [bc], a                                    ; $6619: $02
    rlca                                          ; $661a: $07
    rlca                                          ; $661b: $07
    rlca                                          ; $661c: $07
    ld [bc], a                                    ; $661d: $02
    rlca                                          ; $661e: $07
    rlca                                          ; $661f: $07
    rlca                                          ; $6620: $07
    ld [bc], a                                    ; $6621: $02
    rlca                                          ; $6622: $07
    rlca                                          ; $6623: $07
    rlca                                          ; $6624: $07
    ld [bc], a                                    ; $6625: $02
    rlca                                          ; $6626: $07
    ld bc, $7612                                  ; $6627: $01 $12 $76
    ld a, [hl+]                                   ; $662a: $2a
    ld sp, hl                                     ; $662b: $f9
    ld sp, hl                                     ; $662c: $f9
    ld sp, hl                                     ; $662d: $f9
    ld sp, hl                                     ; $662e: $f9
    pop de                                        ; $662f: $d1
    pop de                                        ; $6630: $d1
    pop de                                        ; $6631: $d1
    pop de                                        ; $6632: $d1
    pop de                                        ; $6633: $d1
    pop de                                        ; $6634: $d1
    pop de                                        ; $6635: $d1
    pop de                                        ; $6636: $d1
    rlca                                          ; $6637: $07
    rlca                                          ; $6638: $07
    ld [bc], a                                    ; $6639: $02
    rlca                                          ; $663a: $07
    add b                                         ; $663b: $80
    add b                                         ; $663c: $80
    add b                                         ; $663d: $80
    add b                                         ; $663e: $80
    add b                                         ; $663f: $80
    add b                                         ; $6640: $80
    add b                                         ; $6641: $80
    add b                                         ; $6642: $80
    add b                                         ; $6643: $80
    add b                                         ; $6644: $80
    add b                                         ; $6645: $80
    add b                                         ; $6646: $80
    jp hl                                         ; $6647: $e9


    ld [$f3f2], a                                 ; $6648: $ea $f2 $f3
    db $ed                                        ; $664b: $ed
    push af                                       ; $664c: $f5
    or $f7                                        ; $664d: $f6 $f7
    db $fd                                        ; $664f: $fd
    ld c, $0f                                     ; $6650: $0e $0f
    db $10                                        ; $6652: $10
    ld bc, $1312                                  ; $6653: $01 $12 $13
    inc d                                         ; $6656: $14
    dec b                                         ; $6657: $05
    ld b, $05                                     ; $6658: $06 $05
    ld b, $06                                     ; $665a: $06 $06
    dec b                                         ; $665c: $05
    ld b, $06                                     ; $665d: $06 $06
    ld b, $06                                     ; $665f: $06 $06
    ld b, $05                                     ; $6661: $06 $05
    dec b                                         ; $6663: $05
    ld b, $06                                     ; $6664: $06 $06
    ld b, $e9                                     ; $6666: $06 $e9
    ld [$f3f2], a                                 ; $6668: $ea $f2 $f3
    db $ed                                        ; $666b: $ed
    push af                                       ; $666c: $f5
    or $f7                                        ; $666d: $f6 $f7
    db $fd                                        ; $666f: $fd
    ld c, $0f                                     ; $6670: $0e $0f
    db $10                                        ; $6672: $10
    ld bc, $1312                                  ; $6673: $01 $12 $13
    inc d                                         ; $6676: $14
    ld b, $05                                     ; $6677: $06 $05
    dec b                                         ; $6679: $05
    ld b, $05                                     ; $667a: $06 $05
    dec b                                         ; $667c: $05
    ld b, $06                                     ; $667d: $06 $06
    ld b, $06                                     ; $667f: $06 $06
    dec b                                         ; $6681: $05
    ld b, $06                                     ; $6682: $06 $06
    ld b, $06                                     ; $6684: $06 $06
    ld b, $16                                     ; $6686: $06 $16
    ld d, $f2                                     ; $6688: $16 $f2
    di                                            ; $668a: $f3
    ld d, $16                                     ; $668b: $16 $16
    or $f7                                        ; $668d: $f6 $f7
    ld d, $16                                     ; $668f: $16 $16
    rrca                                          ; $6691: $0f
    db $10                                        ; $6692: $10
    ld d, $16                                     ; $6693: $16 $16
    inc de                                        ; $6695: $13
    inc d                                         ; $6696: $14
    add d                                         ; $6697: $82
    and d                                         ; $6698: $a2
    rlca                                          ; $6699: $07
    dec b                                         ; $669a: $05
    add d                                         ; $669b: $82
    and d                                         ; $669c: $a2
    rlca                                          ; $669d: $07
    ld b, $82                                     ; $669e: $06 $82
    and d                                         ; $66a0: $a2
    rlca                                          ; $66a1: $07
    ld b, $82                                     ; $66a2: $06 $82
    and d                                         ; $66a4: $a2
    rlca                                          ; $66a5: $07
    ld b, $e9                                     ; $66a6: $06 $e9
    ld [$f3f2], a                                 ; $66a8: $ea $f2 $f3
    db $ed                                        ; $66ab: $ed
    push af                                       ; $66ac: $f5
    or $f7                                        ; $66ad: $f6 $f7
    db $fd                                        ; $66af: $fd
    ld c, $0f                                     ; $66b0: $0e $0f
    db $10                                        ; $66b2: $10
    ld bc, $1312                                  ; $66b3: $01 $12 $13
    inc d                                         ; $66b6: $14
    ld b, $06                                     ; $66b7: $06 $06
    ld b, $05                                     ; $66b9: $06 $05
    dec b                                         ; $66bb: $05
    ld b, $05                                     ; $66bc: $06 $05
    ld b, $06                                     ; $66be: $06 $06
    dec b                                         ; $66c0: $05
    ld b, $06                                     ; $66c1: $06 $06
    dec b                                         ; $66c3: $05
    ld b, $06                                     ; $66c4: $06 $06
    dec b                                         ; $66c6: $05
    dec b                                         ; $66c7: $05
    ld b, $07                                     ; $66c8: $06 $07
    ld [$0a09], sp                                ; $66ca: $08 $09 $0a
    dec bc                                        ; $66cd: $0b
    inc c                                         ; $66ce: $0c
    rra                                           ; $66cf: $1f
    jr nz, jr_085_66f3                            ; $66d0: $20 $21

    ld [hl+], a                                   ; $66d2: $22
    inc hl                                        ; $66d3: $23
    inc h                                         ; $66d4: $24
    dec h                                         ; $66d5: $25
    ld h, $05                                     ; $66d6: $26 $05
    dec b                                         ; $66d8: $05
    ld b, $06                                     ; $66d9: $06 $06
    ld b, $06                                     ; $66db: $06 $06
    dec b                                         ; $66dd: $05
    dec b                                         ; $66de: $05
    dec b                                         ; $66df: $05
    dec b                                         ; $66e0: $05
    ld b, $06                                     ; $66e1: $06 $06
    dec b                                         ; $66e3: $05
    ld b, $06                                     ; $66e4: $06 $06
    dec b                                         ; $66e6: $05
    dec b                                         ; $66e7: $05
    ld b, $07                                     ; $66e8: $06 $07
    ld [$0a09], sp                                ; $66ea: $08 $09 $0a
    dec bc                                        ; $66ed: $0b
    inc c                                         ; $66ee: $0c
    rra                                           ; $66ef: $1f
    jr nz, @+$23                                  ; $66f0: $20 $21

    ld [hl+], a                                   ; $66f2: $22

jr_085_66f3:
    inc hl                                        ; $66f3: $23
    inc h                                         ; $66f4: $24
    dec h                                         ; $66f5: $25
    ld h, $06                                     ; $66f6: $26 $06
    dec b                                         ; $66f8: $05
    ld b, $06                                     ; $66f9: $06 $06
    ld b, $05                                     ; $66fb: $06 $05
    dec b                                         ; $66fd: $05
    ld b, $06                                     ; $66fe: $06 $06
    ld b, $05                                     ; $6700: $06 $05
    dec b                                         ; $6702: $05
    dec b                                         ; $6703: $05
    ld b, $06                                     ; $6704: $06 $06
    ld b, $16                                     ; $6706: $06 $16
    ld d, $07                                     ; $6708: $16 $07
    ld [$1616], sp                                ; $670a: $08 $16 $16
    dec bc                                        ; $670d: $0b
    inc c                                         ; $670e: $0c
    ld d, $16                                     ; $670f: $16 $16
    ld hl, $1622                                  ; $6711: $21 $22 $16
    ld d, $25                                     ; $6714: $16 $25
    ld h, $82                                     ; $6716: $26 $82
    and d                                         ; $6718: $a2
    rlca                                          ; $6719: $07
    ld b, $82                                     ; $671a: $06 $82
    and d                                         ; $671c: $a2
    rlca                                          ; $671d: $07
    ld b, $82                                     ; $671e: $06 $82
    and d                                         ; $6720: $a2
    rlca                                          ; $6721: $07
    ld b, $82                                     ; $6722: $06 $82
    and d                                         ; $6724: $a2
    rlca                                          ; $6725: $07
    ld b, $05                                     ; $6726: $06 $05
    ld b, $07                                     ; $6728: $06 $07
    ld [$0a09], sp                                ; $672a: $08 $09 $0a
    dec bc                                        ; $672d: $0b
    inc c                                         ; $672e: $0c
    rra                                           ; $672f: $1f
    jr nz, jr_085_6753                            ; $6730: $20 $21

    ld [hl+], a                                   ; $6732: $22
    inc hl                                        ; $6733: $23
    inc h                                         ; $6734: $24
    dec h                                         ; $6735: $25
    ld h, $05                                     ; $6736: $26 $05
    dec b                                         ; $6738: $05
    dec b                                         ; $6739: $05
    dec b                                         ; $673a: $05
    ld b, $06                                     ; $673b: $06 $06
    dec b                                         ; $673d: $05
    ld b, $05                                     ; $673e: $06 $05
    ld b, $06                                     ; $6740: $06 $06
    ld b, $06                                     ; $6742: $06 $06
    ld b, $05                                     ; $6744: $06 $05
    ld b, $27                                     ; $6746: $06 $27
    jr z, jr_085_6773                             ; $6748: $28 $29

    ld a, [hl+]                                   ; $674a: $2a
    ld sp, hl                                     ; $674b: $f9
    ld sp, hl                                     ; $674c: $f9
    ld sp, hl                                     ; $674d: $f9
    ld sp, hl                                     ; $674e: $f9
    pop de                                        ; $674f: $d1
    pop de                                        ; $6750: $d1
    pop de                                        ; $6751: $d1
    pop de                                        ; $6752: $d1

jr_085_6753:
    pop de                                        ; $6753: $d1
    pop de                                        ; $6754: $d1
    pop de                                        ; $6755: $d1
    pop de                                        ; $6756: $d1
    ld b, $06                                     ; $6757: $06 $06
    dec b                                         ; $6759: $05
    dec b                                         ; $675a: $05
    add b                                         ; $675b: $80
    add b                                         ; $675c: $80
    add b                                         ; $675d: $80
    add b                                         ; $675e: $80
    add b                                         ; $675f: $80
    add b                                         ; $6760: $80
    add b                                         ; $6761: $80
    add b                                         ; $6762: $80
    add b                                         ; $6763: $80
    add b                                         ; $6764: $80
    add b                                         ; $6765: $80
    add b                                         ; $6766: $80
    daa                                           ; $6767: $27
    jr z, jr_085_6793                             ; $6768: $28 $29

    ld a, [hl+]                                   ; $676a: $2a
    ld sp, hl                                     ; $676b: $f9
    ld sp, hl                                     ; $676c: $f9
    ld sp, hl                                     ; $676d: $f9
    ld sp, hl                                     ; $676e: $f9
    pop de                                        ; $676f: $d1
    pop de                                        ; $6770: $d1
    pop de                                        ; $6771: $d1
    pop de                                        ; $6772: $d1

jr_085_6773:
    pop de                                        ; $6773: $d1
    pop de                                        ; $6774: $d1
    pop de                                        ; $6775: $d1
    pop de                                        ; $6776: $d1
    ld b, $06                                     ; $6777: $06 $06
    dec b                                         ; $6779: $05
    ld b, $80                                     ; $677a: $06 $80
    add b                                         ; $677c: $80
    add b                                         ; $677d: $80
    add b                                         ; $677e: $80
    add b                                         ; $677f: $80
    add b                                         ; $6780: $80
    add b                                         ; $6781: $80
    add b                                         ; $6782: $80
    add b                                         ; $6783: $80
    add b                                         ; $6784: $80
    add b                                         ; $6785: $80
    add b                                         ; $6786: $80
    ld d, $16                                     ; $6787: $16 $16
    add hl, hl                                    ; $6789: $29
    ld a, [hl+]                                   ; $678a: $2a
    ld sp, hl                                     ; $678b: $f9
    ld sp, hl                                     ; $678c: $f9
    ld sp, hl                                     ; $678d: $f9
    ld sp, hl                                     ; $678e: $f9
    pop de                                        ; $678f: $d1
    pop de                                        ; $6790: $d1
    pop de                                        ; $6791: $d1
    pop de                                        ; $6792: $d1

jr_085_6793:
    pop de                                        ; $6793: $d1
    pop de                                        ; $6794: $d1
    pop de                                        ; $6795: $d1
    pop de                                        ; $6796: $d1
    add d                                         ; $6797: $82
    and d                                         ; $6798: $a2
    rlca                                          ; $6799: $07
    dec b                                         ; $679a: $05
    add b                                         ; $679b: $80
    add b                                         ; $679c: $80
    add b                                         ; $679d: $80
    add b                                         ; $679e: $80
    add b                                         ; $679f: $80
    add b                                         ; $67a0: $80
    add b                                         ; $67a1: $80
    add b                                         ; $67a2: $80
    add b                                         ; $67a3: $80
    add b                                         ; $67a4: $80
    add b                                         ; $67a5: $80
    add b                                         ; $67a6: $80
    daa                                           ; $67a7: $27
    jr z, jr_085_67d3                             ; $67a8: $28 $29

    ld a, [hl+]                                   ; $67aa: $2a
    ld sp, hl                                     ; $67ab: $f9
    ld sp, hl                                     ; $67ac: $f9
    ld sp, hl                                     ; $67ad: $f9
    ld sp, hl                                     ; $67ae: $f9
    pop de                                        ; $67af: $d1
    pop de                                        ; $67b0: $d1
    pop de                                        ; $67b1: $d1
    pop de                                        ; $67b2: $d1
    pop de                                        ; $67b3: $d1
    pop de                                        ; $67b4: $d1
    pop de                                        ; $67b5: $d1
    pop de                                        ; $67b6: $d1
    ld b, $05                                     ; $67b7: $06 $05
    ld b, $06                                     ; $67b9: $06 $06
    add b                                         ; $67bb: $80
    add b                                         ; $67bc: $80
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
    jp hl                                         ; $67c7: $e9


    ld [$f3f2], a                                 ; $67c8: $ea $f2 $f3
    db $ed                                        ; $67cb: $ed
    push af                                       ; $67cc: $f5
    or $f7                                        ; $67cd: $f6 $f7
    db $fd                                        ; $67cf: $fd
    ld c, $0f                                     ; $67d0: $0e $0f
    db $10                                        ; $67d2: $10

jr_085_67d3:
    ld bc, $1312                                  ; $67d3: $01 $12 $13
    inc d                                         ; $67d6: $14
    ld b, $05                                     ; $67d7: $06 $05
    dec b                                         ; $67d9: $05
    dec b                                         ; $67da: $05
    ld b, $05                                     ; $67db: $06 $05
    dec b                                         ; $67dd: $05
    ld b, $05                                     ; $67de: $06 $05
    ld b, $06                                     ; $67e0: $06 $06
    ld b, $05                                     ; $67e2: $06 $05
    ld b, $06                                     ; $67e4: $06 $06
    ld b, $e9                                     ; $67e6: $06 $e9
    ld [$f3f2], a                                 ; $67e8: $ea $f2 $f3
    ld a, b                                       ; $67eb: $78
    ld a, c                                       ; $67ec: $79
    ld a, d                                       ; $67ed: $7a
    ld a, e                                       ; $67ee: $7b
    ld a, h                                       ; $67ef: $7c
    ld a, l                                       ; $67f0: $7d
    ld a, [hl]                                    ; $67f1: $7e
    ld a, a                                       ; $67f2: $7f
    add b                                         ; $67f3: $80
    add c                                         ; $67f4: $81
    add d                                         ; $67f5: $82
    add e                                         ; $67f6: $83
    dec b                                         ; $67f7: $05
    ld b, $06                                     ; $67f8: $06 $06
    ld b, $01                                     ; $67fa: $06 $01
    ld bc, $0101                                  ; $67fc: $01 $01 $01
    ld bc, $0101                                  ; $67ff: $01 $01 $01
    ld bc, $0909                                  ; $6802: $01 $09 $09
    add hl, bc                                    ; $6805: $09
    add hl, bc                                    ; $6806: $09
    dec b                                         ; $6807: $05
    ld b, $07                                     ; $6808: $06 $07
    ld [$0a09], sp                                ; $680a: $08 $09 $0a
    dec bc                                        ; $680d: $0b
    inc c                                         ; $680e: $0c
    rra                                           ; $680f: $1f
    jr nz, jr_085_6833                            ; $6810: $20 $21

    ld [hl+], a                                   ; $6812: $22
    inc hl                                        ; $6813: $23
    inc h                                         ; $6814: $24
    dec h                                         ; $6815: $25
    ld h, $06                                     ; $6816: $26 $06
    ld b, $06                                     ; $6818: $06 $06
    ld b, $06                                     ; $681a: $06 $06
    dec b                                         ; $681c: $05
    ld b, $06                                     ; $681d: $06 $06
    dec b                                         ; $681f: $05
    dec b                                         ; $6820: $05
    ld b, $06                                     ; $6821: $06 $06
    dec b                                         ; $6823: $05
    ld b, $06                                     ; $6824: $06 $06
    dec b                                         ; $6826: $05
    add h                                         ; $6827: $84
    add l                                         ; $6828: $85
    add [hl]                                      ; $6829: $86
    add a                                         ; $682a: $87
    adc b                                         ; $682b: $88
    adc c                                         ; $682c: $89
    adc d                                         ; $682d: $8a
    adc e                                         ; $682e: $8b
    rra                                           ; $682f: $1f
    jr nz, jr_085_6853                            ; $6830: $20 $21

    ld [hl+], a                                   ; $6832: $22

jr_085_6833:
    inc hl                                        ; $6833: $23
    inc h                                         ; $6834: $24
    dec h                                         ; $6835: $25
    ld h, $09                                     ; $6836: $26 $09
    add hl, bc                                    ; $6838: $09
    add hl, bc                                    ; $6839: $09
    add hl, bc                                    ; $683a: $09
    add hl, bc                                    ; $683b: $09
    add hl, bc                                    ; $683c: $09
    add hl, bc                                    ; $683d: $09
    add hl, bc                                    ; $683e: $09
    rlca                                          ; $683f: $07
    rlca                                          ; $6840: $07
    rlca                                          ; $6841: $07
    rlca                                          ; $6842: $07
    ld b, $06                                     ; $6843: $06 $06
    dec b                                         ; $6845: $05
    ld b, $27                                     ; $6846: $06 $27
    jr z, jr_085_6873                             ; $6848: $28 $29

    ld a, [hl+]                                   ; $684a: $2a
    ld sp, hl                                     ; $684b: $f9
    ld sp, hl                                     ; $684c: $f9
    ld sp, hl                                     ; $684d: $f9
    ld sp, hl                                     ; $684e: $f9
    pop de                                        ; $684f: $d1
    pop de                                        ; $6850: $d1
    pop de                                        ; $6851: $d1
    pop de                                        ; $6852: $d1

jr_085_6853:
    pop de                                        ; $6853: $d1
    pop de                                        ; $6854: $d1
    pop de                                        ; $6855: $d1
    pop de                                        ; $6856: $d1
    dec b                                         ; $6857: $05
    ld b, $05                                     ; $6858: $06 $05
    dec b                                         ; $685a: $05
    add b                                         ; $685b: $80
    add b                                         ; $685c: $80
    add b                                         ; $685d: $80
    add b                                         ; $685e: $80
    add b                                         ; $685f: $80
    add b                                         ; $6860: $80
    add b                                         ; $6861: $80
    add b                                         ; $6862: $80
    add b                                         ; $6863: $80
    add b                                         ; $6864: $80
    add b                                         ; $6865: $80
    add b                                         ; $6866: $80
    jp nc, $d1d1                                  ; $6867: $d2 $d1 $d1

    pop de                                        ; $686a: $d1
    ld a, [$d1d1]                                 ; $686b: $fa $d1 $d1
    pop de                                        ; $686e: $d1
    pop de                                        ; $686f: $d1
    pop de                                        ; $6870: $d1
    pop de                                        ; $6871: $d1
    pop de                                        ; $6872: $d1

jr_085_6873:
    pop de                                        ; $6873: $d1
    pop de                                        ; $6874: $d1
    pop de                                        ; $6875: $d1
    pop de                                        ; $6876: $d1
    add b                                         ; $6877: $80
    add b                                         ; $6878: $80
    add b                                         ; $6879: $80
    add b                                         ; $687a: $80
    add b                                         ; $687b: $80
    add b                                         ; $687c: $80
    add b                                         ; $687d: $80
    add b                                         ; $687e: $80
    add b                                         ; $687f: $80
    add b                                         ; $6880: $80
    add b                                         ; $6881: $80
    add b                                         ; $6882: $80
    add b                                         ; $6883: $80
    add b                                         ; $6884: $80
    add b                                         ; $6885: $80
    add b                                         ; $6886: $80
    ld a, [bc]                                    ; $6887: $0a
    nop                                           ; $6888: $00
    ld [de], a                                    ; $6889: $12
    nop                                           ; $688a: $00
    ldh [rNR10], a                                ; $688b: $e0 $10
    db $ed                                        ; $688d: $ed
    db $ed                                        ; $688e: $ed
    db $ed                                        ; $688f: $ed
    xor $ed                                       ; $6890: $ee $ed
    db $ed                                        ; $6892: $ed
    db $ed                                        ; $6893: $ed
    xor $ed                                       ; $6894: $ee $ed
    db $ed                                        ; $6896: $ed
    db $ed                                        ; $6897: $ed
    xor $ed                                       ; $6898: $ee $ed
    db $ed                                        ; $689a: $ed
    db $ed                                        ; $689b: $ed
    xor $80                                       ; $689c: $ee $80
    add b                                         ; $689e: $80
    add b                                         ; $689f: $80
    add b                                         ; $68a0: $80
    add b                                         ; $68a1: $80
    add b                                         ; $68a2: $80
    add b                                         ; $68a3: $80
    add b                                         ; $68a4: $80
    add b                                         ; $68a5: $80
    add b                                         ; $68a6: $80
    add b                                         ; $68a7: $80
    add b                                         ; $68a8: $80
    add b                                         ; $68a9: $80
    add b                                         ; $68aa: $80
    add b                                         ; $68ab: $80
    add b                                         ; $68ac: $80
    rst $28                                       ; $68ad: $ef
    ldh a, [$f1]                                  ; $68ae: $f0 $f1
    ld a, [c]                                     ; $68b0: $f2
    di                                            ; $68b1: $f3
    db $f4                                        ; $68b2: $f4
    push af                                       ; $68b3: $f5
    or $f7                                        ; $68b4: $f6 $f7
    ld hl, sp-$07                                 ; $68b6: $f8 $f9
    ld a, [$fcfb]                                 ; $68b8: $fa $fb $fc
    db $fd                                        ; $68bb: $fd
    cp $04                                        ; $68bc: $fe $04
    inc b                                         ; $68be: $04
    inc b                                         ; $68bf: $04
    inc b                                         ; $68c0: $04
    inc b                                         ; $68c1: $04
    inc b                                         ; $68c2: $04
    inc b                                         ; $68c3: $04
    inc b                                         ; $68c4: $04
    inc b                                         ; $68c5: $04
    inc b                                         ; $68c6: $04
    inc b                                         ; $68c7: $04
    inc b                                         ; $68c8: $04
    inc b                                         ; $68c9: $04
    inc b                                         ; $68ca: $04
    inc b                                         ; $68cb: $04
    inc b                                         ; $68cc: $04
    rst $38                                       ; $68cd: $ff
    nop                                           ; $68ce: $00
    rst $28                                       ; $68cf: $ef
    ldh a, [rSB]                                  ; $68d0: $f0 $01
    ld [bc], a                                    ; $68d2: $02
    di                                            ; $68d3: $f3
    db $f4                                        ; $68d4: $f4
    inc bc                                        ; $68d5: $03
    inc b                                         ; $68d6: $04
    rst $30                                       ; $68d7: $f7
    ld hl, sp+$05                                 ; $68d8: $f8 $05
    ld b, $fb                                     ; $68da: $06 $fb
    db $fc                                        ; $68dc: $fc
    inc b                                         ; $68dd: $04
    inc b                                         ; $68de: $04
    inc b                                         ; $68df: $04
    inc b                                         ; $68e0: $04
    inc b                                         ; $68e1: $04
    inc b                                         ; $68e2: $04
    inc b                                         ; $68e3: $04
    inc b                                         ; $68e4: $04
    inc b                                         ; $68e5: $04
    inc b                                         ; $68e6: $04
    inc b                                         ; $68e7: $04
    inc b                                         ; $68e8: $04
    inc b                                         ; $68e9: $04
    inc b                                         ; $68ea: $04
    inc b                                         ; $68eb: $04
    inc b                                         ; $68ec: $04
    rlca                                          ; $68ed: $07
    ld [$0a09], sp                                ; $68ee: $08 $09 $0a
    dec bc                                        ; $68f1: $0b
    inc c                                         ; $68f2: $0c
    dec c                                         ; $68f3: $0d
    ld c, $0f                                     ; $68f4: $0e $0f
    db $10                                        ; $68f6: $10
    ld de, $1312                                  ; $68f7: $11 $12 $13
    inc d                                         ; $68fa: $14
    dec d                                         ; $68fb: $15
    ld d, $00                                     ; $68fc: $16 $00
    nop                                           ; $68fe: $00
    nop                                           ; $68ff: $00
    nop                                           ; $6900: $00
    nop                                           ; $6901: $00
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    nop                                           ; $6905: $00
    nop                                           ; $6906: $00
    nop                                           ; $6907: $00
    nop                                           ; $6908: $00
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    rla                                           ; $690d: $17
    jr @+$1b                                      ; $690e: $18 $19

    ld a, [de]                                    ; $6910: $1a
    dec de                                        ; $6911: $1b
    inc e                                         ; $6912: $1c
    dec e                                         ; $6913: $1d
    ld e, $1f                                     ; $6914: $1e $1f
    jr nz, @+$23                                  ; $6916: $20 $21

    ld [hl+], a                                   ; $6918: $22
    inc hl                                        ; $6919: $23
    inc h                                         ; $691a: $24
    dec h                                         ; $691b: $25
    ld h, $04                                     ; $691c: $26 $04
    inc b                                         ; $691e: $04
    inc b                                         ; $691f: $04
    inc b                                         ; $6920: $04
    dec b                                         ; $6921: $05
    dec b                                         ; $6922: $05
    dec b                                         ; $6923: $05
    dec b                                         ; $6924: $05
    dec b                                         ; $6925: $05
    rlca                                          ; $6926: $07
    rlca                                          ; $6927: $07
    ld bc, $0705                                  ; $6928: $01 $05 $07
    ld bc, $2701                                  ; $692b: $01 $01 $27
    jr z, @+$19                                   ; $692e: $28 $17

    jr jr_085_695b                                ; $6930: $18 $29

    ld a, [hl+]                                   ; $6932: $2a
    dec hl                                        ; $6933: $2b
    inc l                                         ; $6934: $2c
    dec l                                         ; $6935: $2d
    ld l, $2f                                     ; $6936: $2e $2f
    jr nc, jr_085_696b                            ; $6938: $30 $31

    ld [hl-], a                                   ; $693a: $32
    inc sp                                        ; $693b: $33
    inc [hl]                                      ; $693c: $34
    inc b                                         ; $693d: $04
    inc b                                         ; $693e: $04
    inc b                                         ; $693f: $04
    inc b                                         ; $6940: $04
    dec b                                         ; $6941: $05
    dec b                                         ; $6942: $05
    dec b                                         ; $6943: $05
    dec b                                         ; $6944: $05
    rlca                                          ; $6945: $07
    ld bc, $8282                                  ; $6946: $01 $82 $82
    add d                                         ; $6949: $82
    add d                                         ; $694a: $82
    add d                                         ; $694b: $82
    add d                                         ; $694c: $82
    dec [hl]                                      ; $694d: $35
    ld [hl], $37                                  ; $694e: $36 $37
    scf                                           ; $6950: $37
    dec de                                        ; $6951: $1b
    inc e                                         ; $6952: $1c
    dec e                                         ; $6953: $1d
    ld e, $1f                                     ; $6954: $1e $1f
    jr nz, jr_085_6979                            ; $6956: $20 $21

    ld [hl+], a                                   ; $6958: $22
    inc hl                                        ; $6959: $23
    inc h                                         ; $695a: $24

jr_085_695b:
    dec h                                         ; $695b: $25
    ld h, $04                                     ; $695c: $26 $04
    inc b                                         ; $695e: $04
    inc b                                         ; $695f: $04
    inc b                                         ; $6960: $04
    dec b                                         ; $6961: $05
    dec b                                         ; $6962: $05
    dec b                                         ; $6963: $05
    dec b                                         ; $6964: $05
    ld bc, $0107                                  ; $6965: $01 $07 $01
    ld bc, $0701                                  ; $6968: $01 $01 $07

jr_085_696b:
    rlca                                          ; $696b: $07
    ld bc, $3938                                  ; $696c: $01 $38 $39
    ld a, [hl-]                                   ; $696f: $3a
    dec sp                                        ; $6970: $3b
    inc a                                         ; $6971: $3c
    dec a                                         ; $6972: $3d
    ld a, $3f                                     ; $6973: $3e $3f
    ld b, b                                       ; $6975: $40
    ld b, c                                       ; $6976: $41
    ld b, d                                       ; $6977: $42
    ld b, e                                       ; $6978: $43

jr_085_6979:
    dec de                                        ; $6979: $1b
    inc e                                         ; $697a: $1c
    dec e                                         ; $697b: $1d
    ld e, $05                                     ; $697c: $1e $05
    ld bc, $0101                                  ; $697e: $01 $01 $01
    dec b                                         ; $6981: $05
    ld bc, $0701                                  ; $6982: $01 $01 $07
    dec b                                         ; $6985: $05
    ld bc, $0101                                  ; $6986: $01 $01 $01
    dec b                                         ; $6989: $05
    rlca                                          ; $698a: $07
    ld bc, $4401                                  ; $698b: $01 $01 $44
    ld b, l                                       ; $698e: $45
    ld b, [hl]                                    ; $698f: $46
    ld b, a                                       ; $6990: $47
    ld c, b                                       ; $6991: $48
    ld c, c                                       ; $6992: $49
    ld c, d                                       ; $6993: $4a
    ld c, d                                       ; $6994: $4a
    ld c, e                                       ; $6995: $4b
    ld c, h                                       ; $6996: $4c
    ld c, l                                       ; $6997: $4d
    ld c, [hl]                                    ; $6998: $4e
    ld c, a                                       ; $6999: $4f
    ld d, b                                       ; $699a: $50
    ld d, c                                       ; $699b: $51
    ld d, d                                       ; $699c: $52
    add d                                         ; $699d: $82
    add d                                         ; $699e: $82
    add d                                         ; $699f: $82
    add d                                         ; $69a0: $82
    ld [bc], a                                    ; $69a1: $02
    ld [bc], a                                    ; $69a2: $02
    ld [bc], a                                    ; $69a3: $02
    ld [bc], a                                    ; $69a4: $02
    ld [bc], a                                    ; $69a5: $02
    ld [bc], a                                    ; $69a6: $02
    ld [bc], a                                    ; $69a7: $02
    ld [bc], a                                    ; $69a8: $02
    ld [bc], a                                    ; $69a9: $02
    ld [bc], a                                    ; $69aa: $02
    ld [bc], a                                    ; $69ab: $02
    ld [bc], a                                    ; $69ac: $02
    ld d, e                                       ; $69ad: $53
    ld d, h                                       ; $69ae: $54
    ld a, [hl-]                                   ; $69af: $3a
    dec sp                                        ; $69b0: $3b
    ld d, l                                       ; $69b1: $55
    ld d, [hl]                                    ; $69b2: $56
    ld a, $3f                                     ; $69b3: $3e $3f
    ld d, a                                       ; $69b5: $57
    ld e, b                                       ; $69b6: $58
    ld b, d                                       ; $69b7: $42
    ld b, e                                       ; $69b8: $43
    ld e, c                                       ; $69b9: $59
    ld e, d                                       ; $69ba: $5a
    dec e                                         ; $69bb: $1d
    ld e, $02                                     ; $69bc: $1e $02
    ld [bc], a                                    ; $69be: $02
    ld bc, $0201                                  ; $69bf: $01 $01 $02
    ld [bc], a                                    ; $69c2: $02
    ld bc, $0201                                  ; $69c3: $01 $01 $02
    ld [bc], a                                    ; $69c6: $02
    dec b                                         ; $69c7: $05
    ld bc, $0202                                  ; $69c8: $01 $02 $02
    dec b                                         ; $69cb: $05
    ld bc, $201f                                  ; $69cc: $01 $1f $20
    ld hl, $2322                                  ; $69cf: $21 $22 $23
    inc h                                         ; $69d2: $24
    dec h                                         ; $69d3: $25
    ld h, $38                                     ; $69d4: $26 $38
    add hl, sp                                    ; $69d6: $39
    ld a, [hl-]                                   ; $69d7: $3a
    dec sp                                        ; $69d8: $3b
    inc a                                         ; $69d9: $3c
    dec a                                         ; $69da: $3d
    ld a, $3f                                     ; $69db: $3e $3f
    dec b                                         ; $69dd: $05
    ld bc, $0107                                  ; $69de: $01 $07 $01
    dec b                                         ; $69e1: $05
    rlca                                          ; $69e2: $07
    ld bc, $0501                                  ; $69e3: $01 $01 $05
    ld bc, $0107                                  ; $69e6: $01 $07 $01
    dec b                                         ; $69e9: $05
    rlca                                          ; $69ea: $07
    ld bc, $5b01                                  ; $69eb: $01 $01 $5b
    ld l, $5c                                     ; $69ee: $2e $5c
    ld e, l                                       ; $69f0: $5d
    ld e, [hl]                                    ; $69f1: $5e
    ld e, a                                       ; $69f2: $5f
    ld h, b                                       ; $69f3: $60
    ld h, c                                       ; $69f4: $61
    ld h, d                                       ; $69f5: $62
    ld h, e                                       ; $69f6: $63
    ld h, h                                       ; $69f7: $64
    ld h, l                                       ; $69f8: $65
    ld h, [hl]                                    ; $69f9: $66
    ld h, a                                       ; $69fa: $67
    ld l, b                                       ; $69fb: $68
    ld l, c                                       ; $69fc: $69
    ld [bc], a                                    ; $69fd: $02
    dec b                                         ; $69fe: $05
    dec b                                         ; $69ff: $05
    dec b                                         ; $6a00: $05
    dec b                                         ; $6a01: $05
    dec b                                         ; $6a02: $05
    dec b                                         ; $6a03: $05
    dec b                                         ; $6a04: $05
    ld bc, $0101                                  ; $6a05: $01 $01 $01
    rlca                                          ; $6a08: $07
    rlca                                          ; $6a09: $07
    ld bc, $0101                                  ; $6a0a: $01 $01 $01
    rra                                           ; $6a0d: $1f
    ld e, e                                       ; $6a0e: $5b
    ld hl, $2322                                  ; $6a0f: $21 $22 $23
    inc h                                         ; $6a12: $24
    dec h                                         ; $6a13: $25
    ld h, $38                                     ; $6a14: $26 $38
    add hl, sp                                    ; $6a16: $39
    ld a, [hl-]                                   ; $6a17: $3a
    dec sp                                        ; $6a18: $3b
    inc a                                         ; $6a19: $3c
    dec a                                         ; $6a1a: $3d
    ld a, $6a                                     ; $6a1b: $3e $6a
    dec b                                         ; $6a1d: $05
    ld [hl+], a                                   ; $6a1e: $22
    dec b                                         ; $6a1f: $05
    ld bc, $0505                                  ; $6a20: $01 $05 $05
    dec b                                         ; $6a23: $05
    ld bc, $0101                                  ; $6a24: $01 $01 $01
    ld bc, $0101                                  ; $6a27: $01 $01 $01
    rlca                                          ; $6a2a: $07
    ld bc, $6b03                                  ; $6a2b: $01 $03 $6b
    ld l, h                                       ; $6a2e: $6c
    ld l, l                                       ; $6a2f: $6d
    ld l, [hl]                                    ; $6a30: $6e
    ld l, a                                       ; $6a31: $6f
    ld [hl], b                                    ; $6a32: $70
    ld [hl], c                                    ; $6a33: $71
    ld [hl], d                                    ; $6a34: $72
    ld [hl], e                                    ; $6a35: $73
    ld [hl], h                                    ; $6a36: $74
    ld [hl], l                                    ; $6a37: $75
    halt                                          ; $6a38: $76
    ld [hl], a                                    ; $6a39: $77
    ld a, b                                       ; $6a3a: $78
    ld a, c                                       ; $6a3b: $79
    ld a, d                                       ; $6a3c: $7a
    nop                                           ; $6a3d: $00
    nop                                           ; $6a3e: $00
    nop                                           ; $6a3f: $00
    nop                                           ; $6a40: $00
    nop                                           ; $6a41: $00
    nop                                           ; $6a42: $00
    nop                                           ; $6a43: $00
    nop                                           ; $6a44: $00
    nop                                           ; $6a45: $00
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    nop                                           ; $6a48: $00
    nop                                           ; $6a49: $00
    nop                                           ; $6a4a: $00
    nop                                           ; $6a4b: $00
    nop                                           ; $6a4c: $00
    ld a, e                                       ; $6a4d: $7b
    ld a, h                                       ; $6a4e: $7c
    rst $28                                       ; $6a4f: $ef
    ldh a, [$7d]                                  ; $6a50: $f0 $7d
    ld a, [hl]                                    ; $6a52: $7e
    di                                            ; $6a53: $f3
    db $f4                                        ; $6a54: $f4
    ld a, a                                       ; $6a55: $7f
    add b                                         ; $6a56: $80
    rst $30                                       ; $6a57: $f7
    ld hl, sp-$7f                                 ; $6a58: $f8 $81
    add d                                         ; $6a5a: $82
    ei                                            ; $6a5b: $fb
    db $fc                                        ; $6a5c: $fc
    nop                                           ; $6a5d: $00
    nop                                           ; $6a5e: $00
    inc b                                         ; $6a5f: $04
    inc b                                         ; $6a60: $04
    nop                                           ; $6a61: $00
    nop                                           ; $6a62: $00
    inc b                                         ; $6a63: $04
    inc b                                         ; $6a64: $04
    nop                                           ; $6a65: $00
    ld [$0404], sp                                ; $6a66: $08 $04 $04
    ld [$0408], sp                                ; $6a69: $08 $08 $04
    inc b                                         ; $6a6c: $04
    pop af                                        ; $6a6d: $f1
    ld a, [c]                                     ; $6a6e: $f2
    rst $38                                       ; $6a6f: $ff
    nop                                           ; $6a70: $00
    push af                                       ; $6a71: $f5
    or $01                                        ; $6a72: $f6 $01
    ld [bc], a                                    ; $6a74: $02
    ld sp, hl                                     ; $6a75: $f9
    ld a, [$0403]                                 ; $6a76: $fa $03 $04
    db $fd                                        ; $6a79: $fd
    cp $05                                        ; $6a7a: $fe $05
    ld b, $04                                     ; $6a7c: $06 $04
    inc b                                         ; $6a7e: $04
    inc b                                         ; $6a7f: $04
    inc b                                         ; $6a80: $04
    inc b                                         ; $6a81: $04
    inc b                                         ; $6a82: $04
    inc b                                         ; $6a83: $04
    inc b                                         ; $6a84: $04
    inc b                                         ; $6a85: $04
    inc b                                         ; $6a86: $04
    inc b                                         ; $6a87: $04
    inc b                                         ; $6a88: $04
    inc b                                         ; $6a89: $04
    inc b                                         ; $6a8a: $04
    inc b                                         ; $6a8b: $04
    inc b                                         ; $6a8c: $04
    rst $28                                       ; $6a8d: $ef
    ldh a, [$f1]                                  ; $6a8e: $f0 $f1
    ld a, [c]                                     ; $6a90: $f2
    di                                            ; $6a91: $f3
    db $f4                                        ; $6a92: $f4
    push af                                       ; $6a93: $f5
    or $83                                        ; $6a94: $f6 $83
    add h                                         ; $6a96: $84
    add l                                         ; $6a97: $85
    add e                                         ; $6a98: $83
    add [hl]                                      ; $6a99: $86
    add a                                         ; $6a9a: $87
    adc b                                         ; $6a9b: $88
    add [hl]                                      ; $6a9c: $86
    inc b                                         ; $6a9d: $04
    inc b                                         ; $6a9e: $04
    inc b                                         ; $6a9f: $04
    inc b                                         ; $6aa0: $04
    inc b                                         ; $6aa1: $04
    inc b                                         ; $6aa2: $04
    inc b                                         ; $6aa3: $04
    inc b                                         ; $6aa4: $04
    ld c, $0e                                     ; $6aa5: $0e $0e
    ld c, $0e                                     ; $6aa7: $0e $0e
    ld c, $0e                                     ; $6aa9: $0e $0e
    ld c, $0e                                     ; $6aab: $0e $0e
    dec [hl]                                      ; $6aad: $35
    ld [hl], $37                                  ; $6aae: $36 $37
    dec [hl]                                      ; $6ab0: $35
    add hl, hl                                    ; $6ab1: $29
    ld a, [hl+]                                   ; $6ab2: $2a
    dec hl                                        ; $6ab3: $2b
    inc l                                         ; $6ab4: $2c
    dec l                                         ; $6ab5: $2d
    ld l, $5c                                     ; $6ab6: $2e $5c
    ld e, l                                       ; $6ab8: $5d
    ld e, [hl]                                    ; $6ab9: $5e
    ld e, a                                       ; $6aba: $5f
    ld h, b                                       ; $6abb: $60
    ld h, c                                       ; $6abc: $61
    inc b                                         ; $6abd: $04
    inc b                                         ; $6abe: $04
    inc b                                         ; $6abf: $04
    inc b                                         ; $6ac0: $04
    dec b                                         ; $6ac1: $05
    dec b                                         ; $6ac2: $05
    dec b                                         ; $6ac3: $05
    dec b                                         ; $6ac4: $05
    rlca                                          ; $6ac5: $07
    ld bc, $0107                                  ; $6ac6: $01 $07 $01
    rlca                                          ; $6ac9: $07
    ld bc, $0101                                  ; $6aca: $01 $01 $01
    ld [hl], $37                                  ; $6acd: $36 $37
    rla                                           ; $6acf: $17
    jr jr_085_6aed                                ; $6ad0: $18 $1b

    inc e                                         ; $6ad2: $1c
    dec e                                         ; $6ad3: $1d
    ld e, $1f                                     ; $6ad4: $1e $1f
    jr nz, jr_085_6af9                            ; $6ad6: $20 $21

    ld [hl+], a                                   ; $6ad8: $22
    adc c                                         ; $6ad9: $89
    adc d                                         ; $6ada: $8a
    adc e                                         ; $6adb: $8b
    adc h                                         ; $6adc: $8c
    inc b                                         ; $6add: $04
    inc b                                         ; $6ade: $04
    inc b                                         ; $6adf: $04
    inc b                                         ; $6ae0: $04
    dec b                                         ; $6ae1: $05
    dec b                                         ; $6ae2: $05
    dec b                                         ; $6ae3: $05
    dec b                                         ; $6ae4: $05
    ld bc, $0107                                  ; $6ae5: $01 $07 $01
    ld bc, $0909                                  ; $6ae8: $01 $09 $09
    add hl, bc                                    ; $6aeb: $09
    add hl, bc                                    ; $6aec: $09

jr_085_6aed:
    add hl, de                                    ; $6aed: $19
    ld a, [de]                                    ; $6aee: $1a
    daa                                           ; $6aef: $27
    jr z, jr_085_6b1b                             ; $6af0: $28 $29

    ld a, [hl+]                                   ; $6af2: $2a
    dec hl                                        ; $6af3: $2b
    inc l                                         ; $6af4: $2c
    dec l                                         ; $6af5: $2d
    ld l, $5c                                     ; $6af6: $2e $5c
    ld e, l                                       ; $6af8: $5d

jr_085_6af9:
    adc l                                         ; $6af9: $8d
    ld e, a                                       ; $6afa: $5f
    ld h, b                                       ; $6afb: $60
    ld h, c                                       ; $6afc: $61
    inc b                                         ; $6afd: $04
    inc b                                         ; $6afe: $04
    inc b                                         ; $6aff: $04
    inc b                                         ; $6b00: $04
    dec b                                         ; $6b01: $05
    dec b                                         ; $6b02: $05
    dec b                                         ; $6b03: $05
    dec b                                         ; $6b04: $05
    ld bc, $0701                                  ; $6b05: $01 $01 $07
    dec b                                         ; $6b08: $05
    add hl, bc                                    ; $6b09: $09
    ld bc, $0501                                  ; $6b0a: $01 $01 $05
    adc [hl]                                      ; $6b0d: $8e
    adc a                                         ; $6b0e: $8f
    sub b                                         ; $6b0f: $90
    adc [hl]                                      ; $6b10: $8e
    sub c                                         ; $6b11: $91
    sub d                                         ; $6b12: $92
    sub e                                         ; $6b13: $93
    sub c                                         ; $6b14: $91
    sub h                                         ; $6b15: $94
    sub l                                         ; $6b16: $95
    sub [hl]                                      ; $6b17: $96
    sub h                                         ; $6b18: $94
    inc hl                                        ; $6b19: $23
    inc h                                         ; $6b1a: $24

jr_085_6b1b:
    dec h                                         ; $6b1b: $25
    ld h, $0e                                     ; $6b1c: $26 $0e
    ld c, $0e                                     ; $6b1e: $0e $0e
    ld c, $0e                                     ; $6b20: $0e $0e
    ld c, $0e                                     ; $6b22: $0e $0e
    ld c, $0e                                     ; $6b24: $0e $0e
    ld c, $0e                                     ; $6b26: $0e $0e
    ld c, $05                                     ; $6b28: $0e $05
    dec b                                         ; $6b2a: $05
    dec b                                         ; $6b2b: $05
    dec b                                         ; $6b2c: $05
    ld h, d                                       ; $6b2d: $62
    ld h, e                                       ; $6b2e: $63
    ld h, h                                       ; $6b2f: $64
    sub a                                         ; $6b30: $97
    ld h, [hl]                                    ; $6b31: $66
    ld h, a                                       ; $6b32: $67
    ld l, b                                       ; $6b33: $68
    sbc b                                         ; $6b34: $98
    sbc c                                         ; $6b35: $99
    sbc d                                         ; $6b36: $9a
    sbc e                                         ; $6b37: $9b
    sbc h                                         ; $6b38: $9c
    add hl, hl                                    ; $6b39: $29
    ld a, [hl+]                                   ; $6b3a: $2a
    dec hl                                        ; $6b3b: $2b
    sbc l                                         ; $6b3c: $9d
    ld bc, $0101                                  ; $6b3d: $01 $01 $01
    add hl, bc                                    ; $6b40: $09
    rlca                                          ; $6b41: $07
    ld bc, $0901                                  ; $6b42: $01 $01 $09
    add hl, bc                                    ; $6b45: $09
    add hl, bc                                    ; $6b46: $09
    rrca                                          ; $6b47: $0f
    add hl, bc                                    ; $6b48: $09
    rlca                                          ; $6b49: $07
    ld bc, $0901                                  ; $6b4a: $01 $01 $09
    sbc [hl]                                      ; $6b4d: $9e
    sbc a                                         ; $6b4e: $9f
    db $ed                                        ; $6b4f: $ed
    and b                                         ; $6b50: $a0
    and c                                         ; $6b51: $a1
    and d                                         ; $6b52: $a2
    db $ed                                        ; $6b53: $ed
    and e                                         ; $6b54: $a3
    and h                                         ; $6b55: $a4
    and l                                         ; $6b56: $a5
    and [hl]                                      ; $6b57: $a6
    and a                                         ; $6b58: $a7
    xor b                                         ; $6b59: $a8
    db $ed                                        ; $6b5a: $ed
    xor c                                         ; $6b5b: $a9
    xor d                                         ; $6b5c: $aa
    dec bc                                        ; $6b5d: $0b
    dec bc                                        ; $6b5e: $0b
    inc bc                                        ; $6b5f: $03
    dec bc                                        ; $6b60: $0b
    dec bc                                        ; $6b61: $0b
    dec bc                                        ; $6b62: $0b
    inc bc                                        ; $6b63: $03
    dec bc                                        ; $6b64: $0b
    dec bc                                        ; $6b65: $0b
    dec bc                                        ; $6b66: $0b
    dec bc                                        ; $6b67: $0b
    dec bc                                        ; $6b68: $0b
    dec bc                                        ; $6b69: $0b
    inc bc                                        ; $6b6a: $03
    dec bc                                        ; $6b6b: $0b
    dec bc                                        ; $6b6c: $0b
    xor e                                         ; $6b6d: $ab
    xor h                                         ; $6b6e: $ac
    ld h, h                                       ; $6b6f: $64
    ld h, l                                       ; $6b70: $65
    xor l                                         ; $6b71: $ad
    xor [hl]                                      ; $6b72: $ae
    ld l, b                                       ; $6b73: $68
    ld l, c                                       ; $6b74: $69
    xor a                                         ; $6b75: $af
    or b                                          ; $6b76: $b0
    sbc e                                         ; $6b77: $9b
    or c                                          ; $6b78: $b1
    or d                                          ; $6b79: $b2
    or e                                          ; $6b7a: $b3
    dec hl                                        ; $6b7b: $2b
    inc l                                         ; $6b7c: $2c
    dec bc                                        ; $6b7d: $0b
    add hl, bc                                    ; $6b7e: $09
    rlca                                          ; $6b7f: $07
    rlca                                          ; $6b80: $07
    dec bc                                        ; $6b81: $0b
    add hl, bc                                    ; $6b82: $09
    ld bc, $0b07                                  ; $6b83: $01 $07 $0b
    add hl, bc                                    ; $6b86: $09
    add hl, bc                                    ; $6b87: $09
    add hl, bc                                    ; $6b88: $09
    dec bc                                        ; $6b89: $0b
    add hl, bc                                    ; $6b8a: $09
    ld bc, $3801                                  ; $6b8b: $01 $01 $38
    add hl, sp                                    ; $6b8e: $39
    ld a, [hl-]                                   ; $6b8f: $3a
    dec sp                                        ; $6b90: $3b
    inc a                                         ; $6b91: $3c
    dec a                                         ; $6b92: $3d
    ld a, $3f                                     ; $6b93: $3e $3f
    ld b, b                                       ; $6b95: $40
    ld b, c                                       ; $6b96: $41
    ld b, d                                       ; $6b97: $42
    ld b, e                                       ; $6b98: $43
    dec de                                        ; $6b99: $1b
    inc e                                         ; $6b9a: $1c
    dec e                                         ; $6b9b: $1d
    ld e, $01                                     ; $6b9c: $1e $01
    ld bc, $0707                                  ; $6b9e: $01 $07 $07
    rlca                                          ; $6ba1: $07
    ld bc, $0701                                  ; $6ba2: $01 $01 $07
    rlca                                          ; $6ba5: $07
    ld bc, $0101                                  ; $6ba6: $01 $01 $01
    rlca                                          ; $6ba9: $07
    rlca                                          ; $6baa: $07
    rlca                                          ; $6bab: $07
    ld bc, $2e2d                                  ; $6bac: $01 $2d $2e
    ld e, h                                       ; $6baf: $5c
    or h                                          ; $6bb0: $b4
    ld e, [hl]                                    ; $6bb1: $5e
    ld e, a                                       ; $6bb2: $5f
    ld h, b                                       ; $6bb3: $60
    ld h, c                                       ; $6bb4: $61
    ld h, d                                       ; $6bb5: $62
    ld h, e                                       ; $6bb6: $63
    ld h, h                                       ; $6bb7: $64
    ld h, l                                       ; $6bb8: $65
    or l                                          ; $6bb9: $b5
    ld h, a                                       ; $6bba: $67
    ld l, b                                       ; $6bbb: $68
    ld l, c                                       ; $6bbc: $69
    ld bc, $0101                                  ; $6bbd: $01 $01 $01
    add hl, bc                                    ; $6bc0: $09
    rlca                                          ; $6bc1: $07
    rlca                                          ; $6bc2: $07
    rlca                                          ; $6bc3: $07
    ld bc, $0101                                  ; $6bc4: $01 $01 $01
    ld bc, $0b01                                  ; $6bc7: $01 $01 $0b
    rlca                                          ; $6bca: $07
    ld bc, $b601                                  ; $6bcb: $01 $01 $b6
    or a                                          ; $6bce: $b7
    cp b                                          ; $6bcf: $b8
    or a                                          ; $6bd0: $b7
    inc hl                                        ; $6bd1: $23
    inc h                                         ; $6bd2: $24
    dec h                                         ; $6bd3: $25
    ld h, $38                                     ; $6bd4: $26 $38
    add hl, sp                                    ; $6bd6: $39
    ld a, [hl-]                                   ; $6bd7: $3a
    dec sp                                        ; $6bd8: $3b
    inc a                                         ; $6bd9: $3c
    cp c                                          ; $6bda: $b9
    cp d                                          ; $6bdb: $ba
    ccf                                           ; $6bdc: $3f
    dec bc                                        ; $6bdd: $0b
    dec bc                                        ; $6bde: $0b
    dec bc                                        ; $6bdf: $0b
    dec hl                                        ; $6be0: $2b
    ld bc, $0505                                  ; $6be1: $01 $05 $05
    dec b                                         ; $6be4: $05
    rlca                                          ; $6be5: $07
    ld bc, $0107                                  ; $6be6: $01 $07 $01
    ld bc, $0b0b                                  ; $6be9: $01 $0b $0b
    ld bc, $bcbb                                  ; $6bec: $01 $bb $bc
    ld e, h                                       ; $6bef: $5c
    ld e, l                                       ; $6bf0: $5d
    ld e, [hl]                                    ; $6bf1: $5e
    ld e, a                                       ; $6bf2: $5f
    ld h, b                                       ; $6bf3: $60
    ld h, c                                       ; $6bf4: $61
    ld h, d                                       ; $6bf5: $62
    ld h, e                                       ; $6bf6: $63
    ld h, h                                       ; $6bf7: $64
    ld h, l                                       ; $6bf8: $65
    ld h, [hl]                                    ; $6bf9: $66
    ld h, a                                       ; $6bfa: $67
    ld l, b                                       ; $6bfb: $68
    ld l, c                                       ; $6bfc: $69
    dec bc                                        ; $6bfd: $0b
    add hl, bc                                    ; $6bfe: $09
    rlca                                          ; $6bff: $07
    ld bc, $0701                                  ; $6c00: $01 $01 $07
    rlca                                          ; $6c03: $07
    ld bc, $0701                                  ; $6c04: $01 $01 $07
    ld bc, $0701                                  ; $6c07: $01 $01 $07
    rlca                                          ; $6c0a: $07
    ld bc, $1f01                                  ; $6c0b: $01 $01 $1f
    jr nz, jr_085_6c31                            ; $6c0e: $20 $21

    ld [hl+], a                                   ; $6c10: $22
    inc hl                                        ; $6c11: $23
    inc h                                         ; $6c12: $24
    dec h                                         ; $6c13: $25
    ld h, $38                                     ; $6c14: $26 $38
    add hl, sp                                    ; $6c16: $39
    ld a, [hl-]                                   ; $6c17: $3a
    dec sp                                        ; $6c18: $3b
    inc a                                         ; $6c19: $3c
    dec a                                         ; $6c1a: $3d
    ld a, $3f                                     ; $6c1b: $3e $3f
    ld bc, $0701                                  ; $6c1d: $01 $01 $07
    rlca                                          ; $6c20: $07
    ld bc, $0707                                  ; $6c21: $01 $07 $07
    ld bc, $0107                                  ; $6c24: $01 $07 $01
    ld bc, $0101                                  ; $6c27: $01 $01 $01
    ld bc, $0101                                  ; $6c2a: $01 $01 $01
    rst $38                                       ; $6c2d: $ff
    nop                                           ; $6c2e: $00
    xor $ed                                       ; $6c2f: $ee $ed

jr_085_6c31:
    ld bc, $ee02                                  ; $6c31: $01 $02 $ee
    db $ed                                        ; $6c34: $ed
    add h                                         ; $6c35: $84
    add l                                         ; $6c36: $85
    xor $ed                                       ; $6c37: $ee $ed
    add a                                         ; $6c39: $87
    adc b                                         ; $6c3a: $88
    xor $ed                                       ; $6c3b: $ee $ed
    inc b                                         ; $6c3d: $04
    inc b                                         ; $6c3e: $04
    add b                                         ; $6c3f: $80
    add b                                         ; $6c40: $80
    inc b                                         ; $6c41: $04
    inc b                                         ; $6c42: $04
    add b                                         ; $6c43: $80
    add b                                         ; $6c44: $80
    ld c, $0e                                     ; $6c45: $0e $0e
    add b                                         ; $6c47: $80
    add b                                         ; $6c48: $80
    ld c, $0e                                     ; $6c49: $0e $0e
    add b                                         ; $6c4b: $80
    add b                                         ; $6c4c: $80
    db $ed                                        ; $6c4d: $ed
    db $ed                                        ; $6c4e: $ed
    db $ed                                        ; $6c4f: $ed
    db $ed                                        ; $6c50: $ed
    db $ed                                        ; $6c51: $ed
    db $ed                                        ; $6c52: $ed
    db $ed                                        ; $6c53: $ed
    db $ed                                        ; $6c54: $ed
    db $ed                                        ; $6c55: $ed
    db $ed                                        ; $6c56: $ed
    db $ed                                        ; $6c57: $ed
    db $ed                                        ; $6c58: $ed
    db $ed                                        ; $6c59: $ed
    db $ed                                        ; $6c5a: $ed
    db $ed                                        ; $6c5b: $ed
    db $ed                                        ; $6c5c: $ed
    add b                                         ; $6c5d: $80
    add b                                         ; $6c5e: $80
    add b                                         ; $6c5f: $80
    add b                                         ; $6c60: $80
    add b                                         ; $6c61: $80
    add b                                         ; $6c62: $80
    add b                                         ; $6c63: $80
    add b                                         ; $6c64: $80
    add b                                         ; $6c65: $80
    add b                                         ; $6c66: $80
    add b                                         ; $6c67: $80
    add b                                         ; $6c68: $80
    add b                                         ; $6c69: $80
    add b                                         ; $6c6a: $80
    add b                                         ; $6c6b: $80
    add b                                         ; $6c6c: $80
    adc a                                         ; $6c6d: $8f
    sub b                                         ; $6c6e: $90
    xor $ed                                       ; $6c6f: $ee $ed
    sub d                                         ; $6c71: $92
    sub e                                         ; $6c72: $93
    xor $ed                                       ; $6c73: $ee $ed
    sub l                                         ; $6c75: $95
    sub [hl]                                      ; $6c76: $96
    xor $ed                                       ; $6c77: $ee $ed
    ld e, [hl]                                    ; $6c79: $5e
    ld e, a                                       ; $6c7a: $5f
    xor $ed                                       ; $6c7b: $ee $ed
    ld c, $0e                                     ; $6c7d: $0e $0e
    add b                                         ; $6c7f: $80
    add b                                         ; $6c80: $80
    ld c, $0e                                     ; $6c81: $0e $0e
    add b                                         ; $6c83: $80
    add b                                         ; $6c84: $80
    ld c, $0e                                     ; $6c85: $0e $0e
    add b                                         ; $6c87: $80
    add b                                         ; $6c88: $80
    dec b                                         ; $6c89: $05
    dec b                                         ; $6c8a: $05
    add b                                         ; $6c8b: $80
    add b                                         ; $6c8c: $80
    ld h, d                                       ; $6c8d: $62
    ld h, e                                       ; $6c8e: $63
    xor $ed                                       ; $6c8f: $ee $ed
    ld h, [hl]                                    ; $6c91: $66
    ld h, a                                       ; $6c92: $67
    xor $ed                                       ; $6c93: $ee $ed
    sbc c                                         ; $6c95: $99
    sbc d                                         ; $6c96: $9a
    xor $ed                                       ; $6c97: $ee $ed
    add hl, hl                                    ; $6c99: $29
    ld a, [hl+]                                   ; $6c9a: $2a
    xor $ed                                       ; $6c9b: $ee $ed
    ld bc, $8005                                  ; $6c9d: $01 $05 $80
    add b                                         ; $6ca0: $80
    ld bc, $8005                                  ; $6ca1: $01 $05 $80
    add b                                         ; $6ca4: $80
    add hl, bc                                    ; $6ca5: $09
    dec c                                         ; $6ca6: $0d
    add b                                         ; $6ca7: $80
    add b                                         ; $6ca8: $80
    ld bc, $8005                                  ; $6ca9: $01 $05 $80
    add b                                         ; $6cac: $80
    dec l                                         ; $6cad: $2d
    ld l, $bd                                     ; $6cae: $2e $bd
    cp [hl]                                       ; $6cb0: $be
    ld e, [hl]                                    ; $6cb1: $5e
    ld e, a                                       ; $6cb2: $5f
    cp a                                          ; $6cb3: $bf
    ldh a, [$62]                                  ; $6cb4: $f0 $62
    ld h, e                                       ; $6cb6: $63
    ret nz                                        ; $6cb7: $c0

    db $f4                                        ; $6cb8: $f4
    ld h, [hl]                                    ; $6cb9: $66
    ld h, a                                       ; $6cba: $67
    pop bc                                        ; $6cbb: $c1
    ld hl, sp+$01                                 ; $6cbc: $f8 $01
    dec b                                         ; $6cbe: $05
    adc b                                         ; $6cbf: $88
    adc b                                         ; $6cc0: $88
    ld bc, $0c05                                  ; $6cc1: $01 $05 $0c
    inc b                                         ; $6cc4: $04
    rlca                                          ; $6cc5: $07
    dec b                                         ; $6cc6: $05
    inc c                                         ; $6cc7: $0c
    inc b                                         ; $6cc8: $04
    rlca                                          ; $6cc9: $07
    dec b                                         ; $6cca: $05
    inc c                                         ; $6ccb: $0c
    inc b                                         ; $6ccc: $04
    jp nz, $eded                                  ; $6ccd: $c2 $ed $ed

    db $ed                                        ; $6cd0: $ed
    xor $ed                                       ; $6cd1: $ee $ed
    db $ed                                        ; $6cd3: $ed
    db $ed                                        ; $6cd4: $ed
    jp $eded                                      ; $6cd5: $c3 $ed $ed


    db $ed                                        ; $6cd8: $ed
    jp $eded                                      ; $6cd9: $c3 $ed $ed


    db $ed                                        ; $6cdc: $ed
    adc b                                         ; $6cdd: $88
    add b                                         ; $6cde: $80
    add b                                         ; $6cdf: $80
    add b                                         ; $6ce0: $80
    add b                                         ; $6ce1: $80
    add b                                         ; $6ce2: $80
    add b                                         ; $6ce3: $80
    add b                                         ; $6ce4: $80
    adc b                                         ; $6ce5: $88
    add b                                         ; $6ce6: $80
    add b                                         ; $6ce7: $80
    add b                                         ; $6ce8: $80
    adc b                                         ; $6ce9: $88
    add b                                         ; $6cea: $80
    add b                                         ; $6ceb: $80
    add b                                         ; $6cec: $80
    ld b, b                                       ; $6ced: $40
    ld b, c                                       ; $6cee: $41
    ld b, d                                       ; $6cef: $42
    ld b, e                                       ; $6cf0: $43
    dec de                                        ; $6cf1: $1b
    inc e                                         ; $6cf2: $1c
    dec e                                         ; $6cf3: $1d
    call nz, $201f                                ; $6cf4: $c4 $1f $20
    ld hl, $23c5                                  ; $6cf7: $21 $c5 $23
    inc h                                         ; $6cfa: $24
    dec h                                         ; $6cfb: $25
    adc h                                         ; $6cfc: $8c
    dec b                                         ; $6cfd: $05
    rlca                                          ; $6cfe: $07
    rlca                                          ; $6cff: $07
    ld bc, $0105                                  ; $6d00: $01 $05 $01
    rlca                                          ; $6d03: $07
    add hl, bc                                    ; $6d04: $09
    dec b                                         ; $6d05: $05
    ld bc, $0901                                  ; $6d06: $01 $01 $09
    dec b                                         ; $6d09: $05
    rlca                                          ; $6d0a: $07
    rlca                                          ; $6d0b: $07
    add hl, bc                                    ; $6d0c: $09
    add $b0                                       ; $6d0d: $c6 $b0
    rst $00                                       ; $6d0f: $c7
    sbc h                                         ; $6d10: $9c
    ret z                                         ; $6d11: $c8

jr_085_6d12:
    ret                                           ; $6d12: $c9


    jp z, $cccb                                   ; $6d13: $ca $cb $cc

    call $cfce                                    ; $6d16: $cd $ce $cf
    ret nc                                        ; $6d19: $d0

    pop de                                        ; $6d1a: $d1
    jp nc, Jump_000_09d3                          ; $6d1b: $d2 $d3 $09

    add hl, bc                                    ; $6d1e: $09
    add hl, bc                                    ; $6d1f: $09
    add hl, bc                                    ; $6d20: $09
    dec bc                                        ; $6d21: $0b
    dec bc                                        ; $6d22: $0b
    dec bc                                        ; $6d23: $0b
    dec bc                                        ; $6d24: $0b
    dec bc                                        ; $6d25: $0b
    dec bc                                        ; $6d26: $0b
    dec bc                                        ; $6d27: $0b
    dec bc                                        ; $6d28: $0b
    dec bc                                        ; $6d29: $0b
    dec bc                                        ; $6d2a: $0b
    dec bc                                        ; $6d2b: $0b
    dec bc                                        ; $6d2c: $0b
    ld b, b                                       ; $6d2d: $40
    ld b, c                                       ; $6d2e: $41
    call nc, $d6d5                                ; $6d2f: $d4 $d5 $d6
    inc e                                         ; $6d32: $1c
    rst $10                                       ; $6d33: $d7
    ret c                                         ; $6d34: $d8

    reti                                          ; $6d35: $d9


    jr nz, jr_085_6d12                            ; $6d36: $20 $da

    db $db                                        ; $6d38: $db
    adc c                                         ; $6d39: $89
    inc h                                         ; $6d3a: $24
    call c, Call_000_01dd                         ; $6d3b: $dc $dd $01
    ld bc, $0a0a                                  ; $6d3e: $01 $0a $0a
    add hl, bc                                    ; $6d41: $09
    ld bc, $0a0a                                  ; $6d42: $01 $0a $0a
    add hl, bc                                    ; $6d45: $09
    dec b                                         ; $6d46: $05
    ld a, [bc]                                    ; $6d47: $0a
    ld a, [bc]                                    ; $6d48: $0a
    add hl, bc                                    ; $6d49: $09
    dec b                                         ; $6d4a: $05
    ld a, [bc]                                    ; $6d4b: $0a
    ld a, [bc]                                    ; $6d4c: $0a
    jr c, jr_085_6d88                             ; $6d4d: $38 $39

    ld a, [hl-]                                   ; $6d4f: $3a
    sbc $3c                                       ; $6d50: $de $3c
    dec a                                         ; $6d52: $3d
    ld a, $3f                                     ; $6d53: $3e $3f
    ld b, b                                       ; $6d55: $40
    ld b, c                                       ; $6d56: $41
    ld b, d                                       ; $6d57: $42
    ld b, e                                       ; $6d58: $43
    dec de                                        ; $6d59: $1b
    inc e                                         ; $6d5a: $1c
    dec e                                         ; $6d5b: $1d
    ld e, $05                                     ; $6d5c: $1e $05
    ld bc, $0907                                  ; $6d5e: $01 $07 $09
    dec b                                         ; $6d61: $05
    ld bc, $0101                                  ; $6d62: $01 $01 $01
    dec b                                         ; $6d65: $05
    ld bc, $0701                                  ; $6d66: $01 $01 $07
    dec b                                         ; $6d69: $05
    rlca                                          ; $6d6a: $07
    rlca                                          ; $6d6b: $07
    ld bc, $e0df                                  ; $6d6c: $01 $df $e0
    ldh [$e1], a                                  ; $6d6f: $e0 $e1
    ld h, [hl]                                    ; $6d71: $66
    ld h, a                                       ; $6d72: $67
    ld l, b                                       ; $6d73: $68
    ld l, c                                       ; $6d74: $69
    sbc c                                         ; $6d75: $99
    sbc d                                         ; $6d76: $9a
    sbc e                                         ; $6d77: $9b
    or c                                          ; $6d78: $b1
    add hl, hl                                    ; $6d79: $29
    ld a, [hl+]                                   ; $6d7a: $2a
    dec hl                                        ; $6d7b: $2b
    inc l                                         ; $6d7c: $2c
    dec bc                                        ; $6d7d: $0b
    dec bc                                        ; $6d7e: $0b
    dec hl                                        ; $6d7f: $2b
    dec bc                                        ; $6d80: $0b
    ld bc, $0505                                  ; $6d81: $01 $05 $05
    ld bc, $0909                                  ; $6d84: $01 $09 $09
    add hl, bc                                    ; $6d87: $09

jr_085_6d88:
    add hl, bc                                    ; $6d88: $09
    rlca                                          ; $6d89: $07
    ld bc, $0107                                  ; $6d8a: $01 $07 $01
    ld [c], a                                     ; $6d8d: $e2
    add hl, sp                                    ; $6d8e: $39
    db $e3                                        ; $6d8f: $e3
    db $e4                                        ; $6d90: $e4
    inc a                                         ; $6d91: $3c
    dec a                                         ; $6d92: $3d
    push hl                                       ; $6d93: $e5
    cp c                                          ; $6d94: $b9
    ld b, b                                       ; $6d95: $40
    ld b, c                                       ; $6d96: $41
    ld b, d                                       ; $6d97: $42
    and $1b                                       ; $6d98: $e6 $1b
    inc e                                         ; $6d9a: $1c
    dec e                                         ; $6d9b: $1d
    ld e, $09                                     ; $6d9c: $1e $09
    dec b                                         ; $6d9e: $05
    ld a, [bc]                                    ; $6d9f: $0a
    ld a, [bc]                                    ; $6da0: $0a
    ld bc, $0a05                                  ; $6da1: $01 $05 $0a
    dec bc                                        ; $6da4: $0b
    rlca                                          ; $6da5: $07
    dec b                                         ; $6da6: $05
    dec b                                         ; $6da7: $05
    dec bc                                        ; $6da8: $0b
    ld bc, $0505                                  ; $6da9: $01 $05 $05
    dec b                                         ; $6dac: $05
    rra                                           ; $6dad: $1f
    jr nz, jr_085_6dd1                            ; $6dae: $20 $21

    ld [hl+], a                                   ; $6db0: $22
    inc hl                                        ; $6db1: $23
    inc h                                         ; $6db2: $24
    dec h                                         ; $6db3: $25
    ld h, $38                                     ; $6db4: $26 $38
    add hl, sp                                    ; $6db6: $39
    ld a, [hl-]                                   ; $6db7: $3a
    dec sp                                        ; $6db8: $3b
    inc a                                         ; $6db9: $3c
    dec a                                         ; $6dba: $3d
    ld a, $3f                                     ; $6dbb: $3e $3f
    dec b                                         ; $6dbd: $05
    rlca                                          ; $6dbe: $07
    ld bc, $0501                                  ; $6dbf: $01 $01 $05
    rlca                                          ; $6dc2: $07
    ld bc, $0501                                  ; $6dc3: $01 $01 $05
    ld bc, $0707                                  ; $6dc6: $01 $07 $07
    dec b                                         ; $6dc9: $05
    ld bc, $0101                                  ; $6dca: $01 $01 $01
    dec l                                         ; $6dcd: $2d
    ld l, $5c                                     ; $6dce: $2e $5c
    ld e, l                                       ; $6dd0: $5d

jr_085_6dd1:
    ld e, [hl]                                    ; $6dd1: $5e
    ld e, a                                       ; $6dd2: $5f
    ld h, b                                       ; $6dd3: $60
    ld h, c                                       ; $6dd4: $61
    ld h, d                                       ; $6dd5: $62
    ld h, e                                       ; $6dd6: $63
    ld h, h                                       ; $6dd7: $64
    ld h, l                                       ; $6dd8: $65
    ld h, [hl]                                    ; $6dd9: $66
    ld h, a                                       ; $6dda: $67
    ld l, b                                       ; $6ddb: $68
    ld l, c                                       ; $6ddc: $69
    ld bc, $0107                                  ; $6ddd: $01 $07 $01
    rlca                                          ; $6de0: $07
    rlca                                          ; $6de1: $07
    ld bc, $0107                                  ; $6de2: $01 $07 $01
    ld bc, $0701                                  ; $6de5: $01 $01 $07
    rlca                                          ; $6de8: $07
    rlca                                          ; $6de9: $07
    ld bc, $0107                                  ; $6dea: $01 $07 $01
    rra                                           ; $6ded: $1f
    jr nz, jr_085_6e11                            ; $6dee: $20 $21

    ld [hl+], a                                   ; $6df0: $22
    inc hl                                        ; $6df1: $23
    inc h                                         ; $6df2: $24
    dec h                                         ; $6df3: $25
    ld h, $38                                     ; $6df4: $26 $38
    add hl, sp                                    ; $6df6: $39
    ld a, [hl-]                                   ; $6df7: $3a
    dec sp                                        ; $6df8: $3b
    inc a                                         ; $6df9: $3c
    dec a                                         ; $6dfa: $3d
    ld a, $6a                                     ; $6dfb: $3e $6a
    ld bc, $0101                                  ; $6dfd: $01 $01 $01
    rlca                                          ; $6e00: $07
    ld bc, $0707                                  ; $6e01: $01 $07 $07
    rlca                                          ; $6e04: $07
    ld bc, $0101                                  ; $6e05: $01 $01 $01
    ld bc, $0101                                  ; $6e08: $01 $01 $01
    ld bc, $4003                                  ; $6e0b: $01 $03 $40
    ld b, c                                       ; $6e0e: $41
    ld b, d                                       ; $6e0f: $42
    ld b, e                                       ; $6e10: $43

jr_085_6e11:
    dec de                                        ; $6e11: $1b
    inc e                                         ; $6e12: $1c
    dec e                                         ; $6e13: $1d
    call nz, $201f                                ; $6e14: $c4 $1f $20
    ld hl, $23c5                                  ; $6e17: $21 $c5 $23
    inc h                                         ; $6e1a: $24
    dec h                                         ; $6e1b: $25
    adc h                                         ; $6e1c: $8c
    dec b                                         ; $6e1d: $05
    ld bc, $0107                                  ; $6e1e: $01 $07 $01
    dec b                                         ; $6e21: $05
    ld bc, $0907                                  ; $6e22: $01 $07 $09
    dec b                                         ; $6e25: $05
    rlca                                          ; $6e26: $07
    ld bc, $0509                                  ; $6e27: $01 $09 $05
    ld bc, $0901                                  ; $6e2a: $01 $01 $09
    ld b, b                                       ; $6e2d: $40
    ld b, c                                       ; $6e2e: $41
    rst $20                                       ; $6e2f: $e7
    add sp, -$2a                                  ; $6e30: $e8 $d6
    inc e                                         ; $6e32: $1c
    jp hl                                         ; $6e33: $e9


    ld [$20d9], a                                 ; $6e34: $ea $d9 $20
    db $eb                                        ; $6e37: $eb
    ret c                                         ; $6e38: $d8

    adc c                                         ; $6e39: $89
    inc h                                         ; $6e3a: $24
    db $ec                                        ; $6e3b: $ec
    db $db                                        ; $6e3c: $db
    ld bc, $2a07                                  ; $6e3d: $01 $07 $2a
    ld a, [hl+]                                   ; $6e40: $2a
    add hl, bc                                    ; $6e41: $09
    ld bc, $2a2a                                  ; $6e42: $01 $2a $2a
    add hl, bc                                    ; $6e45: $09
    dec b                                         ; $6e46: $05
    ld a, [hl+]                                   ; $6e47: $2a
    ld a, [bc]                                    ; $6e48: $0a
    add hl, bc                                    ; $6e49: $09
    dec b                                         ; $6e4a: $05
    ld a, [hl+]                                   ; $6e4b: $2a
    ld a, [bc]                                    ; $6e4c: $0a
    db $ed                                        ; $6e4d: $ed
    xor $ef                                       ; $6e4e: $ee $ef
    ldh a, [$f1]                                  ; $6e50: $f0 $f1
    ld a, [c]                                     ; $6e52: $f2
    di                                            ; $6e53: $f3
    db $f4                                        ; $6e54: $f4
    push af                                       ; $6e55: $f5
    or $f7                                        ; $6e56: $f6 $f7
    ld hl, sp-$07                                 ; $6e58: $f8 $f9
    ld a, [$fcfb]                                 ; $6e5a: $fa $fb $fc
    ld a, [bc]                                    ; $6e5d: $0a
    ld a, [bc]                                    ; $6e5e: $0a
    ld a, [bc]                                    ; $6e5f: $0a
    ld a, [bc]                                    ; $6e60: $0a
    ld a, [bc]                                    ; $6e61: $0a
    ld a, [bc]                                    ; $6e62: $0a
    ld a, [bc]                                    ; $6e63: $0a
    ld a, [bc]                                    ; $6e64: $0a
    ld a, [bc]                                    ; $6e65: $0a
    ld a, [bc]                                    ; $6e66: $0a
    ld a, [bc]                                    ; $6e67: $0a
    ld a, [bc]                                    ; $6e68: $0a
    ld a, [bc]                                    ; $6e69: $0a
    ld a, [bc]                                    ; $6e6a: $0a
    ld a, [bc]                                    ; $6e6b: $0a
    ld a, [bc]                                    ; $6e6c: $0a
    db $fd                                        ; $6e6d: $fd
    cp $e8                                        ; $6e6e: $fe $e8
    rst $20                                       ; $6e70: $e7
    rst $38                                       ; $6e71: $ff
    nop                                           ; $6e72: $00
    ld [$01e9], a                                 ; $6e73: $ea $e9 $01
    ld [bc], a                                    ; $6e76: $02
    inc bc                                        ; $6e77: $03
    db $eb                                        ; $6e78: $eb
    inc b                                         ; $6e79: $04
    dec b                                         ; $6e7a: $05
    ld b, $ec                                     ; $6e7b: $06 $ec
    ld a, [bc]                                    ; $6e7d: $0a
    ld a, [bc]                                    ; $6e7e: $0a
    ld a, [bc]                                    ; $6e7f: $0a
    ld a, [bc]                                    ; $6e80: $0a
    ld a, [bc]                                    ; $6e81: $0a
    ld a, [bc]                                    ; $6e82: $0a
    ld a, [bc]                                    ; $6e83: $0a
    ld a, [bc]                                    ; $6e84: $0a
    ld a, [bc]                                    ; $6e85: $0a
    ld a, [bc]                                    ; $6e86: $0a
    ld a, [bc]                                    ; $6e87: $0a
    ld a, [bc]                                    ; $6e88: $0a
    ld a, [bc]                                    ; $6e89: $0a
    ld a, [bc]                                    ; $6e8a: $0a
    ld a, [bc]                                    ; $6e8b: $0a
    ld a, [bc]                                    ; $6e8c: $0a
    sbc c                                         ; $6e8d: $99
    sbc d                                         ; $6e8e: $9a
    rst $00                                       ; $6e8f: $c7
    sbc h                                         ; $6e90: $9c
    add hl, hl                                    ; $6e91: $29
    or e                                          ; $6e92: $b3
    ret z                                         ; $6e93: $c8

    ret                                           ; $6e94: $c9


    dec l                                         ; $6e95: $2d
    cp h                                          ; $6e96: $bc
    call z, Call_085_5ecd                         ; $6e97: $cc $cd $5e
    rlca                                          ; $6e9a: $07
    ret nc                                        ; $6e9b: $d0

    pop de                                        ; $6e9c: $d1
    add hl, bc                                    ; $6e9d: $09
    add hl, bc                                    ; $6e9e: $09
    add hl, bc                                    ; $6e9f: $09
    add hl, bc                                    ; $6ea0: $09
    rlca                                          ; $6ea1: $07
    add hl, bc                                    ; $6ea2: $09
    dec bc                                        ; $6ea3: $0b
    dec bc                                        ; $6ea4: $0b
    ld bc, $0b09                                  ; $6ea5: $01 $09 $0b
    dec bc                                        ; $6ea8: $0b
    ld bc, $0b09                                  ; $6ea9: $01 $09 $0b
    dec bc                                        ; $6eac: $0b
    ld [$4209], sp                                ; $6ead: $08 $09 $42
    ld b, e                                       ; $6eb0: $43
    jp z, Jump_000_0acb                           ; $6eb1: $ca $cb $0a

    ld e, $ce                                     ; $6eb4: $1e $ce
    rst $08                                       ; $6eb6: $cf
    dec bc                                        ; $6eb7: $0b
    ld [hl+], a                                   ; $6eb8: $22
    jp nc, $8bd3                                  ; $6eb9: $d2 $d3 $8b

    ld h, $09                                     ; $6ebc: $26 $09
    add hl, bc                                    ; $6ebe: $09
    ld bc, $0b01                                  ; $6ebf: $01 $01 $0b
    dec bc                                        ; $6ec2: $0b
    add hl, bc                                    ; $6ec3: $09
    ld bc, $0b0b                                  ; $6ec4: $01 $0b $0b
    add hl, bc                                    ; $6ec7: $09
    ld bc, $0b0b                                  ; $6ec8: $01 $0b $0b
    add hl, bc                                    ; $6ecb: $09
    ld bc, $0d0c                                  ; $6ecc: $01 $0c $0d
    db $e4                                        ; $6ecf: $e4
    inc c                                         ; $6ed0: $0c
    cp d                                          ; $6ed1: $ba
    ld h, a                                       ; $6ed2: $67
    ld l, b                                       ; $6ed3: $68
    ld l, c                                       ; $6ed4: $69
    ld c, $9a                                     ; $6ed5: $0e $9a
    sbc e                                         ; $6ed7: $9b
    or c                                          ; $6ed8: $b1
    add hl, hl                                    ; $6ed9: $29
    ld a, [hl+]                                   ; $6eda: $2a
    dec hl                                        ; $6edb: $2b
    inc l                                         ; $6edc: $2c
    ld a, [bc]                                    ; $6edd: $0a
    ld a, [bc]                                    ; $6ede: $0a
    ld a, [bc]                                    ; $6edf: $0a
    ld a, [bc]                                    ; $6ee0: $0a
    dec bc                                        ; $6ee1: $0b
    dec b                                         ; $6ee2: $05
    dec b                                         ; $6ee3: $05
    dec b                                         ; $6ee4: $05
    dec bc                                        ; $6ee5: $0b
    dec c                                         ; $6ee6: $0d
    dec c                                         ; $6ee7: $0d
    dec c                                         ; $6ee8: $0d
    dec b                                         ; $6ee9: $05
    dec b                                         ; $6eea: $05
    dec b                                         ; $6eeb: $05
    dec b                                         ; $6eec: $05
    dec c                                         ; $6eed: $0d
    db $e4                                        ; $6eee: $e4
    inc c                                         ; $6eef: $0c
    rrca                                          ; $6ef0: $0f
    inc a                                         ; $6ef1: $3c
    ld l, d                                       ; $6ef2: $6a
    or l                                          ; $6ef3: $b5
    push hl                                       ; $6ef4: $e5
    ld b, b                                       ; $6ef5: $40
    and $0e                                       ; $6ef6: $e6 $0e
    ld b, e                                       ; $6ef8: $43
    dec de                                        ; $6ef9: $1b
    inc e                                         ; $6efa: $1c
    dec e                                         ; $6efb: $1d
    ld e, $0a                                     ; $6efc: $1e $0a
    ld a, [bc]                                    ; $6efe: $0a
    ld a, [bc]                                    ; $6eff: $0a
    ld a, [bc]                                    ; $6f00: $0a
    dec b                                         ; $6f01: $05
    inc bc                                        ; $6f02: $03
    dec bc                                        ; $6f03: $0b
    ld a, [hl+]                                   ; $6f04: $2a
    dec b                                         ; $6f05: $05
    dec bc                                        ; $6f06: $0b
    dec bc                                        ; $6f07: $0b
    dec b                                         ; $6f08: $05
    dec b                                         ; $6f09: $05
    dec b                                         ; $6f0a: $05
    dec b                                         ; $6f0b: $05
    dec b                                         ; $6f0c: $05
    ld h, d                                       ; $6f0d: $62
    xor h                                         ; $6f0e: $ac
    rst $18                                       ; $6f0f: $df
    ldh [$66], a                                  ; $6f10: $e0 $66
    ld h, a                                       ; $6f12: $67
    ld l, b                                       ; $6f13: $68
    ld l, c                                       ; $6f14: $69
    sbc c                                         ; $6f15: $99
    sbc d                                         ; $6f16: $9a
    sbc e                                         ; $6f17: $9b
    or c                                          ; $6f18: $b1
    add hl, hl                                    ; $6f19: $29
    ld a, [hl+]                                   ; $6f1a: $2a
    dec hl                                        ; $6f1b: $2b
    inc l                                         ; $6f1c: $2c
    rlca                                          ; $6f1d: $07
    add hl, bc                                    ; $6f1e: $09
    dec bc                                        ; $6f1f: $0b
    dec bc                                        ; $6f20: $0b
    rlca                                          ; $6f21: $07
    ld bc, $0501                                  ; $6f22: $01 $01 $05
    add hl, bc                                    ; $6f25: $09
    rrca                                          ; $6f26: $0f
    add hl, bc                                    ; $6f27: $09
    add hl, bc                                    ; $6f28: $09
    ld bc, $0707                                  ; $6f29: $01 $07 $07
    ld bc, $e1e0                                  ; $6f2c: $01 $e0 $e1
    db $10                                        ; $6f2f: $10
    dec sp                                        ; $6f30: $3b
    inc a                                         ; $6f31: $3c
    dec a                                         ; $6f32: $3d
    ld a, $3f                                     ; $6f33: $3e $3f
    ld b, b                                       ; $6f35: $40
    ld b, c                                       ; $6f36: $41
    ld b, d                                       ; $6f37: $42
    ld b, e                                       ; $6f38: $43
    dec de                                        ; $6f39: $1b
    inc e                                         ; $6f3a: $1c
    dec e                                         ; $6f3b: $1d
    ld e, $2b                                     ; $6f3c: $1e $2b
    dec bc                                        ; $6f3e: $0b
    add hl, bc                                    ; $6f3f: $09
    ld bc, $0105                                  ; $6f40: $01 $05 $01
    ld bc, $0101                                  ; $6f43: $01 $01 $01
    rlca                                          ; $6f46: $07
    ld bc, $0701                                  ; $6f47: $01 $01 $07
    ld bc, $0101                                  ; $6f4a: $01 $01 $01
    dec l                                         ; $6f4d: $2d
    ld l, $5c                                     ; $6f4e: $2e $5c
    ld e, l                                       ; $6f50: $5d
    ld e, [hl]                                    ; $6f51: $5e
    ld e, a                                       ; $6f52: $5f
    ld h, b                                       ; $6f53: $60
    ld h, c                                       ; $6f54: $61
    ld h, d                                       ; $6f55: $62
    ld h, e                                       ; $6f56: $63
    ld h, h                                       ; $6f57: $64
    ld h, l                                       ; $6f58: $65
    or l                                          ; $6f59: $b5
    ld h, a                                       ; $6f5a: $67
    ld l, b                                       ; $6f5b: $68
    ld l, c                                       ; $6f5c: $69
    rlca                                          ; $6f5d: $07
    ld bc, $0101                                  ; $6f5e: $01 $01 $01
    ld bc, $0101                                  ; $6f61: $01 $01 $01
    rlca                                          ; $6f64: $07
    rlca                                          ; $6f65: $07
    ld bc, $0107                                  ; $6f66: $01 $07 $01
    dec bc                                        ; $6f69: $0b
    ld bc, $0701                                  ; $6f6a: $01 $01 $07
    rra                                           ; $6f6d: $1f
    jr nz, jr_085_6f91                            ; $6f6e: $20 $21

    ld [hl+], a                                   ; $6f70: $22
    inc hl                                        ; $6f71: $23
    inc h                                         ; $6f72: $24
    dec h                                         ; $6f73: $25
    ld h, $38                                     ; $6f74: $26 $38
    add hl, sp                                    ; $6f76: $39
    ld a, [hl-]                                   ; $6f77: $3a
    dec sp                                        ; $6f78: $3b
    inc a                                         ; $6f79: $3c
    cp c                                          ; $6f7a: $b9
    cp d                                          ; $6f7b: $ba
    ccf                                           ; $6f7c: $3f
    ld bc, $0707                                  ; $6f7d: $01 $07 $07
    rlca                                          ; $6f80: $07
    rlca                                          ; $6f81: $07
    rlca                                          ; $6f82: $07
    ld bc, $0101                                  ; $6f83: $01 $01 $01
    ld bc, $0101                                  ; $6f86: $01 $01 $01
    ld bc, $0b0b                                  ; $6f89: $01 $0b $0b
    rlca                                          ; $6f8c: $07
    dec l                                         ; $6f8d: $2d
    ld l, $5c                                     ; $6f8e: $2e $5c
    ld e, l                                       ; $6f90: $5d

jr_085_6f91:
    ld e, [hl]                                    ; $6f91: $5e
    ld e, a                                       ; $6f92: $5f
    ld h, b                                       ; $6f93: $60
    ld h, c                                       ; $6f94: $61
    ld h, d                                       ; $6f95: $62
    ld h, e                                       ; $6f96: $63
    ld h, h                                       ; $6f97: $64
    ld h, l                                       ; $6f98: $65
    ld h, [hl]                                    ; $6f99: $66
    ld h, a                                       ; $6f9a: $67
    ld l, b                                       ; $6f9b: $68
    ld l, c                                       ; $6f9c: $69
    ld bc, $0101                                  ; $6f9d: $01 $01 $01
    ld bc, $0701                                  ; $6fa0: $01 $01 $07
    rlca                                          ; $6fa3: $07
    rlca                                          ; $6fa4: $07
    ld bc, $0107                                  ; $6fa5: $01 $07 $01
    ld bc, $0101                                  ; $6fa8: $01 $01 $01
    ld bc, $1f01                                  ; $6fab: $01 $01 $1f
    jr nz, jr_085_6fd1                            ; $6fae: $20 $21

    ld [hl+], a                                   ; $6fb0: $22
    inc hl                                        ; $6fb1: $23
    inc h                                         ; $6fb2: $24
    dec h                                         ; $6fb3: $25
    ld h, $38                                     ; $6fb4: $26 $38
    add hl, sp                                    ; $6fb6: $39
    ld a, [hl-]                                   ; $6fb7: $3a
    dec sp                                        ; $6fb8: $3b
    inc a                                         ; $6fb9: $3c
    dec a                                         ; $6fba: $3d
    ld a, $3f                                     ; $6fbb: $3e $3f
    rlca                                          ; $6fbd: $07
    rlca                                          ; $6fbe: $07
    rlca                                          ; $6fbf: $07
    ld bc, $0707                                  ; $6fc0: $01 $07 $07
    rlca                                          ; $6fc3: $07
    rlca                                          ; $6fc4: $07
    rlca                                          ; $6fc5: $07
    rlca                                          ; $6fc6: $07
    rlca                                          ; $6fc7: $07
    ld bc, $0101                                  ; $6fc8: $01 $01 $01
    ld bc, $fe01                                  ; $6fcb: $01 $01 $fe
    db $fd                                        ; $6fce: $fd
    ldh a, [$ef]                                  ; $6fcf: $f0 $ef

jr_085_6fd1:
    nop                                           ; $6fd1: $00
    ld de, $f312                                  ; $6fd2: $11 $12 $f3
    pop af                                        ; $6fd5: $f1
    inc de                                        ; $6fd6: $13
    inc d                                         ; $6fd7: $14
    rst $30                                       ; $6fd8: $f7
    push af                                       ; $6fd9: $f5
    dec d                                         ; $6fda: $15
    db $fc                                        ; $6fdb: $fc
    ei                                            ; $6fdc: $fb
    ld a, [hl+]                                   ; $6fdd: $2a
    ld a, [hl+]                                   ; $6fde: $2a
    ld a, [hl+]                                   ; $6fdf: $2a
    ld a, [hl+]                                   ; $6fe0: $2a
    ld a, [hl+]                                   ; $6fe1: $2a
    ld a, [bc]                                    ; $6fe2: $0a
    ld a, [bc]                                    ; $6fe3: $0a
    ld a, [hl+]                                   ; $6fe4: $2a
    ld a, [bc]                                    ; $6fe5: $0a
    ld a, [bc]                                    ; $6fe6: $0a
    ld a, [bc]                                    ; $6fe7: $0a
    ld a, [hl+]                                   ; $6fe8: $2a
    ld a, [bc]                                    ; $6fe9: $0a
    ld a, [bc]                                    ; $6fea: $0a
    ld a, [hl+]                                   ; $6feb: $2a
    ld a, [hl+]                                   ; $6fec: $2a
    xor $ed                                       ; $6fed: $ee $ed
    push de                                       ; $6fef: $d5
    call nc, $16f2                                ; $6ff0: $d4 $f2 $16
    ret c                                         ; $6ff3: $d8

    pop af                                        ; $6ff4: $f1
    or $17                                        ; $6ff5: $f6 $17
    db $db                                        ; $6ff7: $db
    push af                                       ; $6ff8: $f5
    ld a, [$ddf9]                                 ; $6ff9: $fa $f9 $dd
    call c, Call_000_2a2a                         ; $6ffc: $dc $2a $2a
    ld a, [hl+]                                   ; $6fff: $2a
    ld a, [hl+]                                   ; $7000: $2a
    ld a, [hl+]                                   ; $7001: $2a
    ld a, [bc]                                    ; $7002: $0a
    ld a, [bc]                                    ; $7003: $0a
    ld a, [bc]                                    ; $7004: $0a
    ld a, [hl+]                                   ; $7005: $2a
    ld a, [bc]                                    ; $7006: $0a
    ld a, [bc]                                    ; $7007: $0a
    ld a, [bc]                                    ; $7008: $0a
    ld a, [hl+]                                   ; $7009: $2a
    ld a, [hl+]                                   ; $700a: $2a
    ld a, [hl+]                                   ; $700b: $2a
    ld a, [hl+]                                   ; $700c: $2a
    sbc c                                         ; $700d: $99
    sbc d                                         ; $700e: $9a
    rst $00                                       ; $700f: $c7
    sbc h                                         ; $7010: $9c
    add hl, hl                                    ; $7011: $29
    or e                                          ; $7012: $b3
    ret z                                         ; $7013: $c8

    ret                                           ; $7014: $c9


    dec l                                         ; $7015: $2d
    cp h                                          ; $7016: $bc
    call z, Call_085_5ecd                         ; $7017: $cc $cd $5e
    rlca                                          ; $701a: $07
    ret nc                                        ; $701b: $d0

    pop de                                        ; $701c: $d1
    add hl, bc                                    ; $701d: $09
    add hl, bc                                    ; $701e: $09
    add hl, bc                                    ; $701f: $09
    add hl, bc                                    ; $7020: $09
    ld bc, $0b09                                  ; $7021: $01 $09 $0b
    dec bc                                        ; $7024: $0b
    ld bc, $0b09                                  ; $7025: $01 $09 $0b
    dec bc                                        ; $7028: $0b
    ld bc, $0b09                                  ; $7029: $01 $09 $0b
    dec bc                                        ; $702c: $0b
    ld [$4209], sp                                ; $702d: $08 $09 $42
    ld b, e                                       ; $7030: $43
    jp z, Jump_000_0acb                           ; $7031: $ca $cb $0a

    ld e, $ce                                     ; $7034: $1e $ce
    rst $08                                       ; $7036: $cf
    dec bc                                        ; $7037: $0b
    ld [hl+], a                                   ; $7038: $22
    jp nc, $8bd3                                  ; $7039: $d2 $d3 $8b

    ld h, $09                                     ; $703c: $26 $09
    add hl, bc                                    ; $703e: $09
    ld bc, $0b01                                  ; $703f: $01 $01 $0b
    dec bc                                        ; $7042: $0b
    add hl, bc                                    ; $7043: $09
    ld bc, $0b0b                                  ; $7044: $01 $0b $0b
    add hl, bc                                    ; $7047: $09
    ld bc, $0b0b                                  ; $7048: $01 $0b $0b
    add hl, bc                                    ; $704b: $09
    rlca                                          ; $704c: $07

jr_085_704d:
    sbc c                                         ; $704d: $99
    sbc d                                         ; $704e: $9a
    jr jr_085_704d                                ; $704f: $18 $fc

    add hl, hl                                    ; $7051: $29
    ld a, [hl+]                                   ; $7052: $2a
    add hl, de                                    ; $7053: $19
    jr jr_085_7083                                ; $7054: $18 $2d

    ld l, $5c                                     ; $7056: $2e $5c
    ld e, l                                       ; $7058: $5d
    ld e, [hl]                                    ; $7059: $5e
    ld e, a                                       ; $705a: $5f
    ld h, b                                       ; $705b: $60
    ld h, c                                       ; $705c: $61
    add hl, bc                                    ; $705d: $09
    dec c                                         ; $705e: $0d
    inc c                                         ; $705f: $0c
    inc b                                         ; $7060: $04
    ld bc, $0c05                                  ; $7061: $01 $05 $0c
    inc b                                         ; $7064: $04
    rlca                                          ; $7065: $07
    dec b                                         ; $7066: $05
    dec b                                         ; $7067: $05
    dec b                                         ; $7068: $05
    ld bc, $0107                                  ; $7069: $01 $07 $01
    dec b                                         ; $706c: $05
    jp $eded                                      ; $706d: $c3 $ed $ed


    db $ed                                        ; $7070: $ed
    jp $eded                                      ; $7071: $c3 $ed $ed


    db $ed                                        ; $7074: $ed
    jp $ed1a                                      ; $7075: $c3 $1a $ed


    db $ed                                        ; $7078: $ed
    xor $1a                                       ; $7079: $ee $1a
    db $ed                                        ; $707b: $ed
    db $ed                                        ; $707c: $ed
    adc b                                         ; $707d: $88
    add b                                         ; $707e: $80
    add b                                         ; $707f: $80
    add b                                         ; $7080: $80
    adc b                                         ; $7081: $88
    add b                                         ; $7082: $80

jr_085_7083:
    add b                                         ; $7083: $80
    add b                                         ; $7084: $80
    adc b                                         ; $7085: $88
    adc b                                         ; $7086: $88
    add b                                         ; $7087: $80
    add b                                         ; $7088: $80
    add b                                         ; $7089: $80
    adc b                                         ; $708a: $88
    add b                                         ; $708b: $80
    add b                                         ; $708c: $80
    ld h, d                                       ; $708d: $62
    ld h, e                                       ; $708e: $63
    dec de                                        ; $708f: $1b
    cp [hl]                                       ; $7090: $be
    ld h, [hl]                                    ; $7091: $66
    ld h, a                                       ; $7092: $67
    xor $ed                                       ; $7093: $ee $ed
    sbc c                                         ; $7095: $99
    sbc d                                         ; $7096: $9a
    xor $ed                                       ; $7097: $ee $ed
    add hl, hl                                    ; $7099: $29
    ld a, [hl+]                                   ; $709a: $2a
    xor $ed                                       ; $709b: $ee $ed
    rlca                                          ; $709d: $07
    ld bc, $8888                                  ; $709e: $01 $88 $88
    ld bc, $8001                                  ; $70a1: $01 $01 $80
    add b                                         ; $70a4: $80
    rrca                                          ; $70a5: $0f
    dec c                                         ; $70a6: $0d
    add b                                         ; $70a7: $80
    add b                                         ; $70a8: $80
    rlca                                          ; $70a9: $07
    dec b                                         ; $70aa: $05
    add b                                         ; $70ab: $80
    add b                                         ; $70ac: $80
    inc e                                         ; $70ad: $1c
    ld a, [de]                                    ; $70ae: $1a
    db $ed                                        ; $70af: $ed
    db $ed                                        ; $70b0: $ed
    db $ed                                        ; $70b1: $ed
    db $ed                                        ; $70b2: $ed
    db $ed                                        ; $70b3: $ed
    db $ed                                        ; $70b4: $ed
    db $ed                                        ; $70b5: $ed
    db $ed                                        ; $70b6: $ed
    db $ed                                        ; $70b7: $ed
    db $ed                                        ; $70b8: $ed
    db $ed                                        ; $70b9: $ed
    db $ed                                        ; $70ba: $ed
    db $ed                                        ; $70bb: $ed
    db $ed                                        ; $70bc: $ed
    adc b                                         ; $70bd: $88
    adc b                                         ; $70be: $88
    add b                                         ; $70bf: $80
    add b                                         ; $70c0: $80
    add b                                         ; $70c1: $80
    add b                                         ; $70c2: $80
    add b                                         ; $70c3: $80
    add b                                         ; $70c4: $80
    add b                                         ; $70c5: $80
    add b                                         ; $70c6: $80
    add b                                         ; $70c7: $80
    add b                                         ; $70c8: $80
    add b                                         ; $70c9: $80
    add b                                         ; $70ca: $80
    add b                                         ; $70cb: $80
    add b                                         ; $70cc: $80
    dec l                                         ; $70cd: $2d
    ld l, $ee                                     ; $70ce: $2e $ee
    db $ed                                        ; $70d0: $ed
    ld e, [hl]                                    ; $70d1: $5e
    ld e, a                                       ; $70d2: $5f
    xor $ed                                       ; $70d3: $ee $ed
    ld h, d                                       ; $70d5: $62
    ld h, e                                       ; $70d6: $63
    xor $ed                                       ; $70d7: $ee $ed
    ld h, [hl]                                    ; $70d9: $66
    ld h, a                                       ; $70da: $67
    xor $ed                                       ; $70db: $ee $ed
    ld bc, $8005                                  ; $70dd: $01 $05 $80
    add b                                         ; $70e0: $80
    rlca                                          ; $70e1: $07
    dec b                                         ; $70e2: $05
    add b                                         ; $70e3: $80
    add b                                         ; $70e4: $80
    ld bc, $8005                                  ; $70e5: $01 $05 $80
    add b                                         ; $70e8: $80
    ld bc, $8005                                  ; $70e9: $01 $05 $80
    add b                                         ; $70ec: $80
    sbc c                                         ; $70ed: $99
    sbc d                                         ; $70ee: $9a
    xor $ed                                       ; $70ef: $ee $ed
    add hl, hl                                    ; $70f1: $29
    ld a, [hl+]                                   ; $70f2: $2a
    xor $ed                                       ; $70f3: $ee $ed
    dec l                                         ; $70f5: $2d
    ld l, $ee                                     ; $70f6: $2e $ee
    db $ed                                        ; $70f8: $ed
    ld e, [hl]                                    ; $70f9: $5e
    ld e, a                                       ; $70fa: $5f
    xor $ed                                       ; $70fb: $ee $ed
    add hl, bc                                    ; $70fd: $09
    dec c                                         ; $70fe: $0d
    add b                                         ; $70ff: $80
    add b                                         ; $7100: $80
    rlca                                          ; $7101: $07
    dec b                                         ; $7102: $05
    add b                                         ; $7103: $80
    add b                                         ; $7104: $80
    rlca                                          ; $7105: $07
    dec b                                         ; $7106: $05
    add b                                         ; $7107: $80
    add b                                         ; $7108: $80
    ld bc, $8005                                  ; $7109: $01 $05 $80
    add b                                         ; $710c: $80
    jr c, jr_085_7148                             ; $710d: $38 $39

    ld a, [hl-]                                   ; $710f: $3a
    sbc $3c                                       ; $7110: $de $3c
    dec a                                         ; $7112: $3d
    ld a, $3f                                     ; $7113: $3e $3f
    ld b, b                                       ; $7115: $40
    ld b, c                                       ; $7116: $41
    ld b, d                                       ; $7117: $42
    ld b, e                                       ; $7118: $43
    dec de                                        ; $7119: $1b
    inc e                                         ; $711a: $1c
    dec e                                         ; $711b: $1d
    ld e, $05                                     ; $711c: $1e $05
    ld bc, $0901                                  ; $711e: $01 $01 $09
    dec b                                         ; $7121: $05
    rlca                                          ; $7122: $07
    ld bc, $0501                                  ; $7123: $01 $01 $05
    ld bc, $0107                                  ; $7126: $01 $07 $01
    dec b                                         ; $7129: $05
    ld bc, $0101                                  ; $712a: $01 $01 $01
    rst $18                                       ; $712d: $df
    ldh [$e0], a                                  ; $712e: $e0 $e0
    pop hl                                        ; $7130: $e1
    ld h, [hl]                                    ; $7131: $66
    ld h, a                                       ; $7132: $67
    ld l, b                                       ; $7133: $68
    ld l, c                                       ; $7134: $69
    sbc c                                         ; $7135: $99
    sbc d                                         ; $7136: $9a
    sbc e                                         ; $7137: $9b
    or c                                          ; $7138: $b1
    add hl, hl                                    ; $7139: $29
    ld a, [hl+]                                   ; $713a: $2a
    dec hl                                        ; $713b: $2b
    inc l                                         ; $713c: $2c
    dec bc                                        ; $713d: $0b
    dec bc                                        ; $713e: $0b
    dec hl                                        ; $713f: $2b
    dec bc                                        ; $7140: $0b
    rlca                                          ; $7141: $07
    dec b                                         ; $7142: $05
    dec b                                         ; $7143: $05
    rlca                                          ; $7144: $07
    add hl, bc                                    ; $7145: $09
    add hl, bc                                    ; $7146: $09
    rrca                                          ; $7147: $0f

jr_085_7148:
    add hl, bc                                    ; $7148: $09
    rlca                                          ; $7149: $07
    ld bc, $0701                                  ; $714a: $01 $01 $07
    ld [c], a                                     ; $714d: $e2
    add hl, sp                                    ; $714e: $39
    rrca                                          ; $714f: $0f
    inc c                                         ; $7150: $0c
    inc a                                         ; $7151: $3c
    dec a                                         ; $7152: $3d
    push hl                                       ; $7153: $e5
    cp c                                          ; $7154: $b9
    ld b, b                                       ; $7155: $40
    ld b, c                                       ; $7156: $41
    ld b, d                                       ; $7157: $42
    and $1b                                       ; $7158: $e6 $1b
    inc e                                         ; $715a: $1c
    dec e                                         ; $715b: $1d
    ld e, $09                                     ; $715c: $1e $09
    dec b                                         ; $715e: $05
    ld a, [hl+]                                   ; $715f: $2a
    ld a, [hl+]                                   ; $7160: $2a
    ld bc, $0a05                                  ; $7161: $01 $05 $0a
    dec bc                                        ; $7164: $0b
    ld bc, $0505                                  ; $7165: $01 $05 $05
    dec bc                                        ; $7168: $0b
    ld bc, $0505                                  ; $7169: $01 $05 $05
    dec b                                         ; $716c: $05
    rra                                           ; $716d: $1f
    jr nz, jr_085_7191                            ; $716e: $20 $21

    ld [hl+], a                                   ; $7170: $22
    inc hl                                        ; $7171: $23
    inc h                                         ; $7172: $24
    dec h                                         ; $7173: $25
    ld h, $38                                     ; $7174: $26 $38
    add hl, sp                                    ; $7176: $39
    ld a, [hl-]                                   ; $7177: $3a
    dec sp                                        ; $7178: $3b
    inc a                                         ; $7179: $3c
    dec a                                         ; $717a: $3d
    ld a, $3f                                     ; $717b: $3e $3f
    dec b                                         ; $717d: $05
    ld bc, $0701                                  ; $717e: $01 $01 $07
    dec b                                         ; $7181: $05
    rlca                                          ; $7182: $07
    ld bc, $0501                                  ; $7183: $01 $01 $05
    ld bc, $0107                                  ; $7186: $01 $07 $01
    dec b                                         ; $7189: $05
    ld bc, $0101                                  ; $718a: $01 $01 $01
    dec l                                         ; $718d: $2d
    ld l, $5c                                     ; $718e: $2e $5c
    ld e, l                                       ; $7190: $5d

jr_085_7191:
    ld e, [hl]                                    ; $7191: $5e
    ld e, a                                       ; $7192: $5f
    ld h, b                                       ; $7193: $60
    ld h, c                                       ; $7194: $61
    ld h, d                                       ; $7195: $62
    ld h, e                                       ; $7196: $63
    ld h, h                                       ; $7197: $64
    ld h, l                                       ; $7198: $65
    ld h, [hl]                                    ; $7199: $66
    ld h, a                                       ; $719a: $67
    ld l, b                                       ; $719b: $68
    ld l, c                                       ; $719c: $69
    ld bc, $0107                                  ; $719d: $01 $07 $01
    ld bc, $0101                                  ; $71a0: $01 $01 $01
    rlca                                          ; $71a3: $07
    ld bc, $0707                                  ; $71a4: $01 $07 $07
    ld bc, $0101                                  ; $71a7: $01 $01 $01
    ld bc, $0107                                  ; $71aa: $01 $07 $01
    rra                                           ; $71ad: $1f
    jr nz, jr_085_71d1                            ; $71ae: $20 $21

    ld [hl+], a                                   ; $71b0: $22
    inc hl                                        ; $71b1: $23
    inc h                                         ; $71b2: $24
    dec h                                         ; $71b3: $25
    ld h, $38                                     ; $71b4: $26 $38
    add hl, sp                                    ; $71b6: $39
    ld a, [hl-]                                   ; $71b7: $3a
    dec sp                                        ; $71b8: $3b
    inc a                                         ; $71b9: $3c
    dec a                                         ; $71ba: $3d
    ld a, $6a                                     ; $71bb: $3e $6a
    rlca                                          ; $71bd: $07
    ld bc, $0101                                  ; $71be: $01 $01 $01
    ld bc, $0707                                  ; $71c1: $01 $07 $07
    ld bc, $0107                                  ; $71c4: $01 $07 $01
    ld bc, $0101                                  ; $71c7: $01 $01 $01
    rlca                                          ; $71ca: $07
    ld bc, $4003                                  ; $71cb: $01 $03 $40
    ld b, c                                       ; $71ce: $41
    ld b, d                                       ; $71cf: $42
    ld b, e                                       ; $71d0: $43

jr_085_71d1:
    dec de                                        ; $71d1: $1b

jr_085_71d2:
    inc e                                         ; $71d2: $1c
    dec e                                         ; $71d3: $1d
    call nz, $201f                                ; $71d4: $c4 $1f $20
    ld hl, $23c5                                  ; $71d7: $21 $c5 $23
    inc h                                         ; $71da: $24
    dec h                                         ; $71db: $25
    adc h                                         ; $71dc: $8c
    dec b                                         ; $71dd: $05
    rlca                                          ; $71de: $07
    rlca                                          ; $71df: $07
    ld bc, $0105                                  ; $71e0: $01 $05 $01
    ld bc, $0509                                  ; $71e3: $01 $09 $05
    rlca                                          ; $71e6: $07
    ld bc, $0509                                  ; $71e7: $01 $09 $05
    ld bc, $0907                                  ; $71ea: $01 $07 $09
    ld b, b                                       ; $71ed: $40
    ld b, c                                       ; $71ee: $41
    dec e                                         ; $71ef: $1d
    ld e, $d6                                     ; $71f0: $1e $d6
    inc e                                         ; $71f2: $1c
    rra                                           ; $71f3: $1f
    ret c                                         ; $71f4: $d8

    reti                                          ; $71f5: $d9


    jr nz, jr_085_71d2                            ; $71f6: $20 $da

    ld b, h                                       ; $71f8: $44
    adc c                                         ; $71f9: $89
    inc h                                         ; $71fa: $24
    call c, $0148                                 ; $71fb: $dc $48 $01
    ld bc, $0a0a                                  ; $71fe: $01 $0a $0a
    add hl, bc                                    ; $7201: $09
    ld bc, $0a0a                                  ; $7202: $01 $0a $0a
    add hl, bc                                    ; $7205: $09
    dec b                                         ; $7206: $05
    ld a, [bc]                                    ; $7207: $0a
    ld [bc], a                                    ; $7208: $02
    add hl, bc                                    ; $7209: $09
    dec b                                         ; $720a: $05
    ld a, [bc]                                    ; $720b: $0a
    ld [bc], a                                    ; $720c: $02
    jr c, jr_085_7248                             ; $720d: $38 $39

    ld a, [hl-]                                   ; $720f: $3a
    sbc $3c                                       ; $7210: $de $3c
    dec a                                         ; $7212: $3d
    ld a, $3f                                     ; $7213: $3e $3f
    ld b, b                                       ; $7215: $40
    ld b, c                                       ; $7216: $41
    ld b, d                                       ; $7217: $42
    ld b, e                                       ; $7218: $43
    dec de                                        ; $7219: $1b
    inc e                                         ; $721a: $1c
    dec e                                         ; $721b: $1d
    ld e, $05                                     ; $721c: $1e $05
    rlca                                          ; $721e: $07
    ld bc, $0509                                  ; $721f: $01 $09 $05
    ld bc, $0701                                  ; $7222: $01 $01 $07
    dec b                                         ; $7225: $05
    rlca                                          ; $7226: $07
    ld bc, $0501                                  ; $7227: $01 $01 $05
    ld bc, $0107                                  ; $722a: $01 $07 $01
    rst $18                                       ; $722d: $df
    ldh [$e0], a                                  ; $722e: $e0 $e0
    pop hl                                        ; $7230: $e1
    ld h, [hl]                                    ; $7231: $66
    ld h, a                                       ; $7232: $67
    ld l, b                                       ; $7233: $68
    ld l, c                                       ; $7234: $69
    sbc c                                         ; $7235: $99
    sbc d                                         ; $7236: $9a
    sbc e                                         ; $7237: $9b
    or c                                          ; $7238: $b1
    add hl, hl                                    ; $7239: $29
    ld a, [hl+]                                   ; $723a: $2a
    dec hl                                        ; $723b: $2b
    inc l                                         ; $723c: $2c
    dec bc                                        ; $723d: $0b
    dec bc                                        ; $723e: $0b
    dec hl                                        ; $723f: $2b
    dec bc                                        ; $7240: $0b
    ld bc, $0505                                  ; $7241: $01 $05 $05
    ld bc, $0f09                                  ; $7244: $01 $09 $0f
    add hl, bc                                    ; $7247: $09

jr_085_7248:
    rrca                                          ; $7248: $0f
    ld bc, $0101                                  ; $7249: $01 $01 $01
    ld bc, $39e2                                  ; $724c: $01 $e2 $39
    db $e3                                        ; $724f: $e3
    db $e4                                        ; $7250: $e4
    inc a                                         ; $7251: $3c
    dec a                                         ; $7252: $3d
    push hl                                       ; $7253: $e5
    cp c                                          ; $7254: $b9
    ld b, b                                       ; $7255: $40
    ld b, c                                       ; $7256: $41
    ld b, d                                       ; $7257: $42
    and $1b                                       ; $7258: $e6 $1b
    inc e                                         ; $725a: $1c
    dec e                                         ; $725b: $1d
    ld e, $09                                     ; $725c: $1e $09
    dec b                                         ; $725e: $05
    ld a, [bc]                                    ; $725f: $0a
    ld a, [bc]                                    ; $7260: $0a
    ld bc, $0a05                                  ; $7261: $01 $05 $0a
    dec bc                                        ; $7264: $0b
    ld bc, $0505                                  ; $7265: $01 $05 $05
    dec bc                                        ; $7268: $0b
    ld bc, $0505                                  ; $7269: $01 $05 $05
    dec b                                         ; $726c: $05
    db $e4                                        ; $726d: $e4
    dec c                                         ; $726e: $0d
    inc c                                         ; $726f: $0c
    db $e4                                        ; $7270: $e4
    cp d                                          ; $7271: $ba
    ld h, a                                       ; $7272: $67
    ld l, b                                       ; $7273: $68
    ld l, c                                       ; $7274: $69
    ld c, $9a                                     ; $7275: $0e $9a
    sbc e                                         ; $7277: $9b
    or c                                          ; $7278: $b1
    add hl, hl                                    ; $7279: $29
    ld a, [hl+]                                   ; $727a: $2a
    dec hl                                        ; $727b: $2b
    inc l                                         ; $727c: $2c
    ld a, [hl+]                                   ; $727d: $2a
    ld a, [hl+]                                   ; $727e: $2a
    ld a, [hl+]                                   ; $727f: $2a
    ld a, [hl+]                                   ; $7280: $2a
    dec bc                                        ; $7281: $0b
    dec b                                         ; $7282: $05
    dec b                                         ; $7283: $05
    dec b                                         ; $7284: $05
    dec bc                                        ; $7285: $0b
    dec c                                         ; $7286: $0d
    dec c                                         ; $7287: $0d
    dec c                                         ; $7288: $0d
    dec b                                         ; $7289: $05
    dec b                                         ; $728a: $05
    dec b                                         ; $728b: $05
    dec b                                         ; $728c: $05
    dec c                                         ; $728d: $0d
    inc c                                         ; $728e: $0c
    db $e4                                        ; $728f: $e4
    db $e3                                        ; $7290: $e3
    inc a                                         ; $7291: $3c
    ld l, d                                       ; $7292: $6a
    or l                                          ; $7293: $b5
    push hl                                       ; $7294: $e5
    ld b, b                                       ; $7295: $40
    and $0e                                       ; $7296: $e6 $0e
    ld b, e                                       ; $7298: $43
    dec de                                        ; $7299: $1b
    inc e                                         ; $729a: $1c
    dec e                                         ; $729b: $1d
    ld e, $2a                                     ; $729c: $1e $2a
    ld a, [hl+]                                   ; $729e: $2a
    ld a, [hl+]                                   ; $729f: $2a
    ld a, [hl+]                                   ; $72a0: $2a
    dec b                                         ; $72a1: $05
    inc bc                                        ; $72a2: $03
    dec bc                                        ; $72a3: $0b
    ld a, [hl+]                                   ; $72a4: $2a
    dec b                                         ; $72a5: $05
    dec bc                                        ; $72a6: $0b
    dec bc                                        ; $72a7: $0b
    dec b                                         ; $72a8: $05
    dec b                                         ; $72a9: $05
    dec b                                         ; $72aa: $05
    dec b                                         ; $72ab: $05
    dec b                                         ; $72ac: $05
    ld h, d                                       ; $72ad: $62
    xor h                                         ; $72ae: $ac
    rst $18                                       ; $72af: $df
    ldh [$66], a                                  ; $72b0: $e0 $66
    ld h, a                                       ; $72b2: $67
    ld l, b                                       ; $72b3: $68
    ld l, c                                       ; $72b4: $69
    sbc c                                         ; $72b5: $99
    sbc d                                         ; $72b6: $9a
    sbc e                                         ; $72b7: $9b
    or c                                          ; $72b8: $b1
    add hl, hl                                    ; $72b9: $29
    ld a, [hl+]                                   ; $72ba: $2a
    dec hl                                        ; $72bb: $2b
    inc l                                         ; $72bc: $2c
    ld bc, $0b09                                  ; $72bd: $01 $09 $0b
    dec bc                                        ; $72c0: $0b
    rlca                                          ; $72c1: $07
    ld bc, $0507                                  ; $72c2: $01 $07 $05
    add hl, bc                                    ; $72c5: $09
    rrca                                          ; $72c6: $0f
    add hl, bc                                    ; $72c7: $09
    add hl, bc                                    ; $72c8: $09
    ld bc, $0101                                  ; $72c9: $01 $01 $01
    ld bc, $e1e0                                  ; $72cc: $01 $e0 $e1
    db $10                                        ; $72cf: $10
    dec sp                                        ; $72d0: $3b
    inc a                                         ; $72d1: $3c
    dec a                                         ; $72d2: $3d
    ld a, $3f                                     ; $72d3: $3e $3f
    ld b, b                                       ; $72d5: $40
    ld b, c                                       ; $72d6: $41
    ld b, d                                       ; $72d7: $42
    ld b, e                                       ; $72d8: $43
    dec de                                        ; $72d9: $1b
    inc e                                         ; $72da: $1c
    dec e                                         ; $72db: $1d
    ld e, $2b                                     ; $72dc: $1e $2b
    dec bc                                        ; $72de: $0b
    add hl, bc                                    ; $72df: $09
    ld bc, $0705                                  ; $72e0: $01 $05 $07
    ld bc, $0701                                  ; $72e3: $01 $01 $07
    ld bc, $0101                                  ; $72e6: $01 $01 $01
    ld bc, $0101                                  ; $72e9: $01 $01 $01
    ld bc, $2e2d                                  ; $72ec: $01 $2d $2e
    ld e, h                                       ; $72ef: $5c
    ld e, l                                       ; $72f0: $5d
    ld e, [hl]                                    ; $72f1: $5e
    ld e, a                                       ; $72f2: $5f
    ld h, b                                       ; $72f3: $60
    ld h, c                                       ; $72f4: $61
    ld h, d                                       ; $72f5: $62
    ld h, e                                       ; $72f6: $63
    ld h, h                                       ; $72f7: $64
    ld h, l                                       ; $72f8: $65
    or l                                          ; $72f9: $b5
    ld h, a                                       ; $72fa: $67
    ld l, b                                       ; $72fb: $68
    ld l, c                                       ; $72fc: $69
    rlca                                          ; $72fd: $07
    rlca                                          ; $72fe: $07
    ld bc, $0101                                  ; $72ff: $01 $01 $01
    ld bc, $0701                                  ; $7302: $01 $01 $07
    ld bc, $0701                                  ; $7305: $01 $01 $07
    rlca                                          ; $7308: $07
    dec bc                                        ; $7309: $0b
    rlca                                          ; $730a: $07
    ld bc, $1f01                                  ; $730b: $01 $01 $1f
    jr nz, jr_085_7331                            ; $730e: $20 $21

    ld [hl+], a                                   ; $7310: $22
    inc hl                                        ; $7311: $23
    inc h                                         ; $7312: $24
    dec h                                         ; $7313: $25
    ld h, $38                                     ; $7314: $26 $38
    add hl, sp                                    ; $7316: $39
    ld a, [hl-]                                   ; $7317: $3a
    dec sp                                        ; $7318: $3b
    inc a                                         ; $7319: $3c
    cp c                                          ; $731a: $b9
    cp d                                          ; $731b: $ba
    ccf                                           ; $731c: $3f
    ld bc, $0101                                  ; $731d: $01 $01 $01
    rlca                                          ; $7320: $07
    rlca                                          ; $7321: $07
    ld bc, $0107                                  ; $7322: $01 $07 $01
    ld bc, $0101                                  ; $7325: $01 $01 $01
    ld bc, $0b01                                  ; $7328: $01 $01 $0b
    dec bc                                        ; $732b: $0b
    ld bc, $2e2d                                  ; $732c: $01 $2d $2e
    ld e, h                                       ; $732f: $5c
    ld e, l                                       ; $7330: $5d

jr_085_7331:
    ld e, [hl]                                    ; $7331: $5e
    ld e, a                                       ; $7332: $5f
    ld h, b                                       ; $7333: $60
    ld h, c                                       ; $7334: $61
    ld h, d                                       ; $7335: $62
    ld h, e                                       ; $7336: $63
    ld h, h                                       ; $7337: $64
    ld h, l                                       ; $7338: $65
    ld h, [hl]                                    ; $7339: $66
    ld h, a                                       ; $733a: $67
    ld l, b                                       ; $733b: $68
    ld l, c                                       ; $733c: $69
    rlca                                          ; $733d: $07
    rlca                                          ; $733e: $07
    ld bc, $0101                                  ; $733f: $01 $01 $01
    rlca                                          ; $7342: $07
    ld bc, $0707                                  ; $7343: $01 $07 $07
    ld bc, $0107                                  ; $7346: $01 $07 $01
    rlca                                          ; $7349: $07
    ld bc, $0101                                  ; $734a: $01 $01 $01
    rra                                           ; $734d: $1f
    jr nz, @+$23                                  ; $734e: $20 $21

    ld [hl+], a                                   ; $7350: $22
    inc hl                                        ; $7351: $23
    inc h                                         ; $7352: $24
    dec h                                         ; $7353: $25
    ld h, $38                                     ; $7354: $26 $38
    add hl, sp                                    ; $7356: $39
    ld a, [hl-]                                   ; $7357: $3a
    dec sp                                        ; $7358: $3b
    inc a                                         ; $7359: $3c
    dec a                                         ; $735a: $3d
    ld a, $3f                                     ; $735b: $3e $3f
    ld bc, $0101                                  ; $735d: $01 $01 $01
    rlca                                          ; $7360: $07
    rlca                                          ; $7361: $07
    rlca                                          ; $7362: $07
    ld bc, $0101                                  ; $7363: $01 $01 $01
    ld bc, $0707                                  ; $7366: $01 $07 $07
    ld bc, $0107                                  ; $7369: $01 $07 $01
    ld bc, $eeed                                  ; $736c: $01 $ed $ee
    rst $28                                       ; $736f: $ef
    ldh a, [$32]                                  ; $7370: $f0 $32
    ld a, [c]                                     ; $7372: $f2
    di                                            ; $7373: $f3
    db $f4                                        ; $7374: $f4
    ld b, l                                       ; $7375: $45
    or $f7                                        ; $7376: $f6 $f7
    ld hl, sp+$49                                 ; $7378: $f8 $49
    ld a, [$fcfb]                                 ; $737a: $fa $fb $fc
    ld a, [bc]                                    ; $737d: $0a
    ld a, [bc]                                    ; $737e: $0a
    ld a, [bc]                                    ; $737f: $0a
    ld a, [bc]                                    ; $7380: $0a
    ld [bc], a                                    ; $7381: $02
    ld a, [bc]                                    ; $7382: $0a
    ld a, [bc]                                    ; $7383: $0a
    ld a, [bc]                                    ; $7384: $0a
    ld [bc], a                                    ; $7385: $02
    ld a, [bc]                                    ; $7386: $0a
    ld a, [bc]                                    ; $7387: $0a
    ld a, [bc]                                    ; $7388: $0a
    ld [bc], a                                    ; $7389: $02
    ld a, [bc]                                    ; $738a: $0a
    ld a, [bc]                                    ; $738b: $0a
    ld a, [bc]                                    ; $738c: $0a
    jr nz, jr_085_73b0                            ; $738d: $20 $21

    add sp, -$19                                  ; $738f: $e8 $e7
    ld [hl+], a                                   ; $7391: $22
    inc hl                                        ; $7392: $23
    ld [$24e9], a                                 ; $7393: $ea $e9 $24
    dec h                                         ; $7396: $25
    inc bc                                        ; $7397: $03
    db $eb                                        ; $7398: $eb
    dec d                                         ; $7399: $15
    ld h, $06                                     ; $739a: $26 $06
    db $ec                                        ; $739c: $ec
    ld a, [bc]                                    ; $739d: $0a
    ld a, [bc]                                    ; $739e: $0a
    ld a, [bc]                                    ; $739f: $0a
    ld a, [bc]                                    ; $73a0: $0a
    ld a, [bc]                                    ; $73a1: $0a
    ld a, [bc]                                    ; $73a2: $0a
    ld a, [bc]                                    ; $73a3: $0a
    ld a, [bc]                                    ; $73a4: $0a
    ld a, [bc]                                    ; $73a5: $0a
    ld a, [bc]                                    ; $73a6: $0a
    ld a, [bc]                                    ; $73a7: $0a
    ld a, [bc]                                    ; $73a8: $0a
    ld a, [hl+]                                   ; $73a9: $2a
    ld a, [bc]                                    ; $73aa: $0a
    ld a, [bc]                                    ; $73ab: $0a
    ld a, [bc]                                    ; $73ac: $0a
    sbc c                                         ; $73ad: $99
    sbc d                                         ; $73ae: $9a
    rst $00                                       ; $73af: $c7

jr_085_73b0:
    sbc h                                         ; $73b0: $9c
    add hl, hl                                    ; $73b1: $29
    or e                                          ; $73b2: $b3
    ret z                                         ; $73b3: $c8

    ret                                           ; $73b4: $c9


    dec l                                         ; $73b5: $2d
    cp h                                          ; $73b6: $bc
    call z, Call_085_5ecd                         ; $73b7: $cc $cd $5e
    rlca                                          ; $73ba: $07
    ret nc                                        ; $73bb: $d0

    pop de                                        ; $73bc: $d1
    add hl, bc                                    ; $73bd: $09
    add hl, bc                                    ; $73be: $09
    add hl, bc                                    ; $73bf: $09
    add hl, bc                                    ; $73c0: $09
    ld bc, $0b09                                  ; $73c1: $01 $09 $0b
    dec bc                                        ; $73c4: $0b
    rlca                                          ; $73c5: $07
    add hl, bc                                    ; $73c6: $09
    dec bc                                        ; $73c7: $0b
    dec bc                                        ; $73c8: $0b
    ld bc, $0b09                                  ; $73c9: $01 $09 $0b
    dec bc                                        ; $73cc: $0b
    ld [$4209], sp                                ; $73cd: $08 $09 $42
    ld b, e                                       ; $73d0: $43
    jp z, Jump_000_0acb                           ; $73d1: $ca $cb $0a

    ld e, $ce                                     ; $73d4: $1e $ce
    rst $08                                       ; $73d6: $cf
    dec bc                                        ; $73d7: $0b
    ld [hl+], a                                   ; $73d8: $22
    jp nc, $8bd3                                  ; $73d9: $d2 $d3 $8b

    ld h, $09                                     ; $73dc: $26 $09
    add hl, bc                                    ; $73de: $09
    ld bc, $0b01                                  ; $73df: $01 $01 $0b
    dec bc                                        ; $73e2: $0b
    add hl, bc                                    ; $73e3: $09
    ld bc, $0b0b                                  ; $73e4: $01 $0b $0b
    add hl, bc                                    ; $73e7: $09
    rlca                                          ; $73e8: $07
    dec bc                                        ; $73e9: $0b
    dec bc                                        ; $73ea: $0b
    add hl, bc                                    ; $73eb: $09
    ld bc, $ac62                                  ; $73ec: $01 $62 $ac
    rst $18                                       ; $73ef: $df
    ldh [$66], a                                  ; $73f0: $e0 $66
    ld h, a                                       ; $73f2: $67
    ld l, b                                       ; $73f3: $68
    ld l, c                                       ; $73f4: $69
    sbc c                                         ; $73f5: $99
    sbc d                                         ; $73f6: $9a
    sbc e                                         ; $73f7: $9b
    or c                                          ; $73f8: $b1
    add hl, hl                                    ; $73f9: $29
    ld a, [hl+]                                   ; $73fa: $2a
    dec hl                                        ; $73fb: $2b
    inc l                                         ; $73fc: $2c
    rlca                                          ; $73fd: $07
    add hl, bc                                    ; $73fe: $09
    dec bc                                        ; $73ff: $0b
    dec bc                                        ; $7400: $0b
    ld bc, $0701                                  ; $7401: $01 $01 $07
    dec b                                         ; $7404: $05
    add hl, bc                                    ; $7405: $09
    add hl, bc                                    ; $7406: $09
    add hl, bc                                    ; $7407: $09
    add hl, bc                                    ; $7408: $09
    ld bc, $0107                                  ; $7409: $01 $07 $01
    rlca                                          ; $740c: $07
    ldh [$e1], a                                  ; $740d: $e0 $e1
    db $10                                        ; $740f: $10
    dec sp                                        ; $7410: $3b
    inc a                                         ; $7411: $3c
    dec a                                         ; $7412: $3d
    ld a, $3f                                     ; $7413: $3e $3f
    ld b, b                                       ; $7415: $40
    ld b, c                                       ; $7416: $41
    ld b, d                                       ; $7417: $42
    ld b, e                                       ; $7418: $43
    dec de                                        ; $7419: $1b
    inc e                                         ; $741a: $1c
    dec e                                         ; $741b: $1d
    ld e, $2b                                     ; $741c: $1e $2b
    dec bc                                        ; $741e: $0b
    add hl, bc                                    ; $741f: $09
    ld bc, $0705                                  ; $7420: $01 $05 $07
    ld bc, $0701                                  ; $7423: $01 $01 $07
    ld bc, $0101                                  ; $7426: $01 $01 $01
    rlca                                          ; $7429: $07
    ld bc, $0707                                  ; $742a: $01 $07 $07
    ld h, d                                       ; $742d: $62
    ld h, e                                       ; $742e: $63
    xor $ed                                       ; $742f: $ee $ed
    ld h, [hl]                                    ; $7431: $66
    ld h, a                                       ; $7432: $67
    xor $ed                                       ; $7433: $ee $ed
    sbc c                                         ; $7435: $99
    sbc d                                         ; $7436: $9a
    xor $ed                                       ; $7437: $ee $ed
    add hl, hl                                    ; $7439: $29
    ld a, [hl+]                                   ; $743a: $2a
    xor $ed                                       ; $743b: $ee $ed
    ld bc, $8005                                  ; $743d: $01 $05 $80
    add b                                         ; $7440: $80
    rlca                                          ; $7441: $07
    dec b                                         ; $7442: $05
    add b                                         ; $7443: $80
    add b                                         ; $7444: $80
    add hl, bc                                    ; $7445: $09
    dec c                                         ; $7446: $0d
    add b                                         ; $7447: $80
    add b                                         ; $7448: $80
    ld bc, $8005                                  ; $7449: $01 $05 $80
    add b                                         ; $744c: $80
    dec l                                         ; $744d: $2d
    ld l, $ee                                     ; $744e: $2e $ee
    db $ed                                        ; $7450: $ed
    ld e, [hl]                                    ; $7451: $5e
    ld e, a                                       ; $7452: $5f
    xor $ed                                       ; $7453: $ee $ed
    ld h, d                                       ; $7455: $62
    ld h, e                                       ; $7456: $63
    xor $ed                                       ; $7457: $ee $ed
    ld h, [hl]                                    ; $7459: $66
    ld h, a                                       ; $745a: $67
    xor $ed                                       ; $745b: $ee $ed
    ld bc, $8005                                  ; $745d: $01 $05 $80
    add b                                         ; $7460: $80
    rlca                                          ; $7461: $07
    dec b                                         ; $7462: $05
    add b                                         ; $7463: $80
    add b                                         ; $7464: $80
    ld bc, $8005                                  ; $7465: $01 $05 $80
    add b                                         ; $7468: $80
    rlca                                          ; $7469: $07
    dec b                                         ; $746a: $05
    add b                                         ; $746b: $80
    add b                                         ; $746c: $80
    sbc c                                         ; $746d: $99
    sbc d                                         ; $746e: $9a
    xor $ed                                       ; $746f: $ee $ed
    add hl, hl                                    ; $7471: $29
    ld a, [hl+]                                   ; $7472: $2a
    xor $ed                                       ; $7473: $ee $ed
    dec l                                         ; $7475: $2d
    ld l, $ee                                     ; $7476: $2e $ee
    db $ed                                        ; $7478: $ed
    ld e, [hl]                                    ; $7479: $5e
    ld e, a                                       ; $747a: $5f
    xor $ed                                       ; $747b: $ee $ed
    rrca                                          ; $747d: $0f
    dec c                                         ; $747e: $0d
    add b                                         ; $747f: $80
    add b                                         ; $7480: $80
    ld bc, $8005                                  ; $7481: $01 $05 $80
    add b                                         ; $7484: $80
    ld bc, $8005                                  ; $7485: $01 $05 $80
    add b                                         ; $7488: $80
    ld bc, $8005                                  ; $7489: $01 $05 $80
    add b                                         ; $748c: $80
    ld h, d                                       ; $748d: $62
    ld h, e                                       ; $748e: $63
    xor $ed                                       ; $748f: $ee $ed
    ld h, [hl]                                    ; $7491: $66
    ld h, a                                       ; $7492: $67
    xor $ed                                       ; $7493: $ee $ed
    sbc c                                         ; $7495: $99
    sbc d                                         ; $7496: $9a
    xor $ed                                       ; $7497: $ee $ed
    add hl, hl                                    ; $7499: $29
    ld a, [hl+]                                   ; $749a: $2a
    xor $ed                                       ; $749b: $ee $ed
    rlca                                          ; $749d: $07
    dec b                                         ; $749e: $05
    add b                                         ; $749f: $80
    add b                                         ; $74a0: $80
    rlca                                          ; $74a1: $07
    dec b                                         ; $74a2: $05
    add b                                         ; $74a3: $80
    add b                                         ; $74a4: $80
    add hl, bc                                    ; $74a5: $09
    dec c                                         ; $74a6: $0d
    add b                                         ; $74a7: $80
    add b                                         ; $74a8: $80
    ld bc, $8005                                  ; $74a9: $01 $05 $80
    add b                                         ; $74ac: $80
    rra                                           ; $74ad: $1f
    jr nz, jr_085_74d1                            ; $74ae: $20 $21

    ld [hl+], a                                   ; $74b0: $22
    inc hl                                        ; $74b1: $23
    inc h                                         ; $74b2: $24
    dec h                                         ; $74b3: $25
    ld h, $38                                     ; $74b4: $26 $38
    add hl, sp                                    ; $74b6: $39
    ld a, [hl-]                                   ; $74b7: $3a
    dec sp                                        ; $74b8: $3b
    inc a                                         ; $74b9: $3c
    dec a                                         ; $74ba: $3d
    ld a, $3f                                     ; $74bb: $3e $3f
    dec b                                         ; $74bd: $05
    ld bc, $0701                                  ; $74be: $01 $01 $07
    dec b                                         ; $74c1: $05
    rlca                                          ; $74c2: $07
    ld bc, $0501                                  ; $74c3: $01 $01 $05
    rlca                                          ; $74c6: $07
    ld bc, $0501                                  ; $74c7: $01 $01 $05
    ld bc, $0101                                  ; $74ca: $01 $01 $01
    dec l                                         ; $74cd: $2d
    ld l, $5c                                     ; $74ce: $2e $5c
    ld e, l                                       ; $74d0: $5d

jr_085_74d1:
    ld e, [hl]                                    ; $74d1: $5e
    ld e, a                                       ; $74d2: $5f
    ld h, b                                       ; $74d3: $60
    ld h, c                                       ; $74d4: $61
    ld h, d                                       ; $74d5: $62
    ld h, e                                       ; $74d6: $63
    ld h, h                                       ; $74d7: $64
    ld h, l                                       ; $74d8: $65
    ld h, [hl]                                    ; $74d9: $66
    ld h, a                                       ; $74da: $67
    ld l, b                                       ; $74db: $68
    ld l, c                                       ; $74dc: $69
    ld bc, $0107                                  ; $74dd: $01 $07 $01
    ld bc, $0701                                  ; $74e0: $01 $01 $07
    ld bc, $0107                                  ; $74e3: $01 $07 $01
    ld bc, $0107                                  ; $74e6: $01 $07 $01
    ld bc, $0701                                  ; $74e9: $01 $01 $07
    ld bc, $201f                                  ; $74ec: $01 $1f $20
    ld hl, $2322                                  ; $74ef: $21 $22 $23
    inc h                                         ; $74f2: $24
    dec h                                         ; $74f3: $25
    ld h, $38                                     ; $74f4: $26 $38
    add hl, sp                                    ; $74f6: $39
    ld a, [hl-]                                   ; $74f7: $3a
    dec sp                                        ; $74f8: $3b
    inc a                                         ; $74f9: $3c
    dec a                                         ; $74fa: $3d
    ld a, $6a                                     ; $74fb: $3e $6a
    rlca                                          ; $74fd: $07
    ld bc, $0707                                  ; $74fe: $01 $07 $07
    ld bc, $0701                                  ; $7501: $01 $01 $07
    ld bc, $0701                                  ; $7504: $01 $01 $07
    rlca                                          ; $7507: $07
    ld bc, $0101                                  ; $7508: $01 $01 $01
    ld bc, $4003                                  ; $750b: $01 $03 $40
    ld b, c                                       ; $750e: $41
    ld b, d                                       ; $750f: $42
    ld b, e                                       ; $7510: $43
    dec de                                        ; $7511: $1b
    inc e                                         ; $7512: $1c
    dec e                                         ; $7513: $1d
    call nz, $201f                                ; $7514: $c4 $1f $20
    ld hl, $23c5                                  ; $7517: $21 $c5 $23
    inc h                                         ; $751a: $24
    dec h                                         ; $751b: $25
    adc h                                         ; $751c: $8c
    dec b                                         ; $751d: $05
    ld bc, $0701                                  ; $751e: $01 $01 $07
    dec b                                         ; $7521: $05
    ld bc, $0901                                  ; $7522: $01 $01 $09
    dec b                                         ; $7525: $05
    rlca                                          ; $7526: $07
    rlca                                          ; $7527: $07
    add hl, bc                                    ; $7528: $09
    dec b                                         ; $7529: $05
    rlca                                          ; $752a: $07
    rlca                                          ; $752b: $07
    add hl, bc                                    ; $752c: $09
    add $b0                                       ; $752d: $c6 $b0
    rst $00                                       ; $752f: $c7
    sbc h                                         ; $7530: $9c
    ret z                                         ; $7531: $c8

    ret                                           ; $7532: $c9


    jp z, $cccb                                   ; $7533: $ca $cb $cc

    call $cfce                                    ; $7536: $cd $ce $cf
    ret nc                                        ; $7539: $d0

    pop de                                        ; $753a: $d1
    jp nc, Jump_000_09d3                          ; $753b: $d2 $d3 $09

    add hl, bc                                    ; $753e: $09
    add hl, bc                                    ; $753f: $09
    rrca                                          ; $7540: $0f
    dec bc                                        ; $7541: $0b
    dec bc                                        ; $7542: $0b

jr_085_7543:
    dec bc                                        ; $7543: $0b
    dec bc                                        ; $7544: $0b
    dec bc                                        ; $7545: $0b
    dec bc                                        ; $7546: $0b
    dec bc                                        ; $7547: $0b
    dec bc                                        ; $7548: $0b
    dec bc                                        ; $7549: $0b
    dec bc                                        ; $754a: $0b
    dec bc                                        ; $754b: $0b
    dec bc                                        ; $754c: $0b
    ld b, b                                       ; $754d: $40
    ld b, c                                       ; $754e: $41
    rst $20                                       ; $754f: $e7
    add sp, -$2a                                  ; $7550: $e8 $d6
    inc e                                         ; $7552: $1c
    jp hl                                         ; $7553: $e9


    ret c                                         ; $7554: $d8

    reti                                          ; $7555: $d9


    jr nz, jr_085_7543                            ; $7556: $20 $eb

    db $db                                        ; $7558: $db
    adc c                                         ; $7559: $89
    inc h                                         ; $755a: $24
    db $ec                                        ; $755b: $ec
    ld b, $01                                     ; $755c: $06 $01
    ld bc, $2a2a                                  ; $755e: $01 $2a $2a
    add hl, bc                                    ; $7561: $09
    ld bc, $0a2a                                  ; $7562: $01 $2a $0a
    add hl, bc                                    ; $7565: $09
    dec b                                         ; $7566: $05
    ld a, [hl+]                                   ; $7567: $2a
    ld a, [bc]                                    ; $7568: $0a
    add hl, bc                                    ; $7569: $09
    dec b                                         ; $756a: $05
    ld a, [hl+]                                   ; $756b: $2a
    ld a, [hl+]                                   ; $756c: $2a
    jr c, jr_085_75a8                             ; $756d: $38 $39

    ld a, [hl-]                                   ; $756f: $3a
    sbc $3c                                       ; $7570: $de $3c
    dec a                                         ; $7572: $3d
    ld a, $3f                                     ; $7573: $3e $3f
    ld b, b                                       ; $7575: $40
    ld b, c                                       ; $7576: $41
    ld b, d                                       ; $7577: $42
    ld b, e                                       ; $7578: $43
    dec de                                        ; $7579: $1b
    inc e                                         ; $757a: $1c
    dec e                                         ; $757b: $1d
    ld e, $05                                     ; $757c: $1e $05
    rlca                                          ; $757e: $07
    rlca                                          ; $757f: $07
    add hl, bc                                    ; $7580: $09
    dec b                                         ; $7581: $05
    rlca                                          ; $7582: $07
    ld bc, $0501                                  ; $7583: $01 $01 $05
    rlca                                          ; $7586: $07
    ld bc, $0501                                  ; $7587: $01 $01 $05
    ld bc, $0701                                  ; $758a: $01 $01 $07
    rst $18                                       ; $758d: $df
    ldh [$e0], a                                  ; $758e: $e0 $e0
    pop hl                                        ; $7590: $e1
    ld h, [hl]                                    ; $7591: $66
    ld h, a                                       ; $7592: $67
    ld l, b                                       ; $7593: $68
    ld l, c                                       ; $7594: $69
    sbc c                                         ; $7595: $99
    sbc d                                         ; $7596: $9a
    sbc e                                         ; $7597: $9b
    or c                                          ; $7598: $b1
    add hl, hl                                    ; $7599: $29
    ld a, [hl+]                                   ; $759a: $2a
    dec hl                                        ; $759b: $2b
    inc l                                         ; $759c: $2c
    dec bc                                        ; $759d: $0b
    dec bc                                        ; $759e: $0b
    dec hl                                        ; $759f: $2b
    dec bc                                        ; $75a0: $0b
    ld bc, $0505                                  ; $75a1: $01 $05 $05
    ld bc, $0909                                  ; $75a4: $01 $09 $09
    rrca                                          ; $75a7: $0f

jr_085_75a8:
    add hl, bc                                    ; $75a8: $09
    rlca                                          ; $75a9: $07
    ld bc, $0701                                  ; $75aa: $01 $01 $07
    rra                                           ; $75ad: $1f
    jr nz, jr_085_75d1                            ; $75ae: $20 $21

    ld [hl+], a                                   ; $75b0: $22
    inc hl                                        ; $75b1: $23
    inc h                                         ; $75b2: $24
    dec h                                         ; $75b3: $25
    ld h, $38                                     ; $75b4: $26 $38
    add hl, sp                                    ; $75b6: $39
    ld a, [hl-]                                   ; $75b7: $3a
    dec sp                                        ; $75b8: $3b
    inc a                                         ; $75b9: $3c
    dec a                                         ; $75ba: $3d
    ld a, $3f                                     ; $75bb: $3e $3f
    dec b                                         ; $75bd: $05
    ld bc, $0101                                  ; $75be: $01 $01 $01
    dec b                                         ; $75c1: $05
    rlca                                          ; $75c2: $07
    ld bc, $0501                                  ; $75c3: $01 $01 $05
    ld bc, $0101                                  ; $75c6: $01 $01 $01
    dec b                                         ; $75c9: $05
    ld bc, $0107                                  ; $75ca: $01 $07 $01
    dec l                                         ; $75cd: $2d
    ld l, $5c                                     ; $75ce: $2e $5c
    ld e, l                                       ; $75d0: $5d

jr_085_75d1:
    ld e, [hl]                                    ; $75d1: $5e
    ld e, a                                       ; $75d2: $5f
    ld h, b                                       ; $75d3: $60
    ld h, c                                       ; $75d4: $61
    ld h, d                                       ; $75d5: $62
    ld h, e                                       ; $75d6: $63
    ld h, h                                       ; $75d7: $64
    ld h, l                                       ; $75d8: $65
    ld h, [hl]                                    ; $75d9: $66
    ld h, a                                       ; $75da: $67
    ld l, b                                       ; $75db: $68
    ld l, c                                       ; $75dc: $69
    ld bc, $0101                                  ; $75dd: $01 $01 $01
    ld bc, $0101                                  ; $75e0: $01 $01 $01
    ld bc, $0707                                  ; $75e3: $01 $07 $07
    rlca                                          ; $75e6: $07
    ld bc, $0101                                  ; $75e7: $01 $01 $01
    rlca                                          ; $75ea: $07
    ld bc, $1f01                                  ; $75eb: $01 $01 $1f
    jr nz, jr_085_7611                            ; $75ee: $20 $21

    ld [hl+], a                                   ; $75f0: $22
    inc hl                                        ; $75f1: $23
    inc h                                         ; $75f2: $24
    dec h                                         ; $75f3: $25
    ld h, $38                                     ; $75f4: $26 $38
    add hl, sp                                    ; $75f6: $39
    ld a, [hl-]                                   ; $75f7: $3a
    dec sp                                        ; $75f8: $3b
    inc a                                         ; $75f9: $3c
    dec a                                         ; $75fa: $3d
    ld a, $3f                                     ; $75fb: $3e $3f
    ld bc, $0107                                  ; $75fd: $01 $07 $01
    ld bc, $0101                                  ; $7600: $01 $01 $01
    ld bc, $0101                                  ; $7603: $01 $01 $01
    ld bc, $0707                                  ; $7606: $01 $07 $07
    ld bc, $0101                                  ; $7609: $01 $01 $01
    rlca                                          ; $760c: $07
    dec l                                         ; $760d: $2d
    ld l, $5c                                     ; $760e: $2e $5c
    ld e, l                                       ; $7610: $5d

jr_085_7611:
    ld e, [hl]                                    ; $7611: $5e
    ld e, a                                       ; $7612: $5f
    ld h, b                                       ; $7613: $60
    ld h, c                                       ; $7614: $61
    ld h, d                                       ; $7615: $62
    ld h, e                                       ; $7616: $63
    ld h, h                                       ; $7617: $64
    ld h, l                                       ; $7618: $65
    or l                                          ; $7619: $b5
    ld h, a                                       ; $761a: $67
    ld l, b                                       ; $761b: $68
    ld l, c                                       ; $761c: $69
    ld bc, $0107                                  ; $761d: $01 $07 $01
    ld bc, $0101                                  ; $7620: $01 $01 $01
    rlca                                          ; $7623: $07
    ld bc, $0101                                  ; $7624: $01 $01 $01
    rlca                                          ; $7627: $07
    ld bc, $010b                                  ; $7628: $01 $0b $01
    ld bc, $1f07                                  ; $762b: $01 $07 $1f
    jr nz, jr_085_7651                            ; $762e: $20 $21

    ld [hl+], a                                   ; $7630: $22
    inc hl                                        ; $7631: $23
    inc h                                         ; $7632: $24
    dec h                                         ; $7633: $25
    ld h, $38                                     ; $7634: $26 $38
    add hl, sp                                    ; $7636: $39
    ld a, [hl-]                                   ; $7637: $3a
    dec sp                                        ; $7638: $3b
    inc a                                         ; $7639: $3c
    cp c                                          ; $763a: $b9
    cp d                                          ; $763b: $ba
    ccf                                           ; $763c: $3f
    rlca                                          ; $763d: $07
    rlca                                          ; $763e: $07
    ld bc, $0101                                  ; $763f: $01 $01 $01
    rlca                                          ; $7642: $07
    rlca                                          ; $7643: $07
    ld bc, $0101                                  ; $7644: $01 $01 $01
    ld bc, $0701                                  ; $7647: $01 $01 $07
    dec bc                                        ; $764a: $0b
    dec bc                                        ; $764b: $0b
    ld bc, $2e2d                                  ; $764c: $01 $2d $2e
    ld e, h                                       ; $764f: $5c
    ld e, l                                       ; $7650: $5d

jr_085_7651:
    ld e, [hl]                                    ; $7651: $5e
    ld e, a                                       ; $7652: $5f
    ld h, b                                       ; $7653: $60
    ld h, c                                       ; $7654: $61
    ld h, d                                       ; $7655: $62
    ld h, e                                       ; $7656: $63
    ld h, h                                       ; $7657: $64
    ld h, l                                       ; $7658: $65
    ld h, [hl]                                    ; $7659: $66
    ld h, a                                       ; $765a: $67
    ld l, b                                       ; $765b: $68
    ld l, c                                       ; $765c: $69
    rlca                                          ; $765d: $07
    ld bc, $0107                                  ; $765e: $01 $07 $01
    ld bc, $0101                                  ; $7661: $01 $01 $01
    ld bc, $0107                                  ; $7664: $01 $07 $01
    ld bc, $0101                                  ; $7667: $01 $01 $01
    ld bc, $0107                                  ; $766a: $01 $07 $01
    rra                                           ; $766d: $1f
    jr nz, jr_085_7691                            ; $766e: $20 $21

    ld [hl+], a                                   ; $7670: $22
    inc hl                                        ; $7671: $23
    inc h                                         ; $7672: $24
    dec h                                         ; $7673: $25
    ld h, $38                                     ; $7674: $26 $38
    add hl, sp                                    ; $7676: $39
    ld a, [hl-]                                   ; $7677: $3a
    dec sp                                        ; $7678: $3b
    inc a                                         ; $7679: $3c
    dec a                                         ; $767a: $3d
    ld a, $3f                                     ; $767b: $3e $3f
    ld bc, $0101                                  ; $767d: $01 $01 $01
    rlca                                          ; $7680: $07
    ld bc, $0707                                  ; $7681: $01 $07 $07
    ld bc, $0101                                  ; $7684: $01 $01 $01
    rlca                                          ; $7687: $07
    rlca                                          ; $7688: $07
    ld bc, $0101                                  ; $7689: $01 $01 $01
    rlca                                          ; $768c: $07
    cp $fd                                        ; $768d: $fe $fd
    ldh a, [$ef]                                  ; $768f: $f0 $ef

jr_085_7691:
    pop af                                        ; $7691: $f1
    rst $38                                       ; $7692: $ff
    db $f4                                        ; $7693: $f4
    di                                            ; $7694: $f3
    push af                                       ; $7695: $f5
    inc h                                         ; $7696: $24
    ld hl, sp-$09                                 ; $7697: $f8 $f7
    ld h, $15                                     ; $7699: $26 $15
    db $fc                                        ; $769b: $fc
    ei                                            ; $769c: $fb
    ld a, [hl+]                                   ; $769d: $2a
    ld a, [hl+]                                   ; $769e: $2a
    ld a, [hl+]                                   ; $769f: $2a
    ld a, [hl+]                                   ; $76a0: $2a
    ld a, [bc]                                    ; $76a1: $0a
    ld a, [hl+]                                   ; $76a2: $2a
    ld a, [hl+]                                   ; $76a3: $2a
    ld a, [hl+]                                   ; $76a4: $2a
    ld a, [bc]                                    ; $76a5: $0a
    ld a, [hl+]                                   ; $76a6: $2a
    ld a, [hl+]                                   ; $76a7: $2a
    ld a, [hl+]                                   ; $76a8: $2a
    ld a, [hl+]                                   ; $76a9: $2a
    ld a, [bc]                                    ; $76aa: $0a
    ld a, [hl+]                                   ; $76ab: $2a
    ld a, [hl+]                                   ; $76ac: $2a
    xor $ed                                       ; $76ad: $ee $ed
    push de                                       ; $76af: $d5
    call nc, $16f2                                ; $76b0: $d4 $f2 $16
    daa                                           ; $76b3: $27
    rst $10                                       ; $76b4: $d7
    jr z, @+$2b                                   ; $76b5: $28 $29

    ld a, [hl+]                                   ; $76b7: $2a
    jp c, $2c2b                                   ; $76b8: $da $2b $2c

    db $dd                                        ; $76bb: $dd
    call c, Call_000_2a2a                         ; $76bc: $dc $2a $2a
    ld a, [hl+]                                   ; $76bf: $2a
    ld a, [hl+]                                   ; $76c0: $2a
    ld a, [hl+]                                   ; $76c1: $2a
    ld a, [bc]                                    ; $76c2: $0a
    ld a, [bc]                                    ; $76c3: $0a
    ld a, [hl+]                                   ; $76c4: $2a
    ld a, [bc]                                    ; $76c5: $0a
    ld a, [bc]                                    ; $76c6: $0a
    ld a, [bc]                                    ; $76c7: $0a
    ld a, [hl+]                                   ; $76c8: $2a
    ld a, [bc]                                    ; $76c9: $0a
    ld a, [bc]                                    ; $76ca: $0a
    ld a, [hl+]                                   ; $76cb: $2a
    ld a, [hl+]                                   ; $76cc: $2a
    ld [$4209], sp                                ; $76cd: $08 $09 $42
    ld b, e                                       ; $76d0: $43
    jp z, Jump_000_0acb                           ; $76d1: $ca $cb $0a

    ld e, $ce                                     ; $76d4: $1e $ce
    rst $08                                       ; $76d6: $cf
    dec bc                                        ; $76d7: $0b
    ld [hl+], a                                   ; $76d8: $22
    jp nc, $8bd3                                  ; $76d9: $d2 $d3 $8b

    ld h, $09                                     ; $76dc: $26 $09
    add hl, bc                                    ; $76de: $09
    ld bc, $0b01                                  ; $76df: $01 $01 $0b
    dec bc                                        ; $76e2: $0b
    add hl, bc                                    ; $76e3: $09
    rlca                                          ; $76e4: $07
    dec bc                                        ; $76e5: $0b
    dec bc                                        ; $76e6: $0b
    add hl, bc                                    ; $76e7: $09
    rlca                                          ; $76e8: $07
    dec bc                                        ; $76e9: $0b
    dec bc                                        ; $76ea: $0b
    add hl, bc                                    ; $76eb: $09
    ld bc, $ac62                                  ; $76ec: $01 $62 $ac
    rst $18                                       ; $76ef: $df
    ldh [$66], a                                  ; $76f0: $e0 $66
    ld h, a                                       ; $76f2: $67
    ld l, b                                       ; $76f3: $68
    ld l, c                                       ; $76f4: $69
    sbc c                                         ; $76f5: $99
    sbc d                                         ; $76f6: $9a
    sbc e                                         ; $76f7: $9b
    or c                                          ; $76f8: $b1
    add hl, hl                                    ; $76f9: $29
    ld a, [hl+]                                   ; $76fa: $2a
    dec hl                                        ; $76fb: $2b
    inc l                                         ; $76fc: $2c
    rlca                                          ; $76fd: $07
    add hl, bc                                    ; $76fe: $09
    dec bc                                        ; $76ff: $0b
    dec bc                                        ; $7700: $0b
    ld bc, $0701                                  ; $7701: $01 $01 $07
    dec b                                         ; $7704: $05
    add hl, bc                                    ; $7705: $09
    rrca                                          ; $7706: $0f
    add hl, bc                                    ; $7707: $09
    add hl, bc                                    ; $7708: $09
    ld bc, $0101                                  ; $7709: $01 $01 $01
    ld bc, $e1e0                                  ; $770c: $01 $e0 $e1
    db $10                                        ; $770f: $10
    dec sp                                        ; $7710: $3b
    inc a                                         ; $7711: $3c
    dec a                                         ; $7712: $3d
    ld a, $3f                                     ; $7713: $3e $3f
    ld b, b                                       ; $7715: $40
    ld b, c                                       ; $7716: $41
    ld b, d                                       ; $7717: $42
    ld b, e                                       ; $7718: $43
    dec de                                        ; $7719: $1b
    inc e                                         ; $771a: $1c
    dec e                                         ; $771b: $1d
    ld e, $2b                                     ; $771c: $1e $2b
    dec bc                                        ; $771e: $0b
    add hl, bc                                    ; $771f: $09
    ld bc, $0705                                  ; $7720: $01 $05 $07
    ld bc, $0101                                  ; $7723: $01 $01 $01
    ld bc, $0701                                  ; $7726: $01 $01 $07
    ld bc, $0101                                  ; $7729: $01 $01 $01
    ld bc, $2e2d                                  ; $772c: $01 $2d $2e
    ld e, h                                       ; $772f: $5c
    ld e, l                                       ; $7730: $5d
    ld e, [hl]                                    ; $7731: $5e
    ld e, a                                       ; $7732: $5f
    ld h, b                                       ; $7733: $60
    ld h, c                                       ; $7734: $61
    ld h, d                                       ; $7735: $62
    ld h, e                                       ; $7736: $63
    ld h, h                                       ; $7737: $64
    ld h, l                                       ; $7738: $65
    ld h, [hl]                                    ; $7739: $66
    ld h, a                                       ; $773a: $67
    ld l, b                                       ; $773b: $68
    ld l, c                                       ; $773c: $69
    ld bc, $0701                                  ; $773d: $01 $01 $07
    rlca                                          ; $7740: $07
    rlca                                          ; $7741: $07
    ld bc, $0101                                  ; $7742: $01 $01 $01
    ld bc, $0101                                  ; $7745: $01 $01 $01
    rlca                                          ; $7748: $07
    ld bc, $0701                                  ; $7749: $01 $01 $07
    ld bc, $201f                                  ; $774c: $01 $1f $20
    ld hl, $2322                                  ; $774f: $21 $22 $23
    inc h                                         ; $7752: $24
    dec h                                         ; $7753: $25
    ld h, $38                                     ; $7754: $26 $38
    add hl, sp                                    ; $7756: $39
    ld a, [hl-]                                   ; $7757: $3a
    dec sp                                        ; $7758: $3b
    inc a                                         ; $7759: $3c
    dec a                                         ; $775a: $3d
    ld a, $3f                                     ; $775b: $3e $3f
    ld bc, $0101                                  ; $775d: $01 $01 $01
    rlca                                          ; $7760: $07
    rlca                                          ; $7761: $07
    rlca                                          ; $7762: $07
    ld bc, $0101                                  ; $7763: $01 $01 $01
    ld bc, $0707                                  ; $7766: $01 $07 $07
    ld bc, $0701                                  ; $7769: $01 $01 $07
    rlca                                          ; $776c: $07
    dec l                                         ; $776d: $2d
    ld l, $5c                                     ; $776e: $2e $5c
    ld e, l                                       ; $7770: $5d
    ld e, [hl]                                    ; $7771: $5e
    ld e, a                                       ; $7772: $5f
    ld h, b                                       ; $7773: $60
    ld h, c                                       ; $7774: $61
    ld h, d                                       ; $7775: $62
    ld h, e                                       ; $7776: $63
    ld h, h                                       ; $7777: $64
    ld h, l                                       ; $7778: $65
    ld h, [hl]                                    ; $7779: $66
    ld h, a                                       ; $777a: $67
    ld l, b                                       ; $777b: $68
    ld l, c                                       ; $777c: $69
    rlca                                          ; $777d: $07
    ld bc, $0101                                  ; $777e: $01 $01 $01
    ld bc, $0707                                  ; $7781: $01 $07 $07
    ld bc, $0101                                  ; $7784: $01 $01 $01
    ld bc, $0101                                  ; $7787: $01 $01 $01
    ld bc, $0701                                  ; $778a: $01 $01 $07
    rra                                           ; $778d: $1f
    jr nz, jr_085_77b1                            ; $778e: $20 $21

    ld [hl+], a                                   ; $7790: $22
    inc hl                                        ; $7791: $23
    inc h                                         ; $7792: $24
    dec h                                         ; $7793: $25
    ld h, $38                                     ; $7794: $26 $38
    add hl, sp                                    ; $7796: $39
    ld a, [hl-]                                   ; $7797: $3a
    dec sp                                        ; $7798: $3b
    inc a                                         ; $7799: $3c
    dec a                                         ; $779a: $3d
    ld a, $3f                                     ; $779b: $3e $3f
    rlca                                          ; $779d: $07
    rlca                                          ; $779e: $07
    rlca                                          ; $779f: $07
    ld bc, $0707                                  ; $77a0: $01 $07 $07
    rlca                                          ; $77a3: $07
    ld bc, $0707                                  ; $77a4: $01 $07 $07
    ld bc, $0107                                  ; $77a7: $01 $07 $01
    ld bc, $0701                                  ; $77aa: $01 $01 $07
    dec l                                         ; $77ad: $2d
    ld l, $ee                                     ; $77ae: $2e $ee
    db $ed                                        ; $77b0: $ed

jr_085_77b1:
    ld e, [hl]                                    ; $77b1: $5e
    ld e, a                                       ; $77b2: $5f
    xor $ed                                       ; $77b3: $ee $ed
    ld h, d                                       ; $77b5: $62
    ld h, e                                       ; $77b6: $63
    xor $ed                                       ; $77b7: $ee $ed
    ld h, [hl]                                    ; $77b9: $66
    ld h, a                                       ; $77ba: $67
    xor $ed                                       ; $77bb: $ee $ed
    ld bc, $8005                                  ; $77bd: $01 $05 $80
    add b                                         ; $77c0: $80
    ld bc, $8005                                  ; $77c1: $01 $05 $80
    add b                                         ; $77c4: $80
    ld bc, $8005                                  ; $77c5: $01 $05 $80
    add b                                         ; $77c8: $80
    ld bc, $8005                                  ; $77c9: $01 $05 $80
    add b                                         ; $77cc: $80
    ld h, d                                       ; $77cd: $62
    ld h, e                                       ; $77ce: $63
    cp l                                          ; $77cf: $bd
    cp [hl]                                       ; $77d0: $be
    ld h, [hl]                                    ; $77d1: $66
    ld h, a                                       ; $77d2: $67
    cp a                                          ; $77d3: $bf
    ldh a, [$99]                                  ; $77d4: $f0 $99
    sbc d                                         ; $77d6: $9a
    ret nz                                        ; $77d7: $c0

    db $f4                                        ; $77d8: $f4
    add hl, hl                                    ; $77d9: $29
    ld a, [hl+]                                   ; $77da: $2a
    pop bc                                        ; $77db: $c1
    ld hl, sp+$07                                 ; $77dc: $f8 $07
    dec b                                         ; $77de: $05
    adc b                                         ; $77df: $88
    adc b                                         ; $77e0: $88
    ld bc, $0c05                                  ; $77e1: $01 $05 $0c
    inc b                                         ; $77e4: $04
    add hl, bc                                    ; $77e5: $09
    dec c                                         ; $77e6: $0d
    inc c                                         ; $77e7: $0c
    inc b                                         ; $77e8: $04
    rlca                                          ; $77e9: $07
    dec b                                         ; $77ea: $05
    inc c                                         ; $77eb: $0c
    inc b                                         ; $77ec: $04
    dec l                                         ; $77ed: $2d
    ld l, $18                                     ; $77ee: $2e $18
    db $fc                                        ; $77f0: $fc
    ld e, [hl]                                    ; $77f1: $5e
    ld e, a                                       ; $77f2: $5f
    add hl, de                                    ; $77f3: $19
    jr jr_085_7858                                ; $77f4: $18 $62

    ld h, e                                       ; $77f6: $63
    ld h, h                                       ; $77f7: $64
    ld h, l                                       ; $77f8: $65
    ld h, [hl]                                    ; $77f9: $66
    ld h, a                                       ; $77fa: $67
    ld l, b                                       ; $77fb: $68
    ld l, c                                       ; $77fc: $69
    ld bc, $0c05                                  ; $77fd: $01 $05 $0c
    inc b                                         ; $7800: $04
    ld bc, $0c05                                  ; $7801: $01 $05 $0c
    inc b                                         ; $7804: $04
    rlca                                          ; $7805: $07
    dec b                                         ; $7806: $05
    dec b                                         ; $7807: $05
    dec b                                         ; $7808: $05
    ld bc, $0101                                  ; $7809: $01 $01 $01
    dec b                                         ; $780c: $05
    ld b, b                                       ; $780d: $40
    ld b, c                                       ; $780e: $41
    ld b, d                                       ; $780f: $42
    ld b, e                                       ; $7810: $43
    dec de                                        ; $7811: $1b
    inc e                                         ; $7812: $1c
    dec e                                         ; $7813: $1d
    ld e, $1f                                     ; $7814: $1e $1f
    jr nz, jr_085_7839                            ; $7816: $20 $21

    ld [hl+], a                                   ; $7818: $22
    inc hl                                        ; $7819: $23
    inc h                                         ; $781a: $24
    dec h                                         ; $781b: $25
    ld h, $05                                     ; $781c: $26 $05
    rlca                                          ; $781e: $07
    ld bc, $0507                                  ; $781f: $01 $07 $05
    ld bc, $0101                                  ; $7822: $01 $01 $01
    dec b                                         ; $7825: $05
    rlca                                          ; $7826: $07
    ld bc, $0501                                  ; $7827: $01 $01 $05
    ld bc, $0107                                  ; $782a: $01 $07 $01
    sbc c                                         ; $782d: $99
    sbc d                                         ; $782e: $9a
    sbc e                                         ; $782f: $9b
    or c                                          ; $7830: $b1
    add hl, hl                                    ; $7831: $29
    ld a, [hl+]                                   ; $7832: $2a
    dec hl                                        ; $7833: $2b
    inc l                                         ; $7834: $2c
    dec l                                         ; $7835: $2d
    ld l, $5c                                     ; $7836: $2e $5c
    ld e, l                                       ; $7838: $5d

jr_085_7839:
    ld e, [hl]                                    ; $7839: $5e
    ld e, a                                       ; $783a: $5f
    ld h, b                                       ; $783b: $60
    ld h, c                                       ; $783c: $61
    rrca                                          ; $783d: $0f
    rrca                                          ; $783e: $0f
    add hl, bc                                    ; $783f: $09
    add hl, bc                                    ; $7840: $09
    rlca                                          ; $7841: $07
    rlca                                          ; $7842: $07
    rlca                                          ; $7843: $07
    ld bc, $0101                                  ; $7844: $01 $01 $01
    rlca                                          ; $7847: $07
    rlca                                          ; $7848: $07
    rlca                                          ; $7849: $07
    ld bc, $0101                                  ; $784a: $01 $01 $01
    ld b, b                                       ; $784d: $40
    ld b, c                                       ; $784e: $41
    ld b, d                                       ; $784f: $42
    ld b, e                                       ; $7850: $43
    dec de                                        ; $7851: $1b
    inc e                                         ; $7852: $1c
    dec e                                         ; $7853: $1d
    ld e, $1f                                     ; $7854: $1e $1f
    jr nz, jr_085_7879                            ; $7856: $20 $21

jr_085_7858:
    ld [hl+], a                                   ; $7858: $22
    inc hl                                        ; $7859: $23
    inc h                                         ; $785a: $24
    dec h                                         ; $785b: $25
    ld h, $07                                     ; $785c: $26 $07
    ld bc, $0101                                  ; $785e: $01 $01 $01
    ld bc, $0101                                  ; $7861: $01 $01 $01
    rlca                                          ; $7864: $07
    ld bc, $0107                                  ; $7865: $01 $07 $01
    ld bc, $0107                                  ; $7868: $01 $07 $01
    ld bc, $ed07                                  ; $786b: $01 $07 $ed
    db $ed                                        ; $786e: $ed
    db $ed                                        ; $786f: $ed
    cp l                                          ; $7870: $bd
    db $ed                                        ; $7871: $ed
    db $ed                                        ; $7872: $ed
    db $ed                                        ; $7873: $ed
    db $ed                                        ; $7874: $ed
    db $ed                                        ; $7875: $ed
    db $ed                                        ; $7876: $ed
    db $ed                                        ; $7877: $ed
    db $ed                                        ; $7878: $ed

jr_085_7879:
    db $ed                                        ; $7879: $ed
    db $ed                                        ; $787a: $ed
    db $ed                                        ; $787b: $ed
    db $ed                                        ; $787c: $ed
    add b                                         ; $787d: $80
    add b                                         ; $787e: $80
    add b                                         ; $787f: $80
    adc b                                         ; $7880: $88
    add b                                         ; $7881: $80
    add b                                         ; $7882: $80
    add b                                         ; $7883: $80
    add b                                         ; $7884: $80
    add b                                         ; $7885: $80
    add b                                         ; $7886: $80
    add b                                         ; $7887: $80
    add b                                         ; $7888: $80
    add b                                         ; $7889: $80
    add b                                         ; $788a: $80
    add b                                         ; $788b: $80
    add b                                         ; $788c: $80
    cp [hl]                                       ; $788d: $be
    cp [hl]                                       ; $788e: $be
    cp [hl]                                       ; $788f: $be
    cp [hl]                                       ; $7890: $be
    db $ed                                        ; $7891: $ed
    db $ed                                        ; $7892: $ed
    db $ed                                        ; $7893: $ed
    db $ed                                        ; $7894: $ed
    db $ed                                        ; $7895: $ed
    db $ed                                        ; $7896: $ed
    db $ed                                        ; $7897: $ed
    db $ed                                        ; $7898: $ed
    db $ed                                        ; $7899: $ed
    db $ed                                        ; $789a: $ed
    db $ed                                        ; $789b: $ed
    db $ed                                        ; $789c: $ed
    adc b                                         ; $789d: $88
    adc b                                         ; $789e: $88
    adc b                                         ; $789f: $88
    adc b                                         ; $78a0: $88
    add b                                         ; $78a1: $80
    add b                                         ; $78a2: $80
    add b                                         ; $78a3: $80
    add b                                         ; $78a4: $80
    add b                                         ; $78a5: $80
    add b                                         ; $78a6: $80
    add b                                         ; $78a7: $80
    add b                                         ; $78a8: $80
    add b                                         ; $78a9: $80
    add b                                         ; $78aa: $80
    add b                                         ; $78ab: $80
    add b                                         ; $78ac: $80
    sbc c                                         ; $78ad: $99
    sbc d                                         ; $78ae: $9a
    sbc e                                         ; $78af: $9b
    or c                                          ; $78b0: $b1
    add hl, hl                                    ; $78b1: $29
    ld a, [hl+]                                   ; $78b2: $2a
    dec hl                                        ; $78b3: $2b
    inc l                                         ; $78b4: $2c
    dec l                                         ; $78b5: $2d
    ld l, $5c                                     ; $78b6: $2e $5c
    ld e, l                                       ; $78b8: $5d
    ld e, [hl]                                    ; $78b9: $5e
    ld e, a                                       ; $78ba: $5f
    ld h, b                                       ; $78bb: $60
    ld h, c                                       ; $78bc: $61
    rrca                                          ; $78bd: $0f
    add hl, bc                                    ; $78be: $09
    add hl, bc                                    ; $78bf: $09
    add hl, bc                                    ; $78c0: $09
    ld bc, $0701                                  ; $78c1: $01 $01 $07
    ld bc, $0101                                  ; $78c4: $01 $01 $01
    rlca                                          ; $78c7: $07
    ld bc, $0101                                  ; $78c8: $01 $01 $01
    rlca                                          ; $78cb: $07
    rlca                                          ; $78cc: $07
    ld b, b                                       ; $78cd: $40
    ld b, c                                       ; $78ce: $41
    ld b, d                                       ; $78cf: $42
    ld b, e                                       ; $78d0: $43
    dec de                                        ; $78d1: $1b
    inc e                                         ; $78d2: $1c
    dec e                                         ; $78d3: $1d
    ld e, $1f                                     ; $78d4: $1e $1f
    jr nz, jr_085_78f9                            ; $78d6: $20 $21

    ld [hl+], a                                   ; $78d8: $22
    inc hl                                        ; $78d9: $23
    inc h                                         ; $78da: $24
    dec h                                         ; $78db: $25
    ld h, $01                                     ; $78dc: $26 $01
    ld bc, $0107                                  ; $78de: $01 $07 $01
    ld bc, $0101                                  ; $78e1: $01 $01 $01
    rlca                                          ; $78e4: $07
    ld bc, $0107                                  ; $78e5: $01 $07 $01
    ld bc, $0101                                  ; $78e8: $01 $01 $01
    ld bc, $9907                                  ; $78eb: $01 $07 $99
    sbc d                                         ; $78ee: $9a
    sbc e                                         ; $78ef: $9b
    or c                                          ; $78f0: $b1
    add hl, hl                                    ; $78f1: $29
    ld a, [hl+]                                   ; $78f2: $2a
    dec hl                                        ; $78f3: $2b
    inc l                                         ; $78f4: $2c
    dec l                                         ; $78f5: $2d
    ld l, $5c                                     ; $78f6: $2e $5c
    ld e, l                                       ; $78f8: $5d

jr_085_78f9:
    ld e, [hl]                                    ; $78f9: $5e
    ld e, a                                       ; $78fa: $5f
    ld h, b                                       ; $78fb: $60
    ld h, c                                       ; $78fc: $61
    add hl, bc                                    ; $78fd: $09
    add hl, bc                                    ; $78fe: $09
    add hl, bc                                    ; $78ff: $09
    rrca                                          ; $7900: $0f
    rlca                                          ; $7901: $07
    ld bc, $0101                                  ; $7902: $01 $01 $01
    rlca                                          ; $7905: $07
    rlca                                          ; $7906: $07
    rlca                                          ; $7907: $07
    ld bc, $0107                                  ; $7908: $01 $07 $01
    ld bc, $4007                                  ; $790b: $01 $07 $40
    ld b, c                                       ; $790e: $41
    ld b, d                                       ; $790f: $42
    ld b, e                                       ; $7910: $43
    dec de                                        ; $7911: $1b
    inc e                                         ; $7912: $1c
    dec e                                         ; $7913: $1d
    ld e, $1f                                     ; $7914: $1e $1f
    jr nz, jr_085_7939                            ; $7916: $20 $21

    ld [hl+], a                                   ; $7918: $22
    inc hl                                        ; $7919: $23
    inc h                                         ; $791a: $24
    dec h                                         ; $791b: $25
    ld h, $01                                     ; $791c: $26 $01
    ld bc, $0101                                  ; $791e: $01 $01 $01
    ld bc, $0101                                  ; $7921: $01 $01 $01
    rlca                                          ; $7924: $07
    rlca                                          ; $7925: $07
    ld bc, $0107                                  ; $7926: $01 $07 $01
    ld bc, $0101                                  ; $7929: $01 $01 $01
    ld bc, $9a99                                  ; $792c: $01 $99 $9a
    dec de                                        ; $792f: $1b
    cp [hl]                                       ; $7930: $be
    add hl, hl                                    ; $7931: $29
    ld a, [hl+]                                   ; $7932: $2a
    xor $ed                                       ; $7933: $ee $ed
    dec l                                         ; $7935: $2d
    ld l, $ee                                     ; $7936: $2e $ee
    db $ed                                        ; $7938: $ed

jr_085_7939:
    ld e, [hl]                                    ; $7939: $5e
    ld e, a                                       ; $793a: $5f
    xor $ed                                       ; $793b: $ee $ed
    rrca                                          ; $793d: $0f
    add hl, bc                                    ; $793e: $09
    adc b                                         ; $793f: $88
    adc b                                         ; $7940: $88
    ld bc, $8001                                  ; $7941: $01 $01 $80
    add b                                         ; $7944: $80
    ld bc, $8005                                  ; $7945: $01 $05 $80
    add b                                         ; $7948: $80
    ld bc, $8005                                  ; $7949: $01 $05 $80
    add b                                         ; $794c: $80
    cp [hl]                                       ; $794d: $be
    cp [hl]                                       ; $794e: $be
    inc e                                         ; $794f: $1c
    db $ed                                        ; $7950: $ed
    db $ed                                        ; $7951: $ed
    db $ed                                        ; $7952: $ed
    db $ed                                        ; $7953: $ed
    db $ed                                        ; $7954: $ed
    db $ed                                        ; $7955: $ed
    db $ed                                        ; $7956: $ed
    db $ed                                        ; $7957: $ed
    db $ed                                        ; $7958: $ed
    db $ed                                        ; $7959: $ed
    db $ed                                        ; $795a: $ed
    db $ed                                        ; $795b: $ed
    db $ed                                        ; $795c: $ed
    adc b                                         ; $795d: $88
    adc b                                         ; $795e: $88
    adc b                                         ; $795f: $88
    add b                                         ; $7960: $80
    add b                                         ; $7961: $80
    add b                                         ; $7962: $80
    add b                                         ; $7963: $80
    add b                                         ; $7964: $80
    add b                                         ; $7965: $80
    add b                                         ; $7966: $80
    add b                                         ; $7967: $80
    add b                                         ; $7968: $80
    add b                                         ; $7969: $80
    add b                                         ; $796a: $80
    add b                                         ; $796b: $80
    add b                                         ; $796c: $80
    add hl, bc                                    ; $796d: $09
    nop                                           ; $796e: $00
    rlca                                          ; $796f: $07
    nop                                           ; $7970: $00
    and b                                         ; $7971: $a0
    dec b                                         ; $7972: $05
    pop de                                        ; $7973: $d1
    pop de                                        ; $7974: $d1
    pop de                                        ; $7975: $d1
    jp nc, $d1d1                                  ; $7976: $d2 $d1 $d1

    pop de                                        ; $7979: $d1
    jp nc, $d1d1                                  ; $797a: $d2 $d1 $d1

    pop de                                        ; $797d: $d1
    jp nc, $d1d1                                  ; $797e: $d2 $d1 $d1

    pop de                                        ; $7981: $d1
    jp nc, $8080                                  ; $7982: $d2 $80 $80

    add b                                         ; $7985: $80
    add b                                         ; $7986: $80
    add b                                         ; $7987: $80
    add b                                         ; $7988: $80
    add b                                         ; $7989: $80
    add b                                         ; $798a: $80
    add b                                         ; $798b: $80
    add b                                         ; $798c: $80
    add b                                         ; $798d: $80
    add b                                         ; $798e: $80
    add b                                         ; $798f: $80
    add b                                         ; $7990: $80
    add b                                         ; $7991: $80
    add b                                         ; $7992: $80
    db $d3                                        ; $7993: $d3
    call nc, $d3d5                                ; $7994: $d4 $d5 $d3
    sub $d7                                       ; $7997: $d6 $d7
    ret c                                         ; $7999: $d8

    sub $d9                                       ; $799a: $d6 $d9
    jp c, $d9db                                   ; $799c: $da $db $d9

    call c, $dedd                                 ; $799f: $dc $dd $de
    rst $18                                       ; $79a2: $df
    ld bc, $0101                                  ; $79a3: $01 $01 $01
    ld bc, $0101                                  ; $79a6: $01 $01 $01
    ld bc, $0101                                  ; $79a9: $01 $01 $01
    ld bc, $0101                                  ; $79ac: $01 $01 $01
    ld [bc], a                                    ; $79af: $02
    ld [bc], a                                    ; $79b0: $02
    ld [bc], a                                    ; $79b1: $02
    ld [bc], a                                    ; $79b2: $02
    call nc, $d3d5                                ; $79b3: $d4 $d5 $d3
    call nc, $d8d7                                ; $79b6: $d4 $d7 $d8
    sub $d7                                       ; $79b9: $d6 $d7
    jp c, $d9db                                   ; $79bb: $da $db $d9

    jp c, $e1e0                                   ; $79be: $da $e0 $e1

    ld [c], a                                     ; $79c1: $e2
    db $e3                                        ; $79c2: $e3
    ld bc, $0101                                  ; $79c3: $01 $01 $01
    ld bc, $0101                                  ; $79c6: $01 $01 $01
    ld bc, $0101                                  ; $79c9: $01 $01 $01
    ld bc, $0101                                  ; $79cc: $01 $01 $01
    ld [bc], a                                    ; $79cf: $02
    ld [bc], a                                    ; $79d0: $02
    ld [bc], a                                    ; $79d1: $02
    ld [bc], a                                    ; $79d2: $02
    push de                                       ; $79d3: $d5
    db $d3                                        ; $79d4: $d3
    call nc, $d8d5                                ; $79d5: $d4 $d5 $d8
    sub $d7                                       ; $79d8: $d6 $d7
    ret c                                         ; $79da: $d8

    db $db                                        ; $79db: $db
    reti                                          ; $79dc: $d9


    jp c, $e4db                                   ; $79dd: $da $db $e4

    push hl                                       ; $79e0: $e5
    and $e7                                       ; $79e1: $e6 $e7
    ld bc, $0101                                  ; $79e3: $01 $01 $01
    ld bc, $0101                                  ; $79e6: $01 $01 $01
    ld bc, $0101                                  ; $79e9: $01 $01 $01
    ld bc, $0101                                  ; $79ec: $01 $01 $01
    ld [bc], a                                    ; $79ef: $02
    ld [bc], a                                    ; $79f0: $02
    ld [bc], a                                    ; $79f1: $02
    ld [bc], a                                    ; $79f2: $02
    add sp, -$17                                  ; $79f3: $e8 $e9
    ld [$eceb], a                                 ; $79f5: $ea $eb $ec
    db $ed                                        ; $79f8: $ed
    xor $ef                                       ; $79f9: $ee $ef
    ldh a, [$f1]                                  ; $79fb: $f0 $f1
    ldh a, [$f1]                                  ; $79fd: $f0 $f1
    ld a, [c]                                     ; $79ff: $f2
    di                                            ; $7a00: $f3
    db $f4                                        ; $7a01: $f4
    push af                                       ; $7a02: $f5
    ld [bc], a                                    ; $7a03: $02
    ld [bc], a                                    ; $7a04: $02
    ld [bc], a                                    ; $7a05: $02
    ld [bc], a                                    ; $7a06: $02
    ld [bc], a                                    ; $7a07: $02
    inc bc                                        ; $7a08: $03
    inc bc                                        ; $7a09: $03
    ld [bc], a                                    ; $7a0a: $02
    inc b                                         ; $7a0b: $04
    inc b                                         ; $7a0c: $04
    inc b                                         ; $7a0d: $04
    inc b                                         ; $7a0e: $04
    ld b, $06                                     ; $7a0f: $06 $06
    ld b, $06                                     ; $7a11: $06 $06
    or $f7                                        ; $7a13: $f6 $f7
    ld hl, sp-$07                                 ; $7a15: $f8 $f9
    ld a, [$fcfb]                                 ; $7a17: $fa $fb $fc
    db $fd                                        ; $7a1a: $fd
    ldh a, [$f1]                                  ; $7a1b: $f0 $f1
    ldh a, [$f1]                                  ; $7a1d: $f0 $f1
    cp $ff                                        ; $7a1f: $fe $ff
    nop                                           ; $7a21: $00
    ld bc, $0202                                  ; $7a22: $01 $02 $02
    ld [bc], a                                    ; $7a25: $02
    ld [bc], a                                    ; $7a26: $02
    inc bc                                        ; $7a27: $03
    ld [bc], a                                    ; $7a28: $02
    inc bc                                        ; $7a29: $03
    ld [bc], a                                    ; $7a2a: $02
    inc b                                         ; $7a2b: $04
    inc b                                         ; $7a2c: $04
    inc b                                         ; $7a2d: $04
    inc b                                         ; $7a2e: $04
    ld b, $06                                     ; $7a2f: $06 $06
    ld b, $06                                     ; $7a31: $06 $06
    ld [bc], a                                    ; $7a33: $02
    inc bc                                        ; $7a34: $03
    inc b                                         ; $7a35: $04
    dec b                                         ; $7a36: $05
    rst $28                                       ; $7a37: $ef
    ld a, [$0706]                                 ; $7a38: $fa $06 $07
    ldh a, [$f1]                                  ; $7a3b: $f0 $f1
    ldh a, [$f1]                                  ; $7a3d: $f0 $f1
    ld a, [c]                                     ; $7a3f: $f2
    di                                            ; $7a40: $f3
    db $f4                                        ; $7a41: $f4
    push af                                       ; $7a42: $f5
    ld [bc], a                                    ; $7a43: $02
    ld [bc], a                                    ; $7a44: $02
    ld [bc], a                                    ; $7a45: $02
    ld [bc], a                                    ; $7a46: $02
    ld [bc], a                                    ; $7a47: $02
    inc bc                                        ; $7a48: $03
    ld [bc], a                                    ; $7a49: $02
    inc bc                                        ; $7a4a: $03
    inc b                                         ; $7a4b: $04
    inc b                                         ; $7a4c: $04
    inc b                                         ; $7a4d: $04
    inc b                                         ; $7a4e: $04
    ld b, $06                                     ; $7a4f: $06 $06
    ld b, $06                                     ; $7a51: $06 $06
    ld [$0a09], sp                                ; $7a53: $08 $09 $0a
    dec bc                                        ; $7a56: $0b
    inc c                                         ; $7a57: $0c
    dec c                                         ; $7a58: $0d
    ld c, $0f                                     ; $7a59: $0e $0f
    db $10                                        ; $7a5b: $10
    ld de, $1312                                  ; $7a5c: $11 $12 $13
    inc d                                         ; $7a5f: $14
    dec d                                         ; $7a60: $15
    ld d, $17                                     ; $7a61: $16 $17
    ld b, $06                                     ; $7a63: $06 $06
    ld b, $07                                     ; $7a65: $06 $07
    ld b, $06                                     ; $7a67: $06 $06
    ld b, $06                                     ; $7a69: $06 $06
    ld b, $07                                     ; $7a6b: $06 $07
    and l                                         ; $7a6d: $a5
    ld b, $06                                     ; $7a6e: $06 $06
    ld b, $05                                     ; $7a70: $06 $05
    dec b                                         ; $7a72: $05
    jr jr_085_7a8e                                ; $7a73: $18 $19

    ld a, [de]                                    ; $7a75: $1a
    ld de, $1c1b                                  ; $7a76: $11 $1b $1c
    dec e                                         ; $7a79: $1d
    ld e, $1f                                     ; $7a7a: $1e $1f
    jr nz, jr_085_7a9f                            ; $7a7c: $20 $21

    ld [hl+], a                                   ; $7a7e: $22
    inc hl                                        ; $7a7f: $23
    inc h                                         ; $7a80: $24
    dec h                                         ; $7a81: $25
    ld h, $06                                     ; $7a82: $26 $06
    ld b, $07                                     ; $7a84: $06 $07
    ld b, $07                                     ; $7a86: $06 $07
    add h                                         ; $7a88: $84
    add h                                         ; $7a89: $84
    add h                                         ; $7a8a: $84
    ld b, $84                                     ; $7a8b: $06 $84
    add h                                         ; $7a8d: $84

jr_085_7a8e:
    add h                                         ; $7a8e: $84
    ld b, $04                                     ; $7a8f: $06 $04
    inc b                                         ; $7a91: $04
    inc b                                         ; $7a92: $04
    daa                                           ; $7a93: $27
    add hl, bc                                    ; $7a94: $09
    ld a, [bc]                                    ; $7a95: $0a
    dec bc                                        ; $7a96: $0b
    jr z, @+$0f                                   ; $7a97: $28 $0d

    add hl, hl                                    ; $7a99: $29
    rrca                                          ; $7a9a: $0f
    db $10                                        ; $7a9b: $10
    ld de, $2b2a                                  ; $7a9c: $11 $2a $2b

jr_085_7a9f:
    inc d                                         ; $7a9f: $14
    dec d                                         ; $7aa0: $15
    inc l                                         ; $7aa1: $2c
    dec l                                         ; $7aa2: $2d
    ld b, $07                                     ; $7aa3: $06 $07
    ld b, $06                                     ; $7aa5: $06 $06
    ld b, $06                                     ; $7aa7: $06 $06
    rlca                                          ; $7aa9: $07
    ld b, $06                                     ; $7aaa: $06 $06
    ld b, $06                                     ; $7aac: $06 $06
    rlca                                          ; $7aae: $07
    ld b, $06                                     ; $7aaf: $06 $06
    rlca                                          ; $7ab1: $07
    ld b, $2e                                     ; $7ab2: $06 $2e
    add hl, de                                    ; $7ab4: $19
    cpl                                           ; $7ab5: $2f
    jr nc, jr_085_7ae9                            ; $7ab6: $30 $31

    rrca                                          ; $7ab8: $0f
    ld [hl-], a                                   ; $7ab9: $32
    inc sp                                        ; $7aba: $33
    inc [hl]                                      ; $7abb: $34
    dec [hl]                                      ; $7abc: $35
    ld [hl], $37                                  ; $7abd: $36 $37
    ld a, [c]                                     ; $7abf: $f2
    jr c, jr_085_7afb                             ; $7ac0: $38 $39

    ld a, [hl-]                                   ; $7ac2: $3a
    ld b, $07                                     ; $7ac3: $06 $07
    dec b                                         ; $7ac5: $05
    dec b                                         ; $7ac6: $05
    ld b, $06                                     ; $7ac7: $06 $06
    dec b                                         ; $7ac9: $05
    dec b                                         ; $7aca: $05
    ld b, $06                                     ; $7acb: $06 $06
    ld b, $06                                     ; $7acd: $06 $06
    ld b, $07                                     ; $7acf: $06 $07
    ld b, $07                                     ; $7ad1: $06 $07
    daa                                           ; $7ad3: $27
    dec sp                                        ; $7ad4: $3b
    inc a                                         ; $7ad5: $3c
    dec a                                         ; $7ad6: $3d
    ld a, $3f                                     ; $7ad7: $3e $3f
    ld b, b                                       ; $7ad9: $40
    ld b, c                                       ; $7ada: $41
    ld b, d                                       ; $7adb: $42
    ld b, e                                       ; $7adc: $43
    ld b, h                                       ; $7add: $44
    ld b, l                                       ; $7ade: $45
    ld b, [hl]                                    ; $7adf: $46
    rst $38                                       ; $7ae0: $ff
    nop                                           ; $7ae1: $00
    ld bc, $0406                                  ; $7ae2: $01 $06 $04
    inc b                                         ; $7ae5: $04
    inc b                                         ; $7ae6: $04
    ld b, $04                                     ; $7ae7: $06 $04

jr_085_7ae9:
    inc b                                         ; $7ae9: $04
    inc b                                         ; $7aea: $04
    ld b, $04                                     ; $7aeb: $06 $04
    inc h                                         ; $7aed: $24
    inc b                                         ; $7aee: $04
    ld b, $06                                     ; $7aef: $06 $06
    ld b, $06                                     ; $7af1: $06 $06
    ld l, $19                                     ; $7af3: $2e $19
    ld a, [de]                                    ; $7af5: $1a
    ld b, a                                       ; $7af6: $47
    ld sp, $480f                                  ; $7af7: $31 $0f $48
    ld c, c                                       ; $7afa: $49

jr_085_7afb:
    inc [hl]                                      ; $7afb: $34
    dec [hl]                                      ; $7afc: $35
    ld c, d                                       ; $7afd: $4a
    ld c, e                                       ; $7afe: $4b
    ld a, [c]                                     ; $7aff: $f2
    jr c, jr_085_7b3b                             ; $7b00: $38 $39

    ld c, h                                       ; $7b02: $4c
    ld b, $07                                     ; $7b03: $06 $07
    ld b, $06                                     ; $7b05: $06 $06
    ld b, $06                                     ; $7b07: $06 $06
    ld b, $05                                     ; $7b09: $06 $05
    ld b, $06                                     ; $7b0b: $06 $06
    ld b, $05                                     ; $7b0d: $06 $05
    ld b, $06                                     ; $7b0f: $06 $06
    ld b, $05                                     ; $7b11: $06 $05
    db $d3                                        ; $7b13: $d3
    call nc, $d3d5                                ; $7b14: $d4 $d5 $d3
    sub $d7                                       ; $7b17: $d6 $d7
    ret c                                         ; $7b19: $d8

    sub $d9                                       ; $7b1a: $d6 $d9
    jp c, $d9db                                   ; $7b1c: $da $db $d9

    ld c, l                                       ; $7b1f: $4d
    ld c, [hl]                                    ; $7b20: $4e
    db $dd                                        ; $7b21: $dd
    ld c, a                                       ; $7b22: $4f
    ld bc, $0101                                  ; $7b23: $01 $01 $01
    ld bc, $0101                                  ; $7b26: $01 $01 $01
    ld bc, $0101                                  ; $7b29: $01 $01 $01
    ld bc, $0101                                  ; $7b2c: $01 $01 $01
    ld [bc], a                                    ; $7b2f: $02
    ld [bc], a                                    ; $7b30: $02
    ld [hl+], a                                   ; $7b31: $22
    ld [bc], a                                    ; $7b32: $02
    call nc, $d3d5                                ; $7b33: $d4 $d5 $d3
    call nc, $d8d7                                ; $7b36: $d4 $d7 $d8
    sub $d7                                       ; $7b39: $d6 $d7

jr_085_7b3b:
    jp c, $d9db                                   ; $7b3b: $da $db $d9

    jp c, Jump_085_5150                           ; $7b3e: $da $50 $51

    ld d, d                                       ; $7b41: $52
    ld d, e                                       ; $7b42: $53
    ld bc, $0101                                  ; $7b43: $01 $01 $01
    ld bc, $0101                                  ; $7b46: $01 $01 $01
    ld bc, $0101                                  ; $7b49: $01 $01 $01
    ld bc, $0101                                  ; $7b4c: $01 $01 $01
    ld [bc], a                                    ; $7b4f: $02
    ld [bc], a                                    ; $7b50: $02
    ld [bc], a                                    ; $7b51: $02
    ld [bc], a                                    ; $7b52: $02
    push de                                       ; $7b53: $d5
    db $d3                                        ; $7b54: $d3
    call nc, $d8d5                                ; $7b55: $d4 $d5 $d8
    sub $d7                                       ; $7b58: $d6 $d7
    ret c                                         ; $7b5a: $d8

    db $db                                        ; $7b5b: $db
    reti                                          ; $7b5c: $d9


    jp c, Jump_085_54db                           ; $7b5d: $da $db $54

    ld d, l                                       ; $7b60: $55
    ld d, [hl]                                    ; $7b61: $56
    ld d, a                                       ; $7b62: $57
    ld bc, $0101                                  ; $7b63: $01 $01 $01
    ld bc, $0101                                  ; $7b66: $01 $01 $01
    ld bc, $0101                                  ; $7b69: $01 $01 $01
    ld bc, $0101                                  ; $7b6c: $01 $01 $01
    ld [bc], a                                    ; $7b6f: $02
    ld [bc], a                                    ; $7b70: $02
    ld [bc], a                                    ; $7b71: $02
    ld [bc], a                                    ; $7b72: $02
    db $d3                                        ; $7b73: $d3
    call nc, $d3d5                                ; $7b74: $d4 $d5 $d3
    sub $d7                                       ; $7b77: $d6 $d7
    ret c                                         ; $7b79: $d8

    sub $d9                                       ; $7b7a: $d6 $d9
    jp c, $d9db                                   ; $7b7c: $da $db $d9

    ld e, b                                       ; $7b7f: $58
    ld e, c                                       ; $7b80: $59
    ld e, d                                       ; $7b81: $5a
    ld c, l                                       ; $7b82: $4d
    ld bc, $0101                                  ; $7b83: $01 $01 $01
    ld bc, $0101                                  ; $7b86: $01 $01 $01
    ld bc, $0101                                  ; $7b89: $01 $01 $01
    ld bc, $0101                                  ; $7b8c: $01 $01 $01
    ld [bc], a                                    ; $7b8f: $02
    ld [bc], a                                    ; $7b90: $02
    ld [bc], a                                    ; $7b91: $02
    ld [bc], a                                    ; $7b92: $02
    ld e, e                                       ; $7b93: $5b
    ld e, h                                       ; $7b94: $5c
    ld e, l                                       ; $7b95: $5d
    ld e, [hl]                                    ; $7b96: $5e
    ld e, a                                       ; $7b97: $5f
    rst $28                                       ; $7b98: $ef
    ld h, b                                       ; $7b99: $60
    ld h, c                                       ; $7b9a: $61
    ldh a, [$f1]                                  ; $7b9b: $f0 $f1
    ldh a, [$f1]                                  ; $7b9d: $f0 $f1
    cp $ff                                        ; $7b9f: $fe $ff
    nop                                           ; $7ba1: $00
    ld bc, $0202                                  ; $7ba2: $01 $02 $02
    ld [bc], a                                    ; $7ba5: $02
    ld [bc], a                                    ; $7ba6: $02
    ld [bc], a                                    ; $7ba7: $02
    ld [bc], a                                    ; $7ba8: $02
    ld [bc], a                                    ; $7ba9: $02
    inc bc                                        ; $7baa: $03
    inc b                                         ; $7bab: $04
    inc b                                         ; $7bac: $04
    inc b                                         ; $7bad: $04
    inc b                                         ; $7bae: $04
    ld b, $06                                     ; $7baf: $06 $06
    ld b, $06                                     ; $7bb1: $06 $06
    db $eb                                        ; $7bb3: $eb
    or $62                                        ; $7bb4: $f6 $62
    ld hl, sp-$11                                 ; $7bb6: $f8 $ef
    db $ed                                        ; $7bb8: $ed
    xor $ef                                       ; $7bb9: $ee $ef
    ldh a, [$f1]                                  ; $7bbb: $f0 $f1
    ldh a, [$f1]                                  ; $7bbd: $f0 $f1
    ld a, [c]                                     ; $7bbf: $f2
    di                                            ; $7bc0: $f3
    db $f4                                        ; $7bc1: $f4
    push af                                       ; $7bc2: $f5
    ld [bc], a                                    ; $7bc3: $02
    ld [bc], a                                    ; $7bc4: $02
    ld [bc], a                                    ; $7bc5: $02
    ld [bc], a                                    ; $7bc6: $02
    ld [bc], a                                    ; $7bc7: $02
    inc bc                                        ; $7bc8: $03
    inc bc                                        ; $7bc9: $03
    ld [bc], a                                    ; $7bca: $02
    inc b                                         ; $7bcb: $04
    inc b                                         ; $7bcc: $04
    inc b                                         ; $7bcd: $04
    inc b                                         ; $7bce: $04
    ld b, $06                                     ; $7bcf: $06 $06
    ld b, $06                                     ; $7bd1: $06 $06
    ld sp, hl                                     ; $7bd3: $f9
    ld [bc], a                                    ; $7bd4: $02
    ld h, e                                       ; $7bd5: $63
    ld h, h                                       ; $7bd6: $64
    ld h, b                                       ; $7bd7: $60
    ld a, [$fd60]                                 ; $7bd8: $fa $60 $fd
    ldh a, [$f1]                                  ; $7bdb: $f0 $f1
    ldh a, [$f1]                                  ; $7bdd: $f0 $f1
    cp $ff                                        ; $7bdf: $fe $ff
    nop                                           ; $7be1: $00
    ld bc, $0202                                  ; $7be2: $01 $02 $02
    ld [bc], a                                    ; $7be5: $02
    ld [bc], a                                    ; $7be6: $02
    ld [bc], a                                    ; $7be7: $02
    inc bc                                        ; $7be8: $03
    ld [bc], a                                    ; $7be9: $02
    ld [bc], a                                    ; $7bea: $02
    inc b                                         ; $7beb: $04
    inc b                                         ; $7bec: $04
    inc b                                         ; $7bed: $04
    inc b                                         ; $7bee: $04
    ld b, $06                                     ; $7bef: $06 $06
    ld b, $06                                     ; $7bf1: $06 $06
    ld h, l                                       ; $7bf3: $65
    ld h, [hl]                                    ; $7bf4: $66
    ld h, a                                       ; $7bf5: $67
    ld e, e                                       ; $7bf6: $5b
    ld h, c                                       ; $7bf7: $61
    ld e, a                                       ; $7bf8: $5f
    db $ed                                        ; $7bf9: $ed
    xor $f0                                       ; $7bfa: $ee $f0
    pop af                                        ; $7bfc: $f1
    ldh a, [$f1]                                  ; $7bfd: $f0 $f1
    ld a, [c]                                     ; $7bff: $f2
    di                                            ; $7c00: $f3
    db $f4                                        ; $7c01: $f4
    push af                                       ; $7c02: $f5
    ld [bc], a                                    ; $7c03: $02
    ld [bc], a                                    ; $7c04: $02
    ld [bc], a                                    ; $7c05: $02
    ld [bc], a                                    ; $7c06: $02
    inc bc                                        ; $7c07: $03
    ld [bc], a                                    ; $7c08: $02
    inc bc                                        ; $7c09: $03
    inc bc                                        ; $7c0a: $03
    inc b                                         ; $7c0b: $04
    inc b                                         ; $7c0c: $04
    inc b                                         ; $7c0d: $04
    inc b                                         ; $7c0e: $04
    ld b, $06                                     ; $7c0f: $06 $06
    ld b, $06                                     ; $7c11: $06 $06
    jr jr_085_7c7d                                ; $7c13: $18 $68

    ld [de], a                                    ; $7c15: $12
    ld de, $4969                                  ; $7c16: $11 $69 $49
    ld l, d                                       ; $7c19: $6a
    ld l, e                                       ; $7c1a: $6b
    rra                                           ; $7c1b: $1f
    ld c, e                                       ; $7c1c: $4b
    ld l, h                                       ; $7c1d: $6c
    add hl, bc                                    ; $7c1e: $09
    inc hl                                        ; $7c1f: $23
    ld c, h                                       ; $7c20: $4c
    ld l, l                                       ; $7c21: $6d
    push af                                       ; $7c22: $f5
    rlca                                          ; $7c23: $07
    ld b, $85                                     ; $7c24: $06 $85
    ld b, $06                                     ; $7c26: $06 $06
    dec b                                         ; $7c28: $05
    dec b                                         ; $7c29: $05
    rlca                                          ; $7c2a: $07
    ld b, $05                                     ; $7c2b: $06 $05
    dec b                                         ; $7c2d: $05
    ld b, $06                                     ; $7c2e: $06 $06
    dec b                                         ; $7c30: $05
    dec b                                         ; $7c31: $05
    ld b, $27                                     ; $7c32: $06 $27
    add hl, bc                                    ; $7c34: $09
    ld a, [bc]                                    ; $7c35: $0a
    dec bc                                        ; $7c36: $0b
    jr z, @+$0f                                   ; $7c37: $28 $0d

    add hl, hl                                    ; $7c39: $29
    rrca                                          ; $7c3a: $0f
    ld l, [hl]                                    ; $7c3b: $6e
    ld de, $2b2a                                  ; $7c3c: $11 $2a $2b
    ld l, a                                       ; $7c3f: $6f
    dec d                                         ; $7c40: $15
    inc l                                         ; $7c41: $2c
    dec l                                         ; $7c42: $2d
    rlca                                          ; $7c43: $07
    rlca                                          ; $7c44: $07
    ld b, $06                                     ; $7c45: $06 $06
    rlca                                          ; $7c47: $07
    rlca                                          ; $7c48: $07
    ld b, $06                                     ; $7c49: $06 $06
    ld b, $06                                     ; $7c4b: $06 $06
    rlca                                          ; $7c4d: $07
    ld b, $06                                     ; $7c4e: $06 $06
    ld b, $06                                     ; $7c50: $06 $06
    ld b, $18                                     ; $7c52: $06 $18
    add hl, de                                    ; $7c54: $19
    ld a, [de]                                    ; $7c55: $1a
    ld de, $701b                                  ; $7c56: $11 $1b $70
    ld [hl], c                                    ; $7c59: $71
    ld [hl], d                                    ; $7c5a: $72
    rra                                           ; $7c5b: $1f
    ld [hl], e                                    ; $7c5c: $73
    ld [hl], h                                    ; $7c5d: $74
    ld [hl], l                                    ; $7c5e: $75
    inc hl                                        ; $7c5f: $23
    halt                                          ; $7c60: $76
    ld [hl], a                                    ; $7c61: $77
    ld a, b                                       ; $7c62: $78
    ld b, $06                                     ; $7c63: $06 $06
    ld b, $06                                     ; $7c65: $06 $06
    ld b, $84                                     ; $7c67: $06 $84
    add h                                         ; $7c69: $84
    add h                                         ; $7c6a: $84
    ld b, $04                                     ; $7c6b: $06 $04
    inc b                                         ; $7c6d: $04
    inc b                                         ; $7c6e: $04
    ld b, $04                                     ; $7c6f: $06 $04
    inc b                                         ; $7c71: $04
    inc b                                         ; $7c72: $04
    daa                                           ; $7c73: $27
    add hl, bc                                    ; $7c74: $09
    ld a, [bc]                                    ; $7c75: $0a
    ld a, c                                       ; $7c76: $79
    ld a, d                                       ; $7c77: $7a
    ld a, e                                       ; $7c78: $7b
    ld a, h                                       ; $7c79: $7c
    ld a, l                                       ; $7c7a: $7d
    ld a, [hl]                                    ; $7c7b: $7e
    ld a, a                                       ; $7c7c: $7f

jr_085_7c7d:
    add b                                         ; $7c7d: $80
    add c                                         ; $7c7e: $81
    add d                                         ; $7c7f: $82
    add e                                         ; $7c80: $83
    add h                                         ; $7c81: $84
    add l                                         ; $7c82: $85
    ld b, $06                                     ; $7c83: $06 $06
    ld b, $06                                     ; $7c85: $06 $06
    add h                                         ; $7c87: $84
    add h                                         ; $7c88: $84
    add h                                         ; $7c89: $84
    add h                                         ; $7c8a: $84
    inc b                                         ; $7c8b: $04
    inc b                                         ; $7c8c: $04
    inc c                                         ; $7c8d: $0c
    inc c                                         ; $7c8e: $0c
    inc c                                         ; $7c8f: $0c
    inc c                                         ; $7c90: $0c
    inc c                                         ; $7c91: $0c
    inc c                                         ; $7c92: $0c
    ld [de], a                                    ; $7c93: $12
    add [hl]                                      ; $7c94: $86
    add a                                         ; $7c95: $87
    ld a, c                                       ; $7c96: $79
    ld l, d                                       ; $7c97: $6a
    dec c                                         ; $7c98: $0d
    add hl, hl                                    ; $7c99: $29
    rrca                                          ; $7c9a: $0f
    ld l, h                                       ; $7c9b: $6c
    ld de, $882a                                  ; $7c9c: $11 $2a $88
    ld l, l                                       ; $7c9f: $6d
    rst $38                                       ; $7ca0: $ff
    inc l                                         ; $7ca1: $2c
    dec l                                         ; $7ca2: $2d
    add l                                         ; $7ca3: $85
    ld c, $0e                                     ; $7ca4: $0e $0e
    ld b, $05                                     ; $7ca6: $06 $05
    ld b, $06                                     ; $7ca8: $06 $06
    ld b, $05                                     ; $7caa: $06 $05
    ld b, $07                                     ; $7cac: $06 $07
    ld c, $05                                     ; $7cae: $0e $05
    ld b, $06                                     ; $7cb0: $06 $06
    rlca                                          ; $7cb2: $07
    adc c                                         ; $7cb3: $89
    add hl, de                                    ; $7cb4: $19
    ld a, [de]                                    ; $7cb5: $1a
    adc d                                         ; $7cb6: $8a
    adc e                                         ; $7cb7: $8b
    rrca                                          ; $7cb8: $0f
    adc h                                         ; $7cb9: $8c
    ld l, e                                       ; $7cba: $6b
    adc l                                         ; $7cbb: $8d
    dec [hl]                                      ; $7cbc: $35
    ld c, d                                       ; $7cbd: $4a
    add hl, bc                                    ; $7cbe: $09
    inc hl                                        ; $7cbf: $23
    jr c, jr_085_7cfb                             ; $7cc0: $38 $39

    ld a, [hl-]                                   ; $7cc2: $3a
    ld c, $07                                     ; $7cc3: $0e $07
    ld b, $0e                                     ; $7cc5: $06 $0e
    ld c, $07                                     ; $7cc7: $0e $07
    ld c, $06                                     ; $7cc9: $0e $06
    ld c, $07                                     ; $7ccb: $0e $07
    rlca                                          ; $7ccd: $07
    rlca                                          ; $7cce: $07
    ld b, $06                                     ; $7ccf: $06 $06
    rlca                                          ; $7cd1: $07
    rlca                                          ; $7cd2: $07
    daa                                           ; $7cd3: $27
    adc [hl]                                      ; $7cd4: $8e
    ld b, h                                       ; $7cd5: $44
    adc a                                         ; $7cd6: $8f
    sub b                                         ; $7cd7: $90
    sub c                                         ; $7cd8: $91
    sub d                                         ; $7cd9: $92
    sub e                                         ; $7cda: $93
    sub h                                         ; $7cdb: $94
    ld de, $882a                                  ; $7cdc: $11 $2a $88
    ld b, [hl]                                    ; $7cdf: $46
    dec d                                         ; $7ce0: $15
    inc l                                         ; $7ce1: $2c
    dec l                                         ; $7ce2: $2d
    ld b, $0c                                     ; $7ce3: $06 $0c
    inc b                                         ; $7ce5: $04
    inc c                                         ; $7ce6: $0c
    ld c, $0e                                     ; $7ce7: $0e $0e
    ld c, $0e                                     ; $7ce9: $0e $0e
    rrca                                          ; $7ceb: $0f
    rlca                                          ; $7cec: $07
    rlca                                          ; $7ced: $07
    ld c, $06                                     ; $7cee: $0e $06
    ld b, $06                                     ; $7cf0: $06 $06
    rlca                                          ; $7cf2: $07
    sub l                                         ; $7cf3: $95
    sub [hl]                                      ; $7cf4: $96
    sub a                                         ; $7cf5: $97
    sbc b                                         ; $7cf6: $98
    ld sp, $9993                                  ; $7cf7: $31 $93 $99
    sbc d                                         ; $7cfa: $9a

jr_085_7cfb:
    adc l                                         ; $7cfb: $8d
    dec [hl]                                      ; $7cfc: $35
    ld c, d                                       ; $7cfd: $4a
    sbc e                                         ; $7cfe: $9b
    inc hl                                        ; $7cff: $23
    jr c, jr_085_7d3b                             ; $7d00: $38 $39

    push af                                       ; $7d02: $f5
    inc c                                         ; $7d03: $0c
    inc c                                         ; $7d04: $0c
    inc c                                         ; $7d05: $0c
    inc c                                         ; $7d06: $0c
    ld b, $0e                                     ; $7d07: $06 $0e
    ld c, $0e                                     ; $7d09: $0e $0e
    ld c, $07                                     ; $7d0b: $0e $07
    rlca                                          ; $7d0d: $07
    ld c, $06                                     ; $7d0e: $0e $06
    rlca                                          ; $7d10: $07
    ld b, $06                                     ; $7d11: $06 $06
    jp nc, $d1d1                                  ; $7d13: $d2 $d1 $d1

    pop de                                        ; $7d16: $d1
    jp nc, $d1d1                                  ; $7d17: $d2 $d1 $d1

    pop de                                        ; $7d1a: $d1
    jp nc, $d1d1                                  ; $7d1b: $d2 $d1 $d1

    pop de                                        ; $7d1e: $d1
    jp nc, $d1d1                                  ; $7d1f: $d2 $d1 $d1

    pop de                                        ; $7d22: $d1
    add b                                         ; $7d23: $80
    add b                                         ; $7d24: $80
    add b                                         ; $7d25: $80
    add b                                         ; $7d26: $80
    add b                                         ; $7d27: $80
    add b                                         ; $7d28: $80
    add b                                         ; $7d29: $80
    add b                                         ; $7d2a: $80
    add b                                         ; $7d2b: $80
    add b                                         ; $7d2c: $80
    add b                                         ; $7d2d: $80
    add b                                         ; $7d2e: $80
    add b                                         ; $7d2f: $80
    add b                                         ; $7d30: $80
    add b                                         ; $7d31: $80
    add b                                         ; $7d32: $80
    pop de                                        ; $7d33: $d1
    pop de                                        ; $7d34: $d1
    pop de                                        ; $7d35: $d1
    jp nc, $d1d1                                  ; $7d36: $d2 $d1 $d1

    pop de                                        ; $7d39: $d1
    sbc h                                         ; $7d3a: $9c

jr_085_7d3b:
    pop de                                        ; $7d3b: $d1
    pop de                                        ; $7d3c: $d1
    pop de                                        ; $7d3d: $d1
    pop de                                        ; $7d3e: $d1
    pop de                                        ; $7d3f: $d1
    pop de                                        ; $7d40: $d1
    pop de                                        ; $7d41: $d1
    pop de                                        ; $7d42: $d1
    add b                                         ; $7d43: $80
    add b                                         ; $7d44: $80
    add b                                         ; $7d45: $80
    add b                                         ; $7d46: $80
    add b                                         ; $7d47: $80
    add b                                         ; $7d48: $80
    add b                                         ; $7d49: $80
    adc b                                         ; $7d4a: $88
    add b                                         ; $7d4b: $80
    add b                                         ; $7d4c: $80
    add b                                         ; $7d4d: $80
    add b                                         ; $7d4e: $80
    add b                                         ; $7d4f: $80
    add b                                         ; $7d50: $80
    add b                                         ; $7d51: $80
    add b                                         ; $7d52: $80
    ld [$0a09], sp                                ; $7d53: $08 $09 $0a
    dec bc                                        ; $7d56: $0b
    sbc l                                         ; $7d57: $9d
    sbc l                                         ; $7d58: $9d
    sbc l                                         ; $7d59: $9d
    sbc l                                         ; $7d5a: $9d
    pop de                                        ; $7d5b: $d1
    pop de                                        ; $7d5c: $d1
    pop de                                        ; $7d5d: $d1
    pop de                                        ; $7d5e: $d1
    pop de                                        ; $7d5f: $d1
    pop de                                        ; $7d60: $d1
    pop de                                        ; $7d61: $d1
    pop de                                        ; $7d62: $d1
    ld b, $06                                     ; $7d63: $06 $06
    rlca                                          ; $7d65: $07
    ld b, $88                                     ; $7d66: $06 $88
    adc b                                         ; $7d68: $88
    adc b                                         ; $7d69: $88
    adc b                                         ; $7d6a: $88
    add b                                         ; $7d6b: $80
    add b                                         ; $7d6c: $80
    add b                                         ; $7d6d: $80
    add b                                         ; $7d6e: $80
    add b                                         ; $7d6f: $80
    add b                                         ; $7d70: $80
    add b                                         ; $7d71: $80
    add b                                         ; $7d72: $80
    jr jr_085_7d8e                                ; $7d73: $18 $19

    ld a, [de]                                    ; $7d75: $1a
    ld de, $9d9d                                  ; $7d76: $11 $9d $9d
    sbc l                                         ; $7d79: $9d
    sbc l                                         ; $7d7a: $9d
    pop de                                        ; $7d7b: $d1
    pop de                                        ; $7d7c: $d1
    pop de                                        ; $7d7d: $d1
    pop de                                        ; $7d7e: $d1
    pop de                                        ; $7d7f: $d1
    pop de                                        ; $7d80: $d1
    pop de                                        ; $7d81: $d1
    pop de                                        ; $7d82: $d1
    rlca                                          ; $7d83: $07
    ld b, $06                                     ; $7d84: $06 $06
    rlca                                          ; $7d86: $07
    adc b                                         ; $7d87: $88
    adc b                                         ; $7d88: $88
    adc b                                         ; $7d89: $88
    adc b                                         ; $7d8a: $88
    add b                                         ; $7d8b: $80
    add b                                         ; $7d8c: $80
    add b                                         ; $7d8d: $80

jr_085_7d8e:
    add b                                         ; $7d8e: $80
    add b                                         ; $7d8f: $80
    add b                                         ; $7d90: $80
    add b                                         ; $7d91: $80
    add b                                         ; $7d92: $80
    daa                                           ; $7d93: $27
    add hl, bc                                    ; $7d94: $09
    ld a, [bc]                                    ; $7d95: $0a
    sbc [hl]                                      ; $7d96: $9e
    sbc l                                         ; $7d97: $9d
    sbc l                                         ; $7d98: $9d
    sbc l                                         ; $7d99: $9d
    sbc l                                         ; $7d9a: $9d
    pop de                                        ; $7d9b: $d1
    pop de                                        ; $7d9c: $d1
    pop de                                        ; $7d9d: $d1
    pop de                                        ; $7d9e: $d1
    pop de                                        ; $7d9f: $d1
    pop de                                        ; $7da0: $d1
    pop de                                        ; $7da1: $d1
    pop de                                        ; $7da2: $d1
    ld b, $07                                     ; $7da3: $06 $07
    ld b, $0e                                     ; $7da5: $06 $0e
    adc b                                         ; $7da7: $88
    adc b                                         ; $7da8: $88
    adc b                                         ; $7da9: $88
    adc b                                         ; $7daa: $88
    add b                                         ; $7dab: $80
    add b                                         ; $7dac: $80
    add b                                         ; $7dad: $80
    add b                                         ; $7dae: $80
    add b                                         ; $7daf: $80
    add b                                         ; $7db0: $80
    add b                                         ; $7db1: $80
    add b                                         ; $7db2: $80
    pop de                                        ; $7db3: $d1
    pop de                                        ; $7db4: $d1
    pop de                                        ; $7db5: $d1
    pop de                                        ; $7db6: $d1
    pop de                                        ; $7db7: $d1
    pop de                                        ; $7db8: $d1
    pop de                                        ; $7db9: $d1
    pop de                                        ; $7dba: $d1
    pop de                                        ; $7dbb: $d1
    pop de                                        ; $7dbc: $d1
    pop de                                        ; $7dbd: $d1
    pop de                                        ; $7dbe: $d1
    pop de                                        ; $7dbf: $d1
    pop de                                        ; $7dc0: $d1
    pop de                                        ; $7dc1: $d1
    pop de                                        ; $7dc2: $d1
    add b                                         ; $7dc3: $80
    add b                                         ; $7dc4: $80
    add b                                         ; $7dc5: $80
    add b                                         ; $7dc6: $80
    add b                                         ; $7dc7: $80
    add b                                         ; $7dc8: $80
    add b                                         ; $7dc9: $80
    add b                                         ; $7dca: $80
    add b                                         ; $7dcb: $80
    add b                                         ; $7dcc: $80
    add b                                         ; $7dcd: $80
    add b                                         ; $7dce: $80
    add b                                         ; $7dcf: $80
    add b                                         ; $7dd0: $80
    add b                                         ; $7dd1: $80
    add b                                         ; $7dd2: $80
    sbc a                                         ; $7dd3: $9f
    and b                                         ; $7dd4: $a0
    ld a, [de]                                    ; $7dd5: $1a
    ld de, $9d9d                                  ; $7dd6: $11 $9d $9d
    sbc l                                         ; $7dd9: $9d
    sbc l                                         ; $7dda: $9d
    pop de                                        ; $7ddb: $d1
    pop de                                        ; $7ddc: $d1
    pop de                                        ; $7ddd: $d1
    pop de                                        ; $7dde: $d1
    pop de                                        ; $7ddf: $d1
    pop de                                        ; $7de0: $d1
    pop de                                        ; $7de1: $d1
    pop de                                        ; $7de2: $d1
    ld c, $0e                                     ; $7de3: $0e $0e
    ld b, $06                                     ; $7de5: $06 $06
    adc b                                         ; $7de7: $88
    adc b                                         ; $7de8: $88
    adc b                                         ; $7de9: $88
    adc b                                         ; $7dea: $88
    add b                                         ; $7deb: $80
    add b                                         ; $7dec: $80
    add b                                         ; $7ded: $80
    add b                                         ; $7dee: $80
    add b                                         ; $7def: $80
    add b                                         ; $7df0: $80
    add b                                         ; $7df1: $80
    add b                                         ; $7df2: $80
    daa                                           ; $7df3: $27
    add hl, bc                                    ; $7df4: $09
    ld a, [bc]                                    ; $7df5: $0a
    dec bc                                        ; $7df6: $0b
    sbc l                                         ; $7df7: $9d
    sbc l                                         ; $7df8: $9d
    sbc l                                         ; $7df9: $9d
    and c                                         ; $7dfa: $a1
    pop de                                        ; $7dfb: $d1
    pop de                                        ; $7dfc: $d1
    pop de                                        ; $7dfd: $d1
    jp nc, $d1d1                                  ; $7dfe: $d2 $d1 $d1

    pop de                                        ; $7e01: $d1
    jp nc, $0707                                  ; $7e02: $d2 $07 $07

    rlca                                          ; $7e05: $07
    ld b, $88                                     ; $7e06: $06 $88
    adc b                                         ; $7e08: $88
    adc b                                         ; $7e09: $88
    adc b                                         ; $7e0a: $88
    add b                                         ; $7e0b: $80
    add b                                         ; $7e0c: $80
    add b                                         ; $7e0d: $80
    add b                                         ; $7e0e: $80
    add b                                         ; $7e0f: $80
    add b                                         ; $7e10: $80
    add b                                         ; $7e11: $80
    add b                                         ; $7e12: $80
    jr @+$1b                                      ; $7e13: $18 $19

    ld a, [de]                                    ; $7e15: $1a
    ld de, $0f1b                                  ; $7e16: $11 $1b $0f
    adc h                                         ; $7e19: $8c
    ld l, e                                       ; $7e1a: $6b
    rra                                           ; $7e1b: $1f
    dec [hl]                                      ; $7e1c: $35
    ld c, d                                       ; $7e1d: $4a
    add hl, bc                                    ; $7e1e: $09
    ld a, [c]                                     ; $7e1f: $f2
    jr c, @+$3b                                   ; $7e20: $38 $39

    ld a, [hl-]                                   ; $7e22: $3a
    rlca                                          ; $7e23: $07
    ld b, $06                                     ; $7e24: $06 $06
    ld b, $06                                     ; $7e26: $06 $06
    ld b, $0e                                     ; $7e28: $06 $0e
    ld b, $06                                     ; $7e2a: $06 $06
    rlca                                          ; $7e2c: $07
    ld b, $06                                     ; $7e2d: $06 $06
    ld b, $06                                     ; $7e2f: $06 $06
    ld b, $06                                     ; $7e31: $06 $06
    daa                                           ; $7e33: $27
    add hl, bc                                    ; $7e34: $09
    ld a, [bc]                                    ; $7e35: $0a
    ld a, c                                       ; $7e36: $79
    jr z, jr_085_7e46                             ; $7e37: $28 $0d

    add hl, hl                                    ; $7e39: $29
    sub e                                         ; $7e3a: $93
    ld l, [hl]                                    ; $7e3b: $6e
    ld de, $a22a                                  ; $7e3c: $11 $2a $a2
    ld l, a                                       ; $7e3f: $6f
    dec d                                         ; $7e40: $15
    inc l                                         ; $7e41: $2c
    ld bc, $0607                                  ; $7e42: $01 $07 $06
    rlca                                          ; $7e45: $07

jr_085_7e46:
    ld b, $06                                     ; $7e46: $06 $06
    ld b, $06                                     ; $7e48: $06 $06
    ld c, $07                                     ; $7e4a: $0e $07
    ld b, $06                                     ; $7e4c: $06 $06
    ld c, $07                                     ; $7e4e: $0e $07
    ld b, $06                                     ; $7e50: $06 $06
    ld b, $d1                                     ; $7e52: $06 $d1
    pop de                                        ; $7e54: $d1
    pop de                                        ; $7e55: $d1
    jp nc, $d1d1                                  ; $7e56: $d2 $d1 $d1

    pop de                                        ; $7e59: $d1
    jp nc, $d1d1                                  ; $7e5a: $d2 $d1 $d1

    pop de                                        ; $7e5d: $d1
    jp nc, $d1d1                                  ; $7e5e: $d2 $d1 $d1

    pop de                                        ; $7e61: $d1
    sbc h                                         ; $7e62: $9c
    add b                                         ; $7e63: $80
    add b                                         ; $7e64: $80
    add b                                         ; $7e65: $80
    add b                                         ; $7e66: $80
    add b                                         ; $7e67: $80
    add b                                         ; $7e68: $80
    add b                                         ; $7e69: $80
    add b                                         ; $7e6a: $80
    add b                                         ; $7e6b: $80
    add b                                         ; $7e6c: $80
    add b                                         ; $7e6d: $80
    add b                                         ; $7e6e: $80
    add b                                         ; $7e6f: $80
    add b                                         ; $7e70: $80
    add b                                         ; $7e71: $80
    adc b                                         ; $7e72: $88
    ld [$0a09], sp                                ; $7e73: $08 $09 $0a
    dec bc                                        ; $7e76: $0b
    ld a, $0d                                     ; $7e77: $3e $0d
    add hl, hl                                    ; $7e79: $29
    rrca                                          ; $7e7a: $0f
    ld b, d                                       ; $7e7b: $42
    ld de, $882a                                  ; $7e7c: $11 $2a $88
    sbc l                                         ; $7e7f: $9d
    and c                                         ; $7e80: $a1
    inc l                                         ; $7e81: $2c
    dec l                                         ; $7e82: $2d
    ld b, $06                                     ; $7e83: $06 $06
    rlca                                          ; $7e85: $07
    ld b, $06                                     ; $7e86: $06 $06
    ld b, $06                                     ; $7e88: $06 $06
    ld b, $06                                     ; $7e8a: $06 $06
    ld b, $06                                     ; $7e8c: $06 $06
    rrca                                          ; $7e8e: $0f
    adc b                                         ; $7e8f: $88
    adc b                                         ; $7e90: $88
    rlca                                          ; $7e91: $07
    rlca                                          ; $7e92: $07
    adc c                                         ; $7e93: $89
    add hl, de                                    ; $7e94: $19
    ld a, [de]                                    ; $7e95: $1a
    and e                                         ; $7e96: $a3
    adc e                                         ; $7e97: $8b
    rrca                                          ; $7e98: $0f
    adc h                                         ; $7e99: $8c
    sbc d                                         ; $7e9a: $9a
    adc l                                         ; $7e9b: $8d
    dec [hl]                                      ; $7e9c: $35
    ld c, d                                       ; $7e9d: $4a
    sbc e                                         ; $7e9e: $9b
    inc hl                                        ; $7e9f: $23
    jr c, jr_085_7e46                             ; $7ea0: $38 $a4

    sbc l                                         ; $7ea2: $9d
    ld c, $06                                     ; $7ea3: $0e $06
    ld b, $0e                                     ; $7ea5: $06 $0e
    ld c, $06                                     ; $7ea7: $0e $06
    rrca                                          ; $7ea9: $0f
    ld c, $0e                                     ; $7eaa: $0e $0e
    rlca                                          ; $7eac: $07
    ld b, $0e                                     ; $7ead: $06 $0e
    rlca                                          ; $7eaf: $07
    ld b, $88                                     ; $7eb0: $06 $88
    adc b                                         ; $7eb2: $88
    pop de                                        ; $7eb3: $d1
    jp nc, Jump_000_111a                          ; $7eb4: $d2 $1a $11

    pop de                                        ; $7eb7: $d1
    sbc h                                         ; $7eb8: $9c
    and l                                         ; $7eb9: $a5
    and l                                         ; $7eba: $a5
    pop de                                        ; $7ebb: $d1
    pop de                                        ; $7ebc: $d1
    and [hl]                                      ; $7ebd: $a6
    and [hl]                                      ; $7ebe: $a6
    pop de                                        ; $7ebf: $d1
    pop de                                        ; $7ec0: $d1
    pop de                                        ; $7ec1: $d1
    pop de                                        ; $7ec2: $d1
    add b                                         ; $7ec3: $80
    add b                                         ; $7ec4: $80
    rlca                                          ; $7ec5: $07
    rlca                                          ; $7ec6: $07
    add b                                         ; $7ec7: $80
    adc b                                         ; $7ec8: $88
    adc b                                         ; $7ec9: $88
    adc b                                         ; $7eca: $88
    add b                                         ; $7ecb: $80
    add b                                         ; $7ecc: $80
    adc b                                         ; $7ecd: $88
    adc b                                         ; $7ece: $88
    add b                                         ; $7ecf: $80
    add b                                         ; $7ed0: $80
    add b                                         ; $7ed1: $80
    add b                                         ; $7ed2: $80
    daa                                           ; $7ed3: $27
    add hl, bc                                    ; $7ed4: $09
    jp nc, $a5d1                                  ; $7ed5: $d2 $d1 $a5

    and l                                         ; $7ed8: $a5
    and a                                         ; $7ed9: $a7
    pop de                                        ; $7eda: $d1
    and [hl]                                      ; $7edb: $a6
    and [hl]                                      ; $7edc: $a6
    pop de                                        ; $7edd: $d1
    pop de                                        ; $7ede: $d1
    pop de                                        ; $7edf: $d1
    pop de                                        ; $7ee0: $d1
    pop de                                        ; $7ee1: $d1
    pop de                                        ; $7ee2: $d1
    ld b, $06                                     ; $7ee3: $06 $06
    add b                                         ; $7ee5: $80
    add b                                         ; $7ee6: $80
    adc b                                         ; $7ee7: $88
    adc b                                         ; $7ee8: $88
    adc b                                         ; $7ee9: $88
    add b                                         ; $7eea: $80
    adc b                                         ; $7eeb: $88
    adc b                                         ; $7eec: $88
    add b                                         ; $7eed: $80
    add b                                         ; $7eee: $80
    add b                                         ; $7eef: $80
    add b                                         ; $7ef0: $80
    add b                                         ; $7ef1: $80
    add b                                         ; $7ef2: $80
    jp nc, $d1d1                                  ; $7ef3: $d2 $d1 $d1

    pop de                                        ; $7ef6: $d1
    jp nc, $d1d1                                  ; $7ef7: $d2 $d1 $d1

    pop de                                        ; $7efa: $d1
    jp nc, $d1d1                                  ; $7efb: $d2 $d1 $d1

    pop de                                        ; $7efe: $d1
    and a                                         ; $7eff: $a7
    pop de                                        ; $7f00: $d1
    pop de                                        ; $7f01: $d1
    pop de                                        ; $7f02: $d1
    add b                                         ; $7f03: $80
    add b                                         ; $7f04: $80
    add b                                         ; $7f05: $80
    add b                                         ; $7f06: $80
    add b                                         ; $7f07: $80
    add b                                         ; $7f08: $80
    add b                                         ; $7f09: $80
    add b                                         ; $7f0a: $80
    add b                                         ; $7f0b: $80
    add b                                         ; $7f0c: $80
    add b                                         ; $7f0d: $80
    add b                                         ; $7f0e: $80
    adc b                                         ; $7f0f: $88
    add b                                         ; $7f10: $80
    add b                                         ; $7f11: $80
    add b                                         ; $7f12: $80
    add e                                         ; $7f13: $83
    nop                                           ; $7f14: $00
    nop                                           ; $7f15: $00
    nop                                           ; $7f16: $00
    nop                                           ; $7f17: $00
    ld bc, $0200                                  ; $7f18: $01 $00 $02
    nop                                           ; $7f1b: $00
    inc bc                                        ; $7f1c: $03
    nop                                           ; $7f1d: $00
    inc b                                         ; $7f1e: $04
    stop                                          ; $7f1f: $10 $00
    ld de, $1200                                  ; $7f21: $11 $00 $12
    ld [bc], a                                    ; $7f24: $02
    db $10                                        ; $7f25: $10
    inc b                                         ; $7f26: $04
    nop                                           ; $7f27: $00
    nop                                           ; $7f28: $00
    dec b                                         ; $7f29: $05
    nop                                           ; $7f2a: $00
    ld b, $00                                     ; $7f2b: $06 $00
    rlca                                          ; $7f2d: $07
    nop                                           ; $7f2e: $00
    inc de                                        ; $7f2f: $13
    nop                                           ; $7f30: $00
    ld b, b                                       ; $7f31: $40
    inc d                                         ; $7f32: $14
    ld [de], a                                    ; $7f33: $12
    jr nz, jr_085_7f3e                            ; $7f34: $20 $08

    nop                                           ; $7f36: $00
    add hl, bc                                    ; $7f37: $09
    nop                                           ; $7f38: $00
    ld a, [bc]                                    ; $7f39: $0a
    nop                                           ; $7f3a: $00
    inc b                                         ; $7f3b: $04
    dec bc                                        ; $7f3c: $0b
    nop                                           ; $7f3d: $00

jr_085_7f3e:
    dec d                                         ; $7f3e: $15
    nop                                           ; $7f3f: $00
    ld d, $24                                     ; $7f40: $16 $24
    jr nz, @+$0e                                  ; $7f42: $20 $0c

    nop                                           ; $7f44: $00
    nop                                           ; $7f45: $00
    dec c                                         ; $7f46: $0d
    nop                                           ; $7f47: $00
    ld c, $00                                     ; $7f48: $0e $00
    rrca                                          ; $7f4a: $0f
    nop                                           ; $7f4b: $00
    rla                                           ; $7f4c: $17
    nop                                           ; $7f4d: $00
    nop                                           ; $7f4e: $00
    jr jr_085_7f51                                ; $7f4f: $18 $00

jr_085_7f51:
    add hl, de                                    ; $7f51: $19
    nop                                           ; $7f52: $00
    ld a, [de]                                    ; $7f53: $1a
    nop                                           ; $7f54: $00
    dec de                                        ; $7f55: $1b
    nop                                           ; $7f56: $00
    nop                                           ; $7f57: $00
    inc e                                         ; $7f58: $1c
    nop                                           ; $7f59: $00
    dec e                                         ; $7f5a: $1d
    nop                                           ; $7f5b: $00
    ld e, $00                                     ; $7f5c: $1e $00
    rra                                           ; $7f5e: $1f
    nop                                           ; $7f5f: $00
    nop                                           ; $7f60: $00
    ld a, [hl+]                                   ; $7f61: $2a
    nop                                           ; $7f62: $00
    dec hl                                        ; $7f63: $2b
    nop                                           ; $7f64: $00
    inc l                                         ; $7f65: $2c
    nop                                           ; $7f66: $00
    dec l                                         ; $7f67: $2d
    nop                                           ; $7f68: $00
    nop                                           ; $7f69: $00
    ld [hl], $00                                  ; $7f6a: $36 $00
    jr nz, jr_085_7f6e                            ; $7f6c: $20 $00

jr_085_7f6e:
    ld hl, $2200                                  ; $7f6e: $21 $00 $22
    nop                                           ; $7f71: $00
    nop                                           ; $7f72: $00
    inc hl                                        ; $7f73: $23
    nop                                           ; $7f74: $00
    ld l, $00                                     ; $7f75: $2e $00
    cpl                                           ; $7f77: $2f
    nop                                           ; $7f78: $00
    jr nc, jr_085_7f7b                            ; $7f79: $30 $00

jr_085_7f7b:
    db $10                                        ; $7f7b: $10
    ld sp, $3700                                  ; $7f7c: $31 $00 $37
    ld [hl], $00                                  ; $7f7f: $36 $00
    inc h                                         ; $7f81: $24
    nop                                           ; $7f82: $00
    dec h                                         ; $7f83: $25
    nop                                           ; $7f84: $00
    inc b                                         ; $7f85: $04
    ld h, $00                                     ; $7f86: $26 $00
    ld [hl-], a                                   ; $7f88: $32
    nop                                           ; $7f89: $00
    inc sp                                        ; $7f8a: $33
    ld l, h                                       ; $7f8b: $6c
    jr nz, @+$1e                                  ; $7f8c: $20 $1c

    nop                                           ; $7f8e: $00
    nop                                           ; $7f8f: $00
    daa                                           ; $7f90: $27
    nop                                           ; $7f91: $00
    jr z, jr_085_7f94                             ; $7f92: $28 $00

jr_085_7f94:
    add hl, hl                                    ; $7f94: $29
    nop                                           ; $7f95: $00
    inc [hl]                                      ; $7f96: $34
    nop                                           ; $7f97: $00
    ld b, b                                       ; $7f98: $40
    dec [hl]                                      ; $7f99: $35
    ld a, [hl]                                    ; $7f9a: $7e
    jr nz, jr_085_7fd5                            ; $7f9b: $20 $38

    nop                                           ; $7f9d: $00
    add hl, sp                                    ; $7f9e: $39
    nop                                           ; $7f9f: $00
    ld a, [hl-]                                   ; $7fa0: $3a
    nop                                           ; $7fa1: $00
    ld b, $3b                                     ; $7fa2: $06 $3b
    nop                                           ; $7fa4: $00
    ld a, $00                                     ; $7fa5: $3e $00
    ccf                                           ; $7fa7: $3f
    sub b                                         ; $7fa8: $90
    jr nz, @-$68                                  ; $7fa9: $20 $96

    ld [$203c], sp                                ; $7fab: $08 $3c $20
    nop                                           ; $7fae: $00
    dec a                                         ; $7faf: $3d
    ld c, $40                                     ; $7fb0: $0e $40
    jr nc, jr_085_7fb4                            ; $7fb2: $30 $00

jr_085_7fb4:
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

jr_085_7fd5:
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
    ld [$8b00], sp                                ; $7fe9: $08 $00 $8b
    dec l                                         ; $7fec: $2d
    cp e                                          ; $7fed: $bb
    ld bc, $6030                                  ; $7fee: $01 $30 $60
    nop                                           ; $7ff1: $00
    nop                                           ; $7ff2: $00
    adc e                                         ; $7ff3: $8b
    dec l                                         ; $7ff4: $2d
    add hl, sp                                    ; $7ff5: $39
    ld bc, $027f                                  ; $7ff6: $01 $7f $02
    nop                                           ; $7ff9: $00
    nop                                           ; $7ffa: $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
