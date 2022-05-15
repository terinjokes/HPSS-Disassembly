; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $082", ROMX[$4000], BANK[$82]

    add d                                         ; $4000: $82
    ld a, [bc]                                    ; $4001: $0a
    nop                                           ; $4002: $00
    ld [de], a                                    ; $4003: $12
    nop                                           ; $4004: $00
    nop                                           ; $4005: $00
    inc d                                         ; $4006: $14
    pop de                                        ; $4007: $d1
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
    call nc, $d6d5                                ; $4028: $d4 $d5 $d6
    rst $10                                       ; $402b: $d7
    ret c                                         ; $402c: $d8

    reti                                          ; $402d: $d9


    jp c, $dcdb                                   ; $402e: $da $db $dc

    db $dd                                        ; $4031: $dd
    sbc $df                                       ; $4032: $de $df
    ldh [$e1], a                                  ; $4034: $e0 $e1
    ld [c], a                                     ; $4036: $e2
    ld bc, $0101                                  ; $4037: $01 $01 $01
    ld bc, $0101                                  ; $403a: $01 $01 $01
    ld bc, $0101                                  ; $403d: $01 $01 $01
    ld bc, $0101                                  ; $4040: $01 $01 $01
    ld bc, $0101                                  ; $4043: $01 $01 $01
    ld bc, $e4e3                                  ; $4046: $01 $e3 $e4
    push hl                                       ; $4049: $e5
    and $e7                                       ; $404a: $e6 $e7
    add sp, -$17                                  ; $404c: $e8 $e9
    ld [$eceb], a                                 ; $404e: $ea $eb $ec
    db $ed                                        ; $4051: $ed
    xor $ef                                       ; $4052: $ee $ef
    ldh a, [$f1]                                  ; $4054: $f0 $f1
    ld a, [c]                                     ; $4056: $f2
    inc b                                         ; $4057: $04
    inc b                                         ; $4058: $04
    inc b                                         ; $4059: $04
    inc b                                         ; $405a: $04
    inc b                                         ; $405b: $04
    inc b                                         ; $405c: $04
    inc b                                         ; $405d: $04
    inc b                                         ; $405e: $04
    inc b                                         ; $405f: $04
    inc b                                         ; $4060: $04
    inc b                                         ; $4061: $04
    inc b                                         ; $4062: $04
    inc b                                         ; $4063: $04
    inc b                                         ; $4064: $04
    inc b                                         ; $4065: $04
    inc b                                         ; $4066: $04
    di                                            ; $4067: $f3
    db $f4                                        ; $4068: $f4
    push af                                       ; $4069: $f5
    or $f7                                        ; $406a: $f6 $f7
    ld hl, sp-$07                                 ; $406c: $f8 $f9
    ld a, [$fcfb]                                 ; $406e: $fa $fb $fc
    db $fd                                        ; $4071: $fd
    cp $ff                                        ; $4072: $fe $ff
    nop                                           ; $4074: $00
    ld bc, $0102                                  ; $4075: $01 $02 $01
    ld bc, $0101                                  ; $4078: $01 $01 $01
    ld bc, $0101                                  ; $407b: $01 $01 $01
    ld bc, $0101                                  ; $407e: $01 $01 $01
    ld bc, $0101                                  ; $4081: $01 $01 $01
    ld bc, $0101                                  ; $4084: $01 $01 $01
    pop de                                        ; $4087: $d1
    pop de                                        ; $4088: $d1
    pop de                                        ; $4089: $d1
    jp nc, Jump_000_03d1                          ; $408a: $d2 $d1 $03

    inc b                                         ; $408d: $04
    dec b                                         ; $408e: $05
    pop de                                        ; $408f: $d1
    jp nc, $d6f5                                  ; $4090: $d2 $f5 $d6

    pop de                                        ; $4093: $d1
    ld b, $f9                                     ; $4094: $06 $f9
    jp c, $8080                                   ; $4096: $da $80 $80

    add b                                         ; $4099: $80
    add b                                         ; $409a: $80
    add b                                         ; $409b: $80
    add b                                         ; $409c: $80
    add b                                         ; $409d: $80
    add b                                         ; $409e: $80
    add b                                         ; $409f: $80
    add b                                         ; $40a0: $80
    ld bc, $8001                                  ; $40a1: $01 $01 $80
    add b                                         ; $40a4: $80
    ld bc, $0701                                  ; $40a5: $01 $01 $07
    ld [$0a09], sp                                ; $40a8: $08 $09 $0a
    dec bc                                        ; $40ab: $0b
    inc c                                         ; $40ac: $0c
    dec c                                         ; $40ad: $0d
    ld c, $0f                                     ; $40ae: $0e $0f
    db $10                                        ; $40b0: $10
    ld de, $1312                                  ; $40b1: $11 $12 $13
    inc d                                         ; $40b4: $14
    dec d                                         ; $40b5: $15
    ld d, $01                                     ; $40b6: $16 $01
    ld bc, $0101                                  ; $40b8: $01 $01 $01
    inc bc                                        ; $40bb: $03
    inc bc                                        ; $40bc: $03
    inc bc                                        ; $40bd: $03
    inc bc                                        ; $40be: $03
    inc bc                                        ; $40bf: $03
    ld [bc], a                                    ; $40c0: $02
    ld [bc], a                                    ; $40c1: $02
    ld [bc], a                                    ; $40c2: $02
    inc bc                                        ; $40c3: $03
    ld [bc], a                                    ; $40c4: $02
    ld [bc], a                                    ; $40c5: $02
    ld [bc], a                                    ; $40c6: $02
    rla                                           ; $40c7: $17
    jr jr_082_40e3                                ; $40c8: $18 $19

    ld a, [de]                                    ; $40ca: $1a
    dec de                                        ; $40cb: $1b
    inc e                                         ; $40cc: $1c
    dec bc                                        ; $40cd: $0b
    inc c                                         ; $40ce: $0c
    dec e                                         ; $40cf: $1d
    ld e, $0f                                     ; $40d0: $1e $0f
    db $10                                        ; $40d2: $10
    rra                                           ; $40d3: $1f
    jr nz, @+$15                                  ; $40d4: $20 $13

    inc d                                         ; $40d6: $14
    inc b                                         ; $40d7: $04
    inc b                                         ; $40d8: $04
    inc b                                         ; $40d9: $04
    inc b                                         ; $40da: $04
    inc bc                                        ; $40db: $03
    inc bc                                        ; $40dc: $03
    inc bc                                        ; $40dd: $03
    inc bc                                        ; $40de: $03
    ld [bc], a                                    ; $40df: $02
    ld [bc], a                                    ; $40e0: $02
    ld [bc], a                                    ; $40e1: $02
    ld [bc], a                                    ; $40e2: $02

jr_082_40e3:
    ld [bc], a                                    ; $40e3: $02
    dec b                                         ; $40e4: $05
    dec b                                         ; $40e5: $05
    dec b                                         ; $40e6: $05
    ld hl, $2322                                  ; $40e7: $21 $22 $23
    inc h                                         ; $40ea: $24
    dec c                                         ; $40eb: $0d
    dec h                                         ; $40ec: $25
    ld h, $27                                     ; $40ed: $26 $27
    ld de, $2812                                  ; $40ef: $11 $12 $28
    add hl, hl                                    ; $40f2: $29
    dec d                                         ; $40f3: $15
    ld d, $1f                                     ; $40f4: $16 $1f
    jr nz, @+$03                                  ; $40f6: $20 $01

    ld bc, $0101                                  ; $40f8: $01 $01 $01
    inc bc                                        ; $40fb: $03
    inc bc                                        ; $40fc: $03
    ld bc, $0201                                  ; $40fd: $01 $01 $02
    ld [bc], a                                    ; $4100: $02
    ld [bc], a                                    ; $4101: $02
    ld [bc], a                                    ; $4102: $02
    ld [bc], a                                    ; $4103: $02
    ld [bc], a                                    ; $4104: $02
    ld [bc], a                                    ; $4105: $02
    ld [bc], a                                    ; $4106: $02
    pop de                                        ; $4107: $d1
    ld b, $fd                                     ; $4108: $06 $fd
    sbc $d1                                       ; $410a: $de $d1
    ld b, $01                                     ; $410c: $06 $01
    ld [c], a                                     ; $410e: $e2
    pop de                                        ; $410f: $d1
    ld b, $2a                                     ; $4110: $06 $2a
    ld a, [bc]                                    ; $4112: $0a
    dec hl                                        ; $4113: $2b
    ld b, $1b                                     ; $4114: $06 $1b
    inc e                                         ; $4116: $1c
    add b                                         ; $4117: $80
    add b                                         ; $4118: $80
    ld bc, $8001                                  ; $4119: $01 $01 $80
    add b                                         ; $411c: $80
    ld bc, $8001                                  ; $411d: $01 $01 $80
    add b                                         ; $4120: $80
    ld bc, $8001                                  ; $4121: $01 $01 $80
    add b                                         ; $4124: $80
    inc bc                                        ; $4125: $03
    inc bc                                        ; $4126: $03
    inc l                                         ; $4127: $2c
    dec l                                         ; $4128: $2d
    ld l, $2f                                     ; $4129: $2e $2f
    jr nc, jr_082_415e                            ; $412b: $30 $31

    ld [hl-], a                                   ; $412d: $32
    inc sp                                        ; $412e: $33
    inc [hl]                                      ; $412f: $34
    dec [hl]                                      ; $4130: $35
    ld [hl], $37                                  ; $4131: $36 $37
    dec bc                                        ; $4133: $0b
    inc c                                         ; $4134: $0c
    dec c                                         ; $4135: $0d
    ld c, $03                                     ; $4136: $0e $03
    ld [bc], a                                    ; $4138: $02
    dec b                                         ; $4139: $05
    ld [bc], a                                    ; $413a: $02
    inc bc                                        ; $413b: $03
    ld [bc], a                                    ; $413c: $02
    dec b                                         ; $413d: $05
    ld [bc], a                                    ; $413e: $02
    inc bc                                        ; $413f: $03
    ld [bc], a                                    ; $4140: $02
    ld [bc], a                                    ; $4141: $02
    ld [bc], a                                    ; $4142: $02
    inc bc                                        ; $4143: $03
    ld [bc], a                                    ; $4144: $02
    ld [bc], a                                    ; $4145: $02
    ld [bc], a                                    ; $4146: $02
    jr c, jr_082_4182                             ; $4147: $38 $39

    inc l                                         ; $4149: $2c
    dec l                                         ; $414a: $2d
    ld a, [hl-]                                   ; $414b: $3a
    dec sp                                        ; $414c: $3b
    jr nc, jr_082_4180                            ; $414d: $30 $31

    inc a                                         ; $414f: $3c
    dec a                                         ; $4150: $3d
    inc [hl]                                      ; $4151: $34
    dec [hl]                                      ; $4152: $35
    dec de                                        ; $4153: $1b
    inc e                                         ; $4154: $1c
    dec bc                                        ; $4155: $0b
    inc c                                         ; $4156: $0c
    ld [bc], a                                    ; $4157: $02
    ld [bc], a                                    ; $4158: $02
    ld [bc], a                                    ; $4159: $02
    ld [bc], a                                    ; $415a: $02
    dec b                                         ; $415b: $05
    dec b                                         ; $415c: $05
    ld [bc], a                                    ; $415d: $02

jr_082_415e:
    ld [bc], a                                    ; $415e: $02
    ld [bc], a                                    ; $415f: $02
    ld [bc], a                                    ; $4160: $02
    ld [bc], a                                    ; $4161: $02
    ld [bc], a                                    ; $4162: $02
    ld [bc], a                                    ; $4163: $02
    ld [bc], a                                    ; $4164: $02
    dec b                                         ; $4165: $05
    dec b                                         ; $4166: $05
    ld l, $2f                                     ; $4167: $2e $2f
    jr c, jr_082_41a4                             ; $4169: $38 $39

    ld [hl-], a                                   ; $416b: $32
    inc sp                                        ; $416c: $33
    ld a, [hl-]                                   ; $416d: $3a
    dec sp                                        ; $416e: $3b
    ld [hl], $37                                  ; $416f: $36 $37
    inc a                                         ; $4171: $3c
    dec a                                         ; $4172: $3d
    dec c                                         ; $4173: $0d
    ld c, $1b                                     ; $4174: $0e $1b
    inc e                                         ; $4176: $1c
    ld [bc], a                                    ; $4177: $02
    ld [bc], a                                    ; $4178: $02
    dec b                                         ; $4179: $05
    dec b                                         ; $417a: $05
    ld [bc], a                                    ; $417b: $02
    ld [bc], a                                    ; $417c: $02
    dec b                                         ; $417d: $05
    dec b                                         ; $417e: $05
    ld [bc], a                                    ; $417f: $02

jr_082_4180:
    ld [bc], a                                    ; $4180: $02
    ld [bc], a                                    ; $4181: $02

jr_082_4182:
    ld [bc], a                                    ; $4182: $02
    ld [bc], a                                    ; $4183: $02
    dec b                                         ; $4184: $05
    ld [bc], a                                    ; $4185: $02
    ld [bc], a                                    ; $4186: $02
    dec hl                                        ; $4187: $2b
    jp nc, $1e1d                                  ; $4188: $d2 $1d $1e

    dec hl                                        ; $418b: $2b
    ld a, $04                                     ; $418c: $3e $04
    ccf                                           ; $418e: $3f
    pop de                                        ; $418f: $d1
    pop de                                        ; $4190: $d1
    pop de                                        ; $4191: $d1
    jp nc, $d1d1                                  ; $4192: $d2 $d1 $d1

    pop de                                        ; $4195: $d1
    jp nc, $8080                                  ; $4196: $d2 $80 $80

    inc bc                                        ; $4199: $03
    ld [bc], a                                    ; $419a: $02
    add b                                         ; $419b: $80
    add b                                         ; $419c: $80
    add b                                         ; $419d: $80
    add b                                         ; $419e: $80
    add b                                         ; $419f: $80
    add b                                         ; $41a0: $80
    add b                                         ; $41a1: $80
    add b                                         ; $41a2: $80
    add b                                         ; $41a3: $80

jr_082_41a4:
    add b                                         ; $41a4: $80
    add b                                         ; $41a5: $80
    add b                                         ; $41a6: $80
    rrca                                          ; $41a7: $0f
    db $10                                        ; $41a8: $10
    ld de, $1312                                  ; $41a9: $11 $12 $13
    inc d                                         ; $41ac: $14
    dec d                                         ; $41ad: $15
    ld d, $2c                                     ; $41ae: $16 $2c
    dec l                                         ; $41b0: $2d
    ld l, $2f                                     ; $41b1: $2e $2f
    jr nc, jr_082_41e6                            ; $41b3: $30 $31

    ld [hl-], a                                   ; $41b5: $32
    inc sp                                        ; $41b6: $33
    ld [bc], a                                    ; $41b7: $02
    ld [bc], a                                    ; $41b8: $02
    ld [bc], a                                    ; $41b9: $02
    ld [bc], a                                    ; $41ba: $02
    ld [bc], a                                    ; $41bb: $02
    dec b                                         ; $41bc: $05
    dec b                                         ; $41bd: $05
    ld [bc], a                                    ; $41be: $02
    ld [bc], a                                    ; $41bf: $02
    ld [bc], a                                    ; $41c0: $02
    ld [bc], a                                    ; $41c1: $02
    dec b                                         ; $41c2: $05
    inc bc                                        ; $41c3: $03
    ld [bc], a                                    ; $41c4: $02
    ld [bc], a                                    ; $41c5: $02
    ld [bc], a                                    ; $41c6: $02
    dec e                                         ; $41c7: $1d
    ld e, $0f                                     ; $41c8: $1e $0f
    db $10                                        ; $41ca: $10
    rra                                           ; $41cb: $1f
    jr nz, jr_082_41e1                            ; $41cc: $20 $13

    inc d                                         ; $41ce: $14
    jr c, jr_082_420a                             ; $41cf: $38 $39

    inc l                                         ; $41d1: $2c
    dec l                                         ; $41d2: $2d

Jump_082_41d3:
    ld a, [hl-]                                   ; $41d3: $3a
    dec sp                                        ; $41d4: $3b
    jr nc, jr_082_4208                            ; $41d5: $30 $31

    ld [bc], a                                    ; $41d7: $02
    ld [bc], a                                    ; $41d8: $02
    ld [bc], a                                    ; $41d9: $02
    ld [bc], a                                    ; $41da: $02
    ld [bc], a                                    ; $41db: $02
    ld [bc], a                                    ; $41dc: $02
    ld [bc], a                                    ; $41dd: $02
    ld [bc], a                                    ; $41de: $02
    dec b                                         ; $41df: $05
    dec b                                         ; $41e0: $05

jr_082_41e1:
    dec b                                         ; $41e1: $05
    ld [bc], a                                    ; $41e2: $02
    ld [bc], a                                    ; $41e3: $02
    ld [bc], a                                    ; $41e4: $02
    ld [bc], a                                    ; $41e5: $02

jr_082_41e6:
    ld [bc], a                                    ; $41e6: $02
    ld de, $1d12                                  ; $41e7: $11 $12 $1d
    ld e, $15                                     ; $41ea: $1e $15
    ld d, $1f                                     ; $41ec: $16 $1f
    jr nz, jr_082_421e                            ; $41ee: $20 $2e

    cpl                                           ; $41f0: $2f
    jr c, @+$3b                                   ; $41f1: $38 $39

    ld [hl-], a                                   ; $41f3: $32
    inc sp                                        ; $41f4: $33
    ld a, [hl-]                                   ; $41f5: $3a
    dec sp                                        ; $41f6: $3b
    ld [bc], a                                    ; $41f7: $02
    ld [bc], a                                    ; $41f8: $02
    ld [bc], a                                    ; $41f9: $02
    ld [bc], a                                    ; $41fa: $02
    ld [bc], a                                    ; $41fb: $02
    dec b                                         ; $41fc: $05
    dec b                                         ; $41fd: $05
    ld [bc], a                                    ; $41fe: $02
    ld [bc], a                                    ; $41ff: $02
    ld [bc], a                                    ; $4200: $02
    ld [bc], a                                    ; $4201: $02
    ld [bc], a                                    ; $4202: $02
    ld [bc], a                                    ; $4203: $02
    ld [bc], a                                    ; $4204: $02
    ld [bc], a                                    ; $4205: $02
    dec b                                         ; $4206: $05
    db $d3                                        ; $4207: $d3

jr_082_4208:
    ld b, b                                       ; $4208: $40
    ld b, c                                       ; $4209: $41

jr_082_420a:
    ld b, d                                       ; $420a: $42
    rst $10                                       ; $420b: $d7
    ld b, e                                       ; $420c: $43
    ld b, h                                       ; $420d: $44
    ld b, l                                       ; $420e: $45
    db $db                                        ; $420f: $db
    ld b, [hl]                                    ; $4210: $46
    ld b, a                                       ; $4211: $47
    ld c, b                                       ; $4212: $48
    rst $18                                       ; $4213: $df
    ld c, c                                       ; $4214: $49
    ld c, d                                       ; $4215: $4a
    ld c, e                                       ; $4216: $4b
    ld bc, $0701                                  ; $4217: $01 $01 $07
    rlca                                          ; $421a: $07
    ld bc, $0701                                  ; $421b: $01 $01 $07

jr_082_421e:
    rlca                                          ; $421e: $07
    ld bc, $0701                                  ; $421f: $01 $01 $07
    rlca                                          ; $4222: $07
    ld bc, $0701                                  ; $4223: $01 $01 $07
    rlca                                          ; $4226: $07
    ld c, h                                       ; $4227: $4c
    ld c, l                                       ; $4228: $4d
    ld c, [hl]                                    ; $4229: $4e
    call nc, Call_082_504f                        ; $422a: $d4 $4f $50
    ld d, c                                       ; $422d: $51
    ret c                                         ; $422e: $d8

    ld d, d                                       ; $422f: $52
    ld d, e                                       ; $4230: $53
    ld d, h                                       ; $4231: $54
    call c, Call_082_5655                         ; $4232: $dc $55 $56
    ld d, a                                       ; $4235: $57
    ldh [rTAC], a                                 ; $4236: $e0 $07
    rlca                                          ; $4238: $07
    ld bc, $0701                                  ; $4239: $01 $01 $07
    rlca                                          ; $423c: $07
    ld bc, $0701                                  ; $423d: $01 $01 $07
    rlca                                          ; $4240: $07
    ld bc, $0701                                  ; $4241: $01 $01 $07
    rlca                                          ; $4244: $07
    ld bc, $d501                                  ; $4245: $01 $01 $d5
    db $f4                                        ; $4248: $f4
    push af                                       ; $4249: $f5
    sub $d9                                       ; $424a: $d6 $d9
    ld hl, sp-$07                                 ; $424c: $f8 $f9
    jp c, $fcdd                                   ; $424e: $da $dd $fc

    db $fd                                        ; $4251: $fd
    sbc $e1                                       ; $4252: $de $e1
    nop                                           ; $4254: $00
    ld bc, $01e2                                  ; $4255: $01 $e2 $01
    ld bc, $0101                                  ; $4258: $01 $01 $01
    ld bc, $0101                                  ; $425b: $01 $01 $01
    ld bc, $0101                                  ; $425e: $01 $01 $01
    ld bc, $0101                                  ; $4261: $01 $01 $01
    ld bc, $0101                                  ; $4264: $01 $01 $01
    ld e, b                                       ; $4267: $58
    ld e, c                                       ; $4268: $59
    ld e, d                                       ; $4269: $5a
    ld e, e                                       ; $426a: $5b
    ld e, h                                       ; $426b: $5c
    ld e, l                                       ; $426c: $5d
    ld e, [hl]                                    ; $426d: $5e
    ld e, a                                       ; $426e: $5f
    ld h, b                                       ; $426f: $60
    ld h, c                                       ; $4270: $61
    ld h, d                                       ; $4271: $62
    ld h, e                                       ; $4272: $63
    ld h, h                                       ; $4273: $64
    ld h, l                                       ; $4274: $65
    ld h, [hl]                                    ; $4275: $66
    ld h, a                                       ; $4276: $67
    inc b                                         ; $4277: $04
    inc b                                         ; $4278: $04
    inc b                                         ; $4279: $04
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
    inc b                                         ; $4284: $04
    inc b                                         ; $4285: $04
    inc b                                         ; $4286: $04
    rlca                                          ; $4287: $07
    ld [$6968], sp                                ; $4288: $08 $68 $69
    ld l, d                                       ; $428b: $6a
    inc c                                         ; $428c: $0c
    dec c                                         ; $428d: $0d
    ld c, $0f                                     ; $428e: $0e $0f
    db $10                                        ; $4290: $10
    ld de, $1312                                  ; $4291: $11 $12 $13
    inc d                                         ; $4294: $14
    dec d                                         ; $4295: $15
    ld d, $01                                     ; $4296: $16 $01
    ld bc, $0707                                  ; $4298: $01 $07 $07
    inc bc                                        ; $429b: $03
    inc bc                                        ; $429c: $03
    inc bc                                        ; $429d: $03
    inc bc                                        ; $429e: $03
    dec b                                         ; $429f: $05
    dec b                                         ; $42a0: $05
    dec b                                         ; $42a1: $05
    ld [bc], a                                    ; $42a2: $02
    ld [bc], a                                    ; $42a3: $02
    ld [bc], a                                    ; $42a4: $02
    ld [bc], a                                    ; $42a5: $02
    ld [bc], a                                    ; $42a6: $02
    ld l, e                                       ; $42a7: $6b
    ld l, h                                       ; $42a8: $6c
    ld l, l                                       ; $42a9: $6d
    ld [$1c1b], sp                                ; $42aa: $08 $1b $1c
    dec bc                                        ; $42ad: $0b
    inc c                                         ; $42ae: $0c
    dec e                                         ; $42af: $1d
    ld e, $0f                                     ; $42b0: $1e $0f
    db $10                                        ; $42b2: $10
    rra                                           ; $42b3: $1f
    jr nz, jr_082_42c9                            ; $42b4: $20 $13

    inc d                                         ; $42b6: $14
    rlca                                          ; $42b7: $07
    rlca                                          ; $42b8: $07
    ld bc, $0301                                  ; $42b9: $01 $01 $03
    inc bc                                        ; $42bc: $03
    inc bc                                        ; $42bd: $03
    inc bc                                        ; $42be: $03
    dec b                                         ; $42bf: $05
    dec b                                         ; $42c0: $05
    ld [bc], a                                    ; $42c1: $02
    ld [bc], a                                    ; $42c2: $02
    ld [bc], a                                    ; $42c3: $02
    ld [bc], a                                    ; $42c4: $02
    ld [bc], a                                    ; $42c5: $02
    ld [bc], a                                    ; $42c6: $02
    add hl, bc                                    ; $42c7: $09
    ld [hl+], a                                   ; $42c8: $22

jr_082_42c9:
    ld a, [hl+]                                   ; $42c9: $2a
    ld a, [bc]                                    ; $42ca: $0a
    dec c                                         ; $42cb: $0d
    ld c, $1b                                     ; $42cc: $0e $1b
    inc e                                         ; $42ce: $1c
    ld de, $1d12                                  ; $42cf: $11 $12 $1d
    ld e, $15                                     ; $42d2: $1e $15
    ld d, $1f                                     ; $42d4: $16 $1f
    jr nz, @+$03                                  ; $42d6: $20 $01

    ld bc, $0101                                  ; $42d8: $01 $01 $01
    inc bc                                        ; $42db: $03
    inc bc                                        ; $42dc: $03
    inc bc                                        ; $42dd: $03
    inc bc                                        ; $42de: $03
    ld [bc], a                                    ; $42df: $02
    ld [bc], a                                    ; $42e0: $02
    ld [bc], a                                    ; $42e1: $02
    ld [bc], a                                    ; $42e2: $02
    ld [bc], a                                    ; $42e3: $02
    ld [bc], a                                    ; $42e4: $02
    ld [bc], a                                    ; $42e5: $02
    ld [bc], a                                    ; $42e6: $02
    ld l, [hl]                                    ; $42e7: $6e
    ld l, a                                       ; $42e8: $6f
    ld [hl], b                                    ; $42e9: $70
    ld [hl], c                                    ; $42ea: $71
    dec bc                                        ; $42eb: $0b
    inc c                                         ; $42ec: $0c
    dec c                                         ; $42ed: $0d
    ld c, $0f                                     ; $42ee: $0e $0f
    db $10                                        ; $42f0: $10
    ld de, $1312                                  ; $42f1: $11 $12 $13
    inc d                                         ; $42f4: $14
    dec d                                         ; $42f5: $15
    ld d, $04                                     ; $42f6: $16 $04
    inc b                                         ; $42f8: $04
    inc b                                         ; $42f9: $04
    inc b                                         ; $42fa: $04
    inc bc                                        ; $42fb: $03
    inc bc                                        ; $42fc: $03
    inc bc                                        ; $42fd: $03
    inc bc                                        ; $42fe: $03
    ld [bc], a                                    ; $42ff: $02
    ld [bc], a                                    ; $4300: $02
    ld [bc], a                                    ; $4301: $02
    ld [bc], a                                    ; $4302: $02
    dec b                                         ; $4303: $05
    dec b                                         ; $4304: $05
    ld [bc], a                                    ; $4305: $02
    ld [bc], a                                    ; $4306: $02
    inc l                                         ; $4307: $2c
    dec l                                         ; $4308: $2d
    ld l, $2f                                     ; $4309: $2e $2f
    jr nc, jr_082_433e                            ; $430b: $30 $31

    ld [hl-], a                                   ; $430d: $32
    inc sp                                        ; $430e: $33
    inc [hl]                                      ; $430f: $34
    dec [hl]                                      ; $4310: $35
    ld [hl], $37                                  ; $4311: $36 $37
    dec bc                                        ; $4313: $0b
    inc c                                         ; $4314: $0c
    dec c                                         ; $4315: $0d
    ld c, $05                                     ; $4316: $0e $05
    ld [bc], a                                    ; $4318: $02
    ld [bc], a                                    ; $4319: $02
    dec b                                         ; $431a: $05
    ld [bc], a                                    ; $431b: $02
    ld [bc], a                                    ; $431c: $02
    dec b                                         ; $431d: $05
    dec b                                         ; $431e: $05
    ld [bc], a                                    ; $431f: $02
    dec b                                         ; $4320: $05
    dec b                                         ; $4321: $05
    dec b                                         ; $4322: $05
    ld [bc], a                                    ; $4323: $02
    ld [bc], a                                    ; $4324: $02
    ld [bc], a                                    ; $4325: $02
    ld [bc], a                                    ; $4326: $02
    jr c, jr_082_4362                             ; $4327: $38 $39

    inc l                                         ; $4329: $2c
    dec l                                         ; $432a: $2d
    ld a, [hl-]                                   ; $432b: $3a
    dec sp                                        ; $432c: $3b
    jr nc, jr_082_4360                            ; $432d: $30 $31

    inc a                                         ; $432f: $3c
    dec a                                         ; $4330: $3d
    inc [hl]                                      ; $4331: $34
    dec [hl]                                      ; $4332: $35
    dec de                                        ; $4333: $1b
    inc e                                         ; $4334: $1c
    dec bc                                        ; $4335: $0b
    inc c                                         ; $4336: $0c
    ld [bc], a                                    ; $4337: $02
    dec b                                         ; $4338: $05
    ld [bc], a                                    ; $4339: $02
    ld [bc], a                                    ; $433a: $02
    dec b                                         ; $433b: $05
    dec b                                         ; $433c: $05
    ld [bc], a                                    ; $433d: $02

jr_082_433e:
    ld [bc], a                                    ; $433e: $02
    ld [bc], a                                    ; $433f: $02
    ld [bc], a                                    ; $4340: $02
    ld [bc], a                                    ; $4341: $02

Jump_082_4342:
    dec b                                         ; $4342: $05
    ld [bc], a                                    ; $4343: $02
    ld [bc], a                                    ; $4344: $02
    ld [bc], a                                    ; $4345: $02
    ld [bc], a                                    ; $4346: $02
    ld l, $2f                                     ; $4347: $2e $2f
    jr c, jr_082_4384                             ; $4349: $38 $39

    ld [hl-], a                                   ; $434b: $32
    inc sp                                        ; $434c: $33
    ld a, [hl-]                                   ; $434d: $3a
    dec sp                                        ; $434e: $3b
    ld [hl], $37                                  ; $434f: $36 $37
    inc a                                         ; $4351: $3c
    dec a                                         ; $4352: $3d
    dec c                                         ; $4353: $0d
    ld c, $1b                                     ; $4354: $0e $1b
    inc e                                         ; $4356: $1c
    ld [bc], a                                    ; $4357: $02
    dec b                                         ; $4358: $05
    dec b                                         ; $4359: $05
    dec b                                         ; $435a: $05
    dec b                                         ; $435b: $05
    dec b                                         ; $435c: $05
    dec b                                         ; $435d: $05
    ld [bc], a                                    ; $435e: $02
    dec b                                         ; $435f: $05

jr_082_4360:
    dec b                                         ; $4360: $05
    ld [bc], a                                    ; $4361: $02

jr_082_4362:
    ld [bc], a                                    ; $4362: $02
    ld [bc], a                                    ; $4363: $02
    ld [bc], a                                    ; $4364: $02
    ld [bc], a                                    ; $4365: $02
    ld [bc], a                                    ; $4366: $02
    inc l                                         ; $4367: $2c
    dec l                                         ; $4368: $2d
    ld l, $2f                                     ; $4369: $2e $2f
    jr nc, jr_082_439e                            ; $436b: $30 $31

    ld [hl-], a                                   ; $436d: $32
    inc sp                                        ; $436e: $33
    inc [hl]                                      ; $436f: $34
    dec [hl]                                      ; $4370: $35
    ld [hl], $37                                  ; $4371: $36 $37
    dec bc                                        ; $4373: $0b
    inc c                                         ; $4374: $0c
    dec c                                         ; $4375: $0d
    ld c, $02                                     ; $4376: $0e $02
    ld [bc], a                                    ; $4378: $02
    ld [bc], a                                    ; $4379: $02
    ld [bc], a                                    ; $437a: $02
    ld [bc], a                                    ; $437b: $02
    ld [bc], a                                    ; $437c: $02
    ld [bc], a                                    ; $437d: $02
    dec b                                         ; $437e: $05
    dec b                                         ; $437f: $05
    dec b                                         ; $4380: $05
    ld [bc], a                                    ; $4381: $02
    dec b                                         ; $4382: $05
    ld [bc], a                                    ; $4383: $02

jr_082_4384:
    ld [bc], a                                    ; $4384: $02
    ld [bc], a                                    ; $4385: $02
    ld [bc], a                                    ; $4386: $02
    rrca                                          ; $4387: $0f
    db $10                                        ; $4388: $10
    ld de, $1312                                  ; $4389: $11 $12 $13
    inc d                                         ; $438c: $14
    dec d                                         ; $438d: $15
    ld d, $2c                                     ; $438e: $16 $2c
    dec l                                         ; $4390: $2d
    ld l, $2f                                     ; $4391: $2e $2f
    jr nc, jr_082_43c6                            ; $4393: $30 $31

    ld [hl-], a                                   ; $4395: $32
    inc sp                                        ; $4396: $33
    dec b                                         ; $4397: $05
    dec b                                         ; $4398: $05
    ld [bc], a                                    ; $4399: $02
    ld [bc], a                                    ; $439a: $02
    dec b                                         ; $439b: $05
    dec b                                         ; $439c: $05
    ld [bc], a                                    ; $439d: $02

jr_082_439e:
    ld [bc], a                                    ; $439e: $02
    ld [bc], a                                    ; $439f: $02
    ld [bc], a                                    ; $43a0: $02
    ld [bc], a                                    ; $43a1: $02
    ld [bc], a                                    ; $43a2: $02
    ld [bc], a                                    ; $43a3: $02
    ld [bc], a                                    ; $43a4: $02
    ld [bc], a                                    ; $43a5: $02
    ld [bc], a                                    ; $43a6: $02
    dec e                                         ; $43a7: $1d
    ld e, $0f                                     ; $43a8: $1e $0f
    db $10                                        ; $43aa: $10
    rra                                           ; $43ab: $1f
    jr nz, jr_082_43c1                            ; $43ac: $20 $13

    inc d                                         ; $43ae: $14
    jr c, @+$3b                                   ; $43af: $38 $39

    inc l                                         ; $43b1: $2c
    dec l                                         ; $43b2: $2d
    ld a, [hl-]                                   ; $43b3: $3a
    dec sp                                        ; $43b4: $3b
    jr nc, jr_082_43e8                            ; $43b5: $30 $31

    dec b                                         ; $43b7: $05
    ld [bc], a                                    ; $43b8: $02
    dec b                                         ; $43b9: $05
    dec b                                         ; $43ba: $05
    ld [bc], a                                    ; $43bb: $02
    ld [bc], a                                    ; $43bc: $02
    ld [bc], a                                    ; $43bd: $02
    ld [bc], a                                    ; $43be: $02
    dec b                                         ; $43bf: $05
    dec b                                         ; $43c0: $05

jr_082_43c1:
    dec b                                         ; $43c1: $05
    ld [bc], a                                    ; $43c2: $02
    ld [bc], a                                    ; $43c3: $02
    ld [bc], a                                    ; $43c4: $02
    ld [bc], a                                    ; $43c5: $02

jr_082_43c6:
    ld [bc], a                                    ; $43c6: $02
    ld de, $1d12                                  ; $43c7: $11 $12 $1d
    ld e, $15                                     ; $43ca: $1e $15
    ld d, $1f                                     ; $43cc: $16 $1f
    jr nz, jr_082_43fe                            ; $43ce: $20 $2e

    cpl                                           ; $43d0: $2f
    jr c, @+$3b                                   ; $43d1: $38 $39

    ld [hl-], a                                   ; $43d3: $32
    inc sp                                        ; $43d4: $33
    ld a, [hl-]                                   ; $43d5: $3a
    dec sp                                        ; $43d6: $3b
    ld [bc], a                                    ; $43d7: $02
    ld [bc], a                                    ; $43d8: $02
    ld [bc], a                                    ; $43d9: $02
    ld [bc], a                                    ; $43da: $02
    ld [bc], a                                    ; $43db: $02
    ld [bc], a                                    ; $43dc: $02
    dec b                                         ; $43dd: $05
    ld [bc], a                                    ; $43de: $02
    ld [bc], a                                    ; $43df: $02
    dec b                                         ; $43e0: $05
    ld [bc], a                                    ; $43e1: $02
    dec b                                         ; $43e2: $05
    ld [bc], a                                    ; $43e3: $02
    ld [bc], a                                    ; $43e4: $02
    ld [bc], a                                    ; $43e5: $02
    ld [bc], a                                    ; $43e6: $02
    rrca                                          ; $43e7: $0f

jr_082_43e8:
    db $10                                        ; $43e8: $10
    ld de, $1312                                  ; $43e9: $11 $12 $13
    inc d                                         ; $43ec: $14
    dec d                                         ; $43ed: $15
    ld d, $2c                                     ; $43ee: $16 $2c
    dec l                                         ; $43f0: $2d
    ld l, $2f                                     ; $43f1: $2e $2f
    jr nc, @+$33                                  ; $43f3: $30 $31

    ld [hl-], a                                   ; $43f5: $32
    inc sp                                        ; $43f6: $33
    dec b                                         ; $43f7: $05
    ld [bc], a                                    ; $43f8: $02
    ld [bc], a                                    ; $43f9: $02
    dec b                                         ; $43fa: $05
    ld [bc], a                                    ; $43fb: $02
    ld [bc], a                                    ; $43fc: $02
    ld [bc], a                                    ; $43fd: $02

jr_082_43fe:
    ld [bc], a                                    ; $43fe: $02
    dec b                                         ; $43ff: $05
    ld [bc], a                                    ; $4400: $02
    dec b                                         ; $4401: $05
    dec b                                         ; $4402: $05
    ld [bc], a                                    ; $4403: $02
    ld [bc], a                                    ; $4404: $02
    ld [bc], a                                    ; $4405: $02
    ld [bc], a                                    ; $4406: $02
    di                                            ; $4407: $f3
    or $d3                                        ; $4408: $f6 $d3
    call nc, $faf7                                ; $440a: $d4 $f7 $fa
    rst $10                                       ; $440d: $d7
    ret c                                         ; $440e: $d8

    ei                                            ; $440f: $fb
    cp $db                                        ; $4410: $fe $db
    call c, Call_000_02ff                         ; $4412: $dc $ff $02
    rst $18                                       ; $4415: $df
    ldh [rSB], a                                  ; $4416: $e0 $01
    ld bc, $0101                                  ; $4418: $01 $01 $01
    ld bc, $0101                                  ; $441b: $01 $01 $01
    ld bc, $0101                                  ; $441e: $01 $01 $01
    ld bc, $0101                                  ; $4421: $01 $01 $01
    ld bc, $0101                                  ; $4424: $01 $01 $01
    jp nc, $d1d1                                  ; $4427: $d2 $d1 $d1

    pop de                                        ; $442a: $d1
    jp nc, $d1d1                                  ; $442b: $d2 $d1 $d1

    pop de                                        ; $442e: $d1
    jp nc, $d1d1                                  ; $442f: $d2 $d1 $d1

    pop de                                        ; $4432: $d1
    jp nc, $d1d1                                  ; $4433: $d2 $d1 $d1

    pop de                                        ; $4436: $d1
    add b                                         ; $4437: $80
    add b                                         ; $4438: $80
    add b                                         ; $4439: $80
    add b                                         ; $443a: $80
    add b                                         ; $443b: $80
    add b                                         ; $443c: $80
    add b                                         ; $443d: $80
    add b                                         ; $443e: $80
    add b                                         ; $443f: $80
    add b                                         ; $4440: $80
    add b                                         ; $4441: $80
    add b                                         ; $4442: $80
    add b                                         ; $4443: $80
    add b                                         ; $4444: $80
    add b                                         ; $4445: $80
    add b                                         ; $4446: $80
    ld hl, $0772                                  ; $4447: $21 $72 $07
    ld [$1c1b], sp                                ; $444a: $08 $1b $1c
    dec bc                                        ; $444d: $0b
    inc c                                         ; $444e: $0c
    dec e                                         ; $444f: $1d
    ld e, $0f                                     ; $4450: $1e $0f
    db $10                                        ; $4452: $10
    rra                                           ; $4453: $1f
    jr nz, @+$15                                  ; $4454: $20 $13

    inc d                                         ; $4456: $14
    ld bc, $0101                                  ; $4457: $01 $01 $01
    ld bc, $0303                                  ; $445a: $01 $03 $03
    inc bc                                        ; $445d: $03
    inc bc                                        ; $445e: $03
    ld [bc], a                                    ; $445f: $02
    ld [bc], a                                    ; $4460: $02
    ld [bc], a                                    ; $4461: $02
    inc bc                                        ; $4462: $03
    dec b                                         ; $4463: $05
    ld [bc], a                                    ; $4464: $02
    ld [bc], a                                    ; $4465: $02
    inc bc                                        ; $4466: $03
    jp nc, $d1d1                                  ; $4467: $d2 $d1 $d1

    pop de                                        ; $446a: $d1
    ld a, $04                                     ; $446b: $3e $04
    ld [hl], e                                    ; $446d: $73
    pop de                                        ; $446e: $d1
    di                                            ; $446f: $f3
    or $d2                                        ; $4470: $f6 $d2
    pop de                                        ; $4472: $d1
    rst $30                                       ; $4473: $f7
    ld a, [$d106]                                 ; $4474: $fa $06 $d1
    add b                                         ; $4477: $80
    add b                                         ; $4478: $80
    add b                                         ; $4479: $80
    add b                                         ; $447a: $80
    add b                                         ; $447b: $80
    add b                                         ; $447c: $80
    add b                                         ; $447d: $80
    add b                                         ; $447e: $80
    ld bc, $8001                                  ; $447f: $01 $01 $80
    add b                                         ; $4482: $80
    ld bc, $8001                                  ; $4483: $01 $01 $80
    add b                                         ; $4486: $80
    jr c, jr_082_44c2                             ; $4487: $38 $39

    inc l                                         ; $4489: $2c
    dec l                                         ; $448a: $2d
    ld a, [hl-]                                   ; $448b: $3a
    dec sp                                        ; $448c: $3b
    jr nc, @+$33                                  ; $448d: $30 $31

    inc a                                         ; $448f: $3c
    dec a                                         ; $4490: $3d
    inc [hl]                                      ; $4491: $34
    dec [hl]                                      ; $4492: $35
    dec de                                        ; $4493: $1b
    inc e                                         ; $4494: $1c
    dec bc                                        ; $4495: $0b
    inc c                                         ; $4496: $0c
    ld [bc], a                                    ; $4497: $02
    ld [bc], a                                    ; $4498: $02
    ld [bc], a                                    ; $4499: $02
    inc bc                                        ; $449a: $03
    dec b                                         ; $449b: $05
    ld [bc], a                                    ; $449c: $02
    ld [bc], a                                    ; $449d: $02
    inc bc                                        ; $449e: $03
    ld [bc], a                                    ; $449f: $02
    ld [bc], a                                    ; $44a0: $02
    ld [bc], a                                    ; $44a1: $02
    inc bc                                        ; $44a2: $03
    ld [bc], a                                    ; $44a3: $02
    ld [bc], a                                    ; $44a4: $02
    ld [bc], a                                    ; $44a5: $02
    inc bc                                        ; $44a6: $03
    ei                                            ; $44a7: $fb
    cp $06                                        ; $44a8: $fe $06
    pop de                                        ; $44aa: $d1
    rst $38                                       ; $44ab: $ff
    ld [bc], a                                    ; $44ac: $02
    ld b, $d1                                     ; $44ad: $06 $d1
    ld hl, $0672                                  ; $44af: $21 $72 $06
    pop de                                        ; $44b2: $d1
    dec c                                         ; $44b3: $0d
    ld c, $06                                     ; $44b4: $0e $06
    dec hl                                        ; $44b6: $2b
    ld bc, $8001                                  ; $44b7: $01 $01 $80
    add b                                         ; $44ba: $80
    ld bc, $8001                                  ; $44bb: $01 $01 $80
    add b                                         ; $44be: $80
    ld bc, $8001                                  ; $44bf: $01 $01 $80

jr_082_44c2:
    add b                                         ; $44c2: $80
    inc bc                                        ; $44c3: $03
    inc bc                                        ; $44c4: $03
    add b                                         ; $44c5: $80
    and b                                         ; $44c6: $a0
    dec e                                         ; $44c7: $1d
    ld e, $0f                                     ; $44c8: $1e $0f
    db $10                                        ; $44ca: $10
    rra                                           ; $44cb: $1f
    jr nz, jr_082_44e1                            ; $44cc: $20 $13

    inc d                                         ; $44ce: $14
    jr c, @+$3b                                   ; $44cf: $38 $39

    inc l                                         ; $44d1: $2c
    dec l                                         ; $44d2: $2d
    ld a, [hl-]                                   ; $44d3: $3a
    dec sp                                        ; $44d4: $3b
    jr nc, jr_082_4508                            ; $44d5: $30 $31

    dec b                                         ; $44d7: $05
    ld [bc], a                                    ; $44d8: $02
    dec b                                         ; $44d9: $05
    dec b                                         ; $44da: $05
    ld [bc], a                                    ; $44db: $02
    ld [bc], a                                    ; $44dc: $02
    ld [bc], a                                    ; $44dd: $02
    ld [bc], a                                    ; $44de: $02
    dec b                                         ; $44df: $05
    ld [bc], a                                    ; $44e0: $02

jr_082_44e1:
    ld [bc], a                                    ; $44e1: $02
    ld [bc], a                                    ; $44e2: $02
    ld [bc], a                                    ; $44e3: $02
    ld [bc], a                                    ; $44e4: $02
    ld [bc], a                                    ; $44e5: $02
    inc bc                                        ; $44e6: $03
    ld de, $d212                                  ; $44e7: $11 $12 $d2
    dec hl                                        ; $44ea: $2b
    inc bc                                        ; $44eb: $03
    inc b                                         ; $44ec: $04
    dec b                                         ; $44ed: $05
    dec hl                                        ; $44ee: $2b
    jp nc, $d1d1                                  ; $44ef: $d2 $d1 $d1

    pop de                                        ; $44f2: $d1
    jp nc, $d1d1                                  ; $44f3: $d2 $d1 $d1

    pop de                                        ; $44f6: $d1
    ld [bc], a                                    ; $44f7: $02
    inc bc                                        ; $44f8: $03
    add b                                         ; $44f9: $80
    and b                                         ; $44fa: $a0
    add b                                         ; $44fb: $80
    add b                                         ; $44fc: $80
    add b                                         ; $44fd: $80
    and b                                         ; $44fe: $a0
    add b                                         ; $44ff: $80
    add b                                         ; $4500: $80
    add b                                         ; $4501: $80
    add b                                         ; $4502: $80
    add b                                         ; $4503: $80
    add b                                         ; $4504: $80
    add b                                         ; $4505: $80
    add b                                         ; $4506: $80
    inc [hl]                                      ; $4507: $34

jr_082_4508:
    dec [hl]                                      ; $4508: $35
    ld [hl], $37                                  ; $4509: $36 $37
    dec bc                                        ; $450b: $0b
    inc c                                         ; $450c: $0c
    dec c                                         ; $450d: $0d
    ld c, $74                                     ; $450e: $0e $74
    ld [hl], h                                    ; $4510: $74
    ld [hl], h                                    ; $4511: $74
    ld [hl], h                                    ; $4512: $74
    ld [hl], l                                    ; $4513: $75
    halt                                          ; $4514: $76
    ld [hl], a                                    ; $4515: $77
    ld a, b                                       ; $4516: $78
    inc bc                                        ; $4517: $03
    ld [bc], a                                    ; $4518: $02
    ld [bc], a                                    ; $4519: $02
    dec b                                         ; $451a: $05
    inc bc                                        ; $451b: $03
    ld [bc], a                                    ; $451c: $02
    ld [bc], a                                    ; $451d: $02
    ld [bc], a                                    ; $451e: $02
    ld bc, $0101                                  ; $451f: $01 $01 $01
    ld bc, $0101                                  ; $4522: $01 $01 $01
    ld bc, $3c01                                  ; $4525: $01 $01 $3c
    dec a                                         ; $4528: $3d
    inc [hl]                                      ; $4529: $34
    dec [hl]                                      ; $452a: $35
    dec de                                        ; $452b: $1b
    inc e                                         ; $452c: $1c
    dec bc                                        ; $452d: $0b
    inc c                                         ; $452e: $0c
    ld [hl], h                                    ; $452f: $74
    ld [hl], h                                    ; $4530: $74
    ld [hl], h                                    ; $4531: $74
    ld [hl], h                                    ; $4532: $74
    ld a, c                                       ; $4533: $79
    ld a, d                                       ; $4534: $7a
    ld a, e                                       ; $4535: $7b
    ld a, h                                       ; $4536: $7c
    dec b                                         ; $4537: $05
    ld [bc], a                                    ; $4538: $02
    ld [bc], a                                    ; $4539: $02
    dec b                                         ; $453a: $05
    ld [bc], a                                    ; $453b: $02
    ld [bc], a                                    ; $453c: $02
    ld [bc], a                                    ; $453d: $02
    ld [bc], a                                    ; $453e: $02
    ld bc, $0101                                  ; $453f: $01 $01 $01
    ld bc, $0101                                  ; $4542: $01 $01 $01
    ld bc, $3601                                  ; $4545: $01 $01 $36
    scf                                           ; $4548: $37
    inc a                                         ; $4549: $3c
    dec a                                         ; $454a: $3d
    dec c                                         ; $454b: $0d
    ld c, $1b                                     ; $454c: $0e $1b
    inc e                                         ; $454e: $1c
    ld [hl], h                                    ; $454f: $74
    ld [hl], h                                    ; $4550: $74
    ld a, l                                       ; $4551: $7d
    ld e, $7e                                     ; $4552: $1e $7e
    ld a, a                                       ; $4554: $7f
    add b                                         ; $4555: $80
    jr nz, jr_082_455a                            ; $4556: $20 $02

    dec b                                         ; $4558: $05
    dec b                                         ; $4559: $05

jr_082_455a:
    ld [bc], a                                    ; $455a: $02
    ld [bc], a                                    ; $455b: $02
    ld [bc], a                                    ; $455c: $02
    ld [bc], a                                    ; $455d: $02
    ld [bc], a                                    ; $455e: $02
    ld bc, $0101                                  ; $455f: $01 $01 $01
    ld [bc], a                                    ; $4562: $02
    ld bc, $0901                                  ; $4563: $01 $01 $09
    inc bc                                        ; $4566: $03
    add c                                         ; $4567: $81
    add d                                         ; $4568: $82
    add e                                         ; $4569: $83
    add h                                         ; $456a: $84
    add l                                         ; $456b: $85
    add e                                         ; $456c: $83
    add [hl]                                      ; $456d: $86
    add c                                         ; $456e: $81
    add a                                         ; $456f: $87
    add [hl]                                      ; $4570: $86
    add c                                         ; $4571: $81
    add d                                         ; $4572: $82
    adc b                                         ; $4573: $88
    adc c                                         ; $4574: $89
    adc d                                         ; $4575: $8a
    adc e                                         ; $4576: $8b
    add hl, bc                                    ; $4577: $09
    add hl, bc                                    ; $4578: $09
    add hl, bc                                    ; $4579: $09
    add hl, bc                                    ; $457a: $09
    add hl, bc                                    ; $457b: $09
    add hl, bc                                    ; $457c: $09
    add hl, bc                                    ; $457d: $09
    add hl, bc                                    ; $457e: $09
    add hl, bc                                    ; $457f: $09
    add hl, bc                                    ; $4580: $09
    add hl, bc                                    ; $4581: $09
    add hl, bc                                    ; $4582: $09
    add hl, bc                                    ; $4583: $09
    add hl, bc                                    ; $4584: $09
    add hl, bc                                    ; $4585: $09
    add hl, bc                                    ; $4586: $09
    adc h                                         ; $4587: $8c
    adc l                                         ; $4588: $8d
    adc [hl]                                      ; $4589: $8e
    adc a                                         ; $458a: $8f
    add d                                         ; $458b: $82
    add a                                         ; $458c: $87
    sub b                                         ; $458d: $90
    sub c                                         ; $458e: $91
    sub d                                         ; $458f: $92
    sub e                                         ; $4590: $93
    adc [hl]                                      ; $4591: $8e
    adc a                                         ; $4592: $8f
    sub h                                         ; $4593: $94
    sub l                                         ; $4594: $95
    sub b                                         ; $4595: $90
    sub c                                         ; $4596: $91
    add hl, bc                                    ; $4597: $09
    add hl, bc                                    ; $4598: $09
    add hl, bc                                    ; $4599: $09
    add hl, bc                                    ; $459a: $09
    add hl, bc                                    ; $459b: $09
    add hl, bc                                    ; $459c: $09
    add hl, bc                                    ; $459d: $09
    add hl, bc                                    ; $459e: $09
    add hl, bc                                    ; $459f: $09
    add hl, bc                                    ; $45a0: $09
    add hl, bc                                    ; $45a1: $09
    add hl, bc                                    ; $45a2: $09
    add hl, bc                                    ; $45a3: $09
    add hl, bc                                    ; $45a4: $09
    add hl, bc                                    ; $45a5: $09
    add hl, bc                                    ; $45a6: $09
    sub [hl]                                      ; $45a7: $96
    sub a                                         ; $45a8: $97
    jr c, jr_082_45e4                             ; $45a9: $38 $39

    sbc b                                         ; $45ab: $98
    sbc c                                         ; $45ac: $99
    ld a, [hl-]                                   ; $45ad: $3a
    dec sp                                        ; $45ae: $3b
    sub [hl]                                      ; $45af: $96
    sub a                                         ; $45b0: $97
    inc a                                         ; $45b1: $3c
    dec a                                         ; $45b2: $3d
    sbc b                                         ; $45b3: $98
    sbc c                                         ; $45b4: $99
    dec de                                        ; $45b5: $1b
    inc e                                         ; $45b6: $1c
    add hl, bc                                    ; $45b7: $09
    add hl, bc                                    ; $45b8: $09
    inc bc                                        ; $45b9: $03
    inc bc                                        ; $45ba: $03
    add hl, bc                                    ; $45bb: $09
    add hl, bc                                    ; $45bc: $09
    inc bc                                        ; $45bd: $03
    ld [bc], a                                    ; $45be: $02
    add hl, bc                                    ; $45bf: $09
    add hl, bc                                    ; $45c0: $09
    inc bc                                        ; $45c1: $03
    ld [bc], a                                    ; $45c2: $02
    add hl, bc                                    ; $45c3: $09
    add hl, bc                                    ; $45c4: $09
    inc bc                                        ; $45c5: $03
    ld [bc], a                                    ; $45c6: $02
    sbc d                                         ; $45c7: $9a
    sbc e                                         ; $45c8: $9b
    sbc h                                         ; $45c9: $9c
    sbc l                                         ; $45ca: $9d
    sbc [hl]                                      ; $45cb: $9e
    sbc a                                         ; $45cc: $9f
    and b                                         ; $45cd: $a0
    and c                                         ; $45ce: $a1
    and d                                         ; $45cf: $a2
    and e                                         ; $45d0: $a3
    and h                                         ; $45d1: $a4
    and l                                         ; $45d2: $a5
    and [hl]                                      ; $45d3: $a6
    and a                                         ; $45d4: $a7
    xor b                                         ; $45d5: $a8
    xor c                                         ; $45d6: $a9
    add hl, bc                                    ; $45d7: $09
    add hl, bc                                    ; $45d8: $09
    add hl, bc                                    ; $45d9: $09
    add hl, bc                                    ; $45da: $09
    add hl, bc                                    ; $45db: $09
    add hl, bc                                    ; $45dc: $09
    add hl, bc                                    ; $45dd: $09
    add hl, bc                                    ; $45de: $09
    add hl, bc                                    ; $45df: $09
    add hl, bc                                    ; $45e0: $09
    add hl, bc                                    ; $45e1: $09
    add hl, bc                                    ; $45e2: $09
    add hl, bc                                    ; $45e3: $09

jr_082_45e4:
    add hl, bc                                    ; $45e4: $09
    add hl, bc                                    ; $45e5: $09
    add hl, bc                                    ; $45e6: $09
    xor d                                         ; $45e7: $aa
    xor e                                         ; $45e8: $ab
    ld [hl], h                                    ; $45e9: $74
    ld [hl], h                                    ; $45ea: $74
    xor h                                         ; $45eb: $ac
    xor l                                         ; $45ec: $ad
    xor [hl]                                      ; $45ed: $ae
    xor a                                         ; $45ee: $af
    or b                                          ; $45ef: $b0
    or c                                          ; $45f0: $b1
    inc l                                         ; $45f1: $2c
    dec l                                         ; $45f2: $2d
    or d                                          ; $45f3: $b2
    or e                                          ; $45f4: $b3
    jr nc, jr_082_4628                            ; $45f5: $30 $31

    add hl, bc                                    ; $45f7: $09
    add hl, bc                                    ; $45f8: $09
    ld bc, $0901                                  ; $45f9: $01 $01 $09
    add hl, bc                                    ; $45fc: $09
    add hl, bc                                    ; $45fd: $09
    add hl, bc                                    ; $45fe: $09
    add hl, bc                                    ; $45ff: $09
    add hl, bc                                    ; $4600: $09
    inc bc                                        ; $4601: $03
    inc bc                                        ; $4602: $03
    add hl, bc                                    ; $4603: $09
    add hl, bc                                    ; $4604: $09
    inc bc                                        ; $4605: $03
    ld [bc], a                                    ; $4606: $02
    ld [hl], h                                    ; $4607: $74
    ld [hl], h                                    ; $4608: $74
    ld a, l                                       ; $4609: $7d
    ld e, $ae                                     ; $460a: $1e $ae
    xor a                                         ; $460c: $af
    or h                                          ; $460d: $b4
    jr nz, jr_082_463e                            ; $460e: $20 $2e

    cpl                                           ; $4610: $2f
    jr c, jr_082_464c                             ; $4611: $38 $39

    ld [hl-], a                                   ; $4613: $32
    inc sp                                        ; $4614: $33
    ld a, [hl-]                                   ; $4615: $3a
    dec sp                                        ; $4616: $3b
    ld bc, $0101                                  ; $4617: $01 $01 $01
    ld [bc], a                                    ; $461a: $02
    add hl, bc                                    ; $461b: $09
    add hl, bc                                    ; $461c: $09
    add hl, bc                                    ; $461d: $09
    inc bc                                        ; $461e: $03
    inc bc                                        ; $461f: $03
    inc bc                                        ; $4620: $03
    inc bc                                        ; $4621: $03
    inc bc                                        ; $4622: $03
    dec b                                         ; $4623: $05
    ld [bc], a                                    ; $4624: $02
    ld [bc], a                                    ; $4625: $02
    ld [bc], a                                    ; $4626: $02
    pop de                                        ; $4627: $d1

jr_082_4628:
    pop de                                        ; $4628: $d1
    pop de                                        ; $4629: $d1
    ld a, $d1                                     ; $462a: $3e $d1
    pop de                                        ; $462c: $d1
    pop de                                        ; $462d: $d1
    pop de                                        ; $462e: $d1
    pop de                                        ; $462f: $d1
    pop de                                        ; $4630: $d1
    pop de                                        ; $4631: $d1
    pop de                                        ; $4632: $d1
    pop de                                        ; $4633: $d1
    pop de                                        ; $4634: $d1
    pop de                                        ; $4635: $d1
    inc bc                                        ; $4636: $03
    add b                                         ; $4637: $80
    add b                                         ; $4638: $80
    add b                                         ; $4639: $80
    add b                                         ; $463a: $80
    add b                                         ; $463b: $80
    add b                                         ; $463c: $80
    add b                                         ; $463d: $80

jr_082_463e:
    add b                                         ; $463e: $80
    add b                                         ; $463f: $80
    add b                                         ; $4640: $80
    add b                                         ; $4641: $80
    add b                                         ; $4642: $80
    add b                                         ; $4643: $80
    add b                                         ; $4644: $80
    add b                                         ; $4645: $80
    add b                                         ; $4646: $80
    inc b                                         ; $4647: $04
    inc b                                         ; $4648: $04
    inc b                                         ; $4649: $04
    inc b                                         ; $464a: $04
    pop de                                        ; $464b: $d1

jr_082_464c:
    pop de                                        ; $464c: $d1
    pop de                                        ; $464d: $d1
    pop de                                        ; $464e: $d1
    pop de                                        ; $464f: $d1
    pop de                                        ; $4650: $d1
    pop de                                        ; $4651: $d1
    pop de                                        ; $4652: $d1
    inc b                                         ; $4653: $04
    inc b                                         ; $4654: $04
    inc b                                         ; $4655: $04
    inc b                                         ; $4656: $04
    add b                                         ; $4657: $80
    add b                                         ; $4658: $80
    add b                                         ; $4659: $80
    add b                                         ; $465a: $80
    add b                                         ; $465b: $80
    add b                                         ; $465c: $80
    add b                                         ; $465d: $80
    add b                                         ; $465e: $80
    add b                                         ; $465f: $80
    add b                                         ; $4660: $80
    add b                                         ; $4661: $80
    add b                                         ; $4662: $80
    add b                                         ; $4663: $80
    add b                                         ; $4664: $80
    add b                                         ; $4665: $80
    add b                                         ; $4666: $80
    inc b                                         ; $4667: $04
    ccf                                           ; $4668: $3f
    inc [hl]                                      ; $4669: $34
    dec [hl]                                      ; $466a: $35
    pop de                                        ; $466b: $d1
    jp nc, Jump_000_0c0b                          ; $466c: $d2 $0b $0c

    pop de                                        ; $466f: $d1
    jp nc, Jump_000_100f                          ; $4670: $d2 $0f $10

    inc b                                         ; $4673: $04
    dec b                                         ; $4674: $05
    inc de                                        ; $4675: $13
    inc d                                         ; $4676: $14
    add b                                         ; $4677: $80
    add b                                         ; $4678: $80
    inc bc                                        ; $4679: $03
    ld [bc], a                                    ; $467a: $02
    add b                                         ; $467b: $80
    add b                                         ; $467c: $80
    inc bc                                        ; $467d: $03
    ld [bc], a                                    ; $467e: $02
    add b                                         ; $467f: $80
    add b                                         ; $4680: $80
    inc bc                                        ; $4681: $03
    dec b                                         ; $4682: $05
    add b                                         ; $4683: $80
    add b                                         ; $4684: $80
    inc bc                                        ; $4685: $03
    ld [bc], a                                    ; $4686: $02
    ld [hl], $37                                  ; $4687: $36 $37
    inc a                                         ; $4689: $3c
    dec a                                         ; $468a: $3d
    dec c                                         ; $468b: $0d
    ld c, $1b                                     ; $468c: $0e $1b
    inc e                                         ; $468e: $1c
    ld de, $1d12                                  ; $468f: $11 $12 $1d
    ld e, $15                                     ; $4692: $1e $15
    ld d, $1f                                     ; $4694: $16 $1f
    jr z, jr_082_469a                             ; $4696: $28 $02

    ld [bc], a                                    ; $4698: $02
    dec b                                         ; $4699: $05

jr_082_469a:
    ld [bc], a                                    ; $469a: $02
    ld [bc], a                                    ; $469b: $02
    dec b                                         ; $469c: $05
    ld [bc], a                                    ; $469d: $02
    dec b                                         ; $469e: $05
    dec b                                         ; $469f: $05
    ld [bc], a                                    ; $46a0: $02
    ld [bc], a                                    ; $46a1: $02
    ld [bc], a                                    ; $46a2: $02
    ld [bc], a                                    ; $46a3: $02
    ld [bc], a                                    ; $46a4: $02
    ld [bc], a                                    ; $46a5: $02
    ld [bc], a                                    ; $46a6: $02
    inc [hl]                                      ; $46a7: $34
    dec [hl]                                      ; $46a8: $35
    ld [hl], $37                                  ; $46a9: $36 $37
    dec bc                                        ; $46ab: $0b
    inc c                                         ; $46ac: $0c
    dec c                                         ; $46ad: $0d
    ld c, $0f                                     ; $46ae: $0e $0f
    db $10                                        ; $46b0: $10
    ld de, $1312                                  ; $46b1: $11 $12 $13
    inc d                                         ; $46b4: $14
    dec d                                         ; $46b5: $15
    ld d, $05                                     ; $46b6: $16 $05
    ld [bc], a                                    ; $46b8: $02
    dec b                                         ; $46b9: $05
    dec b                                         ; $46ba: $05
    ld [bc], a                                    ; $46bb: $02
    ld [bc], a                                    ; $46bc: $02
    ld [bc], a                                    ; $46bd: $02
    dec b                                         ; $46be: $05
    ld [bc], a                                    ; $46bf: $02
    dec b                                         ; $46c0: $05
    ld [bc], a                                    ; $46c1: $02
    ld [bc], a                                    ; $46c2: $02
    ld [bc], a                                    ; $46c3: $02
    ld [bc], a                                    ; $46c4: $02
    ld [bc], a                                    ; $46c5: $02
    ld [bc], a                                    ; $46c6: $02
    inc a                                         ; $46c7: $3c
    dec a                                         ; $46c8: $3d
    inc [hl]                                      ; $46c9: $34
    dec [hl]                                      ; $46ca: $35
    dec de                                        ; $46cb: $1b
    inc e                                         ; $46cc: $1c
    dec bc                                        ; $46cd: $0b
    inc c                                         ; $46ce: $0c
    dec e                                         ; $46cf: $1d
    ld e, $0f                                     ; $46d0: $1e $0f
    db $10                                        ; $46d2: $10
    rra                                           ; $46d3: $1f
    jr nz, jr_082_46e9                            ; $46d4: $20 $13

    inc d                                         ; $46d6: $14
    dec b                                         ; $46d7: $05
    ld [bc], a                                    ; $46d8: $02
    dec b                                         ; $46d9: $05
    ld [bc], a                                    ; $46da: $02
    ld [bc], a                                    ; $46db: $02
    ld [bc], a                                    ; $46dc: $02
    ld [bc], a                                    ; $46dd: $02
    ld [bc], a                                    ; $46de: $02
    dec b                                         ; $46df: $05
    dec b                                         ; $46e0: $05
    dec b                                         ; $46e1: $05
    ld [bc], a                                    ; $46e2: $02
    ld [bc], a                                    ; $46e3: $02
    ld [bc], a                                    ; $46e4: $02
    ld [bc], a                                    ; $46e5: $02
    ld [bc], a                                    ; $46e6: $02
    ld [hl], $37                                  ; $46e7: $36 $37

jr_082_46e9:
    inc a                                         ; $46e9: $3c
    dec a                                         ; $46ea: $3d
    dec c                                         ; $46eb: $0d
    ld c, $1b                                     ; $46ec: $0e $1b
    inc e                                         ; $46ee: $1c
    ld de, $747d                                  ; $46ef: $11 $7d $74
    ld [hl], h                                    ; $46f2: $74
    dec d                                         ; $46f3: $15
    add b                                         ; $46f4: $80
    ld a, a                                       ; $46f5: $7f
    ld a, [hl]                                    ; $46f6: $7e
    ld [bc], a                                    ; $46f7: $02
    dec b                                         ; $46f8: $05
    dec b                                         ; $46f9: $05
    ld [bc], a                                    ; $46fa: $02
    ld [bc], a                                    ; $46fb: $02
    ld [bc], a                                    ; $46fc: $02
    ld [bc], a                                    ; $46fd: $02
    ld [bc], a                                    ; $46fe: $02
    ld [bc], a                                    ; $46ff: $02
    ld hl, $2121                                  ; $4700: $21 $21 $21
    inc bc                                        ; $4703: $03
    add hl, hl                                    ; $4704: $29
    ld hl, $3421                                  ; $4705: $21 $21 $34
    dec [hl]                                      ; $4708: $35
    ld [hl], $37                                  ; $4709: $36 $37
    dec bc                                        ; $470b: $0b
    inc c                                         ; $470c: $0c
    dec c                                         ; $470d: $0d
    ld c, $74                                     ; $470e: $0e $74
    ld [hl], h                                    ; $4710: $74
    ld [hl], h                                    ; $4711: $74
    ld [hl], h                                    ; $4712: $74
    ld a, h                                       ; $4713: $7c
    ld a, e                                       ; $4714: $7b
    ld a, d                                       ; $4715: $7a
    ld [hl], l                                    ; $4716: $75
    dec b                                         ; $4717: $05
    dec b                                         ; $4718: $05
    dec b                                         ; $4719: $05
    dec b                                         ; $471a: $05
    ld [bc], a                                    ; $471b: $02
    ld [bc], a                                    ; $471c: $02
    ld [bc], a                                    ; $471d: $02
    ld [bc], a                                    ; $471e: $02
    ld hl, $0121                                  ; $471f: $21 $21 $01
    ld bc, $2121                                  ; $4722: $01 $21 $21
    ld bc, $2c01                                  ; $4725: $01 $01 $2c
    dec l                                         ; $4728: $2d
    ld l, $2f                                     ; $4729: $2e $2f
    jr nc, jr_082_475e                            ; $472b: $30 $31

    ld [hl-], a                                   ; $472d: $32
    inc sp                                        ; $472e: $33
    inc [hl]                                      ; $472f: $34
    dec [hl]                                      ; $4730: $35
    ld [hl], $37                                  ; $4731: $36 $37
    dec bc                                        ; $4733: $0b
    inc c                                         ; $4734: $0c
    dec c                                         ; $4735: $0d
    ld c, $02                                     ; $4736: $0e $02
    dec b                                         ; $4738: $05
    dec b                                         ; $4739: $05
    dec b                                         ; $473a: $05
    ld [bc], a                                    ; $473b: $02
    ld [bc], a                                    ; $473c: $02
    ld [bc], a                                    ; $473d: $02
    ld [bc], a                                    ; $473e: $02
    dec b                                         ; $473f: $05
    ld [bc], a                                    ; $4740: $02
    ld [bc], a                                    ; $4741: $02
    dec b                                         ; $4742: $05
    ld [bc], a                                    ; $4743: $02
    dec b                                         ; $4744: $05
    dec b                                         ; $4745: $05
    ld [bc], a                                    ; $4746: $02
    jr c, jr_082_4782                             ; $4747: $38 $39

    inc l                                         ; $4749: $2c
    dec l                                         ; $474a: $2d
    ld a, [hl-]                                   ; $474b: $3a
    dec sp                                        ; $474c: $3b
    jr nc, jr_082_4780                            ; $474d: $30 $31

    inc a                                         ; $474f: $3c
    dec a                                         ; $4750: $3d
    inc [hl]                                      ; $4751: $34
    dec [hl]                                      ; $4752: $35
    dec de                                        ; $4753: $1b
    inc e                                         ; $4754: $1c
    dec bc                                        ; $4755: $0b
    inc c                                         ; $4756: $0c
    ld [bc], a                                    ; $4757: $02
    ld [bc], a                                    ; $4758: $02
    dec b                                         ; $4759: $05
    dec b                                         ; $475a: $05
    ld [bc], a                                    ; $475b: $02
    ld [bc], a                                    ; $475c: $02
    ld [bc], a                                    ; $475d: $02

jr_082_475e:
    ld [bc], a                                    ; $475e: $02
    ld [bc], a                                    ; $475f: $02
    dec b                                         ; $4760: $05
    ld [bc], a                                    ; $4761: $02
    dec b                                         ; $4762: $05
    dec b                                         ; $4763: $05
    ld [bc], a                                    ; $4764: $02
    ld [bc], a                                    ; $4765: $02
    ld [bc], a                                    ; $4766: $02
    ld l, $2f                                     ; $4767: $2e $2f
    sub a                                         ; $4769: $97
    sub [hl]                                      ; $476a: $96
    ld [hl-], a                                   ; $476b: $32
    inc sp                                        ; $476c: $33
    sbc c                                         ; $476d: $99
    sbc b                                         ; $476e: $98
    ld [hl], $37                                  ; $476f: $36 $37
    sub a                                         ; $4771: $97
    sub [hl]                                      ; $4772: $96
    dec c                                         ; $4773: $0d
    ld c, $99                                     ; $4774: $0e $99
    sbc b                                         ; $4776: $98
    inc bc                                        ; $4777: $03
    inc bc                                        ; $4778: $03
    add hl, hl                                    ; $4779: $29
    add hl, hl                                    ; $477a: $29
    ld [bc], a                                    ; $477b: $02
    inc bc                                        ; $477c: $03
    add hl, hl                                    ; $477d: $29
    add hl, hl                                    ; $477e: $29
    dec b                                         ; $477f: $05

jr_082_4780:
    inc bc                                        ; $4780: $03
    add hl, hl                                    ; $4781: $29

jr_082_4782:
    add hl, hl                                    ; $4782: $29
    ld [bc], a                                    ; $4783: $02
    inc bc                                        ; $4784: $03
    add hl, hl                                    ; $4785: $29
    add hl, hl                                    ; $4786: $29
    adc a                                         ; $4787: $8f
    adc [hl]                                      ; $4788: $8e
    or l                                          ; $4789: $b5
    add c                                         ; $478a: $81
    sub c                                         ; $478b: $91
    sub b                                         ; $478c: $90
    or [hl]                                       ; $478d: $b6
    add l                                         ; $478e: $85
    adc a                                         ; $478f: $8f
    adc [hl]                                      ; $4790: $8e
    or a                                          ; $4791: $b7
    add a                                         ; $4792: $87
    sub c                                         ; $4793: $91
    sub b                                         ; $4794: $90
    cp b                                          ; $4795: $b8
    adc b                                         ; $4796: $88
    add hl, hl                                    ; $4797: $29
    add hl, hl                                    ; $4798: $29
    add hl, bc                                    ; $4799: $09
    add hl, bc                                    ; $479a: $09
    add hl, hl                                    ; $479b: $29
    add hl, hl                                    ; $479c: $29
    add hl, bc                                    ; $479d: $09
    add hl, bc                                    ; $479e: $09
    add hl, hl                                    ; $479f: $29
    add hl, hl                                    ; $47a0: $29
    add hl, bc                                    ; $47a1: $09
    add hl, bc                                    ; $47a2: $09
    add hl, hl                                    ; $47a3: $29
    add hl, hl                                    ; $47a4: $29
    add hl, bc                                    ; $47a5: $09
    add hl, bc                                    ; $47a6: $09
    rrca                                          ; $47a7: $0f
    db $10                                        ; $47a8: $10
    ld de, $1312                                  ; $47a9: $11 $12 $13
    inc d                                         ; $47ac: $14
    dec d                                         ; $47ad: $15
    ld d, $2c                                     ; $47ae: $16 $2c
    dec l                                         ; $47b0: $2d
    ld l, $2f                                     ; $47b1: $2e $2f
    jr nc, jr_082_47e6                            ; $47b3: $30 $31

    ld [hl-], a                                   ; $47b5: $32
    inc sp                                        ; $47b6: $33
    ld [bc], a                                    ; $47b7: $02
    ld [bc], a                                    ; $47b8: $02
    ld [bc], a                                    ; $47b9: $02
    ld [bc], a                                    ; $47ba: $02
    ld [bc], a                                    ; $47bb: $02
    ld [bc], a                                    ; $47bc: $02
    dec b                                         ; $47bd: $05
    dec b                                         ; $47be: $05
    ld [bc], a                                    ; $47bf: $02
    ld [bc], a                                    ; $47c0: $02
    ld [bc], a                                    ; $47c1: $02
    ld [bc], a                                    ; $47c2: $02
    ld [bc], a                                    ; $47c3: $02
    dec b                                         ; $47c4: $05
    dec b                                         ; $47c5: $05
    ld [bc], a                                    ; $47c6: $02
    dec e                                         ; $47c7: $1d
    ld e, $0f                                     ; $47c8: $1e $0f
    db $10                                        ; $47ca: $10
    rra                                           ; $47cb: $1f
    jr nz, jr_082_47e1                            ; $47cc: $20 $13

    inc d                                         ; $47ce: $14
    jr c, jr_082_480a                             ; $47cf: $38 $39

    inc l                                         ; $47d1: $2c
    dec l                                         ; $47d2: $2d
    ld a, [hl-]                                   ; $47d3: $3a
    dec sp                                        ; $47d4: $3b
    jr nc, jr_082_4808                            ; $47d5: $30 $31

    ld [bc], a                                    ; $47d7: $02
    ld [bc], a                                    ; $47d8: $02
    dec b                                         ; $47d9: $05
    ld [bc], a                                    ; $47da: $02
    dec b                                         ; $47db: $05
    ld [bc], a                                    ; $47dc: $02
    ld [bc], a                                    ; $47dd: $02
    dec b                                         ; $47de: $05
    dec b                                         ; $47df: $05
    ld [bc], a                                    ; $47e0: $02

jr_082_47e1:
    ld [bc], a                                    ; $47e1: $02
    ld [bc], a                                    ; $47e2: $02
    ld [bc], a                                    ; $47e3: $02
    dec b                                         ; $47e4: $05
    ld [bc], a                                    ; $47e5: $02

jr_082_47e6:
    dec b                                         ; $47e6: $05
    ld de, $747d                                  ; $47e7: $11 $7d $74
    ld [hl], h                                    ; $47ea: $74
    dec d                                         ; $47eb: $15
    or h                                          ; $47ec: $b4
    xor a                                         ; $47ed: $af
    xor [hl]                                      ; $47ee: $ae
    ld l, $2f                                     ; $47ef: $2e $2f
    jr c, jr_082_482c                             ; $47f1: $38 $39

    ld [hl-], a                                   ; $47f3: $32

jr_082_47f4:
    inc sp                                        ; $47f4: $33
    ld a, [hl-]                                   ; $47f5: $3a
    dec sp                                        ; $47f6: $3b
    ld [bc], a                                    ; $47f7: $02
    ld hl, $2121                                  ; $47f8: $21 $21 $21
    inc bc                                        ; $47fb: $03
    add hl, hl                                    ; $47fc: $29
    add hl, hl                                    ; $47fd: $29
    add hl, bc                                    ; $47fe: $09
    inc bc                                        ; $47ff: $03
    inc bc                                        ; $4800: $03
    inc bc                                        ; $4801: $03
    inc bc                                        ; $4802: $03
    dec b                                         ; $4803: $05
    dec b                                         ; $4804: $05
    dec b                                         ; $4805: $05
    ld [bc], a                                    ; $4806: $02
    ld [hl], h                                    ; $4807: $74

jr_082_4808:
    ld [hl], h                                    ; $4808: $74
    xor e                                         ; $4809: $ab

jr_082_480a:
    sbc d                                         ; $480a: $9a
    xor a                                         ; $480b: $af
    xor [hl]                                      ; $480c: $ae
    xor l                                         ; $480d: $ad
    cp c                                          ; $480e: $b9
    inc l                                         ; $480f: $2c
    dec l                                         ; $4810: $2d
    or c                                          ; $4811: $b1
    and d                                         ; $4812: $a2
    jr nc, jr_082_4846                            ; $4813: $30 $31

jr_082_4815:
    or e                                          ; $4815: $b3
    and [hl]                                      ; $4816: $a6
    ld hl, $2921                                  ; $4817: $21 $21 $29
    add hl, bc                                    ; $481a: $09
    add hl, hl                                    ; $481b: $29
    add hl, bc                                    ; $481c: $09
    add hl, hl                                    ; $481d: $29
    add hl, bc                                    ; $481e: $09
    inc bc                                        ; $481f: $03
    inc bc                                        ; $4820: $03
    add hl, hl                                    ; $4821: $29
    add hl, bc                                    ; $4822: $09
    ld [bc], a                                    ; $4823: $02
    inc bc                                        ; $4824: $03
    add hl, hl                                    ; $4825: $29
    add hl, bc                                    ; $4826: $09
    inc [hl]                                      ; $4827: $34
    dec [hl]                                      ; $4828: $35
    ld [hl], $37                                  ; $4829: $36 $37
    dec bc                                        ; $482b: $0b

jr_082_482c:
    inc c                                         ; $482c: $0c
    dec c                                         ; $482d: $0d
    cp d                                          ; $482e: $ba
    dec h                                         ; $482f: $25
    dec h                                         ; $4830: $25
    cp e                                          ; $4831: $bb
    cp h                                          ; $4832: $bc
    cp l                                          ; $4833: $bd
    jr z, jr_082_47f4                             ; $4834: $28 $be

    cp a                                          ; $4836: $bf
    ld [bc], a                                    ; $4837: $02
    ld [bc], a                                    ; $4838: $02
    dec b                                         ; $4839: $05
    dec b                                         ; $483a: $05
    ld [bc], a                                    ; $483b: $02
    ld [bc], a                                    ; $483c: $02
    ld [bc], a                                    ; $483d: $02
    ld a, [bc]                                    ; $483e: $0a
    ld [bc], a                                    ; $483f: $02
    ld [bc], a                                    ; $4840: $02
    adc a                                         ; $4841: $8f
    adc a                                         ; $4842: $8f
    adc a                                         ; $4843: $8f
    ld [bc], a                                    ; $4844: $02
    rrca                                          ; $4845: $0f

jr_082_4846:
    adc a                                         ; $4846: $8f
    inc a                                         ; $4847: $3c
    dec a                                         ; $4848: $3d
    inc [hl]                                      ; $4849: $34
    dec [hl]                                      ; $484a: $35
    cp d                                          ; $484b: $ba
    inc e                                         ; $484c: $1c
    dec bc                                        ; $484d: $0b
    inc c                                         ; $484e: $0c
    ret nz                                        ; $484f: $c0

    add a                                         ; $4850: $87
    dec h                                         ; $4851: $25
    jr z, jr_082_4815                             ; $4852: $28 $c1

    jp nz, $bdc3                                  ; $4854: $c2 $c3 $bd

    ld [bc], a                                    ; $4857: $02
    dec b                                         ; $4858: $05
    ld [bc], a                                    ; $4859: $02
    ld [bc], a                                    ; $485a: $02
    ld a, [bc]                                    ; $485b: $0a
    dec b                                         ; $485c: $05
    dec b                                         ; $485d: $05
    dec b                                         ; $485e: $05
    adc a                                         ; $485f: $8f
    rrca                                          ; $4860: $0f
    ld [bc], a                                    ; $4861: $02
    ld [bc], a                                    ; $4862: $02
    adc a                                         ; $4863: $8f
    rrca                                          ; $4864: $0f
    ld a, [bc]                                    ; $4865: $0a
    xor a                                         ; $4866: $af
    ld [hl], $37                                  ; $4867: $36 $37
    inc a                                         ; $4869: $3c
    dec a                                         ; $486a: $3d
    dec c                                         ; $486b: $0d
    ld c, $1b                                     ; $486c: $0e $1b
    inc e                                         ; $486e: $1c
    ld de, $1d12                                  ; $486f: $11 $12 $1d
    ld e, $c3                                     ; $4872: $1e $c3
    ld d, $1f                                     ; $4874: $16 $1f
    jr nz, jr_082_487a                            ; $4876: $20 $02

    ld [bc], a                                    ; $4878: $02
    ld [bc], a                                    ; $4879: $02

jr_082_487a:
    dec b                                         ; $487a: $05
    ld [bc], a                                    ; $487b: $02
    dec b                                         ; $487c: $05
    ld [bc], a                                    ; $487d: $02
    dec b                                         ; $487e: $05
    ld [bc], a                                    ; $487f: $02
    ld [bc], a                                    ; $4880: $02
    ld [bc], a                                    ; $4881: $02
    ld [bc], a                                    ; $4882: $02
    ld a, [bc]                                    ; $4883: $0a
    ld [bc], a                                    ; $4884: $02
    ld [bc], a                                    ; $4885: $02
    dec b                                         ; $4886: $05
    inc [hl]                                      ; $4887: $34
    dec [hl]                                      ; $4888: $35
    inc bc                                        ; $4889: $03
    inc b                                         ; $488a: $04
    dec bc                                        ; $488b: $0b
    inc c                                         ; $488c: $0c
    jp nc, $0fd1                                  ; $488d: $d2 $d1 $0f

    db $10                                        ; $4890: $10
    jp nc, Jump_000_13d1                          ; $4891: $d2 $d1 $13

    inc d                                         ; $4894: $14
    ld a, $04                                     ; $4895: $3e $04
    ld [bc], a                                    ; $4897: $02
    inc bc                                        ; $4898: $03
    add b                                         ; $4899: $80
    add b                                         ; $489a: $80
    ld [bc], a                                    ; $489b: $02
    inc bc                                        ; $489c: $03
    add b                                         ; $489d: $80
    add b                                         ; $489e: $80
    ld [bc], a                                    ; $489f: $02
    inc bc                                        ; $48a0: $03
    add b                                         ; $48a1: $80
    add b                                         ; $48a2: $80
    dec b                                         ; $48a3: $05
    inc bc                                        ; $48a4: $03
    add b                                         ; $48a5: $80
    add b                                         ; $48a6: $80
    inc a                                         ; $48a7: $3c
    dec a                                         ; $48a8: $3d
    inc [hl]                                      ; $48a9: $34
    dec [hl]                                      ; $48aa: $35
    dec de                                        ; $48ab: $1b
    inc e                                         ; $48ac: $1c
    dec bc                                        ; $48ad: $0b
    inc c                                         ; $48ae: $0c
    ld [hl], h                                    ; $48af: $74
    ld [hl], h                                    ; $48b0: $74
    ld [hl], h                                    ; $48b1: $74
    ld [hl], h                                    ; $48b2: $74
    halt                                          ; $48b3: $76
    ld [hl], a                                    ; $48b4: $77
    ld a, b                                       ; $48b5: $78
    ld a, c                                       ; $48b6: $79
    ld [bc], a                                    ; $48b7: $02
    ld [bc], a                                    ; $48b8: $02
    ld [bc], a                                    ; $48b9: $02
    inc bc                                        ; $48ba: $03
    ld [bc], a                                    ; $48bb: $02
    ld [bc], a                                    ; $48bc: $02
    ld [bc], a                                    ; $48bd: $02
    inc bc                                        ; $48be: $03
    ld bc, $0101                                  ; $48bf: $01 $01 $01
    ld bc, $0101                                  ; $48c2: $01 $01 $01
    ld bc, $8201                                  ; $48c5: $01 $01 $82
    add e                                         ; $48c8: $83
    add h                                         ; $48c9: $84
    adc h                                         ; $48ca: $8c
    add e                                         ; $48cb: $83
    add [hl]                                      ; $48cc: $86
    add c                                         ; $48cd: $81
    add d                                         ; $48ce: $82
    add [hl]                                      ; $48cf: $86
    add c                                         ; $48d0: $81
    add d                                         ; $48d1: $82
    call nz, $8a89                                ; $48d2: $c4 $89 $8a
    adc e                                         ; $48d5: $8b
    sub h                                         ; $48d6: $94
    add hl, bc                                    ; $48d7: $09
    add hl, bc                                    ; $48d8: $09
    add hl, bc                                    ; $48d9: $09
    add hl, bc                                    ; $48da: $09
    add hl, bc                                    ; $48db: $09
    add hl, bc                                    ; $48dc: $09
    add hl, bc                                    ; $48dd: $09
    add hl, bc                                    ; $48de: $09
    add hl, bc                                    ; $48df: $09
    add hl, bc                                    ; $48e0: $09
    add hl, bc                                    ; $48e1: $09
    add hl, bc                                    ; $48e2: $09
    add hl, bc                                    ; $48e3: $09
    add hl, bc                                    ; $48e4: $09
    add hl, bc                                    ; $48e5: $09
    add hl, bc                                    ; $48e6: $09
    sbc e                                         ; $48e7: $9b
    sbc h                                         ; $48e8: $9c
    sbc l                                         ; $48e9: $9d
    xor d                                         ; $48ea: $aa
    push bc                                       ; $48eb: $c5
    add $c7                                       ; $48ec: $c6 $c7
    ret z                                         ; $48ee: $c8

    and e                                         ; $48ef: $a3
    and h                                         ; $48f0: $a4
    and l                                         ; $48f1: $a5
    or b                                          ; $48f2: $b0
    and a                                         ; $48f3: $a7
    xor b                                         ; $48f4: $a8
    xor c                                         ; $48f5: $a9
    or d                                          ; $48f6: $b2
    add hl, bc                                    ; $48f7: $09
    add hl, bc                                    ; $48f8: $09
    add hl, bc                                    ; $48f9: $09
    add hl, bc                                    ; $48fa: $09
    add hl, bc                                    ; $48fb: $09
    add hl, bc                                    ; $48fc: $09
    add hl, bc                                    ; $48fd: $09
    add hl, bc                                    ; $48fe: $09
    add hl, bc                                    ; $48ff: $09
    add hl, bc                                    ; $4900: $09
    add hl, bc                                    ; $4901: $09
    add hl, bc                                    ; $4902: $09
    add hl, bc                                    ; $4903: $09
    add hl, bc                                    ; $4904: $09
    add hl, bc                                    ; $4905: $09
    add hl, bc                                    ; $4906: $09
    dec b                                         ; $4907: $05
    pop de                                        ; $4908: $d1
    pop de                                        ; $4909: $d1
    pop de                                        ; $490a: $d1
    pop de                                        ; $490b: $d1
    pop de                                        ; $490c: $d1
    pop de                                        ; $490d: $d1
    pop de                                        ; $490e: $d1
    pop de                                        ; $490f: $d1
    pop de                                        ; $4910: $d1
    pop de                                        ; $4911: $d1
    pop de                                        ; $4912: $d1
    ld [hl], e                                    ; $4913: $73
    pop de                                        ; $4914: $d1
    pop de                                        ; $4915: $d1
    pop de                                        ; $4916: $d1
    add b                                         ; $4917: $80
    add b                                         ; $4918: $80
    add b                                         ; $4919: $80
    add b                                         ; $491a: $80
    add b                                         ; $491b: $80
    add b                                         ; $491c: $80
    add b                                         ; $491d: $80
    add b                                         ; $491e: $80
    add b                                         ; $491f: $80
    add b                                         ; $4920: $80
    add b                                         ; $4921: $80
    add b                                         ; $4922: $80
    add b                                         ; $4923: $80
    add b                                         ; $4924: $80
    add b                                         ; $4925: $80
    add b                                         ; $4926: $80
    db $d3                                        ; $4927: $d3
    call nc, $f4d5                                ; $4928: $d4 $d5 $f4
    rst $10                                       ; $492b: $d7
    ret c                                         ; $492c: $d8

    reti                                          ; $492d: $d9


jr_082_492e:
    ld hl, sp-$25                                 ; $492e: $f8 $db
    call c, $fcdd                                 ; $4930: $dc $dd $fc
    rst $18                                       ; $4933: $df
    ldh [$e1], a                                  ; $4934: $e0 $e1
    nop                                           ; $4936: $00
    ld bc, $0101                                  ; $4937: $01 $01 $01
    ld bc, $0101                                  ; $493a: $01 $01 $01
    ld bc, $0101                                  ; $493d: $01 $01 $01
    ld bc, $0101                                  ; $4940: $01 $01 $01
    ld bc, $0101                                  ; $4943: $01 $01 $01
    ld bc, $d6f5                                  ; $4946: $01 $f5 $d6
    inc l                                         ; $4949: $2c
    dec l                                         ; $494a: $2d
    ld sp, hl                                     ; $494b: $f9
    jp c, Jump_000_3130                           ; $494c: $da $30 $31

    db $fd                                        ; $494f: $fd
    sbc $34                                       ; $4950: $de $34
    dec [hl]                                      ; $4952: $35
    ld bc, $0be2                                  ; $4953: $01 $e2 $0b
    inc c                                         ; $4956: $0c
    ld bc, $0301                                  ; $4957: $01 $01 $03
    dec b                                         ; $495a: $05
    ld bc, $0301                                  ; $495b: $01 $01 $03
    ld [bc], a                                    ; $495e: $02
    ld bc, $0301                                  ; $495f: $01 $01 $03
    ld [bc], a                                    ; $4962: $02
    ld bc, $0301                                  ; $4963: $01 $01 $03
    ld [bc], a                                    ; $4966: $02
    ld l, $2f                                     ; $4967: $2e $2f
    jr c, jr_082_492e                             ; $4969: $38 $c3

    ld [hl-], a                                   ; $496b: $32
    inc sp                                        ; $496c: $33
    ld a, [hl-]                                   ; $496d: $3a
    dec sp                                        ; $496e: $3b
    ld [hl], $37                                  ; $496f: $36 $37
    inc a                                         ; $4971: $3c
    dec a                                         ; $4972: $3d
    dec c                                         ; $4973: $0d
    ld c, $1b                                     ; $4974: $0e $1b
    inc e                                         ; $4976: $1c
    ld [bc], a                                    ; $4977: $02
    ld [bc], a                                    ; $4978: $02
    ld [bc], a                                    ; $4979: $02
    ld a, [bc]                                    ; $497a: $0a
    dec b                                         ; $497b: $05
    dec b                                         ; $497c: $05
    ld [bc], a                                    ; $497d: $02
    ld [bc], a                                    ; $497e: $02
    ld [bc], a                                    ; $497f: $02
    ld [bc], a                                    ; $4980: $02
    ld [bc], a                                    ; $4981: $02
    ld [bc], a                                    ; $4982: $02
    ld [bc], a                                    ; $4983: $02
    ld [bc], a                                    ; $4984: $02
    dec b                                         ; $4985: $05
    ld [bc], a                                    ; $4986: $02
    rlca                                          ; $4987: $07
    ld [$2209], sp                                ; $4988: $08 $09 $22
    inc de                                        ; $498b: $13
    inc d                                         ; $498c: $14
    dec d                                         ; $498d: $15
    ld d, $2c                                     ; $498e: $16 $2c
    dec l                                         ; $4990: $2d
    ld l, $2f                                     ; $4991: $2e $2f
    jr nc, jr_082_49c6                            ; $4993: $30 $31

    ld [hl-], a                                   ; $4995: $32
    inc sp                                        ; $4996: $33
    ld bc, $0101                                  ; $4997: $01 $01 $01
    ld bc, $0303                                  ; $499a: $01 $03 $03
    inc bc                                        ; $499d: $03
    inc bc                                        ; $499e: $03
    inc bc                                        ; $499f: $03
    ld [bc], a                                    ; $49a0: $02
    dec b                                         ; $49a1: $05
    dec b                                         ; $49a2: $05
    inc bc                                        ; $49a3: $03
    ld [bc], a                                    ; $49a4: $02
    ld [bc], a                                    ; $49a5: $02
    ld [bc], a                                    ; $49a6: $02
    ld a, [hl+]                                   ; $49a7: $2a
    ld a, [bc]                                    ; $49a8: $0a
    rrca                                          ; $49a9: $0f
    db $10                                        ; $49aa: $10
    rra                                           ; $49ab: $1f
    jr nz, jr_082_49c1                            ; $49ac: $20 $13

    inc d                                         ; $49ae: $14
    jr c, jr_082_49ea                             ; $49af: $38 $39

    inc l                                         ; $49b1: $2c
    dec l                                         ; $49b2: $2d
    ld a, [hl-]                                   ; $49b3: $3a
    dec sp                                        ; $49b4: $3b
    jr nc, jr_082_49e8                            ; $49b5: $30 $31

    ld bc, $0301                                  ; $49b7: $01 $01 $03
    dec b                                         ; $49ba: $05
    inc bc                                        ; $49bb: $03
    inc bc                                        ; $49bc: $03
    inc bc                                        ; $49bd: $03
    ld [bc], a                                    ; $49be: $02
    ld [bc], a                                    ; $49bf: $02
    ld [bc], a                                    ; $49c0: $02

jr_082_49c1:
    ld [bc], a                                    ; $49c1: $02
    dec b                                         ; $49c2: $05
    ld [bc], a                                    ; $49c3: $02
    ld [bc], a                                    ; $49c4: $02
    dec b                                         ; $49c5: $05

jr_082_49c6:
    dec b                                         ; $49c6: $05
    ld de, $1d12                                  ; $49c7: $11 $12 $1d
    ld e, $15                                     ; $49ca: $1e $15
    ld d, $1f                                     ; $49cc: $16 $1f
    jr nz, @+$30                                  ; $49ce: $20 $2e

    cpl                                           ; $49d0: $2f
    jr c, jr_082_4a0c                             ; $49d1: $38 $39

    ld [hl-], a                                   ; $49d3: $32
    inc sp                                        ; $49d4: $33
    ld a, [hl-]                                   ; $49d5: $3a
    dec sp                                        ; $49d6: $3b
    dec b                                         ; $49d7: $05
    ld [bc], a                                    ; $49d8: $02
    ld [bc], a                                    ; $49d9: $02
    dec b                                         ; $49da: $05
    ld [bc], a                                    ; $49db: $02
    ld [bc], a                                    ; $49dc: $02
    ld [bc], a                                    ; $49dd: $02
    ld [bc], a                                    ; $49de: $02
    ld [bc], a                                    ; $49df: $02
    ld [bc], a                                    ; $49e0: $02
    dec b                                         ; $49e1: $05
    ld [bc], a                                    ; $49e2: $02
    dec b                                         ; $49e3: $05
    ld [bc], a                                    ; $49e4: $02
    ld [bc], a                                    ; $49e5: $02
    ld [bc], a                                    ; $49e6: $02
    pop de                                        ; $49e7: $d1

jr_082_49e8:
    inc bc                                        ; $49e8: $03
    inc b                                         ; $49e9: $04

jr_082_49ea:
    dec b                                         ; $49ea: $05
    pop de                                        ; $49eb: $d1
    jp nc, $d6f5                                  ; $49ec: $d2 $f5 $d6

    pop de                                        ; $49ef: $d1
    ld b, $f9                                     ; $49f0: $06 $f9
    jp c, Jump_000_06d1                           ; $49f2: $da $d1 $06

    db $fd                                        ; $49f5: $fd
    sbc $80                                       ; $49f6: $de $80
    add b                                         ; $49f8: $80
    add b                                         ; $49f9: $80
    add b                                         ; $49fa: $80
    add b                                         ; $49fb: $80
    add b                                         ; $49fc: $80
    ld bc, $8001                                  ; $49fd: $01 $01 $80
    add b                                         ; $4a00: $80
    ld bc, $8001                                  ; $4a01: $01 $01 $80
    add b                                         ; $4a04: $80
    ld bc, $3d01                                  ; $4a05: $01 $01 $3d
    inc [hl]                                      ; $4a08: $34
    dec [hl]                                      ; $4a09: $35
    ld [hl], $1c                                  ; $4a0a: $36 $1c

jr_082_4a0c:
    dec bc                                        ; $4a0c: $0b
    inc c                                         ; $4a0d: $0c
    dec c                                         ; $4a0e: $0d
    ld e, $0f                                     ; $4a0f: $1e $0f
    db $10                                        ; $4a11: $10
    ld de, $1413                                  ; $4a12: $11 $13 $14
    dec d                                         ; $4a15: $15
    ld d, $03                                     ; $4a16: $16 $03
    ld [bc], a                                    ; $4a18: $02
    ld [bc], a                                    ; $4a19: $02
    ld [bc], a                                    ; $4a1a: $02
    inc bc                                        ; $4a1b: $03
    ld [bc], a                                    ; $4a1c: $02
    ld [bc], a                                    ; $4a1d: $02
    dec b                                         ; $4a1e: $05
    inc bc                                        ; $4a1f: $03
    dec b                                         ; $4a20: $05
    ld [bc], a                                    ; $4a21: $02
    ld [bc], a                                    ; $4a22: $02
    inc bc                                        ; $4a23: $03
    ld [bc], a                                    ; $4a24: $02
    ld [bc], a                                    ; $4a25: $02
    dec b                                         ; $4a26: $05
    inc a                                         ; $4a27: $3c
    dec a                                         ; $4a28: $3d
    inc [hl]                                      ; $4a29: $34
    dec [hl]                                      ; $4a2a: $35
    dec de                                        ; $4a2b: $1b
    inc e                                         ; $4a2c: $1c
    dec bc                                        ; $4a2d: $0b
    inc c                                         ; $4a2e: $0c
    dec e                                         ; $4a2f: $1d
    ld e, $0f                                     ; $4a30: $1e $0f
    db $10                                        ; $4a32: $10
    rra                                           ; $4a33: $1f
    jr nz, jr_082_4a49                            ; $4a34: $20 $13

    inc d                                         ; $4a36: $14
    ld [bc], a                                    ; $4a37: $02
    dec b                                         ; $4a38: $05
    ld [bc], a                                    ; $4a39: $02
    ld [bc], a                                    ; $4a3a: $02
    dec b                                         ; $4a3b: $05
    ld [bc], a                                    ; $4a3c: $02
    dec b                                         ; $4a3d: $05
    ld [bc], a                                    ; $4a3e: $02
    ld [bc], a                                    ; $4a3f: $02
    ld [bc], a                                    ; $4a40: $02
    ld [bc], a                                    ; $4a41: $02
    dec b                                         ; $4a42: $05
    dec b                                         ; $4a43: $05
    ld [bc], a                                    ; $4a44: $02
    dec b                                         ; $4a45: $05
    ld [bc], a                                    ; $4a46: $02
    ld [hl], $37                                  ; $4a47: $36 $37

Jump_082_4a49:
jr_082_4a49:
    inc a                                         ; $4a49: $3c
    dec a                                         ; $4a4a: $3d
    dec c                                         ; $4a4b: $0d
    ld c, $1b                                     ; $4a4c: $0e $1b
    inc e                                         ; $4a4e: $1c
    ld de, $1d12                                  ; $4a4f: $11 $12 $1d
    ld e, $15                                     ; $4a52: $1e $15
    ld d, $1f                                     ; $4a54: $16 $1f
    jr nz, jr_082_4a5a                            ; $4a56: $20 $02

    ld [bc], a                                    ; $4a58: $02
    ld [bc], a                                    ; $4a59: $02

jr_082_4a5a:
    ld [bc], a                                    ; $4a5a: $02
    ld [bc], a                                    ; $4a5b: $02
    dec b                                         ; $4a5c: $05
    dec b                                         ; $4a5d: $05
    ld [bc], a                                    ; $4a5e: $02
    ld [bc], a                                    ; $4a5f: $02
    ld [bc], a                                    ; $4a60: $02
    ld [bc], a                                    ; $4a61: $02
    dec b                                         ; $4a62: $05
    ld [bc], a                                    ; $4a63: $02
    dec b                                         ; $4a64: $05
    dec b                                         ; $4a65: $05
    dec b                                         ; $4a66: $05
    pop de                                        ; $4a67: $d1
    ld b, $01                                     ; $4a68: $06 $01
    ld [c], a                                     ; $4a6a: $e2
    pop de                                        ; $4a6b: $d1
    ld b, $2a                                     ; $4a6c: $06 $2a
    ld a, [bc]                                    ; $4a6e: $0a
    dec hl                                        ; $4a6f: $2b
    ld b, $c9                                     ; $4a70: $06 $c9
    jp z, $d22b                                   ; $4a72: $ca $2b $d2

    set 1, h                                      ; $4a75: $cb $cc
    add b                                         ; $4a77: $80
    add b                                         ; $4a78: $80
    ld bc, $8001                                  ; $4a79: $01 $01 $80
    add b                                         ; $4a7c: $80
    ld bc, $8001                                  ; $4a7d: $01 $01 $80
    add b                                         ; $4a80: $80
    ld c, $0e                                     ; $4a81: $0e $0e
    add b                                         ; $4a83: $80
    add b                                         ; $4a84: $80
    ld c, $0e                                     ; $4a85: $0e $0e
    jr z, jr_082_4ab2                             ; $4a87: $28 $29

    ld l, $2f                                     ; $4a89: $2e $2f
    call $cfce                                    ; $4a8b: $cd $ce $cf
    cp d                                          ; $4a8e: $ba
    ret nc                                        ; $4a8f: $d0

    pop de                                        ; $4a90: $d1
    jp nc, $d36a                                  ; $4a91: $d2 $6a $d3

    call nc, Call_000_29d5                        ; $4a94: $d4 $d5 $29
    inc bc                                        ; $4a97: $03
    ld [bc], a                                    ; $4a98: $02
    ld [bc], a                                    ; $4a99: $02
    ld [bc], a                                    ; $4a9a: $02
    ld c, $0e                                     ; $4a9b: $0e $0e
    ld c, $0a                                     ; $4a9d: $0e $0a
    ld c, $0e                                     ; $4a9f: $0e $0e
    ld c, $02                                     ; $4aa1: $0e $02
    ld c, $0e                                     ; $4aa3: $0e $0e
    ld c, $02                                     ; $4aa5: $0e $02
    jr c, jr_082_4ae2                             ; $4aa7: $38 $39

    inc l                                         ; $4aa9: $2c
    dec l                                         ; $4aaa: $2d
    ld a, [hl-]                                   ; $4aab: $3a
    dec sp                                        ; $4aac: $3b
    jr nc, jr_082_4ae0                            ; $4aad: $30 $31

    inc a                                         ; $4aaf: $3c
    dec a                                         ; $4ab0: $3d
    inc [hl]                                      ; $4ab1: $34

jr_082_4ab2:
    dec [hl]                                      ; $4ab2: $35
    dec de                                        ; $4ab3: $1b
    inc e                                         ; $4ab4: $1c
    dec bc                                        ; $4ab5: $0b
    inc c                                         ; $4ab6: $0c
    ld [bc], a                                    ; $4ab7: $02
    ld [bc], a                                    ; $4ab8: $02
    ld [bc], a                                    ; $4ab9: $02
    ld [bc], a                                    ; $4aba: $02
    dec b                                         ; $4abb: $05
    dec b                                         ; $4abc: $05
    ld [bc], a                                    ; $4abd: $02
    ld [bc], a                                    ; $4abe: $02
    ld [bc], a                                    ; $4abf: $02
    ld [bc], a                                    ; $4ac0: $02
    ld [bc], a                                    ; $4ac1: $02
    dec b                                         ; $4ac2: $05
    ld [bc], a                                    ; $4ac3: $02
    ld [bc], a                                    ; $4ac4: $02
    dec b                                         ; $4ac5: $05
    dec b                                         ; $4ac6: $05
    ld l, $2f                                     ; $4ac7: $2e $2f
    jr c, jr_082_4b04                             ; $4ac9: $38 $39

    ld [hl-], a                                   ; $4acb: $32
    inc sp                                        ; $4acc: $33
    ld a, [hl-]                                   ; $4acd: $3a
    dec sp                                        ; $4ace: $3b
    ld [hl], $37                                  ; $4acf: $36 $37
    inc a                                         ; $4ad1: $3c
    dec a                                         ; $4ad2: $3d
    dec c                                         ; $4ad3: $0d
    ld c, $1b                                     ; $4ad4: $0e $1b
    inc e                                         ; $4ad6: $1c
    dec b                                         ; $4ad7: $05
    ld [bc], a                                    ; $4ad8: $02
    ld [bc], a                                    ; $4ad9: $02
    ld [bc], a                                    ; $4ada: $02
    ld [bc], a                                    ; $4adb: $02
    ld [bc], a                                    ; $4adc: $02
    dec b                                         ; $4add: $05
    dec b                                         ; $4ade: $05
    dec b                                         ; $4adf: $05

jr_082_4ae0:
    ld [bc], a                                    ; $4ae0: $02
    ld [bc], a                                    ; $4ae1: $02

jr_082_4ae2:
    ld [bc], a                                    ; $4ae2: $02
    ld [bc], a                                    ; $4ae3: $02
    ld [bc], a                                    ; $4ae4: $02
    ld [bc], a                                    ; $4ae5: $02
    ld [bc], a                                    ; $4ae6: $02
    sub $d7                                       ; $4ae7: $d6 $d7
    ret c                                         ; $4ae9: $d8

    reti                                          ; $4aea: $d9


    jp c, $dcdb                                   ; $4aeb: $da $db $dc

    db $dd                                        ; $4aee: $dd
    ld l, d                                       ; $4aef: $6a
    sbc $df                                       ; $4af0: $de $df
    ldh [$0b], a                                  ; $4af2: $e0 $0b
    add hl, hl                                    ; $4af4: $29
    pop hl                                        ; $4af5: $e1
    ld [c], a                                     ; $4af6: $e2
    adc a                                         ; $4af7: $8f
    adc a                                         ; $4af8: $8f
    adc a                                         ; $4af9: $8f
    rrca                                          ; $4afa: $0f
    adc a                                         ; $4afb: $8f
    adc a                                         ; $4afc: $8f
    adc a                                         ; $4afd: $8f
    rrca                                          ; $4afe: $0f
    ld [bc], a                                    ; $4aff: $02
    adc a                                         ; $4b00: $8f
    adc a                                         ; $4b01: $8f
    rrca                                          ; $4b02: $0f
    ld [bc], a                                    ; $4b03: $02

jr_082_4b04:
    ld [bc], a                                    ; $4b04: $02
    rrca                                          ; $4b05: $0f
    rrca                                          ; $4b06: $0f
    reti                                          ; $4b07: $d9


    db $e3                                        ; $4b08: $e3
    rst $10                                       ; $4b09: $d7
    sub $dd                                       ; $4b0a: $d6 $dd
    call c, $dadb                                 ; $4b0c: $dc $db $da
    db $e4                                        ; $4b0f: $e4
    push hl                                       ; $4b10: $e5
    sbc $6a                                       ; $4b11: $de $6a
    ld [c], a                                     ; $4b13: $e2
    and $29                                       ; $4b14: $e6 $29
    inc c                                         ; $4b16: $0c
    cpl                                           ; $4b17: $2f
    adc a                                         ; $4b18: $8f
    xor a                                         ; $4b19: $af
    xor a                                         ; $4b1a: $af
    cpl                                           ; $4b1b: $2f
    xor a                                         ; $4b1c: $af
    xor a                                         ; $4b1d: $af
    xor a                                         ; $4b1e: $af
    rrca                                          ; $4b1f: $0f
    adc a                                         ; $4b20: $8f
    xor a                                         ; $4b21: $af
    ld [bc], a                                    ; $4b22: $02
    cpl                                           ; $4b23: $2f
    rrca                                          ; $4b24: $0f
    ld [bc], a                                    ; $4b25: $02
    ld [bc], a                                    ; $4b26: $02
    cp d                                          ; $4b27: $ba
    cpl                                           ; $4b28: $2f
    jr c, jr_082_4b64                             ; $4b29: $38 $39

    ld [hl-], a                                   ; $4b2b: $32
    inc sp                                        ; $4b2c: $33
    ld a, [hl-]                                   ; $4b2d: $3a
    dec sp                                        ; $4b2e: $3b
    ld [hl], $37                                  ; $4b2f: $36 $37
    inc a                                         ; $4b31: $3c
    dec a                                         ; $4b32: $3d
    dec c                                         ; $4b33: $0d
    ld c, $1b                                     ; $4b34: $0e $1b
    inc e                                         ; $4b36: $1c
    ld a, [bc]                                    ; $4b37: $0a
    ld [bc], a                                    ; $4b38: $02
    ld [bc], a                                    ; $4b39: $02
    ld [bc], a                                    ; $4b3a: $02
    ld [bc], a                                    ; $4b3b: $02
    ld [bc], a                                    ; $4b3c: $02
    dec b                                         ; $4b3d: $05
    dec b                                         ; $4b3e: $05
    ld [bc], a                                    ; $4b3f: $02
    ld [bc], a                                    ; $4b40: $02
    ld [bc], a                                    ; $4b41: $02
    ld [bc], a                                    ; $4b42: $02
    dec b                                         ; $4b43: $05
    dec b                                         ; $4b44: $05
    ld [bc], a                                    ; $4b45: $02
    ld [bc], a                                    ; $4b46: $02
    inc l                                         ; $4b47: $2c
    dec l                                         ; $4b48: $2d
    di                                            ; $4b49: $f3
    or $30                                        ; $4b4a: $f6 $30
    ld sp, $faf7                                  ; $4b4c: $31 $f7 $fa
    inc [hl]                                      ; $4b4f: $34
    dec [hl]                                      ; $4b50: $35

jr_082_4b51:
    ei                                            ; $4b51: $fb
    cp $0b                                        ; $4b52: $fe $0b
    inc c                                         ; $4b54: $0c
    rst $38                                       ; $4b55: $ff
    ld [bc], a                                    ; $4b56: $02
    ld [bc], a                                    ; $4b57: $02
    inc bc                                        ; $4b58: $03
    ld bc, $0201                                  ; $4b59: $01 $01 $02
    inc bc                                        ; $4b5c: $03
    ld bc, $0201                                  ; $4b5d: $01 $01 $02
    inc bc                                        ; $4b60: $03
    ld bc, $0201                                  ; $4b61: $01 $01 $02

jr_082_4b64:
    inc bc                                        ; $4b64: $03
    ld bc, $0f01                                  ; $4b65: $01 $01 $0f
    jr z, jr_082_4b51                             ; $4b68: $28 $e7

    add sp, $13                                   ; $4b6a: $e8 $13
    inc d                                         ; $4b6c: $14
    jp hl                                         ; $4b6d: $e9


    ld [$2d2c], a                                 ; $4b6e: $ea $2c $2d
    ld l, $2f                                     ; $4b71: $2e $2f
    jr nc, jr_082_4ba6                            ; $4b73: $30 $31

    ld [hl-], a                                   ; $4b75: $32
    inc sp                                        ; $4b76: $33
    ld [bc], a                                    ; $4b77: $02
    ld [bc], a                                    ; $4b78: $02
    rrca                                          ; $4b79: $0f
    rrca                                          ; $4b7a: $0f
    ld [bc], a                                    ; $4b7b: $02
    ld [bc], a                                    ; $4b7c: $02
    rrca                                          ; $4b7d: $0f
    rrca                                          ; $4b7e: $0f
    ld [bc], a                                    ; $4b7f: $02
    ld [bc], a                                    ; $4b80: $02
    inc bc                                        ; $4b81: $03
    inc bc                                        ; $4b82: $03
    dec b                                         ; $4b83: $05
    ld [bc], a                                    ; $4b84: $02
    ld [bc], a                                    ; $4b85: $02
    ld [bc], a                                    ; $4b86: $02
    db $eb                                        ; $4b87: $eb
    db $ec                                        ; $4b88: $ec
    jr z, jr_082_4b9b                             ; $4b89: $28 $10

    db $ed                                        ; $4b8b: $ed
    xor $13                                       ; $4b8c: $ee $13
    inc d                                         ; $4b8e: $14
    jr c, @+$3b                                   ; $4b8f: $38 $39

    inc l                                         ; $4b91: $2c
    dec l                                         ; $4b92: $2d
    ld a, [hl-]                                   ; $4b93: $3a
    dec sp                                        ; $4b94: $3b
    jr nc, jr_082_4bc8                            ; $4b95: $30 $31

    rrca                                          ; $4b97: $0f
    rrca                                          ; $4b98: $0f
    ld [bc], a                                    ; $4b99: $02
    ld [bc], a                                    ; $4b9a: $02

jr_082_4b9b:
    rrca                                          ; $4b9b: $0f
    rrca                                          ; $4b9c: $0f
    ld [bc], a                                    ; $4b9d: $02
    ld [bc], a                                    ; $4b9e: $02
    inc bc                                        ; $4b9f: $03
    inc bc                                        ; $4ba0: $03
    ld [bc], a                                    ; $4ba1: $02
    dec b                                         ; $4ba2: $05
    dec b                                         ; $4ba3: $05
    ld [bc], a                                    ; $4ba4: $02
    ld [bc], a                                    ; $4ba5: $02

jr_082_4ba6:
    ld [bc], a                                    ; $4ba6: $02
    ld de, $1d12                                  ; $4ba7: $11 $12 $1d
    ld e, $15                                     ; $4baa: $1e $15
    ld d, $1f                                     ; $4bac: $16 $1f
    jr nz, jr_082_4bde                            ; $4bae: $20 $2e

    cpl                                           ; $4bb0: $2f
    jr c, jr_082_4bec                             ; $4bb1: $38 $39

    ld [hl-], a                                   ; $4bb3: $32
    inc sp                                        ; $4bb4: $33
    ld a, [hl-]                                   ; $4bb5: $3a
    dec sp                                        ; $4bb6: $3b
    ld [bc], a                                    ; $4bb7: $02
    ld [bc], a                                    ; $4bb8: $02
    ld [bc], a                                    ; $4bb9: $02
    dec b                                         ; $4bba: $05
    ld [bc], a                                    ; $4bbb: $02
    dec b                                         ; $4bbc: $05
    ld [bc], a                                    ; $4bbd: $02
    ld [bc], a                                    ; $4bbe: $02
    ld [bc], a                                    ; $4bbf: $02
    ld [bc], a                                    ; $4bc0: $02
    dec b                                         ; $4bc1: $05
    ld [bc], a                                    ; $4bc2: $02
    dec b                                         ; $4bc3: $05
    dec b                                         ; $4bc4: $05
    ld [bc], a                                    ; $4bc5: $02
    ld [bc], a                                    ; $4bc6: $02
    rrca                                          ; $4bc7: $0f

jr_082_4bc8:
    db $10                                        ; $4bc8: $10
    ld hl, $1372                                  ; $4bc9: $21 $72 $13
    inc d                                         ; $4bcc: $14
    dec d                                         ; $4bcd: $15
    ld d, $2c                                     ; $4bce: $16 $2c
    dec l                                         ; $4bd0: $2d
    ld l, $2f                                     ; $4bd1: $2e $2f
    jr nc, jr_082_4c06                            ; $4bd3: $30 $31

    ld [hl-], a                                   ; $4bd5: $32

Call_082_4bd6:
    inc sp                                        ; $4bd6: $33
    ld [bc], a                                    ; $4bd7: $02
    inc bc                                        ; $4bd8: $03
    ld bc, $0201                                  ; $4bd9: $01 $01 $02
    inc bc                                        ; $4bdc: $03
    inc bc                                        ; $4bdd: $03

jr_082_4bde:
    inc bc                                        ; $4bde: $03
    ld [bc], a                                    ; $4bdf: $02
    ld [bc], a                                    ; $4be0: $02
    ld [bc], a                                    ; $4be1: $02
    ld [bc], a                                    ; $4be2: $02
    dec b                                         ; $4be3: $05
    dec b                                         ; $4be4: $05
    ld [bc], a                                    ; $4be5: $02
    dec b                                         ; $4be6: $05
    inc [hl]                                      ; $4be7: $34
    dec [hl]                                      ; $4be8: $35
    ld [hl], $37                                  ; $4be9: $36 $37
    dec bc                                        ; $4beb: $0b

jr_082_4bec:
    inc c                                         ; $4bec: $0c
    dec c                                         ; $4bed: $0d
    ld c, $0f                                     ; $4bee: $0e $0f
    db $10                                        ; $4bf0: $10
    ld de, $1312                                  ; $4bf1: $11 $12 $13
    inc d                                         ; $4bf4: $14
    dec d                                         ; $4bf5: $15
    ld d, $02                                     ; $4bf6: $16 $02
    dec b                                         ; $4bf8: $05
    ld [bc], a                                    ; $4bf9: $02
    dec b                                         ; $4bfa: $05
    dec b                                         ; $4bfb: $05
    ld [bc], a                                    ; $4bfc: $02
    ld [bc], a                                    ; $4bfd: $02
    ld [bc], a                                    ; $4bfe: $02
    ld [bc], a                                    ; $4bff: $02
    ld [bc], a                                    ; $4c00: $02
    ld [bc], a                                    ; $4c01: $02
    dec b                                         ; $4c02: $05
    ld [bc], a                                    ; $4c03: $02
    dec b                                         ; $4c04: $05
    ld [bc], a                                    ; $4c05: $02

jr_082_4c06:
    ld [bc], a                                    ; $4c06: $02
    inc a                                         ; $4c07: $3c
    dec a                                         ; $4c08: $3d
    inc [hl]                                      ; $4c09: $34
    dec [hl]                                      ; $4c0a: $35
    dec de                                        ; $4c0b: $1b
    inc e                                         ; $4c0c: $1c
    dec bc                                        ; $4c0d: $0b
    inc c                                         ; $4c0e: $0c
    dec e                                         ; $4c0f: $1d
    ld e, $0f                                     ; $4c10: $1e $0f
    db $10                                        ; $4c12: $10
    rra                                           ; $4c13: $1f
    jr nz, jr_082_4c29                            ; $4c14: $20 $13

    inc d                                         ; $4c16: $14
    ld [bc], a                                    ; $4c17: $02
    dec b                                         ; $4c18: $05
    ld [bc], a                                    ; $4c19: $02
    ld [bc], a                                    ; $4c1a: $02
    ld [bc], a                                    ; $4c1b: $02
    ld [bc], a                                    ; $4c1c: $02
    ld [bc], a                                    ; $4c1d: $02
    dec b                                         ; $4c1e: $05
    dec b                                         ; $4c1f: $05
    dec b                                         ; $4c20: $05
    dec b                                         ; $4c21: $05
    ld [bc], a                                    ; $4c22: $02
    dec b                                         ; $4c23: $05
    dec b                                         ; $4c24: $05
    ld [bc], a                                    ; $4c25: $02
    ld [bc], a                                    ; $4c26: $02
    ld [hl], $37                                  ; $4c27: $36 $37

jr_082_4c29:
    inc a                                         ; $4c29: $3c
    dec a                                         ; $4c2a: $3d
    dec c                                         ; $4c2b: $0d
    ld c, $1b                                     ; $4c2c: $0e $1b
    inc e                                         ; $4c2e: $1c
    ld de, $1d12                                  ; $4c2f: $11 $12 $1d
    ld e, $15                                     ; $4c32: $1e $15
    ld d, $1f                                     ; $4c34: $16 $1f
    jr nz, jr_082_4c3a                            ; $4c36: $20 $02

    ld [bc], a                                    ; $4c38: $02
    ld [bc], a                                    ; $4c39: $02

jr_082_4c3a:
    ld [bc], a                                    ; $4c3a: $02
    ld [bc], a                                    ; $4c3b: $02
    dec b                                         ; $4c3c: $05
    ld [bc], a                                    ; $4c3d: $02
    dec b                                         ; $4c3e: $05
    ld [bc], a                                    ; $4c3f: $02
    ld [bc], a                                    ; $4c40: $02
    dec b                                         ; $4c41: $05
    dec b                                         ; $4c42: $05
    dec b                                         ; $4c43: $05
    dec b                                         ; $4c44: $05
    ld [bc], a                                    ; $4c45: $02
    ld [bc], a                                    ; $4c46: $02
    inc [hl]                                      ; $4c47: $34
    dec [hl]                                      ; $4c48: $35
    ld [hl], $37                                  ; $4c49: $36 $37
    dec bc                                        ; $4c4b: $0b
    inc c                                         ; $4c4c: $0c
    dec c                                         ; $4c4d: $0d
    ld c, $0f                                     ; $4c4e: $0e $0f
    db $10                                        ; $4c50: $10
    ld de, $1312                                  ; $4c51: $11 $12 $13
    inc d                                         ; $4c54: $14
    dec d                                         ; $4c55: $15
    ld d, $02                                     ; $4c56: $16 $02
    ld [bc], a                                    ; $4c58: $02
    ld [bc], a                                    ; $4c59: $02
    ld [bc], a                                    ; $4c5a: $02
    dec b                                         ; $4c5b: $05
    dec b                                         ; $4c5c: $05
    dec b                                         ; $4c5d: $05
    dec b                                         ; $4c5e: $05
    ld [bc], a                                    ; $4c5f: $02
    ld [bc], a                                    ; $4c60: $02
    dec b                                         ; $4c61: $05
    ld [bc], a                                    ; $4c62: $02
    dec b                                         ; $4c63: $05
    dec b                                         ; $4c64: $05
    ld [bc], a                                    ; $4c65: $02
    dec b                                         ; $4c66: $05
    inc l                                         ; $4c67: $2c
    dec l                                         ; $4c68: $2d
    ld l, $2f                                     ; $4c69: $2e $2f
    jr nc, jr_082_4c9e                            ; $4c6b: $30 $31

    ld [hl-], a                                   ; $4c6d: $32
    inc sp                                        ; $4c6e: $33
    inc [hl]                                      ; $4c6f: $34
    dec [hl]                                      ; $4c70: $35
    ld [hl], $37                                  ; $4c71: $36 $37
    dec bc                                        ; $4c73: $0b
    inc c                                         ; $4c74: $0c
    dec c                                         ; $4c75: $0d
    ld c, $02                                     ; $4c76: $0e $02
    ld [bc], a                                    ; $4c78: $02
    ld [bc], a                                    ; $4c79: $02
    ld [bc], a                                    ; $4c7a: $02
    dec b                                         ; $4c7b: $05
    ld [bc], a                                    ; $4c7c: $02
    ld [bc], a                                    ; $4c7d: $02
    dec b                                         ; $4c7e: $05
    dec b                                         ; $4c7f: $05
    dec b                                         ; $4c80: $05
    ld [bc], a                                    ; $4c81: $02
    ld [bc], a                                    ; $4c82: $02
    ld [bc], a                                    ; $4c83: $02
    ld [bc], a                                    ; $4c84: $02
    dec b                                         ; $4c85: $05
    dec b                                         ; $4c86: $05
    jr c, jr_082_4cc2                             ; $4c87: $38 $39

    inc l                                         ; $4c89: $2c
    dec l                                         ; $4c8a: $2d
    ld a, [hl-]                                   ; $4c8b: $3a
    dec sp                                        ; $4c8c: $3b
    jr nc, jr_082_4cc0                            ; $4c8d: $30 $31

    inc a                                         ; $4c8f: $3c
    dec a                                         ; $4c90: $3d
    inc [hl]                                      ; $4c91: $34
    dec [hl]                                      ; $4c92: $35
    dec de                                        ; $4c93: $1b
    inc e                                         ; $4c94: $1c
    dec bc                                        ; $4c95: $0b
    inc c                                         ; $4c96: $0c
    ld [bc], a                                    ; $4c97: $02
    ld [bc], a                                    ; $4c98: $02
    ld [bc], a                                    ; $4c99: $02
    ld [bc], a                                    ; $4c9a: $02
    dec b                                         ; $4c9b: $05
    ld [bc], a                                    ; $4c9c: $02
    ld [bc], a                                    ; $4c9d: $02

jr_082_4c9e:
    ld [bc], a                                    ; $4c9e: $02
    ld [bc], a                                    ; $4c9f: $02
    dec b                                         ; $4ca0: $05
    dec b                                         ; $4ca1: $05
    dec b                                         ; $4ca2: $05
    ld [bc], a                                    ; $4ca3: $02
    dec b                                         ; $4ca4: $05
    ld [bc], a                                    ; $4ca5: $02
    ld [bc], a                                    ; $4ca6: $02
    ld l, $2f                                     ; $4ca7: $2e $2f
    jr c, jr_082_4ce4                             ; $4ca9: $38 $39

    ld [hl-], a                                   ; $4cab: $32
    inc sp                                        ; $4cac: $33
    ld a, [hl-]                                   ; $4cad: $3a
    dec sp                                        ; $4cae: $3b
    ld [hl], $37                                  ; $4caf: $36 $37
    inc a                                         ; $4cb1: $3c
    dec a                                         ; $4cb2: $3d
    dec c                                         ; $4cb3: $0d
    ld c, $1b                                     ; $4cb4: $0e $1b
    inc e                                         ; $4cb6: $1c
    dec b                                         ; $4cb7: $05
    dec b                                         ; $4cb8: $05
    ld [bc], a                                    ; $4cb9: $02
    ld [bc], a                                    ; $4cba: $02
    ld [bc], a                                    ; $4cbb: $02
    ld [bc], a                                    ; $4cbc: $02
    ld [bc], a                                    ; $4cbd: $02
    ld [bc], a                                    ; $4cbe: $02
    ld [bc], a                                    ; $4cbf: $02

jr_082_4cc0:
    ld [bc], a                                    ; $4cc0: $02
    ld [bc], a                                    ; $4cc1: $02

jr_082_4cc2:
    dec b                                         ; $4cc2: $05
    ld [bc], a                                    ; $4cc3: $02
    ld [bc], a                                    ; $4cc4: $02
    ld [bc], a                                    ; $4cc5: $02
    ld [bc], a                                    ; $4cc6: $02
    inc l                                         ; $4cc7: $2c
    dec l                                         ; $4cc8: $2d
    ld l, $2f                                     ; $4cc9: $2e $2f
    jr nc, @+$33                                  ; $4ccb: $30 $31

    ld [hl-], a                                   ; $4ccd: $32
    inc sp                                        ; $4cce: $33
    inc [hl]                                      ; $4ccf: $34
    dec [hl]                                      ; $4cd0: $35
    ld [hl], $37                                  ; $4cd1: $36 $37
    dec bc                                        ; $4cd3: $0b
    inc c                                         ; $4cd4: $0c
    dec c                                         ; $4cd5: $0d
    ld c, $02                                     ; $4cd6: $0e $02
    ld [bc], a                                    ; $4cd8: $02
    dec b                                         ; $4cd9: $05
    dec b                                         ; $4cda: $05
    dec b                                         ; $4cdb: $05
    dec b                                         ; $4cdc: $05
    ld [bc], a                                    ; $4cdd: $02
    ld [bc], a                                    ; $4cde: $02
    ld [bc], a                                    ; $4cdf: $02
    ld [bc], a                                    ; $4ce0: $02
    dec b                                         ; $4ce1: $05
    dec b                                         ; $4ce2: $05
    ld [bc], a                                    ; $4ce3: $02

jr_082_4ce4:
    ld [bc], a                                    ; $4ce4: $02
    ld [bc], a                                    ; $4ce5: $02
    ld [bc], a                                    ; $4ce6: $02
    db $d3                                        ; $4ce7: $d3
    call nc, $f6d5                                ; $4ce8: $d4 $d5 $f6
    rst $10                                       ; $4ceb: $d7
    ret c                                         ; $4cec: $d8

    reti                                          ; $4ced: $d9


    ld a, [$dcdb]                                 ; $4cee: $fa $db $dc
    db $dd                                        ; $4cf1: $dd
    cp $df                                        ; $4cf2: $fe $df
    ldh [$e1], a                                  ; $4cf4: $e0 $e1
    ld [bc], a                                    ; $4cf6: $02
    ld bc, $0101                                  ; $4cf7: $01 $01 $01
    ld bc, $0101                                  ; $4cfa: $01 $01 $01
    ld bc, $0101                                  ; $4cfd: $01 $01 $01
    ld bc, $0101                                  ; $4d00: $01 $01 $01
    ld bc, $0101                                  ; $4d03: $01 $01 $01
    ld bc, $0807                                  ; $4d06: $01 $07 $08
    add hl, bc                                    ; $4d09: $09
    ld [hl], d                                    ; $4d0a: $72
    rra                                           ; $4d0b: $1f
    jr nz, jr_082_4d21                            ; $4d0c: $20 $13

    inc d                                         ; $4d0e: $14
    jr c, jr_082_4d4a                             ; $4d0f: $38 $39

    inc l                                         ; $4d11: $2c
    dec l                                         ; $4d12: $2d
    ld a, [hl-]                                   ; $4d13: $3a
    dec sp                                        ; $4d14: $3b
    jr nc, @+$33                                  ; $4d15: $30 $31

    ld bc, $0101                                  ; $4d17: $01 $01 $01
    ld bc, $0303                                  ; $4d1a: $01 $03 $03
    inc bc                                        ; $4d1d: $03
    inc bc                                        ; $4d1e: $03
    dec b                                         ; $4d1f: $05
    dec b                                         ; $4d20: $05

jr_082_4d21:
    ld [bc], a                                    ; $4d21: $02
    inc bc                                        ; $4d22: $03
    ld [bc], a                                    ; $4d23: $02
    ld [bc], a                                    ; $4d24: $02
    ld [bc], a                                    ; $4d25: $02
    inc bc                                        ; $4d26: $03
    inc a                                         ; $4d27: $3c
    dec a                                         ; $4d28: $3d
    inc [hl]                                      ; $4d29: $34
    dec [hl]                                      ; $4d2a: $35
    dec de                                        ; $4d2b: $1b
    inc e                                         ; $4d2c: $1c
    dec bc                                        ; $4d2d: $0b
    inc c                                         ; $4d2e: $0c
    dec e                                         ; $4d2f: $1d
    ld e, $0f                                     ; $4d30: $1e $0f
    db $10                                        ; $4d32: $10
    rra                                           ; $4d33: $1f
    jr nz, jr_082_4d49                            ; $4d34: $20 $13

    inc d                                         ; $4d36: $14
    ld [bc], a                                    ; $4d37: $02
    ld [bc], a                                    ; $4d38: $02
    ld [bc], a                                    ; $4d39: $02
    inc bc                                        ; $4d3a: $03
    dec b                                         ; $4d3b: $05
    ld [bc], a                                    ; $4d3c: $02
    ld [bc], a                                    ; $4d3d: $02
    inc bc                                        ; $4d3e: $03
    ld [bc], a                                    ; $4d3f: $02
    dec b                                         ; $4d40: $05
    ld [bc], a                                    ; $4d41: $02
    inc bc                                        ; $4d42: $03
    ld [bc], a                                    ; $4d43: $02
    ld [bc], a                                    ; $4d44: $02
    ld [bc], a                                    ; $4d45: $02
    inc bc                                        ; $4d46: $03
    ld a, $04                                     ; $4d47: $3e $04

jr_082_4d49:
    ld [hl], e                                    ; $4d49: $73

jr_082_4d4a:
    pop de                                        ; $4d4a: $d1
    di                                            ; $4d4b: $f3
    or $d2                                        ; $4d4c: $f6 $d2
    pop de                                        ; $4d4e: $d1
    rst $30                                       ; $4d4f: $f7
    ld a, [$d106]                                 ; $4d50: $fa $06 $d1
    ei                                            ; $4d53: $fb
    cp $06                                        ; $4d54: $fe $06
    pop de                                        ; $4d56: $d1
    add b                                         ; $4d57: $80
    add b                                         ; $4d58: $80
    add b                                         ; $4d59: $80
    add b                                         ; $4d5a: $80
    ld bc, $8001                                  ; $4d5b: $01 $01 $80
    add b                                         ; $4d5e: $80
    ld bc, $8001                                  ; $4d5f: $01 $01 $80
    add b                                         ; $4d62: $80
    ld bc, $8001                                  ; $4d63: $01 $01 $80
    add b                                         ; $4d66: $80
    jr c, jr_082_4da2                             ; $4d67: $38 $39

    inc l                                         ; $4d69: $2c
    dec l                                         ; $4d6a: $2d
    ld a, [hl-]                                   ; $4d6b: $3a
    dec sp                                        ; $4d6c: $3b
    jr nc, jr_082_4da0                            ; $4d6d: $30 $31

    inc a                                         ; $4d6f: $3c
    dec a                                         ; $4d70: $3d
    inc [hl]                                      ; $4d71: $34
    dec [hl]                                      ; $4d72: $35
    dec de                                        ; $4d73: $1b
    inc e                                         ; $4d74: $1c
    dec bc                                        ; $4d75: $0b
    inc c                                         ; $4d76: $0c
    ld [bc], a                                    ; $4d77: $02
    ld [bc], a                                    ; $4d78: $02
    dec b                                         ; $4d79: $05
    inc bc                                        ; $4d7a: $03
    ld [bc], a                                    ; $4d7b: $02
    ld [bc], a                                    ; $4d7c: $02
    ld [bc], a                                    ; $4d7d: $02
    inc bc                                        ; $4d7e: $03
    dec b                                         ; $4d7f: $05
    ld [bc], a                                    ; $4d80: $02
    dec b                                         ; $4d81: $05
    inc bc                                        ; $4d82: $03
    ld [bc], a                                    ; $4d83: $02
    ld [bc], a                                    ; $4d84: $02
    ld [bc], a                                    ; $4d85: $02
    ld [bc], a                                    ; $4d86: $02
    rst $38                                       ; $4d87: $ff
    ld [bc], a                                    ; $4d88: $02
    ld b, $d1                                     ; $4d89: $06 $d1
    ld hl, $0672                                  ; $4d8b: $21 $72 $06
    pop de                                        ; $4d8e: $d1
    ld [hl], $37                                  ; $4d8f: $36 $37
    ld b, $2b                                     ; $4d91: $06 $2b
    dec c                                         ; $4d93: $0d
    ld c, $d2                                     ; $4d94: $0e $d2
    dec hl                                        ; $4d96: $2b
    ld bc, $8001                                  ; $4d97: $01 $01 $80
    add b                                         ; $4d9a: $80
    ld bc, $8001                                  ; $4d9b: $01 $01 $80
    add b                                         ; $4d9e: $80
    inc bc                                        ; $4d9f: $03

jr_082_4da0:
    inc bc                                        ; $4da0: $03
    add b                                         ; $4da1: $80

jr_082_4da2:
    and b                                         ; $4da2: $a0
    ld [bc], a                                    ; $4da3: $02
    inc bc                                        ; $4da4: $03
    add b                                         ; $4da5: $80
    and b                                         ; $4da6: $a0
    dec hl                                        ; $4da7: $2b
    ld a, $04                                     ; $4da8: $3e $04
    ccf                                           ; $4daa: $3f
    pop de                                        ; $4dab: $d1
    pop de                                        ; $4dac: $d1
    pop de                                        ; $4dad: $d1
    jp nc, $d1d1                                  ; $4dae: $d2 $d1 $d1

    pop de                                        ; $4db1: $d1
    jp nc, $d1d1                                  ; $4db2: $d2 $d1 $d1

    pop de                                        ; $4db5: $d1
    jp nc, $8080                                  ; $4db6: $d2 $80 $80

    add b                                         ; $4db9: $80
    add b                                         ; $4dba: $80
    add b                                         ; $4dbb: $80
    add b                                         ; $4dbc: $80
    add b                                         ; $4dbd: $80
    add b                                         ; $4dbe: $80
    add b                                         ; $4dbf: $80
    add b                                         ; $4dc0: $80
    add b                                         ; $4dc1: $80
    add b                                         ; $4dc2: $80
    add b                                         ; $4dc3: $80
    add b                                         ; $4dc4: $80

jr_082_4dc5:
    add b                                         ; $4dc5: $80
    add b                                         ; $4dc6: $80
    rst $28                                       ; $4dc7: $ef
    ldh a, [$f1]                                  ; $4dc8: $f0 $f1
    dec h                                         ; $4dca: $25
    ld a, [c]                                     ; $4dcb: $f2
    di                                            ; $4dcc: $f3
    db $f4                                        ; $4dcd: $f4
    jr z, jr_082_4dc5                             ; $4dce: $28 $f5

    or $f7                                        ; $4dd0: $f6 $f7
    cpl                                           ; $4dd2: $2f
    jr z, jr_082_4dfe                             ; $4dd3: $28 $29

    ld [hl-], a                                   ; $4dd5: $32
    inc sp                                        ; $4dd6: $33
    ld c, $0e                                     ; $4dd7: $0e $0e
    ld c, $02                                     ; $4dd9: $0e $02
    ld c, $0e                                     ; $4ddb: $0e $0e
    ld c, $02                                     ; $4ddd: $0e $02
    ld c, $0e                                     ; $4ddf: $0e $0e
    ld c, $02                                     ; $4de1: $0e $02
    inc bc                                        ; $4de3: $03
    ld [bc], a                                    ; $4de4: $02
    dec b                                         ; $4de5: $05
    dec b                                         ; $4de6: $05
    dec e                                         ; $4de7: $1d
    ld e, $0f                                     ; $4de8: $1e $0f
    db $10                                        ; $4dea: $10
    rra                                           ; $4deb: $1f
    jr nz, jr_082_4e01                            ; $4dec: $20 $13

    inc d                                         ; $4dee: $14
    jr c, @+$3b                                   ; $4def: $38 $39

    inc l                                         ; $4df1: $2c
    dec l                                         ; $4df2: $2d
    ld a, [hl-]                                   ; $4df3: $3a
    dec sp                                        ; $4df4: $3b
    jr nc, jr_082_4e28                            ; $4df5: $30 $31

    ld [bc], a                                    ; $4df7: $02
    ld [bc], a                                    ; $4df8: $02
    ld [bc], a                                    ; $4df9: $02
    ld [bc], a                                    ; $4dfa: $02
    dec b                                         ; $4dfb: $05
    dec b                                         ; $4dfc: $05
    ld [bc], a                                    ; $4dfd: $02

jr_082_4dfe:
    ld [bc], a                                    ; $4dfe: $02
    ld [bc], a                                    ; $4dff: $02
    ld [bc], a                                    ; $4e00: $02

jr_082_4e01:
    dec b                                         ; $4e01: $05
    ld [bc], a                                    ; $4e02: $02
    ld [bc], a                                    ; $4e03: $02
    ld [bc], a                                    ; $4e04: $02
    dec b                                         ; $4e05: $05
    dec b                                         ; $4e06: $05
    ld de, $1d12                                  ; $4e07: $11 $12 $1d
    ld e, $15                                     ; $4e0a: $1e $15
    ld d, $1f                                     ; $4e0c: $16 $1f
    jr nz, jr_082_4e3e                            ; $4e0e: $20 $2e

    cpl                                           ; $4e10: $2f
    jr c, jr_082_4e4c                             ; $4e11: $38 $39

    ld [hl-], a                                   ; $4e13: $32
    inc sp                                        ; $4e14: $33
    ld a, [hl-]                                   ; $4e15: $3a
    dec sp                                        ; $4e16: $3b
    ld [bc], a                                    ; $4e17: $02
    ld [bc], a                                    ; $4e18: $02
    dec b                                         ; $4e19: $05
    ld [bc], a                                    ; $4e1a: $02
    dec b                                         ; $4e1b: $05
    dec b                                         ; $4e1c: $05
    ld [bc], a                                    ; $4e1d: $02
    dec b                                         ; $4e1e: $05
    ld [bc], a                                    ; $4e1f: $02
    dec b                                         ; $4e20: $05
    ld [bc], a                                    ; $4e21: $02
    ld [bc], a                                    ; $4e22: $02
    ld [bc], a                                    ; $4e23: $02
    ld [bc], a                                    ; $4e24: $02
    ld [bc], a                                    ; $4e25: $02
    dec b                                         ; $4e26: $05
    inc [hl]                                      ; $4e27: $34

jr_082_4e28:
    dec [hl]                                      ; $4e28: $35
    ld [hl], $37                                  ; $4e29: $36 $37
    dec bc                                        ; $4e2b: $0b
    inc c                                         ; $4e2c: $0c
    dec c                                         ; $4e2d: $0d
    ld c, $0f                                     ; $4e2e: $0e $0f
    db $10                                        ; $4e30: $10
    ld de, $1312                                  ; $4e31: $11 $12 $13
    inc d                                         ; $4e34: $14
    dec d                                         ; $4e35: $15
    ld d, $03                                     ; $4e36: $16 $03
    ld [bc], a                                    ; $4e38: $02
    ld [bc], a                                    ; $4e39: $02
    ld [bc], a                                    ; $4e3a: $02
    inc bc                                        ; $4e3b: $03
    dec b                                         ; $4e3c: $05
    dec b                                         ; $4e3d: $05

jr_082_4e3e:
    ld [bc], a                                    ; $4e3e: $02
    inc bc                                        ; $4e3f: $03
    ld [bc], a                                    ; $4e40: $02
    ld [bc], a                                    ; $4e41: $02
    ld [bc], a                                    ; $4e42: $02
    inc bc                                        ; $4e43: $03
    dec b                                         ; $4e44: $05
    ld [bc], a                                    ; $4e45: $02
    ld [bc], a                                    ; $4e46: $02
    inc a                                         ; $4e47: $3c
    dec a                                         ; $4e48: $3d
    inc [hl]                                      ; $4e49: $34
    dec [hl]                                      ; $4e4a: $35
    dec de                                        ; $4e4b: $1b

jr_082_4e4c:
    inc e                                         ; $4e4c: $1c
    dec bc                                        ; $4e4d: $0b
    inc c                                         ; $4e4e: $0c
    dec e                                         ; $4e4f: $1d
    ld e, $0f                                     ; $4e50: $1e $0f
    db $10                                        ; $4e52: $10
    rra                                           ; $4e53: $1f
    jr nz, jr_082_4e69                            ; $4e54: $20 $13

    inc d                                         ; $4e56: $14
    dec b                                         ; $4e57: $05
    ld [bc], a                                    ; $4e58: $02
    ld [bc], a                                    ; $4e59: $02
    ld [bc], a                                    ; $4e5a: $02
    ld [bc], a                                    ; $4e5b: $02
    dec b                                         ; $4e5c: $05
    ld [bc], a                                    ; $4e5d: $02
    ld [bc], a                                    ; $4e5e: $02
    ld [bc], a                                    ; $4e5f: $02
    ld [bc], a                                    ; $4e60: $02
    dec b                                         ; $4e61: $05
    dec b                                         ; $4e62: $05
    dec b                                         ; $4e63: $05
    ld [bc], a                                    ; $4e64: $02
    ld [bc], a                                    ; $4e65: $02
    dec b                                         ; $4e66: $05
    ld [hl], $37                                  ; $4e67: $36 $37

jr_082_4e69:
    inc a                                         ; $4e69: $3c
    dec a                                         ; $4e6a: $3d
    dec c                                         ; $4e6b: $0d
    ld c, $1b                                     ; $4e6c: $0e $1b
    inc e                                         ; $4e6e: $1c
    ld de, $1d12                                  ; $4e6f: $11 $12 $1d
    ld e, $15                                     ; $4e72: $1e $15
    ld d, $1f                                     ; $4e74: $16 $1f
    jr nz, jr_082_4e7d                            ; $4e76: $20 $05

    ld [bc], a                                    ; $4e78: $02
    ld [bc], a                                    ; $4e79: $02
    ld [bc], a                                    ; $4e7a: $02
    ld [bc], a                                    ; $4e7b: $02
    ld [bc], a                                    ; $4e7c: $02

jr_082_4e7d:
    dec b                                         ; $4e7d: $05
    ld [bc], a                                    ; $4e7e: $02
    ld [bc], a                                    ; $4e7f: $02
    dec b                                         ; $4e80: $05
    ld [bc], a                                    ; $4e81: $02
    dec b                                         ; $4e82: $05
    dec b                                         ; $4e83: $05
    ld [bc], a                                    ; $4e84: $02
    ld [bc], a                                    ; $4e85: $02
    ld [bc], a                                    ; $4e86: $02
    inc l                                         ; $4e87: $2c
    dec l                                         ; $4e88: $2d
    ld l, $2f                                     ; $4e89: $2e $2f
    ld hl, sp-$07                                 ; $4e8b: $f8 $f9
    ld a, [$fcfb]                                 ; $4e8d: $fa $fb $fc
    db $fd                                        ; $4e90: $fd
    cp $ff                                        ; $4e91: $fe $ff
    nop                                           ; $4e93: $00
    ld bc, $0002                                  ; $4e94: $01 $02 $00
    inc bc                                        ; $4e97: $03
    ld [bc], a                                    ; $4e98: $02
    dec b                                         ; $4e99: $05
    dec b                                         ; $4e9a: $05
    dec bc                                        ; $4e9b: $0b
    ld a, [bc]                                    ; $4e9c: $0a
    ld a, [bc]                                    ; $4e9d: $0a
    ld a, [bc]                                    ; $4e9e: $0a
    add hl, bc                                    ; $4e9f: $09
    add hl, bc                                    ; $4ea0: $09
    add hl, bc                                    ; $4ea1: $09
    add hl, bc                                    ; $4ea2: $09
    add hl, bc                                    ; $4ea3: $09
    add hl, bc                                    ; $4ea4: $09
    add hl, bc                                    ; $4ea5: $09
    add hl, bc                                    ; $4ea6: $09
    jr c, jr_082_4ee2                             ; $4ea7: $38 $39

    inc l                                         ; $4ea9: $2c
    dec l                                         ; $4eaa: $2d
    inc bc                                        ; $4eab: $03
    inc b                                         ; $4eac: $04
    dec b                                         ; $4ead: $05
    ld sp, $0706                                  ; $4eae: $31 $06 $07
    ld [$0935], sp                                ; $4eb1: $08 $35 $09
    rlca                                          ; $4eb4: $07
    ld [$020c], sp                                ; $4eb5: $08 $0c $02
    ld [bc], a                                    ; $4eb8: $02
    ld [bc], a                                    ; $4eb9: $02
    ld [bc], a                                    ; $4eba: $02
    ld a, [bc]                                    ; $4ebb: $0a
    ld a, [bc]                                    ; $4ebc: $0a
    add hl, bc                                    ; $4ebd: $09
    ld [bc], a                                    ; $4ebe: $02
    add hl, bc                                    ; $4ebf: $09
    add hl, bc                                    ; $4ec0: $09
    add hl, bc                                    ; $4ec1: $09
    inc bc                                        ; $4ec2: $03
    add hl, bc                                    ; $4ec3: $09
    add hl, bc                                    ; $4ec4: $09
    add hl, bc                                    ; $4ec5: $09
    inc bc                                        ; $4ec6: $03
    ld l, $2f                                     ; $4ec7: $2e $2f
    jr c, jr_082_4f04                             ; $4ec9: $38 $39

    ld [hl-], a                                   ; $4ecb: $32
    inc sp                                        ; $4ecc: $33
    ld a, [hl-]                                   ; $4ecd: $3a
    ld l, d                                       ; $4ece: $6a
    ld [hl], $37                                  ; $4ecf: $36 $37
    inc a                                         ; $4ed1: $3c
    add hl, hl                                    ; $4ed2: $29
    dec c                                         ; $4ed3: $0d
    ld c, $1b                                     ; $4ed4: $0e $1b
    inc e                                         ; $4ed6: $1c
    ld [bc], a                                    ; $4ed7: $02
    ld [bc], a                                    ; $4ed8: $02
    ld [bc], a                                    ; $4ed9: $02
    dec b                                         ; $4eda: $05
    ld [bc], a                                    ; $4edb: $02
    dec b                                         ; $4edc: $05
    ld [bc], a                                    ; $4edd: $02
    ld [bc], a                                    ; $4ede: $02
    dec b                                         ; $4edf: $05
    dec b                                         ; $4ee0: $05
    ld [bc], a                                    ; $4ee1: $02

jr_082_4ee2:
    ld [bc], a                                    ; $4ee2: $02
    ld [bc], a                                    ; $4ee3: $02
    ld [bc], a                                    ; $4ee4: $02
    ld [bc], a                                    ; $4ee5: $02
    ld [bc], a                                    ; $4ee6: $02
    ld [bc], a                                    ; $4ee7: $02
    ld a, [bc]                                    ; $4ee8: $0a
    ld bc, $0002                                  ; $4ee9: $01 $02 $00
    ld bc, $0002                                  ; $4eec: $01 $02 $00
    dec bc                                        ; $4eef: $0b
    inc c                                         ; $4ef0: $0c
    dec c                                         ; $4ef1: $0d
    ld c, $0f                                     ; $4ef2: $0e $0f
    db $10                                        ; $4ef4: $10
    rrca                                          ; $4ef5: $0f
    db $10                                        ; $4ef6: $10
    add hl, bc                                    ; $4ef7: $09
    add hl, bc                                    ; $4ef8: $09
    add hl, bc                                    ; $4ef9: $09
    add hl, bc                                    ; $4efa: $09
    add hl, bc                                    ; $4efb: $09
    add hl, bc                                    ; $4efc: $09
    add hl, bc                                    ; $4efd: $09
    add hl, bc                                    ; $4efe: $09
    add hl, bc                                    ; $4eff: $09
    add hl, bc                                    ; $4f00: $09
    add hl, bc                                    ; $4f01: $09
    add hl, bc                                    ; $4f02: $09
    add hl, bc                                    ; $4f03: $09

jr_082_4f04:
    add hl, bc                                    ; $4f04: $09
    add hl, bc                                    ; $4f05: $09
    add hl, bc                                    ; $4f06: $09
    nop                                           ; $4f07: $00
    rlca                                          ; $4f08: $07
    ld [$0910], sp                                ; $4f09: $08 $10 $09
    rlca                                          ; $4f0c: $07
    ld [$1114], sp                                ; $4f0d: $08 $14 $11
    ld [de], a                                    ; $4f10: $12
    ld [$132d], sp                                ; $4f11: $08 $2d $13
    inc d                                         ; $4f14: $14
    ld [$0931], sp                                ; $4f15: $08 $31 $09
    add hl, bc                                    ; $4f18: $09
    add hl, bc                                    ; $4f19: $09
    inc bc                                        ; $4f1a: $03
    add hl, bc                                    ; $4f1b: $09
    add hl, bc                                    ; $4f1c: $09
    add hl, bc                                    ; $4f1d: $09
    inc bc                                        ; $4f1e: $03
    add hl, bc                                    ; $4f1f: $09
    add hl, bc                                    ; $4f20: $09
    add hl, bc                                    ; $4f21: $09
    inc bc                                        ; $4f22: $03
    add hl, bc                                    ; $4f23: $09
    add hl, bc                                    ; $4f24: $09
    add hl, bc                                    ; $4f25: $09
    inc bc                                        ; $4f26: $03
    ld de, $1d12                                  ; $4f27: $11 $12 $1d
    ld e, $15                                     ; $4f2a: $1e $15
    ld d, $1f                                     ; $4f2c: $16 $1f
    jr nz, jr_082_4f5e                            ; $4f2e: $20 $2e

    cpl                                           ; $4f30: $2f
    jr c, jr_082_4f6c                             ; $4f31: $38 $39

    ld [hl-], a                                   ; $4f33: $32
    inc sp                                        ; $4f34: $33
    ld a, [hl-]                                   ; $4f35: $3a
    dec sp                                        ; $4f36: $3b
    dec b                                         ; $4f37: $05
    dec b                                         ; $4f38: $05
    dec b                                         ; $4f39: $05
    ld [bc], a                                    ; $4f3a: $02
    ld [bc], a                                    ; $4f3b: $02
    ld [bc], a                                    ; $4f3c: $02
    ld [bc], a                                    ; $4f3d: $02
    ld [bc], a                                    ; $4f3e: $02
    ld [bc], a                                    ; $4f3f: $02
    ld [bc], a                                    ; $4f40: $02
    dec b                                         ; $4f41: $05
    ld [bc], a                                    ; $4f42: $02
    dec b                                         ; $4f43: $05
    dec b                                         ; $4f44: $05
    ld [bc], a                                    ; $4f45: $02
    ld [bc], a                                    ; $4f46: $02
    rrca                                          ; $4f47: $0f
    db $10                                        ; $4f48: $10
    ld de, $1312                                  ; $4f49: $11 $12 $13
    inc d                                         ; $4f4c: $14
    dec d                                         ; $4f4d: $15
    ld d, $2c                                     ; $4f4e: $16 $2c
    dec l                                         ; $4f50: $2d
    ld l, $2f                                     ; $4f51: $2e $2f
    jr nc, jr_082_4f86                            ; $4f53: $30 $31

    ld [hl-], a                                   ; $4f55: $32
    ld l, d                                       ; $4f56: $6a
    ld [bc], a                                    ; $4f57: $02
    dec b                                         ; $4f58: $05
    ld [bc], a                                    ; $4f59: $02
    ld [bc], a                                    ; $4f5a: $02
    dec b                                         ; $4f5b: $05
    dec b                                         ; $4f5c: $05
    dec b                                         ; $4f5d: $05

jr_082_4f5e:
    ld [bc], a                                    ; $4f5e: $02
    ld [bc], a                                    ; $4f5f: $02
    ld [bc], a                                    ; $4f60: $02
    ld [bc], a                                    ; $4f61: $02
    ld [bc], a                                    ; $4f62: $02
    dec b                                         ; $4f63: $05
    ld [bc], a                                    ; $4f64: $02
    ld [bc], a                                    ; $4f65: $02
    ld [bc], a                                    ; $4f66: $02
    dec e                                         ; $4f67: $1d
    ld e, $0f                                     ; $4f68: $1e $0f
    db $10                                        ; $4f6a: $10
    rra                                           ; $4f6b: $1f

jr_082_4f6c:
    jr nz, jr_082_4f81                            ; $4f6c: $20 $13

    inc d                                         ; $4f6e: $14
    jr c, @+$3b                                   ; $4f6f: $38 $39

    inc l                                         ; $4f71: $2c
    dec l                                         ; $4f72: $2d
    add hl, hl                                    ; $4f73: $29
    dec sp                                        ; $4f74: $3b
    jr nc, jr_082_4fa8                            ; $4f75: $30 $31

    ld [bc], a                                    ; $4f77: $02
    ld [bc], a                                    ; $4f78: $02
    ld [bc], a                                    ; $4f79: $02
    ld [bc], a                                    ; $4f7a: $02
    ld [bc], a                                    ; $4f7b: $02
    dec b                                         ; $4f7c: $05
    dec b                                         ; $4f7d: $05
    dec b                                         ; $4f7e: $05
    ld [bc], a                                    ; $4f7f: $02
    ld [bc], a                                    ; $4f80: $02

jr_082_4f81:
    ld [bc], a                                    ; $4f81: $02
    dec b                                         ; $4f82: $05
    ld [bc], a                                    ; $4f83: $02
    ld [bc], a                                    ; $4f84: $02
    dec b                                         ; $4f85: $05

jr_082_4f86:
    dec b                                         ; $4f86: $05
    ld de, $1d12                                  ; $4f87: $11 $12 $1d
    ld e, $15                                     ; $4f8a: $1e $15
    ld d, $1f                                     ; $4f8c: $16 $1f
    jr nz, jr_082_4fbe                            ; $4f8e: $20 $2e

    cpl                                           ; $4f90: $2f
    jr c, jr_082_4fcc                             ; $4f91: $38 $39

    ld [hl-], a                                   ; $4f93: $32
    inc sp                                        ; $4f94: $33
    ld a, [hl-]                                   ; $4f95: $3a
    dec sp                                        ; $4f96: $3b
    dec b                                         ; $4f97: $05
    ld [bc], a                                    ; $4f98: $02
    ld [bc], a                                    ; $4f99: $02
    ld [bc], a                                    ; $4f9a: $02
    ld [bc], a                                    ; $4f9b: $02
    ld [bc], a                                    ; $4f9c: $02
    dec b                                         ; $4f9d: $05
    dec b                                         ; $4f9e: $05
    ld [bc], a                                    ; $4f9f: $02
    ld [bc], a                                    ; $4fa0: $02
    ld [bc], a                                    ; $4fa1: $02
    ld [bc], a                                    ; $4fa2: $02
    ld [bc], a                                    ; $4fa3: $02
    dec b                                         ; $4fa4: $05
    dec b                                         ; $4fa5: $05
    ld [bc], a                                    ; $4fa6: $02
    rrca                                          ; $4fa7: $0f

jr_082_4fa8:
    db $10                                        ; $4fa8: $10
    ld de, $1312                                  ; $4fa9: $11 $12 $13
    inc d                                         ; $4fac: $14
    dec d                                         ; $4fad: $15
    ld d, $2c                                     ; $4fae: $16 $2c
    dec l                                         ; $4fb0: $2d
    ld l, $2f                                     ; $4fb1: $2e $2f
    jr nc, jr_082_4fe6                            ; $4fb3: $30 $31

jr_082_4fb5:
    ld [hl-], a                                   ; $4fb5: $32
    inc sp                                        ; $4fb6: $33
    dec b                                         ; $4fb7: $05
    dec b                                         ; $4fb8: $05
    ld [bc], a                                    ; $4fb9: $02
    dec b                                         ; $4fba: $05
    ld [bc], a                                    ; $4fbb: $02
    ld [bc], a                                    ; $4fbc: $02
    ld [bc], a                                    ; $4fbd: $02

jr_082_4fbe:
    ld [bc], a                                    ; $4fbe: $02
    ld [bc], a                                    ; $4fbf: $02
    dec b                                         ; $4fc0: $05
    ld [bc], a                                    ; $4fc1: $02
    ld [bc], a                                    ; $4fc2: $02
    dec b                                         ; $4fc3: $05
    ld [bc], a                                    ; $4fc4: $02
    ld [bc], a                                    ; $4fc5: $02
    ld [bc], a                                    ; $4fc6: $02
    inc [hl]                                      ; $4fc7: $34
    dec [hl]                                      ; $4fc8: $35
    add hl, hl                                    ; $4fc9: $29
    dec d                                         ; $4fca: $15
    dec bc                                        ; $4fcb: $0b

jr_082_4fcc:
    dec h                                         ; $4fcc: $25
    ld d, $17                                     ; $4fcd: $16 $17
    rrca                                          ; $4fcf: $0f
    jr z, jr_082_4fea                             ; $4fd0: $28 $18

    add hl, de                                    ; $4fd2: $19
    jp Jump_000_1b1a                              ; $4fd3: $c3 $1a $1b


    inc e                                         ; $4fd6: $1c
    ld [bc], a                                    ; $4fd7: $02
    ld [bc], a                                    ; $4fd8: $02
    ld [bc], a                                    ; $4fd9: $02
    adc a                                         ; $4fda: $8f
    ld [bc], a                                    ; $4fdb: $02
    ld [bc], a                                    ; $4fdc: $02
    rrca                                          ; $4fdd: $0f
    adc a                                         ; $4fde: $8f
    ld [bc], a                                    ; $4fdf: $02
    ld [bc], a                                    ; $4fe0: $02
    rrca                                          ; $4fe1: $0f
    rrca                                          ; $4fe2: $0f
    ld a, [bc]                                    ; $4fe3: $0a
    adc a                                         ; $4fe4: $8f
    adc a                                         ; $4fe5: $8f

jr_082_4fe6:
    adc a                                         ; $4fe6: $8f
    dec d                                         ; $4fe7: $15
    dec h                                         ; $4fe8: $25
    inc [hl]                                      ; $4fe9: $34

jr_082_4fea:
    dec [hl]                                      ; $4fea: $35
    dec e                                         ; $4feb: $1d
    ld e, $28                                     ; $4fec: $1e $28
    inc c                                         ; $4fee: $0c
    rra                                           ; $4fef: $1f
    jr nz, jr_082_4fb5                            ; $4ff0: $20 $c3

    db $10                                        ; $4ff2: $10
    ld hl, $1a1b                                  ; $4ff3: $21 $1b $1a
    cp d                                          ; $4ff6: $ba
    xor a                                         ; $4ff7: $af
    ld [bc], a                                    ; $4ff8: $02
    ld [bc], a                                    ; $4ff9: $02
    ld [bc], a                                    ; $4ffa: $02
    adc a                                         ; $4ffb: $8f
    rrca                                          ; $4ffc: $0f
    ld [bc], a                                    ; $4ffd: $02
    ld [bc], a                                    ; $4ffe: $02
    rrca                                          ; $4fff: $0f
    rrca                                          ; $5000: $0f
    ld a, [bc]                                    ; $5001: $0a
    ld [bc], a                                    ; $5002: $02
    adc a                                         ; $5003: $8f
    xor a                                         ; $5004: $af
    xor a                                         ; $5005: $af
    ld a, [bc]                                    ; $5006: $0a
    ld [hl], $37                                  ; $5007: $36 $37
    inc a                                         ; $5009: $3c
    dec a                                         ; $500a: $3d
    dec c                                         ; $500b: $0d
    ld c, $1b                                     ; $500c: $0e $1b
    inc e                                         ; $500e: $1c
    ld de, $1d12                                  ; $500f: $11 $12 $1d
    ld e, $15                                     ; $5012: $1e $15
    ld d, $1f                                     ; $5014: $16 $1f
    jr nz, jr_082_501a                            ; $5016: $20 $02

    ld [bc], a                                    ; $5018: $02
    ld [bc], a                                    ; $5019: $02

jr_082_501a:
    ld [bc], a                                    ; $501a: $02
    dec b                                         ; $501b: $05
    dec b                                         ; $501c: $05
    ld [bc], a                                    ; $501d: $02
    ld [bc], a                                    ; $501e: $02
    ld [bc], a                                    ; $501f: $02
    ld [bc], a                                    ; $5020: $02
    ld [bc], a                                    ; $5021: $02
    ld [bc], a                                    ; $5022: $02
    ld [bc], a                                    ; $5023: $02
    dec b                                         ; $5024: $05
    dec b                                         ; $5025: $05
    ld [bc], a                                    ; $5026: $02
    inc [hl]                                      ; $5027: $34
    dec [hl]                                      ; $5028: $35
    ld [hl], $37                                  ; $5029: $36 $37
    dec bc                                        ; $502b: $0b
    inc c                                         ; $502c: $0c
    dec c                                         ; $502d: $0d
    ld c, $0f                                     ; $502e: $0e $0f
    db $10                                        ; $5030: $10
    ld de, $1312                                  ; $5031: $11 $12 $13
    inc d                                         ; $5034: $14
    dec d                                         ; $5035: $15
    ld d, $02                                     ; $5036: $16 $02
    dec b                                         ; $5038: $05
    dec b                                         ; $5039: $05
    ld [bc], a                                    ; $503a: $02
    dec b                                         ; $503b: $05
    dec b                                         ; $503c: $05
    ld [bc], a                                    ; $503d: $02
    ld [bc], a                                    ; $503e: $02
    ld [bc], a                                    ; $503f: $02
    ld [bc], a                                    ; $5040: $02
    dec b                                         ; $5041: $05
    ld [bc], a                                    ; $5042: $02
    ld [bc], a                                    ; $5043: $02
    ld [bc], a                                    ; $5044: $02
    ld [bc], a                                    ; $5045: $02
    ld [bc], a                                    ; $5046: $02
    ld [hl+], a                                   ; $5047: $22
    inc hl                                        ; $5048: $23
    inc h                                         ; $5049: $24
    dec h                                         ; $504a: $25
    ld h, $27                                     ; $504b: $26 $27
    jr z, jr_082_5078                             ; $504d: $28 $29

Call_082_504f:
    ld a, [hl+]                                   ; $504f: $2a
    add hl, hl                                    ; $5050: $29
    dec hl                                        ; $5051: $2b
    inc l                                         ; $5052: $2c
    dec h                                         ; $5053: $25
    cp d                                          ; $5054: $ba
    dec l                                         ; $5055: $2d
    ld l, $8f                                     ; $5056: $2e $8f
    adc a                                         ; $5058: $8f
    adc a                                         ; $5059: $8f
    adc a                                         ; $505a: $8f
    adc a                                         ; $505b: $8f
    adc a                                         ; $505c: $8f
    adc a                                         ; $505d: $8f
    rrca                                          ; $505e: $0f
    adc a                                         ; $505f: $8f
    ld [bc], a                                    ; $5060: $02
    rrca                                          ; $5061: $0f
    rrca                                          ; $5062: $0f
    ld [bc], a                                    ; $5063: $02
    ld a, [bc]                                    ; $5064: $0a
    rrca                                          ; $5065: $0f
    rrca                                          ; $5066: $0f
    dec h                                         ; $5067: $25
    inc h                                         ; $5068: $24
    inc hl                                        ; $5069: $23
    ld [hl+], a                                   ; $506a: $22
    add hl, hl                                    ; $506b: $29
    cpl                                           ; $506c: $2f
    daa                                           ; $506d: $27
    ld h, $30                                     ; $506e: $26 $30
    ld sp, $2a29                                  ; $5070: $31 $29 $2a
    ld [hl-], a                                   ; $5073: $32
    inc sp                                        ; $5074: $33
    cp d                                          ; $5075: $ba
    dec h                                         ; $5076: $25
    xor a                                         ; $5077: $af

jr_082_5078:
    xor a                                         ; $5078: $af
    xor a                                         ; $5079: $af
    xor a                                         ; $507a: $af
    cpl                                           ; $507b: $2f
    adc a                                         ; $507c: $8f
    xor a                                         ; $507d: $af
    xor a                                         ; $507e: $af
    rrca                                          ; $507f: $0f
    rrca                                          ; $5080: $0f
    ld [bc], a                                    ; $5081: $02
    xor a                                         ; $5082: $af
    rrca                                          ; $5083: $0f
    rrca                                          ; $5084: $0f
    ld a, [bc]                                    ; $5085: $0a
    ld [bc], a                                    ; $5086: $02
    ld l, $2f                                     ; $5087: $2e $2f
    jr c, jr_082_50c4                             ; $5089: $38 $39

    ld l, d                                       ; $508b: $6a
    inc sp                                        ; $508c: $33
    ld a, [hl-]                                   ; $508d: $3a
    dec sp                                        ; $508e: $3b
    add hl, hl                                    ; $508f: $29
    scf                                           ; $5090: $37
    inc a                                         ; $5091: $3c
    dec a                                         ; $5092: $3d
    dec c                                         ; $5093: $0d
    ld c, $1b                                     ; $5094: $0e $1b
    inc e                                         ; $5096: $1c
    ld [bc], a                                    ; $5097: $02
    ld [bc], a                                    ; $5098: $02
    ld [bc], a                                    ; $5099: $02
    ld [bc], a                                    ; $509a: $02
    ld [bc], a                                    ; $509b: $02
    ld [bc], a                                    ; $509c: $02
    dec b                                         ; $509d: $05
    dec b                                         ; $509e: $05
    ld [bc], a                                    ; $509f: $02
    ld [bc], a                                    ; $50a0: $02
    ld [bc], a                                    ; $50a1: $02
    ld [bc], a                                    ; $50a2: $02
    ld [bc], a                                    ; $50a3: $02
    ld [bc], a                                    ; $50a4: $02
    dec b                                         ; $50a5: $05
    dec b                                         ; $50a6: $05
    inc l                                         ; $50a7: $2c
    dec l                                         ; $50a8: $2d
    ld l, $2f                                     ; $50a9: $2e $2f
    jr nc, @+$07                                  ; $50ab: $30 $05

    inc [hl]                                      ; $50ad: $34
    ei                                            ; $50ae: $fb
    inc [hl]                                      ; $50af: $34
    ld [$fc07], sp                                ; $50b0: $08 $07 $fc
    dec bc                                        ; $50b3: $0b
    ld [$0007], sp                                ; $50b4: $08 $07 $00
    dec b                                         ; $50b7: $05
    ld [bc], a                                    ; $50b8: $02
    ld [bc], a                                    ; $50b9: $02
    dec b                                         ; $50ba: $05
    ld [bc], a                                    ; $50bb: $02
    add hl, bc                                    ; $50bc: $09
    ld a, [bc]                                    ; $50bd: $0a
    ld a, [bc]                                    ; $50be: $0a
    inc bc                                        ; $50bf: $03
    add hl, bc                                    ; $50c0: $09
    add hl, hl                                    ; $50c1: $29
    add hl, bc                                    ; $50c2: $09
    inc bc                                        ; $50c3: $03

jr_082_50c4:
    add hl, bc                                    ; $50c4: $09
    add hl, hl                                    ; $50c5: $29
    add hl, bc                                    ; $50c6: $09
    rrca                                          ; $50c7: $0f
    db $10                                        ; $50c8: $10
    ld de, $1312                                  ; $50c9: $11 $12 $13
    inc d                                         ; $50cc: $14
    dec d                                         ; $50cd: $15
    ld d, $2c                                     ; $50ce: $16 $2c
    dec l                                         ; $50d0: $2d
    ld l, $2f                                     ; $50d1: $2e $2f
    jr nc, jr_082_5106                            ; $50d3: $30 $31

    ld [hl-], a                                   ; $50d5: $32
    inc sp                                        ; $50d6: $33
    ld [bc], a                                    ; $50d7: $02
    ld [bc], a                                    ; $50d8: $02
    inc bc                                        ; $50d9: $03
    inc bc                                        ; $50da: $03
    dec b                                         ; $50db: $05
    ld [bc], a                                    ; $50dc: $02
    ld [bc], a                                    ; $50dd: $02
    ld [bc], a                                    ; $50de: $02
    dec b                                         ; $50df: $05
    dec b                                         ; $50e0: $05
    ld [bc], a                                    ; $50e1: $02
    ld [bc], a                                    ; $50e2: $02
    ld [bc], a                                    ; $50e3: $02
    ld [bc], a                                    ; $50e4: $02
    ld [bc], a                                    ; $50e5: $02
    dec b                                         ; $50e6: $05
    dec e                                         ; $50e7: $1d
    ld e, $0f                                     ; $50e8: $1e $0f
    db $10                                        ; $50ea: $10
    rra                                           ; $50eb: $1f
    jr nz, jr_082_5101                            ; $50ec: $20 $13

    inc d                                         ; $50ee: $14
    jr c, @+$3b                                   ; $50ef: $38 $39

    inc l                                         ; $50f1: $2c
    dec l                                         ; $50f2: $2d
    ld a, [hl-]                                   ; $50f3: $3a
    dec sp                                        ; $50f4: $3b
    jr nc, jr_082_5128                            ; $50f5: $30 $31

    inc bc                                        ; $50f7: $03
    inc bc                                        ; $50f8: $03
    ld [bc], a                                    ; $50f9: $02
    dec b                                         ; $50fa: $05
    ld [bc], a                                    ; $50fb: $02
    dec b                                         ; $50fc: $05
    ld [bc], a                                    ; $50fd: $02
    ld [bc], a                                    ; $50fe: $02
    dec b                                         ; $50ff: $05
    ld [bc], a                                    ; $5100: $02

jr_082_5101:
    ld [bc], a                                    ; $5101: $02
    dec b                                         ; $5102: $05
    dec b                                         ; $5103: $05
    ld [bc], a                                    ; $5104: $02
    ld [bc], a                                    ; $5105: $02

jr_082_5106:
    ld [bc], a                                    ; $5106: $02
    ld de, $1d12                                  ; $5107: $11 $12 $1d
    ld e, $15                                     ; $510a: $1e $15
    ld d, $1f                                     ; $510c: $16 $1f
    jr nz, jr_082_513e                            ; $510e: $20 $2e

    cpl                                           ; $5110: $2f
    jr c, jr_082_514c                             ; $5111: $38 $39

    ld [hl-], a                                   ; $5113: $32
    inc sp                                        ; $5114: $33
    ld a, [hl-]                                   ; $5115: $3a
    dec sp                                        ; $5116: $3b
    ld [bc], a                                    ; $5117: $02
    dec b                                         ; $5118: $05
    ld [bc], a                                    ; $5119: $02
    ld [bc], a                                    ; $511a: $02
    ld [bc], a                                    ; $511b: $02
    ld [bc], a                                    ; $511c: $02
    ld [bc], a                                    ; $511d: $02
    ld [bc], a                                    ; $511e: $02
    ld [bc], a                                    ; $511f: $02
    dec b                                         ; $5120: $05
    ld [bc], a                                    ; $5121: $02
    ld [bc], a                                    ; $5122: $02
    ld [bc], a                                    ; $5123: $02
    ld [bc], a                                    ; $5124: $02
    ld [bc], a                                    ; $5125: $02
    ld [bc], a                                    ; $5126: $02
    rrca                                          ; $5127: $0f

jr_082_5128:
    ld [$0207], sp                                ; $5128: $08 $07 $02
    inc de                                        ; $512b: $13
    ld [$0007], sp                                ; $512c: $08 $07 $00
    inc l                                         ; $512f: $2c
    ld [$0b12], sp                                ; $5130: $08 $12 $0b
    jr nc, jr_082_513d                            ; $5133: $30 $08

    inc d                                         ; $5135: $14
    rrca                                          ; $5136: $0f
    inc bc                                        ; $5137: $03
    add hl, bc                                    ; $5138: $09
    add hl, hl                                    ; $5139: $29
    add hl, bc                                    ; $513a: $09
    inc bc                                        ; $513b: $03
    add hl, bc                                    ; $513c: $09

jr_082_513d:
    add hl, hl                                    ; $513d: $29

jr_082_513e:
    add hl, bc                                    ; $513e: $09
    inc bc                                        ; $513f: $03
    add hl, bc                                    ; $5140: $09
    add hl, hl                                    ; $5141: $29
    add hl, bc                                    ; $5142: $09
    inc bc                                        ; $5143: $03
    add hl, bc                                    ; $5144: $09
    add hl, hl                                    ; $5145: $29
    add hl, bc                                    ; $5146: $09
    dec e                                         ; $5147: $1d
    ld e, $0f                                     ; $5148: $1e $0f
    db $10                                        ; $514a: $10
    rra                                           ; $514b: $1f

jr_082_514c:
    jr nz, jr_082_5161                            ; $514c: $20 $13

    inc d                                         ; $514e: $14
    jr c, jr_082_518a                             ; $514f: $38 $39

    inc l                                         ; $5151: $2c
    dec l                                         ; $5152: $2d
    ld a, [hl-]                                   ; $5153: $3a
    dec sp                                        ; $5154: $3b
    jr nc, jr_082_5188                            ; $5155: $30 $31

    ld [bc], a                                    ; $5157: $02
    ld [bc], a                                    ; $5158: $02
    ld [bc], a                                    ; $5159: $02
    dec b                                         ; $515a: $05
    dec b                                         ; $515b: $05
    dec b                                         ; $515c: $05
    ld [bc], a                                    ; $515d: $02
    ld [bc], a                                    ; $515e: $02
    ld [bc], a                                    ; $515f: $02
    ld [bc], a                                    ; $5160: $02

jr_082_5161:
    ld [bc], a                                    ; $5161: $02
    inc bc                                        ; $5162: $03
    dec b                                         ; $5163: $05
    dec b                                         ; $5164: $05
    ld [bc], a                                    ; $5165: $02
    inc bc                                        ; $5166: $03
    inc bc                                        ; $5167: $03
    inc b                                         ; $5168: $04
    dec b                                         ; $5169: $05
    dec hl                                        ; $516a: $2b
    jp nc, $d1d1                                  ; $516b: $d2 $d1 $d1

    pop de                                        ; $516e: $d1
    jp nc, $d1d1                                  ; $516f: $d2 $d1 $d1

    pop de                                        ; $5172: $d1
    jp nc, $d1d1                                  ; $5173: $d2 $d1 $d1

    pop de                                        ; $5176: $d1
    add b                                         ; $5177: $80
    add b                                         ; $5178: $80
    add b                                         ; $5179: $80
    and b                                         ; $517a: $a0
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
    inc a                                         ; $5187: $3c

jr_082_5188:
    dec a                                         ; $5188: $3d
    inc [hl]                                      ; $5189: $34

jr_082_518a:
    dec [hl]                                      ; $518a: $35
    dec de                                        ; $518b: $1b
    inc e                                         ; $518c: $1c
    dec bc                                        ; $518d: $0b
    inc c                                         ; $518e: $0c
    dec e                                         ; $518f: $1d
    ld e, $0f                                     ; $5190: $1e $0f
    db $10                                        ; $5192: $10
    rra                                           ; $5193: $1f
    jr nz, jr_082_51a9                            ; $5194: $20 $13

    inc d                                         ; $5196: $14
    ld [bc], a                                    ; $5197: $02
    ld [bc], a                                    ; $5198: $02
    ld [bc], a                                    ; $5199: $02
    inc bc                                        ; $519a: $03
    dec b                                         ; $519b: $05
    dec b                                         ; $519c: $05
    ld [bc], a                                    ; $519d: $02
    inc bc                                        ; $519e: $03
    ld [bc], a                                    ; $519f: $02
    ld [bc], a                                    ; $51a0: $02
    ld [bc], a                                    ; $51a1: $02
    inc bc                                        ; $51a2: $03
    dec b                                         ; $51a3: $05
    dec b                                         ; $51a4: $05
    ld [bc], a                                    ; $51a5: $02
    inc bc                                        ; $51a6: $03
    jr c, jr_082_51e2                             ; $51a7: $38 $39

jr_082_51a9:
    inc l                                         ; $51a9: $2c
    dec l                                         ; $51aa: $2d
    inc bc                                        ; $51ab: $03
    dec [hl]                                      ; $51ac: $35
    ld hl, sp-$07                                 ; $51ad: $f8 $f9
    db $fd                                        ; $51af: $fd
    cp $ff                                        ; $51b0: $fe $ff
    ld b, $01                                     ; $51b2: $06 $01
    ld [bc], a                                    ; $51b4: $02
    nop                                           ; $51b5: $00
    add hl, bc                                    ; $51b6: $09
    ld [bc], a                                    ; $51b7: $02
    ld [bc], a                                    ; $51b8: $02
    ld [bc], a                                    ; $51b9: $02
    inc bc                                        ; $51ba: $03
    ld a, [bc]                                    ; $51bb: $0a
    ld a, [bc]                                    ; $51bc: $0a
    ld a, [bc]                                    ; $51bd: $0a
    dec bc                                        ; $51be: $0b
    add hl, bc                                    ; $51bf: $09
    add hl, bc                                    ; $51c0: $09
    add hl, bc                                    ; $51c1: $09
    add hl, bc                                    ; $51c2: $09
    add hl, bc                                    ; $51c3: $09
    add hl, bc                                    ; $51c4: $09
    add hl, bc                                    ; $51c5: $09
    add hl, bc                                    ; $51c6: $09
    ld a, [bc]                                    ; $51c7: $0a
    ld bc, $0002                                  ; $51c8: $01 $02 $00
    ld bc, $0002                                  ; $51cb: $01 $02 $00
    add hl, bc                                    ; $51ce: $09
    inc c                                         ; $51cf: $0c
    dec c                                         ; $51d0: $0d
    ld c, $11                                     ; $51d1: $0e $11
    db $10                                        ; $51d3: $10
    rrca                                          ; $51d4: $0f
    db $10                                        ; $51d5: $10
    inc de                                        ; $51d6: $13
    add hl, bc                                    ; $51d7: $09
    add hl, bc                                    ; $51d8: $09
    add hl, bc                                    ; $51d9: $09
    add hl, bc                                    ; $51da: $09
    add hl, bc                                    ; $51db: $09
    add hl, bc                                    ; $51dc: $09
    add hl, bc                                    ; $51dd: $09
    add hl, bc                                    ; $51de: $09
    add hl, bc                                    ; $51df: $09
    add hl, bc                                    ; $51e0: $09
    add hl, bc                                    ; $51e1: $09

jr_082_51e2:
    add hl, bc                                    ; $51e2: $09
    add hl, bc                                    ; $51e3: $09
    add hl, bc                                    ; $51e4: $09
    add hl, bc                                    ; $51e5: $09
    add hl, bc                                    ; $51e6: $09
    ld [hl], $37                                  ; $51e7: $36 $37
    ld [hl], $37                                  ; $51e9: $36 $37
    pop de                                        ; $51eb: $d1
    pop de                                        ; $51ec: $d1
    pop de                                        ; $51ed: $d1
    pop de                                        ; $51ee: $d1
    pop de                                        ; $51ef: $d1
    pop de                                        ; $51f0: $d1
    pop de                                        ; $51f1: $d1
    pop de                                        ; $51f2: $d1
    pop de                                        ; $51f3: $d1
    pop de                                        ; $51f4: $d1
    pop de                                        ; $51f5: $d1
    pop de                                        ; $51f6: $d1
    add hl, bc                                    ; $51f7: $09
    add hl, bc                                    ; $51f8: $09
    add hl, bc                                    ; $51f9: $09
    add hl, bc                                    ; $51fa: $09
    ld bc, $0101                                  ; $51fb: $01 $01 $01
    ld bc, $0101                                  ; $51fe: $01 $01 $01
    ld bc, $0101                                  ; $5201: $01 $01 $01
    ld bc, $0101                                  ; $5204: $01 $01 $01
    ld [hl], $38                                  ; $5207: $36 $38
    ld [$d135], sp                                ; $5209: $08 $35 $d1
    pop de                                        ; $520c: $d1
    ld [$d10c], sp                                ; $520d: $08 $0c $d1
    pop de                                        ; $5210: $d1
    ld [$d110], sp                                ; $5211: $08 $10 $d1
    pop de                                        ; $5214: $d1
    ld [$0914], sp                                ; $5215: $08 $14 $09
    add hl, bc                                    ; $5218: $09
    add hl, bc                                    ; $5219: $09
    inc bc                                        ; $521a: $03
    ld bc, $0901                                  ; $521b: $01 $01 $09
    inc bc                                        ; $521e: $03
    ld bc, $0901                                  ; $521f: $01 $01 $09
    inc bc                                        ; $5222: $03
    ld bc, $0901                                  ; $5223: $01 $01 $09
    inc bc                                        ; $5226: $03
    ld [hl], $37                                  ; $5227: $36 $37
    inc a                                         ; $5229: $3c
    dec a                                         ; $522a: $3d
    dec c                                         ; $522b: $0d
    ld c, $1b                                     ; $522c: $0e $1b
    inc e                                         ; $522e: $1c
    ld de, $1d12                                  ; $522f: $11 $12 $1d
    ld e, $15                                     ; $5232: $1e $15
    ld d, $1f                                     ; $5234: $16 $1f
    jr nz, jr_082_523a                            ; $5236: $20 $02

    ld [bc], a                                    ; $5238: $02
    ld [bc], a                                    ; $5239: $02

jr_082_523a:
    dec b                                         ; $523a: $05
    ld [bc], a                                    ; $523b: $02
    ld [bc], a                                    ; $523c: $02
    dec b                                         ; $523d: $05
    ld [bc], a                                    ; $523e: $02
    dec b                                         ; $523f: $05
    ld [bc], a                                    ; $5240: $02
    dec b                                         ; $5241: $05
    dec b                                         ; $5242: $05
    ld [bc], a                                    ; $5243: $02
    ld [bc], a                                    ; $5244: $02
    ld [bc], a                                    ; $5245: $02
    ld [bc], a                                    ; $5246: $02
    pop de                                        ; $5247: $d1
    pop de                                        ; $5248: $d1
    pop de                                        ; $5249: $d1
    jp nc, $d1d1                                  ; $524a: $d2 $d1 $d1

    pop de                                        ; $524d: $d1
    jp nc, $d1d1                                  ; $524e: $d2 $d1 $d1

    pop de                                        ; $5251: $d1
    ld a, $d1                                     ; $5252: $3e $d1
    pop de                                        ; $5254: $d1
    pop de                                        ; $5255: $d1
    pop de                                        ; $5256: $d1
    add b                                         ; $5257: $80
    add b                                         ; $5258: $80
    add b                                         ; $5259: $80
    add b                                         ; $525a: $80
    add b                                         ; $525b: $80
    add b                                         ; $525c: $80
    add b                                         ; $525d: $80
    add b                                         ; $525e: $80
    add b                                         ; $525f: $80
    add b                                         ; $5260: $80
    add b                                         ; $5261: $80
    add b                                         ; $5262: $80
    add b                                         ; $5263: $80
    add b                                         ; $5264: $80
    add b                                         ; $5265: $80
    add b                                         ; $5266: $80
    pop de                                        ; $5267: $d1
    pop de                                        ; $5268: $d1
    pop de                                        ; $5269: $d1
    pop de                                        ; $526a: $d1
    pop de                                        ; $526b: $d1
    pop de                                        ; $526c: $d1
    pop de                                        ; $526d: $d1
    pop de                                        ; $526e: $d1
    inc b                                         ; $526f: $04
    inc b                                         ; $5270: $04
    inc b                                         ; $5271: $04
    inc b                                         ; $5272: $04
    pop de                                        ; $5273: $d1
    pop de                                        ; $5274: $d1
    pop de                                        ; $5275: $d1
    pop de                                        ; $5276: $d1
    ld bc, $0101                                  ; $5277: $01 $01 $01
    ld bc, $0101                                  ; $527a: $01 $01 $01
    ld bc, $8001                                  ; $527d: $01 $01 $80
    add b                                         ; $5280: $80
    add b                                         ; $5281: $80
    add b                                         ; $5282: $80
    add b                                         ; $5283: $80
    add b                                         ; $5284: $80
    add b                                         ; $5285: $80
    add b                                         ; $5286: $80
    pop de                                        ; $5287: $d1
    pop de                                        ; $5288: $d1
    ld [$d12d], sp                                ; $5289: $08 $2d $d1
    pop de                                        ; $528c: $d1
    ld [$0431], sp                                ; $528d: $08 $31 $04
    inc b                                         ; $5290: $04
    inc b                                         ; $5291: $04
    inc b                                         ; $5292: $04
    pop de                                        ; $5293: $d1
    pop de                                        ; $5294: $d1
    pop de                                        ; $5295: $d1
    pop de                                        ; $5296: $d1
    ld bc, $0901                                  ; $5297: $01 $01 $09
    inc bc                                        ; $529a: $03
    ld bc, $0901                                  ; $529b: $01 $01 $09
    inc bc                                        ; $529e: $03
    add b                                         ; $529f: $80
    add b                                         ; $52a0: $80
    add b                                         ; $52a1: $80
    add b                                         ; $52a2: $80
    add b                                         ; $52a3: $80
    add b                                         ; $52a4: $80
    add b                                         ; $52a5: $80
    add b                                         ; $52a6: $80
    ld l, $2f                                     ; $52a7: $2e $2f
    jr c, jr_082_52e4                             ; $52a9: $38 $39

    ld [hl-], a                                   ; $52ab: $32
    inc sp                                        ; $52ac: $33
    ld a, [hl-]                                   ; $52ad: $3a
    dec sp                                        ; $52ae: $3b
    inc b                                         ; $52af: $04
    inc b                                         ; $52b0: $04
    inc b                                         ; $52b1: $04
    inc b                                         ; $52b2: $04
    pop de                                        ; $52b3: $d1
    pop de                                        ; $52b4: $d1
    pop de                                        ; $52b5: $d1
    pop de                                        ; $52b6: $d1
    ld [bc], a                                    ; $52b7: $02
    dec b                                         ; $52b8: $05
    ld [bc], a                                    ; $52b9: $02
    ld [bc], a                                    ; $52ba: $02
    ld [bc], a                                    ; $52bb: $02
    ld [bc], a                                    ; $52bc: $02
    ld [bc], a                                    ; $52bd: $02
    dec b                                         ; $52be: $05
    add b                                         ; $52bf: $80
    add b                                         ; $52c0: $80
    add b                                         ; $52c1: $80
    add b                                         ; $52c2: $80
    add b                                         ; $52c3: $80
    add b                                         ; $52c4: $80
    add b                                         ; $52c5: $80
    add b                                         ; $52c6: $80
    inc [hl]                                      ; $52c7: $34
    dec [hl]                                      ; $52c8: $35
    ld [hl], $37                                  ; $52c9: $36 $37
    dec bc                                        ; $52cb: $0b
    inc c                                         ; $52cc: $0c
    ld c, $1b                                     ; $52cd: $0e $1b
    rrca                                          ; $52cf: $0f
    db $10                                        ; $52d0: $10
    ld [de], a                                    ; $52d1: $12
    dec e                                         ; $52d2: $1d
    inc de                                        ; $52d3: $13
    inc d                                         ; $52d4: $14
    ld d, $1f                                     ; $52d5: $16 $1f
    ld [bc], a                                    ; $52d7: $02
    dec b                                         ; $52d8: $05
    ld [bc], a                                    ; $52d9: $02
    ld [bc], a                                    ; $52da: $02
    ld [bc], a                                    ; $52db: $02
    ld [bc], a                                    ; $52dc: $02
    ld [bc], a                                    ; $52dd: $02
    ld [bc], a                                    ; $52de: $02
    ld [bc], a                                    ; $52df: $02
    dec b                                         ; $52e0: $05
    ld [bc], a                                    ; $52e1: $02
    ld [bc], a                                    ; $52e2: $02
    ld [bc], a                                    ; $52e3: $02

jr_082_52e4:
    dec b                                         ; $52e4: $05
    dec b                                         ; $52e5: $05
    ld [bc], a                                    ; $52e6: $02
    inc a                                         ; $52e7: $3c
    dec a                                         ; $52e8: $3d
    inc [hl]                                      ; $52e9: $34
    dec [hl]                                      ; $52ea: $35
    inc e                                         ; $52eb: $1c
    dec bc                                        ; $52ec: $0b
    dec bc                                        ; $52ed: $0b
    inc c                                         ; $52ee: $0c
    ld e, $0f                                     ; $52ef: $1e $0f
    rrca                                          ; $52f1: $0f
    db $10                                        ; $52f2: $10
    jr nz, @+$15                                  ; $52f3: $20 $13

    inc de                                        ; $52f5: $13
    inc d                                         ; $52f6: $14
    dec b                                         ; $52f7: $05
    dec b                                         ; $52f8: $05
    ld [bc], a                                    ; $52f9: $02
    ld [bc], a                                    ; $52fa: $02
    ld [bc], a                                    ; $52fb: $02
    ld [bc], a                                    ; $52fc: $02
    ld [bc], a                                    ; $52fd: $02
    ld [bc], a                                    ; $52fe: $02
    ld [bc], a                                    ; $52ff: $02
    ld [bc], a                                    ; $5300: $02
    dec b                                         ; $5301: $05
    ld [bc], a                                    ; $5302: $02
    ld [bc], a                                    ; $5303: $02
    ld [bc], a                                    ; $5304: $02
    ld [bc], a                                    ; $5305: $02
    ld [bc], a                                    ; $5306: $02
    ld [hl], $37                                  ; $5307: $36 $37
    inc a                                         ; $5309: $3c
    dec a                                         ; $530a: $3d
    dec c                                         ; $530b: $0d
    ld c, $1b                                     ; $530c: $0e $1b
    inc e                                         ; $530e: $1c
    ld de, $1d12                                  ; $530f: $11 $12 $1d
    ld e, $15                                     ; $5312: $1e $15
    ld d, $1f                                     ; $5314: $16 $1f
    jr nz, jr_082_531a                            ; $5316: $20 $02

    dec b                                         ; $5318: $05
    dec b                                         ; $5319: $05

jr_082_531a:
    ld [bc], a                                    ; $531a: $02
    ld [bc], a                                    ; $531b: $02
    ld [bc], a                                    ; $531c: $02
    ld [bc], a                                    ; $531d: $02
    ld [bc], a                                    ; $531e: $02
    ld [bc], a                                    ; $531f: $02
    ld [bc], a                                    ; $5320: $02
    ld [bc], a                                    ; $5321: $02
    dec b                                         ; $5322: $05
    dec b                                         ; $5323: $05
    dec b                                         ; $5324: $05
    ld [bc], a                                    ; $5325: $02
    ld [bc], a                                    ; $5326: $02
    inc [hl]                                      ; $5327: $34
    ld [$3638], sp                                ; $5328: $08 $38 $36
    dec bc                                        ; $532b: $0b
    ld [$d1d1], sp                                ; $532c: $08 $d1 $d1
    rrca                                          ; $532f: $0f
    ld [$d1d1], sp                                ; $5330: $08 $d1 $d1
    inc de                                        ; $5333: $13
    ld [$d1d1], sp                                ; $5334: $08 $d1 $d1
    inc bc                                        ; $5337: $03
    add hl, bc                                    ; $5338: $09
    add hl, hl                                    ; $5339: $29
    add hl, bc                                    ; $533a: $09
    inc bc                                        ; $533b: $03
    add hl, bc                                    ; $533c: $09
    ld bc, $0301                                  ; $533d: $01 $01 $03
    add hl, bc                                    ; $5340: $09
    ld bc, $0301                                  ; $5341: $01 $01 $03
    add hl, bc                                    ; $5344: $09
    ld bc, $2c01                                  ; $5345: $01 $01 $2c
    dec l                                         ; $5348: $2d
    cpl                                           ; $5349: $2f
    jr c, jr_082_537c                             ; $534a: $38 $30

    ld sp, $3a33                                  ; $534c: $31 $33 $3a
    inc b                                         ; $534f: $04
    inc b                                         ; $5350: $04
    inc b                                         ; $5351: $04
    inc b                                         ; $5352: $04
    pop de                                        ; $5353: $d1
    pop de                                        ; $5354: $d1
    pop de                                        ; $5355: $d1
    pop de                                        ; $5356: $d1
    dec b                                         ; $5357: $05
    dec b                                         ; $5358: $05
    ld [bc], a                                    ; $5359: $02
    ld [bc], a                                    ; $535a: $02
    ld [bc], a                                    ; $535b: $02
    ld [bc], a                                    ; $535c: $02
    ld [bc], a                                    ; $535d: $02
    ld [bc], a                                    ; $535e: $02
    add b                                         ; $535f: $80
    add b                                         ; $5360: $80
    add b                                         ; $5361: $80
    add b                                         ; $5362: $80
    add b                                         ; $5363: $80
    add b                                         ; $5364: $80
    add b                                         ; $5365: $80
    add b                                         ; $5366: $80
    add hl, sp                                    ; $5367: $39
    inc l                                         ; $5368: $2c
    inc l                                         ; $5369: $2c
    dec l                                         ; $536a: $2d
    dec sp                                        ; $536b: $3b
    jr nc, jr_082_539e                            ; $536c: $30 $30

    ld sp, $0404                                  ; $536e: $31 $04 $04
    inc b                                         ; $5371: $04
    inc b                                         ; $5372: $04
    pop de                                        ; $5373: $d1
    pop de                                        ; $5374: $d1
    pop de                                        ; $5375: $d1
    pop de                                        ; $5376: $d1
    ld [bc], a                                    ; $5377: $02
    ld [bc], a                                    ; $5378: $02
    ld [bc], a                                    ; $5379: $02
    ld [bc], a                                    ; $537a: $02
    ld [bc], a                                    ; $537b: $02

jr_082_537c:
    dec b                                         ; $537c: $05
    dec b                                         ; $537d: $05
    ld [bc], a                                    ; $537e: $02
    add b                                         ; $537f: $80
    add b                                         ; $5380: $80
    add b                                         ; $5381: $80
    add b                                         ; $5382: $80
    add b                                         ; $5383: $80
    add b                                         ; $5384: $80
    add b                                         ; $5385: $80
    add b                                         ; $5386: $80
    ld l, $2f                                     ; $5387: $2e $2f
    jr c, jr_082_53c4                             ; $5389: $38 $39

    ld [hl-], a                                   ; $538b: $32
    inc sp                                        ; $538c: $33
    ld a, [hl-]                                   ; $538d: $3a
    dec sp                                        ; $538e: $3b
    inc b                                         ; $538f: $04
    inc b                                         ; $5390: $04
    inc b                                         ; $5391: $04
    inc b                                         ; $5392: $04
    pop de                                        ; $5393: $d1
    pop de                                        ; $5394: $d1
    pop de                                        ; $5395: $d1
    pop de                                        ; $5396: $d1
    ld [bc], a                                    ; $5397: $02
    ld [bc], a                                    ; $5398: $02
    dec b                                         ; $5399: $05
    ld [bc], a                                    ; $539a: $02
    ld [bc], a                                    ; $539b: $02
    dec b                                         ; $539c: $05
    ld [bc], a                                    ; $539d: $02

jr_082_539e:
    ld [bc], a                                    ; $539e: $02
    add b                                         ; $539f: $80
    add b                                         ; $53a0: $80
    add b                                         ; $53a1: $80
    add b                                         ; $53a2: $80
    add b                                         ; $53a3: $80
    add b                                         ; $53a4: $80
    add b                                         ; $53a5: $80
    add b                                         ; $53a6: $80
    inc l                                         ; $53a7: $2c
    ld [$d1d1], sp                                ; $53a8: $08 $d1 $d1
    jr nc, jr_082_53b5                            ; $53ab: $30 $08

    pop de                                        ; $53ad: $d1
    pop de                                        ; $53ae: $d1
    inc b                                         ; $53af: $04
    inc b                                         ; $53b0: $04
    inc b                                         ; $53b1: $04
    inc b                                         ; $53b2: $04
    pop de                                        ; $53b3: $d1
    pop de                                        ; $53b4: $d1

jr_082_53b5:
    pop de                                        ; $53b5: $d1
    pop de                                        ; $53b6: $d1
    inc bc                                        ; $53b7: $03
    add hl, bc                                    ; $53b8: $09
    ld bc, $0301                                  ; $53b9: $01 $01 $03
    add hl, bc                                    ; $53bc: $09
    ld bc, $8001                                  ; $53bd: $01 $01 $80
    add b                                         ; $53c0: $80
    add b                                         ; $53c1: $80
    add b                                         ; $53c2: $80
    add b                                         ; $53c3: $80

jr_082_53c4:
    add b                                         ; $53c4: $80
    add b                                         ; $53c5: $80
    add b                                         ; $53c6: $80
    scf                                           ; $53c7: $37
    ld [hl], $37                                  ; $53c8: $36 $37
    ld [hl], $d1                                  ; $53ca: $36 $d1
    pop de                                        ; $53cc: $d1
    pop de                                        ; $53cd: $d1
    pop de                                        ; $53ce: $d1
    pop de                                        ; $53cf: $d1
    pop de                                        ; $53d0: $d1
    pop de                                        ; $53d1: $d1
    pop de                                        ; $53d2: $d1
    pop de                                        ; $53d3: $d1
    pop de                                        ; $53d4: $d1
    pop de                                        ; $53d5: $d1
    pop de                                        ; $53d6: $d1
    add hl, bc                                    ; $53d7: $09
    add hl, bc                                    ; $53d8: $09
    add hl, bc                                    ; $53d9: $09
    add hl, bc                                    ; $53da: $09
    ld bc, $0101                                  ; $53db: $01 $01 $01
    ld bc, $0101                                  ; $53de: $01 $01 $01
    ld bc, $0101                                  ; $53e1: $01 $01 $01
    ld bc, $0101                                  ; $53e4: $01 $01 $01
    jp nc, $d1d1                                  ; $53e7: $d2 $d1 $d1

    pop de                                        ; $53ea: $d1
    jp nc, $d1d1                                  ; $53eb: $d2 $d1 $d1

    pop de                                        ; $53ee: $d1
    dec b                                         ; $53ef: $05
    pop de                                        ; $53f0: $d1
    pop de                                        ; $53f1: $d1
    pop de                                        ; $53f2: $d1
    pop de                                        ; $53f3: $d1
    pop de                                        ; $53f4: $d1
    pop de                                        ; $53f5: $d1
    pop de                                        ; $53f6: $d1
    add b                                         ; $53f7: $80
    add b                                         ; $53f8: $80
    add b                                         ; $53f9: $80
    add b                                         ; $53fa: $80
    add b                                         ; $53fb: $80
    add b                                         ; $53fc: $80
    add b                                         ; $53fd: $80
    add b                                         ; $53fe: $80
    add b                                         ; $53ff: $80
    add b                                         ; $5400: $80
    add b                                         ; $5401: $80
    add b                                         ; $5402: $80
    add b                                         ; $5403: $80
    add b                                         ; $5404: $80
    add b                                         ; $5405: $80
    add b                                         ; $5406: $80
    ld a, [bc]                                    ; $5407: $0a
    nop                                           ; $5408: $00
    inc de                                        ; $5409: $13
    nop                                           ; $540a: $00
    ret nz                                        ; $540b: $c0

    dec c                                         ; $540c: $0d
    db $ed                                        ; $540d: $ed
    db $ed                                        ; $540e: $ed
    db $ed                                        ; $540f: $ed
    xor $ed                                       ; $5410: $ee $ed
    db $ed                                        ; $5412: $ed
    db $ed                                        ; $5413: $ed
    xor $ed                                       ; $5414: $ee $ed
    db $ed                                        ; $5416: $ed
    db $ed                                        ; $5417: $ed
    xor $ed                                       ; $5418: $ee $ed
    db $ed                                        ; $541a: $ed
    db $ed                                        ; $541b: $ed
    xor $80                                       ; $541c: $ee $80
    add b                                         ; $541e: $80
    add b                                         ; $541f: $80
    add b                                         ; $5420: $80
    add b                                         ; $5421: $80
    add b                                         ; $5422: $80
    add b                                         ; $5423: $80
    add b                                         ; $5424: $80
    add b                                         ; $5425: $80
    add b                                         ; $5426: $80
    add b                                         ; $5427: $80
    add b                                         ; $5428: $80
    add b                                         ; $5429: $80
    add b                                         ; $542a: $80
    add b                                         ; $542b: $80
    add b                                         ; $542c: $80
    rst $28                                       ; $542d: $ef
    ldh a, [$f1]                                  ; $542e: $f0 $f1
    ld a, [c]                                     ; $5430: $f2
    di                                            ; $5431: $f3
    db $f4                                        ; $5432: $f4
    push af                                       ; $5433: $f5
    or $f7                                        ; $5434: $f6 $f7
    ld hl, sp-$07                                 ; $5436: $f8 $f9
    ld a, [$fcfb]                                 ; $5438: $fa $fb $fc
    db $fd                                        ; $543b: $fd
    cp $04                                        ; $543c: $fe $04
    inc b                                         ; $543e: $04
    inc b                                         ; $543f: $04
    inc b                                         ; $5440: $04
    inc b                                         ; $5441: $04
    inc b                                         ; $5442: $04
    inc b                                         ; $5443: $04
    inc b                                         ; $5444: $04
    inc b                                         ; $5445: $04
    inc b                                         ; $5446: $04
    inc b                                         ; $5447: $04
    inc b                                         ; $5448: $04
    inc b                                         ; $5449: $04
    inc b                                         ; $544a: $04
    inc b                                         ; $544b: $04
    inc b                                         ; $544c: $04
    rst $38                                       ; $544d: $ff
    nop                                           ; $544e: $00
    ld bc, $0302                                  ; $544f: $01 $02 $03
    inc b                                         ; $5452: $04
    dec b                                         ; $5453: $05
    ld b, $07                                     ; $5454: $06 $07
    ld [$0a09], sp                                ; $5456: $08 $09 $0a
    dec bc                                        ; $5459: $0b
    inc c                                         ; $545a: $0c
    dec c                                         ; $545b: $0d
    ld c, $06                                     ; $545c: $0e $06
    ld b, $06                                     ; $545e: $06 $06
    ld b, $06                                     ; $5460: $06 $06
    ld b, $06                                     ; $5462: $06 $06
    ld b, $06                                     ; $5464: $06 $06
    ld b, $06                                     ; $5466: $06 $06
    ld b, $06                                     ; $5468: $06 $06
    ld b, $06                                     ; $546a: $06 $06
    ld b, $0f                                     ; $546c: $06 $0f
    db $10                                        ; $546e: $10
    rst $28                                       ; $546f: $ef
    ldh a, [rNR11]                                ; $5470: $f0 $11
    ld [de], a                                    ; $5472: $12
    di                                            ; $5473: $f3
    db $f4                                        ; $5474: $f4
    inc de                                        ; $5475: $13
    inc d                                         ; $5476: $14
    rst $30                                       ; $5477: $f7
    ld hl, sp+$15                                 ; $5478: $f8 $15
    ld d, $fb                                     ; $547a: $16 $fb
    db $fc                                        ; $547c: $fc
    inc b                                         ; $547d: $04
    inc b                                         ; $547e: $04
    inc b                                         ; $547f: $04
    inc b                                         ; $5480: $04
    inc b                                         ; $5481: $04
    inc b                                         ; $5482: $04
    inc b                                         ; $5483: $04
    inc b                                         ; $5484: $04
    inc b                                         ; $5485: $04
    inc b                                         ; $5486: $04
    inc b                                         ; $5487: $04
    inc b                                         ; $5488: $04
    inc b                                         ; $5489: $04
    inc b                                         ; $548a: $04
    inc b                                         ; $548b: $04
    inc b                                         ; $548c: $04
    db $ed                                        ; $548d: $ed
    db $ed                                        ; $548e: $ed
    db $ed                                        ; $548f: $ed
    xor $ed                                       ; $5490: $ee $ed
    rla                                           ; $5492: $17
    jr jr_082_54ae                                ; $5493: $18 $19

    db $ed                                        ; $5495: $ed
    xor $f1                                       ; $5496: $ee $f1
    ld a, [c]                                     ; $5498: $f2
    db $ed                                        ; $5499: $ed
    ld a, [de]                                    ; $549a: $1a
    push af                                       ; $549b: $f5
    or $80                                        ; $549c: $f6 $80

jr_082_549e:
    add b                                         ; $549e: $80
    add b                                         ; $549f: $80
    add b                                         ; $54a0: $80
    add b                                         ; $54a1: $80
    add b                                         ; $54a2: $80
    add b                                         ; $54a3: $80
    add b                                         ; $54a4: $80
    add b                                         ; $54a5: $80
    add b                                         ; $54a6: $80
    inc b                                         ; $54a7: $04
    inc b                                         ; $54a8: $04
    add b                                         ; $54a9: $80
    add b                                         ; $54aa: $80
    inc b                                         ; $54ab: $04
    inc b                                         ; $54ac: $04
    dec de                                        ; $54ad: $1b

jr_082_54ae:
    inc e                                         ; $54ae: $1c
    dec e                                         ; $54af: $1d
    ld e, $1f                                     ; $54b0: $1e $1f
    jr nz, @+$23                                  ; $54b2: $20 $21

    ld [hl+], a                                   ; $54b4: $22
    inc hl                                        ; $54b5: $23
    inc h                                         ; $54b6: $24
    dec h                                         ; $54b7: $25
    ld h, $27                                     ; $54b8: $26 $27
    jr z, jr_082_54e5                             ; $54ba: $28 $29

    ld a, [hl+]                                   ; $54bc: $2a
    inc b                                         ; $54bd: $04
    inc b                                         ; $54be: $04
    inc b                                         ; $54bf: $04
    inc b                                         ; $54c0: $04
    inc bc                                        ; $54c1: $03
    inc bc                                        ; $54c2: $03
    inc bc                                        ; $54c3: $03
    inc bc                                        ; $54c4: $03
    inc bc                                        ; $54c5: $03
    ld [bc], a                                    ; $54c6: $02
    ld [bc], a                                    ; $54c7: $02
    ld [bc], a                                    ; $54c8: $02
    inc bc                                        ; $54c9: $03
    ld [bc], a                                    ; $54ca: $02
    ld [bc], a                                    ; $54cb: $02
    ld [bc], a                                    ; $54cc: $02
    dec hl                                        ; $54cd: $2b
    inc l                                         ; $54ce: $2c
    dec l                                         ; $54cf: $2d
    ld l, $2f                                     ; $54d0: $2e $2f
    jr nc, @+$21                                  ; $54d2: $30 $1f

    jr nz, jr_082_5507                            ; $54d4: $20 $31

    ld [hl-], a                                   ; $54d6: $32
    inc hl                                        ; $54d7: $23
    inc h                                         ; $54d8: $24
    inc sp                                        ; $54d9: $33
    inc [hl]                                      ; $54da: $34
    daa                                           ; $54db: $27
    jr z, jr_082_54e4                             ; $54dc: $28 $06

    ld b, $06                                     ; $54de: $06 $06
    ld b, $03                                     ; $54e0: $06 $03
    inc bc                                        ; $54e2: $03
    inc bc                                        ; $54e3: $03

jr_082_54e4:
    inc bc                                        ; $54e4: $03

jr_082_54e5:
    ld [bc], a                                    ; $54e5: $02
    ld [bc], a                                    ; $54e6: $02
    ld [bc], a                                    ; $54e7: $02
    ld [bc], a                                    ; $54e8: $02
    ld [bc], a                                    ; $54e9: $02
    ld [bc], a                                    ; $54ea: $02
    ld [bc], a                                    ; $54eb: $02
    ld [bc], a                                    ; $54ec: $02
    dec [hl]                                      ; $54ed: $35
    ld [hl], $1b                                  ; $54ee: $36 $1b
    inc e                                         ; $54f0: $1c
    ld hl, $2f22                                  ; $54f1: $21 $22 $2f
    jr nc, jr_082_551b                            ; $54f4: $30 $25

    ld h, $31                                     ; $54f6: $26 $31
    ld [hl-], a                                   ; $54f8: $32
    add hl, hl                                    ; $54f9: $29
    ld a, [hl+]                                   ; $54fa: $2a
    inc sp                                        ; $54fb: $33
    inc [hl]                                      ; $54fc: $34
    inc b                                         ; $54fd: $04
    inc b                                         ; $54fe: $04
    inc b                                         ; $54ff: $04
    inc b                                         ; $5500: $04
    inc bc                                        ; $5501: $03
    inc bc                                        ; $5502: $03
    inc bc                                        ; $5503: $03
    inc bc                                        ; $5504: $03
    ld [bc], a                                    ; $5505: $02
    ld [bc], a                                    ; $5506: $02

jr_082_5507:
    ld [bc], a                                    ; $5507: $02
    ld [bc], a                                    ; $5508: $02
    ld [bc], a                                    ; $5509: $02
    ld [bc], a                                    ; $550a: $02
    ld [bc], a                                    ; $550b: $02
    ld [bc], a                                    ; $550c: $02
    db $ed                                        ; $550d: $ed
    ld a, [de]                                    ; $550e: $1a
    ld sp, hl                                     ; $550f: $f9
    ld a, [$1aed]                                 ; $5510: $fa $ed $1a
    db $fd                                        ; $5513: $fd
    cp $ed                                        ; $5514: $fe $ed
    ld a, [de]                                    ; $5516: $1a
    dec e                                         ; $5517: $1d
    ld e, $37                                     ; $5518: $1e $37
    ld a, [de]                                    ; $551a: $1a

jr_082_551b:
    cpl                                           ; $551b: $2f
    jr nc, jr_082_549e                            ; $551c: $30 $80

    add b                                         ; $551e: $80
    inc b                                         ; $551f: $04
    inc b                                         ; $5520: $04
    add b                                         ; $5521: $80
    add b                                         ; $5522: $80
    inc b                                         ; $5523: $04
    inc b                                         ; $5524: $04
    add b                                         ; $5525: $80
    add b                                         ; $5526: $80
    inc b                                         ; $5527: $04
    inc b                                         ; $5528: $04
    add b                                         ; $5529: $80
    add b                                         ; $552a: $80
    inc bc                                        ; $552b: $03
    inc bc                                        ; $552c: $03
    jr c, jr_082_5568                             ; $552d: $38 $39

    ld a, [hl-]                                   ; $552f: $3a
    dec sp                                        ; $5530: $3b
    inc a                                         ; $5531: $3c
    dec a                                         ; $5532: $3d
    ld a, $3f                                     ; $5533: $3e $3f
    ld b, b                                       ; $5535: $40
    ld b, c                                       ; $5536: $41
    ld b, d                                       ; $5537: $42
    ld b, e                                       ; $5538: $43
    rra                                           ; $5539: $1f
    jr nz, @+$23                                  ; $553a: $20 $21

    ld [hl+], a                                   ; $553c: $22
    inc bc                                        ; $553d: $03
    ld [bc], a                                    ; $553e: $02
    ld [bc], a                                    ; $553f: $02
    ld [bc], a                                    ; $5540: $02
    inc bc                                        ; $5541: $03
    ld [bc], a                                    ; $5542: $02
    ld [bc], a                                    ; $5543: $02
    ld [bc], a                                    ; $5544: $02
    inc bc                                        ; $5545: $03
    ld [bc], a                                    ; $5546: $02
    ld [bc], a                                    ; $5547: $02
    ld [bc], a                                    ; $5548: $02
    inc bc                                        ; $5549: $03
    ld [bc], a                                    ; $554a: $02
    ld [bc], a                                    ; $554b: $02
    ld [bc], a                                    ; $554c: $02
    ld b, h                                       ; $554d: $44
    ld b, l                                       ; $554e: $45
    jr c, jr_082_558a                             ; $554f: $38 $39

    ld b, [hl]                                    ; $5551: $46
    ld b, a                                       ; $5552: $47
    inc a                                         ; $5553: $3c
    dec a                                         ; $5554: $3d
    ld c, b                                       ; $5555: $48
    ld c, c                                       ; $5556: $49
    ld b, b                                       ; $5557: $40
    ld b, c                                       ; $5558: $41
    cpl                                           ; $5559: $2f
    jr nc, @+$21                                  ; $555a: $30 $1f

    jr nz, jr_082_5560                            ; $555c: $20 $02

    ld [bc], a                                    ; $555e: $02
    ld [bc], a                                    ; $555f: $02

jr_082_5560:
    ld [bc], a                                    ; $5560: $02
    ld [bc], a                                    ; $5561: $02
    ld [bc], a                                    ; $5562: $02
    ld [bc], a                                    ; $5563: $02
    ld [bc], a                                    ; $5564: $02
    ld [bc], a                                    ; $5565: $02
    ld [bc], a                                    ; $5566: $02
    ld [bc], a                                    ; $5567: $02

jr_082_5568:
    ld [bc], a                                    ; $5568: $02
    ld [bc], a                                    ; $5569: $02
    ld [bc], a                                    ; $556a: $02
    ld [bc], a                                    ; $556b: $02
    ld [bc], a                                    ; $556c: $02
    ld a, [hl-]                                   ; $556d: $3a
    dec sp                                        ; $556e: $3b
    ld b, h                                       ; $556f: $44
    ld b, l                                       ; $5570: $45
    ld a, $3f                                     ; $5571: $3e $3f
    ld b, [hl]                                    ; $5573: $46
    ld b, a                                       ; $5574: $47
    ld b, d                                       ; $5575: $42
    ld b, e                                       ; $5576: $43
    ld c, b                                       ; $5577: $48
    ld c, c                                       ; $5578: $49
    ld hl, $2f22                                  ; $5579: $21 $22 $2f
    jr nc, jr_082_5580                            ; $557c: $30 $02

    ld [bc], a                                    ; $557e: $02
    ld [bc], a                                    ; $557f: $02

jr_082_5580:
    ld [bc], a                                    ; $5580: $02
    ld [bc], a                                    ; $5581: $02
    ld [bc], a                                    ; $5582: $02
    ld [bc], a                                    ; $5583: $02
    ld [bc], a                                    ; $5584: $02
    ld [bc], a                                    ; $5585: $02
    ld [bc], a                                    ; $5586: $02
    ld [bc], a                                    ; $5587: $02
    ld [bc], a                                    ; $5588: $02
    ld [bc], a                                    ; $5589: $02

jr_082_558a:
    ld [bc], a                                    ; $558a: $02
    ld [bc], a                                    ; $558b: $02
    ld [bc], a                                    ; $558c: $02
    scf                                           ; $558d: $37
    xor $31                                       ; $558e: $ee $31
    ld [hl-], a                                   ; $5590: $32
    scf                                           ; $5591: $37
    ld c, d                                       ; $5592: $4a
    jr jr_082_55e0                                ; $5593: $18 $4b

    db $ed                                        ; $5595: $ed
    db $ed                                        ; $5596: $ed
    db $ed                                        ; $5597: $ed
    xor $ed                                       ; $5598: $ee $ed
    db $ed                                        ; $559a: $ed
    db $ed                                        ; $559b: $ed
    xor $80                                       ; $559c: $ee $80
    add b                                         ; $559e: $80
    inc bc                                        ; $559f: $03
    ld [bc], a                                    ; $55a0: $02
    add b                                         ; $55a1: $80
    add b                                         ; $55a2: $80
    add b                                         ; $55a3: $80
    add b                                         ; $55a4: $80
    add b                                         ; $55a5: $80
    add b                                         ; $55a6: $80
    add b                                         ; $55a7: $80
    add b                                         ; $55a8: $80
    add b                                         ; $55a9: $80
    add b                                         ; $55aa: $80
    add b                                         ; $55ab: $80
    add b                                         ; $55ac: $80
    inc hl                                        ; $55ad: $23
    inc h                                         ; $55ae: $24
    dec h                                         ; $55af: $25
    ld h, $27                                     ; $55b0: $26 $27
    jr z, jr_082_55dd                             ; $55b2: $28 $29

    ld a, [hl+]                                   ; $55b4: $2a
    jr c, jr_082_55f0                             ; $55b5: $38 $39

    ld a, [hl-]                                   ; $55b7: $3a
    dec sp                                        ; $55b8: $3b
    inc a                                         ; $55b9: $3c
    dec a                                         ; $55ba: $3d
    ld a, $3f                                     ; $55bb: $3e $3f
    ld [bc], a                                    ; $55bd: $02
    ld [bc], a                                    ; $55be: $02
    ld [bc], a                                    ; $55bf: $02
    ld [bc], a                                    ; $55c0: $02
    ld [bc], a                                    ; $55c1: $02
    ld [bc], a                                    ; $55c2: $02
    ld [bc], a                                    ; $55c3: $02
    ld [bc], a                                    ; $55c4: $02
    ld [bc], a                                    ; $55c5: $02
    ld [bc], a                                    ; $55c6: $02
    ld [bc], a                                    ; $55c7: $02
    ld [bc], a                                    ; $55c8: $02
    inc bc                                        ; $55c9: $03
    ld [bc], a                                    ; $55ca: $02
    ld [bc], a                                    ; $55cb: $02
    ld [bc], a                                    ; $55cc: $02
    ld sp, $2332                                  ; $55cd: $31 $32 $23
    inc h                                         ; $55d0: $24
    inc sp                                        ; $55d1: $33
    inc [hl]                                      ; $55d2: $34
    daa                                           ; $55d3: $27
    jr z, jr_082_561a                             ; $55d4: $28 $44

    ld b, l                                       ; $55d6: $45
    jr c, jr_082_5612                             ; $55d7: $38 $39

    ld b, [hl]                                    ; $55d9: $46
    ld b, a                                       ; $55da: $47
    inc a                                         ; $55db: $3c
    dec a                                         ; $55dc: $3d

jr_082_55dd:
    ld [bc], a                                    ; $55dd: $02
    ld [bc], a                                    ; $55de: $02
    ld [bc], a                                    ; $55df: $02

jr_082_55e0:
    ld [bc], a                                    ; $55e0: $02
    ld [bc], a                                    ; $55e1: $02
    ld [bc], a                                    ; $55e2: $02
    ld [bc], a                                    ; $55e3: $02
    ld [bc], a                                    ; $55e4: $02
    ld [bc], a                                    ; $55e5: $02
    ld [bc], a                                    ; $55e6: $02
    ld [bc], a                                    ; $55e7: $02
    ld [bc], a                                    ; $55e8: $02
    ld [bc], a                                    ; $55e9: $02
    ld [bc], a                                    ; $55ea: $02
    ld [bc], a                                    ; $55eb: $02
    ld [bc], a                                    ; $55ec: $02
    dec h                                         ; $55ed: $25
    ld h, $31                                     ; $55ee: $26 $31

jr_082_55f0:
    ld [hl-], a                                   ; $55f0: $32
    add hl, hl                                    ; $55f1: $29
    ld a, [hl+]                                   ; $55f2: $2a
    inc sp                                        ; $55f3: $33
    inc [hl]                                      ; $55f4: $34
    ld a, [hl-]                                   ; $55f5: $3a
    dec sp                                        ; $55f6: $3b
    ld b, h                                       ; $55f7: $44
    ld b, l                                       ; $55f8: $45
    ld a, $3f                                     ; $55f9: $3e $3f
    ld b, [hl]                                    ; $55fb: $46
    ld b, a                                       ; $55fc: $47
    ld [bc], a                                    ; $55fd: $02
    ld [bc], a                                    ; $55fe: $02
    ld [bc], a                                    ; $55ff: $02
    ld [bc], a                                    ; $5600: $02
    ld [bc], a                                    ; $5601: $02
    ld [bc], a                                    ; $5602: $02
    ld [bc], a                                    ; $5603: $02
    ld [bc], a                                    ; $5604: $02
    ld [bc], a                                    ; $5605: $02
    ld [bc], a                                    ; $5606: $02
    ld [bc], a                                    ; $5607: $02
    ld [bc], a                                    ; $5608: $02
    ld [bc], a                                    ; $5609: $02
    ld [bc], a                                    ; $560a: $02
    ld [bc], a                                    ; $560b: $02
    ld [bc], a                                    ; $560c: $02
    pop af                                        ; $560d: $f1
    ld c, h                                       ; $560e: $4c
    ld c, l                                       ; $560f: $4d
    ld c, [hl]                                    ; $5610: $4e
    push af                                       ; $5611: $f5

jr_082_5612:
    ld c, a                                       ; $5612: $4f
    ld d, b                                       ; $5613: $50
    ld d, c                                       ; $5614: $51
    ld sp, hl                                     ; $5615: $f9
    ld d, d                                       ; $5616: $52
    ld d, e                                       ; $5617: $53
    ld d, h                                       ; $5618: $54
    db $fd                                        ; $5619: $fd

jr_082_561a:
    ld d, l                                       ; $561a: $55
    ld d, [hl]                                    ; $561b: $56
    ld d, a                                       ; $561c: $57
    inc b                                         ; $561d: $04
    inc b                                         ; $561e: $04
    ld b, $06                                     ; $561f: $06 $06
    inc b                                         ; $5621: $04
    inc b                                         ; $5622: $04
    ld b, $06                                     ; $5623: $06 $06
    inc b                                         ; $5625: $04
    inc b                                         ; $5626: $04
    ld b, $06                                     ; $5627: $06 $06
    inc b                                         ; $5629: $04
    inc b                                         ; $562a: $04
    ld b, $06                                     ; $562b: $06 $06
    ld e, b                                       ; $562d: $58
    ld e, c                                       ; $562e: $59
    ld e, d                                       ; $562f: $5a
    db $10                                        ; $5630: $10
    ld e, e                                       ; $5631: $5b
    ld e, h                                       ; $5632: $5c
    ld e, l                                       ; $5633: $5d
    ld [de], a                                    ; $5634: $12
    ld e, [hl]                                    ; $5635: $5e
    ld e, a                                       ; $5636: $5f
    ld h, b                                       ; $5637: $60
    inc d                                         ; $5638: $14
    ld h, c                                       ; $5639: $61
    ld h, d                                       ; $563a: $62
    ld h, e                                       ; $563b: $63
    ld d, $06                                     ; $563c: $16 $06
    ld b, $04                                     ; $563e: $06 $04
    inc b                                         ; $5640: $04
    ld b, $06                                     ; $5641: $06 $06
    inc b                                         ; $5643: $04
    inc b                                         ; $5644: $04
    ld b, $06                                     ; $5645: $06 $06
    inc b                                         ; $5647: $04
    inc b                                         ; $5648: $04
    ld b, $06                                     ; $5649: $06 $06
    inc b                                         ; $564b: $04
    inc b                                         ; $564c: $04
    ld c, l                                       ; $564d: $4d
    ld c, [hl]                                    ; $564e: $4e
    ld e, b                                       ; $564f: $58
    ld e, c                                       ; $5650: $59
    ld d, b                                       ; $5651: $50
    ld d, c                                       ; $5652: $51
    ld e, e                                       ; $5653: $5b
    ld e, h                                       ; $5654: $5c

Call_082_5655:
    ld d, e                                       ; $5655: $53
    ld d, h                                       ; $5656: $54
    ld e, [hl]                                    ; $5657: $5e
    ld e, a                                       ; $5658: $5f
    ld d, [hl]                                    ; $5659: $56
    ld d, a                                       ; $565a: $57
    ld h, c                                       ; $565b: $61
    ld h, d                                       ; $565c: $62
    ld b, $06                                     ; $565d: $06 $06
    ld b, $06                                     ; $565f: $06 $06
    ld b, $06                                     ; $5661: $06 $06
    ld b, $06                                     ; $5663: $06 $06
    ld b, $06                                     ; $5665: $06 $06
    ld b, $06                                     ; $5667: $06 $06
    ld b, $06                                     ; $5669: $06 $06
    ld b, $06                                     ; $566b: $06 $06
    dec e                                         ; $566d: $1d
    ld h, h                                       ; $566e: $64
    ld h, l                                       ; $566f: $65
    ld h, [hl]                                    ; $5670: $66
    rra                                           ; $5671: $1f
    jr nz, @+$23                                  ; $5672: $20 $21

    ld [hl+], a                                   ; $5674: $22
    inc hl                                        ; $5675: $23
    inc h                                         ; $5676: $24
    dec h                                         ; $5677: $25
    ld h, a                                       ; $5678: $67
    daa                                           ; $5679: $27
    jr z, jr_082_56e4                             ; $567a: $28 $68

    ld l, c                                       ; $567c: $69
    inc b                                         ; $567d: $04
    inc b                                         ; $567e: $04
    ld b, $06                                     ; $567f: $06 $06
    inc bc                                        ; $5681: $03
    inc bc                                        ; $5682: $03
    inc bc                                        ; $5683: $03
    inc bc                                        ; $5684: $03
    ld [bc], a                                    ; $5685: $02
    ld [bc], a                                    ; $5686: $02
    ld [bc], a                                    ; $5687: $02
    ld [bc], a                                    ; $5688: $02
    ld [bc], a                                    ; $5689: $02
    ld [bc], a                                    ; $568a: $02
    ld [bc], a                                    ; $568b: $02
    add l                                         ; $568c: $85
    ld l, d                                       ; $568d: $6a
    ld l, e                                       ; $568e: $6b
    ld l, h                                       ; $568f: $6c
    ld [hl], $2f                                  ; $5690: $36 $2f
    jr nc, jr_082_56b3                            ; $5692: $30 $1f

    jr nz, jr_082_5703                            ; $5694: $20 $6d

    ld [hl-], a                                   ; $5696: $32
    inc hl                                        ; $5697: $23
    inc h                                         ; $5698: $24
    ld l, [hl]                                    ; $5699: $6e
    ld l, a                                       ; $569a: $6f
    daa                                           ; $569b: $27
    jr z, jr_082_56a4                             ; $569c: $28 $06

    ld b, $04                                     ; $569e: $06 $04
    inc b                                         ; $56a0: $04
    inc bc                                        ; $56a1: $03
    inc bc                                        ; $56a2: $03

jr_082_56a3:
    inc bc                                        ; $56a3: $03

jr_082_56a4:
    inc bc                                        ; $56a4: $03
    ld [bc], a                                    ; $56a5: $02
    ld [bc], a                                    ; $56a6: $02
    ld [bc], a                                    ; $56a7: $02
    ld [bc], a                                    ; $56a8: $02
    ld [bc], a                                    ; $56a9: $02
    ld [bc], a                                    ; $56aa: $02
    ld [bc], a                                    ; $56ab: $02
    ld [bc], a                                    ; $56ac: $02
    dec de                                        ; $56ad: $1b
    inc e                                         ; $56ae: $1c
    dec e                                         ; $56af: $1d
    ld e, $21                                     ; $56b0: $1e $21
    ld [hl+], a                                   ; $56b2: $22

jr_082_56b3:
    cpl                                           ; $56b3: $2f
    jr nc, @+$27                                  ; $56b4: $30 $25

    ld h, $31                                     ; $56b6: $26 $31
    ld [hl-], a                                   ; $56b8: $32
    add hl, hl                                    ; $56b9: $29
    ld a, [hl+]                                   ; $56ba: $2a
    inc sp                                        ; $56bb: $33
    inc [hl]                                      ; $56bc: $34
    inc b                                         ; $56bd: $04
    inc b                                         ; $56be: $04
    inc b                                         ; $56bf: $04
    inc b                                         ; $56c0: $04
    inc bc                                        ; $56c1: $03
    inc bc                                        ; $56c2: $03
    inc bc                                        ; $56c3: $03
    inc bc                                        ; $56c4: $03
    ld [bc], a                                    ; $56c5: $02
    ld [bc], a                                    ; $56c6: $02
    ld [bc], a                                    ; $56c7: $02
    ld [bc], a                                    ; $56c8: $02
    ld [bc], a                                    ; $56c9: $02
    ld [bc], a                                    ; $56ca: $02
    ld [bc], a                                    ; $56cb: $02
    ld [bc], a                                    ; $56cc: $02
    ld h, l                                       ; $56cd: $65
    ld h, [hl]                                    ; $56ce: $66
    ld l, d                                       ; $56cf: $6a
    ld l, e                                       ; $56d0: $6b
    rra                                           ; $56d1: $1f
    jr nz, jr_082_56f5                            ; $56d2: $20 $21

    ld [hl+], a                                   ; $56d4: $22
    inc hl                                        ; $56d5: $23
    inc h                                         ; $56d6: $24
    dec h                                         ; $56d7: $25
    ld h, $27                                     ; $56d8: $26 $27
    jr z, jr_082_5705                             ; $56da: $28 $29

    ld a, [hl+]                                   ; $56dc: $2a
    ld b, $06                                     ; $56dd: $06 $06
    ld b, $06                                     ; $56df: $06 $06
    inc bc                                        ; $56e1: $03
    inc bc                                        ; $56e2: $03
    inc bc                                        ; $56e3: $03

jr_082_56e4:
    inc bc                                        ; $56e4: $03
    ld [bc], a                                    ; $56e5: $02
    ld [bc], a                                    ; $56e6: $02
    ld [bc], a                                    ; $56e7: $02
    ld [bc], a                                    ; $56e8: $02
    ld [bc], a                                    ; $56e9: $02
    ld [bc], a                                    ; $56ea: $02
    ld [bc], a                                    ; $56eb: $02
    ld [bc], a                                    ; $56ec: $02
    jr c, jr_082_575f                             ; $56ed: $38 $70

    ld [hl], c                                    ; $56ef: $71
    ld [hl], d                                    ; $56f0: $72
    inc a                                         ; $56f1: $3c
    ld [hl], e                                    ; $56f2: $73
    ld [hl], h                                    ; $56f3: $74
    ld [hl], l                                    ; $56f4: $75

jr_082_56f5:
    ld b, b                                       ; $56f5: $40
    ld h, a                                       ; $56f6: $67
    halt                                          ; $56f7: $76
    ld [hl], a                                    ; $56f8: $77
    rra                                           ; $56f9: $1f
    ld a, b                                       ; $56fa: $78
    ld a, c                                       ; $56fb: $79
    ld a, d                                       ; $56fc: $7a
    ld [bc], a                                    ; $56fd: $02
    ld [bc], a                                    ; $56fe: $02
    add l                                         ; $56ff: $85
    add l                                         ; $5700: $85
    ld [bc], a                                    ; $5701: $02
    ld [bc], a                                    ; $5702: $02

jr_082_5703:
    dec b                                         ; $5703: $05
    dec b                                         ; $5704: $05

jr_082_5705:
    ld [bc], a                                    ; $5705: $02
    ld [bc], a                                    ; $5706: $02
    dec b                                         ; $5707: $05
    dec b                                         ; $5708: $05
    ld [bc], a                                    ; $5709: $02
    inc bc                                        ; $570a: $03
    dec b                                         ; $570b: $05
    dec b                                         ; $570c: $05
    ld a, e                                       ; $570d: $7b
    ld a, h                                       ; $570e: $7c
    ld a, l                                       ; $570f: $7d
    add hl, sp                                    ; $5710: $39
    ld a, [hl]                                    ; $5711: $7e
    ld a, a                                       ; $5712: $7f
    add b                                         ; $5713: $80
    dec a                                         ; $5714: $3d
    add c                                         ; $5715: $81
    add d                                         ; $5716: $82
    ld l, [hl]                                    ; $5717: $6e
    ld b, c                                       ; $5718: $41
    add e                                         ; $5719: $83
    add h                                         ; $571a: $84
    ld a, l                                       ; $571b: $7d
    jr nz, jr_082_56a3                            ; $571c: $20 $85

    add l                                         ; $571e: $85
    ld [bc], a                                    ; $571f: $02
    ld [bc], a                                    ; $5720: $02
    dec b                                         ; $5721: $05
    dec b                                         ; $5722: $05
    ld a, [bc]                                    ; $5723: $0a
    ld [bc], a                                    ; $5724: $02
    dec c                                         ; $5725: $0d
    dec c                                         ; $5726: $0d
    ld [bc], a                                    ; $5727: $02
    ld [bc], a                                    ; $5728: $02
    dec c                                         ; $5729: $0d
    dec c                                         ; $572a: $0d
    ld [bc], a                                    ; $572b: $02
    ld [bc], a                                    ; $572c: $02
    jr c, jr_082_5768                             ; $572d: $38 $39

    ld a, [hl-]                                   ; $572f: $3a
    dec sp                                        ; $5730: $3b
    inc a                                         ; $5731: $3c
    dec a                                         ; $5732: $3d
    ld a, $3f                                     ; $5733: $3e $3f
    ld b, b                                       ; $5735: $40
    ld b, c                                       ; $5736: $41
    ld b, d                                       ; $5737: $42
    ld b, e                                       ; $5738: $43
    rra                                           ; $5739: $1f
    jr nz, jr_082_575d                            ; $573a: $20 $21

    ld [hl+], a                                   ; $573c: $22
    ld [bc], a                                    ; $573d: $02
    ld [bc], a                                    ; $573e: $02
    ld [bc], a                                    ; $573f: $02
    ld [bc], a                                    ; $5740: $02
    ld [bc], a                                    ; $5741: $02
    ld [bc], a                                    ; $5742: $02
    ld [bc], a                                    ; $5743: $02
    ld [bc], a                                    ; $5744: $02
    ld [bc], a                                    ; $5745: $02
    ld [bc], a                                    ; $5746: $02
    ld [bc], a                                    ; $5747: $02
    ld [bc], a                                    ; $5748: $02
    ld [bc], a                                    ; $5749: $02
    ld [bc], a                                    ; $574a: $02
    ld [bc], a                                    ; $574b: $02
    ld [bc], a                                    ; $574c: $02
    inc hl                                        ; $574d: $23
    ld [hl], b                                    ; $574e: $70
    add l                                         ; $574f: $85
    add [hl]                                      ; $5750: $86
    daa                                           ; $5751: $27
    jr z, @-$77                                   ; $5752: $28 $87

    ld h, a                                       ; $5754: $67
    jr c, jr_082_5790                             ; $5755: $38 $39

    ld a, [hl-]                                   ; $5757: $3a
    dec sp                                        ; $5758: $3b
    inc a                                         ; $5759: $3c
    dec a                                         ; $575a: $3d
    ld a, $3f                                     ; $575b: $3e $3f

jr_082_575d:
    ld [bc], a                                    ; $575d: $02
    inc bc                                        ; $575e: $03

jr_082_575f:
    dec c                                         ; $575f: $0d
    dec c                                         ; $5760: $0d
    ld [bc], a                                    ; $5761: $02
    inc bc                                        ; $5762: $03
    dec bc                                        ; $5763: $0b
    inc bc                                        ; $5764: $03
    ld [bc], a                                    ; $5765: $02
    ld [bc], a                                    ; $5766: $02
    ld [bc], a                                    ; $5767: $02

jr_082_5768:
    ld [bc], a                                    ; $5768: $02
    ld [bc], a                                    ; $5769: $02
    ld [bc], a                                    ; $576a: $02
    ld [bc], a                                    ; $576b: $02
    ld [bc], a                                    ; $576c: $02
    adc b                                         ; $576d: $88
    adc c                                         ; $576e: $89
    adc d                                         ; $576f: $8a
    inc h                                         ; $5770: $24
    adc e                                         ; $5771: $8b
    ld l, a                                       ; $5772: $6f
    daa                                           ; $5773: $27
    jr z, @+$46                                   ; $5774: $28 $44

    ld b, l                                       ; $5776: $45
    jr c, @+$3b                                   ; $5777: $38 $39

    ld b, [hl]                                    ; $5779: $46
    ld b, a                                       ; $577a: $47
    inc a                                         ; $577b: $3c
    dec a                                         ; $577c: $3d
    dec c                                         ; $577d: $0d
    dec c                                         ; $577e: $0d
    ld a, [bc]                                    ; $577f: $0a

jr_082_5780:
    ld [bc], a                                    ; $5780: $02
    dec bc                                        ; $5781: $0b
    inc bc                                        ; $5782: $03
    ld [bc], a                                    ; $5783: $02
    ld [bc], a                                    ; $5784: $02
    ld [bc], a                                    ; $5785: $02
    ld [bc], a                                    ; $5786: $02
    ld [bc], a                                    ; $5787: $02
    ld [bc], a                                    ; $5788: $02
    ld [bc], a                                    ; $5789: $02
    ld [bc], a                                    ; $578a: $02
    ld [bc], a                                    ; $578b: $02
    ld [bc], a                                    ; $578c: $02
    inc hl                                        ; $578d: $23
    inc h                                         ; $578e: $24
    dec h                                         ; $578f: $25

jr_082_5790:
    ld h, $27                                     ; $5790: $26 $27
    jr z, jr_082_57bd                             ; $5792: $28 $29

    ld a, [hl+]                                   ; $5794: $2a
    jr c, jr_082_57d0                             ; $5795: $38 $39

    ld a, [hl-]                                   ; $5797: $3a
    dec sp                                        ; $5798: $3b
    inc a                                         ; $5799: $3c
    dec a                                         ; $579a: $3d
    ld a, $3f                                     ; $579b: $3e $3f
    ld [bc], a                                    ; $579d: $02
    ld [bc], a                                    ; $579e: $02
    ld [bc], a                                    ; $579f: $02
    ld [bc], a                                    ; $57a0: $02
    ld [bc], a                                    ; $57a1: $02
    ld [bc], a                                    ; $57a2: $02
    ld [bc], a                                    ; $57a3: $02
    ld [bc], a                                    ; $57a4: $02
    ld [bc], a                                    ; $57a5: $02
    ld [bc], a                                    ; $57a6: $02
    ld [bc], a                                    ; $57a7: $02
    ld [bc], a                                    ; $57a8: $02
    ld [bc], a                                    ; $57a9: $02
    ld [bc], a                                    ; $57aa: $02
    ld [bc], a                                    ; $57ab: $02
    ld [bc], a                                    ; $57ac: $02
    xor $ed                                       ; $57ad: $ee $ed
    db $ed                                        ; $57af: $ed
    db $ed                                        ; $57b0: $ed
    xor $ed                                       ; $57b1: $ee $ed
    db $ed                                        ; $57b3: $ed
    db $ed                                        ; $57b4: $ed
    xor $ed                                       ; $57b5: $ee $ed
    db $ed                                        ; $57b7: $ed
    db $ed                                        ; $57b8: $ed
    xor $ed                                       ; $57b9: $ee $ed
    db $ed                                        ; $57bb: $ed
    db $ed                                        ; $57bc: $ed

jr_082_57bd:
    add b                                         ; $57bd: $80
    add b                                         ; $57be: $80
    add b                                         ; $57bf: $80
    add b                                         ; $57c0: $80
    add b                                         ; $57c1: $80
    add b                                         ; $57c2: $80
    add b                                         ; $57c3: $80
    add b                                         ; $57c4: $80
    add b                                         ; $57c5: $80
    add b                                         ; $57c6: $80
    add b                                         ; $57c7: $80
    add b                                         ; $57c8: $80
    add b                                         ; $57c9: $80
    add b                                         ; $57ca: $80
    add b                                         ; $57cb: $80
    add b                                         ; $57cc: $80
    dec [hl]                                      ; $57cd: $35
    ld [hl], $1b                                  ; $57ce: $36 $1b

jr_082_57d0:
    inc e                                         ; $57d0: $1c
    cpl                                           ; $57d1: $2f
    jr nc, @+$21                                  ; $57d2: $30 $1f

    jr nz, jr_082_5807                            ; $57d4: $20 $31

    ld [hl-], a                                   ; $57d6: $32
    inc hl                                        ; $57d7: $23
    inc h                                         ; $57d8: $24
    inc sp                                        ; $57d9: $33
    inc [hl]                                      ; $57da: $34
    daa                                           ; $57db: $27
    jr z, jr_082_57e2                             ; $57dc: $28 $04

    inc b                                         ; $57de: $04
    inc b                                         ; $57df: $04
    inc b                                         ; $57e0: $04
    inc bc                                        ; $57e1: $03

jr_082_57e2:
    inc bc                                        ; $57e2: $03
    inc bc                                        ; $57e3: $03
    inc bc                                        ; $57e4: $03
    ld [bc], a                                    ; $57e5: $02
    ld [bc], a                                    ; $57e6: $02
    ld [bc], a                                    ; $57e7: $02
    inc bc                                        ; $57e8: $03
    ld [bc], a                                    ; $57e9: $02
    ld [bc], a                                    ; $57ea: $02
    ld [bc], a                                    ; $57eb: $02
    inc bc                                        ; $57ec: $03
    xor $ed                                       ; $57ed: $ee $ed
    db $ed                                        ; $57ef: $ed
    db $ed                                        ; $57f0: $ed
    ld c, d                                       ; $57f1: $4a
    jr jr_082_5780                                ; $57f2: $18 $8c

    db $ed                                        ; $57f4: $ed
    rrca                                          ; $57f5: $0f
    db $10                                        ; $57f6: $10
    xor $ed                                       ; $57f7: $ee $ed
    ld de, $1a12                                  ; $57f9: $11 $12 $1a
    db $ed                                        ; $57fc: $ed
    add b                                         ; $57fd: $80
    add b                                         ; $57fe: $80
    add b                                         ; $57ff: $80
    add b                                         ; $5800: $80
    add b                                         ; $5801: $80
    add b                                         ; $5802: $80
    adc b                                         ; $5803: $88
    add b                                         ; $5804: $80
    inc b                                         ; $5805: $04
    inc b                                         ; $5806: $04

jr_082_5807:
    add b                                         ; $5807: $80
    add b                                         ; $5808: $80
    inc b                                         ; $5809: $04
    inc b                                         ; $580a: $04
    add b                                         ; $580b: $80
    add b                                         ; $580c: $80
    ld b, h                                       ; $580d: $44
    ld b, l                                       ; $580e: $45
    jr c, jr_082_584a                             ; $580f: $38 $39

    ld b, [hl]                                    ; $5811: $46
    ld b, a                                       ; $5812: $47
    inc a                                         ; $5813: $3c
    dec a                                         ; $5814: $3d
    ld c, b                                       ; $5815: $48
    ld c, c                                       ; $5816: $49
    ld b, b                                       ; $5817: $40
    ld b, c                                       ; $5818: $41
    cpl                                           ; $5819: $2f
    jr nc, @+$21                                  ; $581a: $30 $1f

    jr nz, jr_082_5820                            ; $581c: $20 $02

    ld [bc], a                                    ; $581e: $02
    ld [bc], a                                    ; $581f: $02

jr_082_5820:
    inc bc                                        ; $5820: $03
    ld [bc], a                                    ; $5821: $02
    ld [bc], a                                    ; $5822: $02
    ld [bc], a                                    ; $5823: $02
    inc bc                                        ; $5824: $03
    ld [bc], a                                    ; $5825: $02
    ld [bc], a                                    ; $5826: $02
    ld [bc], a                                    ; $5827: $02
    inc bc                                        ; $5828: $03
    ld [bc], a                                    ; $5829: $02
    ld [bc], a                                    ; $582a: $02
    ld [bc], a                                    ; $582b: $02
    inc bc                                        ; $582c: $03
    inc de                                        ; $582d: $13
    inc d                                         ; $582e: $14
    ld a, [de]                                    ; $582f: $1a
    db $ed                                        ; $5830: $ed
    dec d                                         ; $5831: $15
    ld d, $1a                                     ; $5832: $16 $1a
    db $ed                                        ; $5834: $ed
    dec [hl]                                      ; $5835: $35
    ld [hl], $1a                                  ; $5836: $36 $1a
    db $ed                                        ; $5838: $ed
    ld hl, $1a22                                  ; $5839: $21 $22 $1a
    scf                                           ; $583c: $37
    inc b                                         ; $583d: $04
    inc b                                         ; $583e: $04
    add b                                         ; $583f: $80
    add b                                         ; $5840: $80
    inc b                                         ; $5841: $04
    inc b                                         ; $5842: $04
    add b                                         ; $5843: $80
    add b                                         ; $5844: $80
    inc b                                         ; $5845: $04
    inc b                                         ; $5846: $04
    add b                                         ; $5847: $80
    add b                                         ; $5848: $80
    inc bc                                        ; $5849: $03

jr_082_584a:
    inc bc                                        ; $584a: $03
    add b                                         ; $584b: $80
    and b                                         ; $584c: $a0
    ld sp, $2332                                  ; $584d: $31 $32 $23
    inc h                                         ; $5850: $24
    inc sp                                        ; $5851: $33
    inc [hl]                                      ; $5852: $34
    daa                                           ; $5853: $27
    jr z, jr_082_589a                             ; $5854: $28 $44

    ld b, l                                       ; $5856: $45
    jr c, jr_082_5892                             ; $5857: $38 $39

    ld b, [hl]                                    ; $5859: $46
    ld b, a                                       ; $585a: $47
    inc a                                         ; $585b: $3c
    dec a                                         ; $585c: $3d
    ld [bc], a                                    ; $585d: $02
    ld [bc], a                                    ; $585e: $02
    ld [bc], a                                    ; $585f: $02
    ld [bc], a                                    ; $5860: $02
    ld [bc], a                                    ; $5861: $02
    ld [bc], a                                    ; $5862: $02
    ld [bc], a                                    ; $5863: $02
    ld [bc], a                                    ; $5864: $02
    ld [bc], a                                    ; $5865: $02
    ld [bc], a                                    ; $5866: $02
    ld [bc], a                                    ; $5867: $02
    ld [bc], a                                    ; $5868: $02
    ld [bc], a                                    ; $5869: $02
    ld [bc], a                                    ; $586a: $02
    ld [bc], a                                    ; $586b: $02
    inc bc                                        ; $586c: $03
    dec h                                         ; $586d: $25
    ld h, $ee                                     ; $586e: $26 $ee
    scf                                           ; $5870: $37
    rla                                           ; $5871: $17
    jr jr_082_588d                                ; $5872: $18 $19

    scf                                           ; $5874: $37
    xor $ed                                       ; $5875: $ee $ed
    db $ed                                        ; $5877: $ed
    db $ed                                        ; $5878: $ed
    xor $ed                                       ; $5879: $ee $ed
    db $ed                                        ; $587b: $ed
    db $ed                                        ; $587c: $ed
    ld [bc], a                                    ; $587d: $02
    inc bc                                        ; $587e: $03
    add b                                         ; $587f: $80
    and b                                         ; $5880: $a0
    add b                                         ; $5881: $80
    add b                                         ; $5882: $80
    add b                                         ; $5883: $80
    and b                                         ; $5884: $a0
    add b                                         ; $5885: $80
    add b                                         ; $5886: $80
    add b                                         ; $5887: $80
    add b                                         ; $5888: $80
    add b                                         ; $5889: $80
    add b                                         ; $588a: $80
    add b                                         ; $588b: $80
    add b                                         ; $588c: $80

jr_082_588d:
    ld b, b                                       ; $588d: $40
    ld b, c                                       ; $588e: $41
    ld b, d                                       ; $588f: $42
    ld b, e                                       ; $5890: $43
    rra                                           ; $5891: $1f

jr_082_5892:
    jr nz, @+$23                                  ; $5892: $20 $21

    ld [hl+], a                                   ; $5894: $22
    inc hl                                        ; $5895: $23
    inc h                                         ; $5896: $24
    dec h                                         ; $5897: $25
    ld h, $27                                     ; $5898: $26 $27

jr_082_589a:
    jr z, jr_082_58c5                             ; $589a: $28 $29

    ld a, [hl+]                                   ; $589c: $2a
    inc bc                                        ; $589d: $03
    ld [bc], a                                    ; $589e: $02
    ld [bc], a                                    ; $589f: $02
    ld [bc], a                                    ; $58a0: $02
    inc bc                                        ; $58a1: $03
    ld [bc], a                                    ; $58a2: $02
    ld [bc], a                                    ; $58a3: $02
    ld [bc], a                                    ; $58a4: $02
    inc bc                                        ; $58a5: $03
    ld [bc], a                                    ; $58a6: $02
    ld [bc], a                                    ; $58a7: $02
    ld [bc], a                                    ; $58a8: $02
    inc bc                                        ; $58a9: $03
    ld [bc], a                                    ; $58aa: $02
    ld [bc], a                                    ; $58ab: $02
    ld [bc], a                                    ; $58ac: $02
    ld c, b                                       ; $58ad: $48
    ld c, c                                       ; $58ae: $49
    ld b, b                                       ; $58af: $40
    ld b, c                                       ; $58b0: $41
    cpl                                           ; $58b1: $2f
    jr nc, @+$21                                  ; $58b2: $30 $1f

    jr nz, jr_082_58e7                            ; $58b4: $20 $31

    ld [hl-], a                                   ; $58b6: $32
    inc hl                                        ; $58b7: $23
    inc h                                         ; $58b8: $24
    inc sp                                        ; $58b9: $33
    inc [hl]                                      ; $58ba: $34
    daa                                           ; $58bb: $27
    jr z, jr_082_58c0                             ; $58bc: $28 $02

    ld [bc], a                                    ; $58be: $02
    ld [bc], a                                    ; $58bf: $02

jr_082_58c0:
    ld [bc], a                                    ; $58c0: $02
    ld [bc], a                                    ; $58c1: $02
    ld [bc], a                                    ; $58c2: $02
    ld [bc], a                                    ; $58c3: $02
    ld [bc], a                                    ; $58c4: $02

jr_082_58c5:
    ld [bc], a                                    ; $58c5: $02
    ld [bc], a                                    ; $58c6: $02
    ld [bc], a                                    ; $58c7: $02
    ld [bc], a                                    ; $58c8: $02
    ld [bc], a                                    ; $58c9: $02
    ld [bc], a                                    ; $58ca: $02
    ld [bc], a                                    ; $58cb: $02
    ld [bc], a                                    ; $58cc: $02
    ld b, d                                       ; $58cd: $42
    ld b, e                                       ; $58ce: $43
    ld c, b                                       ; $58cf: $48
    ld c, c                                       ; $58d0: $49
    ld hl, $2f22                                  ; $58d1: $21 $22 $2f
    jr nc, jr_082_58fb                            ; $58d4: $30 $25

    ld h, $31                                     ; $58d6: $26 $31
    ld [hl-], a                                   ; $58d8: $32
    add hl, hl                                    ; $58d9: $29
    ld a, [hl+]                                   ; $58da: $2a
    inc sp                                        ; $58db: $33
    inc [hl]                                      ; $58dc: $34
    ld [bc], a                                    ; $58dd: $02
    ld [bc], a                                    ; $58de: $02
    ld [bc], a                                    ; $58df: $02
    ld [bc], a                                    ; $58e0: $02
    ld [bc], a                                    ; $58e1: $02
    ld [bc], a                                    ; $58e2: $02
    ld [bc], a                                    ; $58e3: $02
    ld [bc], a                                    ; $58e4: $02
    ld [bc], a                                    ; $58e5: $02
    ld [bc], a                                    ; $58e6: $02

jr_082_58e7:
    ld [bc], a                                    ; $58e7: $02
    ld [bc], a                                    ; $58e8: $02
    ld [bc], a                                    ; $58e9: $02
    ld [bc], a                                    ; $58ea: $02
    ld [bc], a                                    ; $58eb: $02
    ld [bc], a                                    ; $58ec: $02
    adc l                                         ; $58ed: $8d
    adc l                                         ; $58ee: $8d
    adc l                                         ; $58ef: $8d
    adc l                                         ; $58f0: $8d
    adc [hl]                                      ; $58f1: $8e

jr_082_58f2:
    adc a                                         ; $58f2: $8f
    adc [hl]                                      ; $58f3: $8e
    adc a                                         ; $58f4: $8f
    db $ed                                        ; $58f5: $ed
    db $ed                                        ; $58f6: $ed
    db $ed                                        ; $58f7: $ed
    db $ed                                        ; $58f8: $ed
    db $ed                                        ; $58f9: $ed
    db $ed                                        ; $58fa: $ed

jr_082_58fb:
    db $ed                                        ; $58fb: $ed
    db $ed                                        ; $58fc: $ed
    add hl, bc                                    ; $58fd: $09
    add hl, bc                                    ; $58fe: $09
    add hl, bc                                    ; $58ff: $09
    add hl, bc                                    ; $5900: $09
    add hl, bc                                    ; $5901: $09
    add hl, bc                                    ; $5902: $09
    add hl, bc                                    ; $5903: $09
    add hl, bc                                    ; $5904: $09
    ld bc, $0101                                  ; $5905: $01 $01 $01
    ld bc, $0101                                  ; $5908: $01 $01 $01
    ld bc, $8d01                                  ; $590b: $01 $01 $8d
    adc l                                         ; $590e: $8d
    sub b                                         ; $590f: $90
    add hl, sp                                    ; $5910: $39
    adc [hl]                                      ; $5911: $8e
    adc a                                         ; $5912: $8f
    sub c                                         ; $5913: $91
    dec a                                         ; $5914: $3d
    db $ed                                        ; $5915: $ed
    db $ed                                        ; $5916: $ed
    sub c                                         ; $5917: $91
    ld b, c                                       ; $5918: $41
    db $ed                                        ; $5919: $ed
    db $ed                                        ; $591a: $ed
    sub c                                         ; $591b: $91
    jr nz, @+$0b                                  ; $591c: $20 $09

    add hl, bc                                    ; $591e: $09
    add hl, bc                                    ; $591f: $09
    ld [bc], a                                    ; $5920: $02
    add hl, bc                                    ; $5921: $09
    add hl, bc                                    ; $5922: $09
    add hl, bc                                    ; $5923: $09
    inc bc                                        ; $5924: $03
    ld bc, $0901                                  ; $5925: $01 $01 $09
    inc bc                                        ; $5928: $03
    ld bc, $0901                                  ; $5929: $01 $01 $09
    inc bc                                        ; $592c: $03
    db $ed                                        ; $592d: $ed
    db $ed                                        ; $592e: $ed
    db $ed                                        ; $592f: $ed
    db $ed                                        ; $5930: $ed
    sub d                                         ; $5931: $92
    sub e                                         ; $5932: $93
    sub h                                         ; $5933: $94
    sub e                                         ; $5934: $93
    sub l                                         ; $5935: $95
    sub [hl]                                      ; $5936: $96
    sub l                                         ; $5937: $95
    sub [hl]                                      ; $5938: $96
    sub a                                         ; $5939: $97
    sbc b                                         ; $593a: $98
    sbc c                                         ; $593b: $99
    sbc d                                         ; $593c: $9a
    ld bc, $0101                                  ; $593d: $01 $01 $01
    ld bc, $0909                                  ; $5940: $01 $09 $09
    add hl, bc                                    ; $5943: $09
    add hl, bc                                    ; $5944: $09
    add hl, bc                                    ; $5945: $09

jr_082_5946:
    add hl, bc                                    ; $5946: $09
    add hl, bc                                    ; $5947: $09
    add hl, bc                                    ; $5948: $09
    add hl, bc                                    ; $5949: $09
    add hl, bc                                    ; $594a: $09
    add hl, bc                                    ; $594b: $09
    add hl, bc                                    ; $594c: $09
    db $ed                                        ; $594d: $ed
    db $ed                                        ; $594e: $ed
    sub c                                         ; $594f: $91
    inc h                                         ; $5950: $24
    sub h                                         ; $5951: $94
    sbc e                                         ; $5952: $9b
    sub c                                         ; $5953: $91
    jr z, jr_082_58f2                             ; $5954: $28 $9c

    sbc l                                         ; $5956: $9d
    sub c                                         ; $5957: $91
    add hl, sp                                    ; $5958: $39
    sbc [hl]                                      ; $5959: $9e
    sbc a                                         ; $595a: $9f
    sub c                                         ; $595b: $91
    dec a                                         ; $595c: $3d
    ld bc, $0901                                  ; $595d: $01 $01 $09
    inc bc                                        ; $5960: $03
    add hl, bc                                    ; $5961: $09
    add hl, bc                                    ; $5962: $09
    add hl, bc                                    ; $5963: $09
    inc bc                                        ; $5964: $03
    add hl, bc                                    ; $5965: $09
    add hl, bc                                    ; $5966: $09
    add hl, bc                                    ; $5967: $09
    inc bc                                        ; $5968: $03
    add hl, bc                                    ; $5969: $09
    add hl, bc                                    ; $596a: $09
    add hl, bc                                    ; $596b: $09
    inc bc                                        ; $596c: $03

jr_082_596d:
    and b                                         ; $596d: $a0
    and c                                         ; $596e: $a1
    and d                                         ; $596f: $a2
    and e                                         ; $5970: $a3
    and h                                         ; $5971: $a4
    and l                                         ; $5972: $a5
    and [hl]                                      ; $5973: $a6
    and a                                         ; $5974: $a7
    xor b                                         ; $5975: $a8
    xor c                                         ; $5976: $a9
    xor d                                         ; $5977: $aa
    xor e                                         ; $5978: $ab
    daa                                           ; $5979: $27
    jr z, jr_082_59a5                             ; $597a: $28 $29

    ld a, [hl+]                                   ; $597c: $2a
    add hl, bc                                    ; $597d: $09
    add hl, bc                                    ; $597e: $09
    add hl, bc                                    ; $597f: $09
    add hl, bc                                    ; $5980: $09
    add hl, bc                                    ; $5981: $09
    add hl, bc                                    ; $5982: $09
    add hl, bc                                    ; $5983: $09
    add hl, bc                                    ; $5984: $09
    dec bc                                        ; $5985: $0b
    ld a, [bc]                                    ; $5986: $0a
    ld a, [bc]                                    ; $5987: $0a
    ld a, [bc]                                    ; $5988: $0a
    inc bc                                        ; $5989: $03
    ld [bc], a                                    ; $598a: $02
    ld [bc], a                                    ; $598b: $02

jr_082_598c:
    ld [bc], a                                    ; $598c: $02
    xor h                                         ; $598d: $ac
    xor l                                         ; $598e: $ad
    sub c                                         ; $598f: $91
    ld b, c                                       ; $5990: $41
    xor [hl]                                      ; $5991: $ae
    xor a                                         ; $5992: $af
    sub c                                         ; $5993: $91
    jr nz, jr_082_5946                            ; $5994: $20 $b0

    or c                                          ; $5996: $b1
    or d                                          ; $5997: $b2
    inc h                                         ; $5998: $24
    inc sp                                        ; $5999: $33
    inc [hl]                                      ; $599a: $34
    daa                                           ; $599b: $27
    jr z, jr_082_59a7                             ; $599c: $28 $09

    add hl, bc                                    ; $599e: $09
    add hl, bc                                    ; $599f: $09
    inc bc                                        ; $59a0: $03
    add hl, bc                                    ; $59a1: $09
    add hl, bc                                    ; $59a2: $09
    add hl, bc                                    ; $59a3: $09
    inc bc                                        ; $59a4: $03

jr_082_59a5:
    ld a, [bc]                                    ; $59a5: $0a
    ld a, [bc]                                    ; $59a6: $0a

jr_082_59a7:
    add hl, bc                                    ; $59a7: $09
    inc bc                                        ; $59a8: $03
    ld [bc], a                                    ; $59a9: $02
    ld [bc], a                                    ; $59aa: $02
    inc bc                                        ; $59ab: $03
    inc bc                                        ; $59ac: $03
    ld b, b                                       ; $59ad: $40
    or e                                          ; $59ae: $b3
    or h                                          ; $59af: $b4
    or h                                          ; $59b0: $b4
    rra                                           ; $59b1: $1f
    or l                                          ; $59b2: $b5
    or [hl]                                       ; $59b3: $b6
    or [hl]                                       ; $59b4: $b6
    inc hl                                        ; $59b5: $23
    or l                                          ; $59b6: $b5
    or [hl]                                       ; $59b7: $b6
    or [hl]                                       ; $59b8: $b6
    daa                                           ; $59b9: $27
    or l                                          ; $59ba: $b5
    or [hl]                                       ; $59bb: $b6
    or [hl]                                       ; $59bc: $b6
    ld [bc], a                                    ; $59bd: $02
    adc a                                         ; $59be: $8f
    adc a                                         ; $59bf: $8f
    adc a                                         ; $59c0: $8f
    ld [bc], a                                    ; $59c1: $02
    adc a                                         ; $59c2: $8f
    adc a                                         ; $59c3: $8f

jr_082_59c4:
    adc a                                         ; $59c4: $8f
    inc bc                                        ; $59c5: $03
    adc a                                         ; $59c6: $8f
    adc a                                         ; $59c7: $8f
    adc a                                         ; $59c8: $8f
    inc bc                                        ; $59c9: $03
    rrca                                          ; $59ca: $0f
    rrca                                          ; $59cb: $0f
    rrca                                          ; $59cc: $0f
    or h                                          ; $59cd: $b4
    or h                                          ; $59ce: $b4
    or a                                          ; $59cf: $b7
    ld b, c                                       ; $59d0: $41
    or [hl]                                       ; $59d1: $b6
    or [hl]                                       ; $59d2: $b6
    cp b                                          ; $59d3: $b8
    jr nz, jr_082_598c                            ; $59d4: $20 $b6

    or [hl]                                       ; $59d6: $b6
    cp b                                          ; $59d7: $b8
    inc h                                         ; $59d8: $24
    or [hl]                                       ; $59d9: $b6
    or [hl]                                       ; $59da: $b6
    cp b                                          ; $59db: $b8
    jr z, jr_082_596d                             ; $59dc: $28 $8f

    adc a                                         ; $59de: $8f

jr_082_59df:
    adc a                                         ; $59df: $8f
    ld [bc], a                                    ; $59e0: $02
    adc a                                         ; $59e1: $8f
    adc a                                         ; $59e2: $8f
    adc a                                         ; $59e3: $8f
    ld [bc], a                                    ; $59e4: $02
    adc a                                         ; $59e5: $8f
    adc a                                         ; $59e6: $8f
    adc a                                         ; $59e7: $8f
    ld [bc], a                                    ; $59e8: $02
    rrca                                          ; $59e9: $0f
    rrca                                          ; $59ea: $0f
    rrca                                          ; $59eb: $0f
    ld [bc], a                                    ; $59ec: $02
    ld b, b                                       ; $59ed: $40
    ld b, c                                       ; $59ee: $41
    ld b, d                                       ; $59ef: $42
    ld b, e                                       ; $59f0: $43
    rra                                           ; $59f1: $1f
    jr nz, jr_082_5a15                            ; $59f2: $20 $21

    ld [hl+], a                                   ; $59f4: $22
    inc hl                                        ; $59f5: $23
    inc h                                         ; $59f6: $24
    dec h                                         ; $59f7: $25
    ld h, $27                                     ; $59f8: $26 $27
    jr z, jr_082_5a25                             ; $59fa: $28 $29

    ld a, [hl+]                                   ; $59fc: $2a
    ld [bc], a                                    ; $59fd: $02
    ld [bc], a                                    ; $59fe: $02
    ld [bc], a                                    ; $59ff: $02
    ld [bc], a                                    ; $5a00: $02
    ld [bc], a                                    ; $5a01: $02
    ld [bc], a                                    ; $5a02: $02
    ld [bc], a                                    ; $5a03: $02
    ld [bc], a                                    ; $5a04: $02
    ld [bc], a                                    ; $5a05: $02
    ld [bc], a                                    ; $5a06: $02
    ld [bc], a                                    ; $5a07: $02
    ld [bc], a                                    ; $5a08: $02
    ld [bc], a                                    ; $5a09: $02
    ld [bc], a                                    ; $5a0a: $02
    ld [bc], a                                    ; $5a0b: $02
    ld [bc], a                                    ; $5a0c: $02
    jr c, jr_082_59c4                             ; $5a0d: $38 $b5

    or [hl]                                       ; $5a0f: $b6
    or [hl]                                       ; $5a10: $b6
    inc a                                         ; $5a11: $3c
    cp c                                          ; $5a12: $b9
    cp d                                          ; $5a13: $ba
    cp d                                          ; $5a14: $ba

jr_082_5a15:
    ld b, b                                       ; $5a15: $40
    cp e                                          ; $5a16: $bb
    cp h                                          ; $5a17: $bc
    cp l                                          ; $5a18: $bd
    rra                                           ; $5a19: $1f
    cp [hl]                                       ; $5a1a: $be
    cp a                                          ; $5a1b: $bf
    ret nz                                        ; $5a1c: $c0

    inc bc                                        ; $5a1d: $03
    rrca                                          ; $5a1e: $0f
    rrca                                          ; $5a1f: $0f
    rrca                                          ; $5a20: $0f
    inc bc                                        ; $5a21: $03
    rrca                                          ; $5a22: $0f
    rrca                                          ; $5a23: $0f
    rrca                                          ; $5a24: $0f

jr_082_5a25:
    inc bc                                        ; $5a25: $03
    rrca                                          ; $5a26: $0f
    rrca                                          ; $5a27: $0f
    rrca                                          ; $5a28: $0f
    inc bc                                        ; $5a29: $03
    rrca                                          ; $5a2a: $0f
    rrca                                          ; $5a2b: $0f
    rrca                                          ; $5a2c: $0f
    or [hl]                                       ; $5a2d: $b6
    or [hl]                                       ; $5a2e: $b6
    cp b                                          ; $5a2f: $b8
    add hl, sp                                    ; $5a30: $39
    cp d                                          ; $5a31: $ba
    cp d                                          ; $5a32: $ba
    pop bc                                        ; $5a33: $c1
    dec a                                         ; $5a34: $3d
    jp nz, $c4c3                                  ; $5a35: $c2 $c3 $c4

    ld b, c                                       ; $5a38: $41
    push bc                                       ; $5a39: $c5
    add $c7                                       ; $5a3a: $c6 $c7
    jr nz, jr_082_5a4d                            ; $5a3c: $20 $0f

    rrca                                          ; $5a3e: $0f
    rrca                                          ; $5a3f: $0f
    ld [bc], a                                    ; $5a40: $02
    rrca                                          ; $5a41: $0f
    rrca                                          ; $5a42: $0f
    rrca                                          ; $5a43: $0f
    ld [bc], a                                    ; $5a44: $02
    rrca                                          ; $5a45: $0f
    rrca                                          ; $5a46: $0f
    rrca                                          ; $5a47: $0f

jr_082_5a48:
    ld [bc], a                                    ; $5a48: $02
    rrca                                          ; $5a49: $0f
    rrca                                          ; $5a4a: $0f
    rrca                                          ; $5a4b: $0f
    ld [bc], a                                    ; $5a4c: $02

jr_082_5a4d:
    jr c, jr_082_59df                             ; $5a4d: $38 $90

    adc l                                         ; $5a4f: $8d
    adc l                                         ; $5a50: $8d
    inc a                                         ; $5a51: $3c
    sub c                                         ; $5a52: $91
    adc a                                         ; $5a53: $8f
    adc [hl]                                      ; $5a54: $8e
    ld b, b                                       ; $5a55: $40
    sub c                                         ; $5a56: $91
    db $ed                                        ; $5a57: $ed
    db $ed                                        ; $5a58: $ed
    rra                                           ; $5a59: $1f
    sub c                                         ; $5a5a: $91
    db $ed                                        ; $5a5b: $ed
    db $ed                                        ; $5a5c: $ed
    ld [bc], a                                    ; $5a5d: $02
    add hl, hl                                    ; $5a5e: $29
    add hl, hl                                    ; $5a5f: $29
    add hl, hl                                    ; $5a60: $29
    inc bc                                        ; $5a61: $03
    add hl, hl                                    ; $5a62: $29
    add hl, hl                                    ; $5a63: $29
    add hl, bc                                    ; $5a64: $09
    inc bc                                        ; $5a65: $03

jr_082_5a66:
    add hl, hl                                    ; $5a66: $29
    ld bc, $0301                                  ; $5a67: $01 $01 $03
    add hl, hl                                    ; $5a6a: $29
    ld bc, $2301                                  ; $5a6b: $01 $01 $23
    ret z                                         ; $5a6e: $c8

    ret                                           ; $5a6f: $c9


    jp z, $cb27                                   ; $5a70: $ca $27 $cb

    call z, $38cd                                 ; $5a73: $cc $cd $38
    adc $cf                                       ; $5a76: $ce $cf
    ret nc                                        ; $5a78: $d0

    inc a                                         ; $5a79: $3c
    dec a                                         ; $5a7a: $3d
    ld a, $3f                                     ; $5a7b: $3e $3f
    inc bc                                        ; $5a7d: $03
    rrca                                          ; $5a7e: $0f
    rrca                                          ; $5a7f: $0f
    rrca                                          ; $5a80: $0f

jr_082_5a81:
    inc bc                                        ; $5a81: $03
    rrca                                          ; $5a82: $0f
    rrca                                          ; $5a83: $0f
    rrca                                          ; $5a84: $0f
    inc bc                                        ; $5a85: $03
    rrca                                          ; $5a86: $0f
    rrca                                          ; $5a87: $0f
    rrca                                          ; $5a88: $0f
    inc bc                                        ; $5a89: $03
    inc bc                                        ; $5a8a: $03
    inc bc                                        ; $5a8b: $03
    inc bc                                        ; $5a8c: $03
    pop de                                        ; $5a8d: $d1
    jp nc, Jump_000_24d3                          ; $5a8e: $d2 $d3 $24

    call nc, $d6d5                                ; $5a91: $d4 $d5 $d6
    jr z, jr_082_5a66                             ; $5a94: $28 $d0

    rst $08                                       ; $5a96: $cf
    adc $39                                       ; $5a97: $ce $39
    ld b, [hl]                                    ; $5a99: $46
    ld b, a                                       ; $5a9a: $47
    inc a                                         ; $5a9b: $3c
    dec a                                         ; $5a9c: $3d
    rrca                                          ; $5a9d: $0f
    rrca                                          ; $5a9e: $0f
    rrca                                          ; $5a9f: $0f
    ld [bc], a                                    ; $5aa0: $02
    rrca                                          ; $5aa1: $0f
    rrca                                          ; $5aa2: $0f
    rrca                                          ; $5aa3: $0f
    ld [bc], a                                    ; $5aa4: $02
    cpl                                           ; $5aa5: $2f
    rrca                                          ; $5aa6: $0f
    cpl                                           ; $5aa7: $2f
    ld [bc], a                                    ; $5aa8: $02
    inc bc                                        ; $5aa9: $03
    inc bc                                        ; $5aaa: $03
    inc bc                                        ; $5aab: $03
    ld [bc], a                                    ; $5aac: $02
    inc hl                                        ; $5aad: $23
    sub c                                         ; $5aae: $91
    db $ed                                        ; $5aaf: $ed
    db $ed                                        ; $5ab0: $ed
    daa                                           ; $5ab1: $27
    sub c                                         ; $5ab2: $91
    sbc e                                         ; $5ab3: $9b
    sub d                                         ; $5ab4: $92
    jr c, jr_082_5a48                             ; $5ab5: $38 $91

    sbc l                                         ; $5ab7: $9d
    sub l                                         ; $5ab8: $95
    inc a                                         ; $5ab9: $3c
    sub c                                         ; $5aba: $91
    sbc a                                         ; $5abb: $9f
    sub a                                         ; $5abc: $97
    inc bc                                        ; $5abd: $03
    add hl, hl                                    ; $5abe: $29
    ld bc, $0301                                  ; $5abf: $01 $01 $03
    add hl, hl                                    ; $5ac2: $29
    add hl, hl                                    ; $5ac3: $29
    add hl, bc                                    ; $5ac4: $09
    inc bc                                        ; $5ac5: $03
    add hl, hl                                    ; $5ac6: $29
    add hl, hl                                    ; $5ac7: $29
    add hl, bc                                    ; $5ac8: $09
    inc bc                                        ; $5ac9: $03
    add hl, hl                                    ; $5aca: $29
    add hl, hl                                    ; $5acb: $29
    add hl, bc                                    ; $5acc: $09
    ld b, b                                       ; $5acd: $40
    ld b, c                                       ; $5ace: $41
    ld b, d                                       ; $5acf: $42
    ld b, e                                       ; $5ad0: $43
    rra                                           ; $5ad1: $1f
    jr nz, @+$23                                  ; $5ad2: $20 $21

    ld [hl+], a                                   ; $5ad4: $22
    inc hl                                        ; $5ad5: $23
    inc h                                         ; $5ad6: $24
    dec h                                         ; $5ad7: $25
    rst $10                                       ; $5ad8: $d7
    daa                                           ; $5ad9: $27
    jr z, jr_082_5b59                             ; $5ada: $28 $7d

    ret c                                         ; $5adc: $d8

    ld [bc], a                                    ; $5add: $02
    ld [bc], a                                    ; $5ade: $02
    ld [bc], a                                    ; $5adf: $02
    ld [bc], a                                    ; $5ae0: $02
    ld [bc], a                                    ; $5ae1: $02
    ld [bc], a                                    ; $5ae2: $02
    ld [bc], a                                    ; $5ae3: $02
    ld [bc], a                                    ; $5ae4: $02
    ld [bc], a                                    ; $5ae5: $02
    ld [bc], a                                    ; $5ae6: $02
    ld [bc], a                                    ; $5ae7: $02
    ld a, [bc]                                    ; $5ae8: $0a
    ld [bc], a                                    ; $5ae9: $02
    ld [bc], a                                    ; $5aea: $02
    ld [bc], a                                    ; $5aeb: $02
    adc l                                         ; $5aec: $8d
    ld c, b                                       ; $5aed: $48
    ld c, c                                       ; $5aee: $49
    ld b, b                                       ; $5aef: $40
    ld b, c                                       ; $5af0: $41
    cpl                                           ; $5af1: $2f
    jr nc, jr_082_5b13                            ; $5af2: $30 $1f

    jr nz, jr_082_5a81                            ; $5af4: $20 $8b

    ld [hl-], a                                   ; $5af6: $32
    inc hl                                        ; $5af7: $23
    inc h                                         ; $5af8: $24
    reti                                          ; $5af9: $d9


    jp c, $2827                                   ; $5afa: $da $27 $28

    ld [bc], a                                    ; $5afd: $02
    ld [bc], a                                    ; $5afe: $02
    ld [bc], a                                    ; $5aff: $02
    ld [bc], a                                    ; $5b00: $02
    ld [bc], a                                    ; $5b01: $02
    ld [bc], a                                    ; $5b02: $02
    ld [bc], a                                    ; $5b03: $02
    ld [bc], a                                    ; $5b04: $02
    ld a, [bc]                                    ; $5b05: $0a
    ld [bc], a                                    ; $5b06: $02
    ld [bc], a                                    ; $5b07: $02
    ld [bc], a                                    ; $5b08: $02
    adc l                                         ; $5b09: $8d
    ld a, [bc]                                    ; $5b0a: $0a
    ld [bc], a                                    ; $5b0b: $02
    ld [bc], a                                    ; $5b0c: $02
    ld b, b                                       ; $5b0d: $40
    sub c                                         ; $5b0e: $91
    xor l                                         ; $5b0f: $ad
    and b                                         ; $5b10: $a0
    rra                                           ; $5b11: $1f
    sub c                                         ; $5b12: $91

jr_082_5b13:
    xor a                                         ; $5b13: $af
    and h                                         ; $5b14: $a4
    inc hl                                        ; $5b15: $23
    or d                                          ; $5b16: $b2
    db $db                                        ; $5b17: $db
    xor c                                         ; $5b18: $a9
    daa                                           ; $5b19: $27
    jr z, jr_082_5b45                             ; $5b1a: $28 $29

    ld a, [hl+]                                   ; $5b1c: $2a
    inc bc                                        ; $5b1d: $03
    add hl, hl                                    ; $5b1e: $29
    add hl, hl                                    ; $5b1f: $29
    add hl, bc                                    ; $5b20: $09
    inc bc                                        ; $5b21: $03
    add hl, hl                                    ; $5b22: $29
    add hl, hl                                    ; $5b23: $29
    add hl, bc                                    ; $5b24: $09
    inc bc                                        ; $5b25: $03
    add hl, hl                                    ; $5b26: $29
    ld a, [bc]                                    ; $5b27: $0a
    ld a, [bc]                                    ; $5b28: $0a
    inc bc                                        ; $5b29: $03
    inc bc                                        ; $5b2a: $03
    ld [bc], a                                    ; $5b2b: $02
    ld [bc], a                                    ; $5b2c: $02
    ld c, b                                       ; $5b2d: $48
    ld c, c                                       ; $5b2e: $49
    ld b, b                                       ; $5b2f: $40
    ld b, c                                       ; $5b30: $41
    cpl                                           ; $5b31: $2f
    jr nc, jr_082_5b53                            ; $5b32: $30 $1f

    jr nz, @+$33                                  ; $5b34: $20 $31

    ld [hl-], a                                   ; $5b36: $32
    inc hl                                        ; $5b37: $23
    inc h                                         ; $5b38: $24
    inc sp                                        ; $5b39: $33
    inc [hl]                                      ; $5b3a: $34
    daa                                           ; $5b3b: $27
    jr z, jr_082_5b40                             ; $5b3c: $28 $02

    ld [bc], a                                    ; $5b3e: $02
    ld [bc], a                                    ; $5b3f: $02

jr_082_5b40:
    inc bc                                        ; $5b40: $03
    ld [bc], a                                    ; $5b41: $02
    ld [bc], a                                    ; $5b42: $02
    ld [bc], a                                    ; $5b43: $02
    inc bc                                        ; $5b44: $03

jr_082_5b45:
    ld [bc], a                                    ; $5b45: $02
    ld [bc], a                                    ; $5b46: $02
    ld [bc], a                                    ; $5b47: $02
    inc bc                                        ; $5b48: $03
    ld [bc], a                                    ; $5b49: $02
    ld [bc], a                                    ; $5b4a: $02
    ld [bc], a                                    ; $5b4b: $02
    inc bc                                        ; $5b4c: $03
    adc l                                         ; $5b4d: $8d
    adc l                                         ; $5b4e: $8d
    adc l                                         ; $5b4f: $8d
    adc l                                         ; $5b50: $8d
    adc a                                         ; $5b51: $8f
    adc [hl]                                      ; $5b52: $8e

jr_082_5b53:
    adc a                                         ; $5b53: $8f
    adc [hl]                                      ; $5b54: $8e
    db $ed                                        ; $5b55: $ed
    db $ed                                        ; $5b56: $ed
    db $ed                                        ; $5b57: $ed
    db $ed                                        ; $5b58: $ed

jr_082_5b59:
    db $ed                                        ; $5b59: $ed
    db $ed                                        ; $5b5a: $ed
    db $ed                                        ; $5b5b: $ed
    db $ed                                        ; $5b5c: $ed
    add hl, hl                                    ; $5b5d: $29
    add hl, hl                                    ; $5b5e: $29
    add hl, hl                                    ; $5b5f: $29
    add hl, hl                                    ; $5b60: $29
    add hl, hl                                    ; $5b61: $29
    add hl, bc                                    ; $5b62: $09
    add hl, hl                                    ; $5b63: $29
    add hl, bc                                    ; $5b64: $09
    ld bc, $0101                                  ; $5b65: $01 $01 $01
    ld bc, $0101                                  ; $5b68: $01 $01 $01
    ld bc, $ed01                                  ; $5b6b: $01 $01 $ed
    db $ed                                        ; $5b6e: $ed
    db $ed                                        ; $5b6f: $ed
    db $ed                                        ; $5b70: $ed
    sub e                                         ; $5b71: $93
    sub h                                         ; $5b72: $94
    sub e                                         ; $5b73: $93
    sub h                                         ; $5b74: $94
    sub [hl]                                      ; $5b75: $96
    sub l                                         ; $5b76: $95
    sub [hl]                                      ; $5b77: $96
    sbc h                                         ; $5b78: $9c
    sbc b                                         ; $5b79: $98
    sbc c                                         ; $5b7a: $99
    sbc d                                         ; $5b7b: $9a
    sbc [hl]                                      ; $5b7c: $9e
    ld bc, $0101                                  ; $5b7d: $01 $01 $01
    ld bc, $0909                                  ; $5b80: $01 $09 $09
    add hl, bc                                    ; $5b83: $09
    add hl, bc                                    ; $5b84: $09
    add hl, bc                                    ; $5b85: $09
    add hl, bc                                    ; $5b86: $09
    add hl, bc                                    ; $5b87: $09
    add hl, bc                                    ; $5b88: $09
    add hl, bc                                    ; $5b89: $09
    add hl, bc                                    ; $5b8a: $09
    add hl, bc                                    ; $5b8b: $09
    add hl, bc                                    ; $5b8c: $09
    and c                                         ; $5b8d: $a1
    and d                                         ; $5b8e: $a2
    and e                                         ; $5b8f: $a3
    xor h                                         ; $5b90: $ac
    and l                                         ; $5b91: $a5
    and [hl]                                      ; $5b92: $a6
    and a                                         ; $5b93: $a7
    xor [hl]                                      ; $5b94: $ae
    xor d                                         ; $5b95: $aa
    xor e                                         ; $5b96: $ab
    or b                                          ; $5b97: $b0
    call c, Call_000_3433                         ; $5b98: $dc $33 $34
    daa                                           ; $5b9b: $27
    jr z, jr_082_5ba7                             ; $5b9c: $28 $09

    add hl, bc                                    ; $5b9e: $09
    add hl, bc                                    ; $5b9f: $09
    add hl, bc                                    ; $5ba0: $09
    add hl, bc                                    ; $5ba1: $09
    add hl, bc                                    ; $5ba2: $09
    add hl, bc                                    ; $5ba3: $09
    add hl, bc                                    ; $5ba4: $09
    ld a, [bc]                                    ; $5ba5: $0a
    ld a, [bc]                                    ; $5ba6: $0a

jr_082_5ba7:
    ld a, [bc]                                    ; $5ba7: $0a
    dec bc                                        ; $5ba8: $0b
    ld [bc], a                                    ; $5ba9: $02
    ld [bc], a                                    ; $5baa: $02
    ld [bc], a                                    ; $5bab: $02
    inc bc                                        ; $5bac: $03
    inc hl                                        ; $5bad: $23
    inc h                                         ; $5bae: $24
    dec h                                         ; $5baf: $25
    ld h, $27                                     ; $5bb0: $26 $27
    jr z, @+$2b                                   ; $5bb2: $28 $29

    ld a, [hl+]                                   ; $5bb4: $2a
    jr c, jr_082_5bf0                             ; $5bb5: $38 $39

    ld a, [hl-]                                   ; $5bb7: $3a
    dec sp                                        ; $5bb8: $3b
    inc a                                         ; $5bb9: $3c
    dec a                                         ; $5bba: $3d
    ld a, $3f                                     ; $5bbb: $3e $3f
    inc bc                                        ; $5bbd: $03
    ld [bc], a                                    ; $5bbe: $02
    ld [bc], a                                    ; $5bbf: $02
    ld [bc], a                                    ; $5bc0: $02
    inc bc                                        ; $5bc1: $03
    ld [bc], a                                    ; $5bc2: $02
    ld [bc], a                                    ; $5bc3: $02
    ld [bc], a                                    ; $5bc4: $02
    inc bc                                        ; $5bc5: $03
    ld [bc], a                                    ; $5bc6: $02
    ld [bc], a                                    ; $5bc7: $02
    ld [bc], a                                    ; $5bc8: $02
    inc bc                                        ; $5bc9: $03
    ld [bc], a                                    ; $5bca: $02
    ld [bc], a                                    ; $5bcb: $02
    ld [bc], a                                    ; $5bcc: $02
    db $ed                                        ; $5bcd: $ed
    rla                                           ; $5bce: $17
    jr jr_082_5bea                                ; $5bcf: $18 $19

    db $ed                                        ; $5bd1: $ed
    xor $f1                                       ; $5bd2: $ee $f1
    ld a, [c]                                     ; $5bd4: $f2
    db $ed                                        ; $5bd5: $ed
    ld a, [de]                                    ; $5bd6: $1a
    push af                                       ; $5bd7: $f5
    or $ed                                        ; $5bd8: $f6 $ed
    ld a, [de]                                    ; $5bda: $1a
    ld sp, hl                                     ; $5bdb: $f9
    ld a, [$8080]                                 ; $5bdc: $fa $80 $80
    add b                                         ; $5bdf: $80
    add b                                         ; $5be0: $80
    add b                                         ; $5be1: $80
    add b                                         ; $5be2: $80
    inc b                                         ; $5be3: $04
    inc b                                         ; $5be4: $04
    add b                                         ; $5be5: $80
    add b                                         ; $5be6: $80
    inc b                                         ; $5be7: $04
    inc b                                         ; $5be8: $04
    add b                                         ; $5be9: $80

jr_082_5bea:
    add b                                         ; $5bea: $80
    inc b                                         ; $5beb: $04
    inc b                                         ; $5bec: $04
    db $ed                                        ; $5bed: $ed
    ld a, [de]                                    ; $5bee: $1a
    db $fd                                        ; $5bef: $fd

jr_082_5bf0:
    cp $ed                                        ; $5bf0: $fe $ed
    ld a, [de]                                    ; $5bf2: $1a
    dec e                                         ; $5bf3: $1d
    ld e, $37                                     ; $5bf4: $1e $37
    ld a, [de]                                    ; $5bf6: $1a
    ld c, b                                       ; $5bf7: $48
    ld c, c                                       ; $5bf8: $49
    scf                                           ; $5bf9: $37
    xor $2f                                       ; $5bfa: $ee $2f
    jr nc, @-$7e                                  ; $5bfc: $30 $80

    add b                                         ; $5bfe: $80
    inc b                                         ; $5bff: $04
    inc b                                         ; $5c00: $04
    add b                                         ; $5c01: $80
    add b                                         ; $5c02: $80
    inc b                                         ; $5c03: $04
    inc b                                         ; $5c04: $04
    add b                                         ; $5c05: $80
    add b                                         ; $5c06: $80
    inc bc                                        ; $5c07: $03
    inc bc                                        ; $5c08: $03
    add b                                         ; $5c09: $80
    add b                                         ; $5c0a: $80
    inc bc                                        ; $5c0b: $03
    ld [bc], a                                    ; $5c0c: $02
    jr c, jr_082_5c48                             ; $5c0d: $38 $39

    ld a, [hl-]                                   ; $5c0f: $3a
    dec sp                                        ; $5c10: $3b
    inc a                                         ; $5c11: $3c
    dec a                                         ; $5c12: $3d
    ld a, $3f                                     ; $5c13: $3e $3f
    ld b, b                                       ; $5c15: $40
    ld b, c                                       ; $5c16: $41
    ld b, d                                       ; $5c17: $42
    ld b, e                                       ; $5c18: $43
    rra                                           ; $5c19: $1f
    jr nz, jr_082_5c3d                            ; $5c1a: $20 $21

    ld [hl+], a                                   ; $5c1c: $22
    inc bc                                        ; $5c1d: $03
    ld [bc], a                                    ; $5c1e: $02
    ld [bc], a                                    ; $5c1f: $02
    ld [bc], a                                    ; $5c20: $02
    inc bc                                        ; $5c21: $03
    ld [bc], a                                    ; $5c22: $02
    ld [bc], a                                    ; $5c23: $02
    ld [bc], a                                    ; $5c24: $02
    inc bc                                        ; $5c25: $03
    ld [bc], a                                    ; $5c26: $02
    ld [bc], a                                    ; $5c27: $02
    ld [bc], a                                    ; $5c28: $02
    ld [bc], a                                    ; $5c29: $02
    ld [bc], a                                    ; $5c2a: $02
    ld [bc], a                                    ; $5c2b: $02
    ld [bc], a                                    ; $5c2c: $02
    jr c, jr_082_5c9f                             ; $5c2d: $38 $70

    db $dd                                        ; $5c2f: $dd
    sbc $8b                                       ; $5c30: $de $8b
    ld a, b                                       ; $5c32: $78
    rst $18                                       ; $5c33: $df
    ldh [$e1], a                                  ; $5c34: $e0 $e1
    ld [c], a                                     ; $5c36: $e2
    db $e3                                        ; $5c37: $e3
    db $e4                                        ; $5c38: $e4
    rst $10                                       ; $5c39: $d7
    push hl                                       ; $5c3a: $e5
    and $e7                                       ; $5c3b: $e6 $e7

jr_082_5c3d:
    ld [bc], a                                    ; $5c3d: $02
    ld [bc], a                                    ; $5c3e: $02
    adc l                                         ; $5c3f: $8d
    adc l                                         ; $5c40: $8d
    ld a, [bc]                                    ; $5c41: $0a
    ld [bc], a                                    ; $5c42: $02
    adc l                                         ; $5c43: $8d
    adc l                                         ; $5c44: $8d
    ld a, [bc]                                    ; $5c45: $0a
    adc l                                         ; $5c46: $8d
    adc l                                         ; $5c47: $8d

jr_082_5c48:
    adc l                                         ; $5c48: $8d
    ld a, [bc]                                    ; $5c49: $0a
    adc l                                         ; $5c4a: $8d
    dec c                                         ; $5c4b: $0d
    dec c                                         ; $5c4c: $0d
    add sp, $6e                                   ; $5c4d: $e8 $6e
    ld l, l                                       ; $5c4f: $6d
    add hl, sp                                    ; $5c50: $39
    jp hl                                         ; $5c51: $e9


    ld [$6fd7], a                                 ; $5c52: $ea $d7 $6f
    db $eb                                        ; $5c55: $eb
    db $ec                                        ; $5c56: $ec
    db $ed                                        ; $5c57: $ed
    ld h, a                                       ; $5c58: $67
    xor $ef                                       ; $5c59: $ee $ef
    ldh a, [$78]                                  ; $5c5b: $f0 $78
    adc l                                         ; $5c5d: $8d
    ld [bc], a                                    ; $5c5e: $02
    ld [bc], a                                    ; $5c5f: $02
    ld [bc], a                                    ; $5c60: $02
    adc l                                         ; $5c61: $8d
    adc l                                         ; $5c62: $8d
    ld a, [bc]                                    ; $5c63: $0a
    ld [bc], a                                    ; $5c64: $02
    adc l                                         ; $5c65: $8d
    adc l                                         ; $5c66: $8d
    adc l                                         ; $5c67: $8d
    ld [bc], a                                    ; $5c68: $02
    dec c                                         ; $5c69: $0d
    dec c                                         ; $5c6a: $0d
    adc l                                         ; $5c6b: $8d
    ld [bc], a                                    ; $5c6c: $02
    ld l, l                                       ; $5c6d: $6d
    ld h, a                                       ; $5c6e: $67
    pop af                                        ; $5c6f: $f1
    ld a, [c]                                     ; $5c70: $f2
    daa                                           ; $5c71: $27
    ld l, a                                       ; $5c72: $6f
    di                                            ; $5c73: $f3
    db $f4                                        ; $5c74: $f4
    jr c, jr_082_5cb0                             ; $5c75: $38 $39

    push af                                       ; $5c77: $f5
    or $3c                                        ; $5c78: $f6 $3c
    dec a                                         ; $5c7a: $3d
    ld a, $3f                                     ; $5c7b: $3e $3f
    ld [bc], a                                    ; $5c7d: $02
    inc bc                                        ; $5c7e: $03
    dec c                                         ; $5c7f: $0d
    dec c                                         ; $5c80: $0d
    ld [bc], a                                    ; $5c81: $02
    inc bc                                        ; $5c82: $03
    dec c                                         ; $5c83: $0d
    dec c                                         ; $5c84: $0d
    ld [bc], a                                    ; $5c85: $02
    inc bc                                        ; $5c86: $03
    dec bc                                        ; $5c87: $0b
    dec bc                                        ; $5c88: $0b
    ld [bc], a                                    ; $5c89: $02
    ld [bc], a                                    ; $5c8a: $02
    ld [bc], a                                    ; $5c8b: $02

jr_082_5c8c:
    ld [bc], a                                    ; $5c8c: $02
    rst $30                                       ; $5c8d: $f7
    ld hl, sp-$07                                 ; $5c8e: $f8 $f9
    ld [hl], b                                    ; $5c90: $70
    ld a, [$d7fb]                                 ; $5c91: $fa $fb $d7
    ld l, a                                       ; $5c94: $6f
    ld h, a                                       ; $5c95: $67
    add b                                         ; $5c96: $80
    pop hl                                        ; $5c97: $e1
    add hl, sp                                    ; $5c98: $39
    ld b, [hl]                                    ; $5c99: $46
    ld b, a                                       ; $5c9a: $47
    inc a                                         ; $5c9b: $3c
    dec a                                         ; $5c9c: $3d
    dec c                                         ; $5c9d: $0d
    dec c                                         ; $5c9e: $0d

jr_082_5c9f:
    adc l                                         ; $5c9f: $8d
    ld [bc], a                                    ; $5ca0: $02
    dec c                                         ; $5ca1: $0d
    dec c                                         ; $5ca2: $0d
    ld a, [bc]                                    ; $5ca3: $0a

jr_082_5ca4:
    ld [bc], a                                    ; $5ca4: $02
    inc bc                                        ; $5ca5: $03
    dec bc                                        ; $5ca6: $0b
    ld a, [bc]                                    ; $5ca7: $0a
    ld [bc], a                                    ; $5ca8: $02
    ld [bc], a                                    ; $5ca9: $02
    ld [bc], a                                    ; $5caa: $02
    ld [bc], a                                    ; $5cab: $02
    ld [bc], a                                    ; $5cac: $02
    ld b, b                                       ; $5cad: $40
    ld b, c                                       ; $5cae: $41
    ld b, d                                       ; $5caf: $42

jr_082_5cb0:
    ld b, e                                       ; $5cb0: $43
    rra                                           ; $5cb1: $1f
    or e                                          ; $5cb2: $b3
    or h                                          ; $5cb3: $b4
    or h                                          ; $5cb4: $b4
    inc hl                                        ; $5cb5: $23
    or l                                          ; $5cb6: $b5
    or [hl]                                       ; $5cb7: $b6
    or [hl]                                       ; $5cb8: $b6
    daa                                           ; $5cb9: $27
    or l                                          ; $5cba: $b5
    or [hl]                                       ; $5cbb: $b6
    or [hl]                                       ; $5cbc: $b6
    ld [bc], a                                    ; $5cbd: $02
    ld [bc], a                                    ; $5cbe: $02
    ld [bc], a                                    ; $5cbf: $02
    ld [bc], a                                    ; $5cc0: $02
    ld [bc], a                                    ; $5cc1: $02
    adc a                                         ; $5cc2: $8f
    adc a                                         ; $5cc3: $8f
    adc a                                         ; $5cc4: $8f
    ld [bc], a                                    ; $5cc5: $02
    adc a                                         ; $5cc6: $8f
    adc a                                         ; $5cc7: $8f
    adc a                                         ; $5cc8: $8f
    inc bc                                        ; $5cc9: $03
    adc a                                         ; $5cca: $8f
    adc a                                         ; $5ccb: $8f
    adc a                                         ; $5ccc: $8f
    ld c, b                                       ; $5ccd: $48
    ld c, c                                       ; $5cce: $49
    ld b, b                                       ; $5ccf: $40
    ld b, c                                       ; $5cd0: $41
    or h                                          ; $5cd1: $b4
    or h                                          ; $5cd2: $b4
    or a                                          ; $5cd3: $b7
    jr nz, jr_082_5c8c                            ; $5cd4: $20 $b6

    or [hl]                                       ; $5cd6: $b6
    cp b                                          ; $5cd7: $b8
    inc h                                         ; $5cd8: $24
    or [hl]                                       ; $5cd9: $b6
    or [hl]                                       ; $5cda: $b6
    cp b                                          ; $5cdb: $b8
    jr z, jr_082_5ce0                             ; $5cdc: $28 $02

    ld [bc], a                                    ; $5cde: $02
    ld [bc], a                                    ; $5cdf: $02

jr_082_5ce0:
    ld [bc], a                                    ; $5ce0: $02
    adc a                                         ; $5ce1: $8f
    adc a                                         ; $5ce2: $8f
    adc a                                         ; $5ce3: $8f
    ld [bc], a                                    ; $5ce4: $02
    adc a                                         ; $5ce5: $8f
    adc a                                         ; $5ce6: $8f
    adc a                                         ; $5ce7: $8f
    ld [bc], a                                    ; $5ce8: $02
    adc a                                         ; $5ce9: $8f
    adc a                                         ; $5cea: $8f
    adc a                                         ; $5ceb: $8f
    ld [bc], a                                    ; $5cec: $02
    jr c, jr_082_5ca4                             ; $5ced: $38 $b5

    or [hl]                                       ; $5cef: $b6
    or [hl]                                       ; $5cf0: $b6
    inc a                                         ; $5cf1: $3c
    or l                                          ; $5cf2: $b5
    or [hl]                                       ; $5cf3: $b6
    or [hl]                                       ; $5cf4: $b6
    ld b, b                                       ; $5cf5: $40
    or l                                          ; $5cf6: $b5
    or [hl]                                       ; $5cf7: $b6
    or [hl]                                       ; $5cf8: $b6
    rra                                           ; $5cf9: $1f
    or l                                          ; $5cfa: $b5
    or [hl]                                       ; $5cfb: $b6
    or [hl]                                       ; $5cfc: $b6
    inc bc                                        ; $5cfd: $03
    rrca                                          ; $5cfe: $0f
    rrca                                          ; $5cff: $0f
    rrca                                          ; $5d00: $0f
    inc bc                                        ; $5d01: $03
    rrca                                          ; $5d02: $0f
    rrca                                          ; $5d03: $0f
    rrca                                          ; $5d04: $0f
    inc bc                                        ; $5d05: $03
    rrca                                          ; $5d06: $0f
    rrca                                          ; $5d07: $0f
    rrca                                          ; $5d08: $0f
    inc bc                                        ; $5d09: $03
    rrca                                          ; $5d0a: $0f
    rrca                                          ; $5d0b: $0f
    rrca                                          ; $5d0c: $0f
    or [hl]                                       ; $5d0d: $b6
    or [hl]                                       ; $5d0e: $b6
    cp b                                          ; $5d0f: $b8
    add hl, sp                                    ; $5d10: $39
    or [hl]                                       ; $5d11: $b6
    or [hl]                                       ; $5d12: $b6
    cp b                                          ; $5d13: $b8
    dec a                                         ; $5d14: $3d
    or [hl]                                       ; $5d15: $b6
    or [hl]                                       ; $5d16: $b6
    cp b                                          ; $5d17: $b8
    ld b, c                                       ; $5d18: $41
    or [hl]                                       ; $5d19: $b6
    or [hl]                                       ; $5d1a: $b6
    cp b                                          ; $5d1b: $b8
    jr nz, jr_082_5d2d                            ; $5d1c: $20 $0f

    rrca                                          ; $5d1e: $0f
    rrca                                          ; $5d1f: $0f
    ld [bc], a                                    ; $5d20: $02
    rrca                                          ; $5d21: $0f
    rrca                                          ; $5d22: $0f
    rrca                                          ; $5d23: $0f
    ld [bc], a                                    ; $5d24: $02
    rrca                                          ; $5d25: $0f
    rrca                                          ; $5d26: $0f
    rrca                                          ; $5d27: $0f
    ld [bc], a                                    ; $5d28: $02
    rrca                                          ; $5d29: $0f
    rrca                                          ; $5d2a: $0f
    rrca                                          ; $5d2b: $0f
    ld [bc], a                                    ; $5d2c: $02

jr_082_5d2d:
    ld b, h                                       ; $5d2d: $44
    ld b, l                                       ; $5d2e: $45
    jr c, jr_082_5d6a                             ; $5d2f: $38 $39

    ld b, [hl]                                    ; $5d31: $46
    ld b, a                                       ; $5d32: $47
    inc a                                         ; $5d33: $3c
    dec a                                         ; $5d34: $3d
    ld c, b                                       ; $5d35: $48
    ld c, c                                       ; $5d36: $49
    db $fc                                        ; $5d37: $fc
    db $fd                                        ; $5d38: $fd
    cpl                                           ; $5d39: $2f

jr_082_5d3a:
    jr nc, jr_082_5d3a                            ; $5d3a: $30 $fe

    rst $38                                       ; $5d3c: $ff
    ld [bc], a                                    ; $5d3d: $02
    ld [bc], a                                    ; $5d3e: $02
    ld [bc], a                                    ; $5d3f: $02
    inc bc                                        ; $5d40: $03
    ld [bc], a                                    ; $5d41: $02
    ld [bc], a                                    ; $5d42: $02
    ld [bc], a                                    ; $5d43: $02
    inc bc                                        ; $5d44: $03
    ld [bc], a                                    ; $5d45: $02
    ld [bc], a                                    ; $5d46: $02
    inc c                                         ; $5d47: $0c
    inc c                                         ; $5d48: $0c
    ld [bc], a                                    ; $5d49: $02
    ld [bc], a                                    ; $5d4a: $02
    inc c                                         ; $5d4b: $0c
    inc c                                         ; $5d4c: $0c
    ld sp, $0032                                  ; $5d4d: $31 $32 $00
    ld bc, $3433                                  ; $5d50: $01 $33 $34
    ld [bc], a                                    ; $5d53: $02
    inc bc                                        ; $5d54: $03
    ld b, h                                       ; $5d55: $44
    ld b, l                                       ; $5d56: $45
    inc b                                         ; $5d57: $04
    dec b                                         ; $5d58: $05
    ld b, [hl]                                    ; $5d59: $46
    ld b, a                                       ; $5d5a: $47
    ld b, $07                                     ; $5d5b: $06 $07
    ld [bc], a                                    ; $5d5d: $02
    ld [bc], a                                    ; $5d5e: $02
    inc c                                         ; $5d5f: $0c
    inc c                                         ; $5d60: $0c
    ld [bc], a                                    ; $5d61: $02
    ld [bc], a                                    ; $5d62: $02
    inc c                                         ; $5d63: $0c
    inc c                                         ; $5d64: $0c
    ld [bc], a                                    ; $5d65: $02
    ld [bc], a                                    ; $5d66: $02
    inc c                                         ; $5d67: $0c
    inc c                                         ; $5d68: $0c
    ld [bc], a                                    ; $5d69: $02

jr_082_5d6a:
    ld [bc], a                                    ; $5d6a: $02
    inc c                                         ; $5d6b: $0c
    inc c                                         ; $5d6c: $0c
    ld c, b                                       ; $5d6d: $48
    ld c, c                                       ; $5d6e: $49
    ld [$2f09], sp                                ; $5d6f: $08 $09 $2f
    jr nc, jr_082_5d93                            ; $5d72: $30 $1f

    jr nz, jr_082_5da7                            ; $5d74: $20 $31

    ld [hl-], a                                   ; $5d76: $32
    inc hl                                        ; $5d77: $23
    inc h                                         ; $5d78: $24
    inc sp                                        ; $5d79: $33
    inc [hl]                                      ; $5d7a: $34
    daa                                           ; $5d7b: $27
    jr z, jr_082_5d80                             ; $5d7c: $28 $02

    ld [bc], a                                    ; $5d7e: $02
    inc c                                         ; $5d7f: $0c

jr_082_5d80:
    inc c                                         ; $5d80: $0c
    ld [bc], a                                    ; $5d81: $02
    ld [bc], a                                    ; $5d82: $02
    inc bc                                        ; $5d83: $03
    inc bc                                        ; $5d84: $03
    ld [bc], a                                    ; $5d85: $02
    ld [bc], a                                    ; $5d86: $02
    ld [bc], a                                    ; $5d87: $02
    inc bc                                        ; $5d88: $03
    ld [bc], a                                    ; $5d89: $02
    ld [bc], a                                    ; $5d8a: $02
    ld [bc], a                                    ; $5d8b: $02
    inc bc                                        ; $5d8c: $03
    ld b, h                                       ; $5d8d: $44
    ld b, l                                       ; $5d8e: $45
    jr c, jr_082_5dca                             ; $5d8f: $38 $39

    ld b, [hl]                                    ; $5d91: $46
    ld b, a                                       ; $5d92: $47

jr_082_5d93:
    inc a                                         ; $5d93: $3c
    dec a                                         ; $5d94: $3d
    ld c, b                                       ; $5d95: $48
    ld c, c                                       ; $5d96: $49
    ld b, b                                       ; $5d97: $40

jr_082_5d98:
    ld b, c                                       ; $5d98: $41
    cpl                                           ; $5d99: $2f
    jr nc, jr_082_5d98                            ; $5d9a: $30 $fc

    db $fd                                        ; $5d9c: $fd
    ld [bc], a                                    ; $5d9d: $02
    ld [bc], a                                    ; $5d9e: $02
    ld [bc], a                                    ; $5d9f: $02
    inc bc                                        ; $5da0: $03
    ld [bc], a                                    ; $5da1: $02
    ld [bc], a                                    ; $5da2: $02
    ld [bc], a                                    ; $5da3: $02
    inc bc                                        ; $5da4: $03
    ld [bc], a                                    ; $5da5: $02
    ld [bc], a                                    ; $5da6: $02

jr_082_5da7:
    ld [bc], a                                    ; $5da7: $02
    inc bc                                        ; $5da8: $03
    ld [bc], a                                    ; $5da9: $02
    ld [bc], a                                    ; $5daa: $02
    inc c                                         ; $5dab: $0c
    inc c                                         ; $5dac: $0c
    scf                                           ; $5dad: $37
    ld c, d                                       ; $5dae: $4a
    jr @+$4d                                      ; $5daf: $18 $4b

    db $ed                                        ; $5db1: $ed
    db $ed                                        ; $5db2: $ed
    db $ed                                        ; $5db3: $ed
    xor $ed                                       ; $5db4: $ee $ed
    db $ed                                        ; $5db6: $ed
    db $ed                                        ; $5db7: $ed
    xor $ed                                       ; $5db8: $ee $ed
    db $ed                                        ; $5dba: $ed
    db $ed                                        ; $5dbb: $ed
    xor $80                                       ; $5dbc: $ee $80
    add b                                         ; $5dbe: $80
    add b                                         ; $5dbf: $80
    add b                                         ; $5dc0: $80
    add b                                         ; $5dc1: $80
    add b                                         ; $5dc2: $80
    add b                                         ; $5dc3: $80
    add b                                         ; $5dc4: $80
    add b                                         ; $5dc5: $80
    add b                                         ; $5dc6: $80
    add b                                         ; $5dc7: $80
    add b                                         ; $5dc8: $80
    add b                                         ; $5dc9: $80

jr_082_5dca:
    add b                                         ; $5dca: $80
    add b                                         ; $5dcb: $80
    add b                                         ; $5dcc: $80
    inc hl                                        ; $5dcd: $23
    inc h                                         ; $5dce: $24
    dec h                                         ; $5dcf: $25
    ld h, $27                                     ; $5dd0: $26 $27
    jr z, jr_082_5dfd                             ; $5dd2: $28 $29

    ld a, [hl+]                                   ; $5dd4: $2a
    jr c, jr_082_5e10                             ; $5dd5: $38 $39

    ld a, [hl-]                                   ; $5dd7: $3a
    dec sp                                        ; $5dd8: $3b
    inc a                                         ; $5dd9: $3c
    dec a                                         ; $5dda: $3d
    ld a, $3f                                     ; $5ddb: $3e $3f
    ld [bc], a                                    ; $5ddd: $02
    ld [bc], a                                    ; $5dde: $02
    ld [bc], a                                    ; $5ddf: $02
    ld [bc], a                                    ; $5de0: $02
    ld [bc], a                                    ; $5de1: $02
    ld [bc], a                                    ; $5de2: $02
    ld [bc], a                                    ; $5de3: $02
    ld [bc], a                                    ; $5de4: $02
    inc bc                                        ; $5de5: $03
    ld [bc], a                                    ; $5de6: $02
    ld [bc], a                                    ; $5de7: $02
    ld [bc], a                                    ; $5de8: $02
    inc bc                                        ; $5de9: $03
    ld [bc], a                                    ; $5dea: $02
    ld [bc], a                                    ; $5deb: $02
    ld [bc], a                                    ; $5dec: $02
    ld b, b                                       ; $5ded: $40
    ld b, c                                       ; $5dee: $41
    ld b, d                                       ; $5def: $42
    ld b, e                                       ; $5df0: $43
    rra                                           ; $5df1: $1f
    jr nz, @+$23                                  ; $5df2: $20 $21

    ld [hl+], a                                   ; $5df4: $22
    ld a, [bc]                                    ; $5df5: $0a
    dec bc                                        ; $5df6: $0b
    inc c                                         ; $5df7: $0c
    dec c                                         ; $5df8: $0d
    ld c, $0f                                     ; $5df9: $0e $0f
    ld c, $10                                     ; $5dfb: $0e $10

jr_082_5dfd:
    inc bc                                        ; $5dfd: $03
    ld [bc], a                                    ; $5dfe: $02
    ld [bc], a                                    ; $5dff: $02
    ld [bc], a                                    ; $5e00: $02
    inc bc                                        ; $5e01: $03
    ld [bc], a                                    ; $5e02: $02
    ld [bc], a                                    ; $5e03: $02
    ld [bc], a                                    ; $5e04: $02
    dec bc                                        ; $5e05: $0b
    ld a, [bc]                                    ; $5e06: $0a
    ld a, [bc]                                    ; $5e07: $0a
    ld a, [bc]                                    ; $5e08: $0a
    add hl, bc                                    ; $5e09: $09
    add hl, bc                                    ; $5e0a: $09
    add hl, bc                                    ; $5e0b: $09
    add hl, bc                                    ; $5e0c: $09
    ld c, b                                       ; $5e0d: $48
    ld c, c                                       ; $5e0e: $49
    ld b, b                                       ; $5e0f: $40

jr_082_5e10:
    ld b, c                                       ; $5e10: $41
    cpl                                           ; $5e11: $2f
    jr nc, @+$21                                  ; $5e12: $30 $1f

    jr nz, jr_082_5e27                            ; $5e14: $20 $11

    ld [de], a                                    ; $5e16: $12
    inc hl                                        ; $5e17: $23
    inc h                                         ; $5e18: $24
    ld c, $13                                     ; $5e19: $0e $13
    daa                                           ; $5e1b: $27
    jr z, jr_082_5e20                             ; $5e1c: $28 $02

    ld [bc], a                                    ; $5e1e: $02
    ld [bc], a                                    ; $5e1f: $02

jr_082_5e20:
    ld [bc], a                                    ; $5e20: $02
    ld [bc], a                                    ; $5e21: $02
    ld [bc], a                                    ; $5e22: $02
    ld [bc], a                                    ; $5e23: $02
    ld [bc], a                                    ; $5e24: $02
    ld a, [bc]                                    ; $5e25: $0a
    ld a, [bc]                                    ; $5e26: $0a

jr_082_5e27:
    ld [bc], a                                    ; $5e27: $02
    ld [bc], a                                    ; $5e28: $02
    add hl, bc                                    ; $5e29: $09
    add hl, bc                                    ; $5e2a: $09
    ld [bc], a                                    ; $5e2b: $02
    ld [bc], a                                    ; $5e2c: $02
    inc d                                         ; $5e2d: $14
    dec d                                         ; $5e2e: $15
    inc d                                         ; $5e2f: $14
    ld d, $17                                     ; $5e30: $16 $17
    jr jr_082_5e4b                                ; $5e32: $18 $17

    add hl, de                                    ; $5e34: $19
    ld a, [de]                                    ; $5e35: $1a
    dec de                                        ; $5e36: $1b
    ld a, [de]                                    ; $5e37: $1a
    inc e                                         ; $5e38: $1c
    dec e                                         ; $5e39: $1d
    ld e, $1d                                     ; $5e3a: $1e $1d
    rra                                           ; $5e3c: $1f
    add hl, bc                                    ; $5e3d: $09
    add hl, bc                                    ; $5e3e: $09
    add hl, bc                                    ; $5e3f: $09
    add hl, bc                                    ; $5e40: $09
    add hl, bc                                    ; $5e41: $09
    add hl, bc                                    ; $5e42: $09
    add hl, bc                                    ; $5e43: $09
    add hl, bc                                    ; $5e44: $09
    add hl, bc                                    ; $5e45: $09
    add hl, bc                                    ; $5e46: $09
    add hl, bc                                    ; $5e47: $09
    add hl, bc                                    ; $5e48: $09
    add hl, bc                                    ; $5e49: $09
    add hl, bc                                    ; $5e4a: $09

jr_082_5e4b:
    add hl, bc                                    ; $5e4b: $09
    add hl, bc                                    ; $5e4c: $09
    inc d                                         ; $5e4d: $14
    jr nz, jr_082_5e88                            ; $5e4e: $20 $38

    add hl, sp                                    ; $5e50: $39
    rla                                           ; $5e51: $17
    ld hl, $3d3c                                  ; $5e52: $21 $3c $3d
    ld a, [de]                                    ; $5e55: $1a
    ld [hl+], a                                   ; $5e56: $22
    ld b, b                                       ; $5e57: $40
    ld b, c                                       ; $5e58: $41
    dec e                                         ; $5e59: $1d
    xor a                                         ; $5e5a: $af
    rra                                           ; $5e5b: $1f
    jr nz, jr_082_5e67                            ; $5e5c: $20 $09

    add hl, bc                                    ; $5e5e: $09
    ld [bc], a                                    ; $5e5f: $02
    ld [bc], a                                    ; $5e60: $02
    add hl, bc                                    ; $5e61: $09
    add hl, bc                                    ; $5e62: $09
    inc bc                                        ; $5e63: $03
    ld [bc], a                                    ; $5e64: $02
    add hl, bc                                    ; $5e65: $09
    add hl, bc                                    ; $5e66: $09

jr_082_5e67:
    inc bc                                        ; $5e67: $03
    ld [bc], a                                    ; $5e68: $02
    add hl, bc                                    ; $5e69: $09
    add hl, bc                                    ; $5e6a: $09
    inc bc                                        ; $5e6b: $03
    ld [bc], a                                    ; $5e6c: $02
    inc hl                                        ; $5e6d: $23
    inc h                                         ; $5e6e: $24
    inc hl                                        ; $5e6f: $23
    dec h                                         ; $5e70: $25
    ld h, $27                                     ; $5e71: $26 $27
    ld h, $28                                     ; $5e73: $26 $28
    add hl, hl                                    ; $5e75: $29
    ld a, [hl+]                                   ; $5e76: $2a
    add hl, hl                                    ; $5e77: $29
    dec hl                                        ; $5e78: $2b
    inc l                                         ; $5e79: $2c
    dec l                                         ; $5e7a: $2d
    inc l                                         ; $5e7b: $2c
    ld l, $09                                     ; $5e7c: $2e $09
    add hl, bc                                    ; $5e7e: $09
    add hl, bc                                    ; $5e7f: $09
    add hl, bc                                    ; $5e80: $09
    add hl, bc                                    ; $5e81: $09
    add hl, bc                                    ; $5e82: $09
    add hl, bc                                    ; $5e83: $09
    add hl, bc                                    ; $5e84: $09
    add hl, bc                                    ; $5e85: $09
    add hl, bc                                    ; $5e86: $09
    add hl, bc                                    ; $5e87: $09

jr_082_5e88:
    add hl, bc                                    ; $5e88: $09
    add hl, bc                                    ; $5e89: $09
    add hl, bc                                    ; $5e8a: $09
    add hl, bc                                    ; $5e8b: $09
    add hl, bc                                    ; $5e8c: $09
    inc hl                                        ; $5e8d: $23
    cpl                                           ; $5e8e: $2f
    jr nc, jr_082_5eb5                            ; $5e8f: $30 $24

    ld h, $31                                     ; $5e91: $26 $31
    ld [hl-], a                                   ; $5e93: $32
    jr z, jr_082_5ebf                             ; $5e94: $28 $29

    inc sp                                        ; $5e96: $33
    inc [hl]                                      ; $5e97: $34

jr_082_5e98:
    add hl, sp                                    ; $5e98: $39
    inc l                                         ; $5e99: $2c
    dec [hl]                                      ; $5e9a: $35
    inc a                                         ; $5e9b: $3c
    dec a                                         ; $5e9c: $3d
    add hl, bc                                    ; $5e9d: $09
    add hl, bc                                    ; $5e9e: $09
    dec bc                                        ; $5e9f: $0b
    ld [bc], a                                    ; $5ea0: $02
    add hl, bc                                    ; $5ea1: $09
    add hl, bc                                    ; $5ea2: $09
    dec bc                                        ; $5ea3: $0b
    ld [bc], a                                    ; $5ea4: $02
    add hl, bc                                    ; $5ea5: $09
    add hl, bc                                    ; $5ea6: $09
    dec bc                                        ; $5ea7: $0b
    ld [bc], a                                    ; $5ea8: $02
    add hl, bc                                    ; $5ea9: $09
    add hl, bc                                    ; $5eaa: $09
    inc bc                                        ; $5eab: $03
    ld [bc], a                                    ; $5eac: $02
    inc hl                                        ; $5ead: $23
    or l                                          ; $5eae: $b5
    or [hl]                                       ; $5eaf: $b6
    or [hl]                                       ; $5eb0: $b6
    daa                                           ; $5eb1: $27
    cp c                                          ; $5eb2: $b9
    cp d                                          ; $5eb3: $ba
    cp d                                          ; $5eb4: $ba

jr_082_5eb5:
    jr c, @-$43                                   ; $5eb5: $38 $bb

    cp h                                          ; $5eb7: $bc
    cp l                                          ; $5eb8: $bd
    inc a                                         ; $5eb9: $3c
    cp [hl]                                       ; $5eba: $be
    cp a                                          ; $5ebb: $bf
    ret nz                                        ; $5ebc: $c0

    inc bc                                        ; $5ebd: $03
    rrca                                          ; $5ebe: $0f

jr_082_5ebf:
    rrca                                          ; $5ebf: $0f
    rrca                                          ; $5ec0: $0f
    inc bc                                        ; $5ec1: $03
    rrca                                          ; $5ec2: $0f
    rrca                                          ; $5ec3: $0f
    rrca                                          ; $5ec4: $0f
    inc bc                                        ; $5ec5: $03
    rrca                                          ; $5ec6: $0f
    rrca                                          ; $5ec7: $0f
    rrca                                          ; $5ec8: $0f
    inc bc                                        ; $5ec9: $03
    rrca                                          ; $5eca: $0f
    rrca                                          ; $5ecb: $0f
    rrca                                          ; $5ecc: $0f
    or [hl]                                       ; $5ecd: $b6
    or [hl]                                       ; $5ece: $b6
    cp b                                          ; $5ecf: $b8
    inc h                                         ; $5ed0: $24
    cp d                                          ; $5ed1: $ba
    cp d                                          ; $5ed2: $ba
    pop bc                                        ; $5ed3: $c1
    jr z, jr_082_5e98                             ; $5ed4: $28 $c2

    jp $39c4                                      ; $5ed6: $c3 $c4 $39


    push bc                                       ; $5ed9: $c5
    add $c7                                       ; $5eda: $c6 $c7
    dec a                                         ; $5edc: $3d
    rrca                                          ; $5edd: $0f
    rrca                                          ; $5ede: $0f
    rrca                                          ; $5edf: $0f
    ld [bc], a                                    ; $5ee0: $02
    rrca                                          ; $5ee1: $0f
    rrca                                          ; $5ee2: $0f
    rrca                                          ; $5ee3: $0f
    ld [bc], a                                    ; $5ee4: $02
    rrca                                          ; $5ee5: $0f

jr_082_5ee6:
    rrca                                          ; $5ee6: $0f
    rrca                                          ; $5ee7: $0f
    ld [bc], a                                    ; $5ee8: $02
    rrca                                          ; $5ee9: $0f
    rrca                                          ; $5eea: $0f
    rrca                                          ; $5eeb: $0f
    ld [bc], a                                    ; $5eec: $02
    ld b, b                                       ; $5eed: $40
    ret z                                         ; $5eee: $c8

    ret                                           ; $5eef: $c9


    jp z, $cb1f                                   ; $5ef0: $ca $1f $cb

    call z, $23cd                                 ; $5ef3: $cc $cd $23
    adc $cf                                       ; $5ef6: $ce $cf
    ret nc                                        ; $5ef8: $d0

    daa                                           ; $5ef9: $27
    jr z, jr_082_5f25                             ; $5efa: $28 $29

    ld a, [hl+]                                   ; $5efc: $2a
    inc bc                                        ; $5efd: $03
    rrca                                          ; $5efe: $0f
    rrca                                          ; $5eff: $0f
    rrca                                          ; $5f00: $0f
    inc bc                                        ; $5f01: $03
    rrca                                          ; $5f02: $0f
    rrca                                          ; $5f03: $0f
    rrca                                          ; $5f04: $0f
    inc bc                                        ; $5f05: $03
    rrca                                          ; $5f06: $0f
    rrca                                          ; $5f07: $0f

jr_082_5f08:
    rrca                                          ; $5f08: $0f
    inc bc                                        ; $5f09: $03
    inc bc                                        ; $5f0a: $03
    inc bc                                        ; $5f0b: $03
    inc bc                                        ; $5f0c: $03
    pop de                                        ; $5f0d: $d1
    jp nc, Jump_082_41d3                          ; $5f0e: $d2 $d3 $41

    call nc, $d6d5                                ; $5f11: $d4 $d5 $d6
    jr nz, jr_082_5ee6                            ; $5f14: $20 $d0

    rst $08                                       ; $5f16: $cf
    adc $24                                       ; $5f17: $ce $24
    inc sp                                        ; $5f19: $33
    inc [hl]                                      ; $5f1a: $34
    daa                                           ; $5f1b: $27
    jr z, jr_082_5f2d                             ; $5f1c: $28 $0f

    rrca                                          ; $5f1e: $0f
    rrca                                          ; $5f1f: $0f
    ld [bc], a                                    ; $5f20: $02
    rrca                                          ; $5f21: $0f
    rrca                                          ; $5f22: $0f
    rrca                                          ; $5f23: $0f
    ld [bc], a                                    ; $5f24: $02

jr_082_5f25:
    cpl                                           ; $5f25: $2f
    rrca                                          ; $5f26: $0f
    cpl                                           ; $5f27: $2f
    ld [bc], a                                    ; $5f28: $02
    inc bc                                        ; $5f29: $03
    inc bc                                        ; $5f2a: $03
    inc bc                                        ; $5f2b: $03
    ld [bc], a                                    ; $5f2c: $02

jr_082_5f2d:
    ld sp, $fe32                                  ; $5f2d: $31 $32 $fe
    rst $38                                       ; $5f30: $ff
    inc sp                                        ; $5f31: $33
    inc [hl]                                      ; $5f32: $34
    nop                                           ; $5f33: $00
    ld bc, $4544                                  ; $5f34: $01 $44 $45
    ld [bc], a                                    ; $5f37: $02
    inc bc                                        ; $5f38: $03
    ld b, [hl]                                    ; $5f39: $46
    ld b, a                                       ; $5f3a: $47
    inc b                                         ; $5f3b: $04
    dec b                                         ; $5f3c: $05
    ld [bc], a                                    ; $5f3d: $02
    ld [bc], a                                    ; $5f3e: $02
    inc c                                         ; $5f3f: $0c
    inc c                                         ; $5f40: $0c
    ld [bc], a                                    ; $5f41: $02
    ld [bc], a                                    ; $5f42: $02
    inc c                                         ; $5f43: $0c
    inc c                                         ; $5f44: $0c
    ld [bc], a                                    ; $5f45: $02
    ld [bc], a                                    ; $5f46: $02
    inc c                                         ; $5f47: $0c
    inc c                                         ; $5f48: $0c
    ld [bc], a                                    ; $5f49: $02
    ld [bc], a                                    ; $5f4a: $02
    inc c                                         ; $5f4b: $0c
    inc c                                         ; $5f4c: $0c
    ld c, b                                       ; $5f4d: $48
    ld c, c                                       ; $5f4e: $49
    ld b, $07                                     ; $5f4f: $06 $07
    cpl                                           ; $5f51: $2f
    jr nc, jr_082_5f5c                            ; $5f52: $30 $08

    add hl, bc                                    ; $5f54: $09
    ld sp, $2332                                  ; $5f55: $31 $32 $23
    inc h                                         ; $5f58: $24
    inc sp                                        ; $5f59: $33
    inc [hl]                                      ; $5f5a: $34
    daa                                           ; $5f5b: $27

jr_082_5f5c:
    jr z, jr_082_5f60                             ; $5f5c: $28 $02

    ld [bc], a                                    ; $5f5e: $02
    inc c                                         ; $5f5f: $0c

jr_082_5f60:
    inc c                                         ; $5f60: $0c
    ld [bc], a                                    ; $5f61: $02
    ld [bc], a                                    ; $5f62: $02
    inc c                                         ; $5f63: $0c
    inc c                                         ; $5f64: $0c
    ld [bc], a                                    ; $5f65: $02
    ld [bc], a                                    ; $5f66: $02
    inc bc                                        ; $5f67: $03
    inc bc                                        ; $5f68: $03
    ld [bc], a                                    ; $5f69: $02
    ld [bc], a                                    ; $5f6a: $02
    ld [bc], a                                    ; $5f6b: $02
    inc bc                                        ; $5f6c: $03
    xor $ed                                       ; $5f6d: $ee $ed
    db $ed                                        ; $5f6f: $ed
    db $ed                                        ; $5f70: $ed
    xor $ed                                       ; $5f71: $ee $ed
    db $ed                                        ; $5f73: $ed
    db $ed                                        ; $5f74: $ed
    xor $ed                                       ; $5f75: $ee $ed
    db $ed                                        ; $5f77: $ed
    db $ed                                        ; $5f78: $ed
    ld c, d                                       ; $5f79: $4a
    jr jr_082_5f08                                ; $5f7a: $18 $8c

    db $ed                                        ; $5f7c: $ed
    add b                                         ; $5f7d: $80
    add b                                         ; $5f7e: $80
    add b                                         ; $5f7f: $80
    add b                                         ; $5f80: $80
    add b                                         ; $5f81: $80
    add b                                         ; $5f82: $80
    add b                                         ; $5f83: $80
    add b                                         ; $5f84: $80
    add b                                         ; $5f85: $80
    add b                                         ; $5f86: $80
    add b                                         ; $5f87: $80
    add b                                         ; $5f88: $80
    add b                                         ; $5f89: $80
    add b                                         ; $5f8a: $80
    adc b                                         ; $5f8b: $88
    add b                                         ; $5f8c: $80
    ld sp, $2332                                  ; $5f8d: $31 $32 $23
    inc h                                         ; $5f90: $24
    inc sp                                        ; $5f91: $33
    inc [hl]                                      ; $5f92: $34
    daa                                           ; $5f93: $27
    jr z, jr_082_5fda                             ; $5f94: $28 $44

    ld b, l                                       ; $5f96: $45
    jr c, jr_082_5fd2                             ; $5f97: $38 $39

    ld b, [hl]                                    ; $5f99: $46
    ld b, a                                       ; $5f9a: $47
    inc a                                         ; $5f9b: $3c
    dec a                                         ; $5f9c: $3d

jr_082_5f9d:
    ld [bc], a                                    ; $5f9d: $02
    ld [bc], a                                    ; $5f9e: $02
    ld [bc], a                                    ; $5f9f: $02
    inc bc                                        ; $5fa0: $03
    ld [bc], a                                    ; $5fa1: $02
    ld [bc], a                                    ; $5fa2: $02
    ld [bc], a                                    ; $5fa3: $02
    inc bc                                        ; $5fa4: $03
    ld [bc], a                                    ; $5fa5: $02
    ld [bc], a                                    ; $5fa6: $02
    ld [bc], a                                    ; $5fa7: $02
    inc bc                                        ; $5fa8: $03
    ld [bc], a                                    ; $5fa9: $02
    ld [bc], a                                    ; $5faa: $02
    ld [bc], a                                    ; $5fab: $02
    inc bc                                        ; $5fac: $03
    rrca                                          ; $5fad: $0f
    db $10                                        ; $5fae: $10
    xor $ed                                       ; $5faf: $ee $ed
    ld de, $1a12                                  ; $5fb1: $11 $12 $1a
    db $ed                                        ; $5fb4: $ed
    inc de                                        ; $5fb5: $13
    inc d                                         ; $5fb6: $14
    ld a, [de]                                    ; $5fb7: $1a
    db $ed                                        ; $5fb8: $ed
    dec d                                         ; $5fb9: $15
    ld d, $1a                                     ; $5fba: $16 $1a
    db $ed                                        ; $5fbc: $ed
    inc b                                         ; $5fbd: $04
    inc b                                         ; $5fbe: $04
    add b                                         ; $5fbf: $80
    add b                                         ; $5fc0: $80
    inc b                                         ; $5fc1: $04
    inc b                                         ; $5fc2: $04
    add b                                         ; $5fc3: $80
    add b                                         ; $5fc4: $80
    inc b                                         ; $5fc5: $04
    inc b                                         ; $5fc6: $04
    add b                                         ; $5fc7: $80
    add b                                         ; $5fc8: $80
    inc b                                         ; $5fc9: $04
    inc b                                         ; $5fca: $04
    add b                                         ; $5fcb: $80
    add b                                         ; $5fcc: $80
    db $ed                                        ; $5fcd: $ed
    db $ed                                        ; $5fce: $ed
    db $ed                                        ; $5fcf: $ed
    ld c, d                                       ; $5fd0: $4a
    db $ed                                        ; $5fd1: $ed

jr_082_5fd2:
    db $ed                                        ; $5fd2: $ed
    db $ed                                        ; $5fd3: $ed
    db $ed                                        ; $5fd4: $ed
    db $ed                                        ; $5fd5: $ed
    db $ed                                        ; $5fd6: $ed
    db $ed                                        ; $5fd7: $ed
    db $ed                                        ; $5fd8: $ed
    db $ed                                        ; $5fd9: $ed

jr_082_5fda:
    db $ed                                        ; $5fda: $ed
    db $ed                                        ; $5fdb: $ed
    db $ed                                        ; $5fdc: $ed
    add b                                         ; $5fdd: $80
    add b                                         ; $5fde: $80
    add b                                         ; $5fdf: $80
    add b                                         ; $5fe0: $80
    add b                                         ; $5fe1: $80
    add b                                         ; $5fe2: $80
    add b                                         ; $5fe3: $80
    add b                                         ; $5fe4: $80
    add b                                         ; $5fe5: $80
    add b                                         ; $5fe6: $80
    add b                                         ; $5fe7: $80
    add b                                         ; $5fe8: $80
    add b                                         ; $5fe9: $80
    add b                                         ; $5fea: $80
    add b                                         ; $5feb: $80
    add b                                         ; $5fec: $80
    jr jr_082_6007                                ; $5fed: $18 $18

    jr jr_082_6009                                ; $5fef: $18 $18

    db $ed                                        ; $5ff1: $ed
    db $ed                                        ; $5ff2: $ed
    db $ed                                        ; $5ff3: $ed
    db $ed                                        ; $5ff4: $ed
    db $ed                                        ; $5ff5: $ed
    db $ed                                        ; $5ff6: $ed
    db $ed                                        ; $5ff7: $ed
    db $ed                                        ; $5ff8: $ed
    db $ed                                        ; $5ff9: $ed
    db $ed                                        ; $5ffa: $ed
    db $ed                                        ; $5ffb: $ed
    db $ed                                        ; $5ffc: $ed
    add b                                         ; $5ffd: $80
    add b                                         ; $5ffe: $80
    add b                                         ; $5fff: $80
    add b                                         ; $6000: $80
    add b                                         ; $6001: $80
    add b                                         ; $6002: $80
    add b                                         ; $6003: $80
    add b                                         ; $6004: $80
    add b                                         ; $6005: $80
    add b                                         ; $6006: $80

jr_082_6007:
    add b                                         ; $6007: $80
    add b                                         ; $6008: $80

jr_082_6009:
    add b                                         ; $6009: $80
    add b                                         ; $600a: $80
    add b                                         ; $600b: $80
    add b                                         ; $600c: $80
    jr jr_082_6027                                ; $600d: $18 $18

    jr jr_082_5f9d                                ; $600f: $18 $8c

    db $ed                                        ; $6011: $ed
    db $ed                                        ; $6012: $ed
    db $ed                                        ; $6013: $ed
    xor $ed                                       ; $6014: $ee $ed
    db $ed                                        ; $6016: $ed
    db $ed                                        ; $6017: $ed
    xor $ed                                       ; $6018: $ee $ed
    db $ed                                        ; $601a: $ed
    db $ed                                        ; $601b: $ed
    xor $80                                       ; $601c: $ee $80
    add b                                         ; $601e: $80
    add b                                         ; $601f: $80
    adc b                                         ; $6020: $88
    add b                                         ; $6021: $80
    add b                                         ; $6022: $80
    add b                                         ; $6023: $80
    add b                                         ; $6024: $80
    add b                                         ; $6025: $80
    add b                                         ; $6026: $80

jr_082_6027:
    add b                                         ; $6027: $80
    add b                                         ; $6028: $80
    add b                                         ; $6029: $80
    add b                                         ; $602a: $80
    add b                                         ; $602b: $80
    add b                                         ; $602c: $80
    db $ed                                        ; $602d: $ed
    db $ed                                        ; $602e: $ed
    db $ed                                        ; $602f: $ed
    db $ed                                        ; $6030: $ed
    db $ed                                        ; $6031: $ed
    db $ed                                        ; $6032: $ed
    db $ed                                        ; $6033: $ed
    db $ed                                        ; $6034: $ed
    db $ed                                        ; $6035: $ed
    db $ed                                        ; $6036: $ed
    db $ed                                        ; $6037: $ed
    db $ed                                        ; $6038: $ed
    db $ed                                        ; $6039: $ed
    db $ed                                        ; $603a: $ed
    db $ed                                        ; $603b: $ed
    db $ed                                        ; $603c: $ed
    add b                                         ; $603d: $80
    add b                                         ; $603e: $80
    add b                                         ; $603f: $80
    add b                                         ; $6040: $80
    add b                                         ; $6041: $80
    add b                                         ; $6042: $80
    add b                                         ; $6043: $80
    add b                                         ; $6044: $80
    add b                                         ; $6045: $80
    add b                                         ; $6046: $80
    add b                                         ; $6047: $80
    add b                                         ; $6048: $80
    add b                                         ; $6049: $80
    add b                                         ; $604a: $80
    add b                                         ; $604b: $80
    add b                                         ; $604c: $80
    db $ed                                        ; $604d: $ed
    db $ed                                        ; $604e: $ed
    db $ed                                        ; $604f: $ed
    xor $ed                                       ; $6050: $ee $ed
    db $ed                                        ; $6052: $ed
    db $ed                                        ; $6053: $ed
    xor $ed                                       ; $6054: $ee $ed
    db $ed                                        ; $6056: $ed
    db $ed                                        ; $6057: $ed
    ld c, d                                       ; $6058: $4a
    db $ed                                        ; $6059: $ed
    db $ed                                        ; $605a: $ed
    db $ed                                        ; $605b: $ed
    db $ed                                        ; $605c: $ed
    add b                                         ; $605d: $80
    add b                                         ; $605e: $80
    add b                                         ; $605f: $80
    add b                                         ; $6060: $80
    add b                                         ; $6061: $80
    add b                                         ; $6062: $80
    add b                                         ; $6063: $80
    add b                                         ; $6064: $80
    add b                                         ; $6065: $80
    add b                                         ; $6066: $80
    add b                                         ; $6067: $80
    add b                                         ; $6068: $80
    add b                                         ; $6069: $80
    add b                                         ; $606a: $80
    add b                                         ; $606b: $80
    add b                                         ; $606c: $80
    ld b, b                                       ; $606d: $40
    ld b, c                                       ; $606e: $41
    ld b, d                                       ; $606f: $42
    ld b, e                                       ; $6070: $43
    rra                                           ; $6071: $1f
    jr nz, jr_082_6095                            ; $6072: $20 $21

    ld [hl+], a                                   ; $6074: $22
    inc hl                                        ; $6075: $23
    inc h                                         ; $6076: $24
    dec h                                         ; $6077: $25
    ld h, $27                                     ; $6078: $26 $27
    jr z, jr_082_60a5                             ; $607a: $28 $29

    ld a, [hl+]                                   ; $607c: $2a
    ld [bc], a                                    ; $607d: $02
    ld [bc], a                                    ; $607e: $02
    ld [bc], a                                    ; $607f: $02
    ld [bc], a                                    ; $6080: $02
    ld [bc], a                                    ; $6081: $02
    ld [bc], a                                    ; $6082: $02
    ld [bc], a                                    ; $6083: $02
    ld [bc], a                                    ; $6084: $02
    inc bc                                        ; $6085: $03
    ld [bc], a                                    ; $6086: $02
    ld [bc], a                                    ; $6087: $02
    ld [bc], a                                    ; $6088: $02
    inc bc                                        ; $6089: $03
    ld [bc], a                                    ; $608a: $02
    ld [bc], a                                    ; $608b: $02
    ld [bc], a                                    ; $608c: $02
    jr c, jr_082_60c8                             ; $608d: $38 $39

    ld a, [hl-]                                   ; $608f: $3a
    dec sp                                        ; $6090: $3b
    inc a                                         ; $6091: $3c
    dec a                                         ; $6092: $3d
    ld a, $3f                                     ; $6093: $3e $3f

jr_082_6095:
    adc h                                         ; $6095: $8c
    ld b, c                                       ; $6096: $41
    ld b, d                                       ; $6097: $42
    ld b, e                                       ; $6098: $43
    xor $20                                       ; $6099: $ee $20
    ld hl, $0322                                  ; $609b: $21 $22 $03
    ld [bc], a                                    ; $609e: $02
    ld [bc], a                                    ; $609f: $02
    ld [bc], a                                    ; $60a0: $02
    inc bc                                        ; $60a1: $03
    ld [bc], a                                    ; $60a2: $02
    ld [bc], a                                    ; $60a3: $02
    ld [bc], a                                    ; $60a4: $02

jr_082_60a5:
    adc b                                         ; $60a5: $88
    ld [bc], a                                    ; $60a6: $02
    ld [bc], a                                    ; $60a7: $02
    ld [bc], a                                    ; $60a8: $02
    add b                                         ; $60a9: $80
    inc bc                                        ; $60aa: $03
    ld [bc], a                                    ; $60ab: $02
    ld [bc], a                                    ; $60ac: $02
    ld b, h                                       ; $60ad: $44
    ld b, l                                       ; $60ae: $45
    jr c, jr_082_60ea                             ; $60af: $38 $39

    ld b, [hl]                                    ; $60b1: $46
    ld b, a                                       ; $60b2: $47
    inc a                                         ; $60b3: $3c
    dec a                                         ; $60b4: $3d
    ld c, b                                       ; $60b5: $48
    ld c, c                                       ; $60b6: $49
    ld b, b                                       ; $60b7: $40
    rla                                           ; $60b8: $17
    cpl                                           ; $60b9: $2f
    jr nc, jr_082_60db                            ; $60ba: $30 $1f

    xor $02                                       ; $60bc: $ee $02
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

jr_082_60c8:
    add b                                         ; $60c8: $80
    ld [bc], a                                    ; $60c9: $02
    ld [bc], a                                    ; $60ca: $02
    inc bc                                        ; $60cb: $03
    add b                                         ; $60cc: $80
    ld a, [hl-]                                   ; $60cd: $3a
    dec sp                                        ; $60ce: $3b
    ld b, h                                       ; $60cf: $44
    ld b, l                                       ; $60d0: $45
    ld a, $3f                                     ; $60d1: $3e $3f
    ld b, [hl]                                    ; $60d3: $46
    ld b, a                                       ; $60d4: $47
    jr jr_082_60ef                                ; $60d5: $18 $18

    jr jr_082_60f1                                ; $60d7: $18 $18

    db $ed                                        ; $60d9: $ed
    db $ed                                        ; $60da: $ed

jr_082_60db:
    db $ed                                        ; $60db: $ed
    db $ed                                        ; $60dc: $ed
    ld [bc], a                                    ; $60dd: $02
    ld [bc], a                                    ; $60de: $02
    ld [bc], a                                    ; $60df: $02
    ld [bc], a                                    ; $60e0: $02
    ld [bc], a                                    ; $60e1: $02
    ld [bc], a                                    ; $60e2: $02
    ld [bc], a                                    ; $60e3: $02
    ld [bc], a                                    ; $60e4: $02
    add b                                         ; $60e5: $80
    add b                                         ; $60e6: $80
    add b                                         ; $60e7: $80
    add b                                         ; $60e8: $80
    add b                                         ; $60e9: $80

jr_082_60ea:
    add b                                         ; $60ea: $80
    add b                                         ; $60eb: $80
    add b                                         ; $60ec: $80
    jr c, jr_082_6128                             ; $60ed: $38 $39

jr_082_60ef:
    ld a, [hl-]                                   ; $60ef: $3a
    dec sp                                        ; $60f0: $3b

jr_082_60f1:
    inc a                                         ; $60f1: $3c
    dec a                                         ; $60f2: $3d
    ld a, $3f                                     ; $60f3: $3e $3f
    jr @+$1a                                      ; $60f5: $18 $18

    jr @+$1a                                      ; $60f7: $18 $18

    db $ed                                        ; $60f9: $ed
    db $ed                                        ; $60fa: $ed
    db $ed                                        ; $60fb: $ed
    db $ed                                        ; $60fc: $ed
    ld [bc], a                                    ; $60fd: $02
    ld [bc], a                                    ; $60fe: $02
    ld [bc], a                                    ; $60ff: $02
    ld [bc], a                                    ; $6100: $02
    ld [bc], a                                    ; $6101: $02
    ld [bc], a                                    ; $6102: $02
    ld [bc], a                                    ; $6103: $02
    ld [bc], a                                    ; $6104: $02
    add b                                         ; $6105: $80
    add b                                         ; $6106: $80
    add b                                         ; $6107: $80
    add b                                         ; $6108: $80
    add b                                         ; $6109: $80
    add b                                         ; $610a: $80
    add b                                         ; $610b: $80
    add b                                         ; $610c: $80
    ld c, d                                       ; $610d: $4a
    jr jr_082_6146                                ; $610e: $18 $36

    ld [hl], $ed                                  ; $6110: $36 $ed
    db $ed                                        ; $6112: $ed
    scf                                           ; $6113: $37
    scf                                           ; $6114: $37
    db $ed                                        ; $6115: $ed
    db $ed                                        ; $6116: $ed
    db $ed                                        ; $6117: $ed
    db $ed                                        ; $6118: $ed
    db $ed                                        ; $6119: $ed
    db $ed                                        ; $611a: $ed
    db $ed                                        ; $611b: $ed
    db $ed                                        ; $611c: $ed
    add b                                         ; $611d: $80
    add b                                         ; $611e: $80
    adc b                                         ; $611f: $88
    adc b                                         ; $6120: $88
    add b                                         ; $6121: $80
    add b                                         ; $6122: $80
    adc b                                         ; $6123: $88
    adc b                                         ; $6124: $88
    add b                                         ; $6125: $80
    add b                                         ; $6126: $80
    add b                                         ; $6127: $80

jr_082_6128:
    add b                                         ; $6128: $80
    add b                                         ; $6129: $80
    add b                                         ; $612a: $80
    add b                                         ; $612b: $80
    add b                                         ; $612c: $80
    ld [hl], $36                                  ; $612d: $36 $36
    jr jr_082_614a                                ; $612f: $18 $19

    scf                                           ; $6131: $37
    scf                                           ; $6132: $37
    db $ed                                        ; $6133: $ed
    db $ed                                        ; $6134: $ed
    db $ed                                        ; $6135: $ed
    db $ed                                        ; $6136: $ed
    db $ed                                        ; $6137: $ed
    db $ed                                        ; $6138: $ed
    db $ed                                        ; $6139: $ed
    db $ed                                        ; $613a: $ed
    db $ed                                        ; $613b: $ed
    db $ed                                        ; $613c: $ed
    adc b                                         ; $613d: $88
    adc b                                         ; $613e: $88
    add b                                         ; $613f: $80
    add b                                         ; $6140: $80
    adc b                                         ; $6141: $88
    adc b                                         ; $6142: $88
    add b                                         ; $6143: $80
    add b                                         ; $6144: $80
    add b                                         ; $6145: $80

jr_082_6146:
    add b                                         ; $6146: $80
    add b                                         ; $6147: $80
    add b                                         ; $6148: $80
    add b                                         ; $6149: $80

jr_082_614a:
    add b                                         ; $614a: $80
    add b                                         ; $614b: $80
    add b                                         ; $614c: $80
    ld c, b                                       ; $614d: $48
    ld c, c                                       ; $614e: $49
    ld b, b                                       ; $614f: $40
    ld b, c                                       ; $6150: $41
    cpl                                           ; $6151: $2f
    jr nc, @+$21                                  ; $6152: $30 $1f

    jr nz, jr_082_6187                            ; $6154: $20 $31

    ld [hl-], a                                   ; $6156: $32
    inc hl                                        ; $6157: $23
    inc h                                         ; $6158: $24
    inc sp                                        ; $6159: $33
    inc [hl]                                      ; $615a: $34
    daa                                           ; $615b: $27
    jr z, jr_082_6160                             ; $615c: $28 $02

    ld [bc], a                                    ; $615e: $02
    ld [bc], a                                    ; $615f: $02

jr_082_6160:
    inc bc                                        ; $6160: $03
    ld [bc], a                                    ; $6161: $02
    ld [bc], a                                    ; $6162: $02
    ld [bc], a                                    ; $6163: $02
    inc bc                                        ; $6164: $03
    ld [bc], a                                    ; $6165: $02
    ld [bc], a                                    ; $6166: $02
    ld [bc], a                                    ; $6167: $02
    ld [bc], a                                    ; $6168: $02
    ld [bc], a                                    ; $6169: $02
    ld [bc], a                                    ; $616a: $02
    ld [bc], a                                    ; $616b: $02
    ld [bc], a                                    ; $616c: $02
    dec [hl]                                      ; $616d: $35
    ld [hl], $1a                                  ; $616e: $36 $1a
    db $ed                                        ; $6170: $ed
    ld hl, $1a22                                  ; $6171: $21 $22 $1a
    scf                                           ; $6174: $37
    dec h                                         ; $6175: $25
    ld h, $ee                                     ; $6176: $26 $ee
    scf                                           ; $6178: $37
    rla                                           ; $6179: $17
    jr jr_082_6195                                ; $617a: $18 $19

    scf                                           ; $617c: $37
    inc b                                         ; $617d: $04
    inc b                                         ; $617e: $04
    add b                                         ; $617f: $80
    add b                                         ; $6180: $80
    inc bc                                        ; $6181: $03
    inc bc                                        ; $6182: $03
    add b                                         ; $6183: $80
    and b                                         ; $6184: $a0
    ld [bc], a                                    ; $6185: $02
    inc bc                                        ; $6186: $03

jr_082_6187:
    add b                                         ; $6187: $80
    and b                                         ; $6188: $a0
    add b                                         ; $6189: $80
    add b                                         ; $618a: $80
    add b                                         ; $618b: $80
    and b                                         ; $618c: $a0
    ld b, h                                       ; $618d: $44
    ld b, l                                       ; $618e: $45
    jr c, jr_082_61ca                             ; $618f: $38 $39

    ld b, [hl]                                    ; $6191: $46
    ld b, a                                       ; $6192: $47
    inc a                                         ; $6193: $3c
    dec a                                         ; $6194: $3d

jr_082_6195:
    jr jr_082_61af                                ; $6195: $18 $18

    jr jr_082_61b1                                ; $6197: $18 $18

    db $ed                                        ; $6199: $ed
    db $ed                                        ; $619a: $ed
    db $ed                                        ; $619b: $ed
    db $ed                                        ; $619c: $ed
    ld [bc], a                                    ; $619d: $02
    ld [bc], a                                    ; $619e: $02
    ld [bc], a                                    ; $619f: $02
    ld [bc], a                                    ; $61a0: $02
    ld [bc], a                                    ; $61a1: $02
    ld [bc], a                                    ; $61a2: $02
    ld [bc], a                                    ; $61a3: $02
    inc bc                                        ; $61a4: $03
    add b                                         ; $61a5: $80
    add b                                         ; $61a6: $80
    add b                                         ; $61a7: $80
    add b                                         ; $61a8: $80
    add b                                         ; $61a9: $80
    add b                                         ; $61aa: $80
    add b                                         ; $61ab: $80
    add b                                         ; $61ac: $80
    xor $ed                                       ; $61ad: $ee $ed

jr_082_61af:
    db $ed                                        ; $61af: $ed
    db $ed                                        ; $61b0: $ed

jr_082_61b1:
    xor $ed                                       ; $61b1: $ee $ed
    db $ed                                        ; $61b3: $ed
    db $ed                                        ; $61b4: $ed
    add hl, de                                    ; $61b5: $19
    db $ed                                        ; $61b6: $ed
    db $ed                                        ; $61b7: $ed
    db $ed                                        ; $61b8: $ed
    db $ed                                        ; $61b9: $ed
    db $ed                                        ; $61ba: $ed
    db $ed                                        ; $61bb: $ed
    db $ed                                        ; $61bc: $ed
    add b                                         ; $61bd: $80
    add b                                         ; $61be: $80
    add b                                         ; $61bf: $80
    add b                                         ; $61c0: $80
    add b                                         ; $61c1: $80
    add b                                         ; $61c2: $80
    add b                                         ; $61c3: $80
    add b                                         ; $61c4: $80
    add b                                         ; $61c5: $80
    add b                                         ; $61c6: $80
    add b                                         ; $61c7: $80
    add b                                         ; $61c8: $80
    add b                                         ; $61c9: $80

jr_082_61ca:
    add b                                         ; $61ca: $80
    add b                                         ; $61cb: $80
    add b                                         ; $61cc: $80
    dec bc                                        ; $61cd: $0b
    nop                                           ; $61ce: $00
    inc de                                        ; $61cf: $13
    nop                                           ; $61d0: $00
    add b                                         ; $61d1: $80
    inc d                                         ; $61d2: $14
    db $ed                                        ; $61d3: $ed
    db $ed                                        ; $61d4: $ed
    db $ed                                        ; $61d5: $ed
    db $ed                                        ; $61d6: $ed
    db $ed                                        ; $61d7: $ed
    db $ed                                        ; $61d8: $ed
    db $ed                                        ; $61d9: $ed
    db $ed                                        ; $61da: $ed
    db $ed                                        ; $61db: $ed
    db $ed                                        ; $61dc: $ed
    db $ed                                        ; $61dd: $ed
    db $ed                                        ; $61de: $ed
    db $ed                                        ; $61df: $ed
    db $ed                                        ; $61e0: $ed
    db $ed                                        ; $61e1: $ed
    db $ed                                        ; $61e2: $ed
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
    add b                                         ; $61ed: $80
    add b                                         ; $61ee: $80
    add b                                         ; $61ef: $80
    add b                                         ; $61f0: $80
    add b                                         ; $61f1: $80
    add b                                         ; $61f2: $80
    db $ed                                        ; $61f3: $ed
    db $ed                                        ; $61f4: $ed
    db $ed                                        ; $61f5: $ed
    xor $ed                                       ; $61f6: $ee $ed
    db $ed                                        ; $61f8: $ed
    db $ed                                        ; $61f9: $ed
    xor $ed                                       ; $61fa: $ee $ed
    db $ed                                        ; $61fc: $ed
    db $ed                                        ; $61fd: $ed
    xor $ed                                       ; $61fe: $ee $ed
    db $ed                                        ; $6200: $ed
    db $ed                                        ; $6201: $ed
    xor $80                                       ; $6202: $ee $80
    add b                                         ; $6204: $80
    add b                                         ; $6205: $80
    add b                                         ; $6206: $80
    add b                                         ; $6207: $80
    add b                                         ; $6208: $80
    add b                                         ; $6209: $80
    add b                                         ; $620a: $80
    add b                                         ; $620b: $80
    add b                                         ; $620c: $80
    add b                                         ; $620d: $80
    add b                                         ; $620e: $80
    add b                                         ; $620f: $80
    add b                                         ; $6210: $80
    add b                                         ; $6211: $80
    add b                                         ; $6212: $80
    rst $28                                       ; $6213: $ef
    ldh a, [$f1]                                  ; $6214: $f0 $f1
    ld a, [c]                                     ; $6216: $f2
    di                                            ; $6217: $f3
    db $f4                                        ; $6218: $f4
    push af                                       ; $6219: $f5
    or $f7                                        ; $621a: $f6 $f7
    ld hl, sp-$07                                 ; $621c: $f8 $f9
    ld a, [$fcfb]                                 ; $621e: $fa $fb $fc
    db $fd                                        ; $6221: $fd
    cp $04                                        ; $6222: $fe $04
    inc b                                         ; $6224: $04
    ld bc, $0401                                  ; $6225: $01 $01 $04
    inc b                                         ; $6228: $04
    ld bc, $0401                                  ; $6229: $01 $01 $04
    inc b                                         ; $622c: $04
    ld bc, $0401                                  ; $622d: $01 $01 $04
    inc b                                         ; $6230: $04
    ld bc, $ff01                                  ; $6231: $01 $01 $ff
    nop                                           ; $6234: $00
    ld bc, $02ef                                  ; $6235: $01 $ef $02
    inc bc                                        ; $6238: $03
    inc b                                         ; $6239: $04
    di                                            ; $623a: $f3
    dec b                                         ; $623b: $05
    ld b, $07                                     ; $623c: $06 $07
    rst $30                                       ; $623e: $f7
    ld [$0a09], sp                                ; $623f: $08 $09 $0a
    ei                                            ; $6242: $fb
    ld bc, $0404                                  ; $6243: $01 $04 $04
    inc b                                         ; $6246: $04
    ld bc, $0404                                  ; $6247: $01 $04 $04
    inc b                                         ; $624a: $04
    ld bc, $0404                                  ; $624b: $01 $04 $04
    inc b                                         ; $624e: $04
    ld bc, $0404                                  ; $624f: $01 $04 $04
    inc b                                         ; $6252: $04
    db $ed                                        ; $6253: $ed
    db $ed                                        ; $6254: $ed
    db $ed                                        ; $6255: $ed
    xor $ed                                       ; $6256: $ee $ed
    dec bc                                        ; $6258: $0b
    inc c                                         ; $6259: $0c
    dec c                                         ; $625a: $0d
    db $ed                                        ; $625b: $ed
    xor $ef                                       ; $625c: $ee $ef
    ld c, $ed                                     ; $625e: $0e $ed
    rrca                                          ; $6260: $0f
    di                                            ; $6261: $f3
    db $10                                        ; $6262: $10
    add b                                         ; $6263: $80
    add b                                         ; $6264: $80
    add b                                         ; $6265: $80
    add b                                         ; $6266: $80
    add b                                         ; $6267: $80
    add b                                         ; $6268: $80
    add b                                         ; $6269: $80
    add b                                         ; $626a: $80
    add b                                         ; $626b: $80
    add b                                         ; $626c: $80
    inc b                                         ; $626d: $04
    inc b                                         ; $626e: $04
    add b                                         ; $626f: $80
    add b                                         ; $6270: $80
    inc b                                         ; $6271: $04
    inc b                                         ; $6272: $04
    ld de, $1312                                  ; $6273: $11 $12 $13
    inc d                                         ; $6276: $14
    dec d                                         ; $6277: $15
    ld d, $17                                     ; $6278: $16 $17
    jr @+$1b                                      ; $627a: $18 $19

    ld a, [de]                                    ; $627c: $1a
    dec de                                        ; $627d: $1b

Call_082_627e:
    inc e                                         ; $627e: $1c
    dec e                                         ; $627f: $1d
    ld e, $1f                                     ; $6280: $1e $1f
    jr nz, jr_082_6288                            ; $6282: $20 $04

    inc b                                         ; $6284: $04
    ld bc, $0301                                  ; $6285: $01 $01 $03

jr_082_6288:
    inc bc                                        ; $6288: $03
    inc bc                                        ; $6289: $03
    inc bc                                        ; $628a: $03
    inc bc                                        ; $628b: $03
    dec b                                         ; $628c: $05
    ld [bc], a                                    ; $628d: $02
    ld [bc], a                                    ; $628e: $02
    ld h, e                                       ; $628f: $63
    ld h, d                                       ; $6290: $62
    ld h, l                                       ; $6291: $65
    ld h, d                                       ; $6292: $62
    ld hl, $2322                                  ; $6293: $21 $22 $23
    ld de, $2524                                  ; $6296: $11 $24 $25
    ld h, $27                                     ; $6299: $26 $27
    jr z, jr_082_62c6                             ; $629b: $28 $29

    add hl, hl                                    ; $629d: $29
    jr z, jr_082_62c7                             ; $629e: $28 $27

    ld h, $25                                     ; $62a0: $26 $25
    inc h                                         ; $62a2: $24
    ld bc, $0404                                  ; $62a3: $01 $04 $04
    inc b                                         ; $62a6: $04
    inc bc                                        ; $62a7: $03
    inc bc                                        ; $62a8: $03
    inc bc                                        ; $62a9: $03
    inc bc                                        ; $62aa: $03
    ld [bc], a                                    ; $62ab: $02
    ld [bc], a                                    ; $62ac: $02
    ld h, d                                       ; $62ad: $62
    ld h, a                                       ; $62ae: $67
    ld h, l                                       ; $62af: $65
    ld h, l                                       ; $62b0: $65
    ld h, l                                       ; $62b1: $65
    ld h, l                                       ; $62b2: $65
    db $ed                                        ; $62b3: $ed
    rrca                                          ; $62b4: $0f
    rst $30                                       ; $62b5: $f7
    ld a, [hl+]                                   ; $62b6: $2a
    db $ed                                        ; $62b7: $ed
    rrca                                          ; $62b8: $0f
    ei                                            ; $62b9: $fb
    dec hl                                        ; $62ba: $2b
    db $ed                                        ; $62bb: $ed
    rrca                                          ; $62bc: $0f
    ld de, $2d2c                                  ; $62bd: $11 $2c $2d
    rrca                                          ; $62c0: $0f
    jr z, jr_082_62ec                             ; $62c1: $28 $29

    add b                                         ; $62c3: $80
    add b                                         ; $62c4: $80
    inc b                                         ; $62c5: $04

jr_082_62c6:
    inc b                                         ; $62c6: $04

jr_082_62c7:
    add b                                         ; $62c7: $80
    add b                                         ; $62c8: $80
    inc b                                         ; $62c9: $04
    inc b                                         ; $62ca: $04
    add b                                         ; $62cb: $80
    add b                                         ; $62cc: $80
    inc b                                         ; $62cd: $04
    inc b                                         ; $62ce: $04
    add b                                         ; $62cf: $80
    add b                                         ; $62d0: $80
    inc bc                                        ; $62d1: $03
    inc bc                                        ; $62d2: $03
    ld h, $27                                     ; $62d3: $26 $27
    jr nz, jr_082_62f6                            ; $62d5: $20 $1f

    add hl, hl                                    ; $62d7: $29
    jr z, jr_082_62f6                             ; $62d8: $28 $1c

    dec de                                        ; $62da: $1b
    dec h                                         ; $62db: $25
    inc h                                         ; $62dc: $24
    jr jr_082_62f6                                ; $62dd: $18 $17

    ld h, $27                                     ; $62df: $26 $27
    jr nz, @+$22                                  ; $62e1: $20 $20

    inc bc                                        ; $62e3: $03
    ld [bc], a                                    ; $62e4: $02
    ld [bc], a                                    ; $62e5: $02
    dec b                                         ; $62e6: $05
    ld h, e                                       ; $62e7: $63
    ld h, d                                       ; $62e8: $62
    ld h, d                                       ; $62e9: $62
    ld h, l                                       ; $62ea: $65
    ld h, e                                       ; $62eb: $63

jr_082_62ec:
    ld h, d                                       ; $62ec: $62
    ld h, l                                       ; $62ed: $65
    ld h, l                                       ; $62ee: $65
    inc bc                                        ; $62ef: $03
    ld [bc], a                                    ; $62f0: $02
    dec b                                         ; $62f1: $05
    ld h, l                                       ; $62f2: $65
    ld e, $1d                                     ; $62f3: $1e $1d
    dec d                                         ; $62f5: $15

jr_082_62f6:
    ld d, $1a                                     ; $62f6: $16 $1a
    add hl, de                                    ; $62f8: $19
    add hl, de                                    ; $62f9: $19
    ld a, [de]                                    ; $62fa: $1a
    ld d, $15                                     ; $62fb: $16 $15
    dec e                                         ; $62fd: $1d
    ld e, $27                                     ; $62fe: $1e $27
    ld h, $15                                     ; $6300: $26 $15
    ld d, $02                                     ; $6302: $16 $02
    dec b                                         ; $6304: $05
    dec b                                         ; $6305: $05
    dec b                                         ; $6306: $05
    ld h, l                                       ; $6307: $65
    ld h, l                                       ; $6308: $65
    dec b                                         ; $6309: $05
    dec b                                         ; $630a: $05
    ld h, l                                       ; $630b: $65
    ld h, l                                       ; $630c: $65
    ld h, l                                       ; $630d: $65
    ld h, l                                       ; $630e: $65
    ld h, l                                       ; $630f: $65
    ld h, l                                       ; $6310: $65
    dec b                                         ; $6311: $05
    dec b                                         ; $6312: $05
    dec l                                         ; $6313: $2d
    xor $24                                       ; $6314: $ee $24
    dec h                                         ; $6316: $25
    dec l                                         ; $6317: $2d
    ld l, $0c                                     ; $6318: $2e $0c
    cpl                                           ; $631a: $2f
    db $ed                                        ; $631b: $ed
    db $ed                                        ; $631c: $ed
    db $ed                                        ; $631d: $ed
    xor $ed                                       ; $631e: $ee $ed
    db $ed                                        ; $6320: $ed
    db $ed                                        ; $6321: $ed
    xor $80                                       ; $6322: $ee $80
    add b                                         ; $6324: $80
    inc bc                                        ; $6325: $03
    ld [bc], a                                    ; $6326: $02
    add b                                         ; $6327: $80
    add b                                         ; $6328: $80
    add b                                         ; $6329: $80
    add b                                         ; $632a: $80
    add b                                         ; $632b: $80
    add b                                         ; $632c: $80
    add b                                         ; $632d: $80
    add b                                         ; $632e: $80
    add b                                         ; $632f: $80
    add b                                         ; $6330: $80
    add b                                         ; $6331: $80
    add b                                         ; $6332: $80
    add hl, hl                                    ; $6333: $29
    jr z, jr_082_6352                             ; $6334: $28 $1c

    rra                                           ; $6336: $1f
    dec h                                         ; $6337: $25
    inc h                                         ; $6338: $24
    jr jr_082_6356                                ; $6339: $18 $1b

    dec d                                         ; $633b: $15
    ld d, $17                                     ; $633c: $16 $17
    rla                                           ; $633e: $17
    add hl, de                                    ; $633f: $19
    ld a, [de]                                    ; $6340: $1a
    dec de                                        ; $6341: $1b
    jr jr_082_63ab                                ; $6342: $18 $67

    ld h, l                                       ; $6344: $65
    ld h, l                                       ; $6345: $65
    dec b                                         ; $6346: $05
    ld h, d                                       ; $6347: $62
    ld h, a                                       ; $6348: $67
    ld h, d                                       ; $6349: $62
    ld h, l                                       ; $634a: $65
    ld [bc], a                                    ; $634b: $02
    ld [bc], a                                    ; $634c: $02
    rlca                                          ; $634d: $07
    ld h, d                                       ; $634e: $62
    inc bc                                        ; $634f: $03
    ld [bc], a                                    ; $6350: $02
    ld [bc], a                                    ; $6351: $02

jr_082_6352:
    ld [bc], a                                    ; $6352: $02
    ld e, $1d                                     ; $6353: $1e $1d
    add hl, de                                    ; $6355: $19

jr_082_6356:
    ld a, [de]                                    ; $6356: $1a
    ld a, [de]                                    ; $6357: $1a
    add hl, de                                    ; $6358: $19
    dec e                                         ; $6359: $1d
    ld e, $16                                     ; $635a: $1e $16
    dec d                                         ; $635c: $15
    ld h, $27                                     ; $635d: $26 $27
    inc h                                         ; $635f: $24
    dec h                                         ; $6360: $25
    add hl, hl                                    ; $6361: $29
    jr z, jr_082_6369                             ; $6362: $28 $05

    dec b                                         ; $6364: $05
    dec b                                         ; $6365: $05
    dec b                                         ; $6366: $05
    ld h, l                                       ; $6367: $65
    ld h, l                                       ; $6368: $65

jr_082_6369:
    ld h, l                                       ; $6369: $65
    ld h, l                                       ; $636a: $65
    ld h, d                                       ; $636b: $62
    ld h, d                                       ; $636c: $62
    rlca                                          ; $636d: $07
    ld [bc], a                                    ; $636e: $02
    dec b                                         ; $636f: $05
    dec b                                         ; $6370: $05
    ld h, d                                       ; $6371: $62
    ld h, a                                       ; $6372: $67
    jr nc, jr_082_63a6                            ; $6373: $30 $31

    ld [hl-], a                                   ; $6375: $32
    inc sp                                        ; $6376: $33
    inc [hl]                                      ; $6377: $34
    dec [hl]                                      ; $6378: $35
    di                                            ; $6379: $f3
    ld [hl], $37                                  ; $637a: $36 $37
    jr c, jr_082_63b7                             ; $637c: $38 $39

    ld a, [hl-]                                   ; $637e: $3a
    dec sp                                        ; $637f: $3b
    inc a                                         ; $6380: $3c
    dec a                                         ; $6381: $3d
    ld a, $04                                     ; $6382: $3e $04
    inc b                                         ; $6384: $04
    inc b                                         ; $6385: $04
    inc b                                         ; $6386: $04
    inc b                                         ; $6387: $04
    inc b                                         ; $6388: $04
    inc b                                         ; $6389: $04
    inc b                                         ; $638a: $04
    inc b                                         ; $638b: $04
    inc b                                         ; $638c: $04
    inc b                                         ; $638d: $04
    inc b                                         ; $638e: $04
    inc b                                         ; $638f: $04
    inc b                                         ; $6390: $04
    inc b                                         ; $6391: $04
    inc b                                         ; $6392: $04
    ccf                                           ; $6393: $3f
    ldh a, [rLCDC]                                ; $6394: $f0 $40
    ld b, c                                       ; $6396: $41
    di                                            ; $6397: $f3
    db $f4                                        ; $6398: $f4
    ld b, d                                       ; $6399: $42
    ld b, e                                       ; $639a: $43
    ld b, h                                       ; $639b: $44
    ld hl, sp+$45                                 ; $639c: $f8 $45
    ld b, [hl]                                    ; $639e: $46
    ld b, a                                       ; $639f: $47
    db $fc                                        ; $63a0: $fc
    ld c, b                                       ; $63a1: $48
    ld c, c                                       ; $63a2: $49
    inc b                                         ; $63a3: $04
    inc b                                         ; $63a4: $04
    ld [bc], a                                    ; $63a5: $02

jr_082_63a6:
    ld [bc], a                                    ; $63a6: $02
    inc b                                         ; $63a7: $04
    inc b                                         ; $63a8: $04
    ld [bc], a                                    ; $63a9: $02
    ld [bc], a                                    ; $63aa: $02

jr_082_63ab:
    inc b                                         ; $63ab: $04
    inc b                                         ; $63ac: $04
    ld [bc], a                                    ; $63ad: $02
    ld [bc], a                                    ; $63ae: $02
    inc b                                         ; $63af: $04
    inc b                                         ; $63b0: $04
    ld [bc], a                                    ; $63b1: $02
    ld [bc], a                                    ; $63b2: $02
    ld c, d                                       ; $63b3: $4a
    ld c, e                                       ; $63b4: $4b
    nop                                           ; $63b5: $00
    ccf                                           ; $63b6: $3f

jr_082_63b7:
    ld c, h                                       ; $63b7: $4c
    ld c, l                                       ; $63b8: $4d
    inc bc                                        ; $63b9: $03
    di                                            ; $63ba: $f3
    ld c, [hl]                                    ; $63bb: $4e
    ld c, a                                       ; $63bc: $4f
    ld b, $44                                     ; $63bd: $06 $44
    ld d, b                                       ; $63bf: $50
    ld d, c                                       ; $63c0: $51
    add hl, bc                                    ; $63c1: $09
    ld b, a                                       ; $63c2: $47
    ld [bc], a                                    ; $63c3: $02
    ld [bc], a                                    ; $63c4: $02
    inc b                                         ; $63c5: $04
    inc b                                         ; $63c6: $04
    ld [bc], a                                    ; $63c7: $02
    ld [bc], a                                    ; $63c8: $02
    inc b                                         ; $63c9: $04
    inc b                                         ; $63ca: $04
    ld [bc], a                                    ; $63cb: $02
    ld [bc], a                                    ; $63cc: $02
    inc b                                         ; $63cd: $04
    inc b                                         ; $63ce: $04
    ld [bc], a                                    ; $63cf: $02
    ld [bc], a                                    ; $63d0: $02
    inc b                                         ; $63d1: $04
    inc b                                         ; $63d2: $04
    ld bc, $30ef                                  ; $63d3: $01 $ef $30
    ld sp, $f304                                  ; $63d6: $31 $04 $f3
    inc [hl]                                      ; $63d9: $34
    dec [hl]                                      ; $63da: $35
    rlca                                          ; $63db: $07
    rst $30                                       ; $63dc: $f7
    scf                                           ; $63dd: $37
    jr c, jr_082_63ea                             ; $63de: $38 $0a

    ei                                            ; $63e0: $fb
    dec sp                                        ; $63e1: $3b
    inc a                                         ; $63e2: $3c
    inc b                                         ; $63e3: $04
    inc b                                         ; $63e4: $04
    inc b                                         ; $63e5: $04
    inc b                                         ; $63e6: $04
    inc b                                         ; $63e7: $04
    inc b                                         ; $63e8: $04
    inc b                                         ; $63e9: $04

jr_082_63ea:
    inc b                                         ; $63ea: $04
    inc b                                         ; $63eb: $04
    inc b                                         ; $63ec: $04
    inc b                                         ; $63ed: $04
    inc b                                         ; $63ee: $04
    inc b                                         ; $63ef: $04
    inc b                                         ; $63f0: $04
    inc b                                         ; $63f1: $04
    inc b                                         ; $63f2: $04
    ld d, d                                       ; $63f3: $52
    ld d, e                                       ; $63f4: $53
    ld d, h                                       ; $63f5: $54
    ld d, l                                       ; $63f6: $55
    jr nz, @+$22                                  ; $63f7: $20 $20

    daa                                           ; $63f9: $27
    ld h, $1c                                     ; $63fa: $26 $1c
    rra                                           ; $63fc: $1f
    ld e, $1d                                     ; $63fd: $1e $1d
    jr jr_082_641c                                ; $63ff: $18 $1b

    ld a, [de]                                    ; $6401: $1a
    add hl, de                                    ; $6402: $19
    inc b                                         ; $6403: $04
    inc b                                         ; $6404: $04
    inc b                                         ; $6405: $04
    inc b                                         ; $6406: $04
    inc bc                                        ; $6407: $03
    ld h, e                                       ; $6408: $63
    ld h, e                                       ; $6409: $63
    ld h, e                                       ; $640a: $63
    ld h, d                                       ; $640b: $62
    ld [bc], a                                    ; $640c: $02
    rlca                                          ; $640d: $07
    ld [bc], a                                    ; $640e: $02
    ld h, l                                       ; $640f: $65
    ld h, d                                       ; $6410: $62
    ld h, a                                       ; $6411: $67
    ld h, l                                       ; $6412: $65
    ld d, [hl]                                    ; $6413: $56
    ld [de], a                                    ; $6414: $12
    ld d, a                                       ; $6415: $57
    ld e, b                                       ; $6416: $58
    dec d                                         ; $6417: $15
    ld d, $17                                     ; $6418: $16 $17
    jr jr_082_6435                                ; $641a: $18 $19

jr_082_641c:
    ld a, [de]                                    ; $641c: $1a
    dec de                                        ; $641d: $1b
    inc e                                         ; $641e: $1c
    dec e                                         ; $641f: $1d
    ld e, $1f                                     ; $6420: $1e $1f
    jr nz, jr_082_6428                            ; $6422: $20 $04

    inc b                                         ; $6424: $04
    ld [bc], a                                    ; $6425: $02
    ld [bc], a                                    ; $6426: $02
    inc bc                                        ; $6427: $03

jr_082_6428:
    inc bc                                        ; $6428: $03
    inc bc                                        ; $6429: $03
    inc bc                                        ; $642a: $03
    ld [bc], a                                    ; $642b: $02
    ld [bc], a                                    ; $642c: $02
    rlca                                          ; $642d: $07
    ld [bc], a                                    ; $642e: $02
    ld h, l                                       ; $642f: $65
    ld h, d                                       ; $6430: $62
    ld h, d                                       ; $6431: $62
    ld h, a                                       ; $6432: $67
    ld e, c                                       ; $6433: $59
    ld e, d                                       ; $6434: $5a

jr_082_6435:
    ld [hl+], a                                   ; $6435: $22
    ld d, [hl]                                    ; $6436: $56
    inc h                                         ; $6437: $24
    dec h                                         ; $6438: $25
    ld h, $27                                     ; $6439: $26 $27
    jr z, jr_082_6466                             ; $643b: $28 $29

    add hl, hl                                    ; $643d: $29
    jr z, jr_082_6467                             ; $643e: $28 $27

    ld h, $25                                     ; $6440: $26 $25
    inc h                                         ; $6442: $24
    ld [bc], a                                    ; $6443: $02
    ld [bc], a                                    ; $6444: $02
    inc b                                         ; $6445: $04
    inc b                                         ; $6446: $04
    inc bc                                        ; $6447: $03
    inc bc                                        ; $6448: $03
    inc bc                                        ; $6449: $03
    inc bc                                        ; $644a: $03
    rlca                                          ; $644b: $07
    ld [bc], a                                    ; $644c: $02
    ld h, a                                       ; $644d: $67
    ld h, d                                       ; $644e: $62
    ld h, a                                       ; $644f: $67
    ld h, d                                       ; $6450: $62
    ld h, l                                       ; $6451: $65
    ld h, l                                       ; $6452: $65
    inc hl                                        ; $6453: $23
    ld de, $5352                                  ; $6454: $11 $52 $53
    jr nz, @+$22                                  ; $6457: $20 $20

    daa                                           ; $6459: $27
    ld h, $1c                                     ; $645a: $26 $1c
    rra                                           ; $645c: $1f
    ld e, $1d                                     ; $645d: $1e $1d
    jr jr_082_647c                                ; $645f: $18 $1b

    ld a, [de]                                    ; $6461: $1a
    add hl, de                                    ; $6462: $19
    inc b                                         ; $6463: $04
    inc b                                         ; $6464: $04
    inc b                                         ; $6465: $04

jr_082_6466:
    inc b                                         ; $6466: $04

jr_082_6467:
    inc bc                                        ; $6467: $03
    ld h, e                                       ; $6468: $63
    ld h, e                                       ; $6469: $63
    ld h, e                                       ; $646a: $63
    ld h, d                                       ; $646b: $62
    rlca                                          ; $646c: $07
    ld [bc], a                                    ; $646d: $02
    ld [bc], a                                    ; $646e: $02
    ld h, d                                       ; $646f: $62
    ld h, d                                       ; $6470: $62
    ld h, a                                       ; $6471: $67
    ld h, a                                       ; $6472: $67
    rla                                           ; $6473: $17
    rla                                           ; $6474: $17
    ld d, $15                                     ; $6475: $16 $15
    dec de                                        ; $6477: $1b
    jr @+$26                                      ; $6478: $18 $24

    dec h                                         ; $647a: $25
    rra                                           ; $647b: $1f

jr_082_647c:
    inc e                                         ; $647c: $1c
    jr z, jr_082_64a8                             ; $647d: $28 $29

    rla                                           ; $647f: $17
    jr jr_082_64a6                                ; $6480: $18 $24

    dec h                                         ; $6482: $25
    dec b                                         ; $6483: $05
    ld h, l                                       ; $6484: $65
    ld h, l                                       ; $6485: $65
    ld h, d                                       ; $6486: $62
    dec b                                         ; $6487: $05
    dec b                                         ; $6488: $05
    dec b                                         ; $6489: $05
    dec b                                         ; $648a: $05
    ld h, l                                       ; $648b: $65
    dec b                                         ; $648c: $05
    dec b                                         ; $648d: $05
    dec b                                         ; $648e: $05
    ld [bc], a                                    ; $648f: $02
    dec b                                         ; $6490: $05
    ld [bc], a                                    ; $6491: $02
    dec b                                         ; $6492: $05
    ld h, $27                                     ; $6493: $26 $27
    jr nz, jr_082_64b6                            ; $6495: $20 $1f

    add hl, hl                                    ; $6497: $29
    jr z, jr_082_64b6                             ; $6498: $28 $1c

    dec de                                        ; $649a: $1b
    dec h                                         ; $649b: $25
    inc h                                         ; $649c: $24
    jr jr_082_64b6                                ; $649d: $18 $17

    ld h, $27                                     ; $649f: $26 $27
    jr nz, @+$22                                  ; $64a1: $20 $20

    ld [bc], a                                    ; $64a3: $02
    ld [bc], a                                    ; $64a4: $02
    ld [bc], a                                    ; $64a5: $02

jr_082_64a6:
    rlca                                          ; $64a6: $07
    ld h, l                                       ; $64a7: $65

jr_082_64a8:
    ld h, d                                       ; $64a8: $62
    ld h, l                                       ; $64a9: $65
    ld h, a                                       ; $64aa: $67
    ld h, l                                       ; $64ab: $65
    ld h, a                                       ; $64ac: $67
    ld h, l                                       ; $64ad: $65
    ld h, l                                       ; $64ae: $65
    dec b                                         ; $64af: $05
    dec b                                         ; $64b0: $05
    ld [bc], a                                    ; $64b1: $02
    ld h, a                                       ; $64b2: $67
    ld e, $1d                                     ; $64b3: $1e $1d
    dec d                                         ; $64b5: $15

jr_082_64b6:
    ld d, $1a                                     ; $64b6: $16 $1a
    add hl, de                                    ; $64b8: $19
    add hl, de                                    ; $64b9: $19
    ld a, [de]                                    ; $64ba: $1a
    ld d, $15                                     ; $64bb: $16 $15
    dec e                                         ; $64bd: $1d
    ld e, $27                                     ; $64be: $1e $27
    ld h, $15                                     ; $64c0: $26 $15
    ld d, $02                                     ; $64c2: $16 $02
    rlca                                          ; $64c4: $07
    ld [bc], a                                    ; $64c5: $02
    ld [bc], a                                    ; $64c6: $02
    ld h, l                                       ; $64c7: $65
    ld h, d                                       ; $64c8: $62
    ld [bc], a                                    ; $64c9: $02
    rlca                                          ; $64ca: $07
    ld h, l                                       ; $64cb: $65
    ld h, d                                       ; $64cc: $62
    ld h, a                                       ; $64cd: $67
    ld h, a                                       ; $64ce: $67
    ld h, d                                       ; $64cf: $62
    ld h, l                                       ; $64d0: $65
    rlca                                          ; $64d1: $07
    rlca                                          ; $64d2: $07
    rla                                           ; $64d3: $17
    rla                                           ; $64d4: $17
    ld d, $15                                     ; $64d5: $16 $15
    dec de                                        ; $64d7: $1b
    jr @+$26                                      ; $64d8: $18 $24

    dec h                                         ; $64da: $25
    rra                                           ; $64db: $1f
    inc e                                         ; $64dc: $1c
    jr z, jr_082_6508                             ; $64dd: $28 $29

    rla                                           ; $64df: $17
    jr jr_082_6506                                ; $64e0: $18 $24

    dec h                                         ; $64e2: $25
    ld [bc], a                                    ; $64e3: $02
    ld h, l                                       ; $64e4: $65
    ld h, a                                       ; $64e5: $67
    ld h, a                                       ; $64e6: $67
    rlca                                          ; $64e7: $07
    rlca                                          ; $64e8: $07
    rlca                                          ; $64e9: $07
    rlca                                          ; $64ea: $07
    ld h, a                                       ; $64eb: $67
    rlca                                          ; $64ec: $07
    dec b                                         ; $64ed: $05
    rlca                                          ; $64ee: $07
    rlca                                          ; $64ef: $07
    dec b                                         ; $64f0: $05
    rlca                                          ; $64f1: $07
    dec b                                         ; $64f2: $05
    dec de                                        ; $64f3: $1b
    inc e                                         ; $64f4: $1c
    jr z, jr_082_6520                             ; $64f5: $28 $29

    rra                                           ; $64f7: $1f
    jr nz, jr_082_6521                            ; $64f8: $20 $27

    ld h, $20                                     ; $64fa: $26 $20
    rra                                           ; $64fc: $1f
    ld e, $1d                                     ; $64fd: $1e $1d
    inc e                                         ; $64ff: $1c
    dec de                                        ; $6500: $1b
    ld a, [de]                                    ; $6501: $1a
    add hl, de                                    ; $6502: $19
    ld [bc], a                                    ; $6503: $02
    dec b                                         ; $6504: $05
    dec b                                         ; $6505: $05

jr_082_6506:
    dec b                                         ; $6506: $05
    ld h, l                                       ; $6507: $65

jr_082_6508:
    ld h, l                                       ; $6508: $65
    ld h, l                                       ; $6509: $65
    ld h, l                                       ; $650a: $65
    dec b                                         ; $650b: $05
    dec b                                         ; $650c: $05
    dec b                                         ; $650d: $05
    ld [bc], a                                    ; $650e: $02
    ld h, d                                       ; $650f: $62
    ld h, d                                       ; $6510: $62
    ld h, d                                       ; $6511: $62
    ld h, l                                       ; $6512: $65
    add hl, hl                                    ; $6513: $29
    jr z, jr_082_6532                             ; $6514: $28 $1c

    rra                                           ; $6516: $1f
    dec h                                         ; $6517: $25
    inc h                                         ; $6518: $24
    jr jr_082_6536                                ; $6519: $18 $1b

    dec d                                         ; $651b: $15
    ld d, $17                                     ; $651c: $16 $17
    rla                                           ; $651e: $17
    add hl, de                                    ; $651f: $19

jr_082_6520:
    ld a, [de]                                    ; $6520: $1a

jr_082_6521:
    dec de                                        ; $6521: $1b
    jr jr_082_6589                                ; $6522: $18 $65

    ld h, l                                       ; $6524: $65
    ld h, a                                       ; $6525: $67
    ld [bc], a                                    ; $6526: $02
    ld h, l                                       ; $6527: $65
    ld h, l                                       ; $6528: $65
    ld h, l                                       ; $6529: $65
    ld h, l                                       ; $652a: $65
    dec b                                         ; $652b: $05
    dec b                                         ; $652c: $05
    dec b                                         ; $652d: $05
    ld h, l                                       ; $652e: $65
    dec b                                         ; $652f: $05
    dec b                                         ; $6530: $05
    ld [bc], a                                    ; $6531: $02

jr_082_6532:
    dec b                                         ; $6532: $05
    ld e, $1d                                     ; $6533: $1e $1d
    add hl, de                                    ; $6535: $19

jr_082_6536:
    ld a, [de]                                    ; $6536: $1a
    ld a, [de]                                    ; $6537: $1a
    add hl, de                                    ; $6538: $19
    dec e                                         ; $6539: $1d
    ld e, $16                                     ; $653a: $1e $16
    dec d                                         ; $653c: $15
    ld h, $27                                     ; $653d: $26 $27
    inc h                                         ; $653f: $24
    dec h                                         ; $6540: $25
    add hl, hl                                    ; $6541: $29
    jr z, jr_082_6546                             ; $6542: $28 $02

    dec b                                         ; $6544: $05
    dec b                                         ; $6545: $05

jr_082_6546:
    rlca                                          ; $6546: $07
    ld h, l                                       ; $6547: $65
    ld h, a                                       ; $6548: $67
    ld h, d                                       ; $6549: $62
    ld h, l                                       ; $654a: $65
    ld h, l                                       ; $654b: $65
    ld h, d                                       ; $654c: $62
    ld [bc], a                                    ; $654d: $02
    rlca                                          ; $654e: $07
    dec b                                         ; $654f: $05
    dec b                                         ; $6550: $05
    ld h, l                                       ; $6551: $65
    ld h, l                                       ; $6552: $65
    dec de                                        ; $6553: $1b
    inc e                                         ; $6554: $1c
    jr z, jr_082_6580                             ; $6555: $28 $29

    rra                                           ; $6557: $1f
    jr nz, jr_082_6581                            ; $6558: $20 $27

    ld h, $20                                     ; $655a: $26 $20
    rra                                           ; $655c: $1f
    ld e, $1d                                     ; $655d: $1e $1d
    inc e                                         ; $655f: $1c
    dec de                                        ; $6560: $1b
    ld a, [de]                                    ; $6561: $1a
    add hl, de                                    ; $6562: $19
    dec b                                         ; $6563: $05
    dec b                                         ; $6564: $05
    dec b                                         ; $6565: $05
    rlca                                          ; $6566: $07
    ld h, l                                       ; $6567: $65
    ld h, l                                       ; $6568: $65
    ld h, d                                       ; $6569: $62
    ld h, l                                       ; $656a: $65
    rlca                                          ; $656b: $07
    ld [bc], a                                    ; $656c: $02
    dec b                                         ; $656d: $05
    ld [bc], a                                    ; $656e: $02
    ld h, d                                       ; $656f: $62
    ld h, d                                       ; $6570: $62
    ld h, d                                       ; $6571: $62
    ld h, l                                       ; $6572: $65
    ld e, e                                       ; $6573: $5b
    ld e, h                                       ; $6574: $5c
    ld e, l                                       ; $6575: $5d
    ld e, [hl]                                    ; $6576: $5e
    ld e, a                                       ; $6577: $5f
    ld h, b                                       ; $6578: $60
    ld h, c                                       ; $6579: $61
    ld h, d                                       ; $657a: $62
    ld h, e                                       ; $657b: $63
    ld h, h                                       ; $657c: $64
    ld h, l                                       ; $657d: $65
    ld h, [hl]                                    ; $657e: $66
    ld h, a                                       ; $657f: $67

jr_082_6580:
    ld l, b                                       ; $6580: $68

jr_082_6581:
    ld l, c                                       ; $6581: $69
    ld l, d                                       ; $6582: $6a
    ld bc, $0101                                  ; $6583: $01 $01 $01
    ld bc, $0101                                  ; $6586: $01 $01 $01

jr_082_6589:
    ld bc, $0101                                  ; $6589: $01 $01 $01
    ld bc, $0101                                  ; $658c: $01 $01 $01
    ld bc, $0101                                  ; $658f: $01 $01 $01
    ld bc, $30ef                                  ; $6592: $01 $ef $30
    ld sp, $f332                                  ; $6595: $31 $32 $f3
    inc [hl]                                      ; $6598: $34
    dec [hl]                                      ; $6599: $35
    di                                            ; $659a: $f3
    rst $30                                       ; $659b: $f7
    scf                                           ; $659c: $37
    jr c, jr_082_65d8                             ; $659d: $38 $39

    ei                                            ; $659f: $fb
    dec sp                                        ; $65a0: $3b
    inc a                                         ; $65a1: $3c
    dec a                                         ; $65a2: $3d
    inc b                                         ; $65a3: $04
    inc b                                         ; $65a4: $04
    inc b                                         ; $65a5: $04
    inc b                                         ; $65a6: $04
    inc b                                         ; $65a7: $04
    inc b                                         ; $65a8: $04
    inc b                                         ; $65a9: $04
    inc b                                         ; $65aa: $04
    inc b                                         ; $65ab: $04
    inc b                                         ; $65ac: $04
    inc b                                         ; $65ad: $04
    inc b                                         ; $65ae: $04
    inc b                                         ; $65af: $04
    inc b                                         ; $65b0: $04
    inc b                                         ; $65b1: $04
    inc b                                         ; $65b2: $04
    xor $ed                                       ; $65b3: $ee $ed
    db $ed                                        ; $65b5: $ed
    db $ed                                        ; $65b6: $ed
    xor $ed                                       ; $65b7: $ee $ed
    db $ed                                        ; $65b9: $ed
    db $ed                                        ; $65ba: $ed
    xor $ed                                       ; $65bb: $ee $ed
    db $ed                                        ; $65bd: $ed
    db $ed                                        ; $65be: $ed
    xor $ed                                       ; $65bf: $ee $ed
    db $ed                                        ; $65c1: $ed
    db $ed                                        ; $65c2: $ed
    add b                                         ; $65c3: $80
    add b                                         ; $65c4: $80
    add b                                         ; $65c5: $80
    add b                                         ; $65c6: $80
    add b                                         ; $65c7: $80
    add b                                         ; $65c8: $80
    add b                                         ; $65c9: $80
    add b                                         ; $65ca: $80
    add b                                         ; $65cb: $80
    add b                                         ; $65cc: $80
    add b                                         ; $65cd: $80
    add b                                         ; $65ce: $80
    add b                                         ; $65cf: $80
    add b                                         ; $65d0: $80
    add b                                         ; $65d1: $80
    add b                                         ; $65d2: $80
    ld l, e                                       ; $65d3: $6b
    ld l, h                                       ; $65d4: $6c
    ld l, l                                       ; $65d5: $6d
    ld l, [hl]                                    ; $65d6: $6e
    dec d                                         ; $65d7: $15

jr_082_65d8:
    ld d, $17                                     ; $65d8: $16 $17
    jr @+$1b                                      ; $65da: $18 $19

    ld a, [de]                                    ; $65dc: $1a

Call_082_65dd:
    dec de                                        ; $65dd: $1b
    inc e                                         ; $65de: $1c
    dec e                                         ; $65df: $1d
    ld e, $1f                                     ; $65e0: $1e $1f
    jr nz, @+$03                                  ; $65e2: $20 $01

    ld bc, $0101                                  ; $65e4: $01 $01 $01
    inc bc                                        ; $65e7: $03
    inc bc                                        ; $65e8: $03
    inc bc                                        ; $65e9: $03
    inc bc                                        ; $65ea: $03
    rlca                                          ; $65eb: $07
    ld [bc], a                                    ; $65ec: $02
    ld [bc], a                                    ; $65ed: $02
    ld [bc], a                                    ; $65ee: $02
    ld h, d                                       ; $65ef: $62
    ld h, d                                       ; $65f0: $62
    ld h, a                                       ; $65f1: $67
    ld h, d                                       ; $65f2: $62
    ld de, $5352                                  ; $65f3: $11 $52 $53
    ld d, h                                       ; $65f6: $54
    inc h                                         ; $65f7: $24
    ld l, a                                       ; $65f8: $6f
    ld [hl], b                                    ; $65f9: $70
    daa                                           ; $65fa: $27
    jr z, jr_082_666e                             ; $65fb: $28 $71

    ld [hl], d                                    ; $65fd: $72
    jr z, jr_082_6627                             ; $65fe: $28 $27

    ld h, $25                                     ; $6600: $26 $25
    inc h                                         ; $6602: $24
    inc b                                         ; $6603: $04
    inc b                                         ; $6604: $04
    inc b                                         ; $6605: $04
    inc b                                         ; $6606: $04
    inc bc                                        ; $6607: $03
    inc b                                         ; $6608: $04
    inc b                                         ; $6609: $04
    inc bc                                        ; $660a: $03
    inc bc                                        ; $660b: $03
    inc b                                         ; $660c: $04
    inc b                                         ; $660d: $04
    ld h, e                                       ; $660e: $63
    ld h, a                                       ; $660f: $67
    ld h, e                                       ; $6610: $63
    ld h, e                                       ; $6611: $63
    ld h, e                                       ; $6612: $63
    ld h, $27                                     ; $6613: $26 $27
    jr nz, jr_082_6636                            ; $6615: $20 $1f

    add hl, hl                                    ; $6617: $29
    jr z, jr_082_6636                             ; $6618: $28 $1c

    dec de                                        ; $661a: $1b
    dec h                                         ; $661b: $25
    inc h                                         ; $661c: $24
    jr jr_082_6636                                ; $661d: $18 $17

    ld h, $27                                     ; $661f: $26 $27
    jr nz, @+$22                                  ; $6621: $20 $20

    dec b                                         ; $6623: $05
    ld [bc], a                                    ; $6624: $02
    dec b                                         ; $6625: $05
    dec b                                         ; $6626: $05

jr_082_6627:
    ld h, a                                       ; $6627: $67
    ld h, d                                       ; $6628: $62
    ld h, l                                       ; $6629: $65
    ld h, d                                       ; $662a: $62
    ld h, d                                       ; $662b: $62
    ld h, l                                       ; $662c: $65
    ld h, l                                       ; $662d: $65
    ld h, a                                       ; $662e: $67
    ld [bc], a                                    ; $662f: $02
    dec b                                         ; $6630: $05
    dec b                                         ; $6631: $05
    ld h, a                                       ; $6632: $67
    ld e, $1d                                     ; $6633: $1e $1d
    dec d                                         ; $6635: $15

jr_082_6636:
    ld d, $1a                                     ; $6636: $16 $1a
    add hl, de                                    ; $6638: $19
    add hl, de                                    ; $6639: $19
    ld a, [de]                                    ; $663a: $1a
    ld d, $15                                     ; $663b: $16 $15
    dec e                                         ; $663d: $1d
    ld e, $27                                     ; $663e: $1e $27
    ld h, $15                                     ; $6640: $26 $15
    ld d, $02                                     ; $6642: $16 $02
    ld [bc], a                                    ; $6644: $02
    ld [bc], a                                    ; $6645: $02
    inc bc                                        ; $6646: $03
    ld h, d                                       ; $6647: $62
    ld h, a                                       ; $6648: $67
    ld [bc], a                                    ; $6649: $02
    inc bc                                        ; $664a: $03
    ld h, a                                       ; $664b: $67
    ld h, d                                       ; $664c: $62
    ld h, d                                       ; $664d: $62
    ld h, e                                       ; $664e: $63
    ld h, d                                       ; $664f: $62
    ld h, a                                       ; $6650: $67
    ld [bc], a                                    ; $6651: $02
    inc bc                                        ; $6652: $03
    add hl, hl                                    ; $6653: $29
    jr z, jr_082_6672                             ; $6654: $28 $1c

    rra                                           ; $6656: $1f
    dec h                                         ; $6657: $25
    inc h                                         ; $6658: $24
    jr jr_082_6676                                ; $6659: $18 $1b

    dec d                                         ; $665b: $15
    ld d, $17                                     ; $665c: $16 $17
    rla                                           ; $665e: $17
    add hl, de                                    ; $665f: $19
    ld a, [de]                                    ; $6660: $1a
    dec de                                        ; $6661: $1b
    jr jr_082_66cb                                ; $6662: $18 $67

    ld h, l                                       ; $6664: $65

Call_082_6665:
    ld h, d                                       ; $6665: $62
    rlca                                          ; $6666: $07
    ld h, l                                       ; $6667: $65
    ld h, d                                       ; $6668: $62
    ld h, l                                       ; $6669: $65
    ld h, l                                       ; $666a: $65
    dec b                                         ; $666b: $05
    ld [bc], a                                    ; $666c: $02
    ld [bc], a                                    ; $666d: $02

jr_082_666e:
    ld h, d                                       ; $666e: $62
    dec b                                         ; $666f: $05
    dec b                                         ; $6670: $05
    dec b                                         ; $6671: $05

jr_082_6672:
    ld [bc], a                                    ; $6672: $02
    ld e, $1d                                     ; $6673: $1e $1d
    add hl, de                                    ; $6675: $19

jr_082_6676:
    ld a, [de]                                    ; $6676: $1a
    ld a, [de]                                    ; $6677: $1a
    add hl, de                                    ; $6678: $19
    dec e                                         ; $6679: $1d
    ld e, $16                                     ; $667a: $1e $16
    dec d                                         ; $667c: $15
    ld h, $27                                     ; $667d: $26 $27
    inc h                                         ; $667f: $24
    dec h                                         ; $6680: $25
    add hl, hl                                    ; $6681: $29
    jr z, jr_082_6689                             ; $6682: $28 $05

    dec b                                         ; $6684: $05
    ld [bc], a                                    ; $6685: $02
    inc bc                                        ; $6686: $03
    ld h, d                                       ; $6687: $62
    ld h, d                                       ; $6688: $62

jr_082_6689:
    ld h, d                                       ; $6689: $62
    ld h, e                                       ; $668a: $63
    ld h, d                                       ; $668b: $62
    ld h, d                                       ; $668c: $62
    ld [bc], a                                    ; $668d: $02
    inc bc                                        ; $668e: $03
    ld [bc], a                                    ; $668f: $02
    rlca                                          ; $6690: $07
    ld h, d                                       ; $6691: $62
    ld h, e                                       ; $6692: $63
    dec e                                         ; $6693: $1d
    ld e, $1f                                     ; $6694: $1e $1f
    inc e                                         ; $6696: $1c
    dec d                                         ; $6697: $15
    ld d, $17                                     ; $6698: $16 $17
    jr jr_082_66b5                                ; $669a: $18 $19

    ld a, [de]                                    ; $669c: $1a
    dec de                                        ; $669d: $1b
    inc e                                         ; $669e: $1c
    dec e                                         ; $669f: $1d
    ld e, $1f                                     ; $66a0: $1e $1f
    jr nz, jr_082_6707                            ; $66a2: $20 $63

    ld h, d                                       ; $66a4: $62
    ld h, d                                       ; $66a5: $62
    rlca                                          ; $66a6: $07
    inc bc                                        ; $66a7: $03
    ld [bc], a                                    ; $66a8: $02
    dec b                                         ; $66a9: $05
    ld [bc], a                                    ; $66aa: $02
    inc bc                                        ; $66ab: $03
    rlca                                          ; $66ac: $07
    ld [bc], a                                    ; $66ad: $02
    ld [bc], a                                    ; $66ae: $02
    ld h, e                                       ; $66af: $63
    ld h, d                                       ; $66b0: $62
    ld h, l                                       ; $66b1: $65
    ld h, l                                       ; $66b2: $65
    jr z, jr_082_66de                             ; $66b3: $28 $29

jr_082_66b5:
    dec h                                         ; $66b5: $25
    inc h                                         ; $66b6: $24
    inc h                                         ; $66b7: $24
    dec h                                         ; $66b8: $25
    ld h, $27                                     ; $66b9: $26 $27
    jr z, jr_082_66e6                             ; $66bb: $28 $29

    add hl, hl                                    ; $66bd: $29
    jr z, jr_082_66e7                             ; $66be: $28 $27

    ld h, $25                                     ; $66c0: $26 $25
    inc h                                         ; $66c2: $24
    ld [bc], a                                    ; $66c3: $02
    dec b                                         ; $66c4: $05
    ld h, d                                       ; $66c5: $62
    ld h, d                                       ; $66c6: $62
    rlca                                          ; $66c7: $07
    rlca                                          ; $66c8: $07
    rlca                                          ; $66c9: $07
    ld [bc], a                                    ; $66ca: $02

jr_082_66cb:
    rlca                                          ; $66cb: $07
    rlca                                          ; $66cc: $07
    ld h, a                                       ; $66cd: $67
    ld h, a                                       ; $66ce: $67
    ld h, l                                       ; $66cf: $65
    ld h, a                                       ; $66d0: $67
    ld h, a                                       ; $66d1: $67
    ld h, a                                       ; $66d2: $67
    db $ed                                        ; $66d3: $ed
    db $ed                                        ; $66d4: $ed
    db $ed                                        ; $66d5: $ed
    xor $ed                                       ; $66d6: $ee $ed
    db $ed                                        ; $66d8: $ed
    db $ed                                        ; $66d9: $ed
    ld [hl], e                                    ; $66da: $73
    db $ed                                        ; $66db: $ed
    db $ed                                        ; $66dc: $ed
    db $ed                                        ; $66dd: $ed

jr_082_66de:
    xor $ed                                       ; $66de: $ee $ed
    db $ed                                        ; $66e0: $ed
    db $ed                                        ; $66e1: $ed
    xor $80                                       ; $66e2: $ee $80
    add b                                         ; $66e4: $80
    add b                                         ; $66e5: $80

jr_082_66e6:
    add b                                         ; $66e6: $80

jr_082_66e7:
    add b                                         ; $66e7: $80
    add b                                         ; $66e8: $80
    add b                                         ; $66e9: $80
    add b                                         ; $66ea: $80
    add b                                         ; $66eb: $80
    add b                                         ; $66ec: $80
    add b                                         ; $66ed: $80
    add b                                         ; $66ee: $80
    add b                                         ; $66ef: $80
    add b                                         ; $66f0: $80
    add b                                         ; $66f1: $80
    add b                                         ; $66f2: $80
    ld h, $27                                     ; $66f3: $26 $27
    jr nz, jr_082_6716                            ; $66f5: $20 $1f

    inc c                                         ; $66f7: $0c
    inc c                                         ; $66f8: $0c
    inc c                                         ; $66f9: $0c
    inc c                                         ; $66fa: $0c
    db $ed                                        ; $66fb: $ed
    db $ed                                        ; $66fc: $ed
    db $ed                                        ; $66fd: $ed
    db $ed                                        ; $66fe: $ed
    ld [hl], h                                    ; $66ff: $74
    ld [hl], l                                    ; $6700: $75
    halt                                          ; $6701: $76
    ld [hl], a                                    ; $6702: $77
    inc bc                                        ; $6703: $03
    ld [bc], a                                    ; $6704: $02
    ld [bc], a                                    ; $6705: $02
    dec b                                         ; $6706: $05

jr_082_6707:
    add b                                         ; $6707: $80
    add b                                         ; $6708: $80
    add b                                         ; $6709: $80
    add b                                         ; $670a: $80
    add c                                         ; $670b: $81
    add c                                         ; $670c: $81
    add c                                         ; $670d: $81
    add c                                         ; $670e: $81
    ld bc, $0101                                  ; $670f: $01 $01 $01
    ld bc, $1d1e                                  ; $6712: $01 $1e $1d
    dec d                                         ; $6715: $15

jr_082_6716:
    ld d, $0c                                     ; $6716: $16 $0c
    ld a, b                                       ; $6718: $78
    add hl, de                                    ; $6719: $19
    ld a, [de]                                    ; $671a: $1a
    db $ed                                        ; $671b: $ed
    db $ed                                        ; $671c: $ed
    dec e                                         ; $671d: $1d
    ld e, $79                                     ; $671e: $1e $79
    ld a, d                                       ; $6720: $7a
    dec d                                         ; $6721: $15
    ld d, $05                                     ; $6722: $16 $05
    dec b                                         ; $6724: $05
    ld [bc], a                                    ; $6725: $02
    rlca                                          ; $6726: $07
    add b                                         ; $6727: $80
    add b                                         ; $6728: $80
    ld [bc], a                                    ; $6729: $02
    ld [bc], a                                    ; $672a: $02
    add c                                         ; $672b: $81
    add c                                         ; $672c: $81
    ld h, d                                       ; $672d: $62
    ld h, d                                       ; $672e: $62
    ld bc, $0301                                  ; $672f: $01 $01 $03
    ld [bc], a                                    ; $6732: $02
    ld a, c                                       ; $6733: $79
    halt                                          ; $6734: $76
    ld [hl], a                                    ; $6735: $77
    ld a, c                                       ; $6736: $79
    ld [hl], a                                    ; $6737: $77
    ld [hl], l                                    ; $6738: $75
    halt                                          ; $6739: $76
    ld [hl], a                                    ; $673a: $77
    ld a, c                                       ; $673b: $79
    halt                                          ; $673c: $76
    ld [hl], a                                    ; $673d: $77
    ld a, c                                       ; $673e: $79
    ld a, c                                       ; $673f: $79
    halt                                          ; $6740: $76
    ld [hl], a                                    ; $6741: $77
    ld a, c                                       ; $6742: $79
    ld bc, $0101                                  ; $6743: $01 $01 $01
    ld bc, $0101                                  ; $6746: $01 $01 $01
    ld bc, $0101                                  ; $6749: $01 $01 $01
    ld bc, $0101                                  ; $674c: $01 $01 $01
    ld bc, $0101                                  ; $674f: $01 $01 $01
    ld bc, $7a74                                  ; $6752: $01 $74 $7a
    add hl, de                                    ; $6755: $19
    ld a, [de]                                    ; $6756: $1a
    ld a, c                                       ; $6757: $79
    ld a, d                                       ; $6758: $7a
    dec e                                         ; $6759: $1d
    ld e, $74                                     ; $675a: $1e $74
    ld a, d                                       ; $675c: $7a
    ld h, $27                                     ; $675d: $26 $27
    ld [hl], h                                    ; $675f: $74
    ld a, d                                       ; $6760: $7a
    add hl, hl                                    ; $6761: $29
    jr z, @+$03                                   ; $6762: $28 $01

    ld bc, $0203                                  ; $6764: $01 $03 $02
    ld bc, $6301                                  ; $6767: $01 $01 $63
    ld h, d                                       ; $676a: $62
    ld bc, $0301                                  ; $676b: $01 $01 $03
    ld [bc], a                                    ; $676e: $02
    ld bc, $6301                                  ; $676f: $01 $01 $63
    ld h, d                                       ; $6772: $62
    ld [hl], a                                    ; $6773: $77
    ld [hl], l                                    ; $6774: $75
    halt                                          ; $6775: $76
    ld [hl], a                                    ; $6776: $77
    ld a, c                                       ; $6777: $79
    halt                                          ; $6778: $76
    ld [hl], a                                    ; $6779: $77
    ld a, c                                       ; $677a: $79
    ld a, e                                       ; $677b: $7b
    ld a, h                                       ; $677c: $7c
    ld a, l                                       ; $677d: $7d
    ld a, [hl]                                    ; $677e: $7e
    ld a, a                                       ; $677f: $7f
    add b                                         ; $6780: $80
    add c                                         ; $6781: $81
    add d                                         ; $6782: $82
    ld bc, $0101                                  ; $6783: $01 $01 $01
    ld bc, $0101                                  ; $6786: $01 $01 $01
    ld bc, $0101                                  ; $6789: $01 $01 $01
    ld bc, $0101                                  ; $678c: $01 $01 $01
    ld bc, $0909                                  ; $678f: $01 $09 $09
    add hl, bc                                    ; $6792: $09
    ld a, c                                       ; $6793: $79
    ld a, d                                       ; $6794: $7a
    dec h                                         ; $6795: $25
    inc h                                         ; $6796: $24
    ld [hl], h                                    ; $6797: $74
    ld a, d                                       ; $6798: $7a
    ld h, $27                                     ; $6799: $26 $27
    add e                                         ; $679b: $83
    add h                                         ; $679c: $84
    add l                                         ; $679d: $85
    add l                                         ; $679e: $85
    add [hl]                                      ; $679f: $86
    add a                                         ; $67a0: $87
    adc b                                         ; $67a1: $88
    adc c                                         ; $67a2: $89
    ld bc, $6301                                  ; $67a3: $01 $01 $63
    ld h, d                                       ; $67a6: $62
    ld bc, $0301                                  ; $67a7: $01 $01 $03
    ld [bc], a                                    ; $67aa: $02
    add hl, bc                                    ; $67ab: $09
    add hl, bc                                    ; $67ac: $09
    add hl, bc                                    ; $67ad: $09
    add hl, bc                                    ; $67ae: $09
    add hl, bc                                    ; $67af: $09
    add hl, bc                                    ; $67b0: $09
    add hl, bc                                    ; $67b1: $09
    add hl, bc                                    ; $67b2: $09
    jr jr_082_67cc                                ; $67b3: $18 $17

    ld d, $15                                     ; $67b5: $16 $15
    jr nz, @+$22                                  ; $67b7: $20 $20

    daa                                           ; $67b9: $27
    ld h, $1c                                     ; $67ba: $26 $1c
    rra                                           ; $67bc: $1f
    ld e, $1d                                     ; $67bd: $1e $1d
    jr jr_082_67dc                                ; $67bf: $18 $1b

    ld a, [de]                                    ; $67c1: $1a
    add hl, de                                    ; $67c2: $19
    ld h, a                                       ; $67c3: $67
    ld h, a                                       ; $67c4: $67
    ld h, d                                       ; $67c5: $62
    ld h, l                                       ; $67c6: $65
    rlca                                          ; $67c7: $07
    ld h, a                                       ; $67c8: $67
    ld h, l                                       ; $67c9: $65
    ld h, d                                       ; $67ca: $62
    ld h, a                                       ; $67cb: $67

jr_082_67cc:
    rlca                                          ; $67cc: $07
    rlca                                          ; $67cd: $07
    ld [bc], a                                    ; $67ce: $02
    ld h, a                                       ; $67cf: $67
    ld h, a                                       ; $67d0: $67
    ld h, a                                       ; $67d1: $67
    ld h, a                                       ; $67d2: $67
    dec e                                         ; $67d3: $1d
    ld e, $1f                                     ; $67d4: $1e $1f
    inc e                                         ; $67d6: $1c
    dec d                                         ; $67d7: $15
    ld d, $17                                     ; $67d8: $16 $17
    jr jr_082_67f5                                ; $67da: $18 $19

jr_082_67dc:
    ld a, [de]                                    ; $67dc: $1a
    dec de                                        ; $67dd: $1b
    inc e                                         ; $67de: $1c
    dec e                                         ; $67df: $1d
    ld e, $1f                                     ; $67e0: $1e $1f
    jr nz, jr_082_6849                            ; $67e2: $20 $65

    ld h, l                                       ; $67e4: $65
    ld h, l                                       ; $67e5: $65
    dec b                                         ; $67e6: $05
    ld [bc], a                                    ; $67e7: $02
    ld [bc], a                                    ; $67e8: $02
    dec b                                         ; $67e9: $05
    dec b                                         ; $67ea: $05
    ld [bc], a                                    ; $67eb: $02
    ld [bc], a                                    ; $67ec: $02
    dec b                                         ; $67ed: $05
    dec b                                         ; $67ee: $05
    ld h, l                                       ; $67ef: $65
    ld h, l                                       ; $67f0: $65
    ld h, l                                       ; $67f1: $65
    ld h, l                                       ; $67f2: $65
    jr z, @+$2b                                   ; $67f3: $28 $29

jr_082_67f5:
    dec h                                         ; $67f5: $25
    inc h                                         ; $67f6: $24
    inc h                                         ; $67f7: $24
    dec h                                         ; $67f8: $25
    ld h, $27                                     ; $67f9: $26 $27
    jr z, jr_082_6826                             ; $67fb: $28 $29

    add hl, hl                                    ; $67fd: $29
    jr z, jr_082_6827                             ; $67fe: $28 $27

    ld h, $25                                     ; $6800: $26 $25
    inc h                                         ; $6802: $24
    dec b                                         ; $6803: $05
    dec b                                         ; $6804: $05
    ld h, l                                       ; $6805: $65
    ld h, l                                       ; $6806: $65
    dec b                                         ; $6807: $05
    ld [bc], a                                    ; $6808: $02
    ld [bc], a                                    ; $6809: $02
    dec b                                         ; $680a: $05
    dec b                                         ; $680b: $05
    ld [bc], a                                    ; $680c: $02
    ld h, d                                       ; $680d: $62
    ld h, l                                       ; $680e: $65
    ld h, d                                       ; $680f: $62
    ld h, d                                       ; $6810: $62
    ld h, l                                       ; $6811: $65
    ld h, d                                       ; $6812: $62
    jr jr_082_682c                                ; $6813: $18 $17

    ld d, $15                                     ; $6815: $16 $15
    jr nz, @+$22                                  ; $6817: $20 $20

    daa                                           ; $6819: $27
    ld h, $1c                                     ; $681a: $26 $1c
    rra                                           ; $681c: $1f
    ld e, $1d                                     ; $681d: $1e $1d
    jr jr_082_683c                                ; $681f: $18 $1b

    ld a, [de]                                    ; $6821: $1a
    add hl, de                                    ; $6822: $19
    ld h, d                                       ; $6823: $62
    ld h, d                                       ; $6824: $62
    ld h, l                                       ; $6825: $65

jr_082_6826:
    ld h, d                                       ; $6826: $62

jr_082_6827:
    dec b                                         ; $6827: $05
    ld h, l                                       ; $6828: $65
    ld h, l                                       ; $6829: $65
    ld h, l                                       ; $682a: $65
    ld h, l                                       ; $682b: $65

jr_082_682c:
    dec b                                         ; $682c: $05
    dec b                                         ; $682d: $05
    dec b                                         ; $682e: $05
    ld h, l                                       ; $682f: $65
    ld h, l                                       ; $6830: $65
    ld h, l                                       ; $6831: $65
    ld h, l                                       ; $6832: $65
    rla                                           ; $6833: $17
    rla                                           ; $6834: $17
    ld d, $15                                     ; $6835: $16 $15
    dec de                                        ; $6837: $1b
    jr @+$26                                      ; $6838: $18 $24

    dec h                                         ; $683a: $25
    rra                                           ; $683b: $1f

jr_082_683c:
    inc e                                         ; $683c: $1c
    jr z, jr_082_6868                             ; $683d: $28 $29

    rla                                           ; $683f: $17
    jr jr_082_6866                                ; $6840: $18 $24

    dec h                                         ; $6842: $25
    rlca                                          ; $6843: $07
    ld h, a                                       ; $6844: $67
    ld h, a                                       ; $6845: $67
    ld h, l                                       ; $6846: $65
    ld [bc], a                                    ; $6847: $02
    dec b                                         ; $6848: $05

jr_082_6849:
    ld [bc], a                                    ; $6849: $02
    rlca                                          ; $684a: $07
    ld h, l                                       ; $684b: $65
    ld [bc], a                                    ; $684c: $02
    ld [bc], a                                    ; $684d: $02
    ld [bc], a                                    ; $684e: $02
    dec b                                         ; $684f: $05
    dec b                                         ; $6850: $05
    ld [bc], a                                    ; $6851: $02
    dec b                                         ; $6852: $05
    ld h, $27                                     ; $6853: $26 $27
    jr nz, jr_082_6876                            ; $6855: $20 $1f

    add hl, hl                                    ; $6857: $29
    jr z, jr_082_6876                             ; $6858: $28 $1c

    dec de                                        ; $685a: $1b
    dec h                                         ; $685b: $25
    inc h                                         ; $685c: $24
    jr jr_082_6876                                ; $685d: $18 $17

    ld h, $27                                     ; $685f: $26 $27
    jr nz, @+$22                                  ; $6861: $20 $20

    rlca                                          ; $6863: $07
    dec b                                         ; $6864: $05
    ld [bc], a                                    ; $6865: $02

jr_082_6866:
    ld [bc], a                                    ; $6866: $02
    ld h, a                                       ; $6867: $67

jr_082_6868:
    ld h, a                                       ; $6868: $67
    ld h, l                                       ; $6869: $65
    ld h, l                                       ; $686a: $65
    ld h, d                                       ; $686b: $62
    ld h, d                                       ; $686c: $62
    ld h, a                                       ; $686d: $67
    ld h, l                                       ; $686e: $65
    dec b                                         ; $686f: $05
    dec b                                         ; $6870: $05
    ld [bc], a                                    ; $6871: $02
    ld h, d                                       ; $6872: $62
    ld e, $1d                                     ; $6873: $1e $1d
    dec d                                         ; $6875: $15

jr_082_6876:
    ld d, $1a                                     ; $6876: $16 $1a
    add hl, de                                    ; $6878: $19
    add hl, de                                    ; $6879: $19
    ld a, [de]                                    ; $687a: $1a
    ld d, $15                                     ; $687b: $16 $15
    dec e                                         ; $687d: $1d
    ld e, $27                                     ; $687e: $1e $27
    ld h, $15                                     ; $6880: $26 $15
    ld d, $05                                     ; $6882: $16 $05
    dec b                                         ; $6884: $05
    ld [bc], a                                    ; $6885: $02
    dec b                                         ; $6886: $05
    ld h, l                                       ; $6887: $65
    ld h, d                                       ; $6888: $62
    rlca                                          ; $6889: $07
    dec b                                         ; $688a: $05
    ld h, l                                       ; $688b: $65
    ld h, l                                       ; $688c: $65
    ld h, d                                       ; $688d: $62
    ld h, a                                       ; $688e: $67
    ld h, d                                       ; $688f: $62
    ld h, l                                       ; $6890: $65
    dec b                                         ; $6891: $05
    rlca                                          ; $6892: $07
    rla                                           ; $6893: $17
    rla                                           ; $6894: $17
    ld d, $15                                     ; $6895: $16 $15
    dec de                                        ; $6897: $1b
    jr @+$26                                      ; $6898: $18 $24

    dec h                                         ; $689a: $25
    rra                                           ; $689b: $1f
    inc e                                         ; $689c: $1c
    jr z, jr_082_68c8                             ; $689d: $28 $29

    rla                                           ; $689f: $17
    jr jr_082_68c6                                ; $68a0: $18 $24

    dec h                                         ; $68a2: $25
    dec b                                         ; $68a3: $05
    ld h, a                                       ; $68a4: $67
    ld h, a                                       ; $68a5: $67
    ld h, a                                       ; $68a6: $67
    rlca                                          ; $68a7: $07
    rlca                                          ; $68a8: $07
    rlca                                          ; $68a9: $07
    dec b                                         ; $68aa: $05
    ld h, a                                       ; $68ab: $67
    rlca                                          ; $68ac: $07
    rlca                                          ; $68ad: $07
    rlca                                          ; $68ae: $07
    rlca                                          ; $68af: $07
    rlca                                          ; $68b0: $07
    rlca                                          ; $68b1: $07
    dec b                                         ; $68b2: $05
    dec de                                        ; $68b3: $1b
    inc e                                         ; $68b4: $1c
    jr z, jr_082_68e0                             ; $68b5: $28 $29

    rra                                           ; $68b7: $1f
    jr nz, jr_082_68e1                            ; $68b8: $20 $27

    ld h, $20                                     ; $68ba: $26 $20
    rra                                           ; $68bc: $1f
    ld e, $1d                                     ; $68bd: $1e $1d
    inc e                                         ; $68bf: $1c
    dec de                                        ; $68c0: $1b
    ld a, [de]                                    ; $68c1: $1a
    add hl, de                                    ; $68c2: $19
    ld [bc], a                                    ; $68c3: $02
    dec b                                         ; $68c4: $05
    dec b                                         ; $68c5: $05

jr_082_68c6:
    dec b                                         ; $68c6: $05
    ld h, l                                       ; $68c7: $65

jr_082_68c8:
    ld h, l                                       ; $68c8: $65
    ld h, l                                       ; $68c9: $65
    ld h, l                                       ; $68ca: $65
    dec b                                         ; $68cb: $05
    dec b                                         ; $68cc: $05
    dec b                                         ; $68cd: $05
    dec b                                         ; $68ce: $05
    ld h, l                                       ; $68cf: $65
    ld h, l                                       ; $68d0: $65
    ld h, l                                       ; $68d1: $65
    ld h, l                                       ; $68d2: $65
    add hl, hl                                    ; $68d3: $29
    jr z, jr_082_68f2                             ; $68d4: $28 $1c

    rra                                           ; $68d6: $1f
    dec h                                         ; $68d7: $25
    inc h                                         ; $68d8: $24
    jr jr_082_68f6                                ; $68d9: $18 $1b

    dec d                                         ; $68db: $15
    ld d, $17                                     ; $68dc: $16 $17
    rla                                           ; $68de: $17
    add hl, de                                    ; $68df: $19

jr_082_68e0:
    ld a, [de]                                    ; $68e0: $1a

jr_082_68e1:
    dec de                                        ; $68e1: $1b
    jr jr_082_6949                                ; $68e2: $18 $65

    ld h, l                                       ; $68e4: $65
    ld h, l                                       ; $68e5: $65
    ld [bc], a                                    ; $68e6: $02
    ld h, l                                       ; $68e7: $65
    ld h, d                                       ; $68e8: $62
    ld h, l                                       ; $68e9: $65
    ld h, l                                       ; $68ea: $65
    dec b                                         ; $68eb: $05
    ld [bc], a                                    ; $68ec: $02
    dec b                                         ; $68ed: $05
    ld h, l                                       ; $68ee: $65
    dec b                                         ; $68ef: $05
    dec b                                         ; $68f0: $05
    dec b                                         ; $68f1: $05

jr_082_68f2:
    dec b                                         ; $68f2: $05
    ld e, $1d                                     ; $68f3: $1e $1d
    add hl, de                                    ; $68f5: $19

jr_082_68f6:
    ld a, [de]                                    ; $68f6: $1a
    ld a, [de]                                    ; $68f7: $1a
    add hl, de                                    ; $68f8: $19
    dec e                                         ; $68f9: $1d
    ld e, $16                                     ; $68fa: $1e $16
    dec d                                         ; $68fc: $15
    ld h, $27                                     ; $68fd: $26 $27
    inc h                                         ; $68ff: $24
    dec h                                         ; $6900: $25
    add hl, hl                                    ; $6901: $29
    jr z, jr_082_6906                             ; $6902: $28 $02

    ld [bc], a                                    ; $6904: $02
    ld [bc], a                                    ; $6905: $02

jr_082_6906:
    ld [bc], a                                    ; $6906: $02
    ld h, l                                       ; $6907: $65
    ld h, l                                       ; $6908: $65
    ld h, d                                       ; $6909: $62
    ld h, e                                       ; $690a: $63
    ld h, l                                       ; $690b: $65
    ld h, l                                       ; $690c: $65
    ld [bc], a                                    ; $690d: $02
    inc bc                                        ; $690e: $03
    dec b                                         ; $690f: $05
    ld [bc], a                                    ; $6910: $02
    ld h, l                                       ; $6911: $65
    ld h, e                                       ; $6912: $63
    adc d                                         ; $6913: $8a
    adc e                                         ; $6914: $8b
    jr z, jr_082_6940                             ; $6915: $28 $29

    adc h                                         ; $6917: $8c
    adc l                                         ; $6918: $8d
    daa                                           ; $6919: $27
    ld h, $8e                                     ; $691a: $26 $8e
    adc a                                         ; $691c: $8f
    ld e, $1d                                     ; $691d: $1e $1d
    sub b                                         ; $691f: $90
    sub c                                         ; $6920: $91
    ld a, [de]                                    ; $6921: $1a
    add hl, de                                    ; $6922: $19
    inc c                                         ; $6923: $0c
    inc c                                         ; $6924: $0c
    ld [bc], a                                    ; $6925: $02
    ld [bc], a                                    ; $6926: $02
    inc c                                         ; $6927: $0c
    inc c                                         ; $6928: $0c
    ld h, d                                       ; $6929: $62
    ld h, l                                       ; $692a: $65
    inc c                                         ; $692b: $0c
    inc c                                         ; $692c: $0c
    ld [bc], a                                    ; $692d: $02
    dec b                                         ; $692e: $05
    inc c                                         ; $692f: $0c
    inc c                                         ; $6930: $0c
    ld h, d                                       ; $6931: $62
    ld h, d                                       ; $6932: $62
    jr jr_082_694c                                ; $6933: $18 $17

    ld d, $15                                     ; $6935: $16 $15
    jr nz, @+$22                                  ; $6937: $20 $20

    daa                                           ; $6939: $27
    ld h, $85                                     ; $693a: $26 $85
    add l                                         ; $693c: $85
    sub d                                         ; $693d: $92
    dec e                                         ; $693e: $1d
    sub e                                         ; $693f: $93

jr_082_6940:
    sub h                                         ; $6940: $94
    sub l                                         ; $6941: $95
    add hl, de                                    ; $6942: $19
    ld h, d                                       ; $6943: $62
    ld h, l                                       ; $6944: $65
    ld h, l                                       ; $6945: $65
    ld h, l                                       ; $6946: $65
    ld [bc], a                                    ; $6947: $02
    ld h, d                                       ; $6948: $62

jr_082_6949:
    ld h, d                                       ; $6949: $62
    ld h, l                                       ; $694a: $65
    add hl, bc                                    ; $694b: $09

jr_082_694c:
    add hl, bc                                    ; $694c: $09
    add hl, bc                                    ; $694d: $09
    ld [bc], a                                    ; $694e: $02
    add hl, bc                                    ; $694f: $09
    add hl, bc                                    ; $6950: $09
    add hl, bc                                    ; $6951: $09
    ld h, e                                       ; $6952: $63
    dec e                                         ; $6953: $1d
    ld e, $1f                                     ; $6954: $1e $1f
    inc e                                         ; $6956: $1c
    dec d                                         ; $6957: $15
    ld d, $17                                     ; $6958: $16 $17
    jr jr_082_6975                                ; $695a: $18 $19

    ld a, [de]                                    ; $695c: $1a
    dec de                                        ; $695d: $1b
    inc e                                         ; $695e: $1c
    dec e                                         ; $695f: $1d
    ld e, $1f                                     ; $6960: $1e $1f
    jr nz, jr_082_69c9                            ; $6962: $20 $65

    ld h, l                                       ; $6964: $65
    ld h, l                                       ; $6965: $65
    ld [bc], a                                    ; $6966: $02
    dec b                                         ; $6967: $05
    dec b                                         ; $6968: $05
    dec b                                         ; $6969: $05
    dec b                                         ; $696a: $05
    ld [bc], a                                    ; $696b: $02
    ld [bc], a                                    ; $696c: $02
    dec b                                         ; $696d: $05
    dec b                                         ; $696e: $05
    ld h, l                                       ; $696f: $65
    ld h, l                                       ; $6970: $65
    ld h, d                                       ; $6971: $62
    ld h, d                                       ; $6972: $62

jr_082_6973:
    jr z, @+$2b                                   ; $6973: $28 $29

jr_082_6975:
    dec h                                         ; $6975: $25
    inc h                                         ; $6976: $24
    inc h                                         ; $6977: $24
    dec h                                         ; $6978: $25
    ld h, $27                                     ; $6979: $26 $27
    jr z, jr_082_69a6                             ; $697b: $28 $29

    add hl, hl                                    ; $697d: $29
    jr z, jr_082_69a7                             ; $697e: $28 $27

    ld h, $25                                     ; $6980: $26 $25
    inc h                                         ; $6982: $24
    ld [bc], a                                    ; $6983: $02
    dec b                                         ; $6984: $05
    ld h, l                                       ; $6985: $65
    ld h, e                                       ; $6986: $63
    dec b                                         ; $6987: $05
    dec b                                         ; $6988: $05
    dec b                                         ; $6989: $05
    inc bc                                        ; $698a: $03
    dec b                                         ; $698b: $05
    dec b                                         ; $698c: $05
    ld h, d                                       ; $698d: $62
    ld h, e                                       ; $698e: $63
    ld h, d                                       ; $698f: $62
    ld h, d                                       ; $6990: $62
    ld h, d                                       ; $6991: $62
    ld h, e                                       ; $6992: $63
    sub [hl]                                      ; $6993: $96
    sub a                                         ; $6994: $97
    ld d, $15                                     ; $6995: $16 $15
    sbc b                                         ; $6997: $98
    sbc c                                         ; $6998: $99
    daa                                           ; $6999: $27
    ld h, $9a                                     ; $699a: $26 $9a
    sbc e                                         ; $699c: $9b
    ld e, $1d                                     ; $699d: $1e $1d
    sbc h                                         ; $699f: $9c
    sbc l                                         ; $69a0: $9d
    ld a, [de]                                    ; $69a1: $1a
    add hl, de                                    ; $69a2: $19
    inc c                                         ; $69a3: $0c
    inc c                                         ; $69a4: $0c
    ld h, d                                       ; $69a5: $62

jr_082_69a6:
    ld h, d                                       ; $69a6: $62

jr_082_69a7:
    inc c                                         ; $69a7: $0c
    inc c                                         ; $69a8: $0c
    ld h, d                                       ; $69a9: $62
    ld h, l                                       ; $69aa: $65
    inc c                                         ; $69ab: $0c
    inc c                                         ; $69ac: $0c
    ld [bc], a                                    ; $69ad: $02
    dec b                                         ; $69ae: $05
    inc c                                         ; $69af: $0c
    inc c                                         ; $69b0: $0c
    ld h, l                                       ; $69b1: $65
    ld h, d                                       ; $69b2: $62
    dec e                                         ; $69b3: $1d
    ld e, $1f                                     ; $69b4: $1e $1f
    inc e                                         ; $69b6: $1c
    dec d                                         ; $69b7: $15
    ld d, $17                                     ; $69b8: $16 $17
    jr jr_082_69d5                                ; $69ba: $18 $19

    ld a, [de]                                    ; $69bc: $1a
    dec de                                        ; $69bd: $1b
    inc e                                         ; $69be: $1c
    dec e                                         ; $69bf: $1d
    ld e, $1f                                     ; $69c0: $1e $1f
    jr nz, @+$67                                  ; $69c2: $20 $65

    ld h, d                                       ; $69c4: $62
    ld h, d                                       ; $69c5: $62
    ld [bc], a                                    ; $69c6: $02
    ld [bc], a                                    ; $69c7: $02
    ld [bc], a                                    ; $69c8: $02

jr_082_69c9:
    rlca                                          ; $69c9: $07
    ld [bc], a                                    ; $69ca: $02
    dec b                                         ; $69cb: $05
    rlca                                          ; $69cc: $07
    ld [bc], a                                    ; $69cd: $02
    ld [bc], a                                    ; $69ce: $02
    ld h, a                                       ; $69cf: $67
    ld h, a                                       ; $69d0: $67
    ld h, l                                       ; $69d1: $65
    ld h, d                                       ; $69d2: $62
    jr z, jr_082_6973                             ; $69d3: $28 $9e

jr_082_69d5:
    sbc a                                         ; $69d5: $9f
    inc h                                         ; $69d6: $24
    and b                                         ; $69d7: $a0
    and c                                         ; $69d8: $a1
    and d                                         ; $69d9: $a2
    and b                                         ; $69da: $a0
    and e                                         ; $69db: $a3
    and h                                         ; $69dc: $a4
    and l                                         ; $69dd: $a5
    and e                                         ; $69de: $a3
    and [hl]                                      ; $69df: $a6
    and a                                         ; $69e0: $a7
    xor b                                         ; $69e1: $a8
    and [hl]                                      ; $69e2: $a6
    rlca                                          ; $69e3: $07
    ld a, [bc]                                    ; $69e4: $0a
    ld a, [bc]                                    ; $69e5: $0a
    ld h, e                                       ; $69e6: $63
    ld a, [bc]                                    ; $69e7: $0a
    ld a, [bc]                                    ; $69e8: $0a
    ld a, [bc]                                    ; $69e9: $0a
    dec bc                                        ; $69ea: $0b
    ld a, [bc]                                    ; $69eb: $0a
    adc [hl]                                      ; $69ec: $8e
    adc [hl]                                      ; $69ed: $8e
    dec bc                                        ; $69ee: $0b
    ld a, [bc]                                    ; $69ef: $0a
    adc [hl]                                      ; $69f0: $8e
    adc [hl]                                      ; $69f1: $8e
    dec bc                                        ; $69f2: $0b
    ld h, $27                                     ; $69f3: $26 $27
    jr nz, jr_082_6a16                            ; $69f5: $20 $1f

    add hl, hl                                    ; $69f7: $29
    jr z, jr_082_6a16                             ; $69f8: $28 $1c

    dec de                                        ; $69fa: $1b
    dec h                                         ; $69fb: $25
    inc h                                         ; $69fc: $24
    jr jr_082_6a16                                ; $69fd: $18 $17

    ld h, $27                                     ; $69ff: $26 $27
    jr nz, jr_082_6a23                            ; $6a01: $20 $20

    rlca                                          ; $6a03: $07
    rlca                                          ; $6a04: $07
    ld [bc], a                                    ; $6a05: $02
    ld [bc], a                                    ; $6a06: $02
    ld h, a                                       ; $6a07: $67
    ld h, a                                       ; $6a08: $67
    ld h, d                                       ; $6a09: $62
    ld h, d                                       ; $6a0a: $62
    ld h, d                                       ; $6a0b: $62
    ld h, d                                       ; $6a0c: $62
    ld h, d                                       ; $6a0d: $62
    ld h, d                                       ; $6a0e: $62
    ld [bc], a                                    ; $6a0f: $02
    rlca                                          ; $6a10: $07
    ld [bc], a                                    ; $6a11: $02
    ld h, d                                       ; $6a12: $62
    xor c                                         ; $6a13: $a9
    xor d                                         ; $6a14: $aa
    xor e                                         ; $6a15: $ab

jr_082_6a16:
    sbc [hl]                                      ; $6a16: $9e
    ld a, [de]                                    ; $6a17: $1a
    xor h                                         ; $6a18: $ac
    xor l                                         ; $6a19: $ad
    ld a, [de]                                    ; $6a1a: $1a
    xor [hl]                                      ; $6a1b: $ae
    xor h                                         ; $6a1c: $ac
    xor l                                         ; $6a1d: $ad
    xor a                                         ; $6a1e: $af
    or b                                          ; $6a1f: $b0
    or c                                          ; $6a20: $b1
    or d                                          ; $6a21: $b2
    or b                                          ; $6a22: $b0

jr_082_6a23:
    ld a, [bc]                                    ; $6a23: $0a
    adc [hl]                                      ; $6a24: $8e
    adc [hl]                                      ; $6a25: $8e
    dec bc                                        ; $6a26: $0b
    ld h, d                                       ; $6a27: $62
    ld c, $0e                                     ; $6a28: $0e $0e
    inc bc                                        ; $6a2a: $03
    ld a, [bc]                                    ; $6a2b: $0a

jr_082_6a2c:
    ld c, $0e                                     ; $6a2c: $0e $0e
    dec bc                                        ; $6a2e: $0b
    ld a, [bc]                                    ; $6a2f: $0a
    ld c, $0e                                     ; $6a30: $0e $0e
    dec bc                                        ; $6a32: $0b
    xor $ed                                       ; $6a33: $ee $ed
    db $ed                                        ; $6a35: $ed
    db $ed                                        ; $6a36: $ed
    ld l, $0c                                     ; $6a37: $2e $0c
    or e                                          ; $6a39: $b3
    db $ed                                        ; $6a3a: $ed
    or h                                          ; $6a3b: $b4
    jr nc, jr_082_6a2c                            ; $6a3c: $30 $ee

    db $ed                                        ; $6a3e: $ed
    inc bc                                        ; $6a3f: $03
    inc [hl]                                      ; $6a40: $34
    rrca                                          ; $6a41: $0f
    db $ed                                        ; $6a42: $ed
    add b                                         ; $6a43: $80
    add b                                         ; $6a44: $80
    add b                                         ; $6a45: $80
    add b                                         ; $6a46: $80
    add b                                         ; $6a47: $80
    add b                                         ; $6a48: $80
    adc b                                         ; $6a49: $88
    add b                                         ; $6a4a: $80
    inc c                                         ; $6a4b: $0c
    inc b                                         ; $6a4c: $04
    add b                                         ; $6a4d: $80
    add b                                         ; $6a4e: $80
    inc b                                         ; $6a4f: $04
    inc b                                         ; $6a50: $04
    add b                                         ; $6a51: $80
    add b                                         ; $6a52: $80
    add hl, hl                                    ; $6a53: $29
    jr z, jr_082_6a72                             ; $6a54: $28 $1c

    rra                                           ; $6a56: $1f
    dec h                                         ; $6a57: $25
    inc h                                         ; $6a58: $24
    jr jr_082_6a76                                ; $6a59: $18 $1b

    dec d                                         ; $6a5b: $15
    ld d, $17                                     ; $6a5c: $16 $17
    rla                                           ; $6a5e: $17
    add hl, de                                    ; $6a5f: $19
    ld a, [de]                                    ; $6a60: $1a
    dec de                                        ; $6a61: $1b
    jr jr_082_6ac6                                ; $6a62: $18 $62

    ld h, d                                       ; $6a64: $62
    ld h, l                                       ; $6a65: $65
    ld [bc], a                                    ; $6a66: $02
    ld h, l                                       ; $6a67: $65
    ld h, l                                       ; $6a68: $65
    ld h, d                                       ; $6a69: $62
    ld h, a                                       ; $6a6a: $67
    dec b                                         ; $6a6b: $05
    rlca                                          ; $6a6c: $07
    ld [bc], a                                    ; $6a6d: $02
    ld h, d                                       ; $6a6e: $62
    rlca                                          ; $6a6f: $07
    ld [bc], a                                    ; $6a70: $02
    dec b                                         ; $6a71: $05

jr_082_6a72:
    dec b                                         ; $6a72: $05

jr_082_6a73:
    xor c                                         ; $6a73: $a9
    or l                                          ; $6a74: $b5
    or [hl]                                       ; $6a75: $b6

jr_082_6a76:
    xor c                                         ; $6a76: $a9
    ld a, [de]                                    ; $6a77: $1a
    or a                                          ; $6a78: $b7
    cp b                                          ; $6a79: $b8
    ld e, $16                                     ; $6a7a: $1e $16
    dec d                                         ; $6a7c: $15
    ld h, $27                                     ; $6a7d: $26 $27
    inc h                                         ; $6a7f: $24
    dec h                                         ; $6a80: $25
    add hl, hl                                    ; $6a81: $29
    jr z, jr_082_6a8e                             ; $6a82: $28 $0a

    ld a, [bc]                                    ; $6a84: $0a
    ld a, [bc]                                    ; $6a85: $0a
    dec bc                                        ; $6a86: $0b
    ld h, d                                       ; $6a87: $62
    ld a, [bc]                                    ; $6a88: $0a
    ld a, [bc]                                    ; $6a89: $0a
    ld h, e                                       ; $6a8a: $63
    ld h, d                                       ; $6a8b: $62
    ld h, d                                       ; $6a8c: $62
    ld [bc], a                                    ; $6a8d: $02

jr_082_6a8e:
    inc bc                                        ; $6a8e: $03
    ld [bc], a                                    ; $6a8f: $02
    ld [bc], a                                    ; $6a90: $02
    ld h, d                                       ; $6a91: $62
    ld h, e                                       ; $6a92: $63
    cp c                                          ; $6a93: $b9
    scf                                           ; $6a94: $37
    rrca                                          ; $6a95: $0f
    db $ed                                        ; $6a96: $ed
    cp d                                          ; $6a97: $ba
    dec sp                                        ; $6a98: $3b
    rrca                                          ; $6a99: $0f
    db $ed                                        ; $6a9a: $ed
    cp e                                          ; $6a9b: $bb
    ld d, d                                       ; $6a9c: $52
    rrca                                          ; $6a9d: $0f
    db $ed                                        ; $6a9e: $ed
    inc e                                         ; $6a9f: $1c
    dec de                                        ; $6aa0: $1b
    rrca                                          ; $6aa1: $0f
    dec l                                         ; $6aa2: $2d
    inc c                                         ; $6aa3: $0c
    inc b                                         ; $6aa4: $04
    add b                                         ; $6aa5: $80
    add b                                         ; $6aa6: $80
    inc c                                         ; $6aa7: $0c
    inc b                                         ; $6aa8: $04
    add b                                         ; $6aa9: $80
    add b                                         ; $6aaa: $80
    inc c                                         ; $6aab: $0c
    inc b                                         ; $6aac: $04
    add b                                         ; $6aad: $80
    add b                                         ; $6aae: $80
    ld h, e                                       ; $6aaf: $63
    ld h, e                                       ; $6ab0: $63
    add b                                         ; $6ab1: $80
    and b                                         ; $6ab2: $a0
    dec e                                         ; $6ab3: $1d
    ld e, $1f                                     ; $6ab4: $1e $1f
    inc e                                         ; $6ab6: $1c
    dec d                                         ; $6ab7: $15
    ld d, $17                                     ; $6ab8: $16 $17
    jr jr_082_6ad5                                ; $6aba: $18 $19

    ld a, [de]                                    ; $6abc: $1a
    dec de                                        ; $6abd: $1b
    inc e                                         ; $6abe: $1c
    dec e                                         ; $6abf: $1d
    ld e, $1f                                     ; $6ac0: $1e $1f
    jr nz, jr_082_6b26                            ; $6ac2: $20 $62

    ld h, d                                       ; $6ac4: $62
    ld h, l                                       ; $6ac5: $65

jr_082_6ac6:
    dec b                                         ; $6ac6: $05
    dec b                                         ; $6ac7: $05
    dec b                                         ; $6ac8: $05
    ld [bc], a                                    ; $6ac9: $02
    ld [bc], a                                    ; $6aca: $02
    dec b                                         ; $6acb: $05
    dec b                                         ; $6acc: $05
    ld [bc], a                                    ; $6acd: $02
    rlca                                          ; $6ace: $07
    ld h, d                                       ; $6acf: $62
    ld h, d                                       ; $6ad0: $62
    ld h, l                                       ; $6ad1: $65
    ld h, a                                       ; $6ad2: $67
    jr z, jr_082_6a73                             ; $6ad3: $28 $9e

jr_082_6ad5:
    sbc a                                         ; $6ad5: $9f
    inc h                                         ; $6ad6: $24
    and b                                         ; $6ad7: $a0
    cp h                                          ; $6ad8: $bc
    cp l                                          ; $6ad9: $bd
    and b                                         ; $6ada: $a0
    or b                                          ; $6adb: $b0
    cp [hl]                                       ; $6adc: $be
    cp a                                          ; $6add: $bf
    or b                                          ; $6ade: $b0
    and e                                         ; $6adf: $a3
    ret nz                                        ; $6ae0: $c0

    pop bc                                        ; $6ae1: $c1
    and e                                         ; $6ae2: $a3
    ld [bc], a                                    ; $6ae3: $02
    ld a, [bc]                                    ; $6ae4: $0a
    ld a, [bc]                                    ; $6ae5: $0a
    ld h, a                                       ; $6ae6: $67
    ld a, [bc]                                    ; $6ae7: $0a
    ld a, [bc]                                    ; $6ae8: $0a
    ld a, [bc]                                    ; $6ae9: $0a
    ld a, [bc]                                    ; $6aea: $0a
    ld a, [bc]                                    ; $6aeb: $0a
    adc [hl]                                      ; $6aec: $8e
    adc [hl]                                      ; $6aed: $8e
    ld a, [bc]                                    ; $6aee: $0a
    ld a, [bc]                                    ; $6aef: $0a
    adc [hl]                                      ; $6af0: $8e
    adc [hl]                                      ; $6af1: $8e
    dec bc                                        ; $6af2: $0b
    jr jr_082_6b0c                                ; $6af3: $18 $17

    xor $2d                                       ; $6af5: $ee $2d
    dec bc                                        ; $6af7: $0b
    inc c                                         ; $6af8: $0c
    dec c                                         ; $6af9: $0d
    dec l                                         ; $6afa: $2d
    xor $ed                                       ; $6afb: $ee $ed
    db $ed                                        ; $6afd: $ed
    db $ed                                        ; $6afe: $ed
    xor $ed                                       ; $6aff: $ee $ed
    db $ed                                        ; $6b01: $ed
    db $ed                                        ; $6b02: $ed
    ld h, d                                       ; $6b03: $62
    ld h, e                                       ; $6b04: $63
    add b                                         ; $6b05: $80
    and b                                         ; $6b06: $a0
    add b                                         ; $6b07: $80
    add b                                         ; $6b08: $80
    add b                                         ; $6b09: $80
    and b                                         ; $6b0a: $a0
    add b                                         ; $6b0b: $80

jr_082_6b0c:
    add b                                         ; $6b0c: $80
    add b                                         ; $6b0d: $80
    add b                                         ; $6b0e: $80
    add b                                         ; $6b0f: $80
    add b                                         ; $6b10: $80
    add b                                         ; $6b11: $80
    add b                                         ; $6b12: $80
    jp nz, $82c3                                  ; $6b13: $c2 $c3 $82

    ld a, a                                       ; $6b16: $7f
    call nz, $c582                                ; $6b17: $c4 $82 $c5
    jp nz, $8682                                  ; $6b1a: $c2 $82 $86

    add $c3                                       ; $6b1d: $c6 $c3
    add l                                         ; $6b1f: $85
    add l                                         ; $6b20: $85
    add l                                         ; $6b21: $85
    add l                                         ; $6b22: $85
    add hl, bc                                    ; $6b23: $09
    add hl, bc                                    ; $6b24: $09
    add hl, bc                                    ; $6b25: $09

jr_082_6b26:
    ld bc, $0909                                  ; $6b26: $01 $09 $09
    add hl, bc                                    ; $6b29: $09
    add hl, bc                                    ; $6b2a: $09
    add hl, bc                                    ; $6b2b: $09
    add hl, bc                                    ; $6b2c: $09
    add hl, bc                                    ; $6b2d: $09
    add hl, bc                                    ; $6b2e: $09
    add hl, bc                                    ; $6b2f: $09
    add hl, bc                                    ; $6b30: $09
    add hl, bc                                    ; $6b31: $09
    add hl, bc                                    ; $6b32: $09
    add b                                         ; $6b33: $80
    add c                                         ; $6b34: $81
    rst $00                                       ; $6b35: $c7
    ret z                                         ; $6b36: $c8

    jp $cac9                                      ; $6b37: $c3 $c9 $ca


    set 1, h                                      ; $6b3a: $cb $cc
    call $cbca                                    ; $6b3c: $cd $ca $cb
    add l                                         ; $6b3f: $85
    add l                                         ; $6b40: $85
    add l                                         ; $6b41: $85
    add l                                         ; $6b42: $85
    add hl, bc                                    ; $6b43: $09
    add hl, bc                                    ; $6b44: $09
    add hl, bc                                    ; $6b45: $09
    add hl, bc                                    ; $6b46: $09
    add hl, bc                                    ; $6b47: $09
    add hl, bc                                    ; $6b48: $09
    add hl, bc                                    ; $6b49: $09
    add hl, bc                                    ; $6b4a: $09
    add hl, bc                                    ; $6b4b: $09
    add hl, bc                                    ; $6b4c: $09
    add hl, bc                                    ; $6b4d: $09
    add hl, bc                                    ; $6b4e: $09
    add hl, bc                                    ; $6b4f: $09
    add hl, bc                                    ; $6b50: $09
    add hl, bc                                    ; $6b51: $09
    add hl, bc                                    ; $6b52: $09
    adc $cf                                       ; $6b53: $ce $cf
    adc $d0                                       ; $6b55: $ce $d0
    dec h                                         ; $6b57: $25
    inc h                                         ; $6b58: $24
    jr @+$1d                                      ; $6b59: $18 $1b

    dec d                                         ; $6b5b: $15
    ld d, $17                                     ; $6b5c: $16 $17
    rla                                           ; $6b5e: $17
    add hl, de                                    ; $6b5f: $19
    ld a, [de]                                    ; $6b60: $1a
    dec de                                        ; $6b61: $1b
    jr jr_082_6b6d                                ; $6b62: $18 $09

    add hl, bc                                    ; $6b64: $09
    add hl, bc                                    ; $6b65: $09
    add hl, bc                                    ; $6b66: $09
    ld h, e                                       ; $6b67: $63
    ld h, e                                       ; $6b68: $63
    ld h, e                                       ; $6b69: $63
    ld h, e                                       ; $6b6a: $63
    inc bc                                        ; $6b6b: $03
    ld [bc], a                                    ; $6b6c: $02

jr_082_6b6d:
    ld [bc], a                                    ; $6b6d: $02
    ld h, l                                       ; $6b6e: $65
    inc bc                                        ; $6b6f: $03
    ld [bc], a                                    ; $6b70: $02
    dec b                                         ; $6b71: $05
    ld [bc], a                                    ; $6b72: $02
    adc $cf                                       ; $6b73: $ce $cf
    adc $d0                                       ; $6b75: $ce $d0
    ld a, [de]                                    ; $6b77: $1a
    add hl, de                                    ; $6b78: $19
    dec e                                         ; $6b79: $1d
    ld e, $16                                     ; $6b7a: $1e $16
    dec d                                         ; $6b7c: $15
    ld h, $27                                     ; $6b7d: $26 $27
    inc h                                         ; $6b7f: $24
    dec h                                         ; $6b80: $25
    add hl, hl                                    ; $6b81: $29
    jr z, jr_082_6b8d                             ; $6b82: $28 $09

    add hl, bc                                    ; $6b84: $09
    add hl, bc                                    ; $6b85: $09
    add hl, bc                                    ; $6b86: $09
    ld h, e                                       ; $6b87: $63
    ld h, e                                       ; $6b88: $63
    ld h, e                                       ; $6b89: $63
    ld h, e                                       ; $6b8a: $63
    ld h, d                                       ; $6b8b: $62
    ld h, d                                       ; $6b8c: $62

jr_082_6b8d:
    rlca                                          ; $6b8d: $07
    rlca                                          ; $6b8e: $07
    rlca                                          ; $6b8f: $07
    dec b                                         ; $6b90: $05
    ld h, l                                       ; $6b91: $65
    ld h, l                                       ; $6b92: $65
    db $ed                                        ; $6b93: $ed
    db $ed                                        ; $6b94: $ed
    dec bc                                        ; $6b95: $0b
    inc c                                         ; $6b96: $0c
    db $ed                                        ; $6b97: $ed
    db $ed                                        ; $6b98: $ed
    xor $3f                                       ; $6b99: $ee $3f
    db $ed                                        ; $6b9b: $ed
    db $ed                                        ; $6b9c: $ed
    rrca                                          ; $6b9d: $0f
    di                                            ; $6b9e: $f3
    db $ed                                        ; $6b9f: $ed
    db $ed                                        ; $6ba0: $ed
    rrca                                          ; $6ba1: $0f
    ld b, h                                       ; $6ba2: $44
    add b                                         ; $6ba3: $80
    add b                                         ; $6ba4: $80
    add b                                         ; $6ba5: $80
    add b                                         ; $6ba6: $80
    add b                                         ; $6ba7: $80
    add b                                         ; $6ba8: $80
    add b                                         ; $6ba9: $80
    inc b                                         ; $6baa: $04
    add b                                         ; $6bab: $80
    add b                                         ; $6bac: $80
    add b                                         ; $6bad: $80
    inc b                                         ; $6bae: $04
    add b                                         ; $6baf: $80
    add b                                         ; $6bb0: $80
    add b                                         ; $6bb1: $80
    inc b                                         ; $6bb2: $04
    inc c                                         ; $6bb3: $0c
    inc c                                         ; $6bb4: $0c
    inc c                                         ; $6bb5: $0c
    dec c                                         ; $6bb6: $0d
    inc sp                                        ; $6bb7: $33
    ccf                                           ; $6bb8: $3f
    rst $28                                       ; $6bb9: $ef
    ld c, $36                                     ; $6bba: $0e $36
    di                                            ; $6bbc: $f3
    di                                            ; $6bbd: $f3
    db $10                                        ; $6bbe: $10
    ld a, [hl-]                                   ; $6bbf: $3a
    ld b, h                                       ; $6bc0: $44
    rst $30                                       ; $6bc1: $f7
    ld a, [hl+]                                   ; $6bc2: $2a
    add b                                         ; $6bc3: $80
    add b                                         ; $6bc4: $80
    add b                                         ; $6bc5: $80
    add b                                         ; $6bc6: $80
    inc b                                         ; $6bc7: $04
    inc b                                         ; $6bc8: $04
    inc b                                         ; $6bc9: $04
    inc b                                         ; $6bca: $04
    inc b                                         ; $6bcb: $04
    inc b                                         ; $6bcc: $04
    inc b                                         ; $6bcd: $04
    inc b                                         ; $6bce: $04
    inc b                                         ; $6bcf: $04
    inc b                                         ; $6bd0: $04
    inc b                                         ; $6bd1: $04
    inc b                                         ; $6bd2: $04
    dec e                                         ; $6bd3: $1d
    ld e, $1f                                     ; $6bd4: $1e $1f
    inc e                                         ; $6bd6: $1c
    dec d                                         ; $6bd7: $15
    ld d, $17                                     ; $6bd8: $16 $17
    jr jr_082_6bf5                                ; $6bda: $18 $19

    ld a, [de]                                    ; $6bdc: $1a
    dec de                                        ; $6bdd: $1b
    inc e                                         ; $6bde: $1c
    dec e                                         ; $6bdf: $1d
    ld e, $1f                                     ; $6be0: $1e $1f
    jr nz, jr_082_6c47                            ; $6be2: $20 $63

    ld h, d                                       ; $6be4: $62
    ld h, a                                       ; $6be5: $67
    dec b                                         ; $6be6: $05
    inc bc                                        ; $6be7: $03
    ld [bc], a                                    ; $6be8: $02
    dec b                                         ; $6be9: $05
    dec b                                         ; $6bea: $05
    inc bc                                        ; $6beb: $03
    ld [bc], a                                    ; $6bec: $02
    dec b                                         ; $6bed: $05
    dec b                                         ; $6bee: $05
    ld h, e                                       ; $6bef: $63
    ld h, d                                       ; $6bf0: $62
    ld h, l                                       ; $6bf1: $65
    ld h, l                                       ; $6bf2: $65
    jr z, jr_082_6c1e                             ; $6bf3: $28 $29

jr_082_6bf5:
    dec h                                         ; $6bf5: $25
    inc h                                         ; $6bf6: $24
    inc h                                         ; $6bf7: $24
    dec h                                         ; $6bf8: $25
    ld h, $27                                     ; $6bf9: $26 $27
    jr z, jr_082_6c26                             ; $6bfb: $28 $29

    add hl, hl                                    ; $6bfd: $29
    jr z, jr_082_6c27                             ; $6bfe: $28 $27

    ld h, $25                                     ; $6c00: $26 $25
    inc h                                         ; $6c02: $24
    dec b                                         ; $6c03: $05
    dec b                                         ; $6c04: $05
    ld h, l                                       ; $6c05: $65
    ld h, l                                       ; $6c06: $65
    dec b                                         ; $6c07: $05
    dec b                                         ; $6c08: $05
    rlca                                          ; $6c09: $07
    ld [bc], a                                    ; $6c0a: $02
    dec b                                         ; $6c0b: $05
    dec b                                         ; $6c0c: $05
    ld h, d                                       ; $6c0d: $62
    ld h, d                                       ; $6c0e: $62
    ld h, l                                       ; $6c0f: $65
    ld h, l                                       ; $6c10: $65
    ld h, l                                       ; $6c11: $65
    ld h, l                                       ; $6c12: $65
    db $ed                                        ; $6c13: $ed
    db $ed                                        ; $6c14: $ed
    rrca                                          ; $6c15: $0f
    ld b, a                                       ; $6c16: $47
    db $ed                                        ; $6c17: $ed
    db $ed                                        ; $6c18: $ed
    rrca                                          ; $6c19: $0f
    ld d, [hl]                                    ; $6c1a: $56
    db $ed                                        ; $6c1b: $ed
    dec l                                         ; $6c1c: $2d
    rrca                                          ; $6c1d: $0f

jr_082_6c1e:
    ld e, $ed                                     ; $6c1e: $1e $ed
    dec l                                         ; $6c20: $2d
    xor $16                                       ; $6c21: $ee $16
    add b                                         ; $6c23: $80
    add b                                         ; $6c24: $80
    add b                                         ; $6c25: $80

jr_082_6c26:
    inc b                                         ; $6c26: $04

jr_082_6c27:
    add b                                         ; $6c27: $80
    add b                                         ; $6c28: $80
    add b                                         ; $6c29: $80
    inc b                                         ; $6c2a: $04
    add b                                         ; $6c2b: $80
    add b                                         ; $6c2c: $80
    add b                                         ; $6c2d: $80
    ld h, e                                       ; $6c2e: $63
    add b                                         ; $6c2f: $80
    add b                                         ; $6c30: $80
    add b                                         ; $6c31: $80
    inc bc                                        ; $6c32: $03
    ld a, $47                                     ; $6c33: $3e $47
    ei                                            ; $6c35: $fb
    dec hl                                        ; $6c36: $2b
    ld d, l                                       ; $6c37: $55
    ld d, [hl]                                    ; $6c38: $56
    ld de, $1f2c                                  ; $6c39: $11 $2c $1f
    inc e                                         ; $6c3c: $1c
    jr z, jr_082_6c68                             ; $6c3d: $28 $29

    rla                                           ; $6c3f: $17
    jr jr_082_6c66                                ; $6c40: $18 $24

    dec h                                         ; $6c42: $25
    inc b                                         ; $6c43: $04
    inc b                                         ; $6c44: $04
    inc b                                         ; $6c45: $04
    inc b                                         ; $6c46: $04

jr_082_6c47:
    inc b                                         ; $6c47: $04
    inc b                                         ; $6c48: $04
    inc b                                         ; $6c49: $04
    inc b                                         ; $6c4a: $04
    ld h, e                                       ; $6c4b: $63
    inc bc                                        ; $6c4c: $03
    inc bc                                        ; $6c4d: $03
    inc bc                                        ; $6c4e: $03
    ld [bc], a                                    ; $6c4f: $02
    rlca                                          ; $6c50: $07
    rlca                                          ; $6c51: $07
    ld [bc], a                                    ; $6c52: $02
    ld h, $27                                     ; $6c53: $26 $27
    jr nz, jr_082_6c76                            ; $6c55: $20 $1f

    add hl, hl                                    ; $6c57: $29
    jr z, jr_082_6c76                             ; $6c58: $28 $1c

    dec de                                        ; $6c5a: $1b
    dec h                                         ; $6c5b: $25
    inc h                                         ; $6c5c: $24
    jr jr_082_6c76                                ; $6c5d: $18 $17

    ld h, $27                                     ; $6c5f: $26 $27
    jr nz, @+$22                                  ; $6c61: $20 $20

    inc bc                                        ; $6c63: $03
    ld [bc], a                                    ; $6c64: $02
    dec b                                         ; $6c65: $05

jr_082_6c66:
    dec b                                         ; $6c66: $05
    ld h, e                                       ; $6c67: $63

jr_082_6c68:
    ld h, d                                       ; $6c68: $62
    ld h, d                                       ; $6c69: $62
    ld h, l                                       ; $6c6a: $65
    ld h, e                                       ; $6c6b: $63
    ld h, d                                       ; $6c6c: $62
    ld h, d                                       ; $6c6d: $62
    ld h, a                                       ; $6c6e: $67
    rlca                                          ; $6c6f: $07
    ld [bc], a                                    ; $6c70: $02
    rlca                                          ; $6c71: $07
    ld h, l                                       ; $6c72: $65
    ld e, $1d                                     ; $6c73: $1e $1d
    dec d                                         ; $6c75: $15

jr_082_6c76:
    ld d, $1a                                     ; $6c76: $16 $1a
    add hl, de                                    ; $6c78: $19
    add hl, de                                    ; $6c79: $19
    ld a, [de]                                    ; $6c7a: $1a
    ld d, $15                                     ; $6c7b: $16 $15
    dec e                                         ; $6c7d: $1d
    ld e, $27                                     ; $6c7e: $1e $27
    ld h, $15                                     ; $6c80: $26 $15
    ld d, $05                                     ; $6c82: $16 $05
    dec b                                         ; $6c84: $05
    dec b                                         ; $6c85: $05
    dec b                                         ; $6c86: $05
    ld h, l                                       ; $6c87: $65
    ld h, l                                       ; $6c88: $65
    dec b                                         ; $6c89: $05
    dec b                                         ; $6c8a: $05
    ld h, d                                       ; $6c8b: $62
    ld h, d                                       ; $6c8c: $62
    ld h, d                                       ; $6c8d: $62
    ld h, d                                       ; $6c8e: $62
    ld h, d                                       ; $6c8f: $62
    ld h, d                                       ; $6c90: $62
    dec b                                         ; $6c91: $05
    ld [bc], a                                    ; $6c92: $02
    pop de                                        ; $6c93: $d1
    jp nc, Jump_000_15d3                          ; $6c94: $d2 $d3 $15

    call nc, $d6d5                                ; $6c97: $d4 $d5 $d6
    dec h                                         ; $6c9a: $25
    call nc, $d7d5                                ; $6c9b: $d4 $d5 $d7
    add hl, hl                                    ; $6c9e: $29
    add l                                         ; $6c9f: $85
    add l                                         ; $6ca0: $85
    sub d                                         ; $6ca1: $92
    dec h                                         ; $6ca2: $25
    add hl, bc                                    ; $6ca3: $09
    add hl, bc                                    ; $6ca4: $09
    ld c, l                                       ; $6ca5: $4d
    ld h, d                                       ; $6ca6: $62
    add hl, bc                                    ; $6ca7: $09
    add hl, bc                                    ; $6ca8: $09
    dec c                                         ; $6ca9: $0d
    ld [bc], a                                    ; $6caa: $02
    add hl, bc                                    ; $6cab: $09
    add hl, bc                                    ; $6cac: $09
    dec c                                         ; $6cad: $0d
    ld [bc], a                                    ; $6cae: $02
    add hl, bc                                    ; $6caf: $09
    add hl, bc                                    ; $6cb0: $09
    add hl, bc                                    ; $6cb1: $09
    rlca                                          ; $6cb2: $07
    ld h, $27                                     ; $6cb3: $26 $27
    jr nz, jr_082_6cd6                            ; $6cb5: $20 $1f

    add hl, hl                                    ; $6cb7: $29
    jr z, jr_082_6cd6                             ; $6cb8: $28 $1c

    dec de                                        ; $6cba: $1b
    dec h                                         ; $6cbb: $25
    inc h                                         ; $6cbc: $24
    jr jr_082_6cd6                                ; $6cbd: $18 $17

    ld h, $27                                     ; $6cbf: $26 $27
    jr nz, @+$22                                  ; $6cc1: $20 $20

    dec b                                         ; $6cc3: $05
    dec b                                         ; $6cc4: $05
    ld [bc], a                                    ; $6cc5: $02
    ld [bc], a                                    ; $6cc6: $02
    ld h, d                                       ; $6cc7: $62
    ld h, a                                       ; $6cc8: $67
    ld h, l                                       ; $6cc9: $65
    ld h, l                                       ; $6cca: $65
    ld h, d                                       ; $6ccb: $62
    ld h, d                                       ; $6ccc: $62
    ld h, l                                       ; $6ccd: $65
    ld h, l                                       ; $6cce: $65
    ld [bc], a                                    ; $6ccf: $02
    rlca                                          ; $6cd0: $07
    ld [bc], a                                    ; $6cd1: $02
    ld h, a                                       ; $6cd2: $67
    ld e, $1d                                     ; $6cd3: $1e $1d
    dec d                                         ; $6cd5: $15

jr_082_6cd6:
    ld d, $1a                                     ; $6cd6: $16 $1a
    add hl, de                                    ; $6cd8: $19
    add hl, de                                    ; $6cd9: $19
    ld a, [de]                                    ; $6cda: $1a
    ld d, $15                                     ; $6cdb: $16 $15
    dec e                                         ; $6cdd: $1d
    ld e, $27                                     ; $6cde: $1e $27
    ld h, $15                                     ; $6ce0: $26 $15
    ld d, $02                                     ; $6ce2: $16 $02
    dec b                                         ; $6ce4: $05
    ld [bc], a                                    ; $6ce5: $02
    inc bc                                        ; $6ce6: $03
    ld h, l                                       ; $6ce7: $65
    ld h, l                                       ; $6ce8: $65
    ld [bc], a                                    ; $6ce9: $02
    inc bc                                        ; $6cea: $03
    ld h, l                                       ; $6ceb: $65
    ld h, d                                       ; $6cec: $62
    ld h, a                                       ; $6ced: $67
    ld h, e                                       ; $6cee: $63
    ld h, d                                       ; $6cef: $62
    ld h, a                                       ; $6cf0: $67
    rlca                                          ; $6cf1: $07
    rlca                                          ; $6cf2: $07
    ret c                                         ; $6cf3: $d8

    reti                                          ; $6cf4: $d9


    ld d, $15                                     ; $6cf5: $16 $15
    jp c, Jump_000_24db                           ; $6cf7: $da $db $24

    dec h                                         ; $6cfa: $25
    rra                                           ; $6cfb: $1f
    inc e                                         ; $6cfc: $1c
    jr z, jr_082_6d28                             ; $6cfd: $28 $29

    rla                                           ; $6cff: $17
    jr jr_082_6d26                                ; $6d00: $18 $24

    dec h                                         ; $6d02: $25
    inc c                                         ; $6d03: $0c
    inc c                                         ; $6d04: $0c
    ld h, d                                       ; $6d05: $62
    ld h, d                                       ; $6d06: $62
    inc c                                         ; $6d07: $0c
    inc c                                         ; $6d08: $0c
    ld [bc], a                                    ; $6d09: $02
    ld [bc], a                                    ; $6d0a: $02
    ld h, e                                       ; $6d0b: $63
    inc bc                                        ; $6d0c: $03
    ld [bc], a                                    ; $6d0d: $02
    ld [bc], a                                    ; $6d0e: $02
    ld [bc], a                                    ; $6d0f: $02
    ld [bc], a                                    ; $6d10: $02
    rlca                                          ; $6d11: $07
    ld [bc], a                                    ; $6d12: $02
    adc $d0                                       ; $6d13: $ce $d0
    call c, Call_000_1f29                         ; $6d15: $dc $29 $1f
    jr nz, jr_082_6d41                            ; $6d18: $20 $27

    ld h, $20                                     ; $6d1a: $26 $20
    rra                                           ; $6d1c: $1f
    ld e, $1d                                     ; $6d1d: $1e $1d
    inc e                                         ; $6d1f: $1c
    dec de                                        ; $6d20: $1b
    ld a, [de]                                    ; $6d21: $1a
    add hl, de                                    ; $6d22: $19
    add hl, bc                                    ; $6d23: $09
    add hl, bc                                    ; $6d24: $09
    add hl, bc                                    ; $6d25: $09

jr_082_6d26:
    ld [bc], a                                    ; $6d26: $02
    ld h, e                                       ; $6d27: $63

jr_082_6d28:
    ld h, e                                       ; $6d28: $63
    ld h, e                                       ; $6d29: $63
    ld h, e                                       ; $6d2a: $63
    dec b                                         ; $6d2b: $05
    dec b                                         ; $6d2c: $05
    dec b                                         ; $6d2d: $05
    rlca                                          ; $6d2e: $07
    ld h, d                                       ; $6d2f: $62
    ld h, a                                       ; $6d30: $67
    ld h, d                                       ; $6d31: $62
    ld h, l                                       ; $6d32: $65
    add hl, hl                                    ; $6d33: $29
    jr z, jr_082_6d52                             ; $6d34: $28 $1c

    rra                                           ; $6d36: $1f
    dec h                                         ; $6d37: $25
    inc h                                         ; $6d38: $24
    jr jr_082_6d56                                ; $6d39: $18 $1b

    dec d                                         ; $6d3b: $15
    ld d, $17                                     ; $6d3c: $16 $17
    rla                                           ; $6d3e: $17
    add hl, de                                    ; $6d3f: $19
    ld a, [de]                                    ; $6d40: $1a

jr_082_6d41:
    dec de                                        ; $6d41: $1b
    jr jr_082_6dab                                ; $6d42: $18 $67

    ld h, d                                       ; $6d44: $62
    ld h, d                                       ; $6d45: $62
    rlca                                          ; $6d46: $07
    ld h, d                                       ; $6d47: $62
    ld h, a                                       ; $6d48: $67
    ld h, a                                       ; $6d49: $67
    ld h, a                                       ; $6d4a: $67
    rlca                                          ; $6d4b: $07
    ld [bc], a                                    ; $6d4c: $02
    dec b                                         ; $6d4d: $05
    ld h, a                                       ; $6d4e: $67
    dec b                                         ; $6d4f: $05
    rlca                                          ; $6d50: $07
    rlca                                          ; $6d51: $07

jr_082_6d52:
    rlca                                          ; $6d52: $07
    ld e, $1d                                     ; $6d53: $1e $1d
    add hl, de                                    ; $6d55: $19

jr_082_6d56:
    ld a, [de]                                    ; $6d56: $1a
    ld a, [de]                                    ; $6d57: $1a
    add hl, de                                    ; $6d58: $19
    dec e                                         ; $6d59: $1d
    ld e, $16                                     ; $6d5a: $1e $16
    dec d                                         ; $6d5c: $15
    ld h, $27                                     ; $6d5d: $26 $27
    inc h                                         ; $6d5f: $24
    dec h                                         ; $6d60: $25
    add hl, hl                                    ; $6d61: $29
    jr z, jr_082_6d6b                             ; $6d62: $28 $07

    rlca                                          ; $6d64: $07
    rlca                                          ; $6d65: $07
    rlca                                          ; $6d66: $07
    ld h, a                                       ; $6d67: $67
    ld h, a                                       ; $6d68: $67
    ld h, a                                       ; $6d69: $67
    ld h, d                                       ; $6d6a: $62

jr_082_6d6b:
    ld h, a                                       ; $6d6b: $67
    ld h, a                                       ; $6d6c: $67
    ld [bc], a                                    ; $6d6d: $02
    rlca                                          ; $6d6e: $07
    rlca                                          ; $6d6f: $07
    dec b                                         ; $6d70: $05
    ld h, l                                       ; $6d71: $65
    ld h, l                                       ; $6d72: $65
    dec de                                        ; $6d73: $1b
    inc e                                         ; $6d74: $1c
    jr z, @+$2b                                   ; $6d75: $28 $29

    rra                                           ; $6d77: $1f
    jr nz, jr_082_6da1                            ; $6d78: $20 $27

    ld h, $20                                     ; $6d7a: $26 $20
    rra                                           ; $6d7c: $1f
    ld e, $1d                                     ; $6d7d: $1e $1d
    inc e                                         ; $6d7f: $1c
    dec de                                        ; $6d80: $1b
    ld a, [de]                                    ; $6d81: $1a
    add hl, de                                    ; $6d82: $19
    ld [bc], a                                    ; $6d83: $02
    dec b                                         ; $6d84: $05
    dec b                                         ; $6d85: $05
    ld [bc], a                                    ; $6d86: $02
    ld h, l                                       ; $6d87: $65
    ld h, d                                       ; $6d88: $62
    ld h, d                                       ; $6d89: $62
    ld h, a                                       ; $6d8a: $67
    rlca                                          ; $6d8b: $07
    ld [bc], a                                    ; $6d8c: $02
    ld [bc], a                                    ; $6d8d: $02
    dec b                                         ; $6d8e: $05
    ld h, a                                       ; $6d8f: $67
    ld h, d                                       ; $6d90: $62
    ld h, a                                       ; $6d91: $67
    ld h, a                                       ; $6d92: $67
    jr jr_082_6dac                                ; $6d93: $18 $17

    ld d, $15                                     ; $6d95: $16 $15
    jr nz, @+$22                                  ; $6d97: $20 $20

    daa                                           ; $6d99: $27
    ld h, $1c                                     ; $6d9a: $26 $1c
    rra                                           ; $6d9c: $1f
    ld e, $1d                                     ; $6d9d: $1e $1d
    jr jr_082_6dbc                                ; $6d9f: $18 $1b

jr_082_6da1:
    ld a, [de]                                    ; $6da1: $1a
    add hl, de                                    ; $6da2: $19
    ld h, d                                       ; $6da3: $62
    ld h, d                                       ; $6da4: $62
    ld h, d                                       ; $6da5: $62
    ld h, l                                       ; $6da6: $65
    dec b                                         ; $6da7: $05
    ld h, l                                       ; $6da8: $65
    ld h, l                                       ; $6da9: $65
    ld h, d                                       ; $6daa: $62

jr_082_6dab:
    ld h, l                                       ; $6dab: $65

jr_082_6dac:
    dec b                                         ; $6dac: $05
    dec b                                         ; $6dad: $05
    ld [bc], a                                    ; $6dae: $02
    ld h, l                                       ; $6daf: $65
    ld h, a                                       ; $6db0: $67
    ld h, a                                       ; $6db1: $67
    ld h, a                                       ; $6db2: $67
    dec e                                         ; $6db3: $1d
    ld e, $1f                                     ; $6db4: $1e $1f
    inc e                                         ; $6db6: $1c
    dec d                                         ; $6db7: $15
    ld d, $17                                     ; $6db8: $16 $17
    jr jr_082_6dd5                                ; $6dba: $18 $19

jr_082_6dbc:
    ld a, [de]                                    ; $6dbc: $1a
    dec de                                        ; $6dbd: $1b
    inc e                                         ; $6dbe: $1c
    dec e                                         ; $6dbf: $1d
    ld e, $1f                                     ; $6dc0: $1e $1f
    jr nz, jr_082_6e29                            ; $6dc2: $20 $65

    ld h, l                                       ; $6dc4: $65
    ld h, d                                       ; $6dc5: $62
    ld [bc], a                                    ; $6dc6: $02
    rlca                                          ; $6dc7: $07
    ld [bc], a                                    ; $6dc8: $02
    dec b                                         ; $6dc9: $05
    dec b                                         ; $6dca: $05
    rlca                                          ; $6dcb: $07
    rlca                                          ; $6dcc: $07
    rlca                                          ; $6dcd: $07
    dec b                                         ; $6dce: $05
    ld h, a                                       ; $6dcf: $67
    ld h, a                                       ; $6dd0: $67
    ld h, d                                       ; $6dd1: $62
    ld h, d                                       ; $6dd2: $62
    jr z, @+$2b                                   ; $6dd3: $28 $29

jr_082_6dd5:
    dec h                                         ; $6dd5: $25
    inc h                                         ; $6dd6: $24
    inc h                                         ; $6dd7: $24
    dec h                                         ; $6dd8: $25
    ld h, $27                                     ; $6dd9: $26 $27
    jr z, jr_082_6e06                             ; $6ddb: $28 $29

    add hl, hl                                    ; $6ddd: $29
    jr z, jr_082_6e07                             ; $6dde: $28 $27

    ld h, $25                                     ; $6de0: $26 $25
    inc h                                         ; $6de2: $24
    ld [bc], a                                    ; $6de3: $02
    dec b                                         ; $6de4: $05
    ld h, l                                       ; $6de5: $65
    ld h, l                                       ; $6de6: $65
    dec b                                         ; $6de7: $05
    ld [bc], a                                    ; $6de8: $02
    rlca                                          ; $6de9: $07
    ld [bc], a                                    ; $6dea: $02
    dec b                                         ; $6deb: $05
    ld [bc], a                                    ; $6dec: $02
    ld h, a                                       ; $6ded: $67
    ld h, d                                       ; $6dee: $62
    ld h, d                                       ; $6def: $62
    ld h, l                                       ; $6df0: $65
    ld h, l                                       ; $6df1: $65
    ld h, l                                       ; $6df2: $65
    jr jr_082_6e0c                                ; $6df3: $18 $17

    ld d, $15                                     ; $6df5: $16 $15
    jr nz, @+$22                                  ; $6df7: $20 $20

    daa                                           ; $6df9: $27
    ld h, $1c                                     ; $6dfa: $26 $1c
    rra                                           ; $6dfc: $1f
    ld e, $1d                                     ; $6dfd: $1e $1d
    jr jr_082_6e1c                                ; $6dff: $18 $1b

    ld a, [de]                                    ; $6e01: $1a
    add hl, de                                    ; $6e02: $19
    ld h, l                                       ; $6e03: $65
    ld h, l                                       ; $6e04: $65
    ld h, l                                       ; $6e05: $65

jr_082_6e06:
    ld h, a                                       ; $6e06: $67

jr_082_6e07:
    dec b                                         ; $6e07: $05
    ld h, l                                       ; $6e08: $65
    ld h, l                                       ; $6e09: $65
    ld h, l                                       ; $6e0a: $65
    ld h, a                                       ; $6e0b: $67

jr_082_6e0c:
    dec b                                         ; $6e0c: $05
    ld [bc], a                                    ; $6e0d: $02
    dec b                                         ; $6e0e: $05
    ld h, d                                       ; $6e0f: $62
    ld h, l                                       ; $6e10: $65
    ld h, a                                       ; $6e11: $67
    ld h, d                                       ; $6e12: $62
    rla                                           ; $6e13: $17
    rla                                           ; $6e14: $17
    ld d, $15                                     ; $6e15: $16 $15
    dec de                                        ; $6e17: $1b
    jr @+$26                                      ; $6e18: $18 $24

    dec h                                         ; $6e1a: $25
    rra                                           ; $6e1b: $1f

jr_082_6e1c:
    inc e                                         ; $6e1c: $1c
    jr z, jr_082_6e48                             ; $6e1d: $28 $29

    rla                                           ; $6e1f: $17
    jr jr_082_6e46                                ; $6e20: $18 $24

    dec h                                         ; $6e22: $25
    rlca                                          ; $6e23: $07
    ld h, a                                       ; $6e24: $67
    ld h, a                                       ; $6e25: $67
    ld h, l                                       ; $6e26: $65
    dec b                                         ; $6e27: $05
    dec b                                         ; $6e28: $05

jr_082_6e29:
    rlca                                          ; $6e29: $07
    rlca                                          ; $6e2a: $07
    ld h, l                                       ; $6e2b: $65
    dec b                                         ; $6e2c: $05
    rlca                                          ; $6e2d: $07
    rlca                                          ; $6e2e: $07
    ld [bc], a                                    ; $6e2f: $02
    rlca                                          ; $6e30: $07
    ld [bc], a                                    ; $6e31: $02
    ld [bc], a                                    ; $6e32: $02
    ld h, $27                                     ; $6e33: $26 $27
    jr nz, jr_082_6e56                            ; $6e35: $20 $1f

    add hl, hl                                    ; $6e37: $29
    jr z, jr_082_6e56                             ; $6e38: $28 $1c

    dec de                                        ; $6e3a: $1b
    dec h                                         ; $6e3b: $25
    inc h                                         ; $6e3c: $24
    jr jr_082_6e56                                ; $6e3d: $18 $17

    ld h, $27                                     ; $6e3f: $26 $27
    jr nz, @+$22                                  ; $6e41: $20 $20

    dec b                                         ; $6e43: $05
    dec b                                         ; $6e44: $05
    ld [bc], a                                    ; $6e45: $02

jr_082_6e46:
    ld [bc], a                                    ; $6e46: $02
    ld h, a                                       ; $6e47: $67

jr_082_6e48:
    ld h, a                                       ; $6e48: $67
    ld h, a                                       ; $6e49: $67
    ld h, a                                       ; $6e4a: $67
    ld h, a                                       ; $6e4b: $67
    ld h, a                                       ; $6e4c: $67
    ld h, l                                       ; $6e4d: $65
    ld h, l                                       ; $6e4e: $65
    ld [bc], a                                    ; $6e4f: $02
    ld [bc], a                                    ; $6e50: $02
    rlca                                          ; $6e51: $07
    ld h, l                                       ; $6e52: $65
    ld e, $1d                                     ; $6e53: $1e $1d
    dec d                                         ; $6e55: $15

jr_082_6e56:
    ld d, $1a                                     ; $6e56: $16 $1a
    add hl, de                                    ; $6e58: $19
    add hl, de                                    ; $6e59: $19
    ld a, [de]                                    ; $6e5a: $1a
    ld d, $15                                     ; $6e5b: $16 $15
    dec e                                         ; $6e5d: $1d
    ld e, $27                                     ; $6e5e: $1e $27
    ld h, $15                                     ; $6e60: $26 $15
    ld d, $02                                     ; $6e62: $16 $02
    dec b                                         ; $6e64: $05
    dec b                                         ; $6e65: $05
    dec b                                         ; $6e66: $05
    ld h, a                                       ; $6e67: $67
    ld h, d                                       ; $6e68: $62
    dec b                                         ; $6e69: $05
    ld [bc], a                                    ; $6e6a: $02
    ld h, l                                       ; $6e6b: $65
    ld h, l                                       ; $6e6c: $65
    ld h, l                                       ; $6e6d: $65
    ld h, l                                       ; $6e6e: $65
    ld h, l                                       ; $6e6f: $65
    ld h, a                                       ; $6e70: $67
    dec b                                         ; $6e71: $05
    dec b                                         ; $6e72: $05
    rla                                           ; $6e73: $17
    rla                                           ; $6e74: $17
    ld d, $15                                     ; $6e75: $16 $15
    dec de                                        ; $6e77: $1b
    jr @+$26                                      ; $6e78: $18 $24

    dec h                                         ; $6e7a: $25
    rra                                           ; $6e7b: $1f
    inc e                                         ; $6e7c: $1c
    jr z, jr_082_6ea8                             ; $6e7d: $28 $29

    rla                                           ; $6e7f: $17
    jr jr_082_6ea6                                ; $6e80: $18 $24

    dec h                                         ; $6e82: $25
    ld [bc], a                                    ; $6e83: $02
    ld h, l                                       ; $6e84: $65
    ld h, l                                       ; $6e85: $65
    ld h, l                                       ; $6e86: $65
    dec b                                         ; $6e87: $05
    dec b                                         ; $6e88: $05
    dec b                                         ; $6e89: $05
    dec b                                         ; $6e8a: $05
    ld h, l                                       ; $6e8b: $65
    dec b                                         ; $6e8c: $05
    ld [bc], a                                    ; $6e8d: $02
    dec b                                         ; $6e8e: $05
    dec b                                         ; $6e8f: $05
    rlca                                          ; $6e90: $07
    ld [bc], a                                    ; $6e91: $02
    ld [bc], a                                    ; $6e92: $02
    ld h, $27                                     ; $6e93: $26 $27
    jr nz, @+$21                                  ; $6e95: $20 $1f

    add hl, hl                                    ; $6e97: $29
    jr z, @+$1e                                   ; $6e98: $28 $1c

    dec de                                        ; $6e9a: $1b
    dec h                                         ; $6e9b: $25
    inc h                                         ; $6e9c: $24
    jr @+$19                                      ; $6e9d: $18 $17

    ld h, $27                                     ; $6e9f: $26 $27
    jr nz, jr_082_6ec3                            ; $6ea1: $20 $20

    rlca                                          ; $6ea3: $07
    ld [bc], a                                    ; $6ea4: $02
    ld [bc], a                                    ; $6ea5: $02

jr_082_6ea6:
    rlca                                          ; $6ea6: $07
    ld h, l                                       ; $6ea7: $65

jr_082_6ea8:
    ld h, d                                       ; $6ea8: $62
    ld h, a                                       ; $6ea9: $67
    ld h, d                                       ; $6eaa: $62
    ld h, d                                       ; $6eab: $62
    ld h, d                                       ; $6eac: $62
    ld h, d                                       ; $6ead: $62
    ld h, a                                       ; $6eae: $67
    ld [bc], a                                    ; $6eaf: $02
    rlca                                          ; $6eb0: $07
    ld [bc], a                                    ; $6eb1: $02
    ld h, d                                       ; $6eb2: $62
    and [hl]                                      ; $6eb3: $a6
    db $dd                                        ; $6eb4: $dd
    sbc $a6                                       ; $6eb5: $de $a6
    xor c                                         ; $6eb7: $a9
    xor h                                         ; $6eb8: $ac
    xor l                                         ; $6eb9: $ad
    sbc a                                         ; $6eba: $9f
    and b                                         ; $6ebb: $a0
    xor h                                         ; $6ebc: $ac
    xor l                                         ; $6ebd: $ad
    cp b                                          ; $6ebe: $b8
    or b                                          ; $6ebf: $b0
    or c                                          ; $6ec0: $b1
    or d                                          ; $6ec1: $b2
    and e                                         ; $6ec2: $a3

jr_082_6ec3:
    ld a, [bc]                                    ; $6ec3: $0a
    adc [hl]                                      ; $6ec4: $8e
    adc [hl]                                      ; $6ec5: $8e
    dec bc                                        ; $6ec6: $0b
    ld a, [bc]                                    ; $6ec7: $0a
    ld c, $0e                                     ; $6ec8: $0e $0e
    dec bc                                        ; $6eca: $0b
    ld a, [bc]                                    ; $6ecb: $0a
    ld c, $0e                                     ; $6ecc: $0e $0e
    dec bc                                        ; $6ece: $0b
    ld a, [bc]                                    ; $6ecf: $0a
    ld c, $0e                                     ; $6ed0: $0e $0e
    dec bc                                        ; $6ed2: $0b
    add hl, hl                                    ; $6ed3: $29
    jr z, jr_082_6ef2                             ; $6ed4: $28 $1c

    rra                                           ; $6ed6: $1f
    dec h                                         ; $6ed7: $25
    inc h                                         ; $6ed8: $24
    jr jr_082_6ef6                                ; $6ed9: $18 $1b

    dec d                                         ; $6edb: $15
    ld d, $17                                     ; $6edc: $16 $17
    rla                                           ; $6ede: $17
    add hl, de                                    ; $6edf: $19
    ld a, [de]                                    ; $6ee0: $1a
    dec de                                        ; $6ee1: $1b
    jr jr_082_6f46                                ; $6ee2: $18 $62

    ld h, d                                       ; $6ee4: $62
    ld h, d                                       ; $6ee5: $62
    ld [bc], a                                    ; $6ee6: $02
    ld h, a                                       ; $6ee7: $67
    ld h, d                                       ; $6ee8: $62
    ld h, a                                       ; $6ee9: $67
    ld h, d                                       ; $6eea: $62
    ld [bc], a                                    ; $6eeb: $02
    ld [bc], a                                    ; $6eec: $02
    ld [bc], a                                    ; $6eed: $02
    ld h, a                                       ; $6eee: $67
    dec b                                         ; $6eef: $05
    dec b                                         ; $6ef0: $05
    dec b                                         ; $6ef1: $05

jr_082_6ef2:
    dec b                                         ; $6ef2: $05
    xor c                                         ; $6ef3: $a9
    cp h                                          ; $6ef4: $bc
    cp l                                          ; $6ef5: $bd

jr_082_6ef6:
    xor c                                         ; $6ef6: $a9
    ld a, [de]                                    ; $6ef7: $1a
    or a                                          ; $6ef8: $b7
    cp b                                          ; $6ef9: $b8
    ld e, $16                                     ; $6efa: $1e $16
    dec d                                         ; $6efc: $15
    ld h, $27                                     ; $6efd: $26 $27
    inc h                                         ; $6eff: $24
    dec h                                         ; $6f00: $25
    add hl, hl                                    ; $6f01: $29
    jr z, jr_082_6f0e                             ; $6f02: $28 $0a

    ld a, [bc]                                    ; $6f04: $0a
    ld a, [bc]                                    ; $6f05: $0a
    dec bc                                        ; $6f06: $0b
    ld h, d                                       ; $6f07: $62
    ld a, [bc]                                    ; $6f08: $0a
    ld a, [bc]                                    ; $6f09: $0a
    ld h, e                                       ; $6f0a: $63
    ld h, d                                       ; $6f0b: $62
    ld h, d                                       ; $6f0c: $62
    rlca                                          ; $6f0d: $07

jr_082_6f0e:
    inc bc                                        ; $6f0e: $03
    dec b                                         ; $6f0f: $05
    ld [bc], a                                    ; $6f10: $02
    ld h, d                                       ; $6f11: $62
    ld h, e                                       ; $6f12: $63
    dec e                                         ; $6f13: $1d
    ld e, $1f                                     ; $6f14: $1e $1f
    inc e                                         ; $6f16: $1c
    dec d                                         ; $6f17: $15
    ld d, $17                                     ; $6f18: $16 $17
    jr jr_082_6f35                                ; $6f1a: $18 $19

    ld a, [de]                                    ; $6f1c: $1a
    dec de                                        ; $6f1d: $1b
    inc e                                         ; $6f1e: $1c
    dec e                                         ; $6f1f: $1d
    ld e, $1f                                     ; $6f20: $1e $1f
    jr nz, jr_082_6f89                            ; $6f22: $20 $65

    ld h, l                                       ; $6f24: $65
    ld h, l                                       ; $6f25: $65
    ld [bc], a                                    ; $6f26: $02
    rlca                                          ; $6f27: $07
    rlca                                          ; $6f28: $07
    dec b                                         ; $6f29: $05
    dec b                                         ; $6f2a: $05
    rlca                                          ; $6f2b: $07
    rlca                                          ; $6f2c: $07
    dec b                                         ; $6f2d: $05
    dec b                                         ; $6f2e: $05
    ld h, d                                       ; $6f2f: $62
    ld h, l                                       ; $6f30: $65
    ld h, a                                       ; $6f31: $67
    ld h, a                                       ; $6f32: $67
    jr z, @+$2b                                   ; $6f33: $28 $29

jr_082_6f35:
    dec h                                         ; $6f35: $25
    inc h                                         ; $6f36: $24
    inc h                                         ; $6f37: $24
    dec h                                         ; $6f38: $25
    ld h, $27                                     ; $6f39: $26 $27
    jr z, jr_082_6f66                             ; $6f3b: $28 $29

    add hl, hl                                    ; $6f3d: $29
    jr z, jr_082_6f67                             ; $6f3e: $28 $27

    ld h, $25                                     ; $6f40: $26 $25
    inc h                                         ; $6f42: $24
    dec b                                         ; $6f43: $05
    ld [bc], a                                    ; $6f44: $02
    ld h, d                                       ; $6f45: $62

jr_082_6f46:
    ld h, e                                       ; $6f46: $63
    dec b                                         ; $6f47: $05
    rlca                                          ; $6f48: $07
    ld [bc], a                                    ; $6f49: $02
    inc bc                                        ; $6f4a: $03
    dec b                                         ; $6f4b: $05
    ld [bc], a                                    ; $6f4c: $02
    ld h, d                                       ; $6f4d: $62
    ld h, e                                       ; $6f4e: $63
    ld h, a                                       ; $6f4f: $67
    ld h, a                                       ; $6f50: $67
    ld h, d                                       ; $6f51: $62
    ld h, e                                       ; $6f52: $63
    ld h, $27                                     ; $6f53: $26 $27
    jr nz, jr_082_6f76                            ; $6f55: $20 $1f

    add hl, hl                                    ; $6f57: $29
    jr z, jr_082_6f76                             ; $6f58: $28 $1c

    dec de                                        ; $6f5a: $1b
    dec h                                         ; $6f5b: $25
    inc h                                         ; $6f5c: $24
    jr jr_082_6f76                                ; $6f5d: $18 $17

    ld h, $27                                     ; $6f5f: $26 $27
    jr nz, @+$22                                  ; $6f61: $20 $20

    dec b                                         ; $6f63: $05
    dec b                                         ; $6f64: $05
    ld [bc], a                                    ; $6f65: $02

jr_082_6f66:
    rlca                                          ; $6f66: $07

jr_082_6f67:
    ld h, l                                       ; $6f67: $65
    ld h, d                                       ; $6f68: $62
    ld h, l                                       ; $6f69: $65
    ld h, a                                       ; $6f6a: $67
    ld h, d                                       ; $6f6b: $62
    ld h, a                                       ; $6f6c: $67
    ld h, d                                       ; $6f6d: $62
    ld h, a                                       ; $6f6e: $67
    dec b                                         ; $6f6f: $05
    dec b                                         ; $6f70: $05
    ld [bc], a                                    ; $6f71: $02
    ld h, a                                       ; $6f72: $67
    ld e, $1d                                     ; $6f73: $1e $1d
    dec d                                         ; $6f75: $15

jr_082_6f76:
    ld d, $1a                                     ; $6f76: $16 $1a
    add hl, de                                    ; $6f78: $19
    add hl, de                                    ; $6f79: $19
    ld a, [de]                                    ; $6f7a: $1a
    ld d, $15                                     ; $6f7b: $16 $15
    dec e                                         ; $6f7d: $1d
    ld e, $27                                     ; $6f7e: $1e $27
    ld h, $15                                     ; $6f80: $26 $15
    ld d, $02                                     ; $6f82: $16 $02
    rlca                                          ; $6f84: $07
    rlca                                          ; $6f85: $07
    inc bc                                        ; $6f86: $03
    ld h, a                                       ; $6f87: $67
    ld h, l                                       ; $6f88: $65

jr_082_6f89:
    ld [bc], a                                    ; $6f89: $02
    inc bc                                        ; $6f8a: $03
    ld h, d                                       ; $6f8b: $62
    ld h, d                                       ; $6f8c: $62
    ld h, d                                       ; $6f8d: $62
    ld h, e                                       ; $6f8e: $63
    ld h, a                                       ; $6f8f: $67
    ld h, a                                       ; $6f90: $67
    ld [bc], a                                    ; $6f91: $02
    inc bc                                        ; $6f92: $03
    db $ed                                        ; $6f93: $ed
    dec l                                         ; $6f94: $2d
    ld l, $0c                                     ; $6f95: $2e $0c
    db $ed                                        ; $6f97: $ed
    db $ed                                        ; $6f98: $ed
    db $ed                                        ; $6f99: $ed
    db $ed                                        ; $6f9a: $ed
    db $ed                                        ; $6f9b: $ed
    db $ed                                        ; $6f9c: $ed
    db $ed                                        ; $6f9d: $ed
    db $ed                                        ; $6f9e: $ed
    db $ed                                        ; $6f9f: $ed
    db $ed                                        ; $6fa0: $ed
    db $ed                                        ; $6fa1: $ed
    db $ed                                        ; $6fa2: $ed
    add b                                         ; $6fa3: $80
    add b                                         ; $6fa4: $80
    add b                                         ; $6fa5: $80
    add b                                         ; $6fa6: $80
    add b                                         ; $6fa7: $80
    add b                                         ; $6fa8: $80
    add b                                         ; $6fa9: $80
    add b                                         ; $6faa: $80
    add b                                         ; $6fab: $80
    add b                                         ; $6fac: $80
    add b                                         ; $6fad: $80
    add b                                         ; $6fae: $80
    add b                                         ; $6faf: $80
    add b                                         ; $6fb0: $80
    add b                                         ; $6fb1: $80
    add b                                         ; $6fb2: $80
    inc c                                         ; $6fb3: $0c
    inc c                                         ; $6fb4: $0c
    inc c                                         ; $6fb5: $0c
    cpl                                           ; $6fb6: $2f
    db $ed                                        ; $6fb7: $ed
    db $ed                                        ; $6fb8: $ed
    db $ed                                        ; $6fb9: $ed
    xor $ed                                       ; $6fba: $ee $ed
    db $ed                                        ; $6fbc: $ed
    db $ed                                        ; $6fbd: $ed
    xor $ed                                       ; $6fbe: $ee $ed
    db $ed                                        ; $6fc0: $ed
    db $ed                                        ; $6fc1: $ed
    xor $80                                       ; $6fc2: $ee $80
    add b                                         ; $6fc4: $80
    add b                                         ; $6fc5: $80
    add b                                         ; $6fc6: $80
    add b                                         ; $6fc7: $80
    add b                                         ; $6fc8: $80
    add b                                         ; $6fc9: $80
    add b                                         ; $6fca: $80
    add b                                         ; $6fcb: $80
    add b                                         ; $6fcc: $80
    add b                                         ; $6fcd: $80
    add b                                         ; $6fce: $80
    add b                                         ; $6fcf: $80
    add b                                         ; $6fd0: $80
    add b                                         ; $6fd1: $80
    add b                                         ; $6fd2: $80
    add hl, hl                                    ; $6fd3: $29
    jr z, jr_082_6ff2                             ; $6fd4: $28 $1c

    rra                                           ; $6fd6: $1f
    dec h                                         ; $6fd7: $25
    inc h                                         ; $6fd8: $24
    jr jr_082_6ff6                                ; $6fd9: $18 $1b

    dec d                                         ; $6fdb: $15
    ld d, $17                                     ; $6fdc: $16 $17
    rla                                           ; $6fde: $17
    add hl, de                                    ; $6fdf: $19
    ld a, [de]                                    ; $6fe0: $1a
    dec de                                        ; $6fe1: $1b
    jr jr_082_7046                                ; $6fe2: $18 $62

    ld h, a                                       ; $6fe4: $67
    ld h, a                                       ; $6fe5: $67
    ld [bc], a                                    ; $6fe6: $02
    ld h, d                                       ; $6fe7: $62
    ld h, d                                       ; $6fe8: $62
    ld h, l                                       ; $6fe9: $65
    ld h, d                                       ; $6fea: $62
    ld [bc], a                                    ; $6feb: $02
    ld [bc], a                                    ; $6fec: $02
    ld [bc], a                                    ; $6fed: $02
    ld h, a                                       ; $6fee: $67
    ld [bc], a                                    ; $6fef: $02
    ld [bc], a                                    ; $6ff0: $02
    rlca                                          ; $6ff1: $07

jr_082_6ff2:
    rlca                                          ; $6ff2: $07
    ld e, $1d                                     ; $6ff3: $1e $1d
    add hl, de                                    ; $6ff5: $19

jr_082_6ff6:
    ld a, [de]                                    ; $6ff6: $1a
    ld a, [de]                                    ; $6ff7: $1a
    add hl, de                                    ; $6ff8: $19
    dec e                                         ; $6ff9: $1d
    ld e, $16                                     ; $6ffa: $1e $16
    dec d                                         ; $6ffc: $15
    ld h, $27                                     ; $6ffd: $26 $27
    inc h                                         ; $6fff: $24
    dec h                                         ; $7000: $25
    add hl, hl                                    ; $7001: $29
    jr z, jr_082_7006                             ; $7002: $28 $02

    dec b                                         ; $7004: $05
    dec b                                         ; $7005: $05

jr_082_7006:
    ld [bc], a                                    ; $7006: $02
    ld h, l                                       ; $7007: $65
    ld h, d                                       ; $7008: $62
    ld h, d                                       ; $7009: $62
    ld h, l                                       ; $700a: $65
    ld h, d                                       ; $700b: $62
    ld h, d                                       ; $700c: $62
    rlca                                          ; $700d: $07
    rlca                                          ; $700e: $07
    ld [bc], a                                    ; $700f: $02
    ld [bc], a                                    ; $7010: $02
    ld h, a                                       ; $7011: $67
    ld h, l                                       ; $7012: $65
    dec e                                         ; $7013: $1d
    ld e, $1f                                     ; $7014: $1e $1f
    inc e                                         ; $7016: $1c
    add l                                         ; $7017: $85
    add l                                         ; $7018: $85
    add l                                         ; $7019: $85
    add l                                         ; $701a: $85
    adc $d0                                       ; $701b: $ce $d0
    adc $d0                                       ; $701d: $ce $d0
    db $ed                                        ; $701f: $ed
    db $ed                                        ; $7020: $ed
    db $ed                                        ; $7021: $ed
    db $ed                                        ; $7022: $ed
    ld h, d                                       ; $7023: $62
    ld h, d                                       ; $7024: $62
    ld h, d                                       ; $7025: $62
    rlca                                          ; $7026: $07
    add hl, bc                                    ; $7027: $09
    add hl, bc                                    ; $7028: $09
    add hl, bc                                    ; $7029: $09
    add hl, bc                                    ; $702a: $09
    add hl, bc                                    ; $702b: $09
    add hl, bc                                    ; $702c: $09
    add hl, bc                                    ; $702d: $09
    add hl, bc                                    ; $702e: $09
    ld bc, $0101                                  ; $702f: $01 $01 $01
    ld bc, $2928                                  ; $7032: $01 $28 $29
    dec h                                         ; $7035: $25
    inc h                                         ; $7036: $24
    add l                                         ; $7037: $85
    add l                                         ; $7038: $85
    rst $18                                       ; $7039: $df
    daa                                           ; $703a: $27
    adc $d0                                       ; $703b: $ce $d0
    ldh [$28], a                                  ; $703d: $e0 $28
    db $ed                                        ; $703f: $ed
    db $ed                                        ; $7040: $ed
    ldh [rNR50], a                                ; $7041: $e0 $24
    ld [bc], a                                    ; $7043: $02
    rlca                                          ; $7044: $07
    ld h, a                                       ; $7045: $67

jr_082_7046:
    ld h, l                                       ; $7046: $65
    add hl, bc                                    ; $7047: $09
    add hl, bc                                    ; $7048: $09
    add hl, bc                                    ; $7049: $09
    ld [bc], a                                    ; $704a: $02
    add hl, bc                                    ; $704b: $09
    add hl, bc                                    ; $704c: $09
    add hl, bc                                    ; $704d: $09
    ld h, e                                       ; $704e: $63
    ld bc, $0901                                  ; $704f: $01 $01 $09
    ld h, e                                       ; $7052: $63
    db $ed                                        ; $7053: $ed
    db $ed                                        ; $7054: $ed
    db $ed                                        ; $7055: $ed
    db $ed                                        ; $7056: $ed
    db $ed                                        ; $7057: $ed
    db $ed                                        ; $7058: $ed
    db $ed                                        ; $7059: $ed
    db $ed                                        ; $705a: $ed
    pop hl                                        ; $705b: $e1
    ld [c], a                                     ; $705c: $e2
    db $e3                                        ; $705d: $e3
    ld [c], a                                     ; $705e: $e2
    db $e4                                        ; $705f: $e4
    push hl                                       ; $7060: $e5
    db $e4                                        ; $7061: $e4
    push hl                                       ; $7062: $e5
    ld bc, $0101                                  ; $7063: $01 $01 $01
    ld bc, $0101                                  ; $7066: $01 $01 $01
    ld bc, $0901                                  ; $7069: $01 $01 $09
    add hl, bc                                    ; $706c: $09
    add hl, bc                                    ; $706d: $09
    add hl, bc                                    ; $706e: $09
    add hl, bc                                    ; $706f: $09
    add hl, bc                                    ; $7070: $09
    add hl, bc                                    ; $7071: $09
    add hl, bc                                    ; $7072: $09
    db $ed                                        ; $7073: $ed
    db $ed                                        ; $7074: $ed
    ldh [rNR21], a                                ; $7075: $e0 $16
    db $ed                                        ; $7077: $ed
    db $ed                                        ; $7078: $ed
    ldh [rNR30], a                                ; $7079: $e0 $1a
    db $e3                                        ; $707b: $e3
    and $e0                                       ; $707c: $e6 $e0
    ld e, $e7                                     ; $707e: $1e $e7
    add sp, -$20                                  ; $7080: $e8 $e0
    ld d, $01                                     ; $7082: $16 $01
    ld bc, $0309                                  ; $7084: $01 $09 $03
    ld bc, $0901                                  ; $7087: $01 $01 $09
    inc bc                                        ; $708a: $03
    add hl, bc                                    ; $708b: $09
    add hl, bc                                    ; $708c: $09
    add hl, bc                                    ; $708d: $09
    ld h, e                                       ; $708e: $63
    add hl, bc                                    ; $708f: $09
    add hl, bc                                    ; $7090: $09
    add hl, bc                                    ; $7091: $09
    inc bc                                        ; $7092: $03
    jp hl                                         ; $7093: $e9


    ld [$eceb], a                                 ; $7094: $ea $eb $ec
    db $ed                                        ; $7097: $ed
    xor $ef                                       ; $7098: $ee $ef
    ldh a, [$f1]                                  ; $709a: $f0 $f1
    ld a, [c]                                     ; $709c: $f2
    di                                            ; $709d: $f3
    db $f4                                        ; $709e: $f4
    push af                                       ; $709f: $f5
    or $f5                                        ; $70a0: $f6 $f5
    rst $30                                       ; $70a2: $f7
    add hl, bc                                    ; $70a3: $09
    add hl, bc                                    ; $70a4: $09
    add hl, bc                                    ; $70a5: $09
    add hl, bc                                    ; $70a6: $09
    add hl, bc                                    ; $70a7: $09
    add hl, bc                                    ; $70a8: $09
    add hl, bc                                    ; $70a9: $09
    add hl, bc                                    ; $70aa: $09
    add hl, bc                                    ; $70ab: $09
    add hl, bc                                    ; $70ac: $09
    add hl, bc                                    ; $70ad: $09
    add hl, bc                                    ; $70ae: $09
    add hl, bc                                    ; $70af: $09
    add hl, bc                                    ; $70b0: $09
    add hl, bc                                    ; $70b1: $09
    add hl, bc                                    ; $70b2: $09
    ld hl, sp-$07                                 ; $70b3: $f8 $f9
    ldh [rNR30], a                                ; $70b5: $e0 $1a
    ld a, [$e0fb]                                 ; $70b7: $fa $fb $e0
    ld e, $fc                                     ; $70ba: $1e $fc
    db $fd                                        ; $70bc: $fd
    ldh [$27], a                                  ; $70bd: $e0 $27
    push af                                       ; $70bf: $f5
    cp $e0                                        ; $70c0: $fe $e0
    jr z, jr_082_70cd                             ; $70c2: $28 $09

    add hl, bc                                    ; $70c4: $09
    add hl, bc                                    ; $70c5: $09
    inc bc                                        ; $70c6: $03
    add hl, bc                                    ; $70c7: $09
    add hl, bc                                    ; $70c8: $09
    add hl, bc                                    ; $70c9: $09
    ld h, e                                       ; $70ca: $63
    add hl, bc                                    ; $70cb: $09
    add hl, bc                                    ; $70cc: $09

jr_082_70cd:
    add hl, bc                                    ; $70cd: $09
    inc bc                                        ; $70ce: $03
    add hl, bc                                    ; $70cf: $09
    add hl, bc                                    ; $70d0: $09
    add hl, bc                                    ; $70d1: $09
    ld h, e                                       ; $70d2: $63
    dec de                                        ; $70d3: $1b
    inc e                                         ; $70d4: $1c
    jr z, jr_082_7100                             ; $70d5: $28 $29

    rra                                           ; $70d7: $1f
    jr nz, jr_082_7101                            ; $70d8: $20 $27

    ld h, $20                                     ; $70da: $26 $20
    rra                                           ; $70dc: $1f
    ld e, $1d                                     ; $70dd: $1e $1d
    inc e                                         ; $70df: $1c
    dec de                                        ; $70e0: $1b
    ld a, [de]                                    ; $70e1: $1a
    add hl, de                                    ; $70e2: $19
    ld [bc], a                                    ; $70e3: $02
    ld [bc], a                                    ; $70e4: $02
    ld [bc], a                                    ; $70e5: $02
    dec b                                         ; $70e6: $05
    ld h, l                                       ; $70e7: $65
    ld h, l                                       ; $70e8: $65
    ld h, l                                       ; $70e9: $65
    ld h, d                                       ; $70ea: $62
    rlca                                          ; $70eb: $07
    dec b                                         ; $70ec: $05
    dec b                                         ; $70ed: $05
    rlca                                          ; $70ee: $07
    ld h, l                                       ; $70ef: $65
    ld h, l                                       ; $70f0: $65
    ld h, l                                       ; $70f1: $65
    ld h, l                                       ; $70f2: $65
    add hl, hl                                    ; $70f3: $29
    jr z, jr_082_7112                             ; $70f4: $28 $1c

    rra                                           ; $70f6: $1f
    dec h                                         ; $70f7: $25
    inc h                                         ; $70f8: $24
    jr jr_082_7116                                ; $70f9: $18 $1b

    dec d                                         ; $70fb: $15
    ld d, $17                                     ; $70fc: $16 $17
    rla                                           ; $70fe: $17
    add hl, de                                    ; $70ff: $19

jr_082_7100:
    ld a, [de]                                    ; $7100: $1a

jr_082_7101:
    dec de                                        ; $7101: $1b
    jr jr_082_7166                                ; $7102: $18 $62

    ld h, a                                       ; $7104: $67
    ld h, l                                       ; $7105: $65
    dec b                                         ; $7106: $05
    ld h, l                                       ; $7107: $65
    ld h, d                                       ; $7108: $62
    ld h, d                                       ; $7109: $62
    ld h, l                                       ; $710a: $65
    rlca                                          ; $710b: $07
    ld [bc], a                                    ; $710c: $02
    ld [bc], a                                    ; $710d: $02
    ld h, l                                       ; $710e: $65
    dec b                                         ; $710f: $05
    dec b                                         ; $7110: $05
    dec b                                         ; $7111: $05

jr_082_7112:
    ld [bc], a                                    ; $7112: $02
    ld e, $1d                                     ; $7113: $1e $1d
    add hl, de                                    ; $7115: $19

jr_082_7116:
    ld a, [de]                                    ; $7116: $1a
    ld a, [de]                                    ; $7117: $1a
    add hl, de                                    ; $7118: $19
    dec e                                         ; $7119: $1d
    ld e, $16                                     ; $711a: $1e $16
    dec d                                         ; $711c: $15
    ld h, $27                                     ; $711d: $26 $27
    inc h                                         ; $711f: $24
    dec h                                         ; $7120: $25
    add hl, hl                                    ; $7121: $29
    jr z, jr_082_7126                             ; $7122: $28 $02

    dec b                                         ; $7124: $05
    dec b                                         ; $7125: $05

jr_082_7126:
    ld [bc], a                                    ; $7126: $02
    ld h, d                                       ; $7127: $62
    ld h, a                                       ; $7128: $67
    ld h, d                                       ; $7129: $62
    ld h, l                                       ; $712a: $65
    ld h, d                                       ; $712b: $62
    ld h, d                                       ; $712c: $62
    ld [bc], a                                    ; $712d: $02
    ld [bc], a                                    ; $712e: $02
    ld [bc], a                                    ; $712f: $02
    ld [bc], a                                    ; $7130: $02
    ld h, l                                       ; $7131: $65
    ld h, d                                       ; $7132: $62
    dec de                                        ; $7133: $1b
    inc e                                         ; $7134: $1c
    jr z, @+$2b                                   ; $7135: $28 $29

    rra                                           ; $7137: $1f
    xor c                                         ; $7138: $a9
    sbc [hl]                                      ; $7139: $9e
    ld h, $b8                                     ; $713a: $26 $b8
    and [hl]                                      ; $713c: $a6
    cp h                                          ; $713d: $bc
    cp b                                          ; $713e: $b8
    and d                                         ; $713f: $a2
    rst $38                                       ; $7140: $ff
    nop                                           ; $7141: $00
    and d                                         ; $7142: $a2
    dec b                                         ; $7143: $05
    ld [bc], a                                    ; $7144: $02
    ld [bc], a                                    ; $7145: $02
    ld [bc], a                                    ; $7146: $02
    ld h, d                                       ; $7147: $62
    ld a, [bc]                                    ; $7148: $0a
    ld a, [bc]                                    ; $7149: $0a
    ld h, d                                       ; $714a: $62
    ld a, [bc]                                    ; $714b: $0a
    ld a, [bc]                                    ; $714c: $0a
    ld a, [bc]                                    ; $714d: $0a
    ld a, [bc]                                    ; $714e: $0a
    ld a, [bc]                                    ; $714f: $0a
    adc [hl]                                      ; $7150: $8e
    adc [hl]                                      ; $7151: $8e
    ld a, [bc]                                    ; $7152: $0a
    jr jr_082_716c                                ; $7153: $18 $17

    ld d, $15                                     ; $7155: $16 $15
    jr nz, @+$22                                  ; $7157: $20 $20

    daa                                           ; $7159: $27
    ld h, $1c                                     ; $715a: $26 $1c
    rra                                           ; $715c: $1f
    ld e, $1d                                     ; $715d: $1e $1d
    jr jr_082_717c                                ; $715f: $18 $1b

    ld a, [de]                                    ; $7161: $1a
    add hl, de                                    ; $7162: $19
    ld h, d                                       ; $7163: $62
    ld h, l                                       ; $7164: $65
    ld h, a                                       ; $7165: $67

jr_082_7166:
    ld h, a                                       ; $7166: $67
    ld [bc], a                                    ; $7167: $02
    ld h, a                                       ; $7168: $67
    ld h, d                                       ; $7169: $62
    ld h, l                                       ; $716a: $65
    ld h, d                                       ; $716b: $62

jr_082_716c:
    dec b                                         ; $716c: $05
    ld [bc], a                                    ; $716d: $02
    ld [bc], a                                    ; $716e: $02
    ld h, d                                       ; $716f: $62
    ld h, l                                       ; $7170: $65
    ld h, d                                       ; $7171: $62
    ld h, l                                       ; $7172: $65
    dec e                                         ; $7173: $1d
    ld e, $1f                                     ; $7174: $1e $1f
    inc e                                         ; $7176: $1c
    dec d                                         ; $7177: $15
    ld d, $17                                     ; $7178: $16 $17
    jr jr_082_7195                                ; $717a: $18 $19

jr_082_717c:
    ld a, [de]                                    ; $717c: $1a
    dec de                                        ; $717d: $1b
    inc e                                         ; $717e: $1c
    dec e                                         ; $717f: $1d
    ld e, $1f                                     ; $7180: $1e $1f
    jr nz, jr_082_71eb                            ; $7182: $20 $67

    ld h, l                                       ; $7184: $65
    ld h, l                                       ; $7185: $65
    dec b                                         ; $7186: $05
    dec b                                         ; $7187: $05
    dec b                                         ; $7188: $05
    ld [bc], a                                    ; $7189: $02
    ld [bc], a                                    ; $718a: $02
    rlca                                          ; $718b: $07
    dec b                                         ; $718c: $05
    ld [bc], a                                    ; $718d: $02
    ld [bc], a                                    ; $718e: $02
    ld h, d                                       ; $718f: $62
    ld h, a                                       ; $7190: $67
    ld h, a                                       ; $7191: $67
    ld h, l                                       ; $7192: $65
    jr z, jr_082_71be                             ; $7193: $28 $29

jr_082_7195:
    dec h                                         ; $7195: $25
    xor c                                         ; $7196: $a9
    inc h                                         ; $7197: $24
    dec h                                         ; $7198: $25
    ld h, $bc                                     ; $7199: $26 $bc
    jr z, jr_082_71c6                             ; $719b: $28 $29

    ld bc, $27a1                                  ; $719d: $01 $a1 $27
    ld h, $25                                     ; $71a0: $26 $25
    or l                                          ; $71a2: $b5
    ld [bc], a                                    ; $71a3: $02
    dec b                                         ; $71a4: $05
    ld h, d                                       ; $71a5: $62
    ld a, [bc]                                    ; $71a6: $0a
    dec b                                         ; $71a7: $05
    ld [bc], a                                    ; $71a8: $02
    ld [bc], a                                    ; $71a9: $02
    ld a, [bc]                                    ; $71aa: $0a
    ld [bc], a                                    ; $71ab: $02
    ld [bc], a                                    ; $71ac: $02
    ld a, [bc]                                    ; $71ad: $0a
    ld a, [bc]                                    ; $71ae: $0a
    ld h, d                                       ; $71af: $62
    ld h, d                                       ; $71b0: $62
    ld h, d                                       ; $71b1: $62
    dec bc                                        ; $71b2: $0b
    ld [bc], a                                    ; $71b3: $02
    inc bc                                        ; $71b4: $03
    inc b                                         ; $71b5: $04
    dec b                                         ; $71b6: $05
    ld b, $07                                     ; $71b7: $06 $07
    ld [$0a09], sp                                ; $71b9: $08 $09 $0a
    dec bc                                        ; $71bc: $0b
    inc c                                         ; $71bd: $0c

jr_082_71be:
    dec c                                         ; $71be: $0d
    ld c, $0f                                     ; $71bf: $0e $0f
    db $10                                        ; $71c1: $10
    ld de, $8e8e                                  ; $71c2: $11 $8e $8e
    adc [hl]                                      ; $71c5: $8e

jr_082_71c6:
    adc [hl]                                      ; $71c6: $8e
    adc [hl]                                      ; $71c7: $8e
    adc [hl]                                      ; $71c8: $8e
    adc [hl]                                      ; $71c9: $8e
    adc [hl]                                      ; $71ca: $8e
    ld c, $0e                                     ; $71cb: $0e $0e
    ld c, $0e                                     ; $71cd: $0e $0e
    ld c, $0e                                     ; $71cf: $0e $0e
    ld c, $0e                                     ; $71d1: $0e $0e
    rla                                           ; $71d3: $17
    rla                                           ; $71d4: $17
    ld d, $15                                     ; $71d5: $16 $15
    dec de                                        ; $71d7: $1b
    jr @+$26                                      ; $71d8: $18 $24

    dec h                                         ; $71da: $25
    rra                                           ; $71db: $1f
    inc e                                         ; $71dc: $1c
    jr z, jr_082_7208                             ; $71dd: $28 $29

    rla                                           ; $71df: $17
    jr jr_082_7206                                ; $71e0: $18 $24

    dec h                                         ; $71e2: $25
    ld [bc], a                                    ; $71e3: $02
    ld h, l                                       ; $71e4: $65
    ld h, l                                       ; $71e5: $65
    ld h, l                                       ; $71e6: $65
    ld [bc], a                                    ; $71e7: $02
    ld [bc], a                                    ; $71e8: $02
    ld [bc], a                                    ; $71e9: $02
    ld [bc], a                                    ; $71ea: $02

jr_082_71eb:
    ld h, d                                       ; $71eb: $62
    rlca                                          ; $71ec: $07
    dec b                                         ; $71ed: $05
    ld [bc], a                                    ; $71ee: $02
    ld [bc], a                                    ; $71ef: $02
    rlca                                          ; $71f0: $07
    ld [bc], a                                    ; $71f1: $02
    ld [bc], a                                    ; $71f2: $02
    ld h, $27                                     ; $71f3: $26 $27
    jr nz, jr_082_7216                            ; $71f5: $20 $1f

    add hl, hl                                    ; $71f7: $29
    jr z, jr_082_7216                             ; $71f8: $28 $1c

    dec de                                        ; $71fa: $1b
    dec h                                         ; $71fb: $25
    inc h                                         ; $71fc: $24
    jr jr_082_7216                                ; $71fd: $18 $17

    ld h, $27                                     ; $71ff: $26 $27
    jr nz, @+$22                                  ; $7201: $20 $20

    rlca                                          ; $7203: $07
    ld [bc], a                                    ; $7204: $02
    rlca                                          ; $7205: $07

jr_082_7206:
    ld [bc], a                                    ; $7206: $02
    ld h, a                                       ; $7207: $67

jr_082_7208:
    ld h, d                                       ; $7208: $62
    ld h, d                                       ; $7209: $62
    ld h, d                                       ; $720a: $62
    ld h, l                                       ; $720b: $65
    ld h, a                                       ; $720c: $67
    ld h, d                                       ; $720d: $62
    ld h, a                                       ; $720e: $67
    dec b                                         ; $720f: $05
    rlca                                          ; $7210: $07
    rlca                                          ; $7211: $07
    ld h, a                                       ; $7212: $67
    ld e, $1d                                     ; $7213: $1e $1d
    dec d                                         ; $7215: $15

jr_082_7216:
    sbc [hl]                                      ; $7216: $9e
    ld a, [de]                                    ; $7217: $1a
    add hl, de                                    ; $7218: $19
    add hl, de                                    ; $7219: $19
    ld a, [de]                                    ; $721a: $1a
    ld d, $15                                     ; $721b: $16 $15
    dec e                                         ; $721d: $1d
    ld e, $27                                     ; $721e: $1e $27
    ld h, $15                                     ; $7220: $26 $15
    ld d, $02                                     ; $7222: $16 $02
    dec b                                         ; $7224: $05
    ld [bc], a                                    ; $7225: $02
    dec bc                                        ; $7226: $0b
    ld h, l                                       ; $7227: $65
    ld h, d                                       ; $7228: $62
    ld [bc], a                                    ; $7229: $02
    inc bc                                        ; $722a: $03
    ld h, a                                       ; $722b: $67
    ld h, a                                       ; $722c: $67
    ld h, a                                       ; $722d: $67
    ld h, a                                       ; $722e: $67
    ld h, d                                       ; $722f: $62
    ld h, d                                       ; $7230: $62
    ld [bc], a                                    ; $7231: $02
    ld [bc], a                                    ; $7232: $02
    ld [de], a                                    ; $7233: $12
    inc de                                        ; $7234: $13
    inc d                                         ; $7235: $14
    dec d                                         ; $7236: $15
    cp b                                          ; $7237: $b8
    or b                                          ; $7238: $b0
    and c                                         ; $7239: $a1
    cp b                                          ; $723a: $b8
    rra                                           ; $723b: $1f
    xor [hl]                                      ; $723c: $ae
    xor a                                         ; $723d: $af
    add hl, hl                                    ; $723e: $29
    rla                                           ; $723f: $17
    jr jr_082_7266                                ; $7240: $18 $24

    dec h                                         ; $7242: $25
    ld c, $0e                                     ; $7243: $0e $0e
    ld c, $0e                                     ; $7245: $0e $0e
    dec bc                                        ; $7247: $0b
    dec bc                                        ; $7248: $0b
    dec bc                                        ; $7249: $0b
    dec bc                                        ; $724a: $0b
    ld h, a                                       ; $724b: $67
    ld a, [bc]                                    ; $724c: $0a
    ld a, [bc]                                    ; $724d: $0a
    ld [bc], a                                    ; $724e: $02
    ld [bc], a                                    ; $724f: $02
    dec b                                         ; $7250: $05
    dec b                                         ; $7251: $05
    ld [bc], a                                    ; $7252: $02
    dec de                                        ; $7253: $1b
    inc e                                         ; $7254: $1c
    jr z, jr_082_7280                             ; $7255: $28 $29

    rra                                           ; $7257: $1f
    jr nz, jr_082_7281                            ; $7258: $20 $27

    ld h, $20                                     ; $725a: $26 $20
    rra                                           ; $725c: $1f
    ld e, $1d                                     ; $725d: $1e $1d
    inc e                                         ; $725f: $1c
    dec de                                        ; $7260: $1b
    ld a, [de]                                    ; $7261: $1a
    add hl, de                                    ; $7262: $19
    ld [bc], a                                    ; $7263: $02
    ld [bc], a                                    ; $7264: $02
    rlca                                          ; $7265: $07

jr_082_7266:
    rlca                                          ; $7266: $07
    ld h, d                                       ; $7267: $62
    ld h, a                                       ; $7268: $67
    ld h, a                                       ; $7269: $67
    ld h, a                                       ; $726a: $67
    rlca                                          ; $726b: $07
    dec b                                         ; $726c: $05
    ld [bc], a                                    ; $726d: $02
    ld [bc], a                                    ; $726e: $02
    ld h, d                                       ; $726f: $62
    ld h, d                                       ; $7270: $62

Jump_082_7271:
    ld h, a                                       ; $7271: $67
    ld h, a                                       ; $7272: $67
    add hl, hl                                    ; $7273: $29
    jr z, jr_082_7292                             ; $7274: $28 $1c

    rra                                           ; $7276: $1f
    dec h                                         ; $7277: $25
    inc h                                         ; $7278: $24
    jr jr_082_7296                                ; $7279: $18 $1b

    dec d                                         ; $727b: $15
    ld d, $17                                     ; $727c: $16 $17
    rla                                           ; $727e: $17
    add hl, de                                    ; $727f: $19

jr_082_7280:
    ld a, [de]                                    ; $7280: $1a

jr_082_7281:
    dec de                                        ; $7281: $1b
    jr jr_082_72eb                                ; $7282: $18 $67

    ld h, a                                       ; $7284: $67
    ld h, a                                       ; $7285: $67
    rlca                                          ; $7286: $07
    ld h, a                                       ; $7287: $67
    ld h, a                                       ; $7288: $67
    ld h, a                                       ; $7289: $67
    ld h, a                                       ; $728a: $67
    rlca                                          ; $728b: $07
    rlca                                          ; $728c: $07
    rlca                                          ; $728d: $07
    ld h, a                                       ; $728e: $67
    ld [bc], a                                    ; $728f: $02
    ld [bc], a                                    ; $7290: $02
    ld [bc], a                                    ; $7291: $02

jr_082_7292:
    dec b                                         ; $7292: $05
    ld e, $1d                                     ; $7293: $1e $1d
    add hl, de                                    ; $7295: $19

jr_082_7296:
    ld a, [de]                                    ; $7296: $1a
    ld a, [de]                                    ; $7297: $1a
    add hl, de                                    ; $7298: $19
    dec e                                         ; $7299: $1d
    ld e, $16                                     ; $729a: $1e $16
    dec d                                         ; $729c: $15
    ld h, $27                                     ; $729d: $26 $27
    inc h                                         ; $729f: $24
    dec h                                         ; $72a0: $25
    add hl, hl                                    ; $72a1: $29
    jr z, jr_082_72ab                             ; $72a2: $28 $07

    rlca                                          ; $72a4: $07
    rlca                                          ; $72a5: $07
    dec b                                         ; $72a6: $05
    ld h, l                                       ; $72a7: $65
    ld h, a                                       ; $72a8: $67
    ld h, l                                       ; $72a9: $65
    ld h, l                                       ; $72aa: $65

jr_082_72ab:
    ld h, l                                       ; $72ab: $65
    ld h, l                                       ; $72ac: $65
    dec b                                         ; $72ad: $05
    dec b                                         ; $72ae: $05
    dec b                                         ; $72af: $05
    dec b                                         ; $72b0: $05
    ld h, l                                       ; $72b1: $65
    ld h, l                                       ; $72b2: $65
    dec de                                        ; $72b3: $1b
    inc e                                         ; $72b4: $1c
    jr z, jr_082_72e0                             ; $72b5: $28 $29

    rra                                           ; $72b7: $1f
    jr nz, jr_082_72e1                            ; $72b8: $20 $27

    ld h, $20                                     ; $72ba: $26 $20
    rra                                           ; $72bc: $1f
    ld e, $1d                                     ; $72bd: $1e $1d
    inc e                                         ; $72bf: $1c
    dec de                                        ; $72c0: $1b
    ld a, [de]                                    ; $72c1: $1a
    add hl, de                                    ; $72c2: $19
    rlca                                          ; $72c3: $07
    rlca                                          ; $72c4: $07
    dec b                                         ; $72c5: $05
    dec b                                         ; $72c6: $05
    ld h, l                                       ; $72c7: $65
    ld h, l                                       ; $72c8: $65
    ld h, l                                       ; $72c9: $65
    ld h, l                                       ; $72ca: $65
    dec b                                         ; $72cb: $05

jr_082_72cc:
    dec b                                         ; $72cc: $05
    rlca                                          ; $72cd: $07
    rlca                                          ; $72ce: $07
    ld h, l                                       ; $72cf: $65
    ld h, d                                       ; $72d0: $62
    ld h, d                                       ; $72d1: $62
    ld h, l                                       ; $72d2: $65
    add hl, hl                                    ; $72d3: $29
    jr z, jr_082_72f2                             ; $72d4: $28 $1c

    rra                                           ; $72d6: $1f
    dec h                                         ; $72d7: $25
    inc h                                         ; $72d8: $24
    jr jr_082_72f6                                ; $72d9: $18 $1b

    dec d                                         ; $72db: $15
    ld d, $17                                     ; $72dc: $16 $17
    rla                                           ; $72de: $17
    add hl, de                                    ; $72df: $19

jr_082_72e0:
    ld a, [de]                                    ; $72e0: $1a

jr_082_72e1:
    dec de                                        ; $72e1: $1b
    jr jr_082_7346                                ; $72e2: $18 $62

    ld h, d                                       ; $72e4: $62
    ld h, d                                       ; $72e5: $62
    rlca                                          ; $72e6: $07
    ld h, d                                       ; $72e7: $62
    ld h, d                                       ; $72e8: $62
    ld h, d                                       ; $72e9: $62
    ld h, a                                       ; $72ea: $67

jr_082_72eb:
    ld [bc], a                                    ; $72eb: $02
    ld [bc], a                                    ; $72ec: $02
    dec b                                         ; $72ed: $05
    ld h, a                                       ; $72ee: $67
    ld [bc], a                                    ; $72ef: $02
    dec b                                         ; $72f0: $05
    dec b                                         ; $72f1: $05

jr_082_72f2:
    ld [bc], a                                    ; $72f2: $02
    ld e, $1d                                     ; $72f3: $1e $1d
    add hl, de                                    ; $72f5: $19

jr_082_72f6:
    ld a, [de]                                    ; $72f6: $1a
    ld a, [de]                                    ; $72f7: $1a
    add hl, de                                    ; $72f8: $19
    dec e                                         ; $72f9: $1d
    ld e, $16                                     ; $72fa: $1e $16
    dec d                                         ; $72fc: $15
    ld h, $27                                     ; $72fd: $26 $27
    inc h                                         ; $72ff: $24
    dec h                                         ; $7300: $25
    add hl, hl                                    ; $7301: $29
    jr z, jr_082_730b                             ; $7302: $28 $07

    ld [bc], a                                    ; $7304: $02
    ld [bc], a                                    ; $7305: $02
    inc bc                                        ; $7306: $03
    ld h, d                                       ; $7307: $62
    ld h, l                                       ; $7308: $65
    ld h, d                                       ; $7309: $62
    ld h, e                                       ; $730a: $63

jr_082_730b:
    ld h, a                                       ; $730b: $67
    ld h, l                                       ; $730c: $65
    ld [bc], a                                    ; $730d: $02
    inc bc                                        ; $730e: $03
    ld [bc], a                                    ; $730f: $02
    ld [bc], a                                    ; $7310: $02
    ld h, d                                       ; $7311: $62
    ld h, e                                       ; $7312: $63
    sbc a                                         ; $7313: $9f
    ld e, $1f                                     ; $7314: $1e $1f
    inc e                                         ; $7316: $1c
    and [hl]                                      ; $7317: $a6
    ld d, $17                                     ; $7318: $16 $17
    jr jr_082_72cc                                ; $731a: $18 $b0

    xor [hl]                                      ; $731c: $ae
    dec de                                        ; $731d: $1b
    inc e                                         ; $731e: $1c
    and e                                         ; $731f: $a3
    ld e, $1f                                     ; $7320: $1e $1f
    jr nz, jr_082_732e                            ; $7322: $20 $0a

    ld h, d                                       ; $7324: $62
    ld h, d                                       ; $7325: $62
    ld [bc], a                                    ; $7326: $02
    ld a, [bc]                                    ; $7327: $0a
    ld [bc], a                                    ; $7328: $02
    dec b                                         ; $7329: $05
    ld [bc], a                                    ; $732a: $02
    ld a, [bc]                                    ; $732b: $0a
    ld a, [bc]                                    ; $732c: $0a
    ld [bc], a                                    ; $732d: $02

jr_082_732e:
    ld [bc], a                                    ; $732e: $02
    ld a, [bc]                                    ; $732f: $0a
    ld h, d                                       ; $7330: $62
    ld h, d                                       ; $7331: $62
    ld h, a                                       ; $7332: $67
    jr z, @+$2b                                   ; $7333: $28 $29

    dec h                                         ; $7335: $25
    inc h                                         ; $7336: $24
    inc h                                         ; $7337: $24
    dec h                                         ; $7338: $25
    ld h, $27                                     ; $7339: $26 $27
    jr z, jr_082_7366                             ; $733b: $28 $29

    add hl, hl                                    ; $733d: $29
    jr z, jr_082_7367                             ; $733e: $28 $27

    ld h, $25                                     ; $7340: $26 $25
    inc h                                         ; $7342: $24
    ld [bc], a                                    ; $7343: $02
    rlca                                          ; $7344: $07
    ld h, d                                       ; $7345: $62

jr_082_7346:
    ld h, e                                       ; $7346: $63
    dec b                                         ; $7347: $05
    ld [bc], a                                    ; $7348: $02
    ld [bc], a                                    ; $7349: $02
    inc bc                                        ; $734a: $03
    dec b                                         ; $734b: $05
    ld [bc], a                                    ; $734c: $02
    ld h, d                                       ; $734d: $62
    ld h, e                                       ; $734e: $63
    ld h, d                                       ; $734f: $62
    ld h, d                                       ; $7350: $62
    ld h, d                                       ; $7351: $62
    ld h, e                                       ; $7352: $63
    xor c                                         ; $7353: $a9
    daa                                           ; $7354: $27
    jr nz, jr_082_7376                            ; $7355: $20 $1f

    add hl, hl                                    ; $7357: $29
    jr z, jr_082_7376                             ; $7358: $28 $1c

    dec de                                        ; $735a: $1b
    dec h                                         ; $735b: $25
    inc h                                         ; $735c: $24
    jr jr_082_7376                                ; $735d: $18 $17

    ld h, $27                                     ; $735f: $26 $27
    jr nz, @+$22                                  ; $7361: $20 $20

    ld a, [bc]                                    ; $7363: $0a
    ld [bc], a                                    ; $7364: $02
    dec b                                         ; $7365: $05

jr_082_7366:
    ld [bc], a                                    ; $7366: $02

jr_082_7367:
    ld h, d                                       ; $7367: $62
    ld h, a                                       ; $7368: $67
    ld h, d                                       ; $7369: $62
    ld h, d                                       ; $736a: $62
    ld h, a                                       ; $736b: $67
    ld h, l                                       ; $736c: $65
    ld h, l                                       ; $736d: $65
    ld h, d                                       ; $736e: $62
    ld [bc], a                                    ; $736f: $02
    dec b                                         ; $7370: $05
    dec b                                         ; $7371: $05
    ld h, d                                       ; $7372: $62
    ld e, $1d                                     ; $7373: $1e $1d
    dec d                                         ; $7375: $15

jr_082_7376:
    ld d, $1a                                     ; $7376: $16 $1a
    add hl, de                                    ; $7378: $19
    add hl, de                                    ; $7379: $19
    ld a, [de]                                    ; $737a: $1a
    ld d, $15                                     ; $737b: $16 $15
    dec e                                         ; $737d: $1d
    ld e, $27                                     ; $737e: $1e $27
    ld h, $15                                     ; $7380: $26 $15
    ld d, $05                                     ; $7382: $16 $05
    rlca                                          ; $7384: $07
    ld [bc], a                                    ; $7385: $02
    inc bc                                        ; $7386: $03
    ld h, a                                       ; $7387: $67
    ld h, l                                       ; $7388: $65
    ld [bc], a                                    ; $7389: $02
    inc bc                                        ; $738a: $03
    ld h, d                                       ; $738b: $62
    ld h, d                                       ; $738c: $62
    ld h, d                                       ; $738d: $62
    ld h, e                                       ; $738e: $63
    ld h, l                                       ; $738f: $65
    ld h, l                                       ; $7390: $65
    ld [bc], a                                    ; $7391: $02
    inc bc                                        ; $7392: $03
    add hl, hl                                    ; $7393: $29
    jr z, jr_082_73b2                             ; $7394: $28 $1c

    rra                                           ; $7396: $1f
    dec h                                         ; $7397: $25
    inc h                                         ; $7398: $24
    jr jr_082_73b6                                ; $7399: $18 $1b

    dec d                                         ; $739b: $15
    ld d, $17                                     ; $739c: $16 $17
    rla                                           ; $739e: $17
    add hl, de                                    ; $739f: $19
    ld a, [de]                                    ; $73a0: $1a
    dec de                                        ; $73a1: $1b
    jr jr_082_7409                                ; $73a2: $18 $65

    ld h, l                                       ; $73a4: $65
    ld h, l                                       ; $73a5: $65
    dec b                                         ; $73a6: $05
    ld h, l                                       ; $73a7: $65
    ld h, d                                       ; $73a8: $62
    ld h, d                                       ; $73a9: $62
    ld h, l                                       ; $73aa: $65
    dec b                                         ; $73ab: $05
    dec b                                         ; $73ac: $05
    ld [bc], a                                    ; $73ad: $02
    ld h, d                                       ; $73ae: $62
    dec b                                         ; $73af: $05
    dec b                                         ; $73b0: $05
    ld [bc], a                                    ; $73b1: $02

jr_082_73b2:
    dec b                                         ; $73b2: $05
    ld e, $1d                                     ; $73b3: $1e $1d
    add hl, de                                    ; $73b5: $19

jr_082_73b6:
    ld a, [de]                                    ; $73b6: $1a
    ld a, [de]                                    ; $73b7: $1a
    add hl, de                                    ; $73b8: $19
    dec e                                         ; $73b9: $1d
    ld e, $16                                     ; $73ba: $1e $16
    dec d                                         ; $73bc: $15
    ld h, $27                                     ; $73bd: $26 $27
    inc h                                         ; $73bf: $24
    dec h                                         ; $73c0: $25
    add hl, hl                                    ; $73c1: $29
    jr z, jr_082_73c9                             ; $73c2: $28 $05

    ld [bc], a                                    ; $73c4: $02
    dec b                                         ; $73c5: $05
    inc bc                                        ; $73c6: $03
    ld h, l                                       ; $73c7: $65
    ld h, l                                       ; $73c8: $65

jr_082_73c9:
    ld h, a                                       ; $73c9: $67
    ld h, e                                       ; $73ca: $63
    ld h, l                                       ; $73cb: $65
    ld h, a                                       ; $73cc: $67
    dec b                                         ; $73cd: $05
    inc bc                                        ; $73ce: $03
    rlca                                          ; $73cf: $07
    dec b                                         ; $73d0: $05

jr_082_73d1:
    ld h, a                                       ; $73d1: $67
    ld h, e                                       ; $73d2: $63
    ld d, $17                                     ; $73d3: $16 $17
    ld d, $18                                     ; $73d5: $16 $18
    add hl, de                                    ; $73d7: $19
    ld a, [de]                                    ; $73d8: $1a
    dec de                                        ; $73d9: $1b
    inc e                                         ; $73da: $1c
    dec e                                         ; $73db: $1d
    ld e, $1f                                     ; $73dc: $1e $1f
    jr nz, jr_082_7401                            ; $73de: $20 $21

    rra                                           ; $73e0: $1f
    jr nz, jr_082_7405                            ; $73e1: $20 $22

    add hl, bc                                    ; $73e3: $09
    add hl, bc                                    ; $73e4: $09
    add hl, bc                                    ; $73e5: $09
    add hl, bc                                    ; $73e6: $09
    add hl, bc                                    ; $73e7: $09
    add hl, bc                                    ; $73e8: $09
    add hl, bc                                    ; $73e9: $09
    add hl, bc                                    ; $73ea: $09
    add hl, bc                                    ; $73eb: $09
    add hl, bc                                    ; $73ec: $09
    add hl, bc                                    ; $73ed: $09
    add hl, bc                                    ; $73ee: $09
    add hl, bc                                    ; $73ef: $09
    add hl, bc                                    ; $73f0: $09
    add hl, bc                                    ; $73f1: $09
    add hl, bc                                    ; $73f2: $09
    ld d, $23                                     ; $73f3: $16 $23
    inc h                                         ; $73f5: $24
    add l                                         ; $73f6: $85
    dec h                                         ; $73f7: $25
    ld h, $95                                     ; $73f8: $26 $95
    sub h                                         ; $73fa: $94
    ld [hl+], a                                   ; $73fb: $22
    daa                                           ; $73fc: $27
    jr z, jr_082_73d1                             ; $73fd: $28 $d2

    add hl, hl                                    ; $73ff: $29
    ld a, [hl+]                                   ; $7400: $2a

jr_082_7401:
    dec hl                                        ; $7401: $2b
    push de                                       ; $7402: $d5
    add hl, bc                                    ; $7403: $09
    add hl, bc                                    ; $7404: $09

jr_082_7405:
    add hl, bc                                    ; $7405: $09
    add hl, hl                                    ; $7406: $29
    add hl, bc                                    ; $7407: $09
    add hl, bc                                    ; $7408: $09

jr_082_7409:
    add hl, hl                                    ; $7409: $29
    add hl, hl                                    ; $740a: $29
    add hl, bc                                    ; $740b: $09
    add hl, bc                                    ; $740c: $09
    add hl, bc                                    ; $740d: $09
    add hl, hl                                    ; $740e: $29
    add hl, bc                                    ; $740f: $09
    add hl, bc                                    ; $7410: $09
    add hl, bc                                    ; $7411: $09
    add hl, hl                                    ; $7412: $29
    db $ed                                        ; $7413: $ed
    db $ed                                        ; $7414: $ed
    db $ed                                        ; $7415: $ed
    xor $ed                                       ; $7416: $ee $ed
    db $ed                                        ; $7418: $ed
    db $ed                                        ; $7419: $ed
    xor $ed                                       ; $741a: $ee $ed
    db $ed                                        ; $741c: $ed
    db $ed                                        ; $741d: $ed
    ld l, $ed                                     ; $741e: $2e $ed
    db $ed                                        ; $7420: $ed
    db $ed                                        ; $7421: $ed
    db $ed                                        ; $7422: $ed
    add b                                         ; $7423: $80
    add b                                         ; $7424: $80
    add b                                         ; $7425: $80
    add b                                         ; $7426: $80
    add b                                         ; $7427: $80
    add b                                         ; $7428: $80
    add b                                         ; $7429: $80
    add b                                         ; $742a: $80
    add b                                         ; $742b: $80
    add b                                         ; $742c: $80
    add b                                         ; $742d: $80
    add b                                         ; $742e: $80
    add b                                         ; $742f: $80
    add b                                         ; $7430: $80
    add b                                         ; $7431: $80
    add b                                         ; $7432: $80
    ld a, [hl+]                                   ; $7433: $2a
    inc l                                         ; $7434: $2c
    dec l                                         ; $7435: $2d
    add hl, hl                                    ; $7436: $29
    ld l, $2f                                     ; $7437: $2e $2f
    jr nc, jr_082_7465                            ; $7439: $30 $2a

    inc c                                         ; $743b: $0c
    inc c                                         ; $743c: $0c
    inc c                                         ; $743d: $0c
    inc c                                         ; $743e: $0c
    db $ed                                        ; $743f: $ed
    db $ed                                        ; $7440: $ed
    db $ed                                        ; $7441: $ed
    db $ed                                        ; $7442: $ed
    add hl, bc                                    ; $7443: $09
    add hl, bc                                    ; $7444: $09
    add hl, bc                                    ; $7445: $09
    add hl, bc                                    ; $7446: $09
    add hl, bc                                    ; $7447: $09
    add hl, bc                                    ; $7448: $09
    add hl, bc                                    ; $7449: $09
    add hl, bc                                    ; $744a: $09
    add b                                         ; $744b: $80
    add b                                         ; $744c: $80
    add b                                         ; $744d: $80
    add b                                         ; $744e: $80
    add b                                         ; $744f: $80
    add b                                         ; $7450: $80
    add b                                         ; $7451: $80
    add b                                         ; $7452: $80
    rra                                           ; $7453: $1f

jr_082_7454:
    ld sp, $d232                                  ; $7454: $31 $32 $d2
    inc l                                         ; $7457: $2c
    dec l                                         ; $7458: $2d
    inc sp                                        ; $7459: $33
    push de                                       ; $745a: $d5
    inc c                                         ; $745b: $0c
    inc c                                         ; $745c: $0c
    inc c                                         ; $745d: $0c
    inc c                                         ; $745e: $0c
    db $ed                                        ; $745f: $ed
    db $ed                                        ; $7460: $ed
    db $ed                                        ; $7461: $ed
    db $ed                                        ; $7462: $ed
    add hl, bc                                    ; $7463: $09
    add hl, bc                                    ; $7464: $09

jr_082_7465:
    add hl, bc                                    ; $7465: $09
    add hl, hl                                    ; $7466: $29
    add hl, bc                                    ; $7467: $09
    add hl, bc                                    ; $7468: $09
    add hl, bc                                    ; $7469: $09
    add hl, hl                                    ; $746a: $29
    add b                                         ; $746b: $80
    add b                                         ; $746c: $80
    add b                                         ; $746d: $80
    add b                                         ; $746e: $80
    add b                                         ; $746f: $80
    add b                                         ; $7470: $80
    add b                                         ; $7471: $80
    add b                                         ; $7472: $80

jr_082_7473:
    add l                                         ; $7473: $85
    add l                                         ; $7474: $85
    add l                                         ; $7475: $85
    inc [hl]                                      ; $7476: $34
    sub e                                         ; $7477: $93
    adc c                                         ; $7478: $89
    dec [hl]                                      ; $7479: $35
    ld [hl], $d1                                  ; $747a: $36 $d1
    ret z                                         ; $747c: $c8

    scf                                           ; $747d: $37
    jr c, jr_082_7454                             ; $747e: $38 $d4

    srl c                                         ; $7480: $cb $39
    ld a, [hl-]                                   ; $7482: $3a
    add hl, hl                                    ; $7483: $29
    add hl, hl                                    ; $7484: $29
    add hl, hl                                    ; $7485: $29
    add hl, bc                                    ; $7486: $09
    add hl, hl                                    ; $7487: $29
    add hl, hl                                    ; $7488: $29
    add hl, bc                                    ; $7489: $09
    add hl, bc                                    ; $748a: $09
    add hl, hl                                    ; $748b: $29
    add hl, hl                                    ; $748c: $29
    add hl, bc                                    ; $748d: $09
    add hl, bc                                    ; $748e: $09
    add hl, hl                                    ; $748f: $29
    add hl, hl                                    ; $7490: $29
    add hl, bc                                    ; $7491: $09
    add hl, bc                                    ; $7492: $09
    dec e                                         ; $7493: $1d
    ld e, $1f                                     ; $7494: $1e $1f
    inc e                                         ; $7496: $1c
    dec d                                         ; $7497: $15
    ld d, $17                                     ; $7498: $16 $17
    jr jr_082_7473                                ; $749a: $18 $d7

    ld a, [de]                                    ; $749c: $1a
    dec de                                        ; $749d: $1b
    inc e                                         ; $749e: $1c
    db $d3                                        ; $749f: $d3
    ld e, $1f                                     ; $74a0: $1e $1f
    jr nz, jr_082_7506                            ; $74a2: $20 $62

    ld h, d                                       ; $74a4: $62
    ld h, d                                       ; $74a5: $62
    dec b                                         ; $74a6: $05
    dec b                                         ; $74a7: $05
    rlca                                          ; $74a8: $07
    rlca                                          ; $74a9: $07
    dec b                                         ; $74aa: $05
    dec c                                         ; $74ab: $0d
    ld [bc], a                                    ; $74ac: $02
    ld [bc], a                                    ; $74ad: $02
    ld [bc], a                                    ; $74ae: $02
    ld c, l                                       ; $74af: $4d
    ld h, d                                       ; $74b0: $62
    ld h, a                                       ; $74b1: $67
    ld h, d                                       ; $74b2: $62
    jr z, @+$2b                                   ; $74b3: $28 $29

    dec h                                         ; $74b5: $25
    inc h                                         ; $74b6: $24
    inc h                                         ; $74b7: $24
    dec h                                         ; $74b8: $25
    ld h, $27                                     ; $74b9: $26 $27
    jr z, jr_082_74e6                             ; $74bb: $28 $29

    add hl, hl                                    ; $74bd: $29
    jr z, jr_082_74e7                             ; $74be: $28 $27

    ld h, $25                                     ; $74c0: $26 $25
    inc h                                         ; $74c2: $24
    dec b                                         ; $74c3: $05
    rlca                                          ; $74c4: $07
    ld h, l                                       ; $74c5: $65
    ld h, a                                       ; $74c6: $67
    ld [bc], a                                    ; $74c7: $02
    ld [bc], a                                    ; $74c8: $02
    ld [bc], a                                    ; $74c9: $02
    dec b                                         ; $74ca: $05
    ld [bc], a                                    ; $74cb: $02

jr_082_74cc:
    dec b                                         ; $74cc: $05
    ld h, l                                       ; $74cd: $65
    ld h, l                                       ; $74ce: $65
    ld h, a                                       ; $74cf: $67
    ld h, l                                       ; $74d0: $65
    ld h, l                                       ; $74d1: $65
    ld h, l                                       ; $74d2: $65
    jr jr_082_74ec                                ; $74d3: $18 $17

    ld d, $15                                     ; $74d5: $16 $15
    jr nz, @+$22                                  ; $74d7: $20 $20

    daa                                           ; $74d9: $27
    ld h, $1c                                     ; $74da: $26 $1c
    rra                                           ; $74dc: $1f
    ld e, $1d                                     ; $74dd: $1e $1d
    jr jr_082_74fc                                ; $74df: $18 $1b

    ld a, [de]                                    ; $74e1: $1a
    add hl, de                                    ; $74e2: $19
    ld h, l                                       ; $74e3: $65
    ld h, l                                       ; $74e4: $65
    ld h, a                                       ; $74e5: $67

jr_082_74e6:
    ld h, a                                       ; $74e6: $67

jr_082_74e7:
    dec b                                         ; $74e7: $05
    ld h, l                                       ; $74e8: $65
    ld h, l                                       ; $74e9: $65
    ld h, d                                       ; $74ea: $62
    ld h, a                                       ; $74eb: $67

jr_082_74ec:
    ld [bc], a                                    ; $74ec: $02
    ld [bc], a                                    ; $74ed: $02
    ld [bc], a                                    ; $74ee: $02
    ld h, d                                       ; $74ef: $62
    ld h, d                                       ; $74f0: $62
    ld h, d                                       ; $74f1: $62
    ld h, l                                       ; $74f2: $65
    pop de                                        ; $74f3: $d1
    ret z                                         ; $74f4: $c8

    scf                                           ; $74f5: $37
    jr c, jr_082_74cc                             ; $74f6: $38 $d4

    srl c                                         ; $74f8: $cb $39
    ld a, [hl-]                                   ; $74fa: $3a
    inc c                                         ; $74fb: $0c

jr_082_74fc:
    inc c                                         ; $74fc: $0c
    inc c                                         ; $74fd: $0c
    inc c                                         ; $74fe: $0c
    db $ed                                        ; $74ff: $ed
    db $ed                                        ; $7500: $ed
    db $ed                                        ; $7501: $ed
    db $ed                                        ; $7502: $ed
    add hl, hl                                    ; $7503: $29
    add hl, hl                                    ; $7504: $29
    add hl, bc                                    ; $7505: $09

jr_082_7506:
    add hl, bc                                    ; $7506: $09
    add hl, hl                                    ; $7507: $29
    add hl, hl                                    ; $7508: $29
    add hl, bc                                    ; $7509: $09
    add hl, bc                                    ; $750a: $09
    add b                                         ; $750b: $80
    add b                                         ; $750c: $80
    add b                                         ; $750d: $80
    add b                                         ; $750e: $80
    add b                                         ; $750f: $80
    add b                                         ; $7510: $80
    add b                                         ; $7511: $80
    add b                                         ; $7512: $80
    sub $27                                       ; $7513: $d6 $27
    jr nz, jr_082_7536                            ; $7515: $20 $1f

    rst $10                                       ; $7517: $d7
    jr z, jr_082_7536                             ; $7518: $28 $1c

    dec de                                        ; $751a: $1b
    or e                                          ; $751b: $b3
    inc h                                         ; $751c: $24
    jr jr_082_7536                                ; $751d: $18 $17

    xor $27                                       ; $751f: $ee $27
    jr nz, @+$22                                  ; $7521: $20 $20

    dec c                                         ; $7523: $0d
    ld [bc], a                                    ; $7524: $02
    dec b                                         ; $7525: $05
    dec b                                         ; $7526: $05
    dec c                                         ; $7527: $0d
    ld h, d                                       ; $7528: $62
    ld h, l                                       ; $7529: $65
    ld h, l                                       ; $752a: $65
    adc b                                         ; $752b: $88
    ld h, d                                       ; $752c: $62
    ld h, d                                       ; $752d: $62
    ld h, d                                       ; $752e: $62
    add b                                         ; $752f: $80
    inc bc                                        ; $7530: $03
    rlca                                          ; $7531: $07
    ld h, a                                       ; $7532: $67
    ld e, $1d                                     ; $7533: $1e $1d
    dec d                                         ; $7535: $15

jr_082_7536:
    ld d, $1a                                     ; $7536: $16 $1a
    add hl, de                                    ; $7538: $19
    add hl, de                                    ; $7539: $19
    ld a, [de]                                    ; $753a: $1a
    ld d, $15                                     ; $753b: $16 $15
    dec e                                         ; $753d: $1d
    dec bc                                        ; $753e: $0b
    daa                                           ; $753f: $27
    ld h, $15                                     ; $7540: $26 $15
    xor $05                                       ; $7542: $ee $05
    ld [bc], a                                    ; $7544: $02
    ld [bc], a                                    ; $7545: $02
    rlca                                          ; $7546: $07
    ld h, l                                       ; $7547: $65
    ld h, d                                       ; $7548: $62
    rlca                                          ; $7549: $07
    dec b                                         ; $754a: $05
    ld h, a                                       ; $754b: $67
    ld h, l                                       ; $754c: $65
    ld h, d                                       ; $754d: $62
    add b                                         ; $754e: $80
    ld h, l                                       ; $754f: $65
    ld h, d                                       ; $7550: $62
    inc bc                                        ; $7551: $03
    add b                                         ; $7552: $80
    rla                                           ; $7553: $17
    rla                                           ; $7554: $17
    ld d, $15                                     ; $7555: $16 $15
    dec de                                        ; $7557: $1b
    jr jr_082_757e                                ; $7558: $18 $24

    dec h                                         ; $755a: $25
    inc c                                         ; $755b: $0c
    inc c                                         ; $755c: $0c
    inc c                                         ; $755d: $0c
    inc c                                         ; $755e: $0c
    db $ed                                        ; $755f: $ed
    db $ed                                        ; $7560: $ed
    db $ed                                        ; $7561: $ed
    db $ed                                        ; $7562: $ed
    ld [bc], a                                    ; $7563: $02
    ld h, d                                       ; $7564: $62
    ld h, l                                       ; $7565: $65
    ld h, a                                       ; $7566: $67
    ld [bc], a                                    ; $7567: $02
    dec b                                         ; $7568: $05
    rlca                                          ; $7569: $07
    dec b                                         ; $756a: $05
    add b                                         ; $756b: $80
    add b                                         ; $756c: $80
    add b                                         ; $756d: $80
    add b                                         ; $756e: $80
    add b                                         ; $756f: $80
    add b                                         ; $7570: $80
    add b                                         ; $7571: $80
    add b                                         ; $7572: $80
    ld l, $0c                                     ; $7573: $2e $0c
    dec sp                                        ; $7575: $3b
    dec sp                                        ; $7576: $3b
    db $ed                                        ; $7577: $ed
    db $ed                                        ; $7578: $ed
    inc a                                         ; $7579: $3c
    inc a                                         ; $757a: $3c
    db $ed                                        ; $757b: $ed
    db $ed                                        ; $757c: $ed
    db $ed                                        ; $757d: $ed

jr_082_757e:
    db $ed                                        ; $757e: $ed
    db $ed                                        ; $757f: $ed
    db $ed                                        ; $7580: $ed
    db $ed                                        ; $7581: $ed
    db $ed                                        ; $7582: $ed
    add b                                         ; $7583: $80
    add b                                         ; $7584: $80
    adc b                                         ; $7585: $88
    adc b                                         ; $7586: $88
    add b                                         ; $7587: $80
    add b                                         ; $7588: $80
    adc b                                         ; $7589: $88
    adc b                                         ; $758a: $88
    add b                                         ; $758b: $80
    add b                                         ; $758c: $80
    add b                                         ; $758d: $80
    add b                                         ; $758e: $80
    add b                                         ; $758f: $80
    add b                                         ; $7590: $80
    add b                                         ; $7591: $80
    add b                                         ; $7592: $80
    dec sp                                        ; $7593: $3b
    dec sp                                        ; $7594: $3b
    inc c                                         ; $7595: $0c
    dec c                                         ; $7596: $0d
    inc a                                         ; $7597: $3c
    inc a                                         ; $7598: $3c
    db $ed                                        ; $7599: $ed
    db $ed                                        ; $759a: $ed
    db $ed                                        ; $759b: $ed
    db $ed                                        ; $759c: $ed
    db $ed                                        ; $759d: $ed
    db $ed                                        ; $759e: $ed
    db $ed                                        ; $759f: $ed
    db $ed                                        ; $75a0: $ed
    db $ed                                        ; $75a1: $ed
    db $ed                                        ; $75a2: $ed
    adc b                                         ; $75a3: $88
    adc b                                         ; $75a4: $88
    add b                                         ; $75a5: $80
    add b                                         ; $75a6: $80
    adc b                                         ; $75a7: $88
    adc b                                         ; $75a8: $88
    add b                                         ; $75a9: $80
    add b                                         ; $75aa: $80
    add b                                         ; $75ab: $80
    add b                                         ; $75ac: $80
    add b                                         ; $75ad: $80
    add b                                         ; $75ae: $80
    add b                                         ; $75af: $80
    add b                                         ; $75b0: $80
    add b                                         ; $75b1: $80
    add b                                         ; $75b2: $80
    dec e                                         ; $75b3: $1d
    ld e, $1f                                     ; $75b4: $1e $1f
    inc e                                         ; $75b6: $1c
    dec d                                         ; $75b7: $15
    ld d, $17                                     ; $75b8: $16 $17
    jr jr_082_75d5                                ; $75ba: $18 $19

    ld a, [de]                                    ; $75bc: $1a
    dec de                                        ; $75bd: $1b
    inc e                                         ; $75be: $1c
    dec e                                         ; $75bf: $1d
    ld e, $1f                                     ; $75c0: $1e $1f
    jr nz, jr_082_7626                            ; $75c2: $20 $62

    ld h, d                                       ; $75c4: $62
    ld h, l                                       ; $75c5: $65
    rlca                                          ; $75c6: $07
    ld [bc], a                                    ; $75c7: $02
    dec b                                         ; $75c8: $05
    rlca                                          ; $75c9: $07
    dec b                                         ; $75ca: $05
    dec b                                         ; $75cb: $05
    rlca                                          ; $75cc: $07
    dec b                                         ; $75cd: $05
    rlca                                          ; $75ce: $07
    ld h, a                                       ; $75cf: $67
    ld h, l                                       ; $75d0: $65
    ld h, a                                       ; $75d1: $67
    ld h, a                                       ; $75d2: $67
    jr z, jr_082_75fe                             ; $75d3: $28 $29

jr_082_75d5:
    dec h                                         ; $75d5: $25
    inc h                                         ; $75d6: $24
    inc h                                         ; $75d7: $24
    dec h                                         ; $75d8: $25
    ld h, $27                                     ; $75d9: $26 $27
    jr z, jr_082_7606                             ; $75db: $28 $29

    add hl, hl                                    ; $75dd: $29
    jr z, jr_082_7607                             ; $75de: $28 $27

    ld h, $25                                     ; $75e0: $26 $25
    inc h                                         ; $75e2: $24
    dec b                                         ; $75e3: $05
    rlca                                          ; $75e4: $07
    ld h, a                                       ; $75e5: $67
    ld h, e                                       ; $75e6: $63
    rlca                                          ; $75e7: $07
    rlca                                          ; $75e8: $07
    dec b                                         ; $75e9: $05
    inc bc                                        ; $75ea: $03
    rlca                                          ; $75eb: $07
    dec b                                         ; $75ec: $05
    ld h, d                                       ; $75ed: $62
    ld h, e                                       ; $75ee: $63
    ld h, l                                       ; $75ef: $65
    ld h, d                                       ; $75f0: $62
    ld h, d                                       ; $75f1: $62
    ld h, e                                       ; $75f2: $63
    ld h, $27                                     ; $75f3: $26 $27
    jr nz, jr_082_7616                            ; $75f5: $20 $1f

    add hl, hl                                    ; $75f7: $29
    jr z, jr_082_7616                             ; $75f8: $28 $1c

    dec de                                        ; $75fa: $1b
    inc c                                         ; $75fb: $0c
    inc c                                         ; $75fc: $0c
    inc c                                         ; $75fd: $0c

jr_082_75fe:
    inc c                                         ; $75fe: $0c
    db $ed                                        ; $75ff: $ed
    db $ed                                        ; $7600: $ed
    db $ed                                        ; $7601: $ed
    db $ed                                        ; $7602: $ed
    dec b                                         ; $7603: $05
    rlca                                          ; $7604: $07
    rlca                                          ; $7605: $07

jr_082_7606:
    dec b                                         ; $7606: $05

jr_082_7607:
    ld h, a                                       ; $7607: $67
    ld h, a                                       ; $7608: $67
    ld h, l                                       ; $7609: $65
    ld h, d                                       ; $760a: $62
    add b                                         ; $760b: $80
    add b                                         ; $760c: $80
    add b                                         ; $760d: $80
    add b                                         ; $760e: $80
    add b                                         ; $760f: $80
    add b                                         ; $7610: $80
    add b                                         ; $7611: $80
    add b                                         ; $7612: $80
    ld e, $1d                                     ; $7613: $1e $1d
    dec d                                         ; $7615: $15

jr_082_7616:
    ld d, $1a                                     ; $7616: $16 $1a
    add hl, de                                    ; $7618: $19
    add hl, de                                    ; $7619: $19
    ld a, [de]                                    ; $761a: $1a
    inc c                                         ; $761b: $0c
    inc c                                         ; $761c: $0c
    inc c                                         ; $761d: $0c
    inc c                                         ; $761e: $0c
    db $ed                                        ; $761f: $ed
    db $ed                                        ; $7620: $ed
    db $ed                                        ; $7621: $ed
    db $ed                                        ; $7622: $ed
    ld [bc], a                                    ; $7623: $02
    ld [bc], a                                    ; $7624: $02
    ld [bc], a                                    ; $7625: $02

jr_082_7626:
    inc bc                                        ; $7626: $03
    ld h, d                                       ; $7627: $62
    ld h, d                                       ; $7628: $62
    ld [bc], a                                    ; $7629: $02
    inc bc                                        ; $762a: $03
    add b                                         ; $762b: $80
    add b                                         ; $762c: $80
    add b                                         ; $762d: $80
    add b                                         ; $762e: $80
    add b                                         ; $762f: $80
    add b                                         ; $7630: $80
    add b                                         ; $7631: $80
    add b                                         ; $7632: $80
    xor $ed                                       ; $7633: $ee $ed
    db $ed                                        ; $7635: $ed
    db $ed                                        ; $7636: $ed
    xor $ed                                       ; $7637: $ee $ed
    db $ed                                        ; $7639: $ed
    db $ed                                        ; $763a: $ed
    dec c                                         ; $763b: $0d
    db $ed                                        ; $763c: $ed
    db $ed                                        ; $763d: $ed
    db $ed                                        ; $763e: $ed
    db $ed                                        ; $763f: $ed
    db $ed                                        ; $7640: $ed
    db $ed                                        ; $7641: $ed
    db $ed                                        ; $7642: $ed
    add b                                         ; $7643: $80
    add b                                         ; $7644: $80
    add b                                         ; $7645: $80
    add b                                         ; $7646: $80
    add b                                         ; $7647: $80
    add b                                         ; $7648: $80
    add b                                         ; $7649: $80
    add b                                         ; $764a: $80
    add b                                         ; $764b: $80
    add b                                         ; $764c: $80
    add b                                         ; $764d: $80
    add b                                         ; $764e: $80
    add b                                         ; $764f: $80
    add b                                         ; $7650: $80
    add b                                         ; $7651: $80
    add b                                         ; $7652: $80
    ld [$0900], sp                                ; $7653: $08 $00 $09
    nop                                           ; $7656: $00
    and b                                         ; $7657: $a0
    rlca                                          ; $7658: $07
    pop de                                        ; $7659: $d1
    pop de                                        ; $765a: $d1
    jp nc, $d1d3                                  ; $765b: $d2 $d3 $d1

    pop de                                        ; $765e: $d1
    jp nc, $d1d4                                  ; $765f: $d2 $d4 $d1

    pop de                                        ; $7662: $d1
    jp nc, $d1d5                                  ; $7663: $d2 $d5 $d1

    pop de                                        ; $7666: $d1
    jp nc, $80d6                                  ; $7667: $d2 $d6 $80

    add b                                         ; $766a: $80
    add b                                         ; $766b: $80
    dec b                                         ; $766c: $05
    add b                                         ; $766d: $80
    add b                                         ; $766e: $80
    add b                                         ; $766f: $80
    dec b                                         ; $7670: $05
    add b                                         ; $7671: $80
    add b                                         ; $7672: $80
    add b                                         ; $7673: $80
    dec b                                         ; $7674: $05

Jump_082_7675:
    add b                                         ; $7675: $80
    add b                                         ; $7676: $80
    add b                                         ; $7677: $80
    dec b                                         ; $7678: $05
    rst $10                                       ; $7679: $d7
    ret c                                         ; $767a: $d8

    reti                                          ; $767b: $d9


    jp c, $dcdb                                   ; $767c: $da $db $dc

    db $dd                                        ; $767f: $dd
    sbc $df                                       ; $7680: $de $df
    ldh [$e1], a                                  ; $7682: $e0 $e1
    ld [c], a                                     ; $7684: $e2
    db $e3                                        ; $7685: $e3
    db $e4                                        ; $7686: $e4
    push hl                                       ; $7687: $e5
    and $03                                       ; $7688: $e6 $03
    inc bc                                        ; $768a: $03
    inc bc                                        ; $768b: $03
    inc bc                                        ; $768c: $03
    inc bc                                        ; $768d: $03
    inc bc                                        ; $768e: $03
    inc bc                                        ; $768f: $03
    inc bc                                        ; $7690: $03
    inc bc                                        ; $7691: $03
    inc bc                                        ; $7692: $03
    inc bc                                        ; $7693: $03
    inc bc                                        ; $7694: $03
    inc bc                                        ; $7695: $03
    inc bc                                        ; $7696: $03
    inc bc                                        ; $7697: $03
    inc bc                                        ; $7698: $03
    rst $20                                       ; $7699: $e7
    db $d3                                        ; $769a: $d3
    add sp, -$17                                  ; $769b: $e8 $e9
    ld [$ebd4], a                                 ; $769d: $ea $d4 $eb
    db $ec                                        ; $76a0: $ec
    db $ed                                        ; $76a1: $ed
    push de                                       ; $76a2: $d5
    xor $ef                                       ; $76a3: $ee $ef
    ldh a, [$d6]                                  ; $76a5: $f0 $d6
    pop af                                        ; $76a7: $f1
    ld a, [c]                                     ; $76a8: $f2
    dec b                                         ; $76a9: $05
    dec b                                         ; $76aa: $05
    dec b                                         ; $76ab: $05
    nop                                           ; $76ac: $00
    dec b                                         ; $76ad: $05
    dec b                                         ; $76ae: $05
    dec b                                         ; $76af: $05
    nop                                           ; $76b0: $00
    dec b                                         ; $76b1: $05
    dec b                                         ; $76b2: $05
    dec b                                         ; $76b3: $05
    nop                                           ; $76b4: $00
    dec b                                         ; $76b5: $05
    dec b                                         ; $76b6: $05
    dec b                                         ; $76b7: $05
    nop                                           ; $76b8: $00
    di                                            ; $76b9: $f3
    db $f4                                        ; $76ba: $f4
    push af                                       ; $76bb: $f5
    or $f7                                        ; $76bc: $f6 $f7
    ld hl, sp-$07                                 ; $76be: $f8 $f9
    ld a, [$fcfb]                                 ; $76c0: $fa $fb $fc
    db $fd                                        ; $76c3: $fd
    cp $ff                                        ; $76c4: $fe $ff
    nop                                           ; $76c6: $00
    ld bc, $0002                                  ; $76c7: $01 $02 $00
    nop                                           ; $76ca: $00
    nop                                           ; $76cb: $00
    nop                                           ; $76cc: $00
    nop                                           ; $76cd: $00
    nop                                           ; $76ce: $00
    nop                                           ; $76cf: $00
    nop                                           ; $76d0: $00
    nop                                           ; $76d1: $00
    nop                                           ; $76d2: $00
    nop                                           ; $76d3: $00
    nop                                           ; $76d4: $00
    nop                                           ; $76d5: $00
    nop                                           ; $76d6: $00
    nop                                           ; $76d7: $00
    nop                                           ; $76d8: $00
    pop de                                        ; $76d9: $d1
    pop de                                        ; $76da: $d1
    jp nc, $d103                                  ; $76db: $d2 $03 $d1

    pop de                                        ; $76de: $d1
    jp nc, $d104                                  ; $76df: $d2 $04 $d1

    pop de                                        ; $76e2: $d1
    jp nc, $d105                                  ; $76e3: $d2 $05 $d1

    pop de                                        ; $76e6: $d1
    jp nc, $8006                                  ; $76e7: $d2 $06 $80

    add b                                         ; $76ea: $80
    add b                                         ; $76eb: $80
    dec b                                         ; $76ec: $05
    add b                                         ; $76ed: $80
    add b                                         ; $76ee: $80
    add b                                         ; $76ef: $80
    rlca                                          ; $76f0: $07
    add b                                         ; $76f1: $80
    add b                                         ; $76f2: $80
    add b                                         ; $76f3: $80
    rlca                                          ; $76f4: $07
    add b                                         ; $76f5: $80
    add b                                         ; $76f6: $80
    add b                                         ; $76f7: $80
    rlca                                          ; $76f8: $07
    rlca                                          ; $76f9: $07
    ld [$0709], sp                                ; $76fa: $08 $09 $07
    ld a, [bc]                                    ; $76fd: $0a
    dec bc                                        ; $76fe: $0b
    inc c                                         ; $76ff: $0c
    dec c                                         ; $7700: $0d
    ld c, $0f                                     ; $7701: $0e $0f
    db $10                                        ; $7703: $10
    ld de, $1312                                  ; $7704: $11 $12 $13
    inc d                                         ; $7707: $14
    dec d                                         ; $7708: $15
    dec b                                         ; $7709: $05
    dec b                                         ; $770a: $05
    dec b                                         ; $770b: $05
    dec b                                         ; $770c: $05
    rlca                                          ; $770d: $07
    rlca                                          ; $770e: $07
    rlca                                          ; $770f: $07
    rlca                                          ; $7710: $07
    ld bc, $0101                                  ; $7711: $01 $01 $01
    ld bc, $0101                                  ; $7714: $01 $01 $01
    ld bc, $1601                                  ; $7717: $01 $01 $16
    inc bc                                        ; $771a: $03
    rla                                           ; $771b: $17
    jr @+$1b                                      ; $771c: $18 $19

    ld a, [de]                                    ; $771e: $1a
    dec de                                        ; $771f: $1b
    inc b                                         ; $7720: $04
    inc e                                         ; $7721: $1c
    dec e                                         ; $7722: $1d
    ld e, $05                                     ; $7723: $1e $05
    rra                                           ; $7725: $1f
    jr nz, jr_082_7749                            ; $7726: $20 $21

    ld b, $05                                     ; $7728: $06 $05
    dec b                                         ; $772a: $05
    dec b                                         ; $772b: $05
    dec b                                         ; $772c: $05
    rlca                                          ; $772d: $07
    rlca                                          ; $772e: $07
    rlca                                          ; $772f: $07
    rlca                                          ; $7730: $07
    ld b, $01                                     ; $7731: $06 $01
    ld bc, $0101                                  ; $7733: $01 $01 $01
    ld bc, $0106                                  ; $7736: $01 $06 $01
    ld [hl+], a                                   ; $7739: $22
    inc hl                                        ; $773a: $23
    inc h                                         ; $773b: $24
    ld [hl+], a                                   ; $773c: $22
    ld a, [bc]                                    ; $773d: $0a
    dec bc                                        ; $773e: $0b
    inc c                                         ; $773f: $0c
    dec c                                         ; $7740: $0d
    dec h                                         ; $7741: $25
    ld h, $27                                     ; $7742: $26 $27
    ld de, $2928                                  ; $7744: $11 $28 $29
    ld a, [hl+]                                   ; $7747: $2a
    ld a, [hl+]                                   ; $7748: $2a

jr_082_7749:
    dec b                                         ; $7749: $05
    dec b                                         ; $774a: $05
    dec b                                         ; $774b: $05
    dec b                                         ; $774c: $05
    rlca                                          ; $774d: $07
    rlca                                          ; $774e: $07
    rlca                                          ; $774f: $07
    rlca                                          ; $7750: $07
    ld b, $01                                     ; $7751: $06 $01
    ld bc, $0106                                  ; $7753: $01 $06 $01
    ld [bc], a                                    ; $7756: $02
    ld [bc], a                                    ; $7757: $02
    ld [bc], a                                    ; $7758: $02
    pop de                                        ; $7759: $d1
    pop de                                        ; $775a: $d1
    jp nc, $d12b                                  ; $775b: $d2 $2b $d1

    pop de                                        ; $775e: $d1
    jp nc, $d12c                                  ; $775f: $d2 $2c $d1

    pop de                                        ; $7762: $d1
    jp nc, $d12d                                  ; $7763: $d2 $2d $d1

    pop de                                        ; $7766: $d1
    jp nc, $802e                                  ; $7767: $d2 $2e $80

    add b                                         ; $776a: $80
    add b                                         ; $776b: $80
    rlca                                          ; $776c: $07
    add b                                         ; $776d: $80
    add b                                         ; $776e: $80
    add b                                         ; $776f: $80
    rlca                                          ; $7770: $07
    add b                                         ; $7771: $80
    add b                                         ; $7772: $80
    add b                                         ; $7773: $80
    rlca                                          ; $7774: $07
    add b                                         ; $7775: $80
    add b                                         ; $7776: $80
    add b                                         ; $7777: $80
    rlca                                          ; $7778: $07
    cpl                                           ; $7779: $2f
    jr nc, @+$33                                  ; $777a: $30 $31

    ld [hl-], a                                   ; $777c: $32
    inc sp                                        ; $777d: $33
    inc [hl]                                      ; $777e: $34
    dec [hl]                                      ; $777f: $35
    ld [hl], $37                                  ; $7780: $36 $37
    jr c, jr_082_77bd                             ; $7782: $38 $39

    ld a, [hl-]                                   ; $7784: $3a
    dec sp                                        ; $7785: $3b
    inc a                                         ; $7786: $3c
    dec a                                         ; $7787: $3d
    ld a, $01                                     ; $7788: $3e $01
    ld bc, $0601                                  ; $778a: $01 $01 $06
    ld bc, $0101                                  ; $778d: $01 $01 $01
    ld bc, $0601                                  ; $7790: $01 $01 $06
    ld bc, $0601                                  ; $7793: $01 $01 $06
    ld bc, $0601                                  ; $7796: $01 $01 $06
    ccf                                           ; $7799: $3f
    ld b, b                                       ; $779a: $40
    ld b, c                                       ; $779b: $41
    dec hl                                        ; $779c: $2b
    ld b, d                                       ; $779d: $42
    ld b, e                                       ; $779e: $43
    ld b, h                                       ; $779f: $44
    inc l                                         ; $77a0: $2c
    ld b, l                                       ; $77a1: $45
    ld b, [hl]                                    ; $77a2: $46
    ld b, a                                       ; $77a3: $47
    ld c, b                                       ; $77a4: $48
    ld c, c                                       ; $77a5: $49
    ld c, d                                       ; $77a6: $4a
    ld c, e                                       ; $77a7: $4b
    ld c, h                                       ; $77a8: $4c
    ld bc, $0106                                  ; $77a9: $01 $06 $01
    ld b, $01                                     ; $77ac: $06 $01
    ld bc, $0106                                  ; $77ae: $01 $06 $01
    ld bc, $0101                                  ; $77b1: $01 $01 $01
    ld bc, $0601                                  ; $77b4: $01 $01 $06
    ld bc, $4d06                                  ; $77b7: $01 $06 $4d
    ld c, [hl]                                    ; $77ba: $4e
    ld c, a                                       ; $77bb: $4f
    ld c, a                                       ; $77bc: $4f

jr_082_77bd:
    ld d, b                                       ; $77bd: $50
    ld d, c                                       ; $77be: $51
    ld d, d                                       ; $77bf: $52
    ld d, d                                       ; $77c0: $52
    ld d, e                                       ; $77c1: $53
    ld d, h                                       ; $77c2: $54
    ld d, l                                       ; $77c3: $55
    ld a, [hl-]                                   ; $77c4: $3a
    ld d, [hl]                                    ; $77c5: $56
    ld d, a                                       ; $77c6: $57
    ld e, b                                       ; $77c7: $58
    ld a, $01                                     ; $77c8: $3e $01
    ld [bc], a                                    ; $77ca: $02
    ld [bc], a                                    ; $77cb: $02
    ld [bc], a                                    ; $77cc: $02
    ld bc, $0202                                  ; $77cd: $01 $02 $02
    ld [bc], a                                    ; $77d0: $02
    ld bc, $0707                                  ; $77d1: $01 $07 $07
    rlca                                          ; $77d4: $07
    ld bc, $0601                                  ; $77d5: $01 $01 $06
    ld bc, $d1d1                                  ; $77d8: $01 $d1 $d1
    jp nc, $d159                                  ; $77db: $d2 $59 $d1

    pop de                                        ; $77de: $d1
    jp nc, $d15a                                  ; $77df: $d2 $5a $d1

    pop de                                        ; $77e2: $d1
    jp nc, $d15b                                  ; $77e3: $d2 $5b $d1

    pop de                                        ; $77e6: $d1
    jp nc, $805c                                  ; $77e7: $d2 $5c $80

    add b                                         ; $77ea: $80
    add b                                         ; $77eb: $80
    rlca                                          ; $77ec: $07
    add b                                         ; $77ed: $80
    add b                                         ; $77ee: $80
    add b                                         ; $77ef: $80
    rlca                                          ; $77f0: $07
    add b                                         ; $77f1: $80
    add b                                         ; $77f2: $80
    add b                                         ; $77f3: $80
    rlca                                          ; $77f4: $07
    add b                                         ; $77f5: $80
    add b                                         ; $77f6: $80
    add b                                         ; $77f7: $80
    rlca                                          ; $77f8: $07
    ld e, l                                       ; $77f9: $5d
    ld e, [hl]                                    ; $77fa: $5e
    ld e, a                                       ; $77fb: $5f
    ld h, b                                       ; $77fc: $60
    ld h, c                                       ; $77fd: $61
    ld h, d                                       ; $77fe: $62
    ld h, e                                       ; $77ff: $63
    ld h, h                                       ; $7800: $64
    ld h, l                                       ; $7801: $65
    ld h, [hl]                                    ; $7802: $66
    ld h, a                                       ; $7803: $67
    ld l, b                                       ; $7804: $68
    ld l, c                                       ; $7805: $69
    ld l, d                                       ; $7806: $6a
    ld l, e                                       ; $7807: $6b
    ld l, h                                       ; $7808: $6c
    ld bc, $0106                                  ; $7809: $01 $06 $01
    ld bc, $0101                                  ; $780c: $01 $01 $01
    ld bc, $0101                                  ; $780f: $01 $01 $01
    ld bc, $0601                                  ; $7812: $01 $01 $06
    ld bc, $0106                                  ; $7815: $01 $06 $01
    ld bc, $6e6d                                  ; $7818: $01 $6d $6e
    ld l, a                                       ; $781b: $6f
    ld [hl], b                                    ; $781c: $70
    ld [hl], c                                    ; $781d: $71
    ld [hl], d                                    ; $781e: $72
    ld [hl], e                                    ; $781f: $73
    ld [hl], h                                    ; $7820: $74
    ld [hl], l                                    ; $7821: $75
    halt                                          ; $7822: $76
    ld [hl], a                                    ; $7823: $77
    ld a, b                                       ; $7824: $78
    ld a, c                                       ; $7825: $79
    ld a, d                                       ; $7826: $7a
    ld a, e                                       ; $7827: $7b
    ld e, h                                       ; $7828: $5c
    ld bc, $0601                                  ; $7829: $01 $01 $06
    ld bc, $0601                                  ; $782c: $01 $01 $06
    ld bc, $0101                                  ; $782f: $01 $01 $01
    ld bc, $0101                                  ; $7832: $01 $01 $01
    ld bc, $0601                                  ; $7835: $01 $01 $06
    ld bc, $7d7c                                  ; $7838: $01 $7c $7d
    ld e, a                                       ; $783b: $5f
    ld h, b                                       ; $783c: $60
    ld a, [hl]                                    ; $783d: $7e
    ld h, d                                       ; $783e: $62
    ld h, e                                       ; $783f: $63
    ld h, h                                       ; $7840: $64
    ld h, l                                       ; $7841: $65
    ld h, [hl]                                    ; $7842: $66
    ld h, a                                       ; $7843: $67
    ld l, b                                       ; $7844: $68
    ld l, c                                       ; $7845: $69
    ld l, d                                       ; $7846: $6a
    ld l, e                                       ; $7847: $6b
    ld l, h                                       ; $7848: $6c
    ld b, $01                                     ; $7849: $06 $01
    ld bc, $0606                                  ; $784b: $01 $06 $06
    ld b, $01                                     ; $784e: $06 $01
    ld bc, $0101                                  ; $7850: $01 $01 $01
    ld b, $06                                     ; $7853: $06 $06
    ld bc, $0101                                  ; $7855: $01 $01 $01
    ld bc, $807f                                  ; $7858: $01 $7f $80
    add c                                         ; $785b: $81
    add d                                         ; $785c: $82
    add e                                         ; $785d: $83
    add h                                         ; $785e: $84
    add l                                         ; $785f: $85
    add [hl]                                      ; $7860: $86
    add a                                         ; $7861: $87
    adc b                                         ; $7862: $88
    adc c                                         ; $7863: $89
    adc d                                         ; $7864: $8a
    adc e                                         ; $7865: $8b
    adc h                                         ; $7866: $8c
    adc l                                         ; $7867: $8d
    adc [hl]                                      ; $7868: $8e
    nop                                           ; $7869: $00
    ld [$0d08], sp                                ; $786a: $08 $08 $0d
    ld [$0808], sp                                ; $786d: $08 $08 $08
    dec c                                         ; $7870: $0d
    ld [$0808], sp                                ; $7871: $08 $08 $08
    dec c                                         ; $7874: $0d
    ld [$0808], sp                                ; $7875: $08 $08 $08
    dec c                                         ; $7878: $0d
    adc a                                         ; $7879: $8f
    db $d3                                        ; $787a: $d3
    sub b                                         ; $787b: $90
    sub c                                         ; $787c: $91
    sub d                                         ; $787d: $92
    call nc, $9493                                ; $787e: $d4 $93 $94
    sub l                                         ; $7881: $95
    push de                                       ; $7882: $d5
    sub [hl]                                      ; $7883: $96
    sub a                                         ; $7884: $97
    sbc b                                         ; $7885: $98
    sub $99                                       ; $7886: $d6 $99
    sbc d                                         ; $7888: $9a
    dec c                                         ; $7889: $0d
    dec b                                         ; $788a: $05
    inc c                                         ; $788b: $0c
    inc c                                         ; $788c: $0c
    dec c                                         ; $788d: $0d
    dec b                                         ; $788e: $05
    inc c                                         ; $788f: $0c
    inc c                                         ; $7890: $0c
    dec c                                         ; $7891: $0d
    dec b                                         ; $7892: $05
    inc c                                         ; $7893: $0c
    inc c                                         ; $7894: $0c
    dec c                                         ; $7895: $0d
    dec b                                         ; $7896: $05
    inc c                                         ; $7897: $0c
    inc c                                         ; $7898: $0c
    sbc e                                         ; $7899: $9b
    sbc h                                         ; $789a: $9c
    rst $20                                       ; $789b: $e7
    jp nc, $9e9d                                  ; $789c: $d2 $9d $9e

    ld [$9fd2], a                                 ; $789f: $ea $d2 $9f
    and b                                         ; $78a2: $a0
    db $ed                                        ; $78a3: $ed
    jp nc, $a2a1                                  ; $78a4: $d2 $a1 $a2

    ldh a, [$d2]                                  ; $78a7: $f0 $d2
    inc c                                         ; $78a9: $0c
    inc c                                         ; $78aa: $0c
    dec b                                         ; $78ab: $05
    add b                                         ; $78ac: $80
    inc c                                         ; $78ad: $0c
    inc c                                         ; $78ae: $0c
    dec b                                         ; $78af: $05
    add b                                         ; $78b0: $80
    inc c                                         ; $78b1: $0c
    inc c                                         ; $78b2: $0c
    dec b                                         ; $78b3: $05
    add b                                         ; $78b4: $80
    inc c                                         ; $78b5: $0c
    inc c                                         ; $78b6: $0c
    dec b                                         ; $78b7: $05
    add b                                         ; $78b8: $80
    pop de                                        ; $78b9: $d1
    pop de                                        ; $78ba: $d1
    pop de                                        ; $78bb: $d1
    pop de                                        ; $78bc: $d1
    pop de                                        ; $78bd: $d1
    pop de                                        ; $78be: $d1
    pop de                                        ; $78bf: $d1
    pop de                                        ; $78c0: $d1
    pop de                                        ; $78c1: $d1
    pop de                                        ; $78c2: $d1
    pop de                                        ; $78c3: $d1
    pop de                                        ; $78c4: $d1
    pop de                                        ; $78c5: $d1
    pop de                                        ; $78c6: $d1
    pop de                                        ; $78c7: $d1
    pop de                                        ; $78c8: $d1
    add b                                         ; $78c9: $80
    add b                                         ; $78ca: $80
    add b                                         ; $78cb: $80
    add b                                         ; $78cc: $80
    add b                                         ; $78cd: $80
    add b                                         ; $78ce: $80
    add b                                         ; $78cf: $80
    add b                                         ; $78d0: $80
    add b                                         ; $78d1: $80
    add b                                         ; $78d2: $80
    add b                                         ; $78d3: $80
    add b                                         ; $78d4: $80
    add b                                         ; $78d5: $80
    add b                                         ; $78d6: $80
    add b                                         ; $78d7: $80
    add b                                         ; $78d8: $80
    inc hl                                        ; $78d9: $23
    inc h                                         ; $78da: $24
    and e                                         ; $78db: $a3
    rla                                           ; $78dc: $17
    add hl, de                                    ; $78dd: $19
    ld a, [de]                                    ; $78de: $1a
    dec de                                        ; $78df: $1b
    inc b                                         ; $78e0: $04
    inc e                                         ; $78e1: $1c
    dec e                                         ; $78e2: $1d
    ld e, $05                                     ; $78e3: $1e $05
    and h                                         ; $78e5: $a4
    jr nz, jr_082_7909                            ; $78e6: $20 $21

    ld b, $05                                     ; $78e8: $06 $05
    dec b                                         ; $78ea: $05
    dec c                                         ; $78eb: $0d
    dec b                                         ; $78ec: $05
    rlca                                          ; $78ed: $07
    rlca                                          ; $78ee: $07
    rlca                                          ; $78ef: $07
    rlca                                          ; $78f0: $07
    ld bc, $0601                                  ; $78f1: $01 $01 $06
    ld bc, $010a                                  ; $78f4: $01 $0a $01
    ld bc, $a506                                  ; $78f7: $01 $06 $a5
    inc bc                                        ; $78fa: $03
    rlca                                          ; $78fb: $07
    ld [$0b0a], sp                                ; $78fc: $08 $0a $0b
    inc c                                         ; $78ff: $0c
    dec c                                         ; $7900: $0d
    dec h                                         ; $7901: $25
    ld h, $27                                     ; $7902: $26 $27
    ld de, $a628                                  ; $7904: $11 $28 $a6
    and a                                         ; $7907: $a7
    dec d                                         ; $7908: $15

jr_082_7909:
    dec c                                         ; $7909: $0d
    dec b                                         ; $790a: $05
    dec b                                         ; $790b: $05
    dec b                                         ; $790c: $05
    rlca                                          ; $790d: $07
    rlca                                          ; $790e: $07
    rlca                                          ; $790f: $07
    rlca                                          ; $7910: $07
    ld bc, $0606                                  ; $7911: $01 $06 $06
    ld bc, $0e01                                  ; $7914: $01 $01 $0e
    add hl, bc                                    ; $7917: $09
    ld b, $09                                     ; $7918: $06 $09
    rlca                                          ; $791a: $07
    ld d, $d2                                     ; $791b: $16 $d2
    add hl, de                                    ; $791d: $19
    ld a, [de]                                    ; $791e: $1a
    dec de                                        ; $791f: $1b
    jp nc, Jump_000_1d1c                          ; $7920: $d2 $1c $1d

    ld e, $d2                                     ; $7923: $1e $d2
    rra                                           ; $7925: $1f
    jr nz, jr_082_7949                            ; $7926: $20 $21

    jp nc, Jump_000_0505                          ; $7928: $d2 $05 $05

    dec b                                         ; $792b: $05
    add b                                         ; $792c: $80
    rlca                                          ; $792d: $07
    rlca                                          ; $792e: $07
    rlca                                          ; $792f: $07
    add b                                         ; $7930: $80
    ld b, $01                                     ; $7931: $06 $01
    rlca                                          ; $7933: $07
    add b                                         ; $7934: $80
    ld bc, $0701                                  ; $7935: $01 $01 $07
    add b                                         ; $7938: $80
    xor b                                         ; $7939: $a8
    ld b, b                                       ; $793a: $40
    ld b, c                                       ; $793b: $41
    dec hl                                        ; $793c: $2b
    xor c                                         ; $793d: $a9
    ld b, e                                       ; $793e: $43
    ld b, h                                       ; $793f: $44
    inc l                                         ; $7940: $2c
    ld b, l                                       ; $7941: $45
    ld b, [hl]                                    ; $7942: $46
    ld b, a                                       ; $7943: $47
    ld c, b                                       ; $7944: $48
    ld c, c                                       ; $7945: $49
    ld c, d                                       ; $7946: $4a
    ld c, e                                       ; $7947: $4b
    ld c, h                                       ; $7948: $4c

jr_082_7949:
    ld a, [bc]                                    ; $7949: $0a
    rlca                                          ; $794a: $07
    ld bc, $0a06                                  ; $794b: $01 $06 $0a
    rlca                                          ; $794e: $07
    ld b, $01                                     ; $794f: $06 $01
    rlca                                          ; $7951: $07
    rlca                                          ; $7952: $07
    ld bc, $0101                                  ; $7953: $01 $01 $01
    ld bc, $0106                                  ; $7956: $01 $06 $01
    ld c, l                                       ; $7959: $4d
    xor d                                         ; $795a: $aa
    xor e                                         ; $795b: $ab
    ld [hl-], a                                   ; $795c: $32
    ld d, b                                       ; $795d: $50
    xor h                                         ; $795e: $ac
    xor l                                         ; $795f: $ad
    ld [hl], $53                                  ; $7960: $36 $53
    ld d, h                                       ; $7962: $54
    ld d, l                                       ; $7963: $55
    xor [hl]                                      ; $7964: $ae
    ld d, [hl]                                    ; $7965: $56
    ld d, a                                       ; $7966: $57
    ld e, b                                       ; $7967: $58
    xor a                                         ; $7968: $af
    ld b, $09                                     ; $7969: $06 $09
    add hl, bc                                    ; $796b: $09
    ld b, $01                                     ; $796c: $06 $01
    ld c, $09                                     ; $796e: $0e $09
    ld bc, $0101                                  ; $7970: $01 $01 $01
    ld bc, $0109                                  ; $7973: $01 $09 $01
    ld b, $01                                     ; $7976: $06 $01
    add hl, bc                                    ; $7978: $09
    ccf                                           ; $7979: $3f
    ld b, b                                       ; $797a: $40
    ld b, c                                       ; $797b: $41
    jp nc, Jump_082_4342                          ; $797c: $d2 $42 $43

    ld b, h                                       ; $797f: $44
    jp nc, $b1b0                                  ; $7980: $d2 $b0 $b1

    or d                                          ; $7983: $b2
    jp nc, $b4b3                                  ; $7984: $d2 $b3 $b4

    or l                                          ; $7987: $b5
    jp nc, $0106                                  ; $7988: $d2 $06 $01

    rlca                                          ; $798b: $07
    add b                                         ; $798c: $80
    ld bc, $0706                                  ; $798d: $01 $06 $07
    add b                                         ; $7990: $80
    ld c, $09                                     ; $7991: $0e $09
    rrca                                          ; $7993: $0f
    add b                                         ; $7994: $80
    add hl, bc                                    ; $7995: $09
    ld c, $0f                                     ; $7996: $0e $0f
    add b                                         ; $7998: $80
    ld l, l                                       ; $7999: $6d
    ld l, [hl]                                    ; $799a: $6e
    ld l, a                                       ; $799b: $6f
    ld [hl], b                                    ; $799c: $70
    ld [hl], c                                    ; $799d: $71
    ld [hl], d                                    ; $799e: $72
    ld [hl], e                                    ; $799f: $73
    ld [hl], h                                    ; $79a0: $74
    ld [hl], l                                    ; $79a1: $75
    halt                                          ; $79a2: $76
    ld [hl], a                                    ; $79a3: $77
    ld a, b                                       ; $79a4: $78
    ld a, c                                       ; $79a5: $79
    ld a, d                                       ; $79a6: $7a
    ld a, e                                       ; $79a7: $7b
    ld e, h                                       ; $79a8: $5c
    ld bc, $0606                                  ; $79a9: $01 $06 $06
    ld b, $06                                     ; $79ac: $06 $06
    ld bc, $0101                                  ; $79ae: $01 $01 $01
    ld b, $01                                     ; $79b1: $06 $01
    ld bc, $0106                                  ; $79b3: $01 $06 $01
    ld bc, $0106                                  ; $79b6: $01 $06 $01
    ld a, h                                       ; $79b9: $7c
    ld a, l                                       ; $79ba: $7d
    ld e, a                                       ; $79bb: $5f
    ld h, b                                       ; $79bc: $60
    ld a, [hl]                                    ; $79bd: $7e
    ld h, d                                       ; $79be: $62
    ld h, e                                       ; $79bf: $63
    ld h, h                                       ; $79c0: $64
    ld h, l                                       ; $79c1: $65
    ld h, [hl]                                    ; $79c2: $66
    ld h, a                                       ; $79c3: $67
    ld l, b                                       ; $79c4: $68
    ld l, c                                       ; $79c5: $69
    ld l, d                                       ; $79c6: $6a
    ld l, e                                       ; $79c7: $6b
    ld l, h                                       ; $79c8: $6c
    ld bc, $0601                                  ; $79c9: $01 $01 $06
    ld bc, $0106                                  ; $79cc: $01 $06 $01
    ld bc, $0106                                  ; $79cf: $01 $06 $01
    ld bc, $0601                                  ; $79d2: $01 $01 $06
    ld bc, $0101                                  ; $79d5: $01 $01 $01
    ld bc, $b7b6                                  ; $79d8: $01 $b6 $b7
    cp b                                          ; $79db: $b8
    jp nc, $b971                                  ; $79dc: $d2 $71 $b9

    cp d                                          ; $79df: $ba
    jp nc, Jump_082_7675                          ; $79e0: $d2 $75 $76

    cp e                                          ; $79e3: $bb
    jp nc, Jump_082_7a79                          ; $79e4: $d2 $79 $7a

    ld a, e                                       ; $79e7: $7b
    jp nc, $0909                                  ; $79e8: $d2 $09 $09

    rrca                                          ; $79eb: $0f
    add b                                         ; $79ec: $80
    ld bc, $0f09                                  ; $79ed: $01 $09 $0f
    add b                                         ; $79f0: $80
    ld b, $01                                     ; $79f1: $06 $01
    rrca                                          ; $79f3: $0f
    add b                                         ; $79f4: $80
    ld bc, $0706                                  ; $79f5: $01 $06 $07
    add b                                         ; $79f8: $80
    pop de                                        ; $79f9: $d1
    pop de                                        ; $79fa: $d1
    jp nc, $d1bc                                  ; $79fb: $d2 $bc $d1

    pop de                                        ; $79fe: $d1
    jp nc, $d1bd                                  ; $79ff: $d2 $bd $d1

    pop de                                        ; $7a02: $d1
    jp nc, $d1be                                  ; $7a03: $d2 $be $d1

    pop de                                        ; $7a06: $d1
    jp nc, $804c                                  ; $7a07: $d2 $4c $80

    add b                                         ; $7a0a: $80
    add b                                         ; $7a0b: $80
    rrca                                          ; $7a0c: $0f
    add b                                         ; $7a0d: $80
    add b                                         ; $7a0e: $80
    add b                                         ; $7a0f: $80
    rrca                                          ; $7a10: $0f
    add b                                         ; $7a11: $80
    add b                                         ; $7a12: $80
    add b                                         ; $7a13: $80
    rrca                                          ; $7a14: $0f
    add b                                         ; $7a15: $80
    add b                                         ; $7a16: $80
    add b                                         ; $7a17: $80
    rlca                                          ; $7a18: $07
    cp a                                          ; $7a19: $bf
    ret nz                                        ; $7a1a: $c0

    pop bc                                        ; $7a1b: $c1
    jp nz, $c4c3                                  ; $7a1c: $c2 $c3 $c4

    push bc                                       ; $7a1f: $c5
    add $c7                                       ; $7a20: $c6 $c7
    ret z                                         ; $7a22: $c8

    ret                                           ; $7a23: $c9


    jp z, $5756                                   ; $7a24: $ca $56 $57

    set 1, h                                      ; $7a27: $cb $cc
    ld c, $09                                     ; $7a29: $0e $09
    ld a, [bc]                                    ; $7a2b: $0a
    ld a, [bc]                                    ; $7a2c: $0a
    add hl, bc                                    ; $7a2d: $09
    add hl, bc                                    ; $7a2e: $09
    ld a, [bc]                                    ; $7a2f: $0a
    ld a, [bc]                                    ; $7a30: $0a
    add hl, bc                                    ; $7a31: $09
    ld c, $0a                                     ; $7a32: $0e $0a
    ld a, [bc]                                    ; $7a34: $0a
    ld b, $01                                     ; $7a35: $06 $01
    ld a, [bc]                                    ; $7a37: $0a
    ld a, [bc]                                    ; $7a38: $0a
    call $cfce                                    ; $7a39: $cd $ce $cf
    cp h                                          ; $7a3c: $bc
    ret nc                                        ; $7a3d: $d0

    pop de                                        ; $7a3e: $d1
    jp nc, $d3bd                                  ; $7a3f: $d2 $bd $d3

    call nc, $bed5                                ; $7a42: $d4 $d5 $be
    call z, Call_082_4bd6                         ; $7a45: $cc $d6 $4b
    ld c, h                                       ; $7a48: $4c
    ld a, [bc]                                    ; $7a49: $0a
    ld a, [bc]                                    ; $7a4a: $0a
    add hl, bc                                    ; $7a4b: $09
    add hl, bc                                    ; $7a4c: $09
    ld a, [bc]                                    ; $7a4d: $0a
    ld a, [bc]                                    ; $7a4e: $0a
    add hl, bc                                    ; $7a4f: $09
    ld c, $0a                                     ; $7a50: $0e $0a
    ld a, [bc]                                    ; $7a52: $0a
    rrca                                          ; $7a53: $0f
    add hl, bc                                    ; $7a54: $09
    ld a, [bc]                                    ; $7a55: $0a
    ld a, [bc]                                    ; $7a56: $0a
    rlca                                          ; $7a57: $07
    ld b, $bf                                     ; $7a58: $06 $bf
    pop bc                                        ; $7a5a: $c1
    jp nz, $c3cd                                  ; $7a5b: $c2 $cd $c3

    rst $10                                       ; $7a5e: $d7
    ret c                                         ; $7a5f: $d8

    ret nc                                        ; $7a60: $d0

    rst $00                                       ; $7a61: $c7
    reti                                          ; $7a62: $d9


    jp c, $56d3                                   ; $7a63: $da $d3 $56

    set 1, h                                      ; $7a66: $cb $cc
    call z, Call_000_0a0e                         ; $7a68: $cc $0e $0a
    ld a, [bc]                                    ; $7a6b: $0a
    ld a, [bc]                                    ; $7a6c: $0a
    add hl, bc                                    ; $7a6d: $09
    ld a, [bc]                                    ; $7a6e: $0a
    ld a, [bc]                                    ; $7a6f: $0a
    ld a, [bc]                                    ; $7a70: $0a
    add hl, bc                                    ; $7a71: $09
    ld a, [bc]                                    ; $7a72: $0a
    ld a, [bc]                                    ; $7a73: $0a
    ld a, [bc]                                    ; $7a74: $0a
    ld bc, $0a0a                                  ; $7a75: $01 $0a $0a
    ld a, [bc]                                    ; $7a78: $0a

Jump_082_7a79:
    pop de                                        ; $7a79: $d1
    pop de                                        ; $7a7a: $d1
    jp nc, $d170                                  ; $7a7b: $d2 $70 $d1

    pop de                                        ; $7a7e: $d1
    jp nc, $d174                                  ; $7a7f: $d2 $74 $d1

    pop de                                        ; $7a82: $d1
    jp nc, $d178                                  ; $7a83: $d2 $78 $d1

    pop de                                        ; $7a86: $d1
    jp nc, $805c                                  ; $7a87: $d2 $5c $80

    add b                                         ; $7a8a: $80
    add b                                         ; $7a8b: $80
    rlca                                          ; $7a8c: $07
    add b                                         ; $7a8d: $80
    add b                                         ; $7a8e: $80
    add b                                         ; $7a8f: $80
    rlca                                          ; $7a90: $07
    add b                                         ; $7a91: $80
    add b                                         ; $7a92: $80
    add b                                         ; $7a93: $80
    rlca                                          ; $7a94: $07
    add b                                         ; $7a95: $80
    add b                                         ; $7a96: $80
    add b                                         ; $7a97: $80
    rlca                                          ; $7a98: $07
    ld a, h                                       ; $7a99: $7c
    ld a, l                                       ; $7a9a: $7d
    db $db                                        ; $7a9b: $db
    call c, Call_082_627e                         ; $7a9c: $dc $7e $62
    ld h, e                                       ; $7a9f: $63
    ld h, h                                       ; $7aa0: $64
    ld h, l                                       ; $7aa1: $65
    ld h, [hl]                                    ; $7aa2: $66
    ld h, a                                       ; $7aa3: $67
    ld l, b                                       ; $7aa4: $68
    ld l, c                                       ; $7aa5: $69
    ld l, d                                       ; $7aa6: $6a
    ld l, e                                       ; $7aa7: $6b
    ld l, h                                       ; $7aa8: $6c
    ld bc, $0a06                                  ; $7aa9: $01 $06 $0a
    ld a, [bc]                                    ; $7aac: $0a
    ld bc, $0701                                  ; $7aad: $01 $01 $07
    rlca                                          ; $7ab0: $07
    ld bc, $0101                                  ; $7ab1: $01 $01 $01
    ld bc, $0601                                  ; $7ab4: $01 $01 $06
    ld bc, $dd01                                  ; $7ab7: $01 $01 $dd
    sbc $6f                                       ; $7aba: $de $6f
    ld [hl], b                                    ; $7abc: $70
    ld [hl], c                                    ; $7abd: $71
    ld [hl], d                                    ; $7abe: $72
    ld [hl], e                                    ; $7abf: $73
    ld [hl], h                                    ; $7ac0: $74
    ld [hl], l                                    ; $7ac1: $75
    halt                                          ; $7ac2: $76
    ld [hl], a                                    ; $7ac3: $77
    ld a, b                                       ; $7ac4: $78
    ld a, c                                       ; $7ac5: $79
    ld a, d                                       ; $7ac6: $7a
    ld a, e                                       ; $7ac7: $7b
    ld e, h                                       ; $7ac8: $5c
    ld a, [bc]                                    ; $7ac9: $0a
    ld a, [bc]                                    ; $7aca: $0a
    rlca                                          ; $7acb: $07
    ld bc, $0707                                  ; $7acc: $01 $07 $07
    rlca                                          ; $7acf: $07
    ld bc, $0101                                  ; $7ad0: $01 $01 $01
    ld b, $01                                     ; $7ad3: $06 $01
    ld bc, $0106                                  ; $7ad5: $01 $06 $01
    ld b, $7c                                     ; $7ad8: $06 $7c
    db $db                                        ; $7ada: $db
    call c, Call_082_7edd                         ; $7adb: $dc $dd $7e
    ld h, d                                       ; $7ade: $62
    ld h, e                                       ; $7adf: $63
    ld h, h                                       ; $7ae0: $64
    ld h, l                                       ; $7ae1: $65
    ld h, [hl]                                    ; $7ae2: $66
    ld h, a                                       ; $7ae3: $67
    ld l, b                                       ; $7ae4: $68
    ld l, c                                       ; $7ae5: $69
    ld l, d                                       ; $7ae6: $6a
    ld l, e                                       ; $7ae7: $6b
    ld l, h                                       ; $7ae8: $6c
    ld bc, $0a0a                                  ; $7ae9: $01 $0a $0a
    ld a, [bc]                                    ; $7aec: $0a
    ld bc, $0707                                  ; $7aed: $01 $07 $07
    rlca                                          ; $7af0: $07
    ld b, $01                                     ; $7af1: $06 $01
    ld bc, $0106                                  ; $7af3: $01 $06 $01
    ld bc, $0106                                  ; $7af6: $01 $06 $01
    cp a                                          ; $7af9: $bf
    ret nz                                        ; $7afa: $c0

    rst $18                                       ; $7afb: $df
    ldh [$c3], a                                  ; $7afc: $e0 $c3
    call nz, $c2c1                                ; $7afe: $c4 $c1 $c2
    rst $00                                       ; $7b01: $c7
    ret z                                         ; $7b02: $c8

    pop hl                                        ; $7b03: $e1
    ld [c], a                                     ; $7b04: $e2
    ld d, [hl]                                    ; $7b05: $56
    ld d, a                                       ; $7b06: $57
    call nc, Call_000_0ee3                        ; $7b07: $d4 $e3 $0e
    add hl, bc                                    ; $7b0a: $09
    add hl, bc                                    ; $7b0b: $09
    ld c, $09                                     ; $7b0c: $0e $09
    add hl, bc                                    ; $7b0e: $09
    ld a, [bc]                                    ; $7b0f: $0a
    ld a, [bc]                                    ; $7b10: $0a
    add hl, bc                                    ; $7b11: $09
    ld c, $0a                                     ; $7b12: $0e $0a
    ld a, [bc]                                    ; $7b14: $0a
    ld b, $01                                     ; $7b15: $06 $01
    ld a, [hl+]                                   ; $7b17: $2a
    ld a, [bc]                                    ; $7b18: $0a
    db $e4                                        ; $7b19: $e4
    push hl                                       ; $7b1a: $e5
    rst $08                                       ; $7b1b: $cf
    cp h                                          ; $7b1c: $bc
    call $d2ce                                    ; $7b1d: $cd $ce $d2
    cp l                                          ; $7b20: $bd
    and $e7                                       ; $7b21: $e6 $e7
    push de                                       ; $7b23: $d5
    cp [hl]                                       ; $7b24: $be
    add sp, -$17                                  ; $7b25: $e8 $e9
    ld c, e                                       ; $7b27: $4b
    ld c, h                                       ; $7b28: $4c
    add hl, bc                                    ; $7b29: $09
    add hl, bc                                    ; $7b2a: $09
    add hl, bc                                    ; $7b2b: $09
    ld c, $0a                                     ; $7b2c: $0e $0a
    ld a, [bc]                                    ; $7b2e: $0a
    add hl, bc                                    ; $7b2f: $09
    add hl, bc                                    ; $7b30: $09
    ld a, [bc]                                    ; $7b31: $0a
    ld a, [bc]                                    ; $7b32: $0a
    rrca                                          ; $7b33: $0f
    add hl, bc                                    ; $7b34: $09
    ld a, [bc]                                    ; $7b35: $0a
    ld a, [bc]                                    ; $7b36: $0a
    rlca                                          ; $7b37: $07
    ld b, $bf                                     ; $7b38: $06 $bf
    ret nz                                        ; $7b3a: $c0

    rst $18                                       ; $7b3b: $df
    ldh [$c3], a                                  ; $7b3c: $e0 $c3
    pop bc                                        ; $7b3e: $c1
    jp nz, $c7cd                                  ; $7b3f: $c2 $cd $c7

    pop hl                                        ; $7b42: $e1
    ret nc                                        ; $7b43: $d0

    ld [$d456], a                                 ; $7b44: $ea $56 $d4
    db $d3                                        ; $7b47: $d3
    db $eb                                        ; $7b48: $eb
    add hl, bc                                    ; $7b49: $09
    ld c, $09                                     ; $7b4a: $0e $09
    add hl, bc                                    ; $7b4c: $09
    add hl, bc                                    ; $7b4d: $09
    ld a, [bc]                                    ; $7b4e: $0a
    ld a, [bc]                                    ; $7b4f: $0a
    ld a, [bc]                                    ; $7b50: $0a
    add hl, bc                                    ; $7b51: $09
    ld a, [bc]                                    ; $7b52: $0a
    ld a, [bc]                                    ; $7b53: $0a
    ld a, [bc]                                    ; $7b54: $0a
    ld bc, $0a2a                                  ; $7b55: $01 $2a $0a
    ld a, [bc]                                    ; $7b58: $0a
    ld a, h                                       ; $7b59: $7c
    ld a, l                                       ; $7b5a: $7d
    set 1, h                                      ; $7b5b: $cb $cc
    ld a, [hl]                                    ; $7b5d: $7e
    ld h, d                                       ; $7b5e: $62
    db $db                                        ; $7b5f: $db
    call c, Call_082_6665                         ; $7b60: $dc $65 $66
    ld h, a                                       ; $7b63: $67
    ld l, b                                       ; $7b64: $68
    ld l, c                                       ; $7b65: $69
    ld l, d                                       ; $7b66: $6a
    ld l, e                                       ; $7b67: $6b
    ld l, h                                       ; $7b68: $6c
    ld bc, $0a01                                  ; $7b69: $01 $01 $0a
    ld a, [bc]                                    ; $7b6c: $0a
    ld bc, $0a06                                  ; $7b6d: $01 $06 $0a
    ld a, [bc]                                    ; $7b70: $0a
    ld bc, $0701                                  ; $7b71: $01 $01 $07
    rlca                                          ; $7b74: $07
    ld bc, $0106                                  ; $7b75: $01 $06 $01
    ld bc, $d6cc                                  ; $7b78: $01 $cc $d6
    ld l, a                                       ; $7b7b: $6f
    ld [hl], b                                    ; $7b7c: $70
    db $dd                                        ; $7b7d: $dd
    sbc $73                                       ; $7b7e: $de $73
    ld [hl], h                                    ; $7b80: $74
    ld [hl], l                                    ; $7b81: $75
    halt                                          ; $7b82: $76
    ld [hl], a                                    ; $7b83: $77
    ld a, b                                       ; $7b84: $78
    ld a, c                                       ; $7b85: $79
    ld a, d                                       ; $7b86: $7a
    ld a, e                                       ; $7b87: $7b
    ld e, h                                       ; $7b88: $5c
    ld a, [bc]                                    ; $7b89: $0a
    ld a, [bc]                                    ; $7b8a: $0a
    rlca                                          ; $7b8b: $07
    ld bc, $0a0a                                  ; $7b8c: $01 $0a $0a
    rlca                                          ; $7b8f: $07
    ld bc, $0707                                  ; $7b90: $01 $07 $07
    rlca                                          ; $7b93: $07
    ld b, $06                                     ; $7b94: $06 $06
    ld bc, $0106                                  ; $7b96: $01 $06 $01
    ld a, h                                       ; $7b99: $7c
    set 1, h                                      ; $7b9a: $cb $cc
    call z, $db7e                                 ; $7b9c: $cc $7e $db
    call c, Call_082_65dd                         ; $7b9f: $dc $dd $65
    ld h, [hl]                                    ; $7ba2: $66
    ld h, a                                       ; $7ba3: $67
    ld l, b                                       ; $7ba4: $68
    ld l, c                                       ; $7ba5: $69
    ld l, d                                       ; $7ba6: $6a
    ld l, e                                       ; $7ba7: $6b
    ld l, h                                       ; $7ba8: $6c
    ld b, $0a                                     ; $7ba9: $06 $0a
    ld a, [bc]                                    ; $7bab: $0a
    ld a, [bc]                                    ; $7bac: $0a
    ld bc, $0a0a                                  ; $7bad: $01 $0a $0a
    ld a, [bc]                                    ; $7bb0: $0a
    ld bc, $0707                                  ; $7bb1: $01 $07 $07
    rlca                                          ; $7bb4: $07
    ld bc, $0601                                  ; $7bb5: $01 $01 $06
    ld bc, $e5ce                                  ; $7bb8: $01 $ce $e5
    rst $08                                       ; $7bbb: $cf
    cp h                                          ; $7bbc: $bc
    pop de                                        ; $7bbd: $d1
    db $ec                                        ; $7bbe: $ec
    jp nc, $d4bd                                  ; $7bbf: $d2 $bd $d4

    db $ed                                        ; $7bc2: $ed
    push de                                       ; $7bc3: $d5
    cp [hl]                                       ; $7bc4: $be
    sub $4a                                       ; $7bc5: $d6 $4a
    ld c, e                                       ; $7bc7: $4b
    ld c, h                                       ; $7bc8: $4c
    ld a, [bc]                                    ; $7bc9: $0a
    add hl, bc                                    ; $7bca: $09
    ld c, $09                                     ; $7bcb: $0e $09
    ld a, [bc]                                    ; $7bcd: $0a
    add hl, bc                                    ; $7bce: $09
    ld c, $09                                     ; $7bcf: $0e $09
    ld a, [bc]                                    ; $7bd1: $0a
    rrca                                          ; $7bd2: $0f
    add hl, bc                                    ; $7bd3: $09
    ld c, $0a                                     ; $7bd4: $0e $0a
    rlca                                          ; $7bd6: $07
    ld b, $01                                     ; $7bd7: $06 $01
    pop bc                                        ; $7bd9: $c1
    jp nz, $cecd                                  ; $7bda: $c2 $cd $ce

    pop hl                                        ; $7bdd: $e1
    xor $ef                                       ; $7bde: $ee $ef
    pop de                                        ; $7be0: $d1
    call nc, $f1f0                                ; $7be1: $d4 $f0 $f1
    call nc, $cccb                                ; $7be4: $d4 $cb $cc
    call z, Call_000_0ad6                         ; $7be7: $cc $d6 $0a
    ld a, [bc]                                    ; $7bea: $0a
    ld a, [bc]                                    ; $7beb: $0a
    ld a, [bc]                                    ; $7bec: $0a
    ld a, [bc]                                    ; $7bed: $0a
    ld a, [bc]                                    ; $7bee: $0a
    ld a, [bc]                                    ; $7bef: $0a
    ld a, [bc]                                    ; $7bf0: $0a
    ld a, [hl+]                                   ; $7bf1: $2a
    ld a, [bc]                                    ; $7bf2: $0a
    ld a, [bc]                                    ; $7bf3: $0a
    ld a, [bc]                                    ; $7bf4: $0a
    ld a, [bc]                                    ; $7bf5: $0a
    ld a, [bc]                                    ; $7bf6: $0a
    ld a, [bc]                                    ; $7bf7: $0a
    ld a, [bc]                                    ; $7bf8: $0a
    db $e4                                        ; $7bf9: $e4
    push hl                                       ; $7bfa: $e5
    rst $08                                       ; $7bfb: $cf
    jp nc, $ecf2                                  ; $7bfc: $d2 $f2 $ec

    jp nc, $f3d2                                  ; $7bff: $d2 $d2 $f3

    db $ed                                        ; $7c02: $ed
    push de                                       ; $7c03: $d5
    jp nc, Jump_082_4a49                          ; $7c04: $d2 $49 $4a

    ld c, e                                       ; $7c07: $4b
    jp nc, Jump_000_0e09                          ; $7c08: $d2 $09 $0e

    rrca                                          ; $7c0b: $0f
    add b                                         ; $7c0c: $80
    add hl, bc                                    ; $7c0d: $09
    add hl, bc                                    ; $7c0e: $09
    rrca                                          ; $7c0f: $0f
    add b                                         ; $7c10: $80
    rrca                                          ; $7c11: $0f
    ld c, $0f                                     ; $7c12: $0e $0f
    add b                                         ; $7c14: $80
    rlca                                          ; $7c15: $07
    ld bc, $8007                                  ; $7c16: $01 $07 $80
    sbc $6e                                       ; $7c19: $de $6e
    ld l, a                                       ; $7c1b: $6f
    ld [hl], b                                    ; $7c1c: $70
    ld [hl], c                                    ; $7c1d: $71
    ld [hl], d                                    ; $7c1e: $72
    ld [hl], e                                    ; $7c1f: $73
    ld [hl], h                                    ; $7c20: $74
    ld [hl], l                                    ; $7c21: $75
    halt                                          ; $7c22: $76
    ld [hl], a                                    ; $7c23: $77
    ld a, b                                       ; $7c24: $78
    ld a, c                                       ; $7c25: $79
    ld a, d                                       ; $7c26: $7a
    ld a, e                                       ; $7c27: $7b
    ld e, h                                       ; $7c28: $5c
    ld a, [bc]                                    ; $7c29: $0a
    rlca                                          ; $7c2a: $07
    ld bc, $0701                                  ; $7c2b: $01 $01 $07
    rlca                                          ; $7c2e: $07
    ld bc, $0106                                  ; $7c2f: $01 $06 $01
    ld bc, $0101                                  ; $7c32: $01 $01 $01
    ld bc, $0601                                  ; $7c35: $01 $01 $06
    ld bc, $dcdb                                  ; $7c38: $01 $db $dc
    db $dd                                        ; $7c3b: $dd
    sbc $7e                                       ; $7c3c: $de $7e
    ld h, d                                       ; $7c3e: $62
    ld h, e                                       ; $7c3f: $63
    ld h, h                                       ; $7c40: $64
    ld h, l                                       ; $7c41: $65
    ld h, [hl]                                    ; $7c42: $66
    ld h, a                                       ; $7c43: $67
    ld l, b                                       ; $7c44: $68
    ld l, c                                       ; $7c45: $69
    ld l, d                                       ; $7c46: $6a
    ld l, e                                       ; $7c47: $6b
    ld l, h                                       ; $7c48: $6c
    ld a, [bc]                                    ; $7c49: $0a
    ld a, [bc]                                    ; $7c4a: $0a
    ld a, [bc]                                    ; $7c4b: $0a
    ld a, [bc]                                    ; $7c4c: $0a
    rlca                                          ; $7c4d: $07
    rlca                                          ; $7c4e: $07
    rlca                                          ; $7c4f: $07
    rlca                                          ; $7c50: $07
    ld b, $01                                     ; $7c51: $06 $01
    ld bc, $0101                                  ; $7c53: $01 $01 $01
    ld b, $01                                     ; $7c56: $06 $01
    ld bc, $6e6d                                  ; $7c58: $01 $6d $6e
    ld l, a                                       ; $7c5b: $6f
    jp nc, Jump_082_7271                          ; $7c5c: $d2 $71 $72

    ld [hl], e                                    ; $7c5f: $73
    jp nc, Jump_082_7675                          ; $7c60: $d2 $75 $76

    ld [hl], a                                    ; $7c63: $77
    db $f4                                        ; $7c64: $f4
    ld a, c                                       ; $7c65: $79
    ld a, d                                       ; $7c66: $7a
    ld a, e                                       ; $7c67: $7b
    add d                                         ; $7c68: $82
    rlca                                          ; $7c69: $07
    ld bc, $8007                                  ; $7c6a: $01 $07 $80
    rlca                                          ; $7c6d: $07
    ld bc, $8007                                  ; $7c6e: $01 $07 $80
    ld bc, $0706                                  ; $7c71: $01 $06 $07
    adc b                                         ; $7c74: $88
    ld bc, $0701                                  ; $7c75: $01 $01 $07
    dec c                                         ; $7c78: $0d
    pop de                                        ; $7c79: $d1
    pop de                                        ; $7c7a: $d1
    pop de                                        ; $7c7b: $d1
    pop de                                        ; $7c7c: $d1
    pop de                                        ; $7c7d: $d1
    pop de                                        ; $7c7e: $d1
    pop de                                        ; $7c7f: $d1
    pop de                                        ; $7c80: $d1
    push af                                       ; $7c81: $f5
    or $d1                                        ; $7c82: $f6 $d1
    pop de                                        ; $7c84: $d1
    adc a                                         ; $7c85: $8f
    jp nc, $d1d1                                  ; $7c86: $d2 $d1 $d1

    add b                                         ; $7c89: $80
    add b                                         ; $7c8a: $80
    add b                                         ; $7c8b: $80
    add b                                         ; $7c8c: $80
    add b                                         ; $7c8d: $80
    add b                                         ; $7c8e: $80
    add b                                         ; $7c8f: $80
    add b                                         ; $7c90: $80
    adc b                                         ; $7c91: $88
    adc b                                         ; $7c92: $88
    add b                                         ; $7c93: $80
    add b                                         ; $7c94: $80
    dec c                                         ; $7c95: $0d
    add b                                         ; $7c96: $80
    add b                                         ; $7c97: $80
    add b                                         ; $7c98: $80
    db $e4                                        ; $7c99: $e4
    push hl                                       ; $7c9a: $e5
    rst $08                                       ; $7c9b: $cf
    cp h                                          ; $7c9c: $bc
    adc $ec                                       ; $7c9d: $ce $ec
    jp nc, $f7bd                                  ; $7c9f: $d2 $bd $f7

    db $ed                                        ; $7ca2: $ed
    push de                                       ; $7ca3: $d5
    cp [hl]                                       ; $7ca4: $be
    ld hl, sp+$4a                                 ; $7ca5: $f8 $4a
    ld c, e                                       ; $7ca7: $4b
    ld c, h                                       ; $7ca8: $4c
    ld c, $09                                     ; $7ca9: $0e $09
    add hl, bc                                    ; $7cab: $09
    add hl, bc                                    ; $7cac: $09
    ld a, [bc]                                    ; $7cad: $0a
    add hl, bc                                    ; $7cae: $09
    add hl, bc                                    ; $7caf: $09
    ld c, $0a                                     ; $7cb0: $0e $0a
    ld c, $0e                                     ; $7cb2: $0e $0e
    add hl, bc                                    ; $7cb4: $09
    ld a, [bc]                                    ; $7cb5: $0a
    rlca                                          ; $7cb6: $07
    ld b, $01                                     ; $7cb7: $06 $01
    cp a                                          ; $7cb9: $bf
    ret nz                                        ; $7cba: $c0

    rst $18                                       ; $7cbb: $df
    ldh [$c1], a                                  ; $7cbc: $e0 $c1
    jp nz, $cecd                                  ; $7cbe: $c2 $cd $ce

    pop hl                                        ; $7cc1: $e1
    ret nc                                        ; $7cc2: $d0

    ld sp, hl                                     ; $7cc3: $f9
    ld a, [$d3d4]                                 ; $7cc4: $fa $d4 $d3
    ei                                            ; $7cc7: $fb
    db $fc                                        ; $7cc8: $fc
    ld c, $09                                     ; $7cc9: $0e $09
    add hl, bc                                    ; $7ccb: $09
    ld c, $0a                                     ; $7ccc: $0e $0a
    ld a, [bc]                                    ; $7cce: $0a
    ld a, [bc]                                    ; $7ccf: $0a
    ld a, [bc]                                    ; $7cd0: $0a
    ld a, [bc]                                    ; $7cd1: $0a
    ld a, [bc]                                    ; $7cd2: $0a
    ld a, [bc]                                    ; $7cd3: $0a
    ld a, [bc]                                    ; $7cd4: $0a
    ld a, [hl+]                                   ; $7cd5: $2a
    ld a, [bc]                                    ; $7cd6: $0a
    ld a, [bc]                                    ; $7cd7: $0a
    ld a, [bc]                                    ; $7cd8: $0a
    db $e4                                        ; $7cd9: $e4
    push hl                                       ; $7cda: $e5
    rst $08                                       ; $7cdb: $cf
    add [hl]                                      ; $7cdc: $86
    ld a, [c]                                     ; $7cdd: $f2
    db $ec                                        ; $7cde: $ec
    jp nc, $f38a                                  ; $7cdf: $d2 $8a $f3

    db $ed                                        ; $7ce2: $ed
    push de                                       ; $7ce3: $d5
    adc [hl]                                      ; $7ce4: $8e
    ld c, c                                       ; $7ce5: $49
    ld c, d                                       ; $7ce6: $4a
    ld c, e                                       ; $7ce7: $4b
    rla                                           ; $7ce8: $17
    add hl, bc                                    ; $7ce9: $09
    add hl, bc                                    ; $7cea: $09
    rrca                                          ; $7ceb: $0f
    dec c                                         ; $7cec: $0d
    add hl, bc                                    ; $7ced: $09
    ld c, $0f                                     ; $7cee: $0e $0f
    dec c                                         ; $7cf0: $0d
    add hl, bc                                    ; $7cf1: $09
    add hl, bc                                    ; $7cf2: $09
    rrca                                          ; $7cf3: $0f
    dec c                                         ; $7cf4: $0d
    rlca                                          ; $7cf5: $07
    ld bc, $0507                                  ; $7cf6: $01 $07 $05
    sub d                                         ; $7cf9: $92
    db $fd                                        ; $7cfa: $fd
    pop de                                        ; $7cfb: $d1
    pop de                                        ; $7cfc: $d1
    sub l                                         ; $7cfd: $95
    db $fd                                        ; $7cfe: $fd
    pop de                                        ; $7cff: $d1
    pop de                                        ; $7d00: $d1
    sbc b                                         ; $7d01: $98
    db $fd                                        ; $7d02: $fd
    pop de                                        ; $7d03: $d1
    pop de                                        ; $7d04: $d1
    and l                                         ; $7d05: $a5
    db $fd                                        ; $7d06: $fd
    pop de                                        ; $7d07: $d1
    pop de                                        ; $7d08: $d1
    dec c                                         ; $7d09: $0d
    adc b                                         ; $7d0a: $88
    add b                                         ; $7d0b: $80
    add b                                         ; $7d0c: $80
    dec c                                         ; $7d0d: $0d
    adc b                                         ; $7d0e: $88
    add b                                         ; $7d0f: $80
    add b                                         ; $7d10: $80
    dec c                                         ; $7d11: $0d
    adc b                                         ; $7d12: $88
    add b                                         ; $7d13: $80
    add b                                         ; $7d14: $80
    dec c                                         ; $7d15: $0d
    adc b                                         ; $7d16: $88
    add b                                         ; $7d17: $80
    add b                                         ; $7d18: $80
    sub $6e                                       ; $7d19: $d6 $6e
    ld l, a                                       ; $7d1b: $6f
    ld [hl], b                                    ; $7d1c: $70
    sbc $72                                       ; $7d1d: $de $72
    ld [hl], e                                    ; $7d1f: $73
    ld [hl], h                                    ; $7d20: $74
    ld [hl], l                                    ; $7d21: $75
    halt                                          ; $7d22: $76
    ld [hl], a                                    ; $7d23: $77
    ld a, b                                       ; $7d24: $78
    ld a, c                                       ; $7d25: $79
    ld a, d                                       ; $7d26: $7a
    ld a, e                                       ; $7d27: $7b
    ld e, h                                       ; $7d28: $5c
    ld a, [bc]                                    ; $7d29: $0a
    rlca                                          ; $7d2a: $07
    ld bc, $0a01                                  ; $7d2b: $01 $01 $0a
    rlca                                          ; $7d2e: $07
    ld bc, $0706                                  ; $7d2f: $01 $06 $07
    rlca                                          ; $7d32: $07
    ld bc, $0601                                  ; $7d33: $01 $01 $06
    ld bc, $0106                                  ; $7d36: $01 $06 $01
    set 1, h                                      ; $7d39: $cb $cc
    call z, $dbd6                                 ; $7d3b: $cc $d6 $db
    call c, $dedd                                 ; $7d3e: $dc $dd $de
    ld h, l                                       ; $7d41: $65
    ld h, [hl]                                    ; $7d42: $66
    ld h, a                                       ; $7d43: $67
    ld l, b                                       ; $7d44: $68
    ld l, c                                       ; $7d45: $69
    ld l, d                                       ; $7d46: $6a
    ld l, e                                       ; $7d47: $6b
    ld l, h                                       ; $7d48: $6c
    ld a, [bc]                                    ; $7d49: $0a
    ld a, [bc]                                    ; $7d4a: $0a
    ld a, [bc]                                    ; $7d4b: $0a
    ld a, [bc]                                    ; $7d4c: $0a
    ld a, [bc]                                    ; $7d4d: $0a
    ld a, [bc]                                    ; $7d4e: $0a
    ld a, [bc]                                    ; $7d4f: $0a
    ld a, [bc]                                    ; $7d50: $0a
    rlca                                          ; $7d51: $07
    rlca                                          ; $7d52: $07
    rlca                                          ; $7d53: $07
    rlca                                          ; $7d54: $07
    ld bc, $0106                                  ; $7d55: $01 $06 $01
    ld b, $6d                                     ; $7d58: $06 $6d
    ld l, [hl]                                    ; $7d5a: $6e
    ld l, a                                       ; $7d5b: $6f
    ld [hl], b                                    ; $7d5c: $70
    ld [hl], c                                    ; $7d5d: $71
    ld [hl], d                                    ; $7d5e: $72
    ld [hl], e                                    ; $7d5f: $73
    ld [hl], h                                    ; $7d60: $74
    ld [hl], l                                    ; $7d61: $75
    halt                                          ; $7d62: $76
    ld [hl], a                                    ; $7d63: $77
    cp $79                                        ; $7d64: $fe $79
    ld a, d                                       ; $7d66: $7a
    ld a, e                                       ; $7d67: $7b
    jp nc, $0107                                  ; $7d68: $d2 $07 $01

    rlca                                          ; $7d6b: $07
    rlca                                          ; $7d6c: $07
    rlca                                          ; $7d6d: $07
    ld bc, $0106                                  ; $7d6e: $01 $06 $01
    rlca                                          ; $7d71: $07
    ld b, $01                                     ; $7d72: $06 $01
    adc b                                         ; $7d74: $88
    ld bc, $0101                                  ; $7d75: $01 $01 $01
    add b                                         ; $7d78: $80
    ld a, h                                       ; $7d79: $7c
    db $fd                                        ; $7d7a: $fd
    rst $38                                       ; $7d7b: $ff
    pop de                                        ; $7d7c: $d1
    ld a, [hl]                                    ; $7d7d: $7e
    jp nc, $d1ff                                  ; $7d7e: $d2 $ff $d1

    push af                                       ; $7d81: $f5
    nop                                           ; $7d82: $00
    rst $38                                       ; $7d83: $ff
    pop de                                        ; $7d84: $d1
    pop de                                        ; $7d85: $d1
    pop de                                        ; $7d86: $d1
    pop de                                        ; $7d87: $d1
    pop de                                        ; $7d88: $d1
    rlca                                          ; $7d89: $07
    adc b                                         ; $7d8a: $88
    adc b                                         ; $7d8b: $88
    add b                                         ; $7d8c: $80
    rlca                                          ; $7d8d: $07
    add b                                         ; $7d8e: $80
    adc b                                         ; $7d8f: $88
    add b                                         ; $7d90: $80
    adc b                                         ; $7d91: $88
    adc b                                         ; $7d92: $88
    adc b                                         ; $7d93: $88
    add b                                         ; $7d94: $80
    add b                                         ; $7d95: $80
    add b                                         ; $7d96: $80
    add b                                         ; $7d97: $80
    add b                                         ; $7d98: $80
    pop de                                        ; $7d99: $d1
    pop de                                        ; $7d9a: $d1
    db $f4                                        ; $7d9b: $f4
    push af                                       ; $7d9c: $f5
    pop de                                        ; $7d9d: $d1
    pop de                                        ; $7d9e: $d1
    pop de                                        ; $7d9f: $d1
    pop de                                        ; $7da0: $d1
    pop de                                        ; $7da1: $d1
    pop de                                        ; $7da2: $d1
    pop de                                        ; $7da3: $d1
    pop de                                        ; $7da4: $d1
    pop de                                        ; $7da5: $d1
    pop de                                        ; $7da6: $d1
    pop de                                        ; $7da7: $d1
    pop de                                        ; $7da8: $d1
    add b                                         ; $7da9: $80
    add b                                         ; $7daa: $80
    adc b                                         ; $7dab: $88
    adc b                                         ; $7dac: $88
    add b                                         ; $7dad: $80
    add b                                         ; $7dae: $80
    add b                                         ; $7daf: $80
    add b                                         ; $7db0: $80
    add b                                         ; $7db1: $80
    add b                                         ; $7db2: $80
    add b                                         ; $7db3: $80
    add b                                         ; $7db4: $80
    add b                                         ; $7db5: $80
    add b                                         ; $7db6: $80
    add b                                         ; $7db7: $80
    add b                                         ; $7db8: $80
    push af                                       ; $7db9: $f5
    push af                                       ; $7dba: $f5
    push af                                       ; $7dbb: $f5
    push af                                       ; $7dbc: $f5
    pop de                                        ; $7dbd: $d1
    pop de                                        ; $7dbe: $d1
    pop de                                        ; $7dbf: $d1
    pop de                                        ; $7dc0: $d1
    pop de                                        ; $7dc1: $d1
    pop de                                        ; $7dc2: $d1
    pop de                                        ; $7dc3: $d1
    pop de                                        ; $7dc4: $d1
    pop de                                        ; $7dc5: $d1
    pop de                                        ; $7dc6: $d1
    pop de                                        ; $7dc7: $d1
    pop de                                        ; $7dc8: $d1
    adc b                                         ; $7dc9: $88
    adc b                                         ; $7dca: $88
    adc b                                         ; $7dcb: $88
    adc b                                         ; $7dcc: $88
    add b                                         ; $7dcd: $80
    add b                                         ; $7dce: $80
    add b                                         ; $7dcf: $80
    add b                                         ; $7dd0: $80
    add b                                         ; $7dd1: $80
    add b                                         ; $7dd2: $80
    add b                                         ; $7dd3: $80
    add b                                         ; $7dd4: $80
    add b                                         ; $7dd5: $80
    add b                                         ; $7dd6: $80
    add b                                         ; $7dd7: $80
    add b                                         ; $7dd8: $80
    push af                                       ; $7dd9: $f5
    push af                                       ; $7dda: $f5
    push af                                       ; $7ddb: $f5
    nop                                           ; $7ddc: $00
    pop de                                        ; $7ddd: $d1
    pop de                                        ; $7dde: $d1
    pop de                                        ; $7ddf: $d1
    pop de                                        ; $7de0: $d1
    pop de                                        ; $7de1: $d1
    pop de                                        ; $7de2: $d1
    pop de                                        ; $7de3: $d1
    pop de                                        ; $7de4: $d1
    pop de                                        ; $7de5: $d1
    pop de                                        ; $7de6: $d1
    pop de                                        ; $7de7: $d1
    pop de                                        ; $7de8: $d1
    adc b                                         ; $7de9: $88
    adc b                                         ; $7dea: $88
    adc b                                         ; $7deb: $88
    adc b                                         ; $7dec: $88
    add b                                         ; $7ded: $80
    add b                                         ; $7dee: $80
    add b                                         ; $7def: $80
    add b                                         ; $7df0: $80
    add b                                         ; $7df1: $80
    add b                                         ; $7df2: $80
    add b                                         ; $7df3: $80
    add b                                         ; $7df4: $80
    add b                                         ; $7df5: $80
    add b                                         ; $7df6: $80
    add b                                         ; $7df7: $80
    add b                                         ; $7df8: $80
    ld d, l                                       ; $7df9: $55
    ld bc, $0000                                  ; $7dfa: $01 $00 $00
    nop                                           ; $7dfd: $00
    ld bc, $0200                                  ; $7dfe: $01 $00 $02
    nop                                           ; $7e01: $00
    inc bc                                        ; $7e02: $03
    nop                                           ; $7e03: $00
    nop                                           ; $7e04: $00
    stop                                          ; $7e05: $10 $00
    inc b                                         ; $7e07: $04
    nop                                           ; $7e08: $00
    dec b                                         ; $7e09: $05
    nop                                           ; $7e0a: $00
    ld b, $00                                     ; $7e0b: $06 $00
    nop                                           ; $7e0d: $00
    rlca                                          ; $7e0e: $07
    nop                                           ; $7e0f: $00
    ld de, $0800                                  ; $7e10: $11 $00 $08
    nop                                           ; $7e13: $00
    add hl, bc                                    ; $7e14: $09
    nop                                           ; $7e15: $00
    nop                                           ; $7e16: $00
    ld a, [bc]                                    ; $7e17: $0a
    nop                                           ; $7e18: $00
    dec bc                                        ; $7e19: $0b
    nop                                           ; $7e1a: $00
    ld [de], a                                    ; $7e1b: $12
    nop                                           ; $7e1c: $00
    inc c                                         ; $7e1d: $0c
    nop                                           ; $7e1e: $00
    nop                                           ; $7e1f: $00
    dec c                                         ; $7e20: $0d
    nop                                           ; $7e21: $00
    ld c, $00                                     ; $7e22: $0e $00
    rrca                                          ; $7e24: $0f
    nop                                           ; $7e25: $00
    inc de                                        ; $7e26: $13
    nop                                           ; $7e27: $00
    nop                                           ; $7e28: $00
    inc d                                         ; $7e29: $14
    nop                                           ; $7e2a: $00
    dec d                                         ; $7e2b: $15
    nop                                           ; $7e2c: $00
    ld d, $00                                     ; $7e2d: $16 $00
    rla                                           ; $7e2f: $17
    nop                                           ; $7e30: $00
    nop                                           ; $7e31: $00
    inc h                                         ; $7e32: $24
    nop                                           ; $7e33: $00
    jr jr_082_7e36                                ; $7e34: $18 $00

jr_082_7e36:
    add hl, de                                    ; $7e36: $19
    nop                                           ; $7e37: $00
    ld a, [de]                                    ; $7e38: $1a
    nop                                           ; $7e39: $00
    nop                                           ; $7e3a: $00
    dec de                                        ; $7e3b: $1b
    nop                                           ; $7e3c: $00
    dec h                                         ; $7e3d: $25
    nop                                           ; $7e3e: $00
    inc e                                         ; $7e3f: $1c
    nop                                           ; $7e40: $00
    dec e                                         ; $7e41: $1d
    nop                                           ; $7e42: $00
    nop                                           ; $7e43: $00
    ld e, $00                                     ; $7e44: $1e $00
    rra                                           ; $7e46: $1f
    nop                                           ; $7e47: $00
    ld h, $00                                     ; $7e48: $26 $00
    jr nz, jr_082_7e4c                            ; $7e4a: $20 $00

jr_082_7e4c:
    nop                                           ; $7e4c: $00
    ld hl, $2200                                  ; $7e4d: $21 $00 $22
    nop                                           ; $7e50: $00
    inc hl                                        ; $7e51: $23
    nop                                           ; $7e52: $00
    daa                                           ; $7e53: $27
    nop                                           ; $7e54: $00
    nop                                           ; $7e55: $00
    jr z, jr_082_7e58                             ; $7e56: $28 $00

jr_082_7e58:
    add hl, hl                                    ; $7e58: $29
    nop                                           ; $7e59: $00
    ld a, [hl+]                                   ; $7e5a: $2a
    nop                                           ; $7e5b: $00
    dec hl                                        ; $7e5c: $2b
    nop                                           ; $7e5d: $00
    nop                                           ; $7e5e: $00
    jr c, jr_082_7e61                             ; $7e5f: $38 $00

jr_082_7e61:
    inc l                                         ; $7e61: $2c
    nop                                           ; $7e62: $00
    dec l                                         ; $7e63: $2d
    nop                                           ; $7e64: $00
    ld l, $00                                     ; $7e65: $2e $00
    nop                                           ; $7e67: $00
    cpl                                           ; $7e68: $2f
    nop                                           ; $7e69: $00
    add hl, sp                                    ; $7e6a: $39
    nop                                           ; $7e6b: $00
    jr nc, jr_082_7e6e                            ; $7e6c: $30 $00

jr_082_7e6e:
    ld sp, $0000                                  ; $7e6e: $31 $00 $00
    ld [hl-], a                                   ; $7e71: $32
    nop                                           ; $7e72: $00
    inc sp                                        ; $7e73: $33
    nop                                           ; $7e74: $00
    ld a, [hl-]                                   ; $7e75: $3a
    nop                                           ; $7e76: $00
    inc [hl]                                      ; $7e77: $34
    nop                                           ; $7e78: $00
    nop                                           ; $7e79: $00
    dec [hl]                                      ; $7e7a: $35
    nop                                           ; $7e7b: $00
    ld [hl], $00                                  ; $7e7c: $36 $00
    scf                                           ; $7e7e: $37
    nop                                           ; $7e7f: $00
    dec sp                                        ; $7e80: $3b
    nop                                           ; $7e81: $00
    nop                                           ; $7e82: $00
    inc a                                         ; $7e83: $3c
    nop                                           ; $7e84: $00
    dec a                                         ; $7e85: $3d
    nop                                           ; $7e86: $00
    ld a, $00                                     ; $7e87: $3e $00
    ccf                                           ; $7e89: $3f
    nop                                           ; $7e8a: $00
    nop                                           ; $7e8b: $00
    ld c, h                                       ; $7e8c: $4c
    nop                                           ; $7e8d: $00
    ld b, b                                       ; $7e8e: $40
    nop                                           ; $7e8f: $00
    ld b, c                                       ; $7e90: $41
    nop                                           ; $7e91: $00
    ld b, d                                       ; $7e92: $42
    nop                                           ; $7e93: $00
    nop                                           ; $7e94: $00
    ld b, e                                       ; $7e95: $43
    nop                                           ; $7e96: $00
    ld c, l                                       ; $7e97: $4d
    nop                                           ; $7e98: $00
    ld b, h                                       ; $7e99: $44
    nop                                           ; $7e9a: $00
    ld b, l                                       ; $7e9b: $45
    nop                                           ; $7e9c: $00
    nop                                           ; $7e9d: $00
    ld b, [hl]                                    ; $7e9e: $46
    nop                                           ; $7e9f: $00
    ld b, a                                       ; $7ea0: $47
    nop                                           ; $7ea1: $00
    ld c, [hl]                                    ; $7ea2: $4e
    nop                                           ; $7ea3: $00
    ld c, b                                       ; $7ea4: $48
    nop                                           ; $7ea5: $00
    nop                                           ; $7ea6: $00
    ld c, c                                       ; $7ea7: $49
    nop                                           ; $7ea8: $00
    ld c, d                                       ; $7ea9: $4a
    nop                                           ; $7eaa: $00
    ld c, e                                       ; $7eab: $4b
    nop                                           ; $7eac: $00
    ld c, a                                       ; $7ead: $4f
    nop                                           ; $7eae: $00
    nop                                           ; $7eaf: $00
    ld d, b                                       ; $7eb0: $50
    nop                                           ; $7eb1: $00
    ld d, c                                       ; $7eb2: $51
    nop                                           ; $7eb3: $00
    ld d, d                                       ; $7eb4: $52
    nop                                           ; $7eb5: $00
    ld d, e                                       ; $7eb6: $53
    nop                                           ; $7eb7: $00
    nop                                           ; $7eb8: $00
    ld h, b                                       ; $7eb9: $60
    nop                                           ; $7eba: $00
    ld d, h                                       ; $7ebb: $54
    nop                                           ; $7ebc: $00
    ld d, l                                       ; $7ebd: $55
    nop                                           ; $7ebe: $00
    ld d, [hl]                                    ; $7ebf: $56
    nop                                           ; $7ec0: $00
    nop                                           ; $7ec1: $00
    ld d, a                                       ; $7ec2: $57
    nop                                           ; $7ec3: $00
    ld h, c                                       ; $7ec4: $61
    nop                                           ; $7ec5: $00
    ld e, b                                       ; $7ec6: $58
    nop                                           ; $7ec7: $00
    ld e, c                                       ; $7ec8: $59
    nop                                           ; $7ec9: $00
    nop                                           ; $7eca: $00
    ld e, d                                       ; $7ecb: $5a
    nop                                           ; $7ecc: $00
    ld e, e                                       ; $7ecd: $5b
    nop                                           ; $7ece: $00
    ld h, d                                       ; $7ecf: $62
    nop                                           ; $7ed0: $00
    ld e, h                                       ; $7ed1: $5c
    nop                                           ; $7ed2: $00
    nop                                           ; $7ed3: $00
    ld e, l                                       ; $7ed4: $5d
    nop                                           ; $7ed5: $00
    ld e, [hl]                                    ; $7ed6: $5e
    nop                                           ; $7ed7: $00
    ld e, a                                       ; $7ed8: $5f
    nop                                           ; $7ed9: $00
    ld h, e                                       ; $7eda: $63
    nop                                           ; $7edb: $00
    nop                                           ; $7edc: $00

Call_082_7edd:
    ld h, h                                       ; $7edd: $64
    nop                                           ; $7ede: $00
    ld h, l                                       ; $7edf: $65
    nop                                           ; $7ee0: $00
    ld h, [hl]                                    ; $7ee1: $66
    nop                                           ; $7ee2: $00
    ld h, a                                       ; $7ee3: $67
    nop                                           ; $7ee4: $00
    nop                                           ; $7ee5: $00
    ld [hl], b                                    ; $7ee6: $70
    nop                                           ; $7ee7: $00
    ld l, b                                       ; $7ee8: $68
    nop                                           ; $7ee9: $00
    ld l, c                                       ; $7eea: $69
    nop                                           ; $7eeb: $00
    ld l, d                                       ; $7eec: $6a
    nop                                           ; $7eed: $00
    nop                                           ; $7eee: $00
    ld l, e                                       ; $7eef: $6b
    nop                                           ; $7ef0: $00
    ld [hl], c                                    ; $7ef1: $71
    nop                                           ; $7ef2: $00
    ld l, h                                       ; $7ef3: $6c
    nop                                           ; $7ef4: $00
    ld l, l                                       ; $7ef5: $6d
    nop                                           ; $7ef6: $00
    ld b, $6e                                     ; $7ef7: $06 $6e
    nop                                           ; $7ef9: $00
    ld l, a                                       ; $7efa: $6f
    nop                                           ; $7efb: $00
    ld [hl], d                                    ; $7efc: $72
    and b                                         ; $7efd: $a0
    ld hl, sp-$60                                 ; $7efe: $f8 $a0
    jr nz, jr_082_7f75                            ; $7f00: $20 $73

    nop                                           ; $7f02: $00
    nop                                           ; $7f03: $00
    ld [hl], h                                    ; $7f04: $74
    nop                                           ; $7f05: $00
    ld [hl], l                                    ; $7f06: $75
    nop                                           ; $7f07: $00
    halt                                          ; $7f08: $76
    nop                                           ; $7f09: $00
    ld [hl], a                                    ; $7f0a: $77
    nop                                           ; $7f0b: $00
    nop                                           ; $7f0c: $00
    ld a, b                                       ; $7f0d: $78
    nop                                           ; $7f0e: $00
    ld a, c                                       ; $7f0f: $79
    nop                                           ; $7f10: $00
    ld a, d                                       ; $7f11: $7a
    nop                                           ; $7f12: $00
    ld a, e                                       ; $7f13: $7b
    nop                                           ; $7f14: $00
    nop                                           ; $7f15: $00
    adc b                                         ; $7f16: $88
    nop                                           ; $7f17: $00
    ld a, h                                       ; $7f18: $7c
    nop                                           ; $7f19: $00
    ld a, l                                       ; $7f1a: $7d
    nop                                           ; $7f1b: $00
    ld a, [hl]                                    ; $7f1c: $7e
    nop                                           ; $7f1d: $00
    nop                                           ; $7f1e: $00
    ld a, a                                       ; $7f1f: $7f
    nop                                           ; $7f20: $00
    adc c                                         ; $7f21: $89
    nop                                           ; $7f22: $00
    add b                                         ; $7f23: $80
    nop                                           ; $7f24: $00
    add c                                         ; $7f25: $81
    nop                                           ; $7f26: $00
    nop                                           ; $7f27: $00
    add d                                         ; $7f28: $82
    nop                                           ; $7f29: $00
    add e                                         ; $7f2a: $83
    nop                                           ; $7f2b: $00
    adc d                                         ; $7f2c: $8a
    nop                                           ; $7f2d: $00
    add h                                         ; $7f2e: $84
    nop                                           ; $7f2f: $00
    nop                                           ; $7f30: $00
    add l                                         ; $7f31: $85
    nop                                           ; $7f32: $00
    add [hl]                                      ; $7f33: $86
    nop                                           ; $7f34: $00
    add a                                         ; $7f35: $87
    nop                                           ; $7f36: $00
    adc e                                         ; $7f37: $8b
    nop                                           ; $7f38: $00
    nop                                           ; $7f39: $00
    adc h                                         ; $7f3a: $8c
    nop                                           ; $7f3b: $00
    adc l                                         ; $7f3c: $8d
    nop                                           ; $7f3d: $00
    adc [hl]                                      ; $7f3e: $8e
    nop                                           ; $7f3f: $00
    adc a                                         ; $7f40: $8f
    nop                                           ; $7f41: $00
    nop                                           ; $7f42: $00
    sbc h                                         ; $7f43: $9c
    nop                                           ; $7f44: $00
    sub b                                         ; $7f45: $90
    nop                                           ; $7f46: $00
    sub c                                         ; $7f47: $91
    nop                                           ; $7f48: $00
    sub d                                         ; $7f49: $92
    nop                                           ; $7f4a: $00
    nop                                           ; $7f4b: $00
    sub e                                         ; $7f4c: $93
    nop                                           ; $7f4d: $00
    sbc l                                         ; $7f4e: $9d
    nop                                           ; $7f4f: $00
    sub h                                         ; $7f50: $94
    nop                                           ; $7f51: $00
    sub l                                         ; $7f52: $95
    nop                                           ; $7f53: $00
    nop                                           ; $7f54: $00
    sub [hl]                                      ; $7f55: $96
    nop                                           ; $7f56: $00
    sub a                                         ; $7f57: $97
    nop                                           ; $7f58: $00
    sbc [hl]                                      ; $7f59: $9e
    nop                                           ; $7f5a: $00
    sbc b                                         ; $7f5b: $98
    nop                                           ; $7f5c: $00
    nop                                           ; $7f5d: $00
    sbc c                                         ; $7f5e: $99
    nop                                           ; $7f5f: $00
    sbc d                                         ; $7f60: $9a
    nop                                           ; $7f61: $00
    sbc e                                         ; $7f62: $9b
    nop                                           ; $7f63: $00
    sbc a                                         ; $7f64: $9f
    nop                                           ; $7f65: $00
    nop                                           ; $7f66: $00
    and b                                         ; $7f67: $a0
    nop                                           ; $7f68: $00
    and c                                         ; $7f69: $a1
    nop                                           ; $7f6a: $00
    and d                                         ; $7f6b: $a2
    nop                                           ; $7f6c: $00
    and e                                         ; $7f6d: $a3
    nop                                           ; $7f6e: $00
    nop                                           ; $7f6f: $00
    xor b                                         ; $7f70: $a8
    nop                                           ; $7f71: $00
    and h                                         ; $7f72: $a4
    nop                                           ; $7f73: $00
    and l                                         ; $7f74: $a5

jr_082_7f75:
    nop                                           ; $7f75: $00
    and [hl]                                      ; $7f76: $a6
    nop                                           ; $7f77: $00
    nop                                           ; $7f78: $00
    and a                                         ; $7f79: $a7
    nop                                           ; $7f7a: $00
    xor c                                         ; $7f7b: $a9
    nop                                           ; $7f7c: $00
    ld d, l                                       ; $7f7d: $55
    nop                                           ; $7f7e: $00
    ld b, b                                       ; $7f7f: $40
    nop                                           ; $7f80: $00
    ld bc, $0720                                  ; $7f81: $01 $20 $07
    nop                                           ; $7f84: $00
    ld [$0900], sp                                ; $7f85: $08 $00 $09
    nop                                           ; $7f88: $00
    ld b, b                                       ; $7f89: $40
    ld a, [bc]                                    ; $7f8a: $0a
    rrca                                          ; $7f8b: $0f
    jr z, jr_082_7f8e                             ; $7f8c: $28 $00

jr_082_7f8e:
    dec bc                                        ; $7f8e: $0b
    nop                                           ; $7f8f: $00
    inc c                                         ; $7f90: $0c
    nop                                           ; $7f91: $00
    dec c                                         ; $7f92: $0d
    jr nz, jr_082_7f95                            ; $7f93: $20 $00

jr_082_7f95:
    ld c, $1f                                     ; $7f95: $0e $1f
    nop                                           ; $7f97: $00
    ld bc, $0200                                  ; $7f98: $01 $00 $02
    nop                                           ; $7f9b: $00
    inc bc                                        ; $7f9c: $03
    nop                                           ; $7f9d: $00
    nop                                           ; $7f9e: $00
    rrca                                          ; $7f9f: $0f
    nop                                           ; $7fa0: $00
    stop                                          ; $7fa1: $10 $00
    ld de, $1200                                  ; $7fa3: $11 $00 $12
    add b                                         ; $7fa6: $80
    cpl                                           ; $7fa7: $2f
    nop                                           ; $7fa8: $00
    inc b                                         ; $7fa9: $04
    nop                                           ; $7faa: $00
    dec b                                         ; $7fab: $05
    nop                                           ; $7fac: $00
    ld b, $00                                     ; $7fad: $06 $00
    inc de                                        ; $7faf: $13
    jr nz, jr_082_7fb2                            ; $7fb0: $20 $00

jr_082_7fb2:
    inc d                                         ; $7fb2: $14
    dec sp                                        ; $7fb3: $3b
    db $10                                        ; $7fb4: $10
    dec d                                         ; $7fb5: $15
    nop                                           ; $7fb6: $00
    ld d, $00                                     ; $7fb7: $16 $00
    rla                                           ; $7fb9: $17
    ld [bc], a                                    ; $7fba: $02
    nop                                           ; $7fbb: $00
    jr jr_082_7fbe                                ; $7fbc: $18 $00

jr_082_7fbe:
    inc hl                                        ; $7fbe: $23
    nop                                           ; $7fbf: $00
    inc h                                         ; $7fc0: $24
    ld c, e                                       ; $7fc1: $4b
    db $10                                        ; $7fc2: $10
    add hl, de                                    ; $7fc3: $19
    nop                                           ; $7fc4: $00
    nop                                           ; $7fc5: $00
    ld a, [de]                                    ; $7fc6: $1a
    nop                                           ; $7fc7: $00
    dec de                                        ; $7fc8: $1b
    nop                                           ; $7fc9: $00
    inc e                                         ; $7fca: $1c
    nop                                           ; $7fcb: $00
    dec h                                         ; $7fcc: $25
    jr nz, jr_082_7fcf                            ; $7fcd: $20 $00

jr_082_7fcf:
    ld h, $5b                                     ; $7fcf: $26 $5b
    db $10                                        ; $7fd1: $10
    dec e                                         ; $7fd2: $1d
    nop                                           ; $7fd3: $00
    ld e, $00                                     ; $7fd4: $1e $00
    rra                                           ; $7fd6: $1f
    ld [bc], a                                    ; $7fd7: $02
    nop                                           ; $7fd8: $00
    jr nz, jr_082_7fdb                            ; $7fd9: $20 $00

jr_082_7fdb:
    daa                                           ; $7fdb: $27
    nop                                           ; $7fdc: $00
    jr z, @+$6d                                   ; $7fdd: $28 $6b

    jr nz, @+$23                                  ; $7fdf: $20 $21

    jr z, jr_082_7fe3                             ; $7fe1: $28 $00

jr_082_7fe3:
    ld [hl+], a                                   ; $7fe3: $22
    ld [bc], a                                    ; $7fe4: $02
    db $10                                        ; $7fe5: $10
    add hl, hl                                    ; $7fe6: $29
    ld a, e                                       ; $7fe7: $7b
    db $10                                        ; $7fe8: $10
    add hl, bc                                    ; $7fe9: $09
    nop                                           ; $7fea: $00
    nop                                           ; $7feb: $00
    rrca                                          ; $7fec: $0f
    nop                                           ; $7fed: $00
    ld bc, $000f                                  ; $7fee: $01 $0f $00
    ld bc, $0002                                  ; $7ff1: $01 $02 $00
    inc d                                         ; $7ff4: $14
    nop                                           ; $7ff5: $00
    adc [hl]                                      ; $7ff6: $8e
    nop                                           ; $7ff7: $00
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
